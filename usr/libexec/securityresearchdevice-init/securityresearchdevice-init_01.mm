uint64_t sub_100016E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[37] = a5;
  v6[38] = a6;
  v6[35] = a3;
  v6[36] = a4;
  v6[34] = a2;
  v7 = type metadata accessor for Logger();
  v6[39] = v7;
  v6[40] = *(v7 - 8);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[44] = v8;
  *v8 = v6;
  v8[1] = sub_100016F94;

  return sub_100018C28(1);
}

uint64_t sub_100016F94()
{

  return _swift_task_switch(sub_100017090, 0, 0);
}

uint64_t sub_100017090()
{
  if (qword_100028200 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_100001D14(v0[39], qword_100028570);
  v0[45] = v2;

  v3 = v1;
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_1000171C4;
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[35];

  return sub_10001B478(0xD000000000000051, 0x800000010001DB50, 179, v2, v7, v5, v6);
}

uint64_t sub_1000171C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = v1;

  if (v1)
  {
    v5 = sub_100017E24;
  }

  else
  {
    v5 = sub_10001731C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10001731C(uint64_t a1)
{
  v2 = *(v1 + 376);
  if (v2 != 10 && v2 != 0)
  {
    v19 = *(v1 + 272);
    (*(*(v1 + 320) + 16))(*(v1 + 344), *(v1 + 360), *(v1 + 312));
    _StringGuts.grow(_:)(83);
    v20._object = 0x800000010001DBB0;
    v20._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v20);
    *(v1 + 216) = v19;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 0x6572206874697720;
    v22._object = 0xED000020746C7573;
    String.append(_:)(v22);
    v23 = MAStringForMADownloadResult();
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v53 = *(v1 + 376);
      _StringGuts.grow(_:)(19);
      *(v1 + 136) = 0;
      *(v1 + 144) = 0xE000000000000000;
      v54._countAndFlagsBits = 0xD000000000000011;
      v54._object = 0x800000010001DBF0;
      String.append(_:)(v54);
      *(v1 + 224) = v53;
      type metadata accessor for MADownloadResult(0);
      _print_unlocked<A, B>(_:_:)();
      v25 = *(v1 + 136);
      v27 = *(v1 + 144);
    }

    v55 = *(v1 + 344);
    v57 = *(v1 + 312);
    v56 = *(v1 + 320);
    v58._countAndFlagsBits = v25;
    v58._object = v27;
    String.append(_:)(v58);

    v59._countAndFlagsBits = 0x697972746572202CLL;
    v59._object = 0xED00002E2E2E676ELL;
    String.append(_:)(v59);
    v60._countAndFlagsBits = 0;
    v61._object = 0x800000010001DB50;
    v60._object = 0xE000000000000000;
    v61._countAndFlagsBits = 0xD000000000000051;
    Logger.errorWithMetadata(_:function:line:)(v60, v61, 186);

    (*(v56 + 8))(v55, v57);
    sub_1000195E4();
    swift_allocError();
    *v62 = xmmword_10001CD40;
    *(v62 + 16) = 7;
    swift_willThrow();
    v63 = *(v1 + 272);
    _StringGuts.grow(_:)(82);
    v64._object = 0x800000010001DBB0;
    v64._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v64);
    *(v1 + 200) = v63;
    v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v65);

    v66._countAndFlagsBits = 0x7265206874697720;
    v66._object = 0xEC00000020726F72;
    String.append(_:)(v66);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v67._countAndFlagsBits = 0x697972746572202CLL;
    v67._object = 0xED00002E2E2E676ELL;
    String.append(_:)(v67);
    v68._countAndFlagsBits = 0;
    v69._object = 0x800000010001DB50;
    v68._object = 0xE000000000000000;
    v69._countAndFlagsBits = 0xD000000000000051;
    Logger.errorWithMetadata(_:function:line:)(v68, v69, 193);

    goto LABEL_33;
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Mobile asset catalog download successful", v6, 2u);
  }

  v7 = objc_allocWithZone(MAAssetQuery);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithType:v8];
  *(v1 + 392) = v9;

  if (!v9)
  {
    v29 = *(v1 + 280);
    v28 = *(v1 + 288);
    *(v1 + 152) = 0;
    *(v1 + 160) = 0xE000000000000000;
    *(v1 + 64) = v29;
    *(v1 + 72) = v28;
    *(v1 + 80) = 2;

    _print_unlocked<A, B>(_:_:)();
    v30._object = 0x800000010001DB50;
    v30._countAndFlagsBits = 0xD000000000000051;
    Logger.errorWithMetadata(_:function:line:)(*(v1 + 152), v30, 200);

    sub_1000195E4();
    swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v28;
    *(v31 + 16) = 2;
LABEL_33:
    swift_willThrow();
LABEL_45:

    v88 = *(v1 + 8);

    v88();
    return;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Mobile asset query successful", v12, 2u);
  }

  v13 = [v9 queryMetaDataSync];
  if (v13)
  {
    *(v1 + 232) = v13;
    type metadata accessor for MAQueryResult(0);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v1 + 168) = 0;
    *(v1 + 176) = 0xE000000000000000;
    *(v1 + 88) = v14;
    *(v1 + 96) = v15;
    *(v1 + 104) = 3;
    _print_unlocked<A, B>(_:_:)();
    v17._object = 0x800000010001DB50;
    v17._countAndFlagsBits = 0xD000000000000051;
    Logger.errorWithMetadata(_:function:line:)(*(v1 + 168), v17, 208);

    sub_1000195E4();
    swift_allocError();
    *v18 = v14;
    *(v18 + 8) = v16;
    *(v18 + 16) = 3;
