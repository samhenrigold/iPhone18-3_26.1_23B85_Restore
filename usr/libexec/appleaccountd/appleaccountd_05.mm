void sub_1000A3004(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for CustodianshipRecords(0);
  v11 = __chkstk_darwin(v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v47 - v15;
  __chkstk_darwin(v14);
  v18 = v47 - v17;
  if (a2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);
    sub_1000A8638(a3, v13, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v47[1] = a5;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v22 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v48);
      *(v22 + 12) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      sub_1000A8824(v13, type metadata accessor for CustodianshipRecords);
      v27 = sub_10021145C(v24, v26, &v48);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2112;
      v28 = _convertErrorToNSError(_:)();
      *(v22 + 24) = v28;
      *v23 = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s - custodian %s failed to check if shared and accepted, assuming accepted for now. Error: %@", v22, 0x20u);
      sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v13, type metadata accessor for CustodianshipRecords);
    }

    v37 = a1;
LABEL_25:
    a4(1, v37);
    return;
  }

  if (a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAB8);
    sub_1000A8638(a3, v18, type metadata accessor for CustodianshipRecords);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v32 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v48);
      *(v32 + 12) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_1000A8824(v18, type metadata accessor for CustodianshipRecords);
      v36 = sub_10021145C(v33, v35, &v48);

      *(v32 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s - custodian %s is shared and accepted", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v18, type metadata accessor for CustodianshipRecords);
    }

    v37 = 0;
    goto LABEL_25;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100008D04(v38, qword_1003FAAB8);
  sub_1000A8638(a3, v16, type metadata accessor for CustodianshipRecords);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v41 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v41 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v48);
    *(v41 + 12) = 2080;
    type metadata accessor for CustodianHealthRecord(0);
    type metadata accessor for UUID();
    sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    sub_1000A8824(v16, type metadata accessor for CustodianshipRecords);
    v45 = sub_10021145C(v42, v44, &v48);

    *(v41 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s - custodian %s is NOT shared and accepted", v41, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000A8824(v16, type metadata accessor for CustodianshipRecords);
  }

  type metadata accessor for AACustodianError(0);
  v47[2] = -7017;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000A7564(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  v46 = v48;
  a4(0, v48);
}

uint64_t sub_1000A38A4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v35 = a3;
  v5 = type metadata accessor for CustodianRecord(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  sub_100012D04(a1, &v35 - v12, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAB8);
    sub_1000A8638(a2, v8, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v17 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v17 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v36);
      *(v17 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      sub_1000A8824(v8, type metadata accessor for CustodianRecord);
      v22 = sub_10021145C(v19, v21, &v36);

      *(v17 + 14) = v22;
      *(v17 + 22) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v17 + 24) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s - custodian %s name could not be updated. %@", v17, 0x20u);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      v24 = sub_1000A8824(v8, type metadata accessor for CustodianRecord);
    }

    v35(v24);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAB8);
    sub_1000A8638(a2, v10, type metadata accessor for CustodianRecord);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v28 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v36);
      *(v28 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_1000A8824(v10, type metadata accessor for CustodianRecord);
      v32 = sub_10021145C(v29, v31, &v36);

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s - custodian %s name has been updated.", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v33 = sub_1000A8824(v10, type metadata accessor for CustodianRecord);
    }

    v35(v33);
    return sub_100008D3C(v13, &unk_1003DA200, &unk_10033FA80);
  }
}

uint64_t sub_1000A3EE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = type metadata accessor for CustodianshipRecords(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  sub_100012D04(a1, &v38 - v13, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAB8);
    sub_1000A8638(a2, v9, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v38 = a3;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v18 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v18 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v39);
      *(v18 + 12) = 2080;
      type metadata accessor for CustodianRecord(0);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_1000A8824(v9, type metadata accessor for CustodianshipRecords);
      v23 = sub_10021145C(v20, v22, &v39);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2112;
      v24 = _convertErrorToNSError(_:)();
      *(v18 + 24) = v24;
      *v19 = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s - custodian %s recordBuildVersion could not be updated. %@", v18, 0x20u);
      sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      v38(v25);
    }

    else
    {

      v35 = sub_1000A8824(v9, type metadata accessor for CustodianshipRecords);
      a3(v35);
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAB8);
    sub_1000A8638(a2, v11, type metadata accessor for CustodianshipRecords);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v38 = a3;
      v29 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v29 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v29 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v39);
      *(v29 + 12) = 2080;
      type metadata accessor for CustodianRecord(0);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1000A8824(v11, type metadata accessor for CustodianshipRecords);
      v33 = sub_10021145C(v30, v32, &v39);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s - custodian %s recordBuildVersion updated.", v29, 0x16u);
      swift_arrayDestroy();

      v38(v34);
    }

    else
    {

      v37 = sub_1000A8824(v11, type metadata accessor for CustodianshipRecords);
      a3(v37);
    }

    return sub_100008D3C(v14, &unk_1003DB610, &unk_10033FA90);
  }
}

uint64_t sub_1000A452C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v73 = a8;
  v74 = a5;
  v77 = a7;
  v78 = a6;
  v76 = a4;
  v75 = type metadata accessor for UUID();
  v72 = *(v75 - 8);
  v11 = __chkstk_darwin(v75);
  v71 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v67 - v13;
  v14 = type metadata accessor for CustodianshipRecords(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v67 - v19;
  __chkstk_darwin(v18);
  v22 = &v67 - v21;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAA88);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v67 = v14;
    v68 = v20;
    v69 = v17;
    v26 = a3;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 67109378;
    *(v27 + 4) = a1 & 1;
    *(v27 + 8) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = v29;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    *(v27 + 10) = v29;
    *v28 = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "CRK exists on OT? %{BOOL}d error: %@", v27, 0x12u);
    sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);

    a3 = v26;
    v20 = v68;
    v17 = v69;
  }

  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    sub_100008D04(v23, qword_1003FAAB8);
    sub_1000A8638(a3, v22, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v79[0] = swift_slowAlloc();
      *v33 = 136315906;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v33 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v79);
      *(v33 + 12) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_1000A8824(v22, type metadata accessor for CustodianshipRecords);
      v38 = sub_10021145C(v35, v37, v79);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2112;
      v39 = _convertErrorToNSError(_:)();
      *(v33 + 24) = v39;
      *v34 = v39;
      *(v33 + 32) = 1024;
      *(v33 + 34) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s - Check custodian recovery failed for custodian %s with error: %@ exists: %{BOOL}d", v33, 0x26u);
      sub_100008D3C(v34, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v22, type metadata accessor for CustodianshipRecords);
    }

    ObjectType = swift_getObjectType();
    _convertErrorToNSError(_:)();
    v50 = (*(v74 + 104))(v79, ObjectType);
    v52 = v51;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v50(v79, 0);
    sub_1002479A8(0, 4u);
    swift_errorRetain();
    v78(a2);
  }

  else
  {
    if (a1)
    {
      v40 = v75;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      sub_100008D04(v23, qword_1003FAAB8);
      sub_1000A8638(a3, v20, type metadata accessor for CustodianshipRecords);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = a3;
        v44 = swift_slowAlloc();
        v79[0] = swift_slowAlloc();
        *v44 = 136315650;
        if (qword_1003D7DD8 != -1)
        {
          swift_once();
        }

        *(v44 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v79);
        *(v44 + 12) = 2080;
        type metadata accessor for CustodianRecord(0);
        sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        sub_1000A8824(v20, type metadata accessor for CustodianshipRecords);
        v48 = sub_10021145C(v45, v47, v79);

        *(v44 + 14) = v48;
        *(v44 + 22) = 1024;
        *(v44 + 24) = 1;
        _os_log_impl(&_mh_execute_header, v41, v42, "%s - custodian %s check recovery key exists: %{BOOL}d. Ending with success", v44, 0x1Cu);
        swift_arrayDestroy();

        a3 = v43;
      }

      else
      {

        sub_1000A8824(v20, type metadata accessor for CustodianshipRecords);
      }

      v61 = type metadata accessor for CustodianRecord(0);
      v63 = v71;
      v62 = v72;
      (*(v72 + 16))(v71, a3 + *(v61 + 20), v40);
      swift_beginAccess();
      v64 = v70;
      sub_1002FB030(v70, v63);
      (*(v62 + 8))(v64, v40);
      swift_endAccess();
      v65 = 1;
      v66 = 2;
    }

    else
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      sub_100008D04(v23, qword_1003FAAB8);
      sub_1000A8638(a3, v17, type metadata accessor for CustodianshipRecords);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v79[0] = swift_slowAlloc();
        *v56 = 136315650;
        if (qword_1003D7DD8 != -1)
        {
          swift_once();
        }

        *(v56 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v79);
        *(v56 + 12) = 2080;
        type metadata accessor for CustodianRecord(0);
        sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        sub_1000A8824(v17, type metadata accessor for CustodianshipRecords);
        v60 = sub_10021145C(v57, v59, v79);

        *(v56 + 14) = v60;
        *(v56 + 22) = 1024;
        *(v56 + 24) = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "%s - custodian %s check recovery key missing: %{BOOL}d. Ending with failure", v56, 0x1Cu);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000A8824(v17, type metadata accessor for CustodianshipRecords);
      }

      v65 = 0;
      v66 = 3;
    }

    sub_1002479A8(v65, v66);
    return (v78)(0);
  }
}

uint64_t sub_1000A50B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v34 = a3;
  v5 = type metadata accessor for CustodianRecord(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v11);
  v13 = (&v34 - v12);
  sub_100012D04(a1, &v34 - v12, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAB8);
    sub_1000A8638(a2, v8, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v18 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v18 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v35);
      *(v18 + 12) = 2080;
      v20 = UUID.uuidString.getter();
      v22 = v21;
      sub_1000A8824(v8, type metadata accessor for CustodianRecord);
      v23 = sub_10021145C(v20, v22, &v35);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2112;
      v24 = _convertErrorToNSError(_:)();
      *(v18 + 24) = v24;
      *v19 = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s - error processed non reachable custodian %s: %@", v18, 0x20u);
      sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v8, type metadata accessor for CustodianRecord);
    }

    swift_errorRetain();
    v34(v14);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAB8);
    sub_1000A8638(a2, v10, type metadata accessor for CustodianRecord);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v28 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v35);
      *(v28 + 12) = 2080;
      v29 = UUID.uuidString.getter();
      v31 = v30;
      sub_1000A8824(v10, type metadata accessor for CustodianRecord);
      v32 = sub_10021145C(v29, v31, &v35);

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s - successfully processed non reachable custodian %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v10, type metadata accessor for CustodianRecord);
    }

    v34(0);
    return sub_100008D3C(v13, &unk_1003DA200, &unk_10033FA80);
  }
}

uint64_t sub_1000A5678()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000A56D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_1000A5780;

  return sub_1001B049C(a5);
}

