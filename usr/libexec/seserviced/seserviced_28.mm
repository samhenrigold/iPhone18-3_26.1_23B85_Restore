void sub_100257878(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  if (v4 <= 0x13 && ((1 << v4) & 0x80440) != 0)
  {
    v6 = objc_opt_self();
    UUID.uuidString.getter();
    v7 = String._bridgeToObjectiveC()();

    sub_1003AE0BC(v6, v7);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  sub_100069E2C(v8, v9);
  v10 = sub_1000939AC(v8, v9, 0, 0, 0);
  sub_100069E2C(v8, v9);
  v11 = sub_1000939AC(v8, v9, 1, 0, 0);
  if (v4 == 17 && *a1 == 3 && v10 == 2)
  {
    if (v11 == 6)
    {
      v21 = qword_1005019E8;

      if (v21 != -1)
      {
        swift_once();
      }

      v22 = swift_allocObject();
      *(v22 + 16) = sub_10023F6D8;
      *(v22 + 24) = a2;

      v23 = sub_1000CAA04();

      v28 = sub_1000CA810(v23);

      if (v28)
      {
        v24 = [v28 readerInfo];
        if (v24)
        {
          v16 = v24;
          v25 = objc_opt_self();
          v18 = [v28 getEndpointUser];
          UUID.uuidString.getter();
          v27 = String._bridgeToObjectiveC()();

          v19 = v25;
          v20 = 6;
          goto LABEL_21;
        }

LABEL_23:
        v26 = v28;
        goto LABEL_24;
      }
    }

    else if (v11 == 1)
    {
      v12 = qword_1005019E8;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = swift_allocObject();
      *(v13 + 16) = sub_10023FA88;
      *(v13 + 24) = a2;

      v14 = sub_1000CAA04();

      v28 = sub_1000CA810(v14);

      if (v28)
      {
        v15 = [v28 readerInfo];
        if (v15)
        {
          v16 = v15;
          v17 = objc_opt_self();
          v18 = [v28 getEndpointUser];
          UUID.uuidString.getter();
          v27 = String._bridgeToObjectiveC()();

          v19 = v17;
          v20 = 1;
LABEL_21:
          sub_10004D01C(v19, 2, v20, v16, v18, v27);

          v26 = v27;
LABEL_24:

          return;
        }

        goto LABEL_23;
      }
    }
  }
}

void sub_100257CB0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = UUID.uuidString.getter();
      v14 = sub_1002FFA0C(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "UWB Alisha session started running for %s", v10, 0xCu);
      sub_1000752F4(v11);
    }

    sub_1002553AC(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_100257EF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = UUID.uuidString.getter();
      v14 = sub_1002FFA0C(v12, v13, &v19);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      v15 = sub_1002482E8(a1);
      v17 = sub_1002FFA0C(v15, v16, &v19);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "UWB Alisha session suspended for %s %s", v11, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100258170(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_7;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315138;
    v12 = UUID.uuidString.getter();
    v14 = sub_1002FFA0C(v12, v13, v16);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "UWB Alisha session resumed for %s", v10, 0xCu);
    sub_1000752F4(v11);
  }

  sub_1002553AC(a1);
  if (qword_100501960 != -1)
  {
    goto LABEL_16;
  }

LABEL_7:
  v15 = sub_1000E7974(a1);
  if (v15 != 2 && (v15 & 1) == 0)
  {
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    sub_100251228(a1);
    if (qword_100501BA0 != -1)
    {
      swift_once();
    }

    sub_1002558C4(0, a1);
  }
}

void sub_1002584A4(unint64_t a1, unint64_t a2, int64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  sub_100069E2C(a1, a2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  sub_10006A178(a1, a2);
  v17 = os_log_type_enabled(v15, v16);
  v36 = a3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v35[1] = v4;
    v19 = v18;
    v35[0] = swift_slowAlloc();
    v38[0] = v35[0];
    *v19 = 136315394;
    v20 = UUID.uuidString.getter();
    v22 = sub_1002FFA0C(v20, v21, v38);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v11 = 0;
    v37 = sub_100288788(a1, a2);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v23 = BidirectionalCollection<>.joined(separator:)();
    v25 = v24;

    v26 = sub_1002FFA0C(v23, v25, v38);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "UWB Alisha session message for %s %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v11 = 0;
  }

  if (qword_100501960 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  sub_1000E71A0(a1, a2, v36);
  if (v11)
  {
    sub_100069E2C(a1, a2);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38[0] = v30;
      *v29 = 136315138;
      v37 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v31 = BidirectionalCollection<>.joined(separator:)();
      v33 = v32;

      v34 = sub_1002FFA0C(v31, v33, v38);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to send %s", v29, 0xCu);
      sub_1000752F4(v30);
    }
  }
}

void sub_100258958(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v12 = 136315394;
    LOBYTE(v65) = a1;
    v13 = String.init<A>(describing:)();
    v15 = sub_1002FFA0C(v13, v14, v66);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = UUID.uuidString.getter();
    v18 = sub_1002FFA0C(v16, v17, v66);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "UWB Alisha session health update %s for %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  if (a1 == 3)
  {
    swift_beginAccess();
    v36 = sub_10010DAA4(a2);
    swift_endAccess();
    if (!v36)
    {
LABEL_19:
      v52 = qword_1005019E8;

      if (v52 != -1)
      {
        swift_once();
      }

      v53 = swift_allocObject();
      *(v53 + 16) = sub_10023FA88;
      *(v53 + 24) = a2;

      v54 = sub_1000CAA04();

      v23 = sub_1000CA810(v54);

      if (v23)
      {
        v55 = [v23 readerInfo];
        if (v55)
        {
          v56 = v55;
          v57 = objc_opt_self();
          v58 = [v23 getEndpointUser];
          UUID.uuidString.getter();
          v59 = String._bridgeToObjectiveC()();

          sub_10004D01C(v57, 0x8000, 0xFFFF, v56, v58, v59);

          v23 = v59;
        }

        goto LABEL_28;
      }

      return;
    }

    v37 = qword_1005019E8;

    if (v37 == -1)
    {
LABEL_16:
      v38 = swift_allocObject();
      *(v38 + 16) = sub_10023FA88;
      *(v38 + 24) = a2;

      v39 = sub_1000CAA04();

      v40 = sub_1000CA810(v39);

      if (!v40)
      {
        goto LABEL_26;
      }

      v41 = [v40 readerIdentifier];
      if (!v41)
      {

        goto LABEL_26;
      }

      v42 = v41;
      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v64 = "rs";
      v46 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
      v47 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
      v48 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v49 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004098F0;
      *(inited + 72) = &type metadata for Data;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x8000000100461D10;
      *(inited + 48) = v43;
      v63 = v43;
      *(inited + 56) = v45;
      sub_10006A2BC(v46, v47);
      sub_10006A2BC(v48, v49);
      sub_100069E2C(v43, v45);
      v51 = sub_10008FFDC(inited);
      swift_setDeallocating();
      sub_100075768(inited + 32, &qword_100507D30, &unk_100409C90);
      sub_1003375E0(0xD000000000000040, v64 | 0x8000000000000000, v46, v47, v48, v49, v51);

      sub_10006A2D0(v48, v49);
      sub_10006A2D0(v46, v47);
      sub_10006A178(v63, v45);

      goto LABEL_19;
    }

LABEL_31:
    swift_once();
    goto LABEL_16;
  }

  if (a1 == 1)
  {
    swift_beginAccess();

    v19 = sub_1000D5D24(&v65, a2);
    swift_endAccess();

    if (v19)
    {
      v20 = qword_1005019E8;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = swift_allocObject();
      *(v21 + 16) = sub_10023FA88;
      *(v21 + 24) = a2;

      v22 = sub_1000CAA04();

      v23 = sub_1000CA810(v22);

      if (v23)
      {
        v24 = [v23 readerIdentifier];
        if (v24)
        {
          v25 = v24;
          v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          v64 = ".did.ranging.end";
          v29 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
          v30 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
          v31 = a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier;
          v32 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
          v33 = *(v31 + 8);
          sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
          v34 = swift_initStackObject();
          *(v34 + 16) = xmmword_100409900;
          *(v34 + 32) = 0xD000000000000010;
          *(v34 + 40) = 0x8000000100461D10;
          *(v34 + 48) = v26;
          *(v34 + 56) = v28;
          *(v34 + 72) = &type metadata for Data;
          *(v34 + 80) = 0xD000000000000011;
          *(v34 + 120) = &type metadata for Int;
          *(v34 + 88) = 0x80000001004690E0;
          *(v34 + 96) = 180;
          sub_10006A2BC(v29, v30);
          sub_10006A2BC(v32, v33);
          sub_100069E2C(v26, v28);
          v35 = sub_10008FFDC(v34);
          swift_setDeallocating();
          sub_100068FC4(&qword_100507D30, &unk_100409C90);
          swift_arrayDestroy();
          sub_1003375E0(0xD000000000000042, v64 | 0x8000000000000000, v29, v30, v32, v33, v35);

          sub_10006A2D0(v32, v33);
          sub_10006A2D0(v29, v30);
          sub_10006A178(v26, v28);
LABEL_28:

          return;
        }
      }

LABEL_26:
      v23 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v23, v60, "Failed to retrieve endpoint", v61, 2u);
      }

      goto LABEL_28;
    }
  }
}