LABEL_44:
    swift_willThrow();

    goto LABEL_45;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Mobile asset query result successful", v34, 2u);
  }

  v35 = [v9 results];
  if (!v35)
  {
    goto LABEL_53;
  }

  v36 = v35;
  sub_100013310();
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v37 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v38 != 1)
  {
    (*(*(v1 + 320) + 16))(*(v1 + 336), *(v1 + 360), *(v1 + 312));
    *(v1 + 184) = 0;
    *(v1 + 192) = 0xE000000000000000;
    v70 = [v9 results];
    if (v70)
    {
      v71 = v70;
      v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v72 >> 62)
      {
        v73 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v1 + 112) = v73;
      *(v1 + 120) = 0;
      *(v1 + 128) = 4;
      _print_unlocked<A, B>(_:_:)();
      v74._countAndFlagsBits = 8250;
      v74._object = 0xE200000000000000;
      String.append(_:)(v74);
      v75 = [v9 results];
      if (v75)
      {
        v76 = v75;
        v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v77 = 0;
      }

      v78 = *(v1 + 336);
      v79 = *(v1 + 312);
      v80 = *(v1 + 320);
      *(v1 + 240) = v77;
      sub_10000ADE0(&qword_100028690, &qword_10001D380);
      v81._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v81);

      v82._object = 0x800000010001DB50;
      v82._countAndFlagsBits = 0xD000000000000051;
      Logger.errorWithMetadata(_:function:line:)(*(v1 + 184), v82, 215);

      (*(v80 + 8))(v78, v79);
      v83 = [v9 results];
      if (v83)
      {
        v84 = v83;
        v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v85 >> 62)
        {
          v86 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1000195E4();
        swift_allocError();
        *v87 = v86;
        *(v87 + 8) = 0;
        *(v87 + 16) = 4;
        goto LABEL_44;
      }

LABEL_56:
      __break(1u);
      return;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Mobile asset query result count successful", v41, 2u);
  }

  v42 = [v9 results];
  if (!v42)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v43 = v42;
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v44 & 0xC000000000000001) != 0)
  {
    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_28;
  }

  if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v45 = *(v44 + 32);
LABEL_28:
  v46 = v45;
  *(v1 + 400) = v45;
  v47 = *(v1 + 296);

  v48 = v47;
  v49 = v46;
  v50 = swift_task_alloc();
  *(v1 + 408) = v50;
  *v50 = v1;
  v50[1] = sub_100017FD4;
  v51 = *(v1 + 360);
  v52 = *(v1 + 296);

  sub_10001B8E4(0xD000000000000051, 0x800000010001DB50, 227, v51, v49, v52);
}