uint64_t sub_1000A5780(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1000A5918;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_1000A58AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000A58AC()
{
  (*(v0 + 16))(*(v0 + 48), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A5918()
{
  v1 = v0[5];
  v2 = v0[2];
  swift_errorRetain();
  v2(v1, 1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A59D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A59E8()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A5A54(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 56);
}

uint64_t sub_1000A5AC4()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((((((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1000A5CF0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianRecord(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100099EC8(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000A5DD4()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000A6008()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 72) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A62B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A62F0()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v26 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v25 = (v26 + 40) & ~v26;
  v2 = v0 + v25;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v25, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v25 + v6[5], v3);

  v7 = (v0 + v25 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v23 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v23 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  return _swift_deallocObject(v0, ((((((((v24 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1000A66D0(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_10009BAF0(a1, a2, v2[2], v2[3], v2[4], v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1000A67C0(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_1000A3004(a1, a2 & 1, v2 + v6, v8, v9);
}

uint64_t sub_1000A687C()
{
  v1 = type metadata accessor for CustodianHealthRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[5], v4);
  v6 = v1[6];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = (v0 + v2 + v1[7]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000A6A1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CustodianHealthRecord(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000082A8;

  return sub_1000A56D4(a1, v7, v8, v1 + 32, v1 + v6, v10, v11);
}

uint64_t sub_1000A6B60(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1000A6B88()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v26 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v25 = (v26 + 48) & ~v26;
  v2 = v0 + v25;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v25, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v25 + v6[5], v3);

  v7 = (v0 + v25 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v23 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v23 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  return _swift_deallocObject(v0, ((v24 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000A6F58(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *(v2 + 5);
  v10 = &v2[(*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8];
  v11 = *v10;
  v12 = v10[1];

  return a2(a1, v6, v7, v8, v9, &v2[v5], v11, v12);
}

uint64_t sub_1000A7014()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v26 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v25 = (v26 + 40) & ~v26;
  v2 = v0 + v25;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v25, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v25 + v6[5], v3);

  v7 = (v0 + v25 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v23 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v23 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  return _swift_deallocObject(v0, ((v24 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000A73F0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v3 + 2);
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = &v3[(*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8];
  v11 = *v10;
  v12 = v10[1];

  return a3(a1, v7, v8, v9, &v3[v6], v11, v12);
}

uint64_t sub_1000A74B0(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10009FF00(a1, v1 + v4, v5);
}

uint64_t sub_1000A7564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A75B0()
{
  v1 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  return sub_1000A14EC(v5, v0 + v2, v7, v8, v9, v10);
}

uint64_t sub_1000A7684()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v26 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);

  v25 = (v26 + 24) & ~v26;
  v2 = v0 + v25;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v25, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v25 + v6[5], v3);

  v7 = (v0 + v25 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v23 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v23 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((((v24 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000A7A3C()
{
  v1 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000A1688(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000A7AE0()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v25 = *(*(v1 - 8) + 80);
  v23 = *(*(v1 - 8) + 64);
  v24 = (v25 + 16) & ~v25;
  v26 = v0;
  v2 = v0 + v24;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v24, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v24 + v6[5], v3);

  v7 = (v0 + v24 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v1 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  return _swift_deallocObject(v26, ((((v23 + v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A7EB0()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v27 = *(*(v1 - 8) + 80);
  v25 = *(*(v1 - 8) + 64);
  v26 = (v27 + 16) & ~v27;
  v24 = v0;
  v2 = v0 + v26;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v26, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v26 + v6[5], v3);

  v7 = (v0 + v26 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v11 = v1;
  v12 = v2 + *(v1 + 20);
  v5(v12, v3);
  v13 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v12 + v13[5], v3);

  sub_100012324(*(v12 + v13[7]), *(v12 + v13[7] + 8));
  v14 = (v12 + v13[8]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100012324(*v14, v15);
  }

  sub_100012324(*(v12 + v13[9]), *(v12 + v13[9] + 8));
  v16 = v13[11];
  if (!v10(v12 + v16, 1, v3))
  {
    v5(v12 + v16, v3);
  }

  v17 = v2 + *(v11 + 24);
  v5(v17, v3);
  v18 = type metadata accessor for CustodianHealthRecord(0);
  v5(v17 + v18[5], v3);
  v19 = v18[6];
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 8))(v17 + v19, v20);
  v21 = (v17 + v18[7]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_100012324(*v21, v22);
  }

  sub_100012324(*(v17 + v18[8]), *(v17 + v18[8] + 8));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v24, ((((((((v25 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A8278(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000A452C(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000A8350()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A8574(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v3 + v7);
  v10 = *(v3 + v8);
  v11 = *v9;
  v12 = v9[1];

  return a3(a1, v3 + v6, v11, v12, v10);
}

uint64_t sub_1000A8638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A86A0()
{
  v1 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000A87BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A8824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000A8884()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A8A84(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000A0F80(a1, v1 + v4, v6, v7);
}

uint64_t sub_1000A8B3C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A8BBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CustodianRecoverySessionRecord(0);
  sub_100012D04(v2 + *(v7 + 48), v6, &qword_1003D8B60, &unk_10033F210);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {
    (*(v9 + 16))(a1, v2 + *(v7 + 20), v8);
    if (v10(v6, 1, v8) != 1)
    {
      sub_100008D3C(v6, &qword_1003D8B60, &unk_10033F210);
    }
  }

  else
  {
    (*(v9 + 32))(a1, v6, v8);
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v14 = 0xD000000000000013;
  v15 = 0x800000010032DCE0;
  sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6D6F726620;
  v12._object = 0xE500000000000000;
  String.append(_:)(v12);
  sub_1000B613C(v14, v15, type metadata accessor for CustodianRecoverySessionRecord, type metadata accessor for CustodianRecoverySessionRecord, type metadata accessor for CustodianRecoverySessionRecord, sub_1000A90F4);
}

uint64_t sub_1000A8E58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CustodianRecord(0);
  sub_100012D04(v2 + *(v7 + 64), v6, &qword_1003D8B60, &unk_10033F210);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {
    (*(v9 + 16))(a1, v2 + *(v7 + 20), v8);
    if (v10(v6, 1, v8) != 1)
    {
      sub_100008D3C(v6, &qword_1003D8B60, &unk_10033F210);
    }
  }

  else
  {
    (*(v9 + 32))(a1, v6, v8);
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v14 = 0xD000000000000013;
  v15 = 0x800000010032DCE0;
  sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6D6F726620;
  v12._object = 0xE500000000000000;
  String.append(_:)(v12);
  sub_1000B613C(v14, v15, type metadata accessor for CustodianRecord, type metadata accessor for CustodianRecord, type metadata accessor for CustodianRecord, sub_1000A92F8);
}

uint64_t sub_1000A90F4()
{
  v1 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v1 - 8);
  v3 = v16 - v2;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  strcpy(v16, "{custodianID: ");
  HIBYTE(v16[1]) = -18;
  v4 = type metadata accessor for CustodianRecoverySessionRecord(0);
  v5._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v5);

  v6._object = 0x800000010032DCC0;
  v6._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v6);
  sub_100012D04(v0 + *(v4 + 48), v3, &qword_1003D8B60, &unk_10033F210);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    sub_100008D3C(v3, &qword_1003D8B60, &unk_10033F210);
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v11 = UUID.uuidString.getter();
    v10 = v12;
    (*(v8 + 8))(v3, v7);
    v9 = v11;
  }

  v13 = v10;
  String.append(_:)(*&v9);

  v14._countAndFlagsBits = 125;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return v16[0];
}

uint64_t sub_1000A92F8()
{
  v1 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v1 - 8);
  v3 = v16 - v2;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  strcpy(v16, "{custodianID: ");
  HIBYTE(v16[1]) = -18;
  v4 = type metadata accessor for CustodianRecord(0);
  v5._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v5);

  v6._object = 0x800000010032DCC0;
  v6._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v6);
  sub_100012D04(v0 + *(v4 + 64), v3, &qword_1003D8B60, &unk_10033F210);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    sub_100008D3C(v3, &qword_1003D8B60, &unk_10033F210);
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v11 = UUID.uuidString.getter();
    v10 = v12;
    (*(v8 + 8))(v3, v7);
    v9 = v11;
  }

  v13 = v10;
  String.append(_:)(*&v9);

  v14._countAndFlagsBits = 125;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return v16[0];
}

uint64_t sub_1000A94FC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck____lazy_storage___custodianDefaults;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck____lazy_storage___custodianDefaults))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck____lazy_storage___custodianDefaults);
  }

  else
  {
    type metadata accessor for CustodianDefaults();
    v2 = swift_allocObject();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000A9560()
{
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9860, &qword_10033F440);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF650, &unk_1003480B0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A60, &qword_10033F190);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACE0, &unk_10033F920);
  Dependency.init(dependencyId:config:)();
  sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  *(v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck____lazy_storage___custodianDefaults) = 0;
  v1 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_queue;
  *(v0 + v1) = [objc_allocWithZone(NSOperationQueue) init];
  *(v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_uniqueCustodianCount) = 0;
  v2 = (v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName);
  type metadata accessor for CustodianPreflightHealthCheck(0);
  sub_100005814(&unk_1003DBB40, &qword_10033FBA8);
  *v2 = String.init<A>(describing:)();
  v2[1] = v3;
  [*(v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_queue) setMaxConcurrentOperationCount:1];
  return v0;
}

uint64_t sub_1000A9894(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAD0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10021145C(*(v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v16);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s - started.", v13, 0xCu);
    sub_10000839C(v14);
  }

  sub_1000B6E00(v5, v5, a3, a4, a1, a2);
}

void sub_1000A9A58(int a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v36 = a1;
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  if (a2)
  {
    v35 = a7;
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAD0);
    swift_errorRetain();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = a5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v33 = a4;
      v23 = v22;
      v39[0] = v22;
      *v19 = 136315394;
      *(v19 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v39);
      *(v19 + 12) = 2112;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v24;
      *v21 = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s - Error while dismissing Custodian Review follow up items. Error: %@", v19, 0x16u);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
      a5 = v34;

      sub_10000839C(v23);
      a4 = v33;
    }

    else
    {
    }

    a7 = v35;
  }

  (*(v13 + 16))(v15, a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v15, v12);
  v25 = [*(*sub_1000080F8(v39 v39[3]) + 16)];
  sub_10000839C(v39);
  if (v25)
  {
    sub_1000A9F40(v37, a7, v36 & 1, a4, a5);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAD0);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = a4;
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v29 = 136315138;
      *(v29 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v39);
      _os_log_impl(&_mh_execute_header, v27, v28, "%s - not logged in to AppleAccount, unable to Preflight", v29, 0xCu);
      sub_10000839C(v31);
      a4 = v30;
    }

    type metadata accessor for AACustodianError(0);
    v38 = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000BC2E0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = v39[0];
    a4(v39[0]);
  }
}

uint64_t sub_1000A9F40(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34 = a5;
  v32 = a4;
  v31 = a3;
  v30 = a1;
  v36 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v8 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v29 - v9;
  v35 = type metadata accessor for URL();
  v33 = *(v35 - 8);
  v11 = __chkstk_darwin(v35);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v29 - v18;
  (*(v17 + 16))(&v29 - v18, v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__custodianStorage, v16);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v19, v16);
  v20 = sub_1000080F8(v38, v38[3]);
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  *(v21 + 24) = v31;
  *(v21 + 32) = v30;
  *(v21 + 40) = a2;
  v22 = v34;
  *(v21 + 48) = v32;
  *(v21 + 56) = v22;
  v23 = sub_1000080F8((*v20 + 16), *(*v20 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v24 = *(v33 + 8);
  v25 = v13;
  v26 = v35;
  v24(v25, v35);
  v27 = v36;
  (*(v8 + 16))(v10, *v23 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v36);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v27);
  sub_1000080F8(v37, v37[3]);
  sub_1000324D8(v15, sub_1000BCBDC, v21);

  v24(v15, v26);
  sub_10000839C(v37);
  return sub_10000839C(v38);
}

uint64_t sub_1000AA314(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v42 = a5;
  v43 = a3;
  v41 = a4;
  v13 = type metadata accessor for CustodianRecord(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v19 = &v38 - v18;
  if (a2)
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAD0);
    v21 = v43;

    sub_1000BCBF4(a1, 1);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = a7;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v45 = v27;
      *v24 = 136315394;
      *(v24 + 4) = sub_10021145C(*(v21 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v21 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v45);
      *(v24 + 12) = 2112;
      v28 = _convertErrorToNSError(_:)();
      *(v24 + 14) = v28;
      *v26 = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s - error fetching custodian records: %@", v24, 0x16u);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);
      a7 = v25;

      sub_10000839C(v27);
    }

    return a7(a1);
  }

  else
  {
    v38 = a6;
    v39 = a7;
    v40 = a8;
    v30 = *(a1 + 16);
    if (v30)
    {
      v31 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v32 = *(v17 + 72);
      v33 = a1 + v31;
      v34 = _swiftEmptyArrayStorage;
      v44 = v31;
      do
      {
        sub_1000BCC60(v33, v19, type metadata accessor for CustodianRecord);
        if ((*&v19[*(v13 + 36)] - 1) > 2)
        {
          sub_1000BCCC8(v19, type metadata accessor for CustodianRecord);
        }

        else
        {
          sub_1000B6748(v19, v16, type metadata accessor for CustodianRecord);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v34;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002E0288(0, v34[2] + 1, 1);
            v31 = v44;
            v34 = v45;
          }

          v37 = v34[2];
          v36 = v34[3];
          if (v37 >= v36 >> 1)
          {
            sub_1002E0288((v36 > 1), v37 + 1, 1);
            v31 = v44;
            v34 = v45;
          }

          v34[2] = v37 + 1;
          sub_1000B6748(v16, v34 + v31 + v37 * v32, type metadata accessor for CustodianRecord);
        }

        v33 += v32;
        --v30;
      }

      while (v30);
    }

    else
    {
      v34 = _swiftEmptyArrayStorage;
    }

    sub_1000AA8AC(v34, v41 & 1, v42, v38, v39, v40);
  }
}

uint64_t sub_1000AA710(char a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAD0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    if (a1)
    {
      v11 = 0xD00000000000001ELL;
    }

    else
    {
      v11 = 0xD000000000000026;
    }

    if (a1)
    {
      v12 = "s Custodian Review CFU";
    }

    else
    {
      v12 = "DismissCustodianReviewCFU";
    }

    v13 = sub_10021145C(v11, v12 | 0x8000000000000000, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000839C(v10);
  }

  return a3(a1 & 1, a2);
}

uint64_t sub_1000AA8AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v61 = a6;
  v58 = a5;
  v62 = a4;
  v70 = a3;
  v59 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for CustodianRecord(0);
  v12 = *(v66 - 1);
  v13 = __chkstk_darwin(v66);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v14;
  __chkstk_darwin(v13);
  v17 = &v53 - v16;
  type metadata accessor for PartialErrorHandler();
  swift_allocObject();
  v57 = sub_10031FD1C();
  v18 = swift_allocObject();
  v19 = sub_100308DB4(_swiftEmptyArrayStorage);
  v56 = v18;
  *(v18 + 16) = v19;
  v20 = *(a1 + 16);
  v60 = a1;
  if (v20)
  {
    v67 = v15;
    v54 = v17;
    v69 = v6;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1002E0370(0, v20, 0);
    v21 = aBlock[0];
    v22 = *(v12 + 80);
    v53 = ~v22;
    v68 = v22;
    v23 = a1 + ((v22 + 32) & ~v22);
    v71 = *(v12 + 72);
    v64 = v10 + 32;
    v65 = (v10 + 16);
    v24 = v23;
    v25 = v20;
    v26 = v55;
    do
    {
      v27 = v10;
      v28 = v67;
      sub_1000BCC60(v24, v67, type metadata accessor for CustodianRecord);
      (*v65)(v26, v28 + v66[5], v9);
      sub_1000BCCC8(v28, type metadata accessor for CustodianRecord);
      aBlock[0] = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1002E0370((v29 > 1), v30 + 1, 1);
        v21 = aBlock[0];
      }

      *(v21 + 16) = v30 + 1;
      v10 = v27;
      (*(v27 + 32))(v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v30, v26, v9);
      v24 += v71;
      --v25;
    }

    while (v25);
    v31 = sub_1002E20C0(v21);

    v32 = *(v31 + 16);

    v7 = v69;
    *(v69 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_uniqueCustodianCount) = v32;
    v66 = *(v7 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_queue);
    v33 = v62;
    v64 = (v63 + ((v68 + 24) & v53) + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = ((v68 + 24) & v53);
    v63 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = v57;
    v36 = v56;
    v37 = v54;
    v38 = v67;
    do
    {
      sub_1000BCC60(v23, v37, type metadata accessor for CustodianRecord);
      sub_1000BCC60(v37, v38, type metadata accessor for CustodianRecord);
      v39 = swift_allocObject();
      *(v39 + 16) = v7;
      sub_1000B6748(v38, v65 + v39, type metadata accessor for CustodianRecord);
      v40 = (v39 + v64);
      *v40 = v70;
      v40[1] = v33;
      *(v39 + v63) = v35;
      *(v39 + v34) = v36;
      v41 = type metadata accessor for AsyncOperation();
      v42 = objc_allocWithZone(v41);
      v42[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
      v43 = &v42[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
      *v43 = sub_1000BC164;
      v43[1] = v39;
      v73.receiver = v42;
      v73.super_class = v41;
      v7 = v69;

      v44 = objc_msgSendSuper2(&v73, "init");
      [v66 addOperation:v44];

      sub_1000BCCC8(v37, type metadata accessor for CustodianRecord);
      v23 += v71;
      --v20;
    }

    while (v20);
  }

  else
  {
    v45 = sub_1002E20C0(_swiftEmptyArrayStorage);

    v46 = *(v45 + 16);

    *(v7 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_uniqueCustodianCount) = v46;
    v35 = v57;
    v36 = v56;
    v33 = v62;
  }

  v47 = *(v7 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_queue);
  v48 = swift_allocObject();
  *(v48 + 16) = v7;
  *(v48 + 24) = v36;
  v49 = v58;
  *(v48 + 32) = v35;
  *(v48 + 40) = v49;
  v50 = v60;
  *(v48 + 48) = v61;
  *(v48 + 56) = v50;
  *(v48 + 64) = v59 & 1;
  *(v48 + 72) = v70;
  *(v48 + 80) = v33;
  aBlock[4] = sub_1000BC290;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A7968;
  v51 = _Block_copy(aBlock);

  [v47 addBarrierBlock:v51];
  _Block_release(v51);
}

uint64_t sub_1000AAF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a2;
  v61 = a8;
  v59 = a7;
  v64 = a5;
  v65 = a6;
  v56 = a1;
  v63 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v58 = *(v63 - 8);
  __chkstk_darwin(v63);
  v57 = &v50 - v10;
  v11 = type metadata accessor for CustodianRecord(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v14 = __chkstk_darwin(v11);
  v62 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v55 = &v50 - v16;
  __chkstk_darwin(v15);
  v18 = &v50 - v17;
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAD0);
  v20 = a4;
  sub_1000BCC60(a4, v18, type metadata accessor for CustodianRecord);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v53 = v11;
  v54 = a3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v51 = v12;
    v66[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v66);
    *(v24 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_1000BCCC8(v18, type metadata accessor for CustodianRecord);
    v29 = sub_10021145C(v26, v28, v66);

    *(v24 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s - Starting Custodian Preflight Activity for %s", v24, 0x16u);
    swift_arrayDestroy();
    v12 = v51;
  }

  else
  {

    sub_1000BCCC8(v18, type metadata accessor for CustodianRecord);
  }

  v52 = v20;
  v30 = v55;
  sub_1000BCC60(v20, v55, type metadata accessor for CustodianRecord);
  v31 = *(v12 + 80);
  v32 = (v31 + 24) & ~v31;
  v33 = (v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v50 = v13;
  *(v34 + 16) = v59;
  v51 = type metadata accessor for CustodianRecord;
  sub_1000B6748(v30, v34 + v32, type metadata accessor for CustodianRecord);
  *(v34 + v33) = v61;
  v35 = (v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8));
  v36 = v57;
  v37 = v60;
  *v35 = v56;
  v35[1] = v37;
  v38 = v58;
  v39 = v54;
  v40 = v63;
  (*(v58 + 16))(v36, v54 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__custodianStorage, v63);

  Dependency.wrappedValue.getter();
  (*(v38 + 8))(v36, v40);
  sub_1000080F8(v66, v66[3]);
  v41 = v52;
  v42 = *(v53 + 20);
  v43 = v62;
  sub_1000BCC60(v52, v62, type metadata accessor for CustodianRecord);
  v44 = (v31 + 56) & ~v31;
  v45 = swift_allocObject();
  v46 = v64;
  v47 = v65;
  v45[2] = v39;
  v45[3] = v46;
  v45[4] = v47;
  v45[5] = sub_1000BC5B8;
  v45[6] = v34;
  sub_1000B6748(v43, v45 + v44, v51);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1000BC858;
  *(v48 + 24) = v45;

  sub_10001DDA4(v41 + v42, sub_1000BCD28, v48);

  return sub_10000839C(v66);
}

uint64_t sub_1000AB528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v31 = a5;
  v11 = type metadata accessor for CustodianRecord(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  if (a1)
  {
    v15 = (a3 + *(v14 + 24));
    v16 = v15[1];
    v33 = *v15;
    v34 = v16;
    swift_errorRetain();

    v17._countAndFlagsBits = 58;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v18);

    v19 = v33;
    v20 = v34;
    sub_1000BCC60(a3, &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecord);
    v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v22 = swift_allocObject();
    v22[2] = a2;
    v22[3] = a1;
    v22[4] = a4;
    sub_1000B6748(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for CustodianRecord);
    v23 = (v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v23 = v31;
    v23[1] = a6;
    swift_errorRetain();

    sub_10031F174(v19, v20, a1, sub_1000BCADC, v22);
  }

  else
  {
    v25 = UUID.uuidString.getter();
    v27 = v26;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_1002CF5EC(1, v25, v27, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v32;
    v29 = swift_endAccess();
    return v31(v29);
  }
}

uint64_t sub_1000AB7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = a3 + 16;
  swift_beginAccess();
  v10 = *(a1 + 24);
  v13[2] = a2;
  v13[3] = v9;
  v13[4] = a4;

  sub_10001CE30(sub_1000BCB74, v13, v10);

  return a5(v11);
}

uint64_t sub_1000AB868(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_getErrorValue();
  v4 = v16;
  v5 = v17;
  if (qword_1003D7E38 != -1)
  {
    swift_once();
    v5 = v17;
    v4 = v16;
  }

  if (sub_100255F78(qword_1003FA950, v4, v5))
  {
    goto LABEL_7;
  }

  swift_getErrorValue();
  v6 = v14;
  v7 = v15;
  if (qword_1003D7E40 != -1)
  {
    swift_once();
    v7 = v15;
    v6 = v14;
  }

  result = sub_100255F78(qword_1003FA958, v6, v7);
  if (result)
  {
LABEL_7:
    type metadata accessor for CustodianRecord(0);
    v9 = UUID.uuidString.getter();
    v11 = v10;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a3;
    *a3 = 0x8000000000000000;
    sub_1002CF5EC(0, v9, v11, isUniquelyReferenced_nonNull_native);

    *a3 = v13;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000ABA00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, int a7, void *a8, uint64_t a9)
{
  LODWORD(v10) = a7;
  v178 = a6;
  v175 = a4;
  v176 = a5;
  v14 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v161 = &v155 - v16;
  v17 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v163 = *(v17 - 8);
  v164 = v17;
  __chkstk_darwin(v17);
  v162 = &v155 - v18;
  v19 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  v169 = *(v19 - 8);
  v170 = v19;
  __chkstk_darwin(v19);
  v168 = &v155 - v20;
  v21 = sub_1000A94FC();
  v22 = sub_100071328(v21);

  v177 = a1;
  swift_beginAccess();
  v171 = a2;

  sub_1000717B0(v23);

  swift_beginAccess();
  if (!*(a3[3] + 16))
  {

    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100008D04(v46, qword_1003FAAD0);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Overall Custodian Preflight activity successful.", v49, 2u);
    }

    v50 = v175;
    v51 = v176;
    return sub_10031F804(v50, v51);
  }

  v165 = v22;
  if (qword_1003D7F50 == -1)
  {
    goto LABEL_3;
  }

LABEL_123:
  swift_once();
LABEL_3:
  v24 = type metadata accessor for Logger();
  v25 = sub_100008D04(v24, qword_1003FAAD0);

  v172 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  v28 = os_log_type_enabled(v26, v27);
  v160 = a8;
  v159 = v10;
  v157 = v15;
  v158 = v14;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v179[0] = v30;
    *v29 = 136315138;

    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v15 = Dictionary.description.getter();
    v32 = v31;

    a8 = sub_10021145C(v15, v32, v179);

    *(v29 + 4) = a8;
    _os_log_impl(&_mh_execute_header, v26, v27, "Overall Custodian Preflight activity failed: %s", v29, 0xCu);
    sub_10000839C(v30);
  }

  v156 = a9;
  v173 = a3;
  v33 = a3[3];
  v34 = 1 << *(v33 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v14 = v35 & *(v33 + 64);
  a3 = ((v34 + 63) >> 6);
  swift_bridgeObjectRetain_n();
  v10 = 0;
  for (i = _swiftEmptyArrayStorage; v14; i[v15 + 4] = v38)
  {
LABEL_12:
    v38 = *(*(v33 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v14)))));
    swift_errorRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1003062A8(0, i[2] + 1, 1, i);
    }

    v15 = i[2];
    v39 = i[3];
    a8 = (v15 + 1);
    if (v15 >= v39 >> 1)
    {
      i = sub_1003062A8((v39 > 1), v15 + 1, 1, i);
    }

    v14 &= v14 - 1;
    i[2] = a8;
  }

  while (1)
  {
    v37 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    if (v37 >= a3)
    {
      break;
    }

    v14 = *(v33 + 64 + 8 * v37);
    ++v10;
    if (v14)
    {
      v10 = v37;
      goto LABEL_12;
    }
  }

  v40 = i[2];
  if (v40)
  {
    a3 = i + 4;
    v167 = v40 - 1;
    v174 = _swiftEmptyArrayStorage;
    v15 = &unk_1003FA000;
    v14 = 0;
    while (v14 < i[2])
    {
      v10 = a3[v14];
      swift_getErrorValue();
      v41 = v185;
      a8 = v186;
      swift_errorRetain();
      if (qword_1003D7E38 != -1)
      {
        swift_once();
      }

      if (sub_100255F78(qword_1003FA950, v41, a8))
      {
        v42 = v174;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v179[0] = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E03B4(0, *(v42 + 16) + 1, 1);
          v42 = v179[0];
        }

        v45 = *(v42 + 16);
        v44 = *(v42 + 24);
        a8 = (v45 + 1);
        if (v45 >= v44 >> 1)
        {
          sub_1002E03B4((v44 > 1), v45 + 1, 1);
          v42 = v179[0];
        }

        *(v42 + 16) = a8;
        v174 = v42;
        *(v42 + 8 * v45 + 32) = v10;
        if (v167 == v14)
        {
          goto LABEL_38;
        }

        ++v14;
      }

      else
      {
        ++v14;

        if (v40 == v14)
        {
          goto LABEL_38;
        }
      }
    }

    goto LABEL_120;
  }

  v174 = _swiftEmptyArrayStorage;
LABEL_38:

  v167 = v174[2];

  v52 = *(v173 + 24);
  v53 = 1 << *(v52 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v14 = v54 & *(v52 + 64);
  a3 = ((v53 + 63) >> 6);
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v55 = _swiftEmptyArrayStorage;
  if (v14)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v56 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_119;
    }

    if (v56 >= a3)
    {
      break;
    }

    v14 = *(v52 + 64 + 8 * v56);
    ++v10;
    if (v14)
    {
      v10 = v56;
      do
      {
LABEL_45:
        v57 = *(*(v52 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v14)))));
        swift_errorRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_1003062A8(0, v55[2] + 1, 1, v55);
        }

        v15 = v55[2];
        v58 = v55[3];
        a8 = (v15 + 1);
        if (v15 >= v58 >> 1)
        {
          v55 = sub_1003062A8((v58 > 1), v15 + 1, 1, v55);
        }

        v14 &= v14 - 1;
        v55[2] = a8;
        v55[v15 + 4] = v57;
      }

      while (v14);
    }
  }

  v59 = v55[2];
  if (v59)
  {
    a3 = v55 + 4;
    v166 = v59 - 1;
    v174 = _swiftEmptyArrayStorage;
    v15 = &unk_1003FA000;
    v14 = 0;
    while (v14 < v55[2])
    {
      v10 = a3[v14];
      swift_getErrorValue();
      a8 = v183;
      v60 = v184;
      swift_errorRetain();
      if (qword_1003D7E40 != -1)
      {
        swift_once();
      }

      if (sub_100255F78(qword_1003FA958, a8, v60))
      {
        v61 = v174;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v179[0] = v61;
        if ((v62 & 1) == 0)
        {
          sub_1002E03B4(0, *(v61 + 16) + 1, 1);
          v61 = v179[0];
        }

        v64 = *(v61 + 16);
        v63 = *(v61 + 24);
        a8 = (v64 + 1);
        if (v64 >= v63 >> 1)
        {
          sub_1002E03B4((v63 > 1), v64 + 1, 1);
          v61 = v179[0];
        }

        *(v61 + 16) = a8;
        v174 = v61;
        *(v61 + 8 * v64 + 32) = v10;
        if (v166 == v14)
        {
          goto LABEL_66;
        }

        ++v14;
      }

      else
      {
        ++v14;

        if (v59 == v14)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_121;
  }

  v174 = _swiftEmptyArrayStorage;
LABEL_66:

  v65 = v174[2];
  v66 = v167 | v65;

  if (!v66)
  {

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();
    v84 = os_log_type_enabled(v82, v83);
    v86 = v175;
    v85 = v176;
    if (v84)
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "No Error 32 or 34 found. Not posting repair transparency CFU, Not triggering TTR. Ending preflight.", v87, 2u);
    }

    v50 = v86;
    v51 = v85;
    return sub_10031F804(v50, v51);
  }

  v155 = v65;
  swift_beginAccess();

  v68 = 0;
  v69 = sub_1000B6894(v67);

  v14 = (v69 + 8);
  v70 = 1 << *(v69 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v10 = v71 & v69[8];
  a3 = ((v70 + 63) >> 6);
  v174 = v69;

  v72 = 0;
  a8 = _swiftEmptyArrayStorage;
  for (j = v177; v10; v68 = v166)
  {
LABEL_76:
    while (1)
    {
      v75 = (v174[6] + ((v72 << 10) | (16 * __clz(__rbit64(v10)))));
      v15 = *v75;
      v76 = v75[1];
      v10 &= v10 - 1;
      v179[0] = *v75;
      v179[1] = v76;

      if (sub_1000ACE44(v179, v178, j))
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_72;
      }
    }

    v77 = swift_isUniquelyReferenced_nonNull_native();
    v182 = a8;
    v166 = v68;
    if ((v77 & 1) == 0)
    {
      sub_1002E0224(0, a8[2] + 1, 1);
      j = v177;
      a8 = v182;
    }

    v78 = a8;
    v79 = a8[2];
    v80 = v78[3];
    if (v79 >= v80 >> 1)
    {
      sub_1002E0224((v80 > 1), v79 + 1, 1);
      j = v177;
      v78 = v182;
    }

    v78[2] = v79 + 1;
    v81 = &v78[2 * v79];
    v81[4] = v15;
    v81[5] = v76;
    a8 = v78;
  }

  while (1)
  {
LABEL_72:
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_122;
    }

    if (v74 >= a3)
    {
      break;
    }

    v10 = *(v14 + 8 * v74);
    ++v72;
    if (v10)
    {
      v72 = v74;
      goto LABEL_76;
    }
  }

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.info.getter();

  v90 = a8;
  if (os_log_type_enabled(v88, v89))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v179[0] = v92;
    *v91 = 136315138;
    v93 = v90;
    v94 = Array.description.getter();
    v96 = sub_10021145C(v94, v95, v179);

    *(v91 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v88, v89, "Repair Eligible Custodian UUIDs: %s", v91, 0xCu);
    sub_10000839C(v92);
  }

  else
  {
    v93 = a8;
  }

  v97 = v175;
  v98 = v176;
  v99 = v165;
  v101 = v169;
  v100 = v170;
  v102 = v168;
  v103 = v177;
  (*(v169 + 16))(v168, v177 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__urlBagProvider, v170);
  Dependency.wrappedValue.getter();
  (*(v101 + 8))(v102, v100);
  LODWORD(v102) = [objc_opt_self() canRepairCustodian];
  sub_10000839C(v179);
  if (!v102)
  {
    goto LABEL_102;
  }

  v104 = v162;
  v105 = v163;
  v106 = v103 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore;
  v107 = v164;
  (*(v163 + 16))(v162, v106, v164);
  Dependency.wrappedValue.getter();
  (*(v105 + 8))(v104, v107);
  v178 = [*(*sub_1000080F8(v179 v180) + 16)];
  if (!v178)
  {

    sub_10000839C(v179);
    goto LABEL_103;
  }

  sub_10000839C(v179);
  if (!v93[2])
  {

LABEL_102:

LABEL_103:
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&_mh_execute_header, v124, v125, "Untrusted CRK Repair is not enabled. Continuing to TTR.", v126, 2u);
    }

    swift_beginAccess();

    v128 = sub_1000AECE0(v127, v99);

    if ((v128 & 1) != 0 && sub_1000B7D84())
    {
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        *v131 = 0;
        _os_log_impl(&_mh_execute_header, v129, v130, "Preflight TTR is not available after 18.1", v131, 2u);
      }

      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v132, v133))
      {
        goto LABEL_114;
      }

      v134 = swift_slowAlloc();
      *v134 = 67109120;
      _os_log_impl(&_mh_execute_header, v132, v133, "Skipping Custodian Preflight TTR: isWithInTTRFrequency:%{BOOL}d", v134, 8u);
    }

    else
    {
      v132 = Logger.logObject.getter();
      v135 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v132, v135))
      {
LABEL_114:

        v50 = v97;
        v51 = v98;
        return sub_10031F804(v50, v51);
      }

      v136 = v155 != 0;
      v137 = v167 != 0;
      v138 = swift_slowAlloc();
      *v138 = 67109632;
      *(v138 + 4) = v128 & 1;
      *(v138 + 8) = 1024;
      *(v138 + 10) = v137;
      *(v138 + 14) = 1024;
      *(v138 + 16) = v136;
      _os_log_impl(&_mh_execute_header, v132, v135, "Skipping Custodian Preflight TTR: hasAtLeastOneNewInvalidCRK:%{BOOL}d,\nhasOctagonMissingKeysError:%{BOOL}d,\nhasOctagonUntrustedKeysError:%{BOOL}d", v138, 0x14u);
    }

    goto LABEL_114;
  }

  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v179[0] = v111;
    *v110 = 136315138;
    v112 = Array.description.getter();
    v114 = sub_10021145C(v112, v113, v179);

    *(v110 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v108, v109, "Trying to post RC Repair Transparency CFU %s", v110, 0xCu);
    sub_10000839C(v111);
  }

  v115 = v158;
  v116 = v93[2];
  if (v116)
  {
    v179[0] = _swiftEmptyArrayStorage;
    sub_1002E0224(0, v116, 0);
    v117 = v179[0];
    v174 = v93;
    v118 = v93 + 5;
    do
    {
      v120 = *(v118 - 1);
      v119 = *v118;
      v179[0] = v117;
      v122 = v117[2];
      v121 = v117[3];

      if (v122 >= v121 >> 1)
      {
        sub_1002E0224((v121 > 1), v122 + 1, 1);
        v117 = v179[0];
      }

      v117[2] = v122 + 1;
      v123 = &v117[2 * v122];
      v123[4] = v120;
      v123[5] = v119;
      v118 += 2;
      --v116;
    }

    while (v116);
  }

  else
  {

    v117 = _swiftEmptyArrayStorage;
  }

  v140 = v157;
  v141 = v177;
  v142 = v161;
  (*(v157 + 16))(v161, v177 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__followUpController, v115);
  Dependency.wrappedValue.getter();
  (*(v140 + 8))(v142, v115);
  v143 = v180;
  v144 = v181;
  v174 = sub_1000080F8(v179, v180);
  v172 = AAFollowUpIdentifierCustodianReview;
  sub_100005814(&qword_1003DBB50, &unk_10033FC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033EB30;
  v146 = AAFollowUpTrustedContactIDs;
  v182 = AAFollowUpTrustedContactIDs;
  type metadata accessor for AAFollowUpUserInfo(0);
  sub_1000BC2E0(&qword_1003D8430, type metadata accessor for AAFollowUpUserInfo, &unk_10033DB14);
  v147 = v146;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_100005814(&qword_1003DA1E0, &qword_100345E50);
  *(inited + 72) = v117;
  v148 = sub_100308EB0(inited);
  swift_setDeallocating();
  sub_100008D3C(inited + 32, &qword_1003DBB58, &qword_10033FC20);
  v149 = swift_allocObject();
  *(v149 + 16) = v173;
  *(v149 + 24) = v159 & 1;
  v150 = v160;
  *(v149 + 32) = v141;
  *(v149 + 40) = v150;
  v151 = v175;
  v152 = v176;
  *(v149 + 48) = v156;
  *(v149 + 56) = v151;
  *(v149 + 64) = v152;
  v153 = *(v144 + 16);

  v154 = v178;
  v153(v172, v178, v148, sub_1000BC378, v149, v143, v144);

  return sub_10000839C(v179);
}

uint64_t sub_1000ACE44(void *a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v61 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  v63 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v57 - v5;
  v6 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v7 = __chkstk_darwin(v6 - 8);
  v58 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = &v57 - v9;
  v10 = type metadata accessor for CustodianRecord(0);
  v11 = __chkstk_darwin(v10);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v57 - v14;
  v16 = *(a2 + 16);
  v57 = v13;
  if (v16)
  {
    v18 = *a1;
    v17 = a1[1];
    v19 = *(v13 + 72);
    v64 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v20 = a2 + v64;
    v21 = _swiftEmptyArrayStorage;
    v65 = v10;
    v66 = v18;
    while (1)
    {
      sub_1000BCC60(v20, v15, type metadata accessor for CustodianRecord);
      if (UUID.uuidString.getter() == v18 && v22 == v17)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_12;
      }

      sub_1000BCCC8(v15, type metadata accessor for CustodianRecord);
LABEL_4:
      v20 += v19;
      --v16;
      v18 = v66;
      if (!v16)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    sub_1000B6748(v15, v68, type metadata accessor for CustodianRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67[0] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002E0288(0, v21[2] + 1, 1);
      v21 = v67[0];
    }

    v27 = v21[2];
    v26 = v21[3];
    if (v27 >= v26 >> 1)
    {
      sub_1002E0288((v26 > 1), v27 + 1, 1);
      v21 = v67[0];
    }

    v21[2] = v27 + 1;
    sub_1000B6748(v68, v21 + v64 + v27 * v19, type metadata accessor for CustodianRecord);
    v10 = v65;
    goto LABEL_4;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_18:
  v28 = v62;
  if (v21[2])
  {
    v29 = v57;
    sub_1000BCC60(v21 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v62, type metadata accessor for CustodianRecord);
    v30 = 0;
    v31 = v59;
  }

  else
  {
    v30 = 1;
    v31 = v59;
    v29 = v57;
  }

  (*(v29 + 56))(v28, v30, 1, v10);
  v32 = v28;
  v33 = v58;
  sub_100012D04(v32, v58, &unk_1003DF000, &unk_10033EC50);
  if ((*(v29 + 48))(v33, 1, v10) == 1)
  {
    sub_100008D3C(v33, &unk_1003DF000, &unk_10033EC50);
    v34 = v63;
  }

  else
  {
    v35 = v33 + *(v10 + 60);
    v36 = *v35;
    v37 = *(v35 + 8);
    sub_1000BCCC8(v33, type metadata accessor for CustodianRecord);
    v34 = v63;
    if (v37 != 1)
    {
      goto LABEL_25;
    }
  }

  v36 = 0;
LABEL_25:
  v38 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__urlBagProvider;
  v40 = v60;
  v39 = v61;
  v66 = *(v34 + 16);
  v66(v60, v31 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__urlBagProvider, v61);
  Dependency.wrappedValue.getter();
  v41 = *(v34 + 8);
  v63 = v34 + 8;
  v41(v40, v39);
  v42 = objc_opt_self();
  v43 = [v42 maxRepairCount];
  sub_10000839C(v67);
  v68 = v36;
  v45 = v43 > 0 && v36 < v43;
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100008D04(v46, qword_1003FAAD0);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    LODWORD(v65) = v45;
    v50 = v31;
    v51 = v49;
    *v49 = 134218496;
    *(v49 + 4) = v68;
    *(v49 + 12) = 2048;
    v52 = v50 + v38;
    v53 = v60;
    v54 = v61;
    v66(v60, v52, v61);
    Dependency.wrappedValue.getter();
    v41(v53, v54);
    v55 = [v42 maxRepairCount];
    sub_10000839C(v67);
    *(v51 + 14) = v55;
    v45 = v65;

    *(v51 + 22) = 1024;
    *(v51 + 24) = v45;
    _os_log_impl(&_mh_execute_header, v47, v48, "CK repairCount %lu <  IdMS maxRepairCount %ld = %{BOOL}d", v51, 0x1Cu);
  }

  else
  {
  }

  sub_100008D3C(v62, &unk_1003DF000, &unk_10033EC50);
  return v45;
}

uint64_t sub_1000AD4EC(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAD0);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 67109378;
    *(v17 + 4) = a1 & 1;
    *(v17 + 8) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v17 + 10) = v19;
    *v18 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "Posted RC Repair Transparency CFU: %{BOOL}d error: %@", v17, 0x12u);
    sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
  }

  v35 = _swiftEmptyArrayStorage;
  if (a2)
  {
    swift_errorRetain();
    v21 = sub_1003062A8(0, 1, 1, _swiftEmptyArrayStorage);
    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1003062A8((v22 > 1), v23 + 1, 1, v21);
    }

    v21[2] = v23 + 1;
    v21[v23 + 4] = a2;
    v35 = v21;
  }

  swift_beginAccess();
  v24 = *(a3 + 24);
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = sub_100306DE8(v25, 0);
    v27 = sub_1002FD388(&v34, v26 + 4, v25, v24);
    v28 = v34;

    result = sub_10005A1DC(v28);
    if (v27 != v25)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  sub_10028BCB4(v26);
  v30 = v35;
  if ((a4 & 1) != 0 || (a1 & 1) == 0)
  {

    return sub_10031F804(a8, a9);
  }

  else
  {

    sub_1000B7E34(v30, a6, a7, a5, a3, a8, a9);
  }
}

uint64_t sub_1000AD82C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v35 = a7;
  v36 = a4;
  v34 = a3;
  v33 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v33);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustodianshipRecords(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  __chkstk_darwin(v16);
  v18 = (&v32 - v17);
  sub_100012D04(a1, &v32 - v17, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = a5;
    v19 = *v18;
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAD0);
    sub_1000BCC60(v35, v12, type metadata accessor for CustodianRecord);

    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v23 = 136315650;
      *(v23 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v37);
      *(v23 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_1000BCCC8(v12, type metadata accessor for CustodianRecord);
      v28 = sub_10021145C(v25, v27, &v37);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2112;
      v29 = _convertErrorToNSError(_:)();
      *(v23 + 24) = v29;
      *v24 = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s - error fetching health check record for %s: %@", v23, 0x20u);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v12, type metadata accessor for CustodianRecord);
    }

    v31 = v36;
    swift_errorRetain();
    v31(v19);
  }

  else
  {
    sub_1000B6748(v18, v15, type metadata accessor for CustodianshipRecords);
    sub_1000AFAE4(v15, v34, v36, a5, a6);
    return sub_1000BCCC8(v15, type metadata accessor for CustodianshipRecords);
  }
}

uint64_t sub_1000ADCA0(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(void), uint64_t a9, uint64_t a10)
{
  v66 = a7;
  v67 = a1;
  v15 = type metadata accessor for CustodianshipRecords(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v18 - 8);
  v20 = &v63 - v19;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a4;
  v22[5] = a2;
  v22[6] = a3;

  v23 = a4;
  swift_errorRetain();
  sub_1000BCD5C(0, 0, v20, &unk_10033FBC8, v22);

  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v65 = a9;
    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAD0);

    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v27 = 136315650;
      *(v27 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v68);
      *(v27 + 12) = 2080;
      v64 = a8;
      if (v67 > 3u)
      {
        v43 = 0x800000010032DD20;
        v44 = 0xD00000000000001ALL;
        if (v67 != 6)
        {
          v44 = 0xD000000000000015;
          v43 = 0x800000010032DD00;
        }

        v45 = 0xD00000000000001BLL;
        if (v67 == 4)
        {
          v45 = 0x725064656C696166;
          v46 = 0xEF746867696C6665;
        }

        else
        {
          v46 = 0x800000010032DD40;
        }

        if (v67 <= 5u)
        {
          v32 = v45;
        }

        else
        {
          v32 = v44;
        }

        if (v67 <= 5u)
        {
          v33 = v46;
        }

        else
        {
          v33 = v43;
        }
      }

      else
      {
        v29 = 0xEF6572756C696146;
        v30 = 0x6146726961706572;
        v31 = 0xEC00000064656C69;
        if (v67 != 2)
        {
          v30 = 0xD000000000000010;
          v31 = 0x800000010032DD60;
        }

        if (v67)
        {
          v29 = 0xED0000726F727265;
        }

        if (v67 <= 1u)
        {
          v32 = 0x4B52436B63656863;
        }

        else
        {
          v32 = v30;
        }

        if (v67 <= 1u)
        {
          v33 = v29;
        }

        else
        {
          v33 = v31;
        }
      }

      v47 = sub_10021145C(v32, v33, v68);

      *(v27 + 14) = v47;
      *(v27 + 22) = 2112;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 24) = v48;
      *v28 = v48;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s - Ending with failure due to %s %@", v27, 0x20u);
      sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      a8 = v64;
    }

    else
    {
    }

    ObjectType = swift_getObjectType();
    _convertErrorToNSError(_:)();
    v50 = (*(a6 + 32))(v68, ObjectType, a6);
    v52 = v51;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v50(v68, 0);
    sub_10024ADEC(0);
    swift_errorRetain();
    a8(a2);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAAD0);
    sub_1000BCC60(a10, v17, type metadata accessor for CustodianshipRecords);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v37 = 136315650;
      *(v37 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v68);
      *(v37 + 12) = 2080;
      if (v67 > 3u)
      {
        v54 = 0x800000010032DD20;
        v55 = 0xD00000000000001ALL;
        if (v67 != 6)
        {
          v55 = 0xD000000000000015;
          v54 = 0x800000010032DD00;
        }

        v56 = 0xD00000000000001BLL;
        if (v67 == 4)
        {
          v56 = 0x725064656C696166;
          v57 = 0xEF746867696C6665;
        }

        else
        {
          v57 = 0x800000010032DD40;
        }

        if (v67 <= 5u)
        {
          v41 = v56;
        }

        else
        {
          v41 = v55;
        }

        if (v67 <= 5u)
        {
          v42 = v57;
        }

        else
        {
          v42 = v54;
        }
      }

      else
      {
        v38 = 0xEF6572756C696146;
        v39 = 0x6146726961706572;
        v40 = 0xEC00000064656C69;
        if (v67 != 2)
        {
          v39 = 0xD000000000000010;
          v40 = 0x800000010032DD60;
        }

        if (v67)
        {
          v38 = 0xED0000726F727265;
        }

        if (v67 <= 1u)
        {
          v41 = 0x4B52436B63656863;
        }

        else
        {
          v41 = v39;
        }

        if (v67 <= 1u)
        {
          v42 = v38;
        }

        else
        {
          v42 = v40;
        }
      }

      v58 = sub_10021145C(v41, v42, v68);

      *(v37 + 14) = v58;
      *(v37 + 22) = 2080;
      type metadata accessor for CustodianRecord(0);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      sub_1000BCCC8(v17, type metadata accessor for CustodianshipRecords);
      v62 = sub_10021145C(v59, v61, v68);

      *(v37 + 24) = v62;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s - Ending with success due to %s for custodian %s", v37, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v17, type metadata accessor for CustodianshipRecords);
    }

    sub_10024ADEC(1);
    return (a8)(0);
  }
}