uint64_t sub_100259310(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced9AlishaUWB_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaUWB(uint64_t a1)
{
  result = qword_100507EF8;
  if (!qword_100507EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100259420(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1002595A8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (a1)
    {
      v8 = objc_opt_self();
      sub_10004EBC8(v8, 2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100259704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10025971C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100259754(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = UUID.uuidString.getter();
      v14 = sub_1002FFA0C(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "UWB Alisha session invalidated for %s", v10, 0xCu);
      sub_1000752F4(v11);
    }

    if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1)
    {
      sub_10025671C(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002599B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100259A0C(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  result = sub_10025C4F4();
  if (v1)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v9 = sub_1000958E4(v8, qword_10051B240);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v18[3] = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v18[1] = v9;
      v15 = v4;
      v16 = v14;
      *v13 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to open database %@, resetting", v13, 0xCu);
      sub_100075768(v16, &unk_100503F70, &unk_10040B2E0);
      v4 = v15;
    }

    else
    {
    }

    sub_10025C1D8(1, v6);
    (*(v4 + 8))(v6, v3);
    swift_allocObject();
    return sub_10025C4F4();
  }

  return result;
}

uint64_t SEStorageMockEntryStore.context.getter(uint64_t a1)
{
  type metadata accessor for SEStorageMockEntryStore.Context();
  v1 = swift_allocObject();
  type metadata accessor for ModelContext();
  swift_allocObject();

  *(v1 + 16) = ModelContext.init(_:)();
  return v1;
}

void *sub_100259EC4(void *a1)
{
  v36 = a1;
  v39 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v1 = *(v39 - 8);
  __chkstk_darwin(v39);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  v7 = sub_100068FC4(&qword_1005080F8, &qword_100410778);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v37 = sub_100068FC4(&qword_100508100, &qword_100410780);
  v10 = *(v37 - 8);
  __chkstk_darwin(v37);
  v12 = &v36 - v11;
  v13 = sub_100068FC4(&qword_100508108, &qword_100410788);
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  type metadata accessor for SEStorageMockPassSchemaV1.PassEntry(0);
  v14 = sub_10025CAD8(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  FetchDescriptor.init(predicate:sortBy:)();
  v15 = v38;
  v16 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v15)
  {
    (*(v10 + 8))(v12, v37);
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000958E4(v17, qword_10051B240);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_1002FFA0C(0x736573736170, 0xE600000000000000, &v40);
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_1002FFA0C(v21, v22, &v40);

      *(v20 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s Swift Data Error %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    v24 = v36;
    *v36 = 0x656761726F7473;
    v24[1] = 0xE700000000000000;
    v25 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v26 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    (*(*(v26 - 8) + 104))(v24, v25, v26);
    sub_10025CAD8(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    swift_willThrowTypedImpl();

    return v14;
  }

  v27 = v16;
  (*(v10 + 8))(v12, v37);
  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_9;
    }

LABEL_22:

    return _swiftEmptyArrayStorage;
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_22;
  }

LABEL_9:
  v40 = _swiftEmptyArrayStorage;
  result = sub_10019F808(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v38 = v27;
    v14 = v40;
    if ((v27 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v28; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10031B580(v6);
        swift_unknownObjectRelease();
        v40 = v14;
        v32 = v14[2];
        v31 = v14[3];
        if (v32 >= v31 >> 1)
        {
          sub_10019F808((v31 > 1), v32 + 1, 1);
          v14 = v40;
        }

        v14[2] = v32 + 1;
        (*(v1 + 32))(v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v32, v6, v39);
      }
    }

    else
    {
      v33 = 32;
      do
      {

        sub_10031B580(v3);

        v40 = v14;
        v35 = v14[2];
        v34 = v14[3];
        if (v35 >= v34 >> 1)
        {
          sub_10019F808((v34 > 1), v35 + 1, 1);
          v14 = v40;
        }

        v14[2] = v35 + 1;
        (*(v1 + 32))(v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v35, v3, v39);
        v33 += 8;
        --v28;
      }

      while (v28);
    }

    return v14;
  }

  __break(1u);
  return result;
}

unint64_t sub_10025A56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_100068FC4(&qword_1005080F8, &qword_100410778);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_100068FC4(&qword_100508100, &qword_100410780);
  v32 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v33 = a1;
  v34 = a2;
  v35[2] = type metadata accessor for SEStorageMockPassSchemaV1.PassEntry(0);
  Predicate.init(_:)();
  v15 = sub_100068FC4(&qword_100508108, &qword_100410788);
  (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  sub_10025CAD8(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  FetchDescriptor.init(predicate:sortBy:)();
  result = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (!v4)
  {
    if (result >> 62)
    {
      v27 = v12;
      v28 = result;
      v29 = _CocoaArrayWrapper.endIndex.getter();
      result = v28;
      v12 = v27;
      if (v29)
      {
        goto LABEL_9;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((result & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }
      }

      sub_10031B580(a4);

      (*(v32 + 8))(v14, v12);
      v26 = 0;
LABEL_15:
      v30 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
      return (*(*(v30 - 8) + 56))(a4, v26, 1, v30);
    }

    (*(v32 + 8))(v14, v12);

    v26 = 1;
    goto LABEL_15;
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v31 = v12;
  v17 = type metadata accessor for Logger();
  sub_1000958E4(v17, qword_10051B240);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_1002FFA0C(0xD000000000000011, 0x80000001004691A0, v35);
    *(v20 + 12) = 2080;
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v23 = sub_1002FFA0C(v21, v22, v35);

    *(v20 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s Swift Data Error %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  *a3 = 0x656761726F7473;
  a3[1] = 0xE700000000000000;
  v24 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  (*(*(v25 - 8) + 104))(a3, v24, v25);
  sub_10025CAD8(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
  swift_willThrowTypedImpl();

  return (*(v32 + 8))(v14, v31);
}

uint64_t sub_10025AAF8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_100068FC4(&qword_100508190, &qword_1004107E8);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_100068FC4(&qword_100508118, &qword_100410790);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100068FC4(&qword_100508120, &qword_100410798);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_100075C60(&qword_100508130, &qword_100508118, &qword_100410790, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = sub_100068FC4(&qword_100508198, &unk_1004107F0);
  a4[4] = sub_10025CDAC();
  sub_1000B9634(a4);
  sub_100075C60(&qword_100508178, &qword_100508120, &qword_100410798, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100075C60(&qword_1005081B0, &qword_100508190, &qword_1004107E8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v17 = v21;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_10025AE64(uint64_t a1, void *a2)
{
  v64 = a2;
  v4 = v3;
  v6 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v70 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100068FC4(&qword_100508188, &qword_1004107E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v58 - v9;
  v73 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  __chkstk_darwin(v73);
  v67 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v19.n128_f64[0] = __chkstk_darwin(v14);
  v20 = &v58 - v15;
  v21 = *(a1 + 16);
  if (v21)
  {
    v60 = v17;
    v61 = v16;
    v59 = v18;
    v24 = *(v18 + 16);
    v23 = v18 + 16;
    v22 = v24;
    v68 = &v58 - v15;
    v69 = (v23 - 8);
    v25 = a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v65 = *(v23 + 56);
    v66 = (v23 + 32);
    v72 = v23;
    while (1)
    {
      v26 = v22;
      (v22)(v20, v25, v73, v19);
      v27 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
      sub_10025A56C(v27, v28, v70, v10);
      if (v4)
      {
        (*v69)(v68, v73);

        return (*(v62 + 32))(v64, v70, v63);
      }

      if ((*v66)(v10, 1, v73) != 1)
      {
        break;
      }

      sub_100075768(v10, &qword_100508188, &qword_1004107E0);
      v71 = v21;
      v30 = v67;
      v29 = v68;
      v26(v67, v68, v73);
      type metadata accessor for SEStorageMockPassSchemaV1.PassEntry(0);
      swift_allocObject();
      sub_10031B0C4(v30);
      sub_10025CAD8(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
      v20 = v29;
      dispatch thunk of ModelContext.insert<A>(_:)();
      v4 = 0;
      v31 = v71;

      (*v69)(v29, v73);
      v22 = v26;
      v25 += v65;
      v21 = v31 - 1;
      if (!v21)
      {
        goto LABEL_6;
      }
    }

    v71 = v2;
    v42 = v61;
    (*(v59 + 32))(v61, v10, v73);
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000958E4(v43, qword_10051B240);
    v44 = v60;
    v26(v60, v42, v73);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v74 = v48;
      *v47 = 136315138;
      v49 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
      v51 = v50;
      v52 = *v69;
      (*v69)(v44, v73);
      v53 = sub_1002FFA0C(v49, v51, &v74);

      *(v47 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "Pass %s already exists.", v47, 0xCu);
      sub_1000752F4(v48);
    }

    else
    {

      v52 = *v69;
      (*v69)(v44, v73);
    }

    v54 = v68;
    dispatch thunk of ModelContext.rollback()();
    v56 = v63;
    v55 = v64;
    *v64 = 0x746163696C707564;
    v55[1] = 0xE900000000000065;
    (*(v62 + 104))(v55, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v56);
    sub_10025CAD8(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    swift_willThrowTypedImpl();
    v57 = v73;
    v52(v61, v73);
    return (v52)(v54, v57);
  }

  else
  {
LABEL_6:
    result = dispatch thunk of ModelContext.hasChanges.getter();
    if (result)
    {
      result = dispatch thunk of ModelContext.save()();
      if (v4)
      {
        if (qword_100501938 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_1000958E4(v33, qword_10051B240);
        swift_errorRetain();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *v36 = 136315394;
          *(v36 + 4) = sub_1002FFA0C(0x3A5F2865726F7473, 0xE900000000000029, &v74);
          *(v36 + 12) = 2080;
          swift_getErrorValue();
          v37 = Error.localizedDescription.getter();
          v39 = sub_1002FFA0C(v37, v38, &v74);

          *(v36 + 14) = v39;
          _os_log_impl(&_mh_execute_header, v34, v35, "%s Swift Data Error %s", v36, 0x16u);
          swift_arrayDestroy();
        }

        dispatch thunk of ModelContext.rollback()();
        v41 = v63;
        v40 = v64;
        *v64 = 0x656761726F7473;
        v40[1] = 0xE700000000000000;
        (*(v62 + 104))(v40, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v41);
        sub_10025CAD8(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
        swift_willThrowTypedImpl();
      }
    }
  }

  return result;
}

unint64_t sub_10025B6EC(uint64_t a1, void *a2)
{
  v51 = a2;
  v4 = v3;
  v59 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v6 = *(v59 - 1);
  __chkstk_darwin(v59);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100068FC4(&qword_1005080F8, &qword_100410778);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_100068FC4(&qword_100508100, &qword_100410780);
  v53 = *(v11 - 8);
  v54 = v11;
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = *(a1 + 16);
  v16 = _swiftEmptyArrayStorage;
  v52 = &v47 - v13;
  if (v15)
  {
    v48 = v10;
    v49 = v2;
    v50 = v3;
    v61 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v15, 0);
    v16 = v61;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v55 = *(v17 + 56);
    v56 = v18;
    v57 = v17;
    v20 = (v17 - 8);
    do
    {
      v21 = v58;
      v22 = v59;
      v56(v58, v19, v59);
      v23 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
      v25 = v24;
      v12 = (*v20)(v21, v22);
      v61 = v16;
      v27 = v16[2];
      v26 = v16[3];
      if (v27 >= v26 >> 1)
      {
        v12 = sub_10019F3C0((v26 > 1), v27 + 1, 1);
        v16 = v61;
      }

      v16[2] = v27 + 1;
      v28 = &v16[2 * v27];
      v28[4] = v23;
      v28[5] = v25;
      v19 += v55;
      --v15;
    }

    while (v15);
    v14 = v52;
    v4 = v50;
    v10 = v48;
  }

  __chkstk_darwin(v12);
  *(&v47 - 2) = v16;
  v61 = type metadata accessor for SEStorageMockPassSchemaV1.PassEntry(0);
  Predicate.init(_:)();

  v29 = sub_100068FC4(&qword_100508108, &qword_100410788);
  (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
  sub_10025CAD8(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  FetchDescriptor.init(predicate:sortBy:)();
  result = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v4)
  {
    goto LABEL_8;
  }

  v41 = result;
  v58 = 0;
  v59 = &v47;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v42 = result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v42 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      goto LABEL_22;
    }
  }

  if (v42 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v42; ++i)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    dispatch thunk of ModelContext.delete<A>(_:)();
  }

LABEL_22:

  if ((dispatch thunk of ModelContext.hasChanges.getter() & 1) == 0)
  {
    v46 = v53;
    v45 = v54;
    v14 = v52;
    return (*(v46 + 8))(v14, v45);
  }

  v44 = v58;
  dispatch thunk of ModelContext.save()();
  v14 = v52;
  if (!v44)
  {
    v46 = v53;
    v45 = v54;
    return (*(v46 + 8))(v14, v45);
  }

LABEL_8:
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000958E4(v31, qword_10051B240);
  swift_errorRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v60 = v58;
    *v34 = 136315394;
    *(v34 + 4) = sub_1002FFA0C(0xD000000000000010, 0x8000000100469180, &v60);
    *(v34 + 12) = 2080;
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    v37 = sub_1002FFA0C(v35, v36, &v60);

    *(v34 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s Swift Data Error %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  dispatch thunk of ModelContext.rollback()();
  v38 = v51;
  *v51 = 0x656761726F7473;
  v38[1] = 0xE700000000000000;
  v39 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v40 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  (*(*(v40 - 8) + 104))(v38, v39, v40);
  sub_10025CAD8(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
  swift_willThrowTypedImpl();

  return (*(v53 + 8))(v14, v54);
}

uint64_t sub_10025BE08@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_100068FC4(&qword_100508118, &qword_100410790);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_100068FC4(&qword_100508120, &qword_100410798);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100068FC4(&qword_100508128, &unk_1004107A0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  v22 = a2;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100075C60(&qword_100508130, &qword_100508118, &qword_100410790, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  a3[3] = sub_100068FC4(&qword_100508138, &qword_1004107D8);
  a3[4] = sub_10025CB28();
  sub_1000B9634(a3);
  sub_100075C60(&qword_100508170, &qword_100508128, &unk_1004107A0, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_100075C60(&qword_100508178, &qword_100508120, &qword_100410798, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100075C60(&qword_100508180, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  v17 = v20;
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_10025C1D8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v36 = 0;
  v12 = [v11 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v36];

  v13 = v36;
  if (v12)
  {
    v35 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    URL.appendingPathComponent(_:isDirectory:)();
    if (a1)
    {
      v15 = [v10 defaultManager];
      URL._bridgeToObjectiveC()(v16);
      v18 = v17;
      v36 = 0;
      v19 = [v15 removeItemAtURL:v17 error:&v36];

      v20 = v36;
      if (!v19)
      {
        goto LABEL_7;
      }

      v21 = v36;
    }

    v22 = [v10 defaultManager];
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    v36 = 0;
    v26 = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v36];

    v20 = v36;
    if (v26)
    {
      v27 = v36;
      URL.appendingPathComponent(_:)();
LABEL_8:
      v29 = *(v4 + 8);
      v30 = v6;
      v31 = v35;
      v29(v30, v35);
      return (v29)(v9, v31);
    }

LABEL_7:
    v28 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_8;
  }

  v33 = v36;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void *sub_10025C4F4()
{
  v1 = *v0;
  v2 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelConfiguration();
  v60 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  *&v59 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = v61;
  sub_10025C1D8(0, &v47 - v15);
  if (v17)
  {
    goto LABEL_9;
  }

  v52 = v13;
  v53 = v10;
  v54 = v4;
  v55 = 0;
  v57 = v0;
  v58 = v16;
  v18 = v59;
  v56 = v7;
  v61 = v5;
  v50 = v1;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000958E4(v19, qword_10051B240);
  v20 = v18;
  v21 = *(v18 + 16);
  v22 = v52;
  v23 = v58;
  v24 = v8;
  v21(v52, v58, v8);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v49 = v26;
    v28 = v27;
    v62 = swift_slowAlloc();
    v29 = v20;
    v30 = v62;
    *v28 = 136315138;
    v48 = URL.absoluteString.getter();
    v32 = v31;
    v52 = *(v29 + 8);
    v52(v22, v24);
    v33 = sub_1002FFA0C(v48, v32, &v62);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v49, "Constructing database at %s", v28, 0xCu);
    sub_1000752F4(v30);
    v23 = v58;
  }

  else
  {

    v52 = *(v20 + 8);
    v52(v22, v24);
  }

  v34 = v56;
  v51 = v24;
  v21(v53, v23, v24);
  static ModelConfiguration.CloudKitDatabase.automatic.getter();
  ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
  type metadata accessor for ModelContainer();
  sub_100068FC4(&qword_1005081B8, &qword_100410800);
  v35 = swift_allocObject();
  v59 = xmmword_1004098F0;
  *(v35 + 16) = xmmword_1004098F0;
  v36 = type metadata accessor for SEStorageMockPassSchemaV1.PassEntry(0);
  v37 = sub_10025CAD8(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry, &unk_1004154C0);
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  sub_10025CEBC();
  sub_100068FC4(&qword_1005081C8, &qword_100410808);
  v38 = v60;
  v39 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v59;
  v41 = v40 + v39;
  v42 = v61;
  (*(v38 + 16))(v41, v34, v61);
  v43 = v55;
  v44 = ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  if (v43)
  {
    (*(v38 + 8))(v34, v42);
    v52(v23, v51);
    v0 = v57;
LABEL_9:
    swift_deallocPartialClassInstance();
    return v0;
  }

  v46 = v44;
  (*(v38 + 8))(v34, v42);
  v52(v23, v51);
  result = v57;
  v57[2] = v46;
  return result;
}

uint64_t sub_10025CAD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10025CB28()
{
  result = qword_100508140;
  if (!qword_100508140)
  {
    sub_1000692D8(&qword_100508138, &qword_1004107D8);
    sub_10025CBB4();
    sub_10025CCF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508140);
  }

  return result;
}

unint64_t sub_10025CBB4()
{
  result = qword_100508148;
  if (!qword_100508148)
  {
    sub_1000692D8(&qword_100508128, &unk_1004107A0);
    sub_10025CC88(&qword_100508150, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_10025CC88(&qword_100508158, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508148);
  }

  return result;
}

uint64_t sub_10025CC88(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&unk_100503E60, &qword_10040A3B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10025CCF4()
{
  result = qword_100508160;
  if (!qword_100508160)
  {
    sub_1000692D8(&qword_100508120, &qword_100410798);
    sub_100075C60(&qword_100508168, &qword_100508118, &qword_100410790, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508160);
  }

  return result;
}

unint64_t sub_10025CDAC()
{
  result = qword_1005081A0;
  if (!qword_1005081A0)
  {
    sub_1000692D8(&qword_100508198, &unk_1004107F0);
    sub_10025CCF4();
    sub_10025CE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005081A0);
  }

  return result;
}

unint64_t sub_10025CE38()
{
  result = qword_1005081A8;
  if (!qword_1005081A8)
  {
    sub_1000692D8(&qword_100508190, &qword_1004107E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005081A8);
  }

  return result;
}

unint64_t sub_10025CEBC()
{
  result = qword_1005081C0;
  if (!qword_1005081C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005081C0);
  }

  return result;
}

uint64_t sub_10025CF18(uint64_t a1)
{
  UUID.init()();
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_expressState) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_type) = 4;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier) = xmmword_1004098E0;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier) = xmmword_1004098E0;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
  v3 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_10025D004()
{
  v1 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier, v2);
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_buffer), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Peer(uint64_t a1)
{
  result = qword_1005081F8;
  if (!qword_1005081F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10025D160(uint64_t a1)
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

unint64_t sub_10025D250()
{
  result = qword_1005083B8;
  if (!qword_1005083B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005083B8);
  }

  return result;
}

unint64_t sub_10025D2A8()
{
  result = qword_1005083C0;
  if (!qword_1005083C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005083C0);
  }

  return result;
}

Swift::Int sub_10025D2FC()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10025D554(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10025D39C(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10025D554(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10025D424()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10025D554(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10025D554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10025D59C(char a1, uint64_t a2)
{
  v3 = v2[5];
  if (!v3)
  {
    if (qword_100501BB8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_1005083D0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Cannot restart when in idle state", v10, 2u);
    goto LABEL_13;
  }

  v5 = v2[3];
  v4 = v2[4];
  if ((v5 & 1) != (a1 & 1))
  {
    v11 = qword_100501BB8;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_1005083D0);

    v8 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v13))
    {

      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v14 = 136315650;
    v15 = sub_1002FFA0C(v4, v3, &v40);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2080;
    v16 = String.init<A>(describing:)();
    v18 = sub_1002FFA0C(v16, v17, &v40);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2080;
    v19 = String.init<A>(describing:)();
    v21 = sub_1002FFA0C(v19, v20, &v40);

    *(v14 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v8, v13, "Waiting for message %s of type %s, cannot restart timer for %s message", v14, 0x20u);
    swift_arrayDestroy();

LABEL_13:

LABEL_15:

    sub_10025EE38();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    return;
  }

  v6 = v2[2];

  if (v6)
  {
    sub_1003AE754(v6);
  }

  v39 = v2;
  if (qword_100501BB8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000958E4(v23, qword_1005083D0);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v26 = 136315394;
    v27 = String.init<A>(describing:)();
    v29 = sub_1002FFA0C(v27, v28, &v40);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    v30 = sub_1002FFA0C(v4, v3, &v40);

    *(v26 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Restarted timer for %s message: %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v31 = *(v39 + 16);
  v32 = __CFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_25;
  }

  *(v39 + 16) = v33;
  v24 = v39[2];
  if (!v24)
  {
    return;
  }

  if ((v5 & 1) == 0)
  {
    v37 = qword_100501BA8;
    v38 = v24;
    if (v37 != -1)
    {
      swift_once();
    }

    v36 = &qword_10051B658;
    goto LABEL_29;
  }

  v34 = qword_100501BB0;
  v35 = v24;
  if (v34 != -1)
  {
    goto LABEL_32;
  }

LABEL_25:
  v36 = &qword_10051B660;
LABEL_29:
  sub_1003AE618(v24, *v36);
}

void sub_10025DAF0(char a1, uint64_t a2)
{
  v3 = v2[5];
  if (v3)
  {
    if ((v2[3] & 1) == (a1 & 1))
    {
      v4 = v2[4];
      v5 = v2[2];

      if (v5)
      {
        sub_1003AE754(v5);
      }

      v29 = v2;
      if (qword_100501BB8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000958E4(v21, qword_1005083D0);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v24 = 136315394;
        v25 = String.init<A>(describing:)();
        v27 = sub_1002FFA0C(v25, v26, &v30);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2080;
        v28 = sub_1002FFA0C(v4, v3, &v30);

        *(v24 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "Ended timer for %s message: %s", v24, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v29[3] = 0;
      v29[4] = 0;
      v29[5] = 0;
    }

    else
    {
      if (qword_100501BB8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000958E4(v10, qword_1005083D0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v13 = 136315394;
        v14 = String.init<A>(describing:)();
        v16 = sub_1002FFA0C(v14, v15, &v30);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2080;
        v17 = String.init<A>(describing:)();
        v19 = sub_1002FFA0C(v17, v18, &v30);

        *(v13 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v11, v12, "Waiting for message type %s, cannot stop timer for %s", v13, 0x16u);
        swift_arrayDestroy();
      }

      sub_10025EE38();
      swift_allocError();
      *v20 = 2;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_100501BB8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_1005083D0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Not waiting for message, nothing to register", v9, 2u);
    }
  }
}

void sub_10025DF60(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = v5[5];
  if (v10)
  {
    v11 = v5[4];
    v12 = qword_100501BB8;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_1005083D0);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v16 = 136315906;
      v17 = sub_1002FFA0C(v11, v10, &v43);

      *(v16 + 4) = v17;
      *(v16 + 12) = 2080;
      v18 = String.init<A>(describing:)();
      v20 = sub_1002FFA0C(v18, v19, &v43);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2080;
      *(v16 + 24) = sub_1002FFA0C(a2, a3, &v43);
      *(v16 + 32) = 2080;
      v21 = String.init<A>(describing:)();
      v23 = sub_1002FFA0C(v21, v22, &v43);

      *(v16 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Waiting for message %s of type %s, cannot start timer for %s in %s", v16, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10025EE38();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();
  }

  else
  {
    v5[3] = a1 & 1;
    v5[4] = a2;
    v25 = v5[6];
    v24 = v5[7];
    v5[5] = a3;
    v5[6] = a4;
    v5[7] = a5;

    sub_1000B2A4C(v25, v24);
    v26 = qword_100501BB8;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000958E4(v27, qword_1005083D0);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    v41 = a1;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v30 = 136315394;
      v31 = String.init<A>(describing:)();
      v33 = sub_1002FFA0C(v31, v32, &v43);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1002FFA0C(a2, a3, &v43);
      _os_log_impl(&_mh_execute_header, v28, v29, "Started timer for %s message: %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    *(v6 + 16) = 0;
    v34 = v6[2];
    if (v34)
    {
      if (v41)
      {
        v35 = qword_100501BB0;
        v36 = v34;
        if (v35 != -1)
        {
          swift_once();
        }

        v37 = &qword_10051B660;
      }

      else
      {
        v39 = qword_100501BA8;
        v40 = v34;
        if (v39 != -1)
        {
          swift_once();
        }

        v37 = &qword_10051B658;
      }

      sub_1003AE618(v34, *v37);
    }
  }
}

uint64_t sub_10025E410()
{
  v0 = sub_100068FC4(qword_100502460, &unk_100410A50);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - v2;
  v7 = 0x3FFB333333333333;
  v5[1] = 0;
  v6 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10025E54C()
{
  v0 = sub_100068FC4(qword_100502460, &unk_100410A50);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - v2;
  v7 = 0x3FF0000000000000;
  v5[1] = 0;
  v6 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10025E684()
{
  *(v0 + 64) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_allocObject();
  swift_weakInit();
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v2 = qword_10051B7F0;
  v3 = objc_allocWithZone(SESTimer);
  v8[4] = sub_10025EEC4;
  v8[5] = v1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100080830;
  v8[3] = &unk_1004CD2E8;
  v4 = _Block_copy(v8);

  v5 = sub_1003AE50C(v3, v2, v4);
  _Block_release(v4);

  v6 = *(v0 + 16);
  *(v0 + 16) = v5;

  return v0;
}

void sub_10025E7DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong[5];
    if (v3)
    {
      v4 = Strong[6];
      if (v4)
      {
        v6 = Strong[3];
        v5 = Strong[4];
        v7 = Strong[7];

        v8 = sub_100113B54(v4, v7);
        if ((v4(v8) & 1) == 0)
        {
          sub_1000B2A4C(v4, v7);

          v2[3] = 0;
          v2[4] = 0;
          v2[5] = 0;

          return;
        }

        if (qword_100501BB8 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_1000958E4(v9, qword_1005083D0);

        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v10, v11))
        {
          v30 = v5;
          v12 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v12 = 136315394;
          v13 = String.init<A>(describing:)();
          v15 = sub_1002FFA0C(v13, v14, &v31);

          *(v12 + 4) = v15;
          *(v12 + 12) = 2080;
          v16 = sub_1002FFA0C(v30, v3, &v31);

          *(v12 + 14) = v16;
          _os_log_impl(&_mh_execute_header, v10, v11, "Restarted timer for %s message: %s", v12, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v22 = *(v2 + 16);
        v23 = __CFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          __break(1u);
        }

        else
        {
          *(v2 + 16) = v24;
          v10 = v2[2];
          if (!v10)
          {
            sub_1000B2A4C(v4, v7);

            return;
          }

          if ((v6 & 1) == 0)
          {
            v28 = qword_100501BA8;
            v29 = v10;
            if (v28 != -1)
            {
              swift_once();
            }

            v27 = &qword_10051B658;
            goto LABEL_29;
          }

          v25 = qword_100501BB0;
          v26 = v10;
          if (v25 == -1)
          {
LABEL_24:
            v27 = &qword_10051B660;
LABEL_29:
            sub_1003AE618(v10, *v27);
            sub_1000B2A4C(v4, v7);
            goto LABEL_30;
          }
        }

        swift_once();
        goto LABEL_24;
      }

      if (qword_100501BB8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000958E4(v21, qword_1005083D0);
      v10 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v10, v18))
      {
        goto LABEL_30;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Timer completed with no completion block";
    }

    else
    {
      if (qword_100501BB8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000958E4(v17, qword_1005083D0);
      v10 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v10, v18))
      {
        goto LABEL_30;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Timer completed when extension is in idle state";
    }

    _os_log_impl(&_mh_execute_header, v10, v18, v20, v19, 2u);

LABEL_30:
  }
}

uint64_t sub_10025EC4C()
{

  sub_1000B2A4C(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

__n128 sub_10025ECB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10025ECCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10025ED1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10025ED74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10025ED8C(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10025EDC0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_1005083D0);
  sub_1000958E4(v2, qword_1005083D0);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_10025EE38()
{
  result = qword_1005084A0;
  if (!qword_1005084A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005084A0);
  }

  return result;
}

uint64_t sub_10025EE8C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10025EECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10025EF08()
{
  result = qword_1005084A8;
  if (!qword_1005084A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005084A8);
  }

  return result;
}

unint64_t sub_10025EF60()
{
  result = qword_1005084B0;
  if (!qword_1005084B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005084B0);
  }

  return result;
}

uint64_t sub_10025EFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501BC0 != -1)
  {
    swift_once();
  }

  v16 = *(qword_1005084B8 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = v21;
  v17[7] = a5;
  aBlock[4] = sub_100264AEC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CD660;
  v18 = _Block_copy(aBlock);

  v19 = v16;

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10026473C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

void sub_10025F2E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void))
{
  v7 = a2;
  if (qword_100501BC0 != -1)
  {
    swift_once();
    v7 = a2;
  }

  v8 = sub_100264B1C(v7, a3);
  v10 = v8;
  a5(v8, 0);
}

uint64_t sub_10025F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501BC0 != -1)
  {
    swift_once();
  }

  v17 = *(qword_1005084B8 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  v18 = swift_allocObject();
  v19 = v24;
  v18[2] = v23[1];
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  v18[7] = v19;
  v18[8] = a6;
  aBlock[4] = sub_100264A90;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CD5E8;
  v20 = _Block_copy(aBlock);

  v21 = v17;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10026473C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v13, v11);
  (*(v14 + 8))(v16, v25);
}

void sub_10025F830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, void), uint64_t a7)
{
  v39[1] = a7;
  v40 = a6;
  v51 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v11 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v13 = *(v49 - 8);
  __chkstk_darwin(v49);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  __chkstk_darwin(v16 - 8);
  v48 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501BC0 != -1)
  {
    swift_once();
  }

  sub_10025FD3C(a2, a3, a4, a5);
  v19 = v18;
  if (!(v18 >> 62))
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_13:

    v35 = _swiftEmptyArrayStorage;
LABEL_14:
    sub_10034CE08(v35);

    v36 = objc_allocWithZone(NSArray);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v38 = [v36 initWithArray:isa];

    v40(v38, 0);
    return;
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (!v20)
  {
    goto LABEL_13;
  }

LABEL_5:
  v52 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = objc_opt_self();
    v22 = 0;
    v44 = v19 & 0xC000000000000001;
    v45 = v21;
    v42 = (v11 + 8);
    v43 = (v13 + 32);
    v41 = (v13 + 8);
    v46 = v20;
    v47 = v19;
    do
    {
      if (v44)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v19 + 8 * v22 + 32);
      }

      ++v22;
      v24 = v48;
      sub_100265BA4(v23 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, v48, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
      v25 = v49;
      (*v43)(v15, v24, v49);
      v26 = v50;
      P256.KeyAgreement.PrivateKey.publicKey.getter();
      v27 = P256.KeyAgreement.PublicKey.x963Representation.getter();
      v29 = v28;
      (*v42)(v26, v51);
      (*v41)(v15, v25);
      v30 = String._bridgeToObjectiveC()();
      v31 = String._bridgeToObjectiveC()();
      v32 = Data._bridgeToObjectiveC()().super.isa;
      v33 = Date._bridgeToObjectiveC()().super.isa;
      v34 = [v45 withGroupIdentifier:v30 keyIdentifier:v31 publicKey:v32 creationDate:v33];

      sub_10006A178(v27, v29);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v19 = v47;
    }

    while (v46 != v22);

    v35 = v52;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_10025FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a3;
  v81 = a1;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v73 = v8;
  v74 = v9;
  __chkstk_darwin(v8);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  __chkstk_darwin(v11 - 8);
  v71 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v75 = &v64 - v14;
  __chkstk_darwin(v15);
  v70 = &v64 - v16;
  v79 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation(0);
  __chkstk_darwin(v79);
  v80 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = (&v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v4 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18, v20);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v78 = v5;
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004099F0;
    v85[0] = kSecClass;
    type metadata accessor for CFString(0);
    v27 = v26;
    sub_10026473C(&qword_1005021B0, type metadata accessor for CFString, &unk_1004097C8);
    v28 = kSecClass;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = v27;
    *(inited + 72) = kSecClassGenericPassword;
    v85[0] = kSecAttrAccount;
    v29 = kSecClassGenericPassword;
    v30 = kSecAttrAccount;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v81;
    *(inited + 152) = a2;
    v85[0] = kSecAttrAccessGroup;

    v31 = kSecAttrAccessGroup;
    AnyHashable.init<A>(_:)();
    v76 = v4;
    v33 = *(v4 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup);
    v32 = *(v4 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup + 8);
    *(inited + 240) = &type metadata for String;
    *(inited + 216) = v33;
    *(inited + 224) = v32;
    v85[0] = kSecAttrSynchronizable;

    v34 = kSecAttrSynchronizable;
    AnyHashable.init<A>(_:)();
    *(inited + 312) = &type metadata for Bool;
    *(inited + 288) = 1;
    v35 = sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    if (a4)
    {
      *&v83 = kSecAttrService;

      v36 = kSecAttrService;
      AnyHashable.init<A>(_:)();
      v84 = &type metadata for String;
      *&v83 = v77;
      *(&v83 + 1) = a4;
      sub_100075D50(&v83, v82);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v35;
      sub_1003169D4(v82, v85, isUniquelyReferenced_nonNull_native);
      sub_100092F28(v85);
      v35 = v86;
    }

    v38 = v80;

    v39 = v78;
    v40 = sub_100262F9C();

    v81 = v39;
    if (v39)
    {
    }

    else
    {
      v41 = _swiftEmptyArrayStorage;
      *&v83 = _swiftEmptyArrayStorage;
      v42 = v40[2];
      if (v42)
      {
        v43 = 0;
        v77 = OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_logger;
        v78 = v40;
        v66 = (v74 + 4);
        v67 = (v74 + 2);
        v44 = v40 + 5;
        v68 = v42;
        v69 = v35;
        v65 = v40 + 5;
        do
        {
          v74 = v41;
          v45 = v42 - v43;
          v46 = &v44[2 * v43];
          while (1)
          {
            if (v43 >= v40[2])
            {
              __break(1u);
              goto LABEL_21;
            }

            v48 = *(v46 - 1);
            v47 = *v46;
            type metadata accessor for PropertyListDecoder();
            swift_allocObject();
            sub_100069E2C(v48, v47);
            PropertyListDecoder.init()();
            sub_10026473C(&qword_1005086A0, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation, &unk_100410D60);
            v49 = v81;
            dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
            if (!v49)
            {
              break;
            }

            v81 = 0;
            v51 = Logger.logObject.getter();
            v52 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              *v53 = 0;
              _os_log_impl(&_mh_execute_header, v51, v52, "Failed to deserialize keychain data?", v53, 2u);
            }

            sub_10006A178(v48, v47);

            v46 += 2;
            ++v43;
            --v45;
            v38 = v80;
            v40 = v78;
            if (!v45)
            {
              goto LABEL_19;
            }
          }

          v50 = v38[1];
          v85[0] = *v38;
          v85[1] = v50;
          sub_100069E2C(v85[0], v50);
          sub_1002648DC();
          P256.KeyAgreement.PrivateKey.init<A>(derRepresentation:)();
          v81 = 0;
          sub_10006A178(v48, v47);
          v54 = v70;
          sub_100264990(v75, v70);
          v55 = v71;
          sub_100264990(v54, v71);
          v56 = v38[3];
          v64 = v38[2];
          v74 = v38[4];
          v57 = v38;
          v58 = v38[5];
          v59 = v72;
          v60 = v73;
          (*v67)(v72, v57 + *(v79 + 32), v73);

          sub_100264930(v57, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation);
          type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey(0);
          v61 = swift_allocObject();
          sub_100264990(v55, v61 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey);
          v62 = (v61 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier);
          *v62 = v64;
          v62[1] = v56;
          v63 = (v61 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier);
          *v63 = v74;
          v63[1] = v58;
          (*v66)(v61 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_creationDate, v59, v60);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          ++v43;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v41 = v83;
          v38 = v80;
          v42 = v68;
          v40 = v78;
          v44 = v65;
        }

        while (v45 != 1);
      }

LABEL_19:
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }
}

id sub_1002605F8()
{
  v1 = v0;
  v2 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100265BA4(v1 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, v12, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
  (*(v7 + 32))(v9, v12, v6);
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v13 = P256.KeyAgreement.PublicKey.x963Representation.getter();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v16 = objc_opt_self();
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v20 = Date._bridgeToObjectiveC()().super.isa;
  v21 = [v16 withGroupIdentifier:v17 keyIdentifier:v18 publicKey:isa creationDate:v20];

  sub_10006A178(v13, v15);
  return v21;
}

uint64_t sub_1002609A4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501BC0 != -1)
  {
    swift_once();
  }

  v13 = *(qword_1005084B8 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_100264A3C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CD570;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10026473C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v9, v7);
  (*(v10 + 8))(v12, v20);
}

uint64_t sub_100260CBC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void))
{
  v4 = a2;
  if (qword_100501BC0 != -1)
  {
    swift_once();
    v4 = a2;
  }

  sub_100260DA4(v4);
  return a3(1, 0);
}

void sub_100260DA4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10040AA50;
    v39 = kSecClass;
    type metadata accessor for CFString(0);
    v14 = v13;
    sub_10026473C(&qword_1005021B0, type metadata accessor for CFString, &unk_1004097C8);
    v15 = kSecClass;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = v14;
    *(inited + 72) = kSecClassGenericPassword;
    v39 = kSecAttrAccount;
    v16 = kSecClassGenericPassword;
    v17 = kSecAttrAccount;
    AnyHashable.init<A>(_:)();
    v18 = [a1 groupIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v2;
    v20 = v19;
    v22 = v21;

    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v20;
    *(inited + 152) = v22;
    v39 = kSecAttrService;
    v23 = kSecAttrService;
    AnyHashable.init<A>(_:)();
    v24 = [a1 keyIdentifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    *(inited + 240) = &type metadata for String;
    *(inited + 216) = v25;
    *(inited + 224) = v27;
    v39 = kSecAttrAccessGroup;
    v28 = kSecAttrAccessGroup;
    AnyHashable.init<A>(_:)();
    v29 = v38;
    v31 = *(v38 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup);
    v30 = *(v38 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup + 8);
    *(inited + 312) = &type metadata for String;
    *(inited + 288) = v31;
    *(inited + 296) = v30;
    v39 = kSecAttrSynchronizable;

    v32 = kSecAttrSynchronizable;
    AnyHashable.init<A>(_:)();
    *(inited + 384) = &type metadata for Bool;
    *(inited + 360) = 1;
    sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    v33 = *(v29 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainWrapper);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v35 = [v33 deleteItem:isa];

    if (v35)
    {
      sub_10009393C(0, &qword_10050AA20, NSError_ptr);
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v39 = 0xD000000000000016;
      v40 = 0x8000000100469530;
      v41 = v35;
      v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v36);

      sub_10030990C(0, 1, v39, v40, 0);
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002612BC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_10026132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501BC0 != -1)
  {
    swift_once();
  }

  v16 = *(qword_1005084B8 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = v21;
  v17[7] = a5;
  aBlock[4] = sub_1002648A4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CD4F8;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10026473C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_100261660(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, unint64_t, void), double a6)
{
  v9 = a2;
  if (qword_100501BC0 != -1)
  {
    swift_once();
    v9 = a2;
  }

  v10 = sub_10026179C(v9, a3, a4, a6);
  v12 = v11;
  sub_100069E2C(v10, v11);
  a5(v10, v12, 0);
  sub_10006A178(v10, v12);

  return sub_10006A178(v10, v12);
}

uint64_t sub_10026179C(uint64_t a1, uint64_t a2, NSString a3, double a4)
{
  v84 = a3;
  v5 = v4;
  v89 = a2;
  v7 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  __chkstk_darwin(v7 - 8);
  v79 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v80 = &v76 - v10;
  __chkstk_darwin(v11);
  v13 = &v76 - v12;
  v14 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v81 = *(v14 - 8);
  v82 = v14;
  __chkstk_darwin(v14);
  v78 = (&v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = (&v76 - v17);
  __chkstk_darwin(v19);
  v21 = (&v76 - v20);
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v5 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  *v26 = v27;
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22, v24);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  v30 = (*(v23 + 8))(v26, v22);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  strcpy(v85, "version");
  v85[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v31 = sub_10008CA7C(&v86), (v32 & 1) == 0))
  {
    sub_100092F28(&v86);
    goto LABEL_11;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v31, v88);
  sub_100092F28(&v86);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v42 = 0x20676E697373694DLL;
    v43 = 0xEF6E6F6973726576;
LABEL_12:
    sub_10030990C(0, 1, v42, v43, 0);
    swift_willThrow();
    return v5;
  }

  v34 = v85[0];
  v33 = v85[1];
  strcpy(v85, "publicKeyHash");
  HIWORD(v85[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v35 = sub_10008CA7C(&v86), (v36 & 1) == 0))
  {

    sub_100092F28(&v86);
LABEL_15:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v42 = 0xD000000000000018;
    v43 = 0x80000001004694F0;
    goto LABEL_12;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v35, v88);
  sub_100092F28(&v86);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_15;
  }

  v77._countAndFlagsBits = v34;
  v77._object = v33;
  v38 = v85[0];
  v37 = v85[1];

  v39 = v83;
  v40 = v84;
  sub_10025FD3C(v89, v84, v38, v37);
  if (v39)
  {

    swift_bridgeObjectRelease_n();
    return v5;
  }

  v45 = v41;
  v83 = v37;

  if (v45 >> 62)
  {
    v46 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v46)
  {
    v53 = v83;

    v5 = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v86 = 0;
    v87 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v86 = 0xD00000000000001CLL;
    v87 = 0x8000000100469510;
    v54._countAndFlagsBits = v89;
    v54._object = v40;
    String.append(_:)(v54);
    v55._countAndFlagsBits = 543451424;
    v55._object = 0xE400000000000000;
    String.append(_:)(v55);
    v56._countAndFlagsBits = v38;
    v56._object = v53;
    String.append(_:)(v56);

    v42 = v86;
    v43 = v87;
    goto LABEL_12;
  }

  if ((v45 & 0xC000000000000001) != 0)
  {
    v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:

    v47 = String._bridgeToObjectiveC()();
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
    if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
    {

      v52 = v89;
LABEL_29:

      sub_100265BA4(v52 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, v13, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
      v26 = v81;
      v29 = v82;
      (*(v81 + 4))(v21, v13, v82);
      v60 = sub_1000B9698(a1, v21);
LABEL_43:
      v5 = v60;
      goto LABEL_44;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v58 = v47;
    v84 = v47;
    v59 = v58;

    if (v57)
    {

      v52 = v89;
      goto LABEL_29;
    }

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;
    if (v61 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v63 == v64)
    {

      v29 = v82;
      v65 = v89;
    }

    else
    {
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v29 = v82;
      v65 = v89;
      if ((v66 & 1) == 0)
      {
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        if (v68 == v71 && v70 == v73)
        {
        }

        else
        {
          v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v74 & 1) == 0)
          {
            v5 = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
            v86 = 0;
            v87 = 0xE000000000000000;
            _StringGuts.grow(_:)(20);

            v86 = 0xD000000000000012;
            v87 = 0x80000001004694D0;
            String.append(_:)(v77);

            sub_10030990C(0, 1, v86, v87, 0);
            swift_willThrow();

            return v5;
          }
        }

        v21 = v78;
        v75 = v79;

        sub_100265BA4(v89 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, v75, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
        v26 = v81;
        (*(v81 + 4))(v21, v75, v29);
        v60 = sub_10033C518(a1, v21);
        goto LABEL_43;
      }
    }

    v67 = v80;
    sub_100265BA4(v65 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, v80, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
    v26 = v81;
    (*(v81 + 4))(v18, v67, v29);
    v30 = sub_1001A8910(a1, v18);
LABEL_37:
    v5 = v30;
    v21 = v18;
LABEL_44:
    (*(v26 + 1))(v21, v29);

    return v5;
  }

  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v89 = *(v45 + 32);

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002622A8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v29 = a5;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v28 - 8);
  __chkstk_darwin(v28);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v30 = *(v15 - 8);
  v31 = v15;
  __chkstk_darwin(v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501BC0 != -1)
  {
    swift_once();
  }

  v18 = *(qword_1005084B8 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  v19 = swift_allocObject();
  v19[2] = v7;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v20 = v29;
  v19[6] = a4;
  v19[7] = v20;
  v19[8] = v27;
  v19[9] = a7;
  aBlock[4] = sub_100264828;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CD480;
  v21 = _Block_copy(aBlock);
  v22 = v18;
  sub_100069E2C(a1, a2);
  v23 = a3;
  sub_100069E2C(a4, v20);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10026473C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  v24 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v32 + 8))(v14, v24);
  (*(v30 + 8))(v17, v31);
}

void sub_1002625FC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(id, void))
{
  v12 = a2;
  if (qword_100501BC0 != -1)
  {
    swift_once();
    v12 = a2;
  }

  sub_100262794(v12, a3, a4, a5, a6);
  v13 = objc_allocWithZone(NSDictionary);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithDictionary:isa];

  a7(v16, 0);
}

char *sub_100262794(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v5 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11, v13);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {

    return sub_1000B8D94(a1, a2, a4, a5);
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    return sub_1000B8D94(a1, a2, a4, a5);
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {

    return sub_1001A7BEC(a1, a2, a4, a5);
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    return sub_1001A7BEC(a1, a2, a4, a5);
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {

    return sub_10033CCB4(a1, a2, a4, a5);
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    return sub_10033CCB4(a1, a2, a4, a5);
  }

  sub_10009393C(0, &qword_10050AA20, NSError_ptr);
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v36._object = 0x80000001004694D0;
  v36._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v36);
  v40 = a3;
  type metadata accessor for SESPrivacyEncryptionScheme(0);
  _print_unlocked<A, B>(_:_:)();
  sub_10030990C(0, 1, v38, v39, 0);
  return swift_willThrow();
}

id sub_100262C54()
{
  result = [objc_allocWithZone(type metadata accessor for SESPrivacyKeyImplementation(0)) init];
  qword_1005084B8 = result;
  return result;
}

uint64_t sub_100262C88(double a1)
{
  v2 = v1;
  v26 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation(0);
  __chkstk_darwin(v26);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100265BA4(v2 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, v11, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
  (*(v6 + 32))(v8, v11, v5);
  v12 = P256.KeyAgreement.PrivateKey.derRepresentation.getter();
  v25 = v13;
  (*(v6 + 8))(v8, v5);
  v15 = *(v2 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier);
  v14 = *(v2 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier + 8);
  v16 = *(v2 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier);
  v17 = *(v2 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier + 8);
  v18 = OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_creationDate;
  v19 = *(v26 + 32);
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 16))(v4 + v19, v2 + v18, v20);
  v21 = v12;
  *v4 = v12;
  v22 = v25;
  v4[1] = v25;
  v4[2] = v15;
  v4[3] = v14;
  v4[4] = v16;
  v4[5] = v17;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  sub_100069E2C(v21, v22);

  PropertyListEncoder.init()();
  sub_10026473C(&qword_1005086B0, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation, &unk_100410D38);
  v23 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100264930(v4, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation);
  sub_10006A178(v21, v22);

  return v23;
}

void *sub_100262F9C()
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v31 = 0;
  *&v29 = 0;
  v7 = [v0 copyMultipleItemData:isa outDatas:&v31 error:&v29];

  v8 = v29;
  v9 = v31;
  if (v7)
  {
    if (v31)
    {
      v10 = v29;
      v11 = v9;
      v12 = [v11 count];
      v28 = _swiftEmptyArrayStorage;
      sub_10019F4A4(0, v12 & ~(v12 >> 63), 0);
      v7 = v28;
      NSArray.makeIterator()();
      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_20;
      }

      v26 = v3;
      v27 = v1;
      v25 = v11;
      if (v12)
      {
        sub_10026473C(&qword_100503200, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
        while (1)
        {
          dispatch thunk of IteratorProtocol.next()();
          if (!v32)
          {
            break;
          }

          sub_1000754F0(&v31, &v29);
          swift_dynamicCast();
          sub_1000752F4(&v31);
          v13 = v33;
          v28 = v7;
          v15 = v7[2];
          v14 = v7[3];
          if (v15 >= v14 >> 1)
          {
            v24 = v33;
            sub_10019F4A4((v14 > 1), v15 + 1, 1);
            v13 = v24;
            v7 = v28;
          }

          v7[2] = v15 + 1;
          *&v7[2 * v15 + 4] = v13;
          if (!--v12)
          {
            goto LABEL_12;
          }
        }

LABEL_20:
        __break(1u);
      }

LABEL_12:
      sub_10026473C(&qword_100503200, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
      dispatch thunk of IteratorProtocol.next()();
      while (v30)
      {
        sub_100075D50(&v29, &v31);
        sub_100075D50(&v31, &v29);
        swift_dynamicCast();
        v18 = v33;
        v28 = v7;
        v20 = v7[2];
        v19 = v7[3];
        if (v20 >= v19 >> 1)
        {
          v24 = v33;
          sub_10019F4A4((v19 > 1), v20 + 1, 1);
          v18 = v24;
          v7 = v28;
        }

        v7[2] = v20 + 1;
        *&v7[2 * v20 + 4] = v18;
        dispatch thunk of IteratorProtocol.next()();
      }

      (*(v26 + 8))(v5, v2);
      v21 = v25;

      sub_100075768(&v29, &qword_100502420, &qword_10040F310);
    }

    else
    {
      sub_10009393C(0, &qword_10050AA20, NSError_ptr);
      v22 = v8;
      sub_10030990C(0, 1, 0xD000000000000033, 0x8000000100469430, 0);
      swift_willThrow();
    }
  }

  else
  {
    v16 = v29;
    v17 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v7;
}

Swift::Int sub_100263420()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10026347C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002634C4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1004C4A40, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1002635DC(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100508778, &qword_100410D90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000752B0(a1, a1[3]);
  sub_100265AFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  sub_100265C0C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = v3[1];
    v12 = *v3;
    v13 = v9;
    v11[15] = 1;
    sub_100069E2C(v12, v9);
    sub_1000B8890();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v12, v13);
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation(0);
    LOBYTE(v12) = 4;
    type metadata accessor for Date();
    sub_10026473C(&qword_1005062A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10026383C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for Date();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100068FC4(&qword_100508760, &qword_100410D88);
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation(0);
  __chkstk_darwin(v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v32 = a1;
  sub_1000752B0(a1, v12);
  sub_100265AFC();
  v13 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_1000752F4(v32);
  }

  v14 = v11;
  v15 = v5;
  v16 = v29;
  LOBYTE(v33) = 0;
  sub_100265B50();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = 1;
  sub_1000B87D4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v16;
  v18 = v14;
  v19 = v34;
  *v18 = v33;
  v18[1] = v19;
  LOBYTE(v33) = 2;
  v18[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[3] = v20;
  v31 = v20;
  LOBYTE(v33) = 3;
  v26[1] = 0;
  v18[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[5] = v21;
  LOBYTE(v33) = 4;
  sub_10026473C(&qword_100506270, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v22 = v15;
  v23 = v18;
  v24 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v8, v24);
  (*(v27 + 32))(v23 + *(v9 + 32), v22, v3);
  sub_100265BA4(v23, v28, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation);
  sub_1000752F4(v32);
  return sub_100264930(v23, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation);
}

uint64_t sub_100263CA4()
{
  v1 = *v0;
  v2 = 0x6570795479656BLL;
  v3 = 0x746E65644979656BLL;
  v4 = 0x65644970756F7267;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461657263;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4B65746176697270;
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

uint64_t sub_100263D6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100265DCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100263D94(uint64_t a1)
{
  v2 = sub_100265AFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100263DD0(uint64_t a1)
{
  v2 = sub_100265AFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100263E3C(__n128 a1)
{
  sub_100264930(v1 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);

  v2 = OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_creationDate;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

id sub_100263F24()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v17 = OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue;
  v12 = sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  v16[1] = "populated no output";
  v16[2] = v12;
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
  DispatchQoS.init(qosClass:relativePriority:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  v20 = _swiftEmptyArrayStorage;
  sub_10026473C(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_10006A224(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainWrapper;
  *&v1[v13] = [objc_opt_self() sharedInstance];
  v14 = &v1[OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup];
  *v14 = 0xD000000000000028;
  *(v14 + 1) = 0x80000001004694A0;
  Logger.init(subsystem:category:)();
  v19.receiver = v1;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "init");
}

uint64_t sub_1002643DC(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002644B8(uint64_t a1)
{
  result = type metadata accessor for P256.KeyAgreement.PrivateKey();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100264590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002645FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100264698(uint64_t a1)
{
  result = type metadata accessor for P256.KeyAgreement.PrivateKey();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_10026473C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100264784()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002647D8()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));

  sub_10006A178(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10026483C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10026485C()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1002648DC()
{
  result = qword_1005086A8;
  if (!qword_1005086A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005086A8);
  }

  return result;
}

uint64_t sub_100264930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100264990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002649FC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100264A48()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100264AA4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t *sub_100264B1C(void *a1, uint64_t a2)
{
  v94 = a2;
  object = a1;
  v101 = type metadata accessor for Date();
  v93 = *(v101 - 8);
  __chkstk_darwin(v101);
  v90 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  __chkstk_darwin(v4 - 8);
  v89 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA256();
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = type metadata accessor for SHA256Digest();
  v86 = *(countAndFlagsBits - 8);
  __chkstk_darwin(countAndFlagsBits);
  v83 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v9 = *(v79 - 8);
  __chkstk_darwin(v79);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v84 = *(v87 - 8);
  __chkstk_darwin(v87);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = v2;
  v19 = *(v2 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14, v16);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  P256.KeyAgreement.PrivateKey.init()();
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v22 = P256.KeyAgreement.PublicKey.x963Representation.getter();
  v24 = v23;
  (*(v9 + 8))(v11, v79);
  sub_10026473C(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  v25 = v80;
  v26 = v82;
  dispatch thunk of HashFunction.init()();
  sub_100069E2C(v22, v24);
  v27 = v85;
  sub_100357FC4(v22, v24, v25);
  v85 = v27;
  sub_10006A178(v22, v24);
  v28 = v83;
  dispatch thunk of HashFunction.finalize()();
  (*(v81 + 8))(v25, v26);
  v29 = countAndFlagsBits;
  v99 = countAndFlagsBits;
  v100 = sub_10026473C(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v30 = sub_1000B9634(&v97);
  v31 = v86;
  (*(v86 + 16))(v30, v28, v29);
  sub_1000752B0(&v97, v99);
  v32 = v85;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v85 = v32;
  (*(v31 + 8))(v28, v29);
  v33 = v95;
  v34 = v96;
  sub_1000752F4(&v97);
  sub_10006A178(v22, v24);
  v35 = Data.base64EncodedString(options:)(0);
  countAndFlagsBits = v35._countAndFlagsBits;
  sub_10006A178(v33, v34);
  v36 = v84;
  v37 = v89;
  v38 = v87;
  (*(v84 + 16))(v89, v13, v87);
  v39 = v90;
  static Date.now.getter();
  (*(v36 + 8))(v13, v38);
  type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey(0);
  v40 = swift_allocObject();
  sub_100264990(v37, v40 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey);
  *(v40 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier) = v35;
  v41 = (v40 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier);
  v42 = object;
  v43 = v93;
  v44 = v94;
  *v41 = object;
  v41[1] = v44;
  (*(v43 + 32))(v40 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_creationDate, v39, v101);
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040F420;
  v97 = kSecClass;
  type metadata accessor for CFString(0);
  v47 = v46;
  sub_10026473C(&qword_1005021B0, type metadata accessor for CFString, &unk_1004097C8);

  v48 = kSecClass;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = v47;
  *(inited + 72) = kSecClassGenericPassword;
  v97 = kSecAttrAccessible;
  v49 = kSecClassGenericPassword;
  v50 = kSecAttrAccessible;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = v47;
  *(inited + 144) = kSecAttrAccessibleAfterFirstUnlock;
  v97 = kSecAttrAccount;
  v51 = kSecAttrAccessibleAfterFirstUnlock;
  v52 = kSecAttrAccount;
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v42;
  *(inited + 224) = v44;
  v97 = kSecAttrService;

  v53 = kSecAttrService;
  AnyHashable.init<A>(_:)();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = countAndFlagsBits;
  *(inited + 296) = v35._object;
  v97 = kSecAttrAccessGroup;
  v54 = kSecAttrAccessGroup;
  AnyHashable.init<A>(_:)();
  v56 = *(v92 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup);
  v55 = *(v92 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup + 8);
  *(inited + 384) = &type metadata for String;
  *(inited + 360) = v56;
  *(inited + 368) = v55;
  v97 = kSecAttrSynchronizable;

  v57 = kSecAttrSynchronizable;
  AnyHashable.init<A>(_:)();
  *(inited + 456) = &type metadata for Bool;
  *(inited + 432) = 1;
  v97 = kSecValueData;
  v58 = kSecValueData;
  AnyHashable.init<A>(_:)();
  v59 = v85;
  v61 = sub_100262C88(v60);
  if (v59)
  {

    sub_100092F28(inited + 464);
    v63 = &qword_100502C48;
    sub_100075768(inited + 392, &qword_100502C48, &qword_10040B2D0);
    sub_100075768(inited + 320, &qword_100502C48, &qword_10040B2D0);
    sub_100075768(inited + 248, &qword_100502C48, &qword_10040B2D0);
    sub_100075768(inited + 176, &qword_100502C48, &qword_10040B2D0);
    sub_100075768(inited + 104, &qword_100502C48, &qword_10040B2D0);
    sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    return v63;
  }

  object = v35._object;
  v64 = v61;
  v65 = v62;
  isa = Data._bridgeToObjectiveC()().super.isa;
  result = sub_10009393C(0, &qword_100507150, NSData_ptr);
  *(inited + 528) = result;
  *(inited + 504) = isa;
  if (!kSecAttrSyncViewHint)
  {
    goto LABEL_13;
  }

  v97 = kSecAttrSyncViewHint;
  v67 = kSecAttrSyncViewHint;
  result = AnyHashable.init<A>(_:)();
  if (kSecAttrViewHintApplePay)
  {
    v68 = kSecAttrViewHintApplePay;
    sub_10006A178(v64, v65);
    *(inited + 600) = v47;
    *(inited + 576) = v68;
    sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    v69 = *(v92 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainWrapper);
    v70 = Dictionary._bridgeToObjectiveC()().super.isa;

    v71 = [v69 addItem:v70];

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 67109120;
      *(v74 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v72, v73, "Added keychain item %d", v74, 8u);
    }

    v75 = v101;
    v76 = v93;
    if (v71)
    {
      v77 = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
      v97 = 0;
      v98 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v97 = 0xD00000000000001ALL;
      v98 = 0x8000000100469550;
      LODWORD(v95) = v71;
      v78._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v78);

      v63 = v77;
      sub_10030990C(0, 1, v97, v98, 0);
      swift_willThrow();
    }

    else
    {
      v63 = sub_1002605F8();
      swift_setDeallocating();
      sub_100264930(v40 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);

      (*(v76 + 8))(v40 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_creationDate, v75);
      swift_deallocClassInstance();
    }

    return v63;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1002657D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100265890(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100265934(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SESPrivacyKeyImplementation.PrivacyKey.PrivateKeyType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SESPrivacyKeyImplementation.PrivacyKey.PrivateKeyType(_WORD *result, int a2, int a3)
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

unint64_t sub_100265AA8()
{
  result = qword_100508758;
  if (!qword_100508758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508758);
  }

  return result;
}

unint64_t sub_100265AFC()
{
  result = qword_100508768;
  if (!qword_100508768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508768);
  }

  return result;
}

unint64_t sub_100265B50()
{
  result = qword_100508770;
  if (!qword_100508770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508770);
  }

  return result;
}

uint64_t sub_100265BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100265C0C()
{
  result = qword_100508780;
  if (!qword_100508780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508780);
  }

  return result;
}

unint64_t sub_100265C60()
{
  result = qword_100508788;
  if (!qword_100508788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508788);
  }

  return result;
}

unint64_t sub_100265CC8()
{
  result = qword_100508790;
  if (!qword_100508790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508790);
  }

  return result;
}

unint64_t sub_100265D20()
{
  result = qword_100508798;
  if (!qword_100508798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508798);
  }

  return result;
}

unint64_t sub_100265D78()
{
  result = qword_1005087A0;
  if (!qword_1005087A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005087A0);
  }

  return result;
}

uint64_t sub_100265DCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795479656BLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEE00617461447965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65644979656BLL && a2 == 0xED00007265696669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65644970756F7267 && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
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

uint64_t sub_10026618C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002661E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PresentmentInfo(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  __chkstk_darwin(v12);
  v44 = &v38 - v13;
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for UUID();
  v39 = *(v17 - 8);
  v40 = v17;
  v18 = *(v39 + 16);
  v41 = a1;
  v42 = a3;
  result = v18(a3, a1);
  v20 = *(a2 + 16);
  v45 = v20;
  if (v20)
  {
    v21 = 0;
    v22 = _swiftEmptyArrayStorage;
    v43 = v6;
    while (v21 < *(a2 + 16))
    {
      v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v24 = *(v7 + 72);
      sub_100269E18(a2 + v23 + v24 * v21, v16, type metadata accessor for PresentmentInfo);
      if (v16[*(v6 + 20)])
      {
        result = sub_100269E80(v16, type metadata accessor for PresentmentInfo);
      }

      else
      {
        sub_10026AC40(v16, v44, type metadata accessor for PresentmentInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019F8F4(0, v22[2] + 1, 1);
          v22 = v47;
        }

        v27 = v22[2];
        v26 = v22[3];
        if (v27 >= v26 >> 1)
        {
          sub_10019F8F4((v26 > 1), v27 + 1, 1);
          v22 = v47;
        }

        v22[2] = v27 + 1;
        result = sub_10026AC40(v44, v22 + v23 + v27 * v24, type metadata accessor for PresentmentInfo);
        v6 = v43;
        v20 = v45;
      }

      if (v20 == ++v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_13:
  v28 = v22[2];

  result = type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount(0);
  v44 = result;
  *(v42 + *(result + 20)) = v28;
  v29 = v45;
  if (v45)
  {
    v30 = 0;
    v31 = _swiftEmptyArrayStorage;
    while (v30 < *(a2 + 16))
    {
      v32 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v33 = *(v7 + 72);
      sub_100269E18(a2 + v32 + v33 * v30, v11, type metadata accessor for PresentmentInfo);
      if (v11[*(v6 + 20)] == 1)
      {
        sub_10026AC40(v11, v46, type metadata accessor for PresentmentInfo);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v47 = v31;
        if ((v34 & 1) == 0)
        {
          sub_10019F8F4(0, v31[2] + 1, 1);
          v31 = v47;
        }

        v36 = v31[2];
        v35 = v31[3];
        if (v36 >= v35 >> 1)
        {
          sub_10019F8F4((v35 > 1), v36 + 1, 1);
          v31 = v47;
        }

        v31[2] = v36 + 1;
        result = sub_10026AC40(v46, v31 + v32 + v36 * v33, type metadata accessor for PresentmentInfo);
        v29 = v45;
      }

      else
      {
        result = sub_100269E80(v11, type metadata accessor for PresentmentInfo);
      }

      if (v29 == ++v30)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    __break(1u);
    return result;
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_25:
  (*(v39 + 8))(v41, v40);

  v37 = v31[2];

  *(v42 + *(v44 + 24)) = v37;
  return result;
}

uint64_t sub_100266660(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000016;
  v3 = *a1;
  v4 = 0x8000000100460D30;
  if (v3 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000100460D30;
  }

  else
  {
    v6 = 0x8000000100460D50;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000019;
    v4 = 0x8000000100460D50;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100266738()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002667D4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10026685C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002668F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026A43C(*a1);
  *a2 = result;
  return result;
}

void sub_100266924(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xD000000000000016;
  v5 = 0x8000000100460D30;
  if (v2 != 1)
  {
    v4 = 0xD000000000000019;
    v5 = 0x8000000100460D50;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10026697C()
{
  v0 = sub_100266D20();
  v1 = *(v0 + 16);
  if (v1)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_10019F938(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v3 = v0 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v6 = *(v0 + 36);
    v27 = v1;
    do
    {
      if (v4 < 0 || v4 >= 1 << *(v0 + 32))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_31;
      }

      if (v6 != *(v0 + 36))
      {
        goto LABEL_32;
      }

      v9 = *(*(v0 + 48) + v4);
      sub_1000754F0(*(v0 + 56) + 32 * v4, v36);
      v32 = v9;
      sub_100075D50(v36, &v33);
      sub_1000938D4(&v32, v30, &qword_100508878, &qword_100410F60);
      if (v30[0])
      {
        if (v30[0] == 1)
        {
          v10 = 0xD000000000000016;
          v11 = 0x8000000100460D30;
        }

        else
        {
          v10 = 0xD000000000000019;
          v11 = 0x8000000100460D50;
        }
      }

      else
      {
        v11 = 0xE200000000000000;
        v10 = 25705;
      }

      *&v37 = v10;
      *(&v37 + 1) = v11;
      *(&v28[0] + 1) = v33;
      v28[1] = v34;
      v29 = v35;
      sub_100075D50((v28 + 8), v38);
      sub_1000752F4(v31);
      v39 = v2;
      v13 = v2[2];
      v12 = v2[3];
      if (v13 >= v12 >> 1)
      {
        sub_10019F938((v12 > 1), v13 + 1, 1);
        v2 = v39;
      }

      v2[2] = v13 + 1;
      v14 = &v2[6 * v13];
      v15 = v37;
      v16 = v38[1];
      v14[3] = v38[0];
      v14[4] = v16;
      v14[2] = v15;
      v7 = 1 << *(v0 + 32);
      if (v4 >= v7)
      {
        goto LABEL_33;
      }

      v3 = v0 + 64;
      v17 = *(v0 + 64 + 8 * v8);
      if ((v17 & (1 << v4)) == 0)
      {
        goto LABEL_34;
      }

      if (v6 != *(v0 + 36))
      {
        goto LABEL_35;
      }

      v18 = v17 & (-2 << (v4 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v0 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1000937D4(v4, v6, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_1000937D4(v4, v6, 0);
      }

LABEL_4:
      ++v5;
      v4 = v7;
    }

    while (v5 != v27);

    if (!v2[2])
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_28:
      v24 = _swiftEmptyDictionarySingleton;
      goto LABEL_29;
    }
  }

  sub_100068FC4(&unk_100504000, &unk_10040B350);
  v24 = static _DictionaryStorage.allocate(capacity:)();
LABEL_29:
  *&v37 = v24;

  sub_1002699FC(v25, 1, &v37);

  return v37;
}

unint64_t sub_100266D20()
{
  sub_100068FC4(&qword_100508880, &qword_100410F68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = 0;
  v2 = UUID.uuidString.getter();
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  *(inited + 72) = 1;
  v4 = type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount(0);
  v5 = *(v0 + *(v4 + 20));
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = v5;
  *(inited + 112) = 2;
  v6 = *(v0 + *(v4 + 24));
  *(inited + 144) = &type metadata for Int;
  *(inited + 120) = v6;
  v7 = sub_100091FB0(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502CB8, &qword_100410F70);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_100266E10(void *a1)
{
  v3 = sub_100068FC4(&qword_100508A48, &qword_100411348);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000752B0(a1, a1[3]);
  sub_10026B434();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_10026B2CC(&qword_1005089F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100266FF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for UUID();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v24 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100068FC4(&qword_100508A38, &qword_100411340);
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000752B0(a1, a1[3]);
  sub_10026B434();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  v12 = v11;
  v13 = v21;
  v27 = 0;
  sub_10026B2CC(&qword_100508A20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *(v13 + 32);
  v16 = v24;
  v24 = v4;
  v15(v12, v16, v4);
  v26 = 1;
  *(v12 + *(v9 + 20)) = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 2;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v22 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v17;
  sub_100269E18(v12, v20, type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount);
  sub_1000752F4(a1);
  return sub_100269E80(v12, type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount);
}

unint64_t sub_100267388()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1002673DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10026A488(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100267404(uint64_t a1)
{
  v2 = sub_10026B434();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100267440(uint64_t a1)
{
  v2 = sub_10026B434();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1002674B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10026757C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10026762C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002676EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026A5A4(*a1);
  *a2 = result;
  return result;
}

void sub_10026771C(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x64496D616461;
  v4 = 0xD000000000000013;
  v5 = 0x8000000100460D80;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000015;
    v5 = 0x8000000100460DA0;
  }

  if (*v1)
  {
    v3 = 0x656D614E707061;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10026779C()
{
  v0 = sub_100267B68();
  v1 = *(v0 + 16);
  if (v1)
  {
    v40 = _swiftEmptyArrayStorage;
    sub_10019F938(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v3 = v0 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v6 = *(v0 + 36);
    v28 = v1;
    do
    {
      if (v4 < 0 || v4 >= 1 << *(v0 + 32))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v9 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_33;
      }

      if (v6 != *(v0 + 36))
      {
        goto LABEL_34;
      }

      v10 = *(*(v0 + 48) + v4);
      sub_1000754F0(*(v0 + 56) + 32 * v4, v37);
      v33 = v10;
      sub_100075D50(v37, &v34);
      sub_1000938D4(&v33, v31, &qword_100508868, &qword_100410F48);
      if (v31[0] > 1u)
      {
        if (v31[0] == 2)
        {
          v12 = 0xD000000000000013;
          v11 = 0x8000000100460D80;
        }

        else
        {
          v12 = 0xD000000000000015;
          v11 = 0x8000000100460DA0;
        }
      }

      else if (v31[0])
      {
        v11 = 0xE700000000000000;
        v12 = 0x656D614E707061;
      }

      else
      {
        v11 = 0xE600000000000000;
        v12 = 0x64496D616461;
      }

      *&v38 = v12;
      *(&v38 + 1) = v11;
      *(&v29[0] + 1) = v34;
      v29[1] = v35;
      v30 = v36;
      sub_100075D50((v29 + 8), v39);
      sub_1000752F4(v32);
      v40 = v2;
      v14 = v2[2];
      v13 = v2[3];
      if (v14 >= v13 >> 1)
      {
        sub_10019F938((v13 > 1), v14 + 1, 1);
        v2 = v40;
      }

      v2[2] = v14 + 1;
      v15 = &v2[6 * v14];
      v16 = v38;
      v17 = v39[1];
      v15[3] = v39[0];
      v15[4] = v17;
      v15[2] = v16;
      v7 = 1 << *(v0 + 32);
      if (v4 >= v7)
      {
        goto LABEL_35;
      }

      v3 = v0 + 64;
      v18 = *(v0 + 64 + 8 * v9);
      if ((v18 & (1 << v4)) == 0)
      {
        goto LABEL_36;
      }

      if (v6 != *(v0 + 36))
      {
        goto LABEL_37;
      }

      v19 = v18 & (-2 << (v4 & 0x3F));
      if (v19)
      {
        v7 = __clz(__rbit64(v19)) | v4 & 0x7FFFFFFFFFFFFFC0;
        v8 = v28;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v8 = v28;
        v22 = (v0 + 72 + 8 * v9);
        while (v21 < (v7 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1000937D4(v4, v6, 0);
            v7 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_1000937D4(v4, v6, 0);
      }

LABEL_4:
      ++v5;
      v4 = v7;
    }

    while (v5 != v8);

    if (!v2[2])
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_30:
      v25 = _swiftEmptyDictionarySingleton;
      goto LABEL_31;
    }
  }

  sub_100068FC4(&unk_100504000, &unk_10040B350);
  v25 = static _DictionaryStorage.allocate(capacity:)();
LABEL_31:
  *&v38 = v25;

  sub_1002699FC(v26, 1, &v38);

  return v38;
}

unint64_t sub_100267B68()
{
  v1 = type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_100508870, &unk_100410F50);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_1004099F0;
  *(inited + 64) = &type metadata for UInt64;
  v6 = v0[1];
  *(inited + 40) = *v0;
  *(inited + 72) = 1;
  *(inited + 104) = &type metadata for String;
  v7 = v0[2];
  v8 = v0[3];
  *(inited + 80) = v6;
  *(inited + 88) = v7;
  *(inited + 112) = 2;
  *(inited + 144) = &type metadata for UInt64;
  *(inited + 120) = v8;
  *(inited + 152) = 3;
  v9 = v0[4];
  v10 = *(v9 + 16);
  if (v10)
  {
    v19[1] = inited + 32;
    v20 = _swiftEmptyArrayStorage;

    sub_10019F4C4(0, v10, 0);
    v11 = v20;
    v12 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    do
    {
      sub_100269E18(v12, v4, type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount);
      v14 = sub_10026697C();
      sub_100269E80(v4, type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount);
      v20 = v11;
      v16 = v11[2];
      v15 = v11[3];
      if (v16 >= v15 >> 1)
      {
        sub_10019F4C4((v15 > 1), v16 + 1, 1);
        v11 = v20;
      }

      v11[2] = v16 + 1;
      v11[v16 + 4] = v14;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  *(inited + 184) = sub_100068FC4(&unk_100503EC0, &unk_100417130);
  *(inited + 160) = v11;
  v17 = sub_1000920D8(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502CA8, &qword_100409D88);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_100267DF4(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100508A78, &qword_100411360);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000752B0(a1, a1[3]);
  sub_10026B488();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 32);
    v10[15] = 3;
    sub_100068FC4(&qword_100508A60, &qword_100411358);
    sub_10026B4DC(&qword_100508A80, &qword_100508A88, &unk_1004111E8, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100268040()
{
  v1 = 0x64496D616461;
  v2 = 0x437972746E756F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x656D614E707061;
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

uint64_t sub_1002680C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10026A5F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002680EC(uint64_t a1)
{
  v2 = sub_10026B488();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100268128(uint64_t a1)
{
  v2 = sub_10026B488();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100268164@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10026A75C(a2, v6);
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

uint64_t sub_1002681C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100068FC4(&qword_100508888, &qword_100410F78);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SECPresentmentReport(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v34 - v17;
  v19 = [a1 reportUUID];
  if (v19)
  {
    v38 = v8;
    v20 = v19;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = [a1 rawPayload];
    if (v21)
    {
      v35 = v7;
      v36 = a1;
      v37 = a2;
      v22 = v21;
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_10026B2CC(&qword_100508890, type metadata accessor for SECPresentmentReport, &unk_1004112D8);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      sub_10006A178(v23, v25);

      v30 = *(v12 + 56);
      v30(v6, 0, 1, v11);
      sub_10026AC40(v6, v14, type metadata accessor for SECPresentmentReport);
      (*(v38 + 32))(v18, v10, v35);
      *&v18[*(v11 + 20)] = *&v14[*(v11 + 20)];
      v31 = *&v14[*(v11 + 24)];

      sub_100269E80(v14, type metadata accessor for SECPresentmentReport);
      *&v18[*(v11 + 24)] = v31;
      v32 = v37;
      sub_10026AC40(v18, v37, type metadata accessor for SECPresentmentReport);
      return (v30)(v32, 0, 1, v11);
    }

    (*(v38 + 8))(v10, v7);
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000958E4(v26, qword_10051B2C8);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Corrupted field in report database", v29, 2u);
  }

  return (*(v12 + 56))(a2, 1, 1, v11);
}

uint64_t sub_1002686A8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for PresentmentInfo(0);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = *a1;
    v14 = *(v9 + 72);
    v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = a3 + v26;
    v16 = _swiftEmptyArrayStorage;
    v27 = v5;
    do
    {
      sub_100269E18(v15, v11, type metadata accessor for PresentmentInfo);
      if (*&v11[*(v5 + 28)] == v13)
      {
        sub_10026AC40(v11, v7, type metadata accessor for PresentmentInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019F8F4(0, v16[2] + 1, 1);
          v16 = v28;
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          sub_10019F8F4((v18 > 1), v19 + 1, 1);
          v16 = v28;
        }

        v16[2] = v19 + 1;
        sub_10026AC40(v7, v16 + v26 + v19 * v14, type metadata accessor for PresentmentInfo);
        v5 = v27;
      }

      else
      {
        sub_100269E80(v11, type metadata accessor for PresentmentInfo);
      }

      v15 += v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v20 = v25;
  v21 = *v25;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((result & 1) == 0)
  {
    result = sub_10012FDE0(0, v21[2] + 1, 1, v21);
    v21 = result;
    *v20 = result;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    result = sub_10012FDE0((v23 > 1), v24 + 1, 1, v21);
    v21 = result;
    *v20 = result;
  }

  v21[2] = v24 + 1;
  v21[v24 + 4] = v16;
  return result;
}

uint64_t sub_100268954(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D617473656D6974;
  v4 = 0xEC00000079614470;
  if (v2 != 1)
  {
    v3 = 0x7461676572676761;
    v4 = 0xEA00000000007365;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x644974726F706572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6D617473656D6974;
  v8 = 0xEC00000079614470;
  if (*a2 != 1)
  {
    v7 = 0x7461676572676761;
    v8 = 0xEA00000000007365;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x644974726F706572;
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

Swift::Int sub_100268A70()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100268B20(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100268BBC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100268C68@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026B578(*a1);
  *a2 = result;
  return result;
}

void sub_100268C98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC00000079614470;
  v5 = 0x6D617473656D6974;
  if (v2 != 1)
  {
    v5 = 0x7461676572676761;
    v4 = 0xEA00000000007365;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x644974726F706572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100268D04()
{
  v0 = sub_1002690A8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_10019F938(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v3 = v0 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v6 = *(v0 + 36);
    v27 = v1;
    do
    {
      if (v4 < 0 || v4 >= 1 << *(v0 + 32))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_31;
      }

      if (v6 != *(v0 + 36))
      {
        goto LABEL_32;
      }

      v9 = *(*(v0 + 48) + v4);
      sub_1000754F0(*(v0 + 56) + 32 * v4, v36);
      v32 = v9;
      sub_100075D50(v36, &v33);
      sub_1000938D4(&v32, v30, &qword_100508858, &unk_100410F20);
      if (v30[0])
      {
        if (v30[0] == 1)
        {
          v10 = 0x6D617473656D6974;
          v11 = 0xEC00000079614470;
        }

        else
        {
          v11 = 0xEA00000000007365;
          v10 = 0x7461676572676761;
        }
      }

      else
      {
        v11 = 0xE800000000000000;
        v10 = 0x644974726F706572;
      }

      *&v37 = v10;
      *(&v37 + 1) = v11;
      *(&v28[0] + 1) = v33;
      v28[1] = v34;
      v29 = v35;
      sub_100075D50((v28 + 8), v38);
      sub_1000752F4(v31);
      v39 = v2;
      v13 = v2[2];
      v12 = v2[3];
      if (v13 >= v12 >> 1)
      {
        sub_10019F938((v12 > 1), v13 + 1, 1);
        v2 = v39;
      }

      v2[2] = v13 + 1;
      v14 = &v2[6 * v13];
      v15 = v37;
      v16 = v38[1];
      v14[3] = v38[0];
      v14[4] = v16;
      v14[2] = v15;
      v7 = 1 << *(v0 + 32);
      if (v4 >= v7)
      {
        goto LABEL_33;
      }

      v3 = v0 + 64;
      v17 = *(v0 + 64 + 8 * v8);
      if ((v17 & (1 << v4)) == 0)
      {
        goto LABEL_34;
      }

      if (v6 != *(v0 + 36))
      {
        goto LABEL_35;
      }

      v18 = v17 & (-2 << (v4 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v0 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1000937D4(v4, v6, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_1000937D4(v4, v6, 0);
      }

LABEL_4:
      ++v5;
      v4 = v7;
    }

    while (v5 != v27);

    if (!v2[2])
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_28:
      v24 = _swiftEmptyDictionarySingleton;
      goto LABEL_29;
    }
  }

  sub_100068FC4(&unk_100504000, &unk_10040B350);
  v24 = static _DictionaryStorage.allocate(capacity:)();
LABEL_29:
  *&v37 = v24;

  sub_1002699FC(v25, 1, &v37);

  return v37;
}

unint64_t sub_1002690A8()
{
  sub_100068FC4(&qword_100508860, &unk_100410F30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = 0;
  v2 = UUID.uuidString.getter();
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  *(inited + 72) = 1;
  v4 = type metadata accessor for SECPresentmentReport(0);
  v5 = *(v0 + *(v4 + 20));
  *(inited + 104) = &type metadata for Double;
  *(inited + 80) = v5;
  *(inited + 112) = 2;
  v6 = *(v0 + *(v4 + 24));
  v7 = *(v6 + 16);
  if (v7)
  {
    sub_10019F4C4(0, v7, 0);
    v8 = v6 + 64;
    do
    {

      v9 = sub_10026779C();

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10019F4C4((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      _swiftEmptyArrayStorage[v11 + 4] = v9;
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  *(inited + 144) = sub_100068FC4(&unk_100503EC0, &unk_100417130);
  *(inited + 120) = _swiftEmptyArrayStorage;
  v12 = sub_100092200(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C98, &qword_100410F40);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_100269288(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_1005089E8, &qword_100411328);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000752B0(a1, a1[3]);
  sub_10026B278();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for UUID();
  sub_10026B2CC(&qword_1005089F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for SECPresentmentReport(0);
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_100068FC4(&qword_100508A00, &qword_100411330);
    sub_10026B368(&qword_100508A08, sub_10026B314, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002694CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for UUID();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100068FC4(&qword_100508A18, &qword_100411338);
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SECPresentmentReport(0);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000752B0(a1, a1[3]);
  sub_10026B278();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  v19 = a1;
  v12 = v11;
  v13 = v21;
  v28 = 0;
  sub_10026B2CC(&qword_100508A20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v22;
  v15 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v12, v14, v4);
  v27 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v12 + *(v9 + 20)) = v16;
  sub_100068FC4(&qword_100508A00, &qword_100411330);
  v26 = 2;
  sub_10026B368(&qword_100508A28, sub_10026B3E0, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 8))(v8, v15);
  *(v12 + *(v9 + 24)) = v25;
  sub_100269E18(v12, v20, type metadata accessor for SECPresentmentReport);
  sub_1000752F4(v19);
  return sub_100269E80(v12, type metadata accessor for SECPresentmentReport);
}

uint64_t sub_1002698C4()
{
  v1 = 0x6D617473656D6974;
  if (*v0 != 1)
  {
    v1 = 0x7461676572676761;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644974726F706572;
  }
}

uint64_t sub_10026992C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10026B90C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100269954(uint64_t a1)
{
  v2 = sub_10026B278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100269990(uint64_t a1)
{
  v2 = sub_10026B278();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002699FC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_1000938D4(a1 + 32, &v46, &qword_100507D30, &unk_100409C90);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_100075D50(v48, v43);
  v9 = *a3;
  v10 = sub_10008C908(v8, v7);
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
    sub_10030A928(v15, a2 & 1);
    v10 = sub_10008C908(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_10031130C();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v49 = v18;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1000752F4(v43);
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_100075D50(v43, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_1000938D4(v25, &v46, &qword_100507D30, &unk_100409C90);
      v28 = v46;
      v27 = v47;
      v44 = v46;
      v45 = v47;
      sub_100075D50(v48, v43);
      v29 = *a3;
      v30 = sub_10008C908(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_10030A928(v34, 1);
        v30 = sub_10008C908(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_100075D50(v43, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  _StringGuts.grow(_:)(30);
  v41._object = 0x8000000100466020;
  v41._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v41);
  _print_unlocked<A, B>(_:_:)();
  v42._countAndFlagsBits = 39;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100269E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100269E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100269EE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v10)))));
      sub_1002686A8(&v14, a2, a3);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;
      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_11;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t *sub_100269FD8(uint64_t *a1)
{
  v2 = type metadata accessor for PresentmentInfo(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for UUID();
  v6 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = v37 - v10;
  v11 = a1[2];
  v12 = _swiftEmptyArrayStorage;
  v41 = a1;
  if (v11)
  {
    v40 = 0;
    v44 = _swiftEmptyArrayStorage;
    sub_10019F420(0, v11, 0);
    v12 = v44;
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    v42 = (v6 + 32);
    v43 = v14;
    v15 = v39;
    do
    {
      sub_100269E18(v13, v5, type metadata accessor for PresentmentInfo);
      (*(v6 + 16))(v8, v5, v15);
      sub_100269E80(v5, type metadata accessor for PresentmentInfo);
      v44 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_10019F420((v16 > 1), v17 + 1, 1);
        v12 = v44;
      }

      v12[2] = v17 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v8, v15);
      v13 = v43 + v13;
      --v11;
    }

    while (v11);
  }

  v18 = sub_1000E0348(v12);

  v19 = v18 + 56;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 56);
  v23 = (v20 + 63) >> 6;
  v37[0] = v6 + 8;
  v37[1] = v6 + 16;

  v40 = v18;

  v24 = 0;
  v25 = _swiftEmptyDictionarySingleton;
  while (v22)
  {
    v43 = v25;
    v26 = v24;
LABEL_15:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = v39;
    v30 = v38;
    v31 = (*(v6 + 16))(v38, *(v40 + 48) + *(v6 + 72) * (v28 | (v26 << 6)), v39);
    v42 = v37;
    __chkstk_darwin(v31);
    v37[-2] = v30;
    v32 = v41;

    sub_10032A878(sub_10026A40C, &v37[-4], v32);
    v34 = v33;
    v35 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v35;
    sub_100316B20(v34, v30, isUniquelyReferenced_nonNull_native);
    v25 = v44;
    (*(v6 + 8))(v30, v29);
  }

  result = v41;
  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      return v25;
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v43 = v25;
      v24 = v26;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10026A43C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004C4A78, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10026A488(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004695C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004695E0 == a2)
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

unint64_t sub_10026A5A4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004C4AE0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10026A5F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100469600 == a2)
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

uint64_t sub_10026A75C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100068FC4(&qword_100508A50, &qword_100411350);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_1000752B0(a1, a1[3]);
  sub_10026B488();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  v24 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v19 = v10;
  v22 = 2;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100068FC4(&qword_100508A60, &qword_100411358);
  v21 = 3;
  sub_10026B4DC(&qword_100508A68, &qword_100508A70, &unk_100411210, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v20;
  result = sub_1000752F4(a1);
  v15 = v18;
  v16 = v19;
  *a2 = v9;
  a2[1] = v16;
  a2[2] = v12;
  a2[3] = v15;
  a2[4] = v13;
  return result;
}

void *sub_10026A9F8(uint64_t a1)
{
  v2 = type metadata accessor for PresentmentInfo(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v16 = _swiftEmptyArrayStorage;
    sub_10019F958(0, v6, 0);
    v7 = v16;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_100269E18(v8, v5, type metadata accessor for PresentmentInfo);
      v10 = *&v5[*(v2 + 28)];
      sub_100269E80(v5, type metadata accessor for PresentmentInfo);
      v16 = v7;
      v12 = v7[2];
      v11 = v7[3];
      if (v12 >= v11 >> 1)
      {
        sub_10019F958((v11 > 1), v12 + 1, 1);
        v7 = v16;
      }

      v7[2] = v12 + 1;
      v7[v12 + 4] = v10;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v13 = sub_1000E21DC(v7);

  v16 = _swiftEmptyArrayStorage;

  sub_100269EE0(v13, &v16, a1);

  return v16;
}

uint64_t sub_10026ABD8(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100508888, &qword_100410F78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10026AC40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10026ACCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10026AD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10026ADBC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10026AE38(uint64_t a1, int a2)
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

uint64_t sub_10026AE80(uint64_t result, int a2, int a3)
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

uint64_t sub_10026AF0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10026AFDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10026B094(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10026B120();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10026B120()
{
  if (!qword_100508998)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100508998);
    }
  }
}

unint64_t sub_10026B174()
{
  result = qword_1005089D0;
  if (!qword_1005089D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005089D0);
  }

  return result;
}

unint64_t sub_10026B1CC()
{
  result = qword_1005089D8;
  if (!qword_1005089D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005089D8);
  }

  return result;
}

unint64_t sub_10026B224()
{
  result = qword_1005089E0;
  if (!qword_1005089E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005089E0);
  }

  return result;
}

unint64_t sub_10026B278()
{
  result = qword_1005089F0;
  if (!qword_1005089F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005089F0);
  }

  return result;
}

uint64_t sub_10026B2CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10026B314()
{
  result = qword_100508A10;
  if (!qword_100508A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508A10);
  }

  return result;
}

uint64_t sub_10026B368(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_100508A00, &qword_100411330);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10026B3E0()
{
  result = qword_100508A30;
  if (!qword_100508A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508A30);
  }

  return result;
}

unint64_t sub_10026B434()
{
  result = qword_100508A40;
  if (!qword_100508A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508A40);
  }

  return result;
}

unint64_t sub_10026B488()
{
  result = qword_100508A58;
  if (!qword_100508A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508A58);
  }

  return result;
}

uint64_t sub_10026B4DC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_100508A60, &qword_100411358);
    sub_10026B2CC(a2, type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10026B578(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004C4B60, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10026B5F8()
{
  result = qword_100508A90;
  if (!qword_100508A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508A90);
  }

  return result;
}

unint64_t sub_10026B650()
{
  result = qword_100508A98;
  if (!qword_100508A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508A98);
  }

  return result;
}

unint64_t sub_10026B6A8()
{
  result = qword_100508AA0;
  if (!qword_100508AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AA0);
  }

  return result;
}

unint64_t sub_10026B700()
{
  result = qword_100508AA8;
  if (!qword_100508AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AA8);
  }

  return result;
}

unint64_t sub_10026B758()
{
  result = qword_100508AB0;
  if (!qword_100508AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AB0);
  }

  return result;
}

unint64_t sub_10026B7B0()
{
  result = qword_100508AB8;
  if (!qword_100508AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AB8);
  }

  return result;
}

unint64_t sub_10026B808()
{
  result = qword_100508AC0;
  if (!qword_100508AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AC0);
  }

  return result;
}

unint64_t sub_10026B860()
{
  result = qword_100508AC8;
  if (!qword_100508AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AC8);
  }

  return result;
}

unint64_t sub_10026B8B8()
{
  result = qword_100508AD0;
  if (!qword_100508AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AD0);
  }

  return result;
}

uint64_t sub_10026B90C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974726F706572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xEC00000079614470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xEA00000000007365)
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

uint64_t sub_10026BA34()
{
  v1 = v0;
  _StringGuts.grow(_:)(55);
  v2._countAndFlagsBits = 0x20444955556B6C74;
  v2._object = 0xEB00000000202020;
  String.append(_:)(v2);
  sub_100288788(*v1, v1[1]);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;

  sub_10028C190(8, v3, v5);

  v6 = static String._fromSubstring(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x55746E657261700ALL;
  v10._object = 0xEC00000020444955;
  String.append(_:)(v10);
  sub_100288788(v1[2], v1[3]);
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  sub_10028C190(8, v11, v13);

  v14 = static String._fromSubstring(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x44495344746C610ALL;
  v18._object = 0xEC00000020202020;
  String.append(_:)(v18);
  v19._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x6465776F6C6C610ALL;
  v20._object = 0xEC00000020444941;
  String.append(_:)(v20);
  sub_100288788(v1[6], v1[7]);
  v21 = BidirectionalCollection<>.joined(separator:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  return 0;
}

unint64_t sub_10026BCF4()
{
  v2 = v0;
  v20 = &_s16CommandCreateTLKVN;
  v21 = &off_1004CE458;
  v3 = swift_allocObject();
  v19[0] = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 32);
  sub_10026DE0C(&v22);
  v5 = v24;
  v6 = v25;
  v7 = v22;
  v8 = v23;
  v9 = v26;
  sub_10026FE10(v2, v18);
  v10 = sub_1001ADEA8(v19, v7, v8, v5, v6, v9);
  sub_1001AF6EC(v5, v6, v9);
  if (v1)
  {
    v29 = v27;
    sub_1001A3618(&v29);
    return sub_1000752F4(v19);
  }

  v28 = v27;
  sub_1001A3618(&v28);
  sub_1000752F4(v19);
  result = v10 + 5;
  if (__OFADD__(v10, 5))
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_1001303A8(result);
  v17 = result;
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 <= 0xFF)
  {
    Data._Representation.append(contentsOf:)();
    v20 = &_s16CommandCreateTLKVN;
    v21 = &off_1004CE458;
    v11 = swift_allocObject();
    v19[0] = v11;
    v12 = *(v2 + 16);
    *(v11 + 16) = *v2;
    *(v11 + 32) = v12;
    *(v11 + 48) = *(v2 + 32);
    sub_10026FE10(v2, v18);
    v14 = sub_1001A91D4(v19);
    v16 = v15;
    sub_1000752F4(v19);
    Data.append(_:)();
    sub_10006A178(v14, v16);
    return v17;
  }

LABEL_9:
  __break(1u);
  return result;
}

double sub_10026BEE8@<D0>(_OWORD *a2@<X8>)
{
  sub_10026E498(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

double sub_10026BF28@<D0>(_OWORD *a1@<X8>)
{
  sub_10026E0EC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_10026BF68@<D0>(_OWORD *a1@<X8>)
{
  sub_10026DE0C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_10026BFA8@<D0>(_OWORD *a1@<X8>)
{
  sub_10026C534(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

Swift::Int sub_10026BFE8()
{
  v1 = *(v0 + 64);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_10026C0A0(uint64_t a1)
{
  v2 = *(v1 + 64);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10026C12C()
{
  v1 = *(v0 + 64);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10026C1E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v14 = *(a1 + 56);
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v13 = *(a2 + 64);
  if (!sub_10008FB4C(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_10008FB4C(v2, v3, v6, v7) || !sub_10008FB4C(v4, v5, v8, v9))
  {
    return 0;
  }

  if (sub_10008FB4C(v15, v14, v10, v11))
  {
    return v16 ^ v13 ^ 1u;
  }

  return 0;
}

double sub_10026C2CC@<D0>(_OWORD *a1@<X8>)
{
  sub_10026E6AC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_10026C30C@<X0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  result = swift_allocObject();
  *(result + 16) = xmmword_100409900;
  strcpy((result + 32), "ptAttestation");
  *(result + 46) = -4864;
  *(result + 48) = 196;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = -64;
  *(result + 88) = _swiftEmptyArrayStorage;
  *(result + 96) = 0x7472654364736163;
  *(result + 104) = 0xEF65746163696669;
  *(result + 112) = 197;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = -64;
  *(result + 152) = _swiftEmptyArrayStorage;
  *a1 = 231;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026C3F8@<D0>(_OWORD *a2@<X8>)
{
  sub_10026E324(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

double sub_10026C438@<D0>(_OWORD *a1@<X8>)
{
  sub_10026E79C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_10026C478@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 48;
  *(v2 + 24) = 0;
  *&result = 3;
  *(v2 + 32) = xmmword_1004116A0;
  *(v2 + 48) = -64;
  *(v2 + 56) = _swiftEmptyArrayStorage;
  *a1 = 232;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x80;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026C4F4@<D0>(_OWORD *a1@<X8>)
{
  sub_10026DF2C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_10026C534@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10040AA50;
  *(v2 + 32) = 0x444955556B6C74;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 48) = 212;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = -64;
  *(v2 + 88) = &off_1004C3EF0;
  strcpy((v2 + 96), "parentTLKUUID");
  *(v2 + 110) = -4864;
  *(v2 + 112) = 213;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = -64;
  *(v2 + 152) = &off_1004C3F40;
  *(v2 + 160) = 0x44495344746C61;
  *(v2 + 168) = 0xE700000000000000;
  *(v2 + 176) = 193;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = -64;
  *(v2 + 216) = &off_1004C3F90;
  *(v2 + 224) = 0x416465776F6C6C61;
  *(v2 + 232) = 0xEA00000000004449;
  *(v2 + 240) = 214;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 272) = -64;
  *(v2 + 280) = &off_1004C3FE0;
  *(v2 + 288) = 0xD000000000000011;
  *(v2 + 296) = 0x8000000100469620;
  *(v2 + 304) = 215;
  *(v2 + 312) = 0;
  *&result = 2;
  *(v2 + 320) = xmmword_1004116B0;
  *(v2 + 336) = -64;
  *(v2 + 344) = _swiftEmptyArrayStorage;
  *a1 = 225;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_10026C6C4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *v21 = 4;
    *(v21 + 24) = 3;
    swift_willThrow();
  }

  v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_33;
  }

  result = sub_10008C908(0x444955556B6C74, 0xE700000000000000);
  if ((v4 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = *(*(v2 + 56) + 8 * result);
  if (v5 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = 4;
    *(v22 + 24) = 3;
    swift_willThrow();
  }

  if (!*(v2 + 16))
  {
    goto LABEL_34;
  }

  v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v7, v6);
  result = sub_10008C908(0x4C54746E65726170, 0xED0000444955554BLL);
  if ((v8 & 1) == 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = *(*(v2 + 56) + 8 * result);
  if (v9 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = 4;
    *(v23 + 24) = 3;
    swift_willThrow();

    v24 = v7;
    v25 = v6;
    return sub_10006A178(v24, v25);
  }

  if (!*(v2 + 16))
  {
    goto LABEL_36;
  }

  v10 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v45 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_100069E2C(v45, v10);
  result = sub_10008C908(0x44495344746C61, 0xE700000000000000);
  if ((v11 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = *(*(v2 + 56) + 8 * result);
  v13 = v12 & 0xE000000000000000;
  if ((v12 & 0xE000000000000000) == 0x2000000000000000)
  {
    if (*(v2 + 16))
    {
      *&v33 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(&v33 + 1) = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_100069E2C(v33, *(&v33 + 1));
      result = sub_10008C908(0x416465776F6C6C61, 0xEA00000000004449);
      if (v14)
      {
        v15 = *(*(v2 + 56) + 8 * result);
        if (v15 >> 61 != 1)
        {

          sub_10007FC0C();
          swift_allocError();
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
          *v28 = 4;
          *(v28 + 24) = 3;
          swift_willThrow();
          v27 = 0;
LABEL_24:
          a2 = v33;
          goto LABEL_25;
        }

        v30 = v10;
        if (*(v2 + 16))
        {
          v31 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v32 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_100069E2C(v32, v31);
          result = sub_10008C908(0xD000000000000011, 0x8000000100469620);
          if (v16)
          {
            v17 = *(*(v2 + 56) + 8 * result);

            if (!(v17 >> 61))
            {

              v18 = *(v17 + 16);

              *&v35 = v7;
              *(&v35 + 1) = v6;
              *&v36 = v45;
              *(&v36 + 1) = v30;
              v37 = v33;
              *&v38 = v32;
              *(&v38 + 1) = v31;
              v39 = v18;
              v40[0] = v7;
              v40[1] = v6;
              v40[2] = v45;
              v40[3] = v30;
              v41 = v33;
              v42 = v32;
              v43 = v31;
              v44 = v18;
              sub_10018C628(&v35, v34);
              result = sub_10018C684(v40);
              v19 = v38;
              *(a2 + 32) = v37;
              *(a2 + 48) = v19;
              *(a2 + 64) = v39;
              v20 = v36;
              *a2 = v35;
              *(a2 + 16) = v20;
              return result;
            }

            sub_10007FC0C();
            swift_allocError();
            *(v29 + 8) = 0;
            *(v29 + 16) = 0;
            *v29 = 4;
            *(v29 + 24) = 3;
            swift_willThrow();
            v27 = 1;
            v10 = v30;
            goto LABEL_24;
          }

LABEL_41:
          __break(1u);
          return result;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_10007FC0C();
  swift_allocError();
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *v26 = 4;
  *(v26 + 24) = 3;
  swift_willThrow();
  v27 = 0;
LABEL_25:

  sub_10006A178(v7, v6);
  result = sub_10006A178(v45, v10);
  if (v13 == 0x2000000000000000)
  {
    result = sub_10006A178(a2, *(&v33 + 1));
    if ((v27 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v27)
  {
    return result;
  }

  v25 = v31;
  v24 = v32;
  return sub_10006A178(v24, v25);
}

double sub_10026CBC0@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10040C130;
  *(v2 + 32) = 0x6E6F6973726576;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 48) = 2;
  *(v2 + 56) = 0;
  *(v2 + 64) = xmmword_10040BF80;
  *(v2 + 80) = -64;
  *(v2 + 88) = _swiftEmptyArrayStorage;
  *(v2 + 96) = 1684628851;
  *(v2 + 104) = 0xE400000000000000;
  *(v2 + 112) = 4;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = -64;
  *(v2 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 160) = 1684628325;
  *(v2 + 168) = 0xE400000000000000;
  *(v2 + 176) = 4;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0u;
  *(v2 + 208) = -64;
  *(v2 + 216) = _swiftEmptyArrayStorage;
  *(v2 + 224) = 0x444970696863;
  *(v2 + 232) = 0xE600000000000000;
  *(v2 + 240) = 4;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = -64;
  *(v2 + 280) = _swiftEmptyArrayStorage;
  *(v2 + 288) = 0x44496472616F62;
  *(v2 + 296) = 0xE700000000000000;
  *(v2 + 304) = 4;
  *(v2 + 312) = 0;
  *(v2 + 320) = 0u;
  *(v2 + 336) = -64;
  *(v2 + 344) = _swiftEmptyArrayStorage;
  *(v2 + 352) = 0xD000000000000010;
  *(v2 + 360) = 0x8000000100469700;
  *(v2 + 368) = 4;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0u;
  *(v2 + 400) = -64;
  *(v2 + 408) = _swiftEmptyArrayStorage;
  strcpy((v2 + 416), "publicKeyInfo");
  *(v2 + 430) = -4864;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100409900;
  *(v3 + 32) = 0x4449676C61;
  *(v3 + 40) = 0xE500000000000000;
  *(v3 + 48) = 48;
  *(v3 + 56) = 0;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = -64;
  *(v3 + 88) = _swiftEmptyArrayStorage;
  *(v3 + 96) = 0x79654B627570;
  *(v3 + 104) = 0xE600000000000000;
  *(v3 + 112) = 3;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = -64;
  *(v3 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 432) = 48;
  *(v2 + 440) = 0;
  *(v2 + 448) = v3;
  *(v2 + 456) = 1;
  *(v2 + 464) = 64;
  *(v2 + 472) = _swiftEmptyArrayStorage;
  *(v2 + 480) = 0x4E7463656A627573;
  *(v2 + 488) = 0xEB00000000656D61;
  *(v2 + 496) = 0;
  *(v2 + 504) = 1;
  *(v2 + 512) = 0u;
  *(v2 + 528) = -64;
  *(v2 + 536) = _swiftEmptyArrayStorage;
  *(v2 + 544) = 0x6F69736E65747865;
  *(v2 + 552) = 0xEA0000000000736ELL;
  *(v2 + 560) = 0;
  *(v2 + 568) = 1;
  *(v2 + 576) = 0u;
  *(v2 + 592) = -64;
  *(v2 + 600) = _swiftEmptyArrayStorage;
  *a1 = 48;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

void sub_10026CE44(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100409A40;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x80000001004696C0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100409900;
  *(v3 + 32) = 0x614474656C707061;
  *(v3 + 40) = 0xEA00000000006174;
  sub_10026CBC0(v5);
  v4 = v5[1];
  *(v3 + 48) = v5[0];
  *(v3 + 64) = v4;
  *(v3 + 80) = v5[2];
  strcpy((v3 + 96), "platformData");
  *(v3 + 109) = 0;
  *(v3 + 110) = -5120;
  *(v3 + 112) = 48;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = -64;
  *(v3 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 48) = 48;
  *(v2 + 56) = 0;
  *(v2 + 64) = v3;
  *(v2 + 72) = 1;
  *(v2 + 80) = 64;
  *(v2 + 88) = _swiftEmptyArrayStorage;
  *(v2 + 96) = 0xD000000000000010;
  *(v2 + 104) = 0x80000001004696E0;
  *(v2 + 112) = 48;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = -64;
  *(v2 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 160) = 0x727574616E676973;
  *(v2 + 168) = 0xE900000000000065;
  *(v2 + 176) = 3;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = -64;
  *(v2 + 216) = _swiftEmptyArrayStorage;
  *a1 = 48;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
}

unint64_t sub_10026CFE4(unint64_t result)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 4;
    *(v7 + 24) = 3;
    swift_willThrow();
  }

  v1 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (*(v1 + 16))
  {

    result = sub_10008C908(0x79654B627570, 0xE600000000000000);
    if (v2)
    {
      v3 = *(*(v1 + 56) + 8 * result);
      v4 = v3 & 0x1FFFFFFFFFFFFFFFLL;

      if (v3 >> 61 == 1)
      {
        v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v6 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        sub_100069E2C(*(v4 + 16), *(v4 + 24));

        sub_100084D68(1uLL, v5, v6, &v9);

        return v9;
      }

      sub_10007FC0C();
      swift_allocError();
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 4;
      *(v8 + 24) = 3;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10026D160@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = 4;
    *(v30 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_43;
  }

  v4 = v2;

  result = sub_10008C908(0x6E6F6973726576, 0xE700000000000000);
  if ((v6 & 1) == 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v7 = *(*(v3 + 56) + 8 * result);
  if (v7 >> 61 != 2)
  {
LABEL_25:

    sub_10007FC0C();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 4;
    *(v31 + 24) = 3;
    swift_willThrow();
  }

  if (!*(v3 + 16))
  {
    goto LABEL_44;
  }

  v8 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  result = sub_10008C908(1684628851, 0xE400000000000000);
  if ((v9 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = *(*(v3 + 56) + 8 * result);
  if (v10 >> 61 != 1)
  {
    goto LABEL_25;
  }

  if (!*(v3 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v12 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v12, v11);
  result = sub_10008C908(1684628325, 0xE400000000000000);
  if ((v13 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v14 = *(*(v3 + 56) + 8 * result);
  if (v14 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *v32 = 4;
    *(v32 + 24) = 3;
    swift_willThrow();

    v33 = v12;
    v34 = v11;
    return sub_10006A178(v33, v34);
  }

  if (!*(v3 + 16))
  {
    goto LABEL_48;
  }

  v15 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v49 = v15;
  v59 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v15, v59);
  result = sub_10008C908(0x444970696863, 0xE600000000000000);
  if ((v16 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v17 = *(*(v3 + 56) + 8 * result);
  v18 = v17 & 0xE000000000000000;
  v19 = v17 & 0x1FFFFFFFFFFFFFFFLL;
  if ((v17 & 0xE000000000000000) != 0x2000000000000000)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *v35 = 4;
    *(v35 + 24) = 3;
    swift_willThrow();

    v28 = 0;
    v29 = 0;
    goto LABEL_33;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_50;
  }

  v19 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v47 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v48 = v12;
  sub_100069E2C(v47, v19);
  result = sub_10008C908(0x44496472616F62, 0xE700000000000000);
  if ((v20 & 1) == 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v21 = *(*(v3 + 56) + 8 * result);
  if (v21 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    *v36 = 4;
    *(v36 + 24) = 3;
    swift_willThrow();

    v28 = 0;
    v29 = 0;
    goto LABEL_32;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_52;
  }

  v45 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v46 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_100069E2C(v46, v45);
  result = sub_10008C908(0xD000000000000010, 0x8000000100469700);
  if ((v22 & 1) == 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v23 = *(*(v3 + 56) + 8 * result);
  if (v23 >> 61 == 1)
  {
    if (*(v3 + 16))
    {
      v43 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v44 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_100069E2C(v44, v43);
      result = sub_10008C908(0x654B63696C627570, 0xED00006F666E4979);
      if (v24)
      {
        v25 = *(*(v3 + 56) + 8 * result);

        v26 = sub_10026CFE4(v25);
        if (!v2)
        {
          v38 = v26;
          v39 = v27;

          *&v51 = v8;
          *(&v51 + 1) = v48;
          *&v52 = v11;
          *(&v52 + 1) = v49;
          *&v53 = v59;
          *(&v53 + 1) = v47;
          *&v54 = v19;
          *(&v54 + 1) = v46;
          *&v55 = v45;
          *(&v55 + 1) = v44;
          *&v56 = v43;
          *(&v56 + 1) = v38;
          v57 = v39;
          v58[0] = v8;
          v58[1] = v48;
          v58[2] = v11;
          v58[3] = v49;
          v58[4] = v59;
          v58[5] = v47;
          v58[6] = v19;
          v58[7] = v46;
          v58[8] = v45;
          v58[9] = v44;
          v58[10] = v43;
          v58[11] = v38;
          v58[12] = v39;
          sub_10026FF18(&v51, v50);
          result = sub_10026FEB0(v58);
          v40 = v56;
          *(a2 + 64) = v55;
          *(a2 + 80) = v40;
          *(a2 + 96) = v57;
          v41 = v52;
          *a2 = v51;
          *(a2 + 16) = v41;
          v42 = v54;
          *(a2 + 32) = v53;
          *(a2 + 48) = v42;
          return result;
        }

        v28 = 1;
        v29 = 1;
        goto LABEL_32;
      }

LABEL_55:
      __break(1u);
      return result;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_10007FC0C();
  swift_allocError();
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
  *v37 = 4;
  *(v37 + 24) = 3;
  swift_willThrow();

  v29 = 0;
  v28 = 1;
LABEL_32:
  v4 = v47;
  v12 = v48;
LABEL_33:

  sub_10006A178(v12, v11);
  result = sub_10006A178(v49, v59);
  if (v18 == 0x2000000000000000)
  {
    result = sub_10006A178(v4, v19);
    if ((v28 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (!v28)
  {
LABEL_35:
    if (v29)
    {
      goto LABEL_39;
    }

    return result;
  }

  result = sub_10006A178(v46, v45);
  if (v29)
  {
LABEL_39:
    v34 = v43;
    v33 = v44;
    return sub_10006A178(v33, v34);
  }

  return result;
}

unint64_t sub_10026D740@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 4;
    *(v8 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v2;

  result = sub_10008C908(0x614474656C707061, 0xEA00000000006174);
  if ((v6 & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(*(v3 + 56) + 8 * result);

  result = sub_10026D160(v7, &v44);
  if (v4)
  {
  }

  v41 = v48;
  v42 = v49;
  v43 = v50;
  v37 = v44;
  v38 = v45;
  v39 = v46;
  v40 = v47;
  if (!*(v3 + 16))
  {
    goto LABEL_14;
  }

  result = sub_10008C908(0x6D726F6674616C70, 0xEC00000061746144);
  if ((v9 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v10 = *(*(v3 + 56) + 8 * result);

  if (v10 >> 61 == 1)
  {

    v11 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_100069E2C(v11, v12);

    v23 = v47;
    v24 = v48;
    v25 = v49;
    v20 = v44;
    v21 = v45;
    v22 = v46;
    *&v26 = v50;
    *(&v26 + 1) = v11;
    v27 = v12;
    v32 = v48;
    v33 = v49;
    v30 = v46;
    v31 = v47;
    v28 = v44;
    v29 = v45;
    v34 = v50;
    v35 = v11;
    v36 = v12;
    sub_10026FEE0(&v20, v19);
    result = sub_10026FE48(&v28);
    v13 = v25;
    v14 = v26;
    v15 = v23;
    *(a2 + 64) = v24;
    *(a2 + 80) = v13;
    *(a2 + 96) = v14;
    v16 = v21;
    v17 = v22;
    *a2 = v20;
    *(a2 + 16) = v16;
    *(a2 + 112) = v27;
    *(a2 + 32) = v17;
    *(a2 + 48) = v15;
  }

  else
  {
    sub_10007FC0C();
    swift_allocError();
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = 4;
    *(v18 + 24) = 3;
    swift_willThrow();

    v32 = v41;
    v33 = v42;
    v34 = v43;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    return sub_10026FEB0(&v28);
  }

  return result;
}

unint64_t sub_10026DA04@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 4;
    *(v8 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = v2;

  result = sub_10008C908(0xD000000000000011, 0x80000001004696C0);
  if ((v6 & 1) == 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = *(*(v3 + 56) + 8 * result);

  result = sub_10026D740(v7, &v54);
  if (v4)
  {
  }

  v50 = v58;
  v51 = v59;
  v52 = v60;
  v53 = v61;
  v46 = v54;
  v47 = v55;
  v48 = v56;
  v49 = v57;
  if (!*(v3 + 16))
  {
    goto LABEL_18;
  }

  result = sub_10008C908(0xD000000000000010, 0x80000001004696E0);
  if ((v9 & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = *(*(v3 + 56) + 8 * result);
  if (v10 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *v21 = 4;
    *(v21 + 24) = 3;
    swift_willThrow();

    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v37 = v49;
    return sub_10026FE48(&v34);
  }

  if (!*(v3 + 16))
  {
    goto LABEL_20;
  }

  v12 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v12, v11);
  result = sub_10008C908(0x727574616E676973, 0xE900000000000065);
  if ((v13 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v14 = *(*(v3 + 56) + 8 * result);

  if (v14 >> 61 == 1)
  {

    v15 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_100069E2C(v15, v16);

    v28 = v58;
    v29 = v59;
    v30 = v60;
    v24 = v54;
    v25 = v55;
    v26 = v56;
    v27 = v57;
    v39 = v59;
    v40 = v60;
    v37 = v57;
    v38 = v58;
    v35 = v55;
    v36 = v56;
    *&v31 = v61;
    *(&v31 + 1) = v12;
    *&v32 = v11;
    *(&v32 + 1) = v15;
    v33 = v16;
    v34 = v54;
    v41 = v61;
    v42 = v12;
    v43 = v11;
    v44 = v15;
    v45 = v16;
    sub_10026FE78(&v24, v23);
    result = sub_10018CF9C(&v34);
    v17 = v31;
    *(a2 + 96) = v30;
    *(a2 + 112) = v17;
    *(a2 + 128) = v32;
    *(a2 + 144) = v33;
    v18 = v27;
    *(a2 + 32) = v26;
    *(a2 + 48) = v18;
    v19 = v29;
    *(a2 + 64) = v28;
    *(a2 + 80) = v19;
    v20 = v25;
    *a2 = v24;
    *(a2 + 16) = v20;
  }

  else
  {
    sub_10007FC0C();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = 4;
    *(v22 + 24) = 3;
    swift_willThrow();

    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v37 = v49;
    sub_10026FE48(&v34);
    return sub_10006A178(v12, v11);
  }

  return result;
}

double sub_10026DE0C@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100409A40;
  *(v2 + 32) = 0x444955556B6C74;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 48) = 212;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = -64;
  *(v2 + 88) = &off_1004C4128;
  *(v2 + 96) = 0x416465776F6C6C61;
  *(v2 + 104) = 0xEA00000000004449;
  *(v2 + 112) = 214;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = -64;
  *(v2 + 152) = &off_1004C4178;
  *(v2 + 160) = 0xD000000000000011;
  *(v2 + 168) = 0x8000000100469620;
  *(v2 + 176) = 215;
  *(v2 + 184) = 0;
  *&result = 2;
  *(v2 + 192) = xmmword_1004116B0;
  *(v2 + 208) = -64;
  *(v2 + 216) = _swiftEmptyArrayStorage;
  *a1 = 233;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026DF2C@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100409900;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x8000000100469760;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100409900;
  strcpy((v3 + 32), "ptAttestation");
  *(v3 + 46) = -4864;
  *(v3 + 48) = 196;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = -64;
  *(v3 + 88) = _swiftEmptyArrayStorage;
  *(v3 + 96) = 0x7472654364736163;
  *(v3 + 104) = 0xEF65746163696669;
  *(v3 + 112) = 197;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = -64;
  *(v3 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 48) = 231;
  *(v2 + 56) = 0;
  *(v2 + 64) = v3;
  *(v2 + 72) = 1;
  *(v2 + 80) = 64;
  *(v2 + 88) = _swiftEmptyArrayStorage;
  *(v2 + 96) = 0xD000000000000016;
  *(v2 + 104) = 0x8000000100469780;
  v4 = swift_allocObject();
  *(v4 + 16) = 48;
  *(v4 + 24) = 0;
  *&result = 3;
  *(v4 + 32) = xmmword_1004116A0;
  *(v4 + 48) = -64;
  *(v4 + 56) = _swiftEmptyArrayStorage;
  *(v2 + 112) = 232;
  *(v2 + 120) = 0;
  *(v2 + 128) = v4;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0x80;
  *(v2 + 152) = _swiftEmptyArrayStorage;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10026E0EC@<X0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  result = swift_allocObject();
  *(result + 16) = xmmword_10040F420;
  strcpy((result + 32), "formatVersion");
  *(result + 46) = -4864;
  *(result + 48) = 192;
  *(result + 56) = 0;
  *(result + 64) = 0u;
  *(result + 80) = -64;
  *(result + 88) = _swiftEmptyArrayStorage;
  *(result + 96) = 0x444955556B6C74;
  *(result + 104) = 0xE700000000000000;
  *(result + 112) = 212;
  *(result + 120) = 0;
  *(result + 128) = 0u;
  *(result + 144) = -64;
  *(result + 152) = &off_1004C41C8;
  strcpy((result + 160), "parentTLKUUID");
  *(result + 174) = -4864;
  *(result + 176) = 213;
  *(result + 184) = 0;
  *(result + 192) = 0u;
  *(result + 208) = -64;
  *(result + 216) = &off_1004C4218;
  *(result + 224) = 0x416465776F6C6C61;
  *(result + 232) = 0xEA00000000004449;
  *(result + 240) = 214;
  *(result + 248) = 0;
  *(result + 256) = 0u;
  *(result + 272) = -64;
  *(result + 280) = &off_1004C4268;
  *(result + 288) = 0xD000000000000011;
  *(result + 296) = 0x8000000100469620;
  *(result + 304) = 215;
  *(result + 312) = 0;
  *(result + 320) = xmmword_1004116B0;
  *(result + 336) = -64;
  *(result + 344) = _swiftEmptyArrayStorage;
  *(result + 352) = 0x5649736561;
  *(result + 360) = 0xE500000000000000;
  *(result + 368) = 216;
  *(result + 376) = 256;
  *(result + 384) = 0u;
  *(result + 400) = -64;
  *(result + 408) = &off_1004C42B8;
  strcpy((result + 416), "encryptedKey");
  *(result + 429) = 0;
  *(result + 430) = -5120;
  *(result + 432) = 217;
  *(result + 440) = 256;
  *(result + 448) = 0u;
  *(result + 464) = -64;
  *(result + 472) = &off_1004C4308;
  *(result + 480) = 0xD000000000000011;
  *(result + 488) = 0x80000001004696A0;
  *(result + 496) = 218;
  *(result + 504) = 256;
  *(result + 512) = 0u;
  *(result + 528) = -64;
  *(result + 536) = &off_1004C4358;
  *a1 = 228;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026E324@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *&result = 5;
  *(v2 + 16) = xmmword_10040AA50;
  *(v2 + 32) = 1684632949;
  *(v2 + 40) = 0xE400000000000000;
  *(v2 + 48) = 212;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = -64;
  *(v2 + 88) = &off_1004C43A8;
  *(v2 + 96) = 0x5555746E65726170;
  *(v2 + 104) = 0xEA00000000004449;
  *(v2 + 112) = 213;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = -64;
  *(v2 + 152) = &off_1004C43F8;
  *(v2 + 160) = 0x44495344746C61;
  *(v2 + 168) = 0xE700000000000000;
  *(v2 + 176) = 193;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = -64;
  *(v2 + 216) = &off_1004C4448;
  *(v2 + 224) = 0x416465776F6C6C61;
  *(v2 + 232) = 0xEA00000000004449;
  *(v2 + 240) = 214;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 272) = -64;
  *(v2 + 280) = &off_1004C4498;
  *(v2 + 288) = 0xD000000000000011;
  *(v2 + 296) = 0x8000000100469620;
  *(v2 + 304) = 215;
  *(v2 + 312) = 0;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0;
  *(v2 + 336) = -64;
  *(v2 + 344) = _swiftEmptyArrayStorage;
  *a1 = 239;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026E498@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10040F420;
  strcpy((v2 + 32), "formatVersion");
  *(v2 + 46) = -4864;
  *(v2 + 48) = 192;
  *(v2 + 56) = 0;
  result = 0.0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = -64;
  *(v2 + 88) = &off_1004C44E8;
  *(v2 + 96) = 0xD00000000000001ALL;
  *(v2 + 104) = 0x8000000100469640;
  *(v2 + 112) = 204;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = -64;
  *(v2 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 160) = 0xD000000000000016;
  *(v2 + 168) = 0x8000000100469660;
  *(v2 + 176) = 205;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0u;
  *(v2 + 208) = -64;
  *(v2 + 216) = _swiftEmptyArrayStorage;
  *(v2 + 224) = 0xD000000000000019;
  *(v2 + 232) = 0x8000000100469680;
  *(v2 + 240) = 206;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = -64;
  *(v2 + 280) = _swiftEmptyArrayStorage;
  *(v2 + 288) = 0x617461446174656DLL;
  *(v2 + 296) = 0xE800000000000000;
  *(v2 + 304) = 239;
  *(v2 + 312) = 0;
  *(v2 + 320) = xmmword_1004116A0;
  *(v2 + 336) = -64;
  *(v2 + 344) = _swiftEmptyArrayStorage;
  *(v2 + 352) = 0x6574726568706963;
  *(v2 + 360) = 0xEA00000000007478;
  *(v2 + 368) = 208;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0u;
  *(v2 + 400) = -64;
  *(v2 + 408) = _swiftEmptyArrayStorage;
  *(v2 + 416) = 0xD000000000000011;
  *(v2 + 424) = 0x80000001004696A0;
  *(v2 + 432) = 209;
  *(v2 + 440) = 0;
  *(v2 + 448) = 0u;
  *(v2 + 464) = -64;
  *(v2 + 472) = &off_1004C4538;
  *(v2 + 480) = 0x69537265646E6573;
  *(v2 + 488) = 0xEF65727574616E67;
  *(v2 + 496) = 210;
  *(v2 + 504) = 0;
  *(v2 + 512) = 0u;
  *(v2 + 528) = -64;
  *(v2 + 536) = _swiftEmptyArrayStorage;
  *a1 = 224;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026E6AC@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100409900;
  *(v2 + 32) = 0x444955556B6C74;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 48) = 212;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = -64;
  *(v2 + 88) = &off_1004C4588;
  *(v2 + 96) = 0xD000000000000012;
  *(v2 + 104) = 0x8000000100469740;
  sub_10026DF2C(v5);
  v3 = v5[1];
  *(v2 + 112) = v5[0];
  *(v2 + 128) = v3;
  result = *&v6;
  *(v2 + 144) = v6;
  *a1 = 238;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026E79C@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100409900;
  strcpy((v2 + 32), "encryptedBlob");
  *(v2 + 46) = -4864;
  sub_10026E498(&v7);
  v3 = v7;
  v4 = v8;
  v15 = v9;
  v16 = v10;
  sub_10018C454(&v15);
  v14 = v11;
  sub_1001A3618(&v14);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  *(v2 + 57) = 0;
  *(v2 + 64) = xmmword_1004116A0;
  *(v2 + 80) = -64;
  *(v2 + 88) = _swiftEmptyArrayStorage;
  *(v2 + 96) = 0xD000000000000012;
  *(v2 + 104) = 0x8000000100469740;
  sub_10026DF2C(v12);
  v5 = v12[1];
  *(v2 + 112) = v12[0];
  *(v2 + 128) = v5;
  result = *&v13;
  *(v2 + 144) = v13;
  *a1 = 237;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_10026E8DC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *v24 = 4;
    *(v24 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_56;
  }

  result = sub_10008C908(0x655674616D726F66, 0xED00006E6F697372);
  if ((v4 & 1) == 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v5 = *(*(v3 + 56) + 8 * result);
  if (v5 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *v25 = 4;
    *(v25 + 24) = 3;
    swift_willThrow();
  }

  if (!*(v3 + 16))
  {
    goto LABEL_57;
  }

  v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v7, v6);
  result = sub_10008C908(0x444955556B6C74, 0xE700000000000000);
  if ((v8 & 1) == 0)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v9 = *(*(v3 + 56) + 8 * result);
  if (v9 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *v26 = 4;
    *(v26 + 24) = 3;
    swift_willThrow();

    return sub_10006A178(v7, v6);
  }

  if (!*(v3 + 16))
  {
    goto LABEL_59;
  }

  v10 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v58 = v10;
  v76 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v10, v76);
  result = sub_10008C908(0x4C54746E65726170, 0xED0000444955554BLL);
  if ((v11 & 1) == 0)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v12 = *(*(v3 + 56) + 8 * result);
  v13 = v12 & 0xE000000000000000;
  if ((v12 & 0xE000000000000000) != 0x2000000000000000)
  {
LABEL_24:

    sub_10007FC0C();
    swift_allocError();
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    *v27 = 4;
    *(v27 + 24) = 3;
    swift_willThrow();
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_25;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_61;
  }

  v56 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v57 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_100069E2C(v57, v56);
  result = sub_10008C908(0x416465776F6C6C61, 0xEA00000000004449);
  if ((v14 & 1) == 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v15 = *(*(v3 + 56) + 8 * result);
  if (v15 >> 61 != 1)
  {
    goto LABEL_24;
  }

  if (!*(v3 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v54 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v55 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_100069E2C(v55, v54);
  result = sub_10008C908(0xD000000000000011, 0x8000000100469620);
  if ((v16 & 1) == 0)
  {
LABEL_64:
    __break(1u);
    return result;
  }

  v17 = *(*(v3 + 56) + 8 * result);
  if (v17 >> 61)
  {
    goto LABEL_35;
  }

  v18 = *(v17 + 16);
  if (!*(v3 + 16))
  {
    v50 = 0xF000000000000000;
    v51 = 0;
    v52 = 0xF000000000000000;
    v53 = 0;
LABEL_49:

    v40 = 0;
    v41 = 0xF000000000000000;
LABEL_50:
    *&v60 = v7;
    *(&v60 + 1) = v6;
    *&v61 = v58;
    *(&v61 + 1) = v76;
    *&v62 = v57;
    *(&v62 + 1) = v56;
    *&v63 = v55;
    *(&v63 + 1) = v54;
    LOBYTE(v64) = v18;
    *(&v64 + 1) = v53;
    *&v65 = v52;
    *(&v65 + 1) = v51;
    *&v66 = v50;
    *(&v66 + 1) = v40;
    v67 = v41;
    v68[0] = v7;
    v68[1] = v6;
    v68[2] = v58;
    v68[3] = v76;
    v68[4] = v57;
    v68[5] = v56;
    v68[6] = v55;
    v68[7] = v54;
    v69 = v18;
    v70 = v53;
    v71 = v52;
    v72 = v51;
    v73 = v50;
    v74 = v40;
    v75 = v41;
    sub_10026FD68(&v60, v59);
    result = sub_10026FDA0(v68);
    v42 = v65;
    v43 = v66;
    v44 = v63;
    *(a2 + 64) = v64;
    *(a2 + 80) = v42;
    *(a2 + 96) = v43;
    v45 = v61;
    v46 = v62;
    *a2 = v60;
    *(a2 + 16) = v45;
    *(a2 + 112) = v67;
    *(a2 + 32) = v46;
    *(a2 + 48) = v44;
    return result;
  }

  v19 = sub_10008C908(0x5649736561, 0xE500000000000000);
  if (v20)
  {
    v21 = *(*(v3 + 56) + 8 * v19);
    if (v21 >> 61 == 1)
    {
      v49 = v18;
      v22 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_100069E2C(v22, v23);
      goto LABEL_38;
    }

LABEL_35:

    sub_10007FC0C();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 4;
    *(v31 + 24) = 3;
    swift_willThrow();
    v29 = 0;
    v30 = 0;
    v28 = 1;
    goto LABEL_25;
  }

  v49 = v18;
  v22 = 0;
  v23 = 0xF000000000000000;
LABEL_38:
  v52 = v23;
  v53 = v22;
  if (!*(v3 + 16))
  {
    v50 = 0xF000000000000000;
    v51 = 0;
LABEL_48:
    v18 = v49;
    goto LABEL_49;
  }

  v32 = sub_10008C908(0x6574707972636E65, 0xEC00000079654B64);
  if (v33)
  {
    v34 = *(*(v3 + 56) + 8 * v32);
    if (v34 >> 61 != 1)
    {

      sub_10007FC0C();
      swift_allocError();
      *(v47 + 8) = 0;
      *(v47 + 16) = 0;
      *v47 = 4;
      *(v47 + 24) = 3;
      swift_willThrow();
      v30 = 0;
      v28 = 1;
      v29 = 1;
      goto LABEL_25;
    }

    v35 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v36 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_100069E2C(v35, v36);
  }

  else
  {
    v35 = 0;
    v36 = 0xF000000000000000;
  }

  v50 = v36;
  v51 = v35;
  if (!*(v3 + 16))
  {
    goto LABEL_48;
  }

  v37 = sub_10008C908(0xD000000000000011, 0x80000001004696A0);
  if ((v38 & 1) == 0)
  {

    v40 = 0;
    v41 = 0xF000000000000000;
    goto LABEL_53;
  }

  v39 = *(*(v3 + 56) + 8 * v37);

  if (v39 >> 61 == 1)
  {

    v40 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v41 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_100069E2C(v40, v41);

LABEL_53:
    v18 = v49;
    goto LABEL_50;
  }

  sub_10007FC0C();
  swift_allocError();
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  *v48 = 4;
  *(v48 + 24) = 3;
  swift_willThrow();
  v28 = 1;
  v29 = 1;
  v30 = 1;
LABEL_25:

  sub_10006A178(v7, v6);
  result = sub_10006A178(v58, v76);
  if (v13 == 0x2000000000000000)
  {
    result = sub_10006A178(v57, v56);
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (!v28)
  {
LABEL_27:
    if (v29)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v30)
    {
      return result;
    }

    return sub_10006A2D0(v51, v50);
  }

  result = sub_10006A178(v55, v54);
  if ((v29 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  result = sub_10006A2D0(v53, v52);
  if ((v30 & 1) == 0)
  {
    return result;
  }

  return sub_10006A2D0(v51, v50);
}

unint64_t sub_10026F064@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = 4;
    *(v30 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_49;
  }

  result = sub_10008C908(0x655674616D726F66, 0xED00006E6F697372);
  if ((v4 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v5 = *(*(v3 + 56) + 8 * result);
  if (v5 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 4;
    *(v31 + 24) = 3;
    swift_willThrow();
  }

  if (!*(v3 + 16))
  {
    goto LABEL_50;
  }

  v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v7, v6);
  result = sub_10008C908(0xD00000000000001ALL, 0x8000000100469640);
  if ((v8 & 1) == 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v9 = *(*(v3 + 56) + 8 * result);
  if (v9 >> 61 == 1)
  {
    if (*(v3 + 16))
    {
      v55 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v66 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_100069E2C(v55, v66);
      result = sub_10008C908(0xD000000000000016, 0x8000000100469660);
      if (v10)
      {
        v11 = *(*(v3 + 56) + 8 * result);
        v54 = v11 & 0xE000000000000000;
        if ((v11 & 0xE000000000000000) != 0x2000000000000000)
        {
          goto LABEL_30;
        }

        if (*(v3 + 16))
        {
          v52 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v53 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_100069E2C(v53, v52);
          result = sub_10008C908(0xD000000000000019, 0x8000000100469680);
          if (v12)
          {
            v13 = *(*(v3 + 56) + 8 * result);
            if (v13 >> 61 == 1)
            {
              if (*(v3 + 16))
              {
                v15 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v14 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                sub_100069E2C(v15, v14);
                result = sub_10008C908(0x617461446174656DLL, 0xE800000000000000);
                if (v16)
                {
                  v17 = *(*(v3 + 56) + 8 * result);
                  v50 = v15;
                  v51 = v14;
                  if (v17 >> 61 != 1)
                  {

                    sub_10007FC0C();
                    swift_allocError();
                    *(v40 + 8) = 0;
                    *(v40 + 16) = 0;
                    *v40 = 4;
                    *(v40 + 24) = 3;
                    swift_willThrow();
                    v37 = 0;
                    v38 = 0;
                    v39 = 0;
                    v36 = 1;
                    goto LABEL_31;
                  }

                  if (*(v3 + 16))
                  {
                    v48 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                    v49 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    sub_100069E2C(v49, v48);
                    result = sub_10008C908(0x6574726568706963, 0xEA00000000007478);
                    if (v18)
                    {
                      v19 = *(*(v3 + 56) + 8 * result);
                      if (v19 >> 61 != 1)
                      {

                        sub_10007FC0C();
                        swift_allocError();
                        *(v41 + 8) = 0;
                        *(v41 + 16) = 0;
                        *v41 = 4;
                        *(v41 + 24) = 3;
                        swift_willThrow();
                        v38 = 0;
                        v39 = 0;
                        v36 = 1;
                        v37 = 1;
                        goto LABEL_31;
                      }

                      if (*(v3 + 16))
                      {
                        v46 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                        v47 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        sub_100069E2C(v47, v46);
                        result = sub_10008C908(0xD000000000000011, 0x80000001004696A0);
                        if (v20)
                        {
                          v21 = *(*(v3 + 56) + 8 * result);
                          if (v21 >> 61 != 1)
                          {

                            sub_10007FC0C();
                            swift_allocError();
                            *(v42 + 8) = 0;
                            *(v42 + 16) = 0;
                            *v42 = 4;
                            *(v42 + 24) = 3;
                            swift_willThrow();
                            v39 = 0;
                            v36 = 1;
                            v37 = 1;
                            v38 = 1;
                            goto LABEL_31;
                          }

                          if (*(v3 + 16))
                          {
                            v44 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                            v45 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                            sub_100069E2C(v45, v44);
                            result = sub_10008C908(0x69537265646E6573, 0xEF65727574616E67);
                            if (v22)
                            {
                              v23 = *(*(v3 + 56) + 8 * result);

                              if (v23 >> 61 == 1)
                              {

                                v24 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                v25 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                                sub_100069E2C(v24, v25);

                                *&v57 = v7;
                                *(&v57 + 1) = v6;
                                *&v58 = v55;
                                *(&v58 + 1) = v66;
                                *&v59 = v53;
                                *(&v59 + 1) = v52;
                                *&v60 = v15;
                                *(&v60 + 1) = v51;
                                *&v61 = v49;
                                *(&v61 + 1) = v48;
                                *&v62 = v47;
                                *(&v62 + 1) = v46;
                                *&v63 = v45;
                                *(&v63 + 1) = v44;
                                *&v64 = v24;
                                *(&v64 + 1) = v25;
                                v65[0] = v7;
                                v65[1] = v6;
                                v65[2] = v55;
                                v65[3] = v66;
                                v65[4] = v53;
                                v65[5] = v52;
                                v65[6] = v15;
                                v65[7] = v51;
                                v65[8] = v49;
                                v65[9] = v48;
                                v65[10] = v47;
                                v65[11] = v46;
                                v65[12] = v45;
                                v65[13] = v44;
                                v65[14] = v24;
                                v65[15] = v25;
                                sub_10026FD30(&v57, v56);
                                result = sub_1001F6CAC(v65);
                                v26 = v62;
                                a2[4] = v61;
                                a2[5] = v26;
                                v27 = v64;
                                a2[6] = v63;
                                a2[7] = v27;
                                v28 = v58;
                                *a2 = v57;
                                a2[1] = v28;
                                v29 = v60;
                                a2[2] = v59;
                                a2[3] = v29;
                                return result;
                              }

                              sub_10007FC0C();
                              swift_allocError();
                              *(v43 + 8) = 0;
                              *(v43 + 16) = 0;
                              *v43 = 4;
                              *(v43 + 24) = 3;
                              swift_willThrow();
                              v36 = 1;
                              v37 = 1;
                              v38 = 1;
                              v39 = 1;
LABEL_31:

                              sub_10006A178(v7, v6);
                              result = sub_10006A178(v55, v66);
                              if (v54 == 0x2000000000000000)
                              {
                                result = sub_10006A178(v53, v52);
                                if ((v36 & 1) == 0)
                                {
                                  goto LABEL_33;
                                }
                              }

                              else if (!v36)
                              {
LABEL_33:
                                if (v37)
                                {
                                  goto LABEL_34;
                                }

                                goto LABEL_39;
                              }

                              result = sub_10006A178(v50, v51);
                              if (v37)
                              {
LABEL_34:
                                result = sub_10006A178(v49, v48);
                                if ((v38 & 1) == 0)
                                {
                                  goto LABEL_35;
                                }

                                goto LABEL_40;
                              }

LABEL_39:
                              if (!v38)
                              {
LABEL_35:
                                if (!v39)
                                {
                                  return result;
                                }

LABEL_41:
                                v34 = v44;
                                v33 = v45;
                                return sub_10006A178(v33, v34);
                              }

LABEL_40:
                              result = sub_10006A178(v47, v46);
                              if ((v39 & 1) == 0)
                              {
                                return result;
                              }

                              goto LABEL_41;
                            }

LABEL_63:
                            __break(1u);
                            return result;
                          }

LABEL_62:
                          __break(1u);
                          goto LABEL_63;
                        }

LABEL_61:
                        __break(1u);
                        goto LABEL_62;
                      }

LABEL_60:
                      __break(1u);
                      goto LABEL_61;
                    }

LABEL_59:
                    __break(1u);
                    goto LABEL_60;
                  }

LABEL_58:
                  __break(1u);
                  goto LABEL_59;
                }

LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

LABEL_30:

            sub_10007FC0C();
            swift_allocError();
            *(v35 + 8) = 0;
            *(v35 + 16) = 0;
            *v35 = 4;
            *(v35 + 24) = 3;
            swift_willThrow();
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            goto LABEL_31;
          }

LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_10007FC0C();
  swift_allocError();
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  *v32 = 4;
  *(v32 + 24) = 3;
  swift_willThrow();

  v33 = v7;
  v34 = v6;
  return sub_10006A178(v33, v34);
}