uint64_t sub_100017E24()
{
  v1 = v0[34];
  _StringGuts.grow(_:)(82);
  v2._object = 0x800000010001DBB0;
  v2._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v2);
  v0[25] = v1;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x7265206874697720;
  v4._object = 0xEC00000020726F72;
  String.append(_:)(v4);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5._countAndFlagsBits = 0x697972746572202CLL;
  v5._object = 0xED00002E2E2E676ELL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0;
  v7._countAndFlagsBits = 0xD000000000000051;
  v7._object = 0x800000010001DB50;
  v6._object = 0xE000000000000000;
  Logger.errorWithMetadata(_:function:line:)(v6, v7, 193);

  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100017FD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  v5 = *(v3 + 400);

  if (v1)
  {
    v6 = sub_10001856C;
  }

  else
  {
    v6 = sub_100018128;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100018128()
{
  v1 = *(v0 + 416);
  if (v1 == 10 || v1 == 0)
  {
    v3 = *(v0 + 400);
    v4 = *(v0 + 304);
    v5 = *v4;
    *v4 = v3;
    v6 = v3;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Mobile asset query download successful", v9, 2u);
    }

    v10 = *(v0 + 400);

    v11 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 272);
    (*(*(v0 + 320) + 16))(*(v0 + 328), *(v0 + 360), *(v0 + 312));
    _StringGuts.grow(_:)(68);
    v13._object = 0x800000010001DC10;
    v13._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v13);
    *(v0 + 264) = v12;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x6572206874697720;
    v15._object = 0xED000020746C7573;
    String.append(_:)(v15);
    v16 = MAStringForMADownloadResult();
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v20 = 0x800000010001DC40;
      v18 = 0xD000000000000010;
    }

    v21 = *(v0 + 320);
    v22 = *(v0 + 328);
    v23 = *(v0 + 312);
    v24._countAndFlagsBits = v18;
    v24._object = v20;
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0x697972746572202CLL;
    v25._object = 0xED00002E2E2E676ELL;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0;
    v27._countAndFlagsBits = 0xD000000000000051;
    v27._object = 0x800000010001DB50;
    v26._object = 0xE000000000000000;
    Logger.errorWithMetadata(_:function:line:)(v26, v27, 237);

    (*(v21 + 8))(v22, v23);
    sub_1000195E4();
    swift_allocError();
    *v28 = xmmword_10001D2F0;
    *(v28 + 16) = 7;
    swift_willThrow();
    v30 = *(v0 + 392);
    v29 = *(v0 + 400);
    v31 = *(v0 + 272);
    _StringGuts.grow(_:)(67);
    v32._object = 0x800000010001DC10;
    v32._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v32);
    *(v0 + 248) = v31;
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x7265206874697720;
    v34._object = 0xEC00000020726F72;
    String.append(_:)(v34);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v35._countAndFlagsBits = 0x697972746572202CLL;
    v35._object = 0xED00002E2E2E676ELL;
    String.append(_:)(v35);
    v36._countAndFlagsBits = 0;
    v37._countAndFlagsBits = 0xD000000000000051;
    v37._object = 0x800000010001DB50;
    v36._object = 0xE000000000000000;
    Logger.errorWithMetadata(_:function:line:)(v36, v37, 244);

    swift_willThrow();

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_10001856C()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[34];
  _StringGuts.grow(_:)(67);
  v4._object = 0x800000010001DC10;
  v4._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v4);
  v0[31] = v3;
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x7265206874697720;
  v6._object = 0xEC00000020726F72;
  String.append(_:)(v6);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v7._countAndFlagsBits = 0x697972746572202CLL;
  v7._object = 0xED00002E2E2E676ELL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0;
  v9._countAndFlagsBits = 0xD000000000000051;
  v9._object = 0x800000010001DB50;
  v8._object = 0xE000000000000000;
  Logger.errorWithMetadata(_:function:line:)(v8, v9, 244);

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