uint64_t sub_1000AE5AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), void *a5)
{
  v10 = type metadata accessor for CustodianshipRecords(0);
  v11 = __chkstk_darwin(v10);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v49 - v14;
  if (a1)
  {
    v52 = a4;
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    v17 = sub_100008D04(v16, qword_1003FAAD0);
    sub_1000BCC60(a3, v15, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    v20 = os_log_type_enabled(v18, v19);
    v51 = a3;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v50 = a5;
      v22 = v21;
      v23 = swift_slowAlloc();
      v49[1] = v17;
      v24 = v23;
      v53 = swift_slowAlloc();
      *v22 = 136315650;
      *(v22 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v53);
      *(v22 + 12) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_1000BCCC8(v15, type metadata accessor for CustodianshipRecords);
      v28 = sub_10021145C(v25, v27, &v53);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2112;
      v29 = _convertErrorToNSError(_:)();
      *(v22 + 24) = v29;
      *v24 = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - Preflight Custodian Recovery failed for custodian %s with error: %@", v22, 0x20u);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      a5 = v50;
    }

    else
    {

      sub_1000BCCC8(v15, type metadata accessor for CustodianshipRecords);
    }

    v40 = sub_1000B7D84();
    v41 = v52;
    if (!v40 || *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_uniqueCustodianCount) != 1)
    {
      swift_errorRetain();
      v41(4, a1);
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = a5;
      v46 = swift_slowAlloc();
      v53 = v46;
      *v44 = 136315138;
      *(v44 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v53);
      _os_log_impl(&_mh_execute_header, v42, v43, "%s - Owner is an ADP user, with only one custodian failing preflight.", v44, 0xCu);
      sub_10000839C(v46);
      a5 = v45;
    }

    v47 = swift_allocObject();
    v47[2] = v41;
    v47[3] = a5;
    v47[4] = a1;
    swift_errorRetain();

    sub_1000B2D34(v51, sub_1000BACF8, v47);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAD0);
    sub_1000BCC60(a3, v13, type metadata accessor for CustodianshipRecords);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v51 = a3;
      v34 = v33;
      v53 = swift_slowAlloc();
      *v34 = 136315394;
      *(v34 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v53);
      *(v34 + 12) = 2080;
      type metadata accessor for CustodianRecord(0);
      type metadata accessor for UUID();
      v35 = a4;
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      sub_1000BCCC8(v13, type metadata accessor for CustodianshipRecords);
      v39 = sub_10021145C(v36, v38, &v53);
      a4 = v35;

      *(v34 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s - Preflight Custodian Recovery successful for custodian %s", v34, 0x16u);
      swift_arrayDestroy();

      a3 = v51;
    }

    else
    {

      sub_1000BCCC8(v13, type metadata accessor for CustodianshipRecords);
    }

    sub_1000B9A7C(a3, a2, a4, a5);
  }
}

uint64_t sub_1000AECE0(uint64_t a1, uint64_t a2)
{
  if (qword_1003D7F50 != -1)
  {
LABEL_46:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "hasAtLeastOneNewInvalidCRK was called.", v5, 2u);
  }

  v63 = 0;

  v7 = sub_1002DF678(v6);
  v8 = sub_1000CE940(a1, v7);
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = v59;
  v54 = v8;
  v55 = v59 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName;
  v13 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(a2 + 48) + 16 * v17);
    v19 = v18[1];
    v57 = *v18;
    v20 = *(*(a2 + 56) + v17);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v23 = 136315650;
      *(v23 + 4) = sub_10021145C(*v55, *(v55 + 8), v62);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_10021145C(v57, v19, v62);
      *(v23 + 22) = 1024;
      *(v23 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s Past Key: %s Bool: %{BOOL}d", v23, 0x1Cu);
      swift_arrayDestroy();

      v12 = v59;
    }

    v14 = v15;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(a2 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 64);
  v56 = v12 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName;
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  while (v26)
  {
    v29 = v28;
LABEL_24:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = v30 | (v29 << 6);
    v32 = (*(a1 + 48) + 16 * v31);
    v33 = v32[1];
    v58 = *v32;
    v34 = *(*(a1 + 56) + v31);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v37 = 136315650;
      *(v37 + 4) = sub_10021145C(*v56, *(v56 + 8), v62);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_10021145C(v58, v33, v62);
      *(v37 + 22) = 1024;
      *(v37 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s Current Key: %s Bool: %{BOOL}d", v37, 0x1Cu);
      swift_arrayDestroy();
    }

    v28 = v29;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_44;
    }

    if (v29 >= v27)
    {
      break;
    }

    v26 = *(a1 + 64 + 8 * v29);
    ++v28;
    if (v26)
    {
      goto LABEL_24;
    }
  }

  if (*(v54 + 16))
  {
    v38 = 1 << *(v54 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v54 + 56);
    v41 = (v38 + 63) >> 6;

    v42 = 0;
    while (v40)
    {
      v43 = v42;
LABEL_35:
      v44 = (*(v54 + 48) + ((v43 << 10) | (16 * __clz(__rbit64(v40)))));
      v45 = v44[1];
      v40 &= v40 - 1;
      v62[0] = *v44;
      v62[1] = v45;

      sub_1000AF418(v62, a2, a1, &v63);
    }

    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_45;
      }

      if (v43 >= v41)
      {

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v62[0] = v49;
          *v48 = 136315394;
          *(v48 + 4) = sub_10021145C(*(v59 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v59 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v62);
          *(v48 + 12) = 1024;
          swift_beginAccess();
          *(v48 + 14) = v63;
          _os_log_impl(&_mh_execute_header, v46, v47, "%s hasAtLeastOneNewInvalidCRK: Returning %{BOOL}d.", v48, 0x12u);
          sub_10000839C(v49);
        }

        swift_beginAccess();
        return v63;
      }

      v40 = *(v54 + 56 + 8 * v43);
      ++v42;
      if (v40)
      {
        v42 = v43;
        goto LABEL_35;
      }
    }
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "hasAtLeastOneNewInvalidCRK: Intersection set between old / new Preflight results is empty. Returning true.", v53, 2u);
  }

  return 1;
}

void sub_1000AF418(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *a1;
  v5 = a1[1];
  if (!*(a2 + 16) || (v9 = sub_1003084DC(*a1, v5), (v10 & 1) == 0))
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAD0);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10021145C(v6, v5, &v41);
      _os_log_impl(&_mh_execute_header, v26, v27, "No old Preflight results for uuid: %s exist", v28, 0xCu);
      sub_10000839C(v29);
    }

    if (!*(a3 + 16))
    {
      return;
    }

    v30 = sub_1003084DC(v6, v5);
    if (v31 & 1) == 0 || (*(*(a3 + 56) + v30))
    {
      return;
    }

    v19 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v19, v32))
    {
      goto LABEL_28;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10021145C(v6, v5, &v41);
    v35 = "Preflight result for uuid: %s, are bad. This could possibly be the first bad preflight result.";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v19, v32, v35, v33, 0xCu);
    sub_10000839C(v34);

LABEL_27:

    goto LABEL_28;
  }

  if (!*(a3 + 16) || (v11 = *(*(a2 + 56) + v9), v12 = sub_1003084DC(v6, v5), (v13 & 1) == 0))
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAAD0);

    v19 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v19, v32))
    {
      goto LABEL_28;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10021145C(v6, v5, &v41);
    v35 = "Preflight results for uuid: %s not present";
    goto LABEL_26;
  }

  v40 = *(*(a3 + 56) + v12);
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAD0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v39 = v11;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_10021145C(v6, v5, &v41);
    *(v17 + 12) = 1024;
    *(v17 + 14) = v39;
    *(v17 + 18) = 1024;
    *(v17 + 20) = v40;
    _os_log_impl(&_mh_execute_header, v15, v16, "Preflight result for uuid: %s,\npreviously successful? %{BOOL}d,\ncurrently successful? %{BOOL}d", v17, 0x18u);
    sub_10000839C(v18);

    v11 = v39;
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  if (!v11)
  {
    if (v40)
    {
      if (!v21)
      {
        goto LABEL_28;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10021145C(v6, v5, &v41);
      v24 = "Preflight result for uuid: %s, transitioning from bad to good";
    }

    else
    {
      if (!v21)
      {
        goto LABEL_28;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10021145C(v6, v5, &v41);
      v24 = "Preflight results for uuid: %s, transitioning from bad to bad. Not triggering TTR.";
    }

    goto LABEL_38;
  }

  if (v40)
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10021145C(v6, v5, &v41);
      v24 = "Preflight results for uuid: %s, is same as before";
LABEL_38:
      _os_log_impl(&_mh_execute_header, v19, v20, v24, v22, 0xCu);
      sub_10000839C(v23);

      goto LABEL_27;
    }

LABEL_28:

    return;
  }

  if (v21)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_10021145C(v6, v5, &v41);
    _os_log_impl(&_mh_execute_header, v19, v20, "Preflight result for uuid: %s, transitioning from good to bad", v37, 0xCu);
    sub_10000839C(v38);
  }

  *a4 = 1;
}