void sub_100018730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000ADE0(&qword_100028698, &qword_10001D388);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = String._bridgeToObjectiveC()();
  (*(v8 + 16))(v10, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v10, v7);
  aBlock[4] = sub_1000196E8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001891C;
  aBlock[3] = &unk_100024F58;
  v15 = _Block_copy(aBlock);

  [ObjCClassFromMetadata startCatalogDownload:v12 options:a5 completionWithError:v15];
  _Block_release(v15);
}

void sub_10001891C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100018994(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10000ADE0(&qword_100028698, &qword_10001D388);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_10001992C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001891C;
  aBlock[3] = &unk_100024F08;
  v12 = _Block_copy(aBlock);

  [a2 startDownload:a3 completionWithError:v12];
  _Block_release(v12);
}

uint64_t sub_100018B4C(uint64_t a1, uint64_t a2)
{
  if (!a2 || a1 == 10)
  {
    sub_10000ADE0(&qword_100028698, &qword_10001D388);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    swift_errorRetain();
    sub_10000ADE0(&qword_100028698, &qword_10001D388);
    return CheckedContinuation.resume(throwing:)();
  }
}

unint64_t sub_100018BD4()
{
  result = qword_100028648;
  if (!qword_100028648)
  {
    result = swift_getWitnessTable(byte_10001D51C, &type metadata for DownloadedEncryptedAsset.Error, v0, v1);
    atomic_store(result, &qword_100028648);
  }

  return result;
}

uint64_t sub_100018C28(char a1)
{
  *(v1 + 148) = a1;
  v2 = type metadata accessor for NWPath.Status();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  v3 = type metadata accessor for NWPath();
  *(v1 + 56) = v3;
  *(v1 + 64) = *(v3 - 8);
  *(v1 + 72) = swift_task_alloc();
  sub_10000ADE0(&qword_100028650, &qword_10001D340);
  *(v1 + 80) = swift_task_alloc();
  v4 = type metadata accessor for NWPathMonitor.Iterator();
  *(v1 + 88) = v4;
  *(v1 + 96) = *(v4 - 8);
  *(v1 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100018DE4, 0, 0);
}

uint64_t sub_100018DE4()
{
  if (qword_1000281F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 112) = sub_100001D14(v1, qword_100028540);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for network", v4, 2u);
  }

  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *(v0 + 120) = NWPathMonitor.init()();

  NWPathMonitor.makeAsyncIterator()();
  *(v0 + 144) = enum case for NWPath.Status.satisfied(_:);
  v5 = sub_100019560(&qword_100028658, &type metadata accessor for NWPathMonitor.Iterator, &protocol conformance descriptor for NWPathMonitor.Iterator);
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_100018FC0;
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v5);
}

uint64_t sub_100018FC0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1000194D4;
  }

  else
  {
    v2 = sub_1000190D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000190F0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

LABEL_16:

    v28 = *(v0 + 8);

    return v28();
  }

  v4 = *(v0 + 144);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  (*(v3 + 32))(*(v0 + 72), v1, v2);
  NWPath.status.getter();
  (*(v8 + 104))(v6, v4, v7);
  v9 = static NWPath.Status.== infix(_:_:)();
  v10 = *(v8 + 8);
  v10(v6, v7);
  v10(v5, v7);
  if (v9)
  {
    if ((*(v0 + 148) & 1) != 0 || (NWPath.isExpensive.getter() & 1) == 0)
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      v20 = os_log_type_enabled(v18, v19);
      v22 = *(v0 + 96);
      v21 = *(v0 + 104);
      v23 = *(v0 + 88);
      v24 = *(v0 + 64);
      v25 = *(v0 + 72);
      v26 = *(v0 + 56);
      if (v20)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Acceptable network found", v27, 2u);
      }

      (*(v24 + 8))(v25, v26);
      (*(v22 + 8))(v21, v23);
      goto LABEL_16;
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Non acceptable network found", v13, 2u);
    }
  }

  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  v14 = sub_100019560(&qword_100028658, &type metadata accessor for NWPathMonitor.Iterator, &protocol conformance descriptor for NWPathMonitor.Iterator);
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_100018FC0;
  v16 = *(v0 + 80);
  v17 = *(v0 + 88);

  return dispatch thunk of AsyncIteratorProtocol.next()(v16, v17, v14);
}

uint64_t sub_1000194D4()
{
  *(v0 + 16) = *(v0 + 136);
  sub_10000ADE0(&qword_100028660, &qword_10001D348);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100019560(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000195A8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
    }

    if (a3 != 5)
    {
      return v3;
    }
  }

  if (!a3)
  {
  }

  if (a3 == 2)
  {
  }

  return v3;
}

unint64_t sub_1000195E4()
{
  result = qword_100028688;
  if (!qword_100028688)
  {
    result = swift_getWitnessTable("%u", v0);
    atomic_store(result, &qword_100028688);
  }

  return result;
}

uint64_t sub_10001963C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100019654()
{
  v1 = sub_10000ADE0(&qword_100028698, &qword_10001D388);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001976C(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_100019788(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000197D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100019814(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10001983C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100019858(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10001986C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000198B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1000198F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void *sub_100019930(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_10000AA90();
  if (v3)
  {
    v14 = result;
    swift_errorRetain();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v10 = 138412802;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_100009778(a1, a2, &v15);
      *(v10 + 22) = 2048;
      *(v10 + 24) = a3;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error: %@, in %s, line: %ld", v10, 0x20u);
      sub_10001B268(v11);

      sub_10000B9B0(v12);
    }

    swift_willThrow();
    return v14;
  }

  return result;
}

void sub_100019AD0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_100002DA8();
  if (v3)
  {
    swift_errorRetain();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v9 = 138412802;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_100009778(a1, a2, &v13);
      *(v9 + 22) = 2048;
      *(v9 + 24) = a3;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error: %@, in %s, line: %ld", v9, 0x20u);
      sub_10001B268(v10);

      sub_10000B9B0(v11);
    }

    swift_willThrow();
  }
}

uint64_t sub_100019C60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v24 = 0;
  v12 = [v10 propertyListWithData:isa options:0 format:0 error:&v24];

  v13 = v24;
  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = a1;
    v14 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v17 = 138412802;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100009778(v22, a2, &v24);
      *(v17 + 22) = 2048;
      *(v17 + 24) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error: %@, in %s, line: %ld", v17, 0x20u);
      sub_10001B268(v18);

      sub_10000B9B0(v19);
    }

    swift_willThrow();
  }

  return sub_10000CD7C(a5, a6);
}

uint64_t Logger.logIfError<A>(_:function:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  result = a1();
  if (v5)
  {
    swift_errorRetain();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v12 = 138412802;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_100009778(a3, a4, &v16);
      *(v12 + 22) = 2048;
      *(v12 + 24) = a5;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error: %@, in %s, line: %ld", v12, 0x20u);
      sub_10001B268(v13);

      sub_10000B9B0(v14);
    }

    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall Logger.errorWithMetadata(_:function:line:)(Swift::String _, Swift::String function, Swift::Int line)
{
  object = function._object;
  countAndFlagsBits = function._countAndFlagsBits;
  v6 = _._object;
  v7 = _._countAndFlagsBits;

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_100009778(v7, v6, &v11);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100009778(countAndFlagsBits, object, &v11);
    *(v9 + 22) = 2048;
    *(v9 + 24) = line;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Error: %s, in %s, line: %ld", v9, 0x20u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10001A1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  v8 = type metadata accessor for FilePath();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001A298, 0, 0);
}

uint64_t sub_10001A298()
{

  FilePath.init(_:)();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_10001A354;
  v2 = *(v0 + 80);

  return sub_10000F480(v2);
}

uint64_t sub_10001A354()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_10001A52C;
  }

  else
  {
    v3 = sub_10001A4BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001A4BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001A52C()
{
  v13 = v0;
  swift_errorRetain();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(v5, v3, &v12);
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10001B268(v7);

    sub_10000B9B0(v8);
  }

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001A708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return _swift_task_switch(sub_10001A72C, 0, 0);
}