void sub_1000AFAE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v66 = a5;
  v67 = a4;
  v64 = a3;
  v65 = a2;
  v8 = type metadata accessor for CustodianshipRecords(0);
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v59 - v12;
  v14 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v59 - v16;
  v18 = type metadata accessor for CustodianRecord(0);
  if ((*(a1 + v18[9]) - 1) > 2)
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100008D04(v50, qword_1003FAAD0);
    sub_1000BCC60(a1, v11, type metadata accessor for CustodianshipRecords);

    v51 = Logger.logObject.getter();
    v52 = v6;
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v53))
    {
      v54 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v54 = 136315394;
      *(v54 + 4) = sub_10021145C(*(v52 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v52 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v68);
      *(v54 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      sub_1000BCCC8(v11, type metadata accessor for CustodianshipRecords);
      v58 = sub_10021145C(v55, v57, v68);

      *(v54 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v51, v53, "%s - custodian %s does not require a health check, ending check early.", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v11, type metadata accessor for CustodianshipRecords);
    }

    v67(0);
  }

  else
  {
    (*(v15 + 16))(v17, v6 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsEventFactory, v14);
    Dependency.wrappedValue.getter();
    (*(v15 + 8))(v17, v14);
    v19 = a1 + *(v8 + 24);
    v20 = v19 + *(type metadata accessor for CustodianHealthRecord(0) + 40);
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = objc_allocWithZone(type metadata accessor for CustodianPreflightEvent(0));
    v24 = sub_10024ACD0(v21, v22);
    sub_10000839C(v68);
    v25 = (a1 + v18[13]);
    v26 = *v25;
    v27 = v25[1];
    v28 = (v24 + qword_1003E3EC8);
    *v28 = v26;
    v28[1] = v27;

    v29 = (a1 + v18[15]);
    v30 = *v29;
    LOBYTE(v29) = *(v29 + 8);
    v61 = v24;
    v62 = a1;
    v31 = v24 + qword_1003E3ED0;
    *v31 = v30;
    *(v31 + 8) = v29;
    v32 = (a1 + v18[14]);
    v34 = *v32;
    v33 = v32[1];
    v35 = (v24 + qword_1003E3ED8);
    *v35 = v34;
    v35[1] = v33;

    v36 = v64;
    v60 = sub_1000B47B0(v65, v64, v26, v27);
    sub_1000BCC60(a1, v13, type metadata accessor for CustodianshipRecords);
    v37 = (*(v63 + 80) + 24) & ~*(v63 + 80);
    v38 = (v9 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
    v41 = v66;
    v42 = swift_allocObject();
    *(v42 + 16) = v6;
    sub_1000B6748(v13, v42 + v37, type metadata accessor for CustodianshipRecords);
    v43 = (v42 + v38);
    *v43 = v65;
    v43[1] = v36;
    v44 = (v42 + v39);
    v45 = v60;
    v46 = v61;
    *v44 = v61;
    v44[1] = &off_1003B0ED0;
    *(v42 + v40) = v45;
    v47 = (v42 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v47 = v67;
    v47[1] = v41;
    v48 = v45;

    v49 = v46;
    sub_1000B8600(v62, v49, sub_1000B67B0, v42, v6);
  }
}

uint64_t sub_1000B0100(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void (*a10)(void), uint64_t a11)
{
  v55 = a6;
  v56 = a8;
  v54 = a5;
  v57 = a10;
  v58 = a11;
  v16 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v49 - v17;
  v19 = type metadata accessor for CustodianshipRecords(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1000BCC60(a4, &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipRecords);
    v23 = (*(v20 + 80) + 72) & ~*(v20 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a9;
    v26 = v56;
    v25 = v57;
    *(v24 + 32) = a7;
    *(v24 + 40) = v26;
    *(v24 + 48) = 0;
    v27 = v58;
    *(v24 + 56) = v25;
    *(v24 + 64) = v27;
    sub_1000B6748(v22, v24 + v23, type metadata accessor for CustodianshipRecords);
    v28 = a9;
    swift_unknownObjectRetain();

    sub_1000B946C(a4, sub_1000BAC0C, v24);
  }

  else
  {
    v51 = a9;
    v52 = a3;
    v53 = a7;
    if (a2)
    {
      v29 = type metadata accessor for TaskPriority();
      (*(*(v29 - 8) + 56))(v18, 1, 1, v29);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v32 = v51;
      v31 = v52;
      v30[4] = v51;
      v30[5] = a2;
      v30[6] = v31;
      swift_errorRetain();
      swift_errorRetain();
      v33 = v32;

      swift_errorRetain();
      sub_1000BCD5C(0, 0, v18, &unk_10033FBC0, v30);

      sub_10024ADEC(0);
      v57(a2);
    }

    v50 = a4;
    sub_1000BCC60(a4, &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipRecords);
    v35 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v36 = (v21 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = v58;
    v40 = swift_allocObject();
    *(v40 + 16) = v52;
    sub_1000B6748(v22, v40 + v35, type metadata accessor for CustodianshipRecords);
    v41 = (v40 + v36);
    v42 = v55;
    *v41 = v54;
    v41[1] = v42;
    v43 = v51;
    *(v40 + v37) = v51;
    v44 = (v40 + v38);
    v46 = v56;
    v45 = v57;
    *v44 = v53;
    v44[1] = v46;
    v47 = (v40 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v47 = v45;
    v47[1] = v39;
    v48 = v43;
    swift_unknownObjectRetain();

    sub_1000BA330(v50, sub_1000B939C, v40);
  }
}

uint64_t sub_1000B04FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10)
{
  v76 = a7;
  v77 = a8;
  v71 = a4;
  v72 = a3;
  v74 = a6;
  v75 = a10;
  v73 = a9;
  v13 = type metadata accessor for CustodianshipRecords(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v67 - v18;
  v20 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v20 - 8);
  v22 = &v67 - v21;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAD0);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v76;
    if (v26)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v78[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v78);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s Error repairing CRK.", v28, 0xCu);
      sub_10000839C(v29);
    }

    ObjectType = swift_getObjectType();
    _convertErrorToNSError(_:)();
    v31 = (*(v77 + 32))(v78, ObjectType);
    v33 = v32;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v27 = v76;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v31(v78, 0);
    if (sub_1000B7D84() && *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_uniqueCustodianCount) == 1)
    {

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v78[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v78);
        _os_log_impl(&_mh_execute_header, v34, v35, "%s - Owner is an ADP user, with only one custodian with missing CRK and attempt to repair failed. Attempting to mark custodian as not reachable.", v36, 0xCu);
        sub_10000839C(v37);
      }

      v38 = swift_allocObject();
      v39 = v74;
      v40 = v75;
      v38[2] = a2;
      v38[3] = v39;
      v41 = v77;
      v38[4] = v27;
      v38[5] = v41;
      v38[6] = v73;
      v38[7] = v40;
      v38[8] = a1;
      swift_errorRetain();
      v42 = v39;
      swift_unknownObjectRetain();

      sub_1000B2D34(v72, sub_1000BBA2C, v38);
    }

    else
    {

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v78[0] = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v78);
        _os_log_impl(&_mh_execute_header, v44, v45, "%s - Ending preflight.", v46, 0xCu);
        sub_10000839C(v47);
      }

      v48 = type metadata accessor for TaskPriority();
      (*(*(v48 - 8) + 56))(v22, 1, 1, v48);
      v49 = swift_allocObject();
      v49[2] = 0;
      v49[3] = 0;
      v50 = v74;
      v49[4] = v74;
      v49[5] = a1;
      v49[6] = a2;
      swift_errorRetain();
      swift_errorRetain();
      v51 = v50;

      sub_1000BCD5C(0, 0, v22, &unk_10033FBD8, v49);

      sub_10024ADEC(0);
      v73(a1);
    }
  }

  else
  {
    v69 = v14;
    v70 = a5;
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100008D04(v52, qword_1003FAAD0);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v78[0] = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v78);
      _os_log_impl(&_mh_execute_header, v53, v54, "%s CRK repair successful. Proceeding to refetch records to preflight", v55, 0xCu);
      sub_10000839C(v56);
    }

    (*(v17 + 16))(v19, a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__custodianStorage, v16);
    Dependency.wrappedValue.getter();
    (*(v17 + 8))(v19, v16);
    sub_1000080F8(v78, v78[3]);
    v68 = *(type metadata accessor for CustodianRecord(0) + 20);
    v57 = v72;
    sub_1000BCC60(v72, &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipRecords);
    v58 = (*(v69 + 80) + 80) & ~*(v69 + 80);
    v59 = swift_allocObject();
    v61 = v70;
    v60 = v71;
    v59[2] = a2;
    v59[3] = v60;
    v63 = v74;
    v62 = v75;
    v59[4] = v61;
    v59[5] = v63;
    v64 = v77;
    v59[6] = v76;
    v59[7] = v64;
    v59[8] = v73;
    v59[9] = v62;
    sub_1000B6748(&v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v59 + v58, type metadata accessor for CustodianshipRecords);
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1000BB954;
    *(v65 + 24) = v59;
    v66 = v63;
    swift_unknownObjectRetain();

    sub_10001DDA4(v57 + v68, sub_100094D34, v65);

    return sub_10000839C(v78);
  }
}

uint64_t sub_1000B0E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t), uint64_t a10)
{
  v50 = a6;
  v51 = a8;
  v47 = a7;
  v48 = a5;
  v12 = type metadata accessor for CustodianshipRecords(0);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v45 - v16;
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v20 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  __chkstk_darwin(v20);
  v22 = (&v45 - v21);
  sub_100012D04(a1, &v45 - v21, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAD0);
    v25 = v49;
    sub_1000BCC60(a10, v49, type metadata accessor for CustodianshipRecords);

    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v28 = 136315650;
      *(v28 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v52);
      *(v28 + 12) = 2080;
      type metadata accessor for CustodianRecord(0);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1000BCCC8(v25, type metadata accessor for CustodianshipRecords);
      v33 = sub_10021145C(v30, v32, &v52);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2112;
      v34 = _convertErrorToNSError(_:)();
      *(v28 + 24) = v34;
      *v29 = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s - error fetching health check record for %s: %@", v28, 0x20u);
      sub_100008D3C(v29, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v25, type metadata accessor for CustodianshipRecords);
    }

    v44 = v51;
    swift_errorRetain();
    v44(v23);
  }

  else
  {
    sub_1000B6748(v22, v19, type metadata accessor for CustodianshipRecords);
    sub_1000BCC60(v19, v17, type metadata accessor for CustodianshipRecords);
    v35 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v36 = (v13 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v38 = v48;
    *(v37 + 16) = a2;
    *(v37 + 24) = v38;
    sub_1000B6748(v17, v37 + v35, type metadata accessor for CustodianshipRecords);
    v39 = (v37 + v36);
    v40 = v47;
    *v39 = v50;
    v39[1] = v40;
    v41 = (v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v41 = v51;
    v41[1] = a9;
    v42 = v38;
    swift_unknownObjectRetain();

    sub_1000B946C(v19, sub_1000BBE00, v37);

    return sub_1000BCCC8(v19, type metadata accessor for CustodianshipRecords);
  }
}

uint64_t sub_1000B13A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9)
{
  v47 = a9;
  v48 = a8;
  v14 = type metadata accessor for CustodianshipRecords(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v20 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v20 - 8);
  v22 = &v47 - v21;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a4;
  v24[5] = a2;
  v24[6] = a3;

  v25 = a4;
  swift_errorRetain();
  sub_1000BCD5C(0, 0, v22, &unk_10033FBF8, v24);

  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAD0);
    sub_1000BCC60(a5, v19, type metadata accessor for CustodianshipRecords);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v49);
      *(v29 + 12) = 2080;
      type metadata accessor for CustodianRecord(0);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1000BCCC8(v19, type metadata accessor for CustodianshipRecords);
      v33 = sub_10021145C(v30, v32, v49);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s - Ending with failed preflight after a repair for custodian %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v19, type metadata accessor for CustodianshipRecords);
    }

    ObjectType = swift_getObjectType();
    _convertErrorToNSError(_:)();
    v43 = (*(a7 + 32))(v49, ObjectType, a7);
    v45 = v44;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v43(v49, 0);
    sub_10024ADEC(0);
    swift_errorRetain();
    v48(a2);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAAD0);
    sub_1000BCC60(a5, v17, type metadata accessor for CustodianshipRecords);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v49);
      *(v37 + 12) = 2080;
      type metadata accessor for CustodianRecord(0);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_1000BCCC8(v17, type metadata accessor for CustodianshipRecords);
      v41 = sub_10021145C(v38, v40, v49);

      *(v37 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s - Ending with successful preflight after repair for custodian %s", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v17, type metadata accessor for CustodianshipRecords);
    }

    sub_10024ADEC(1);
    return (v48)(0);
  }
}

uint64_t sub_1000B1A98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v45 = a4;
  v15 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v15 - 8);
  v17 = v43 - v16;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAD0);
    swift_errorRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    v21 = os_log_type_enabled(v19, v20);
    v43[1] = a7;
    v44 = a6;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v46);
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s Mark as not reachable after failed CRK repair resulted in error %@. Ending preflight.", v22, 0x16u);
      sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v24);
    }

    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = a3;
    v27[5] = a1;
    v27[6] = a2;
    swift_errorRetain();
    swift_errorRetain();
    v28 = a3;

    sub_1000BCD5C(0, 0, v17, &unk_10033FBE8, v27);

    ObjectType = swift_getObjectType();
    _convertErrorToNSError(_:)();
    v30 = (*(a5 + 32))(v46, ObjectType, a5);
    v32 = v31;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v30(v46, 0);
    sub_10024ADEC(0);
    v44(a1);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAAD0);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = a6;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v46);
      _os_log_impl(&_mh_execute_header, v35, v36, "%s Successfully marked custodian as not reachable after failed CRK repair. Stopping preflight.", v38, 0xCu);
      sub_10000839C(v39);

      a6 = v37;
    }

    v40 = type metadata accessor for TaskPriority();
    (*(*(v40 - 8) + 56))(v17, 1, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = a3;
    v41[5] = a8;
    v41[6] = a2;
    v42 = a3;

    swift_errorRetain();
    sub_1000BCD5C(0, 0, v17, &unk_10033FBE0, v41);

    sub_10024ADEC(0);
    return (a6)(a8);
  }
}

uint64_t sub_1000B2048(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, uint64_t), uint64_t a8)
{
  v51 = a8;
  v52 = a7;
  v49 = a5;
  v50 = a6;
  v53 = a1;
  v11 = type metadata accessor for CustodianshipRecords(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAD0);

  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v47 = a4;
    v48 = v11;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v54[0] = v22;
    *v20 = 136315650;
    *(v20 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v54);
    *(v20 + 12) = 1024;
    *(v20 + 14) = v53 & 1;
    *(v20 + 18) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v23;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    *(v20 + 20) = v23;
    *v21 = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s CRK exists on OT? %{BOOL}d error: %@", v20, 0x1Cu);
    sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v22);

    a4 = v47;
    if (!a2)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (!a2)
    {
LABEL_15:
      sub_1000BCC60(a4, v14, type metadata accessor for CustodianshipRecords);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v54[0] = swift_slowAlloc();
        *v40 = 136315650;
        *(v40 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v54);
        *(v40 + 12) = 2080;
        type metadata accessor for CustodianRecord(0);
        type metadata accessor for UUID();
        sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        sub_1000BCCC8(v14, type metadata accessor for CustodianshipRecords);
        v44 = sub_10021145C(v41, v43, v54);

        *(v40 + 14) = v44;
        *(v40 + 22) = 1024;
        *(v40 + 24) = v53 & 1;
        _os_log_impl(&_mh_execute_header, v38, v39, "%s - custodian %s check recovery key exists: %{BOOL}d", v40, 0x1Cu);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000BCCC8(v14, type metadata accessor for CustodianshipRecords);
      }

      return v52(v53 & 1, a2);
    }
  }

  sub_1000BCC60(a4, v16, type metadata accessor for CustodianshipRecords);

  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v27 = 136315906;
    *(v27 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v54);
    *(v27 + 12) = 2080;
    type metadata accessor for CustodianHealthRecord(0);
    type metadata accessor for UUID();
    sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    sub_1000BCCC8(v16, type metadata accessor for CustodianshipRecords);
    v32 = sub_10021145C(v29, v31, v54);

    *(v27 + 14) = v32;
    *(v27 + 22) = 2112;
    v33 = _convertErrorToNSError(_:)();
    *(v27 + 24) = v33;
    *v28 = v33;
    *(v27 + 32) = 1024;
    *(v27 + 34) = v53 & 1;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s - Check custodian recovery failed for custodian %s with error: %@ exists: %{BOOL}d", v27, 0x26u);
    sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {

    sub_1000BCCC8(v16, type metadata accessor for CustodianshipRecords);
  }

  ObjectType = swift_getObjectType();
  _convertErrorToNSError(_:)();
  v35 = (*(v50 + 32))(v54, ObjectType);
  v37 = v36;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v35(v54, 0);

  return v52(v53 & 1, a2);
}

uint64_t sub_1000B27A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for CustodianshipRecords(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAD0);
    sub_1000BCC60(a3, v15, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = a5;
      v37 = v21;
      *v19 = 136315650;
      *(v19 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v37);
      *(v19 + 12) = 2080;
      type metadata accessor for CustodianRecord(0);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_1000BCCC8(v15, type metadata accessor for CustodianshipRecords);
      v25 = sub_10021145C(v22, v24, &v37);

      *(v19 + 14) = v25;
      *(v19 + 22) = 2112;
      v26 = _convertErrorToNSError(_:)();
      *(v19 + 24) = v26;
      *v20 = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s - error repairing recovery keys for %s: %@.", v19, 0x20u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v15, type metadata accessor for CustodianshipRecords);
    }

    swift_errorRetain();
    a4(a1);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAD0);
    sub_1000BCC60(a3, v13, type metadata accessor for CustodianshipRecords);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v37);
      *(v30 + 12) = 2080;
      type metadata accessor for CustodianRecord(0);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_1000BCCC8(v13, type metadata accessor for CustodianshipRecords);
      v34 = sub_10021145C(v31, v33, &v37);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s - recovery key repair was successful for %s.", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v13, type metadata accessor for CustodianshipRecords);
    }

    return (a4)(0);
  }
}

uint64_t sub_1000B2D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v38 = a3;
  v6 = type metadata accessor for CustodianRecord(0);
  v34 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v35 = v7;
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CustodianshipRecords(0);
  __chkstk_darwin(v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAD0);
  v39 = a1;
  sub_1000BCC60(a1, v14, type metadata accessor for CustodianshipRecords);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40[0] = v33;
    *v18 = 136315394;
    *(v18 + 4) = sub_10021145C(*(v3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v40);
    *(v18 + 12) = 2080;
    type metadata accessor for CustodianHealthRecord(0);
    type metadata accessor for UUID();
    sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_1000BCCC8(v14, type metadata accessor for CustodianshipRecords);
    v22 = sub_10021145C(v19, v21, v40);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s - marking custodian %s as Not reachable.", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000BCCC8(v14, type metadata accessor for CustodianshipRecords);
  }

  (*(v9 + 16))(v11, v4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__storageController, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  v23 = sub_1000080F8(v40, v40[3]);
  v24 = v39;
  v25 = v36;
  sub_1000BCC60(v39, v36, type metadata accessor for CustodianRecord);
  v26 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v27 = (v35 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v4;
  sub_1000B6748(v25, v28 + v26, type metadata accessor for CustodianRecord);
  *(v28 + v27) = 3;
  v29 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = v38;
  *v29 = v37;
  v29[1] = v30;
  v31 = *v23;

  sub_10030C118(v24, 0, sub_1000B6368, v28, v31, 3);

  return sub_10000839C(v40);
}

uint64_t sub_1000B3234(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = type metadata accessor for CustodianshipRecords(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  if (a1)
  {
    v38 = a5;
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAD0);
    sub_1000BCC60(a3, v15, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v37 = a4;
      v20 = v19;
      v21 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v20 = 136315650;
      *(v20 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v39);
      *(v20 + 12) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_1000BCCC8(v15, type metadata accessor for CustodianshipRecords);
      v25 = sub_10021145C(v22, v24, &v39);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      v26 = _convertErrorToNSError(_:)();
      *(v20 + 24) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s - failed to mark custodian %s as accepted. Error: %@", v20, 0x20u);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      a4 = v37;
    }

    else
    {

      sub_1000BCCC8(v15, type metadata accessor for CustodianshipRecords);
    }

    swift_errorRetain();
    a4(a1);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAD0);
    sub_1000BCC60(a3, v13, type metadata accessor for CustodianshipRecords);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v39);
      *(v30 + 12) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_1000BCCC8(v13, type metadata accessor for CustodianshipRecords);
      v34 = sub_10021145C(v31, v33, &v39);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s - successfully marked custodian %s as accepted.", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v13, type metadata accessor for CustodianshipRecords);
    }

    return (a4)(0);
  }
}