uint64_t sub_10001A72C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10001A7CC;

  return static Task<>.sleep(nanoseconds:)(300000000000);
}

uint64_t sub_10001A7CC()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001BD04, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10001A900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[7] = a2;
  v7 = type metadata accessor for Cryptex.InstallOptions();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_10001A9C8, 0, 0);
}

uint64_t sub_10001A9C8()
{
  v1 = type metadata accessor for CryptexLocalDevice();
  v2 = CryptexLocalDevice.__allocating_init()();
  v0[5] = v1;
  v0[6] = &protocol witness table for CryptexLocalDevice;
  v0[2] = v2;
  Cryptex.InstallOptions.init()();
  v6 = &async function pointer to dispatch thunk of Cryptex.install(onto:options:) + async function pointer to dispatch thunk of Cryptex.install(onto:options:);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_10001AAAC;
  v4 = v0[14];

  return (v6)(v0 + 2, v4);
}

uint64_t sub_10001AAAC()
{
  v2 = *v1;
  v2[16] = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);
  sub_10000B9B0(v2 + 2);
  if (v0)
  {
    v3 = sub_10001AC8C;
  }

  else
  {
    v3 = sub_10001AC1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001AC1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001AC8C()
{
  v13 = v0;
  swift_errorRetain();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(v5, v3, &v12);
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10001B268(v7);

    sub_10000B9B0(v8);
  }

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t Logger.logIfError<A>(_:function:line:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[4] = a6;
  v7[5] = v6;
  v7[2] = a4;
  v7[3] = a5;
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = sub_10001AF70;

  return v11(a1);
}

uint64_t sub_10001AF70()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001B0A4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10001B0A4()
{
  v13 = v0;
  swift_errorRetain();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(v5, v3, &v12);
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10001B268(v7);

    sub_10000B9B0(v8);
  }

  swift_willThrow();
  v10 = v0[1];

  return v10();
}

uint64_t sub_10001B268(uint64_t a1)
{
  v2 = sub_10000ADE0(&qword_100028220, &qword_10001CDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001B2D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100015F30(a5, &v17);
  if (!v5)
  {
    return v17;
  }

  swift_errorRetain();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v11 = 138412802;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100009778(a1, a2, &v16);
    *(v11 + 22) = 2048;
    *(v11 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error: %@, in %s, line: %ld", v11, 0x20u);
    sub_10001B268(v12);

    sub_10000B9B0(v13);
  }

  return swift_willThrow();
}

uint64_t sub_10001B478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v7[10] = sub_100013310();

  return _swift_task_switch(sub_10001B4F4, 0, 0);
}

uint64_t sub_10001B4F4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 64);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  type metadata accessor for MADownloadResult(0);
  *v5 = v0;
  v5[1] = sub_10001B5FC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001BLL, 0x800000010001DCA0, sub_10001BCF8, v3, v6);
}

uint64_t sub_10001B5FC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10001B718;
  }

  else
  {

    v2 = sub_100005DA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001B718()
{
  v13 = v0;

  swift_errorRetain();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(v5, v3, &v12);
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10001B268(v7);

    sub_10000B9B0(v8);
  }

  swift_willThrow();
  v10 = v0[1];

  return v10();
}

uint64_t sub_10001B8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return _swift_task_switch(sub_10001B90C, 0, 0);
}

uint64_t sub_10001B90C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *(v1 + 16) = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  type metadata accessor for MADownloadResult(0);
  *v2 = v0;
  v2[1] = sub_10001BA08;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000012, 0x800000010001DC80, sub_10001BCF0, v1, v3);
}

uint64_t sub_10001BA08()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10001BB24;
  }

  else
  {

    v2 = sub_10001BD08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001BB24()
{
  v13 = v0;

  swift_errorRetain();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(v5, v3, &v12);
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10001B268(v7);

    sub_10000B9B0(v8);
  }

  swift_willThrow();
  v10 = v0[1];

  return v10();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t FilePath.init(_:)()
{
  return FilePath.init(_:)();
}

{
  return FilePath.init(_:)();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}