uint64_t sub_1000B37DC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v136 = a2;
  v5 = type metadata accessor for Date.ISO8601FormatStyle();
  v124 = *(v5 - 8);
  v125 = v5;
  __chkstk_darwin(v5);
  v123 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v140 = *(v7 - 8);
  __chkstk_darwin(v7);
  v122 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v121 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v13 = __chkstk_darwin(v12 - 8);
  v138 = (&v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v16 = &v117 - v15;
  v17 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v18 = __chkstk_darwin(v17 - 8);
  v134 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v117 - v20;
  v22 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v22);
  v24 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BCC60(a1, v24, type metadata accessor for CustodianRecord);
  v25 = *(v10 + 56);
  v139 = v21;
  v25(v21, 1, 1, v9);
  v26 = *(v140 + 56);
  v132 = v16;
  v133 = v7;
  v26(v16, 1, 1, v7);
  v27 = (a3 + v22[7]);
  *v27 = 0;
  v27[1] = 0;
  v126 = v27;
  v28 = (a3 + v22[8]);
  *v28 = 0;
  v28[1] = 0;
  v127 = v28;
  v29 = (a3 + v22[13]);
  *v29 = 0;
  v29[1] = 0;
  v129 = v29;
  v30 = (a3 + v22[14]);
  *v30 = 0;
  v30[1] = 0;
  v130 = v30;
  v31 = a3 + v22[15];
  *v31 = 0;
  v131 = v31;
  *(v31 + 8) = 1;
  v128 = v22[16];
  v120 = v10 + 56;
  v119 = v25;
  v25((a3 + v128), 1, 1, v9);
  v137 = v10;
  v32 = *(v10 + 16);
  v32(a3, v24, v9);
  v33 = v22[5];
  v135 = v9;
  v32(a3 + v33, &v24[v33], v9);
  v34 = v22[11];
  v35 = *&v24[v34];
  v36 = *&v24[v34 + 8];
  v37 = (a3 + v34);
  *v37 = v35;
  v37[1] = v36;
  v38 = v22[6];
  v39 = *&v24[v38];
  v40 = *&v24[v38 + 8];
  v41 = (a3 + v38);
  *v41 = v39;
  v41[1] = v40;
  *(a3 + v22[9]) = v136;
  v42 = v22[10];
  v44 = *&v24[v42];
  v43 = *&v24[v42 + 8];
  v45 = (a3 + v42);
  *v45 = v44;
  v45[1] = v43;
  v46 = v22[12];
  v136 = v24;
  *(a3 + v46) = v24[v46];
  type metadata accessor for ContactsHelper(0);
  swift_allocObject();

  sub_100015D6C(v35, v36);
  sub_100052704(v44, v43);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v47 = v141;
  v48 = String._bridgeToObjectiveC()();
  v49 = [v47 contactForHandle:v48];

  swift_unknownObjectRelease();
  if (!v49)
  {

    sub_1000EF4CC();
    v53 = 0;
    v55 = v133;
LABEL_18:
    v56 = v135;
    v58 = v136;
    goto LABEL_22;
  }

  v50 = objc_allocWithZone(AALocalContactInfo);
  v51 = v49;
  v52 = String._bridgeToObjectiveC()();
  v53 = [v50 initWithHandle:v52 contact:v51];

  v54 = sub_1000EF4CC();
  v55 = v133;
  v56 = v135;
  if ((v54 & 1) == 0)
  {
    v58 = v136;
    goto LABEL_22;
  }

  v58 = v136;
  v57 = v137;
  v59 = v138;
  if (!v53)
  {
LABEL_24:
    v81 = (v58 + v22[7]);
    v82 = *v81;
    v83 = v81[1];
    v84 = v126;
    *v126 = v82;
    v84[1] = v83;
    v85 = (v58 + v22[8]);
    v87 = *v85;
    v86 = v85[1];
    v88 = v127;
    *v127 = v87;
    v88[1] = v86;

    v78 = v134;
    goto LABEL_25;
  }

  v53 = v53;
  v60 = [v53 firstName];
  if (!v60)
  {

    goto LABEL_24;
  }

  v61 = v60;
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  v65 = sub_1002576F0(v62, v64);
  v67 = v66;

  if (!v67)
  {
LABEL_22:
    v59 = v138;
    goto LABEL_23;
  }

  v53 = v53;
  v68 = [v53 lastName];
  if (!v68)
  {

    goto LABEL_22;
  }

  v69 = v68;
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;

  v73 = sub_1002576F0(v70, v72);
  v75 = v74;

  if (!v75)
  {

    goto LABEL_18;
  }

  v118 = v73;
  v56 = v135;
  v76 = &v136[v22[7]];
  v77 = *(v76 + 1);
  v59 = v138;
  v78 = v134;
  if (v77 && (*v76 == v65 && v77 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v79 = &v136[v22[8]], (v80 = *(v79 + 1)) != 0) && (*v79 == v118 && v80 == v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v58 = v136;
LABEL_23:
    v57 = v137;
    goto LABEL_24;
  }

  v116 = v126;
  v115 = v127;
  *v126 = v65;
  v116[1] = v67;
  *v115 = v118;
  v115[1] = v75;
  v58 = v136;
  v57 = v137;
LABEL_25:
  sub_100012D04(v139, v78, &qword_1003D8B60, &unk_10033F210);
  if ((*(v57 + 48))(v78, 1, v56) == 1)
  {
    sub_100008D3C(v78, &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v58 + v22[16], a3 + v128);
  }

  else
  {
    v89 = *(v57 + 32);
    v90 = v121;
    v89(v121, v78, v56);
    v138 = v22;
    v91 = v58;
    v92 = v59;
    v93 = v53;
    v94 = v55;
    v95 = v128;
    sub_100008D3C(a3 + v128, &qword_1003D8B60, &unk_10033F210);
    v89((a3 + v95), v90, v56);
    v96 = (a3 + v95);
    v55 = v94;
    v53 = v93;
    v59 = v92;
    v58 = v91;
    v22 = v138;
    v119(v96, 0, 1, v56);
  }

  v97 = (v58 + v22[13]);
  v98 = *v97;
  v99 = v97[1];
  v100 = v129;
  *v129 = v98;
  v100[1] = v99;
  v101 = v132;
  sub_100012D04(v132, v59, &qword_1003DA110, &qword_10033F230);
  v102 = v140;
  if ((*(v140 + 48))(v59, 1, v55) == 1)
  {

    sub_100008D3C(v101, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v139, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v59, &qword_1003DA110, &qword_10033F230);
    v103 = (v58 + v22[14]);
    v104 = *v103;
    v105 = v103[1];
  }

  else
  {
    v106 = v122;
    (*(v102 + 32))(v122, v59, v55);

    v107 = v123;
    sub_100195ACC(v123);
    v104 = Date.ISO8601Format(_:)();
    v105 = v108;

    (*(v124 + 8))(v107, v125);
    (*(v102 + 8))(v106, v55);
    sub_100008D3C(v101, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v139, &qword_1003D8B60, &unk_10033F210);
  }

  v109 = v130;
  *v130 = v104;
  v109[1] = v105;
  v110 = v58 + v22[15];
  v111 = *v110;
  v112 = *(v110 + 8);
  result = sub_1000BCCC8(v58, type metadata accessor for CustodianRecord);
  v114 = v131;
  *v131 = v111;
  *(v114 + 8) = v112;
  return result;
}

uint64_t sub_1000B4284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33[1] = a6;
  v34 = a5;
  v10 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v13);
  v15 = (v33 - v14);
  sub_100012D04(a1, v33 - v14, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAD0);

    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v20 = 136315650;
      *(v20 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v35);
      *(v20 + 12) = 2048;
      *(v20 + 14) = a4;
      *(v20 + 22) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v20 + 24) = v23;
      *v21 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - error marking custodian record with status %ld: %@", v20, 0x20u);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v22);
    }

    swift_errorRetain();
    v34(v16);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAD0);
    sub_1000BCC60(a3, v12, type metadata accessor for CustodianRecord);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v28 = 136315650;
      *(v28 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v35);
      *(v28 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_1000BCCC8(v12, type metadata accessor for CustodianRecord);
      v32 = sub_10021145C(v29, v31, &v35);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2048;
      *(v28 + 24) = a4;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s - custodian %s has been updated with status %ld.", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v12, type metadata accessor for CustodianRecord);
    }

    [objc_opt_self() postRecoveryContactChangedNotification];
    v34(0);
    return sub_100008D3C(v15, &unk_1003DA200, &unk_10033FA80);
  }
}

id sub_1000B47B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v7 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33[-1] - v9;
  v11 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33[-1] - v13;
  (*(v12 + 16))(&v33[-1] - v13, v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v14, v11);
  v15 = sub_1000080F8(v33, v33[3]);
  v16 = [*(*v15 + 16) aa_primaryAppleAccount];
  if (!v16 || (v17 = v16, v18 = [v16 aa_altDSID], v17, !v18))
  {
    sub_10000839C(v33);
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAD0);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Account is nil. Not reporting Preflight Event.", v30, 2u);
    }

    v24 = 0;
    goto LABEL_13;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000839C(v33);
  (*(v8 + 16))(v10, v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsEventFactory, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  v19 = kAACustodianPreflightEvent;
  v20 = objc_opt_self();
  v21 = v19;

  v22 = String._bridgeToObjectiveC()();

  v23 = String._bridgeToObjectiveC()();

  v24 = [v20 analyticsEventWithName:v21 altDSID:v22 flowID:v23];

  sub_10000839C(v33);
  if (v24)
  {
    v25 = v24;
    if (a4)
    {
      v26 = String._bridgeToObjectiveC()();
    }

    else
    {
      v26 = 0;
    }

    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v28 = NSString.init(stringLiteral:)();
    [v24 setObject:v26 forKeyedSubscript:v28];

    swift_unknownObjectRelease();
LABEL_13:
  }

  return v24;
}

uint64_t sub_1000B4BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000B4D30, 0, 0);
}

uint64_t sub_1000B4D30()
{
  v1 = v0[8];
  if (v1)
  {
    if (v0[9])
    {
      v2 = v1;
      v3 = _convertErrorToNSError(_:)();
    }

    else
    {
      v6 = v1;
      v3 = 0;
    }

    [v1 updateTaskResultWithError:v3];

    v7 = sub_1001C1778();
    if (v7)
    {
      v8 = v7;
      type metadata accessor for CustodianPreflightHealthCheck(0);
      v9 = sub_1000B6014();
      [v9 securityLevelForAccount:v8];
    }

    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    v13 = v0[10];
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v1 setObject:isa forKeyedSubscript:kAAAnalyticsSecurityLevel];

    (*(v11 + 16))(v10, v13 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__cdpController, v12);
    Dependency.wrappedValue.getter();
    (*(v11 + 8))(v10, v12);
    v15 = [objc_allocWithZone(ACAccountStore) init];
    v16 = [v15 aa_primaryAppleAccount];

    if (v16)
    {
      v17 = [v16 aa_personID];

      if (v17)
      {
        [objc_opt_self() isICDPEnabledForDSID:v17];
      }
    }

    v18 = v0[8];
    v19 = Bool._bridgeToObjectiveC()().super.super.isa;
    sub_10000839C(v0 + 2);
    [v1 setObject:v19 forKeyedSubscript:kAAAnalyticsCdpStatus];

    v20 = v1;
    sub_1001BE1F4(v18);
    v21 = swift_task_alloc();
    v0[17] = v21;
    *v21 = v0;
    v21[1] = sub_1000B503C;
    v22 = v0[8];

    return sub_1001BED5C(v22);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000B503C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 144) = v3;
  *v3 = v2;
  v3[1] = sub_1000B51AC;
  v4 = *(v1 + 64);

  return sub_1001C0034(v4);
}

uint64_t sub_1000B51AC()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_1000B52C0, 0, 0);
}

uint64_t sub_1000B52C0()
{
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAD0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Reporting Preflight Event %@", v7, 0xCu);
    sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
  }

  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 64);

  (*(v11 + 16))(v10, v13 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsRTCReporter, v12);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v10, v12);
  [*(v0 + 56) sendEvent:v14];
  swift_unknownObjectRelease();
  v15 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 64);
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v19;
    *v21 = v19;
    v22 = v19;
    _os_log_impl(&_mh_execute_header, v16, v17, "Reported Preflight Event successfully %@", v20, 0xCu);
    sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
  }

  else
  {

    v16 = v19;
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1000B55B4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__custodianStorage;
  v2 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__securityController;
  v4 = sub_100005814(&qword_1003DA570, qword_10033F508);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsEventFactory;
  v6 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsRTCReporter;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__ttrRequester;
  v10 = sub_100005814(&unk_1003DBB90, &qword_10033FC38);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__urlBagProvider;
  v12 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__storageController;
  v14 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__keyRepair;
  v16 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore;
  v18 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__followUpController;
  v20 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__akAccountManager;
  v22 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__cdpController;
  v24 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);

  return v0;
}

uint64_t sub_1000B5998()
{
  sub_1000B55B4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianPreflightHealthCheck(uint64_t a1)
{
  result = qword_1003DB6D0;
  if (!qword_1003DB6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B5A44(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DB260, &unk_1003D9860, &qword_10033F440);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, &unk_1003DB6E0, &qword_1003DF650, &unk_1003480B0);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, &qword_1003DB6F0, &qword_1003D7FD0, &unk_10033FB30);
            if (v6 <= 0x3F)
            {
              sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
              if (v7 <= 0x3F)
              {
                sub_10000DAB8(319, &unk_1003DB240, &qword_1003D9A60, &qword_10033F190);
                if (v8 <= 0x3F)
                {
                  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
                  if (v9 <= 0x3F)
                  {
                    sub_10000DAB8(319, &qword_1003DB700, &unk_1003DACE0, &unk_10033F920);
                    if (v10 <= 0x3F)
                    {
                      sub_10000DA14(319);
                      if (v11 <= 0x3F)
                      {
                        sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
                        if (v12 <= 0x3F)
                        {
                          swift_updateClassMetadata2();
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

uint64_t sub_1000B5E9C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName);

  return v1;
}

uint64_t sub_1000B5F14(void x0_0, void x1_0, uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = sub_100005814(a1, a2);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, *v4 + *a3, v6);
  Dependency.wrappedValue.getter();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000B6014()
{
  v1 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - v3;
  (*(v2 + 16))(v6 - v3, *v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__akAccountManager, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v6[1];
}

void sub_1000B613C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v12 = a3(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - v13;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAA88);
  sub_1000BCC60(v6, v14, a4);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_10021145C(a1, a2, &v24);
    *(v18 + 12) = 2080;
    v19 = a6();
    v21 = v20;
    sub_1000BCCC8(v14, a5);
    v22 = sub_10021145C(v19, v21, &v24);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000BCCC8(v14, a5);
  }
}

uint64_t sub_1000B636C()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v27 = *(*(v1 - 8) + 80);
  v25 = *(*(v1 - 8) + 64);

  v26 = (v27 + 24) & ~v27;
  v2 = v0 + v26;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v26, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v26 + v6[5], v3);

  v7 = (v0 + v26 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v24 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v24 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  v22 = (((((v25 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000B6748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B67B0(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000B0100(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t *sub_1000B6894(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1000B69F4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1000B6ADC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1000B69F4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 56) + v11) & 1) == 0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1000B6B54(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1000B6B54(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000B6ADC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1000B69F4(result, a2, a3);

    return v6;
  }

  return result;
}

Swift::Int sub_1000B6B54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100005814(&unk_1003DBB70, &unk_100349970);
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
  v31 = v4;
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
    v32 = *(v17 + v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
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

uint64_t sub_1000B6D90(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1002FAEE0(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1000B6E00(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v116 = *(v12 - 8);
  v117 = v12;
  __chkstk_darwin(v12);
  v115 = &v100 - v13;
  v14 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v100 - v16;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v114 = a5;
  v18[6] = a6;
  v19 = *(v15 + 16);
  v104 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__followUpController;
  v106 = v15 + 16;
  v105 = v19;
  v19(v17, a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__followUpController, v14);

  Dependency.wrappedValue.getter();
  v20 = *(v15 + 8);
  v108 = v17;
  v110 = v14;
  v109 = v15 + 8;
  v103 = v20;
  v20(v17, v14);
  v21 = v124;
  sub_1000080F8(v122, v123);
  v22 = *(v21 + 88);
  v107 = AAFollowUpIdentifierCustodianReview;
  v23 = v22();
  v118 = a3;
  if (!v23)
  {
    sub_10000839C(v122);
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    v36 = sub_100008D04(v35, qword_1003FAAD0);

    v119 = v36;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v114;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = v40;
      v43 = a6;
      v44 = swift_slowAlloc();
      v122[0] = v44;
      *v41 = 136315138;
      *(v41 + 4) = sub_10021145C(*(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v122);
      _os_log_impl(&_mh_execute_header, v37, v38, "%s - No pending custodian review follow up found", v41, 0xCu);
      sub_10000839C(v44);
      a6 = v43;
      v40 = v42;
    }

    v45 = v117;
    v46 = v118;
    v47 = v115;
    v48 = v116;
    (*(v116 + 16))(v115, a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore, v117);
    Dependency.wrappedValue.getter();
    (*(v48 + 8))(v47, v45);
    v49 = [*(*sub_1000080F8(v122 v123) + 16)];
    sub_10000839C(v122);
    if (v49)
    {
      sub_1000A9F40(v40, a6, 0, v46, a4);

      return;
    }

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v122[0] = v99;
      *v98 = 136315138;
      *(v98 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v122);
      _os_log_impl(&_mh_execute_header, v96, v97, "%s - not logged in to AppleAccount, unable to Preflight", v98, 0xCu);
      sub_10000839C(v99);
    }

    type metadata accessor for AACustodianError(0);
    v121[0] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000BC2E0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v95 = v122[0];
    v46(v122[0]);

    goto LABEL_42;
  }

  v24 = v23;
  v113 = a4;
  sub_10000839C(v122);
  if (qword_1003D7F50 != -1)
  {
    goto LABEL_44;
  }

LABEL_3:
  v25 = type metadata accessor for Logger();
  v26 = sub_100008D04(v25, qword_1003FAAD0);

  v27 = v24;

  v119 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  v30 = os_log_type_enabled(v28, v29);
  v111 = v18;
  v112 = a2;
  v102 = a6;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v122[0] = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_10021145C(*(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v122);
    *(v31 + 12) = 2080;
    sub_100005814(&qword_1003DBB88, &qword_10033FC30);
    v32 = Array.description.getter();
    v34 = sub_10021145C(v32, v33, v122);

    *(v31 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s - Pending custodian review follow up userInfo dictionaries: %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  v121[4] = &_swiftEmptySetSingleton;
  a2 = *(v24 + 16);
  if (a2)
  {
    v101 = a1;
    a1 = 0;
    v18 = (v24 + 32);
    a6 = &qword_1003D8430;
    while (1)
    {
      if (a1 >= *(v27 + 16))
      {
        __break(1u);
LABEL_44:
        swift_once();
        goto LABEL_3;
      }

      v51 = v18[a1];
      v52 = AAFollowUpTrustedContactIDs;
      v120 = AAFollowUpTrustedContactIDs;
      type metadata accessor for AAFollowUpUserInfo(0);
      sub_1000BC2E0(&qword_1003D8430, type metadata accessor for AAFollowUpUserInfo, &unk_10033DB14);

      v53 = v52;
      AnyHashable.init<A>(_:)();
      if (!*(v51 + 16))
      {
        break;
      }

      v54 = sub_10031B060(v122);
      if ((v55 & 1) == 0)
      {
        break;
      }

      sub_10000DB1C(*(v51 + 56) + 32 * v54, v121);
      sub_1000526B0(v122);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      if (!swift_dynamicCast())
      {
        goto LABEL_21;
      }

      v50 = v120;
      v27 = v24;
LABEL_14:
      ++a1;
      sub_1000B6D90(v50);

      if (a2 == a1)
      {
        a1 = v101;
        goto LABEL_23;
      }
    }

    sub_1000526B0(v122);
LABEL_21:
    v27 = v24;
    v50 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

LABEL_23:

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v122[0] = swift_slowAlloc();
    *v58 = 136315394;
    *(v58 + 4) = sub_10021145C(*(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v122);
    *(v58 + 12) = 2080;
    v59 = Set.description.getter();
    v61 = sub_10021145C(v59, v60, v122);

    *(v58 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v56, v57, "%s - Checking if pending custodian review follow up needs to be dismissed for custodians: %s", v58, 0x16u);
    swift_arrayDestroy();
  }

  v62 = v113;
  v63 = String._bridgeToObjectiveC()();
  v64 = AAPrefsDomain;
  if (AAPrefsDomain)
  {
    v65 = v63;

    v66 = CFPreferencesCopyAppValue(v65, v64);

    swift_unknownObjectRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v122[0] = v70;
      *v69 = 136315138;
      v121[0] = v66;
      swift_unknownObjectRetain();
      sub_100005814(&qword_1003DBB80, &qword_10033FC28);
      v71 = String.init<A>(describing:)();
      v73 = sub_10021145C(v71, v72, v122);

      *(v69 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v67, v68, "Should Dismiss Custodian Review CFU: %s", v69, 0xCu);
      sub_10000839C(v70);
    }

    v75 = v111;
    v74 = v112;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();
    v78 = os_log_type_enabled(v76, v77);
    if (v66)
    {
      if (v78)
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Not dismissing Custodian Review CFU", v79, 2u);
      }

      v80 = v115;
      v81 = v116;
      v82 = v117;
      (*(v116 + 16))(v115, v74 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore, v117);
      Dependency.wrappedValue.getter();
      (*(v81 + 8))(v80, v82);
      v83 = [*(*sub_1000080F8(v122 v123) + 16)];
      sub_10000839C(v122);
      if (v83)
      {
        sub_1000A9F40(v114, v102, 0, v118, v62);

        swift_unknownObjectRelease();

        return;
      }

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v122[0] = v94;
        *v93 = 136315138;
        *(v93 + 4) = sub_10021145C(*(v74 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v74 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v122);
        _os_log_impl(&_mh_execute_header, v91, v92, "%s - not logged in to AppleAccount, unable to Preflight", v93, 0xCu);
        sub_10000839C(v94);
      }

      type metadata accessor for AACustodianError(0);
      v121[0] = -7002;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000BC2E0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v95 = v122[0];
      v118(v122[0]);

      swift_unknownObjectRelease();
LABEL_42:
    }

    else
    {
      if (v78)
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Dismissing Custodian Review CFU", v84, 2u);
      }

      v85 = v108;
      v86 = v110;
      v105(v108, a1 + v104, v110);
      Dependency.wrappedValue.getter();
      v103(v85, v86);
      v87 = v123;
      v88 = v124;
      sub_1000080F8(v122, v123);
      v89 = swift_allocObject();
      *(v89 + 16) = sub_1000BCC48;
      *(v89 + 24) = v75;
      v90 = *(v88 + 32);

      v90(v107, sub_1000BCC58, v89, v87, v88);

      sub_10000839C(v122);
    }
  }

  else
  {

    __break(1u);
  }
}

BOOL sub_1000B7D84()
{
  v0 = [objc_allocWithZone(CDPWalrusStateController) init];
  v4 = 0;
  v1 = [v0 walrusStatus:&v4];
  if (v4)
  {
    swift_willThrow();

    return 0;
  }

  else
  {
    v3 = v1;

    return v3 == 1;
  }
}

void sub_1000B7E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a6;
  v49 = a7;
  v50 = a5;
  v45[1] = a2;
  v46 = a1;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v45 - v10;
  v12 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v45 - v14;
  v16 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v45 - v18;
  (*(v17 + 16))(v45 - v18, a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore, v16);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v19, v16);
  v20 = [*(*sub_1000080F8(v51 v51[3]) + 16)];
  if (!v20 || (v21 = v20, v22 = [v20 aa_altDSID], v21, !v22))
  {
    sub_10000839C(v51);
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAD0);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_10;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v51[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_10021145C(*(a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v51);
    v32 = "%s Account is nil. Not reporting Post Repair CFU Event.";
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000839C(v51);
  (*(v13 + 16))(v15, a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsEventFactory, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v15, v12);
  v23 = kAACustodianPostRepairCFUEvent;

  v24 = v23;
  v25 = String._bridgeToObjectiveC()();

  if (a3)
  {
    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  v33 = [objc_opt_self() analyticsEventWithName:v24 altDSID:v25 flowID:v26];

  sub_10000839C(v51);
  if (!v33)
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAAD0);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_10;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v51[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_10021145C(*(a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v51);
    v32 = "%s Event creation failed. Not reporting Post Repair CFU Event.";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v28, v29, v32, v30, 0xCu);
    sub_10000839C(v31);

LABEL_10:

    sub_10031F804(v48, v49);
    return;
  }

  if (*(v46 + 16))
  {
    swift_errorRetain();
    v34 = _convertErrorToNSError(_:)();
  }

  else
  {
    v34 = 0;
  }

  [v33 updateTaskResultWithError:v34];

  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100008D04(v36, qword_1003FAAD0);
  v37 = v33;

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v51[0] = v42;
    *v40 = 136315394;
    *(v40 + 4) = sub_10021145C(*(a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v51);
    *(v40 + 12) = 2112;
    *(v40 + 14) = v37;
    *v41 = v33;
    v43 = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "%s Reporting Post Repair CFU Event %@", v40, 0x16u);
    sub_100008D3C(v41, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v42);
  }

  v44 = v47;
  (*(v47 + 16))(v11, a4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsRTCReporter, v9);
  Dependency.wrappedValue.getter();
  (*(v44 + 8))(v11, v9);
  [v51[0] sendEvent:v37];
  swift_unknownObjectRelease();
  sub_10031F804(v48, v49);
}

uint64_t sub_1000B8600(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a3;
  v9 = type metadata accessor for UUID();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  v15 = type metadata accessor for CustodianshipRecords(0);
  v46 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v47 = v17;
  v48 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v43 - v18;
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAD0);
  v50 = a1;
  sub_1000BCC60(a1, v19, type metadata accessor for CustodianshipRecords);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v45 = a4;
    v24 = v23;
    v43 = swift_slowAlloc();
    v44 = a2;
    v54[0] = v43;
    *v24 = 136315394;
    *(v24 + 4) = sub_10021145C(*(a5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v54);
    *(v24 + 12) = 2080;
    v25 = sub_1000A92F8();
    v26 = v11;
    v27 = v14;
    v28 = a5;
    v29 = v12;
    v31 = v30;
    sub_1000BCCC8(v19, type metadata accessor for CustodianshipRecords);
    v32 = sub_10021145C(v25, v31, v54);
    v12 = v29;
    a5 = v28;
    v14 = v27;
    v11 = v26;

    *(v24 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s - Checking CRK presence on Octagon for %s", v24, 0x16u);
    swift_arrayDestroy();
    a2 = v44;

    a4 = v45;
  }

  else
  {

    sub_1000BCCC8(v19, type metadata accessor for CustodianshipRecords);
  }

  (*(v12 + 16))(v14, a5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__securityController, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v14, v11);
  sub_1000080F8(v54, v54[3]);
  v33 = v50;
  v34 = v51;
  sub_1000A8E58(v51);
  v35 = v48;
  sub_1000BCC60(v33, v48, type metadata accessor for CustodianshipRecords);
  v36 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v37 = (v47 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = a5;
  sub_1000B6748(v35, v38 + v36, type metadata accessor for CustodianshipRecords);
  v39 = (v38 + v37);
  *v39 = a2;
  v39[1] = &off_1003B0ED0;
  v40 = (v38 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v40 = v49;
  v40[1] = a4;

  v41 = a2;

  sub_100018104(v34, sub_1000B8EFC, v38);

  (*(v52 + 8))(v34, v53);
  return sub_10000839C(v54);
}

uint64_t sub_1000B8B44()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v26 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);

  v25 = (v26 + 24) & ~v26;
  v2 = v0 + v25;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v25, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v25 + v6[5], v3);

  v7 = (v0 + v25 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v23 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v23 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((((v24 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000B8EFC(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v8);
  v14 = *(v2 + v8 + 8);

  return sub_1000B2048(a1, a2, v9, v2 + v6, v11, v12, v13, v14);
}

uint64_t sub_1000B8FC0()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v27 = *(*(v1 - 8) + 80);
  v25 = *(*(v1 - 8) + 64);

  v26 = (v27 + 24) & ~v27;
  v2 = v0 + v26;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v26, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v26 + v6[5], v3);

  v7 = (v0 + v26 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v24 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v24 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  v22 = (((v25 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000B939C(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000B04FC(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + v7), *(v1 + v7 + 8), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1000B946C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v59 = a2;
  v5 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v57 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v54 = type metadata accessor for RecoveryKeys(0);
  __chkstk_darwin(v54);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CustodianshipRecords(0);
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  v12 = __chkstk_darwin(v10);
  v56 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v53 = type metadata accessor for CustodianRecord(0);
  v15 = (a1 + *(v53 + 40));
  v16 = v15[1];
  if (v16 >> 60 == 15 || (v17 = *v15, v18 = a1 + *(v10 + 20), v19 = (v18 + *(type metadata accessor for CustodianRecoveryInfoRecord(0) + 32)), v20 = v19[1], v20 >> 60 == 15))
  {
    type metadata accessor for AACustodianError(0);
    v60[5] = -7019;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000BC2E0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = v60[0];
    v59(7, v60[0]);
  }

  else
  {
    v48 = v5;
    v22 = *v19;
    v51 = v17;
    sub_100052704(v17, v16);
    v49 = v22;
    v50 = v20;
    sub_100052704(v22, v20);
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v52 = a3;
    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAD0);
    sub_1000BCC60(a1, v14, type metadata accessor for CustodianshipRecords);
    v24 = v58;

    v25 = v24;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v47 = v7;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_10021145C(*(v25 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v25 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v60);
      *(v29 + 12) = 2080;
      v46 = sub_1000A92F8();
      v31 = v30;
      sub_1000BCCC8(v14, type metadata accessor for CustodianshipRecords);
      v32 = sub_10021145C(v46, v31, v60);

      *(v29 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s - Starting to Preflight Custodian Recovery for %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v14, type metadata accessor for CustodianshipRecords);
    }

    v33 = v51;
    v34 = v48;
    sub_1000A8E58(v9 + *(v54 + 24));
    *v9 = v33;
    v9[1] = v16;
    v35 = v50;
    v9[2] = v49;
    v9[3] = v35;
    v36 = v57;
    v37 = v58;
    v38 = v47;
    (*(v57 + 16))(v47, v58 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__securityController, v34);
    Dependency.wrappedValue.getter();
    (*(v36 + 8))(v38, v34);
    sub_1000080F8(v60, v60[3]);
    v39 = *(v53 + 20);
    v40 = v56;
    sub_1000BCC60(a1, v56, type metadata accessor for CustodianshipRecords);
    v41 = (*(v55 + 80) + 24) & ~*(v55 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v37;
    sub_1000B6748(v40, v42 + v41, type metadata accessor for CustodianshipRecords);
    v43 = (v42 + ((v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
    v44 = v52;
    *v43 = v59;
    v43[1] = v44;

    sub_100019348(a1 + v39, v9, sub_1000BACA0, v42);

    sub_1000BCCC8(v9, type metadata accessor for RecoveryKeys);
    sub_10000839C(v60);
  }
}

uint64_t sub_1000B9A7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v8 = type metadata accessor for CustodianRecord(0);
  v9 = v8 - 8;
  v67 = *(v8 - 8);
  __chkstk_darwin(v8);
  v68 = v10;
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v65 = *(v12 - 8);
  v66 = v12;
  __chkstk_darwin(v12);
  v64 = v60 - v13;
  v14 = type metadata accessor for CustodianshipRecords(0);
  v15 = *(v14 - 8);
  v60[1] = v14;
  v61 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v62 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v60 - v19;
  __chkstk_darwin(v18);
  v22 = v60 - v21;
  v23 = swift_allocObject();
  v63 = a3;
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = *(v9 + 44);
  v69 = a1;
  v25 = *(a1 + v24);
  v26 = qword_1003D7F50;

  if (v25 == 3)
  {
    if (v26 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAD0);
    sub_1000BCC60(v69, v22, type metadata accessor for CustodianshipRecords);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v60[0] = v11;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v70);
      *(v31 + 12) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      type metadata accessor for UUID();
      v63 = v23;
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_1000BCCC8(v22, type metadata accessor for CustodianshipRecords);
      v35 = sub_10021145C(v32, v34, v70);
      v23 = v63;

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s - custodian %s was marked as unreachable, marking as accepted again.", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v22, type metadata accessor for CustodianshipRecords);
    }

    v44 = v69;
    v45 = v62;
    sub_1000BCC60(v69, v62, type metadata accessor for CustodianshipRecords);
    v46 = (*(v61 + 80) + 24) & ~*(v61 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = a2;
    sub_1000B6748(v45, v47 + v46, type metadata accessor for CustodianshipRecords);
    v48 = (v47 + ((v16 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v48 = sub_1000BAD6C;
    v48[1] = v23;
    v49 = v64;
    v50 = v65;
    v51 = v66;
    (*(v65 + 16))(v64, a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__storageController, v66);

    Dependency.wrappedValue.getter();
    (*(v50 + 8))(v49, v51);
    v52 = sub_1000080F8(v70, v70[3]);
    v53 = v60[0];
    sub_1000BCC60(v44, v60[0], type metadata accessor for CustodianRecord);
    v54 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v55 = (v68 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = a2;
    sub_1000B6748(v53, v56 + v54, type metadata accessor for CustodianRecord);
    *(v56 + v55) = 2;
    v57 = (v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v57 = sub_1000BAD9C;
    v57[1] = v47;
    v58 = *v52;

    sub_10030C118(v44, 0, sub_1000BCD58, v56, v58, 2);

    sub_10000839C(v70);
  }

  else
  {
    if (v26 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAAD0);
    sub_1000BCC60(v69, v20, type metadata accessor for CustodianshipRecords);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v39 = 136315394;
      *(v39 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v70);
      *(v39 + 12) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      sub_1000BCCC8(v20, type metadata accessor for CustodianshipRecords);
      v43 = sub_10021145C(v40, v42, v70);

      *(v39 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s - custodian %s status is not unreachable, bailing.", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v20, type metadata accessor for CustodianshipRecords);
    }

    v63(3, 0);
  }
}

uint64_t sub_1000BA330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CustodianshipRecords(0);
  v36 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v37 = v9;
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v14 = type metadata accessor for KeyRepairContext(0);
  v15 = (v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for CustodianRecord(0) + 20);
  v19 = type metadata accessor for UUID();
  v20 = *(*(v19 - 8) + 16);
  v38 = a1;
  v20(v17, a1 + v18, v19);
  v17[v15[7]] = 0;
  v17[v15[8]] = 1;
  v21 = &v17[v15[9]];
  *v21 = 0;
  *(v21 + 1) = 0;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAA88);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = a2;
    v27 = a3;
    v28 = v26;
    v40[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10021145C(*(v4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v40);
    _os_log_impl(&_mh_execute_header, v23, v24, "%s Starting repair keys", v25, 0xCu);
    sub_10000839C(v28);
    a3 = v27;
    a2 = v35;
  }

  (*(v11 + 16))(v13, v4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__keyRepair, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  sub_1000080F8(v40, v40[3]);
  v29 = v39;
  sub_1000BCC60(v38, v39, type metadata accessor for CustodianshipRecords);
  v30 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v31 = (v37 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v4;
  sub_1000B6748(v29, v32 + v30, type metadata accessor for CustodianshipRecords);
  v33 = (v32 + v31);
  *v33 = a2;
  v33[1] = a3;

  sub_100085FA8(v17, sub_1000BB4D4, v32);

  sub_1000BCCC8(v17, type metadata accessor for KeyRepairContext);
  return sub_10000839C(v40);
}

uint64_t sub_1000BA79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000EF88;

  return sub_1000B4BF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000BA864()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v26 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();

  v25 = (v26 + 72) & ~v26;
  v2 = v0 + v25;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v25, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v25 + v6[5], v3);

  v7 = (v0 + v25 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v23 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v23 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  return _swift_deallocObject(v0, v25 + v24);
}

uint64_t sub_1000BACB8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000BACF8(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = *(v1 + 32);
  }

  return (*(v1 + 16))(4, v2);
}

uint64_t sub_1000BAD34()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000BADB4()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000BAFB4(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1000B4284(a1, v6, v1 + v4, v7, v9, v10);
}

uint64_t sub_1000BB064(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000082A8;

  return sub_1000B4BF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000BB12C()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v25 = *(*(v1 - 8) + 80);
  v23 = *(*(v1 - 8) + 64);

  v26 = v0;
  v24 = (v25 + 24) & ~v25;
  v2 = v0 + v24;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v24, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v24 + v6[5], v3);

  v7 = (v0 + v24 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v1 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  return _swift_deallocObject(v26, ((v23 + v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000BB4EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a2(a1, v6, v2 + v5, v8, v9);
}

uint64_t sub_1000BB5A4()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v26 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();

  v25 = (v26 + 80) & ~v26;
  v2 = v0 + v25;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v25, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v25 + v6[5], v3);

  v7 = (v0 + v25 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v23 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v23 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  return _swift_deallocObject(v0, v25 + v24);
}

uint64_t sub_1000BB9D4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000BBA40()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v26 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);

  v25 = (v26 + 32) & ~v26;
  v2 = v0 + v25;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v25, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v25 + v6[5], v3);

  v7 = (v0 + v25 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v23 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v23 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((((v24 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000BBE00(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000B13A8(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000BBEC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000BBF14()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000BBF4C()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000BC164(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianRecord(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v8);
  v14 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000AAF44(a1, a2, v9, v2 + v6, v11, v12, v13, v14);
}

uint64_t sub_1000BC230()
{

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1000BC2C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BC2E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000BC328()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000BC3B0()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000BC5B8(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1000AB528(a1, v6, v1 + v4, v7, v9, v10);
}

uint64_t sub_1000BC668()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000BC858(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1000AD82C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000BC8D4()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000BCADC()
{
  v1 = *(type metadata accessor for CustodianRecord(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000AB7C0(v3, v4, v5, v0 + v2, v6);
}

uint64_t sub_1000BCB94()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000BCBF4(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000BCC00()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000BCC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BCCC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000BCD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000BF7F8(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008D3C(v11, &qword_1003DABF0, &qword_10033F8A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100008D3C(a3, &qword_1003DABF0, &qword_10033F8A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008D3C(a3, &qword_1003DABF0, &qword_10033F8A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000BD04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000BF7F8(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008D3C(v11, &qword_1003DABF0, &qword_10033F8A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100008D3C(a3, &qword_1003DABF0, &qword_10033F8A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008D3C(a3, &qword_1003DABF0, &qword_10033F8A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000BD334(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  a2(a1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    v18[5] = a5;
    v18[6] = a6;
    v18[7] = a7;
    v18[8] = a1;

    swift_errorRetain();
    sub_1000BCD5C(0, 0, v14, &unk_10033FCF0, v18);
  }

  return result;
}

uint64_t sub_1000BD4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_1000082A8;

  return sub_1000BD578(a5, a6, a7, a8);
}

uint64_t sub_1000BD578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_1000BD6B4, 0, 0);
}

uint64_t sub_1000BD6B4()
{
  v62 = v0;
  v1 = v0[24];
  type metadata accessor for CustodianDefaults();
  inited = swift_initStackObject();
  v0[35] = inited;
  v3 = sub_100071328(inited);
  v4 = sub_1000BE518(v1, v3);

  if (v4[2])
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v0[36] = v5;
    sub_100008D04(v5, qword_1003FAA88);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = v4[2];

      *(v8 + 4) = v9;

      _os_log_impl(&_mh_execute_header, v6, v7, "One or more CKRs state change to bad: %ld", v8, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v15 = v0[28];
    v16 = v15[5];
    v17 = v15[7];
    sub_1000080F8(v15 + 2, v16);
    (*(v17 + 88))(v16, v17);
    v18 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
    if (!v18 || (v19 = v18, v20 = [v18 aa_altDSID], v19, !v20))
    {
      sub_10000839C(v0 + 2);
      if (qword_1003D7F50 != -1)
      {
        swift_once();
      }

      sub_100008D04(v5, qword_1003FAAD0);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v61 = v35;
        *v34 = 136315138;
        v36 = v15[5];
        v37 = v15[7];
        sub_1000080F8(v15 + 2, v36);
        v38 = (*(v37 + 64))(v36, v37);
        v40 = sub_10021145C(v38, v39, &v61);

        *(v34 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v32, v33, "%s Account is nil. Not reporting Post Repair CFU Event.", v34, 0xCu);
        sub_10000839C(v35);

        goto LABEL_26;
      }

LABEL_25:

      goto LABEL_26;
    }

    v21 = v0[33];
    v22 = v0[34];
    v23 = v0[32];
    v24 = v0[28];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000839C(v0 + 2);
    (*(v21 + 16))(v22, v24 + OBJC_IVAR____TtC13appleaccountd37CustodianPreflightHealthCheckSequoiaB__analyticsEventFactory, v23);
    Dependency.wrappedValue.getter();
    (*(v21 + 8))(v22, v23);
    v25 = kAAAnalyticsEventCustodianPreflightCRKStateChangedFromGoodToBad;
    v26 = objc_opt_self();
    v27 = v25;

    v28 = String._bridgeToObjectiveC()();

    v29 = String._bridgeToObjectiveC()();

    v30 = [v26 analyticsEventWithName:v27 altDSID:v28 flowID:v29];
    v0[37] = v30;

    sub_10000839C(v0 + 7);
    if (v30)
    {
      if (v0[27])
      {
        swift_getErrorValue();
        sub_10025648C(v0[18], v0[19]);
        v31 = _convertErrorToNSError(_:)();
      }

      else
      {
        v31 = 0;
      }

      [v30 updateTaskResultWithError:v31];

      sub_1001C14E8();
      v44 = v43;
      v45 = v15[5];
      v46 = v15[7];
      sub_1000080F8(v15 + 2, v45);
      v47 = (*(v46 + 96))(v45, v46);
      if (v44)
      {

        v48 = String._bridgeToObjectiveC()();
        v49 = [v47 authKitAccountWithAltDSID:v48];

        swift_bridgeObjectRelease_n();
        if (!v49)
        {
          goto LABEL_34;
        }

        v50 = v15[5];
        v51 = v15[7];
        sub_1000080F8(v15 + 2, v50);
        v47 = (*(v51 + 96))(v50, v51);
        [v47 securityLevelForAccount:v49];
      }

LABEL_34:
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      [v30 setObject:isa forKeyedSubscript:kAAAnalyticsSecurityLevel];

      v53 = v15[5];
      v54 = v15[7];
      sub_1000080F8(v15 + 2, v53);
      (*(v54 + 80))(v53, v54);
      v55 = [objc_allocWithZone(ACAccountStore) init];
      v56 = [v55 aa_primaryAppleAccount];

      if (v56)
      {
        v57 = [v56 aa_personID];

        if (v57)
        {
          [objc_opt_self() isICDPEnabledForDSID:v57];
        }
      }

      v58 = Bool._bridgeToObjectiveC()().super.super.isa;
      sub_10000839C(v0 + 12);
      [v30 setObject:v58 forKeyedSubscript:kAAAnalyticsCdpStatus];

      v59 = v30;
      sub_1001BE4D0(v30);
      v60 = swift_task_alloc();
      v0[38] = v60;
      *v60 = v0;
      v60[1] = sub_1000BDFD8;

      return sub_1001BF268(v30);
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Telemetry event creation failed";
      goto LABEL_10;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA88);
  v11 = Logger.logObject.getter();
  LOBYTE(v12) = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v11, v12))
  {
    goto LABEL_24;
  }

  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = "CKRs state did not change from previous preflight run";
LABEL_10:
  _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);

LABEL_26:

  v41 = v0[1];

  return v41();
}

uint64_t sub_1000BDFD8()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 312) = v4;
  *v4 = v3;
  v4[1] = sub_1000BE148;

  return sub_1001C0580(v2);
}

uint64_t sub_1000BE148()
{
  v1 = *(*v0 + 296);

  return _swift_task_switch(sub_1000BE25C, 0, 0);
}

uint64_t sub_1000BE25C()
{
  v23 = v0;
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 296);
  sub_100008D04(*(v0 + 288), qword_1003FAAD0);
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 296);
    v6 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v7 = 136315394;
    v10 = v6[5];
    v11 = v6[7];
    sub_1000080F8(v6 + 2, v10);
    v12 = (*(v11 + 64))(v10, v11);
    v14 = sub_10021145C(v12, v13, &v22);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v5;
    *v8 = v5;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Reporting Post Repair CFU Event %@", v7, 0x16u);
    sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v9);
  }

  v16 = *(v0 + 296);
  v18 = *(v0 + 240);
  v17 = *(v0 + 248);
  v19 = *(v0 + 232);
  (*(v18 + 16))(v17, *(v0 + 224) + OBJC_IVAR____TtC13appleaccountd37CustodianPreflightHealthCheckSequoiaB__analyticsRTCReporter, v19);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v17, v19);
  [*(v0 + 176) sendEvent:v16];
  swift_unknownObjectRelease();

  v20 = *(v0 + 8);

  return v20();
}

void *sub_1000BE518(void *a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1003D7F50 != -1)
  {
LABEL_57:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAD0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v123 = v10;
    *v9 = 136315138;
    v11 = v3[5];
    v12 = v3[7];
    sub_1000080F8(v3 + 2, v11);
    v13 = (*(v12 + 64))(v11, v12);
    v15 = sub_10021145C(v13, v14, &v123);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s listOfCRKStateChangedToBad was called.", v9, 0xCu);
    sub_10000839C(v10);
  }

  v124 = &_swiftEmptySetSingleton;
  v16 = a1;
  v18 = a1[8];
  a1 += 8;
  v17 = v18;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v121 = v16;

  v23 = 0;
  v122 = v3;
  v120 = a2;
  while (v21)
  {
    v24 = v23;
LABEL_13:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v24 << 6);
    v27 = (v121[6] + 16 * v26);
    v28 = v27[1];
    v116 = *v27;
    v118 = *(v121[7] + v26);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v111 = v28;
      v31 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v31 = 136315650;
      v32 = v122[5];
      v33 = v122[7];
      sub_1000080F8(v122 + 2, v32);
      v34 = *(v33 + 64);
      v35 = v33;
      a2 = v120;
      v36 = v34(v32, v35);
      v38 = sub_10021145C(v36, v37, &v123);

      *(v31 + 4) = v38;
      v3 = v122;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_10021145C(v116, v111, &v123);
      *(v31 + 22) = 1024;
      *(v31 + 24) = v118;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s Past Key: %s Bool: %{BOOL}d", v31, 0x1Cu);
      swift_arrayDestroy();
    }

    v23 = v24;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = a1[v24];
    ++v23;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  a1 = (a2 + 64);
  v39 = 1 << *(a2 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(a2 + 64);
  v42 = (v39 + 63) >> 6;

  v43 = 0;
  while (v41)
  {
    v44 = v43;
LABEL_24:
    v45 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v46 = v45 | (v44 << 6);
    v47 = (*(a2 + 48) + 16 * v46);
    v48 = v47[1];
    v117 = *v47;
    v119 = *(*(a2 + 56) + v46);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v112 = v48;
      v51 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v51 = 136315650;
      v52 = v122[5];
      v53 = v122[7];
      sub_1000080F8(v122 + 2, v52);
      v54 = *(v53 + 64);
      v55 = v53;
      a2 = v120;
      v56 = v54(v52, v55);
      v58 = sub_10021145C(v56, v57, &v123);

      *(v51 + 4) = v58;
      v3 = v122;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_10021145C(v117, v112, &v123);
      *(v51 + 22) = 1024;
      *(v51 + 24) = v119;
      _os_log_impl(&_mh_execute_header, v49, v50, "%s Current Key: %s Bool: %{BOOL}d", v51, 0x1Cu);
      swift_arrayDestroy();
    }

    v43 = v44;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_55;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = a1[v44];
    ++v43;
    if (v41)
    {
      goto LABEL_24;
    }
  }

  a1 = v121;

  v60 = sub_1002DF678(v59);
  v61 = sub_1000CE940(a2, v60);
  v62 = v61;
  v63 = 0;
  v64 = v61 + 56;
  v65 = 1 << *(v61 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  a2 = v66 & *(v61 + 56);
  v3 = ((v65 + 63) >> 6);
  while (a2)
  {
    v67 = a2;
LABEL_36:
    a2 = (v67 - 1) & v67;
    if (a1[2])
    {
      v69 = (*(v62 + 48) + ((v63 << 10) | (16 * __clz(__rbit64(v67)))));
      v70 = *v69;
      v71 = v69[1];

      v72 = sub_1003084DC(v70, v71);
      if ((v73 & 1) != 0 && *(v120 + 16))
      {
        v74 = *(a1[7] + v72);
        v75 = sub_1003084DC(v70, v71);
        if (v76)
        {
          v114 = v62;
          v115 = *(*(v120 + 56) + v75);

          v77 = Logger.logObject.getter();
          v78 = v74;
          v79 = static os_log_type_t.debug.getter();

          v113 = v79;
          v80 = v79;
          v81 = v78;
          v82 = v77;
          v83 = os_log_type_enabled(v77, v80);
          if (!v81 || (v115 & 1) != 0)
          {
            v62 = v114;
            if (v83)
            {
              v90 = swift_slowAlloc();
              v123 = swift_slowAlloc();
              *v90 = 136315906;
              v107 = v122[7];
              v108 = v122[5];
              sub_1000080F8(v122 + 2, v108);
              log = v82;
              v91 = (*(v107 + 64))(v108);
              v109 = sub_10021145C(v91, v92, &v123);

              *(v90 + 4) = v109;
              *(v90 + 12) = 2080;
              v93 = sub_10021145C(v70, v71, &v123);

              *(v90 + 14) = v93;
              *(v90 + 22) = 1024;
              *(v90 + 24) = v81;
              *(v90 + 28) = 1024;
              *(v90 + 30) = v115;
              v82 = log;
              _os_log_impl(&_mh_execute_header, log, v113, "%s Preflight result for uuid: %s, previous: %{BOOL}d, current: %{BOOL}d", v90, 0x22u);
              swift_arrayDestroy();
            }

            else
            {
            }

            a1 = v121;
          }

          else
          {
            if (v83)
            {
              v84 = swift_slowAlloc();
              v123 = swift_slowAlloc();
              *v84 = 136315394;
              v85 = v122[5];
              v86 = v122[7];
              sub_1000080F8(v122 + 2, v85);
              v87 = (*(v86 + 64))(v85, v86);
              v89 = sub_10021145C(v87, v88, &v123);

              *(v84 + 4) = v89;
              *(v84 + 12) = 2080;
              *(v84 + 14) = sub_10021145C(v70, v71, &v123);
              _os_log_impl(&_mh_execute_header, v82, v113, "%s Preflight result for uuid: %s, transitioning from good to bad", v84, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            a1 = v121;
            v62 = v114;
            sub_1002FAEE0(&v123, v70, v71);
          }
        }

        else
        {

          a1 = v121;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v68 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_56;
    }

    if (v68 >= v3)
    {
      break;
    }

    v67 = *(v64 + 8 * v68);
    ++v63;
    if (v67)
    {
      v63 = v68;
      goto LABEL_36;
    }
  }

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v96 = 136315394;
    v97 = v122[5];
    v98 = v122[7];
    sub_1000080F8(v122 + 2, v97);
    v99 = (*(v98 + 64))(v97, v98);
    v101 = sub_10021145C(v99, v100, &v123);

    *(v96 + 4) = v101;
    *(v96 + 12) = 2080;
    swift_beginAccess();

    v102 = Set.description.getter();
    v104 = v103;

    v105 = sub_10021145C(v102, v104, &v123);

    *(v96 + 14) = v105;
    _os_log_impl(&_mh_execute_header, v94, v95, "%s listOfCRKStateChangedToBad: Returning %s.", v96, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  return v124;
}

uint64_t sub_1000BF0C8()
{
  sub_10000839C((v0 + 16));
  v1 = OBJC_IVAR____TtC13appleaccountd37CustodianPreflightHealthCheckSequoiaB__analyticsEventFactory;
  v2 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd37CustodianPreflightHealthCheckSequoiaB__analyticsRTCReporter;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianPreflightHealthCheckSequoiaB(uint64_t a1)
{
  result = qword_1003DBBD8;
  if (!qword_1003DBBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BF218(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000BF31C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 56);
  sub_1000080F8((*v0 + 16), v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_1000BF378()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 56);
  sub_1000080F8((*v0 + 16), v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t sub_1000BF3DC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 56);
  sub_1000080F8((*v0 + 16), v1);
  return (*(v2 + 88))(v1, v2);
}

uint64_t sub_1000BF440()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 56);
  sub_1000080F8((*v0 + 16), v1);
  return (*(v2 + 96))(v1, v2);
}

uint64_t sub_1000BF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for CustodianDefaults();
  inited = swift_initStackObject();
  v11 = sub_100071328(inited);
  v12 = v9[5];
  v13 = v9[6];
  sub_1000080F8(v9 + 2, v12);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v14;
  v15[5] = v11;
  v15[6] = a1;
  v15[7] = a2;
  v16 = *(v13 + 8);
  v17 = *(v16 + 16);

  v17(a1, a2, sub_1000BF6B4, v15, v12, v16);
}