void sub_100338760(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v52 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_13;
  }

  v55 = v8;
  v19 = a2;
  v20 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_logger;
  v22 = v57;
  v21 = v58;
  v23 = v57 + 16;
  v54 = *(v57 + 16);
  v54(v11, a1, v58);

  v56 = v20;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v53 = a1;
    v27 = v26;
    v28 = swift_slowAlloc();
    v52[1] = v23;
    v60[0] = v28;
    *v27 = 136315394;
    sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v21;
    v32 = v31;
    (*(v22 + 8))(v11, v30);
    v33 = sub_1002FFA0C(v29, v32, v60);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1002FFA0C(v19, a3, v60);
    _os_log_impl(&_mh_execute_header, v24, v25, "Adding high priority request for connection %s client %s", v27, 0x16u);
    swift_arrayDestroy();

    a1 = v53;
  }

  else
  {

    (*(v22 + 8))(v11, v21);
  }

  v34 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests;
  a2 = v59;
  v35 = swift_beginAccess();
  v36 = *(a2 + v34);
  __chkstk_darwin(v35);
  v52[-4] = a1;
  v52[-3] = v19;
  v52[-2] = a3;

  v37 = sub_10011F6E8(sub_10033C43C, &v52[-6], v36);

  if (v37)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Request already exists", v40, 2u);
    }

    swift_beginAccess();
    sub_10033B3A8(v37);
    swift_endAccess();
    goto LABEL_11;
  }

  v41 = v55;
  v42 = v58;
  v54(v55, a1, v58);
  type metadata accessor for DSKBLEConnectionPriority.HighPriorityRequest(0);
  v43 = swift_allocObject();
  (*(v57 + 32))(v43 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_connectionIdentifier, v41, v42);
  v44 = (v43 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client);
  *v44 = v19;
  v44[1] = a3;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v34) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v34) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_21;
  }

LABEL_13:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v45 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;
  v46 = swift_beginAccess();
  v47 = *(a2 + v45);
  __chkstk_darwin(v46);
  v52[-2] = a1;

  v48 = sub_10011F6E8(sub_10033C4D4, &v52[-4], v47);

  if (v48)
  {
    if ((*(v48 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) & 1) == 0)
    {
      sub_10033A8B4();
LABEL_11:

      return;
    }
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Connection does not exist or priority is already HIGH", v51, 2u);
  }
}

uint64_t sub_100338E68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v18 = *(v8 + 16);
    v33 = a1;
    v18(v10, a1, v7);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = a3;
      v22 = v21;
      v35[0] = swift_slowAlloc();
      *v22 = 136315394;
      sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v8 + 8))(v10, v7);
      v26 = sub_1002FFA0C(v23, v25, v35);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = v34;
      *(v22 + 14) = sub_1002FFA0C(v34, v32, v35);
      _os_log_impl(&_mh_execute_header, v19, v20, "Removing high priority request for connection %s client %s", v22, 0x16u);
      swift_arrayDestroy();

      a3 = v32;
    }

    else
    {

      (*(v8 + 8))(v10, v7);
      v27 = v34;
    }

    v28 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests;
    v29 = swift_beginAccess();
    v30 = *(v4 + v28);
    __chkstk_darwin(v29);
    *(&v31 - 4) = v33;
    *(&v31 - 3) = v27;
    *(&v31 - 2) = a3;

    *(v4 + v28) = sub_100333244(sub_10033C418, &v31 - 6, v30);

    return sub_10033A8B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100339298(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_logger;
    (*(v5 + 16))(v7, a1, v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v44[1] = v14;
      v18 = v17;
      v19 = swift_slowAlloc();
      v45 = a1;
      v20 = v19;
      v47[0] = v19;
      *v18 = 136315138;
      sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v5 + 8))(v7, v4);
      v24 = sub_1002FFA0C(v21, v23, v47);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Setting low priority for connection %s", v18, 0xCu);
      sub_1000752F4(v20);
      a1 = v45;
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v25 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests;
    v26 = swift_beginAccess();
    v27 = *(v2 + v25);
    __chkstk_darwin(v26);
    v44[-2] = a1;

    v28 = sub_10011F6E8(sub_10033C398, &v44[-4], v27);

    if (v28)
    {

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v46[0] = v32;
        *v31 = 136315138;
        v33 = *(v28 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client);
        v34 = *(v28 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client + 8);

        v35 = sub_1002FFA0C(v33, v34, v46);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "Can't set priority to LOW because HIGH priority is requested by client %s", v31, 0xCu);
        sub_1000752F4(v32);

        return;
      }
    }

    else
    {
      v36 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;
      v37 = swift_beginAccess();
      v38 = *(v2 + v36);
      __chkstk_darwin(v37);
      v44[-2] = a1;

      v39 = sub_10011F6E8(sub_10033C3D8, &v44[-4], v38);

      if (!v39)
      {
        v29 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v29, v40, "Connection does not exist", v41, 2u);
        }

        goto LABEL_19;
      }

      *(v39 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) = 0;
      if (*(v39 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) == 1)
      {
        sub_10033A8B4();

        return;
      }

      v29 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v29, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v29, v42, "Connection priority already LOW", v43, 2u);
      }
    }

LABEL_19:

    return;
  }

  __break(1u);
}

void sub_100339910(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_logger;
    (*(v5 + 16))(v7, a1, v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v38[1] = v14;
      v19 = v18;
      v40[0] = v18;
      *v17 = 136315138;
      sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v4;
      v22 = v2;
      v23 = a1;
      v25 = v24;
      (*(v5 + 8))(v7, v21);
      v26 = sub_1002FFA0C(v20, v25, v40);
      a1 = v23;
      v2 = v22;

      *(v17 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Setting high priority for connection %s", v17, 0xCu);
      sub_1000752F4(v19);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v27 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;
    v28 = swift_beginAccess();
    v29 = *(v2 + v27);
    __chkstk_darwin(v28);
    v38[-2] = a1;

    v4 = sub_10011F6E8(sub_10033C4D4, &v38[-4], v29);

    if (!v4)
    {
      v33 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v33, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v33, v36, "Connection does not exist", v37, 2u);
      }

      goto LABEL_15;
    }

    *(v4 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) = 1;
    v30 = swift_beginAccess();
    v39 = v4;
    v31 = *(v2 + v27);
    __chkstk_darwin(v30);
    v38[-2] = &v39;

    v32 = sub_100333244(sub_10033C4FC, &v38[-4], v31);

    *(v2 + v27) = v32;
    if (!(v32 >> 62))
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    return;
  }

LABEL_9:

  sub_1001A2144(0, 0, v4);

  swift_endAccess();
  if (*(v4 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent))
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Connection priority already HIGH", v35, 2u);
    }

LABEL_15:

    return;
  }

  sub_10033A8B4();
}

uint64_t sub_100339EE0()
{
  type metadata accessor for DSKBLEConnectionPriority(0);
  swift_allocObject();
  result = sub_100339F20();
  qword_10051B808 = result;
  return result;
}

uint64_t sub_100339F20()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections) = _swiftEmptyArrayStorage;
  v1 = v0 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_delegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_numHighPrioritySlots) = 2;
  *(v0 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests) = _swiftEmptyArrayStorage;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v4[4] = sub_10033C394;
  v4[5] = v0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100193978;
  v4[3] = &unk_1004D1150;
  v2 = _Block_copy(v4);

  os_state_add_handler();
  _Block_release(v2);
  return v0;
}

void *sub_10033A094()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    goto LABEL_52;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v5 = _swiftEmptyArrayStorage;
    if (v4)
    {
      break;
    }

LABEL_31:
    v46 = sub_100068FC4(&unk_100504010, &unk_100409CB0);
    v98 = v46;
    *&v97 = v5;
    sub_100075D50(&v97, v84);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v84, 0x697463656E6E6F63, 0xEB00000000736E6FLL, isUniquelyReferenced_nonNull_native);
    v48 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests;
    swift_beginAccess();
    v49 = *(v1 + v48);
    if (v49 >> 62)
    {
      v73 = *(v1 + v48);
      v50 = _CocoaArrayWrapper.endIndex.getter();
      v49 = v73;
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = _swiftEmptyArrayStorage;
    if (!v50)
    {
LABEL_47:
      v98 = v46;
      *&v97 = v51;
      sub_100075D50(&v97, v84);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      sub_100315178(v84, 0xD000000000000016, 0x800000010046F660, v69);
      sub_1001950D4(_swiftEmptyDictionarySingleton);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v71 = sub_100015DA0("dskbleconnectionpriority.state", isa);

      return v71;
    }

    *&v97 = _swiftEmptyArrayStorage;
    v52 = v49;

    result = sub_10019F464(0, v50 & ~(v50 >> 63), 0);
    if (v50 < 0)
    {
      goto LABEL_55;
    }

    v51 = v97;
    v79 = v52 & 0xC000000000000001;
    sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v53 = v52;
    v77 = v52;
    v54 = 0;
    while (1)
    {
      if (v79)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v55 = *(v53 + 8 * v54 + 32);
      }

      v80 = UUID.uuidString.getter();
      v81 = v56;
      v82 = *(v55 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client);
      v83 = *(v55 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client + 8);
      v1 = static _DictionaryStorage.allocate(capacity:)();

      v3 = sub_10008C908(0x696669746E656469, 0xEA00000000007265);
      if (v57)
      {
        break;
      }

      *(v1 + 64 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
      v58 = (*(v1 + 48) + 16 * v3);
      *v58 = 0x696669746E656469;
      v58[1] = 0xEA00000000007265;
      v59 = (*(v1 + 56) + 16 * v3);
      *v59 = v80;
      v59[1] = v81;
      v60 = *(v1 + 16);
      v25 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v25)
      {
        goto LABEL_51;
      }

      *(v1 + 16) = v61;

      v3 = sub_10008C908(0x746E65696C63, 0xE600000000000000);
      if (v62)
      {
        break;
      }

      *(v1 + 64 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
      v63 = (*(v1 + 48) + 16 * v3);
      *v63 = 0x746E65696C63;
      v63[1] = 0xE600000000000000;
      v64 = (*(v1 + 56) + 16 * v3);
      *v64 = v82;
      v64[1] = v83;
      v65 = *(v1 + 16);
      v25 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v25)
      {
        goto LABEL_51;
      }

      *(v1 + 16) = v66;

      sub_100068FC4(&unk_100504020, &qword_100409CC0);
      swift_arrayDestroy();

      *&v97 = v51;
      v68 = v51[2];
      v67 = v51[3];
      if (v68 >= v67 >> 1)
      {
        sub_10019F464((v67 > 1), v68 + 1, 1);
        v51 = v97;
      }

      ++v54;
      v51[2] = v68 + 1;
      v51[v68 + 4] = v1;
      v53 = v77;
      if (v50 == v54)
      {

        goto LABEL_47;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    v72 = v3;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v72;
  }

  *&v97 = _swiftEmptyArrayStorage;
  v6 = v3;

  result = sub_10019F464(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v74 = v1;
    v5 = v97;
    v78 = v6 & 0xC000000000000001;
    sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v8 = v6;
    v76 = v6;
    v9 = 0;
    v75 = v4;
    while (1)
    {
      if (v78)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v8 + 8 * v9 + 32);
      }

      v85 = 0x696669746E656469;
      v86 = 0xEA00000000007265;
      v87 = UUID.uuidString.getter();
      v88 = v11;
      v89 = 0xD000000000000010;
      v90 = 0x800000010046F640;
      v12 = *(v10 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) ? 1751607656 : 7827308;
      v13 = *(v10 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) ? 0xE400000000000000 : 0xE300000000000000;
      v91 = v12;
      v92 = v13;
      v93 = 0x70206465746E6177;
      v94 = 0xEF797469726F6972;
      v14 = *(v10 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) ? 1751607656 : 7827308;
      v15 = *(v10 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) ? 0xE400000000000000 : 0xE300000000000000;
      v95 = v14;
      v96 = v15;
      v16 = static _DictionaryStorage.allocate(capacity:)();

      v17 = v85;
      v18 = v86;
      v20 = v87;
      v19 = v88;

      v3 = sub_10008C908(v17, v18);
      if (v21)
      {
        break;
      }

      v1 = (v16 + 8);
      *(v16 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v3;
      v22 = (v16[6] + 16 * v3);
      *v22 = v17;
      v22[1] = v18;
      v23 = (v16[7] + 16 * v3);
      *v23 = v20;
      v23[1] = v19;
      v24 = v16[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_49;
      }

      v16[2] = v26;
      v27 = v89;
      v28 = v90;
      v30 = v91;
      v29 = v92;

      v3 = sub_10008C908(v27, v28);
      if (v31)
      {
        break;
      }

      *(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
      v32 = (v16[6] + 16 * v3);
      *v32 = v27;
      v32[1] = v28;
      v33 = (v16[7] + 16 * v3);
      *v33 = v30;
      v33[1] = v29;
      v34 = v16[2];
      v25 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v25)
      {
        goto LABEL_49;
      }

      v16[2] = v35;
      v36 = v93;
      v37 = v94;
      v39 = v95;
      v38 = v96;

      v3 = sub_10008C908(v36, v37);
      if (v40)
      {
        break;
      }

      *(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
      v41 = (v16[6] + 16 * v3);
      *v41 = v36;
      v41[1] = v37;
      v42 = (v16[7] + 16 * v3);
      *v42 = v39;
      v42[1] = v38;
      v43 = v16[2];
      v25 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v25)
      {
        goto LABEL_49;
      }

      v16[2] = v44;

      sub_100068FC4(&unk_100504020, &qword_100409CC0);
      swift_arrayDestroy();

      *&v97 = v5;
      v1 = v5[2];
      v45 = v5[3];
      if (v1 >= v45 >> 1)
      {
        sub_10019F464((v45 > 1), v1 + 1, 1);
        v5 = v97;
      }

      ++v9;
      v5[2] = v1 + 1;
      v5[v1 + 4] = v16;
      v8 = v76;
      if (v75 == v9)
      {

        v1 = v74;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_10033A8B4()
{
  v48 = type metadata accessor for DispatchWorkItemFlags();
  v0 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v2 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
LABEL_52:
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v44 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v9 = *(v5 + 8);
  v5 += 8;
  v9(v7, v4);
  if (v8)
  {
    v10 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_requests;
    v11 = v55;
    swift_beginAccess();
    v7 = *(v11 + v10);
    v5 = v11;
    v42 = v0;
    v41 = v2;
    if (!(v7 >> 62))
    {
      v4 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  v2 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;

  swift_beginAccess();
  v53 = v2;
  v43 = v7;
  if (v4)
  {
    v12 = v7;
    v13 = 0;
    v7 = 0;
    v52 = v12 & 0xC000000000000001;
    v51 = v12 & 0xFFFFFFFFFFFFFF8;
    v50 = v12 + 32;
    v49 = v4;
    while (1)
    {
      if (v52)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = __OFADD__(v13, 1);
        v15 = (v13 + 1);
        if (v14)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v13 >= *(v51 + 16))
        {
          goto LABEL_51;
        }

        v14 = __OFADD__(v13, 1);
        v15 = (v13 + 1);
        if (v14)
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      v54 = v15;
      v4 = *(v5 + v2);
      v16 = v4 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v16)
      {
        break;
      }

LABEL_7:

      v5 = v55;
      v2 = v53;
LABEL_8:
      v4 = v49;
      v13 = v54;
      if (v54 == v49)
      {
        goto LABEL_34;
      }
    }

    v0 = 0;
    v5 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v2 = v0 + 1;
        if (__OFADD__(v0, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      else
      {
        if (v0 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v17 = *(v4 + 8 * v0 + 32);

        v2 = v0 + 1;
        if (__OFADD__(v0, 1))
        {
          goto LABEL_47;
        }
      }

      if (static UUID.== infix(_:_:)())
      {
        break;
      }

      ++v0;
      if (v2 == v16)
      {
        goto LABEL_7;
      }
    }

    *(v17 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) = 1;
    v0 = v55;
    v2 = v53;
    v18 = swift_beginAccess();
    v59 = v17;
    v19 = *(v0 + v2);
    __chkstk_darwin(v18);
    *(&v41 - 2) = &v59;

    v20 = sub_100333244(sub_10033BDBC, &v41 - 4, v19);
    v5 = v0;

    *(v0 + v2) = v20;
    if (!(v20 >> 62) || (_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {

      sub_1001A2144(0, 0, v17);

      swift_endAccess();

      goto LABEL_8;
    }

    __break(1u);
  }

  v7 = 0;
LABEL_34:

  v60 = _swiftEmptyArrayStorage;
  swift_beginAccess();

  sub_10033BDE0(v21, &v60, v5);

  v22 = v60;
  if (v60 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v4 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_36:
      v23 = 0;
      v24 = v22 & 0xC000000000000001;
      v0 = v22 & 0xFFFFFFFFFFFFFF8;
      v49 = v58;
      v43 = v42 + 1;
      v42 = (v41 + 8);
      v52 = 0;
      v51 = v22;
      v50 = v22 & 0xC000000000000001;
      do
      {
        if (v24)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v34 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v23 >= *(v0 + 16))
          {
            goto LABEL_49;
          }

          v33 = *(v22 + 8 * v23 + 32);

          v34 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        if ((*(v33 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) & 1) == 0)
        {
          *(v33 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) = 1;
          v25 = swift_allocObject();
          *(v25 + 16) = v5;
          *(v25 + 24) = v33;
          v58[2] = sub_10033C294;
          v58[3] = v25;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v58[0] = sub_100080830;
          v58[1] = &unk_1004D10D8;
          v54 = _Block_copy(aBlock);

          v26 = v45;
          static DispatchQoS.unspecified.getter();
          v56 = _swiftEmptyArrayStorage;
          sub_10033C34C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
          sub_1000BA838();
          v27 = v47;
          v28 = v48;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v29 = v54;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          v24 = v50;
          _Block_release(v29);

          v30 = v27;
          v22 = v51;
          v31 = v28;
          v2 = v53;
          (*v43)(v30, v31);
          v32 = v26;
          v5 = v55;
          v7 = v52;
          (*v42)(v32, v46);
        }

        ++v23;
      }

      while (v34 != v4);
    }
  }

  v35 = *(v5 + v2);
  if (v35 >> 62)
  {
    goto LABEL_70;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_58:

  if (v36)
  {
    v37 = 0;
    do
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_67:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_70:
          v36 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_58;
        }

        v38 = *(v35 + 8 * v37 + 32);

        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_67;
        }
      }

      aBlock[0] = v38;
      sub_10033B5E0(aBlock);

      ++v37;
    }

    while (v39 != v36);
  }
}

BOOL sub_10033B278(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10033C34C(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_10033B31C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (*(v6 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client) == a3 && *(v6 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client + 8) == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10033B3A8(uint64_t a1)
{
  v6 = a1;
  v2 = *v1;
  v5[2] = &v6;

  v3 = sub_100333244(sub_10033C460, v5, v2);

  *v1 = v3;

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_10033B470(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  type metadata accessor for UUID();
  sub_10033C34C(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    if (*(v6 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client) == a3 && *(v6 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_client + 8) == a4)
    {
      v8 = 0;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

void sub_10033B564(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = (a1 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_delegate);
  swift_beginAccess();
  v6 = v5[3];
  if (v6)
  {
    sub_1000752B0(v5, v6);
    a3(a2 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_identifier);
  }
}

void sub_10033B5E0(uint64_t *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    v16 = v15[0];
    *v10 = 136315650;
    (*(v4 + 16))(v6, v7 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_identifier, v3);
    sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v15[1] = v1;
    v13 = v12;
    (*(v4 + 8))(v6, v3);
    v14 = sub_1002FFA0C(v11, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    LODWORD(v14) = *(v7 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent);

    *(v10 + 14) = v14;

    *(v10 + 18) = 1024;
    LODWORD(v13) = *(v7 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted);

    *(v10 + 20) = v13;

    _os_log_impl(&_mh_execute_header, v8, v9, "Priority for %s current high %{BOOL}d wanted high %{BOOL}d", v10, 0x18u);
    sub_1000752F4(v15[0]);
  }

  else
  {
  }
}

uint64_t sub_10033B880()
{
  v1 = OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10033B938()
{
  v1 = OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD119HighPriorityRequest_connectionIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10033BA04(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  sub_10033BD34(v2 + OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_delegate);

  return swift_deallocClassInstance();
}

uint64_t sub_10033BAF8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10033BBD8(uint64_t a1)
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

uint64_t sub_10033BC9C(uint64_t a1)
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

uint64_t sub_10033BD34(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504090, &qword_10040B3A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10033BDE0(unint64_t a1, unint64_t *a2, uint64_t a3)
{
  v33 = a3;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = type metadata accessor for DispatchQoS();
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = 0;
    v11 = a1 & 0xC000000000000001;
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v22 = (v5 + 8);
    v23 = v37;
    v21 = (v7 + 8);
    v13 = &qword_10050B000;
    v27 = a1;
    v28 = a2;
    v25 = a1 & 0xC000000000000001;
    v26 = i;
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    while (v11)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_24;
      }

LABEL_12:
      if (*a2 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() > 1)
        {
          goto LABEL_15;
        }
      }

      else if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
      {
        goto LABEL_15;
      }

      if (*(v7 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v13 = &qword_10050B000;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_7;
      }

LABEL_15:
      v14 = v13[135];
      if (*(v7 + v14) == 1)
      {
        *(v7 + v14) = 0;
        if (qword_100501D90 != -1)
        {
          swift_once();
        }

        v34 = qword_10051B7F0;
        v15 = swift_allocObject();
        *(v15 + 16) = v33;
        *(v15 + 24) = v7;
        v37[2] = sub_10033C31C;
        v37[3] = v15;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v37[0] = sub_100080830;
        v37[1] = &unk_1004D1128;
        v16 = _Block_copy(aBlock);

        v17 = v29;
        static DispatchQoS.unspecified.getter();
        v35 = _swiftEmptyArrayStorage;
        sub_10033C34C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_1000BA838();
        v19 = v31;
        v18 = v32;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v16);
        (*v22)(v19, v18);
        (*v21)(v17, v30);

        a1 = v27;
        a2 = v28;
        v11 = v25;
        i = v26;
        v12 = v24;
        v13 = &qword_10050B000;
        goto LABEL_8;
      }

LABEL_7:

LABEL_8:
      ++v10;
      if (v5 == i)
      {
        return;
      }
    }

    if (v10 >= *(v12 + 16))
    {
      goto LABEL_25;
    }

    v7 = *(a1 + 8 * v10 + 32);

    v5 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_12;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

double sub_10033C2C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10033C2DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10033C34C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10033C518(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v55 = a2;
  v3 = type metadata accessor for SymmetricKey();
  v54 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SharedSecret();
  v53 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v57 = 0xD000000000000012;
  v58 = 0x80000001004626A0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v15 = sub_10008CA7C(&v59), (v16 & 1) == 0))
  {
    sub_100092F28(&v59);
    goto LABEL_7;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v15, v62);
  sub_100092F28(&v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_1000B9C54();
    v19 = "Missing ephemeralPublicKey";
    goto LABEL_8;
  }

  v50 = v3;
  v51 = Data.init(base64Encoded:options:)();
  v18 = v17;

  v52 = v18;
  if (v18 >> 60 == 15)
  {
    sub_1000B9C54();
    v19 = "Invalid ephemeralPublicKey";
LABEL_8:
    sub_10030990C(0, 1, 0xD00000000000001ALL, (v19 - 32) | 0x8000000000000000, 0);
    return swift_willThrow();
  }

  v57 = 1635017060;
  v58 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v21 = sub_10008CA7C(&v59), (v22 & 1) == 0))
  {
    sub_100092F28(&v59);
    v24 = v51;
    goto LABEL_15;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v21, v62);
  sub_100092F28(&v59);
  v23 = swift_dynamicCast();
  v24 = v51;
  if ((v23 & 1) == 0)
  {
LABEL_15:
    sub_1000B9C54();
    v27 = 0x20676E697373694DLL;
    goto LABEL_16;
  }

  v49 = Data.init(base64Encoded:options:)();
  v26 = v25;

  if (v26 >> 60 == 15)
  {
    sub_1000B9C54();
    v27 = 0x2064696C61766E49;
LABEL_16:
    sub_10030990C(0, 1, v27, 0xEC00000061746164, 0);
    swift_willThrow();
    v28 = v24;
    v29 = v52;
    return sub_10006A2D0(v28, v29);
  }

  v48 = v26;
  v30 = v52;
  *&v59 = v24;
  *(&v59 + 1) = v52;
  sub_100069E2C(v24, v52);
  v31 = v63;
  P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  if (v31)
  {
    sub_10006A2D0(v24, v30);
    v28 = v49;
    v29 = v48;
    return sub_10006A2D0(v28, v29);
  }

  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  v47 = type metadata accessor for SHA256();
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v63 = P256.KeyAgreement.PublicKey.x963Representation.getter();
  v33 = v32;
  v44 = v32;
  v55 = *(v56 + 8);
  v56 += 8;
  v55(v11, v9);
  v34 = v52;
  *&v62[0] = v24;
  *(&v62[0] + 1) = v52;
  v60 = &type metadata for Data;
  v61 = &protocol witness table for Data;
  *&v59 = v63;
  *(&v59 + 1) = v33;
  v35 = sub_1000752B0(&v59, &type metadata for Data);
  v36 = v35[1];
  v46 = *v35;
  v45 = v36;
  sub_10006A2BC(v24, v34);
  v37 = v63;
  v38 = v44;
  sub_100069E2C(v63, v44);
  sub_10008E4C8(v46, v45, v62);
  v46 = 0;
  sub_10006A178(v37, v38);
  sub_1000752F4(&v59);
  v59 = v62[0];
  sub_1000B95EC(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1000937E0();
  SharedSecret.x963DerivedSymmetricKey<A, B>(using:sharedInfo:outputByteCount:)();
  v39 = sub_10006A178(v59, *(&v59 + 1));
  v63 = &v43;
  __chkstk_darwin(v39);
  v40 = v49;
  v41 = v48;
  *(&v43 - 2) = v49;
  *(&v43 - 1) = v41;
  v42 = v46;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  sub_10006A2D0(v40, v48);
  sub_10006A2D0(v24, v52);
  (*(v54 + 8))(v5, v50);
  (*(v53 + 8))(v8, v6);
  if (v42)
  {
    return (v55)(v14, v9);
  }

  v55(v14, v9);
  return v59;
}

char *sub_10033CCB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v44 = a1;
  v45 = a2;
  v7 = type metadata accessor for SymmetricKey();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v46 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedSecret();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v56 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v51 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v37 - v19;
  *&v52 = a3;
  *(&v52 + 1) = a4;
  sub_100069E2C(a3, a4);
  P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  if (!v4)
  {
    v42 = v14;
    v43 = v15;
    v41 = v11;
    P256.KeyAgreement.PrivateKey.init()();
    P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
    v21 = v13;
    v40 = v20;
    v37[1] = type metadata accessor for SHA256();
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v22 = P256.KeyAgreement.PublicKey.x963Representation.getter();
    v24 = v23;
    v25 = *(v43 + 8);
    v43 += 8;
    v39 = v25;
    v25(v17, v42);
    *&v55 = v22;
    *(&v55 + 1) = v24;
    v53 = &type metadata for Data;
    v54 = &protocol witness table for Data;
    *&v52 = a3;
    *(&v52 + 1) = a4;
    v38 = v21;
    v26 = a4;
    v27 = sub_1000752B0(&v52, &type metadata for Data);
    v28 = *v27;
    v29 = v27[1];
    sub_100069E2C(a3, a4);
    sub_100069E2C(v22, v24);
    sub_10008E4C8(v28, v29, &v55);
    sub_10006A178(v22, v24);
    sub_1000752F4(&v52);
    v52 = v55;
    sub_1000B95EC(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    sub_1000937E0();
    v30 = v46;
    v31 = v56;
    SharedSecret.x963DerivedSymmetricKey<A, B>(using:sharedInfo:outputByteCount:)();
    v32 = sub_10006A178(v52, *(&v52 + 1));
    __chkstk_darwin(v32);
    v33 = v45;
    v37[-6] = v44;
    v37[-5] = v33;
    v37[-4] = a3;
    v37[-3] = v26;
    v34 = v38;
    v37[-2] = v38;
    sub_100068FC4(&unk_100503FB0, &unk_10040B300);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v35 = (v51 + 8);
    (*(v49 + 8))(v30, v50);
    (*(v47 + 8))(v31, v48);
    v39(v40, v42);
    v13 = v52;
    (*v35)(v34, v41);
  }

  return v13;
}

uint64_t sub_10033D24C@<X0>(uint64_t a1@<X0>, char *a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t *a7@<X8>)
{
  v78 = a6;
  v71 = a4;
  v72 = a5;
  v85 = a2;
  v86 = a3;
  v82 = a7;
  v79 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256();
  v10 = *(v9 - 8);
  v69 = v9;
  v70 = v10;
  __chkstk_darwin(v9);
  v83 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v13 = *(v12 - 8);
  v74 = v12;
  v75 = v13;
  __chkstk_darwin(v12);
  v73 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100068FC4(&qword_1005054B8, &unk_10040CD40);
  __chkstk_darwin(v15 - 8);
  v84 = &v68 - v16;
  v17 = type metadata accessor for AES.GCM.SealedBox();
  v80 = *(v17 - 8);
  v81 = v17;
  __chkstk_darwin(v17);
  v87 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AES.GCM.Nonce();
  v88 = *(v19 - 8);
  v89 = v19;
  __chkstk_darwin(v19);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SymmetricKey();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92[0] = a1;
  v92[1] = 16;
  sub_100068FC4(&qword_10050B600, &qword_100416928);
  sub_10033E17C(&qword_10050B608, &protocol conformance descriptor for <A> UnsafeBufferPointer<A>);
  v26 = v25;
  SymmetricKey.init<A>(data:)();
  v27 = a1 + 16;
  if (!a1)
  {
    v27 = 0;
  }

  v92[0] = v27;
  v92[1] = 16;
  sub_10033E17C(&qword_10050B610, &protocol conformance descriptor for <A> UnsafeBufferPointer<A>);
  v28 = v95;
  AES.GCM.Nonce.init<A>(data:)();
  if (v28)
  {
    return (*(v23 + 8))(v25, v22);
  }

  v30 = v83;
  v68 = v23;
  v95 = v22;
  v92[0] = v85;
  v92[1] = v86;
  v32 = v88;
  v31 = v89;
  v33 = v84;
  (*(v88 + 16))(v84, v21, v89);
  (*(v32 + 56))(v33, 0, 1, v31);
  sub_1000937E0();
  static AES.GCM.seal<A>(_:using:nonce:)();
  sub_1001A87BC(v33);
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  v86 = v21;
  v35 = inited;
  *(inited + 16) = xmmword_1004099F0;
  strcpy(v92, "version");
  v92[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v35 + 96) = &type metadata for String;
  *(v35 + 72) = v36;
  *(v35 + 80) = v37;
  strcpy(v92, "publicKeyHash");
  HIWORD(v92[1]) = -4864;
  AnyHashable.init<A>(_:)();
  sub_1000B95EC(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  v85 = v26;
  v38 = v30;
  v39 = v69;
  dispatch thunk of HashFunction.init()();
  v41 = v71;
  v40 = v72;
  sub_100069E2C(v71, v72);
  sub_100357FC4(v41, v40, v38);
  v84 = 0;
  sub_10006A178(v41, v40);
  v42 = v73;
  dispatch thunk of HashFunction.finalize()();
  (*(v70 + 8))(v38, v39);
  v43 = v74;
  v93 = v74;
  v94 = sub_1000B95EC(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v44 = sub_1000B9634(v92);
  v45 = v75;
  (*(v75 + 16))(v44, v42, v43);
  sub_1000752B0(v92, v93);
  v46 = v84;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v84 = v46;
  (*(v45 + 8))(v42, v43);
  v47 = v90;
  v48 = v91;
  sub_1000752F4(v92);
  v49 = Data.base64EncodedString(options:)(0);
  sub_10006A178(v47, v48);
  *(v35 + 168) = &type metadata for String;
  *(v35 + 144) = v49;
  v92[0] = 0xD000000000000012;
  v92[1] = 0x80000001004626A0;
  AnyHashable.init<A>(_:)();
  v50 = v76;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v51 = P256.KeyAgreement.PublicKey.x963Representation.getter();
  v53 = v52;
  (*(v77 + 8))(v50, v79);
  v54 = Data.base64EncodedString(options:)(0);
  sub_10006A178(v51, v53);
  *(v35 + 240) = &type metadata for String;
  *(v35 + 216) = v54;
  v92[0] = 1635017060;
  v92[1] = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  v55 = v87;
  v56 = AES.GCM.SealedBox.ciphertext.getter();
  v58 = v57;
  v59 = AES.GCM.SealedBox.tag.getter();
  v61 = v60;
  v90 = v56;
  v91 = v58;
  v93 = &type metadata for Data;
  v94 = &protocol witness table for Data;
  v92[0] = v59;
  v92[1] = v60;
  v62 = sub_1000752B0(v92, &type metadata for Data);
  v63 = *v62;
  v83 = v62[1];
  sub_100069E2C(v56, v58);
  sub_100069E2C(v59, v61);
  sub_10008E4C8(v63, v83, &v90);
  sub_10006A178(v59, v61);
  sub_10006A178(v56, v58);
  sub_1000752F4(v92);
  v64 = v90;
  v65 = v91;
  v66 = Data.base64EncodedString(options:)(0);
  sub_10006A178(v64, v65);
  *(v35 + 312) = &type metadata for String;
  *(v35 + 288) = v66;
  v67 = sub_100090BC4(v35);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
  swift_arrayDestroy();
  (*(v80 + 8))(v55, v81);
  (*(v88 + 8))(v86, v89);
  result = (*(v68 + 8))(v85, v95);
  *v82 = v67;
  return result;
}

uint64_t sub_10033DC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v55 = a3;
  v56 = a2;
  v54 = a4;
  v5 = type metadata accessor for AES.GCM.SealedBox();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AES.GCM.Nonce();
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v60 = 16;
  sub_100068FC4(&qword_10050B600, &qword_100416928);
  sub_10033E17C(&qword_10050B608, &protocol conformance descriptor for <A> UnsafeBufferPointer<A>);
  SymmetricKey.init<A>(data:)();
  v18 = a1 + 16;
  if (!a1)
  {
    v18 = 0;
  }

  v59 = v18;
  v60 = 16;
  sub_10033E17C(&qword_10050B610, &protocol conformance descriptor for <A> UnsafeBufferPointer<A>);
  v19 = v61;
  result = AES.GCM.Nonce.init<A>(data:)();
  if (v19)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v48 = v14;
  v49 = v10;
  v61 = v13;
  v47 = v15;
  v21 = v53;
  v23 = v54;
  v22 = BYTE6(v55);
  v24 = v55 >> 62;
  if ((v55 >> 62) > 1)
  {
    v25 = v52;
    if (v24 != 2)
    {
      v26 = 0;
      goto LABEL_15;
    }

    v28 = *(v56 + 16);
    v27 = *(v56 + 24);
    v29 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (!v29)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    v25 = v52;
    if (!v24)
    {
      v26 = BYTE6(v55);
LABEL_15:
      v30 = v17;
      goto LABEL_16;
    }
  }

  LODWORD(v26) = HIDWORD(v56) - v56;
  if (__OFSUB__(HIDWORD(v56), v56))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = v17;
  v26 = v26;
LABEL_16:
  result = v49;
  v31 = v26 - 16;
  if (__OFSUB__(v26, 16))
  {
    __break(1u);
    goto LABEL_32;
  }

  v32 = v7;
  v33 = v22;
  result = (*(v25 + 16))(v49, v61, v21);
  if (v31 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = Data.subdata(in:)();
  v59 = result;
  v60 = v34;
  if (v24 > 1)
  {
    v35 = 0;
    v38 = v24 == 2;
    v36 = v23;
    v23 = v51;
    v37 = v21;
    v21 = v48;
    v39 = v30;
    v30 = v32;
    if (!v38 || (v41 = *(v56 + 16), v40 = *(v56 + 24), v35 = v40 - v41, !__OFSUB__(v40, v41)))
    {
LABEL_29:
      if (v35 >= v31)
      {
        v42 = v36;
        v57 = Data.subdata(in:)();
        v58 = v43;
        sub_1000937E0();
        AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
        v44 = static AES.GCM.open(_:using:)();
        v46 = v45;
        (*(v50 + 8))(v30, v23);
        (*(v25 + 8))(v61, v37);
        result = (*(v47 + 8))(v39, v48);
        *v42 = v44;
        v42[1] = v46;
        return result;
      }

      goto LABEL_33;
    }

    __break(1u);
  }

  else if (!v24)
  {
    v35 = v33;
    v36 = v23;
    v23 = v51;
    v37 = v21;
LABEL_28:
    v39 = v30;
    v30 = v32;
    goto LABEL_29;
  }

  if (!__OFSUB__(HIDWORD(v56), v56))
  {
    v35 = HIDWORD(v56) - v56;
    v36 = v23;
    v23 = v51;
    v37 = v21;
    goto LABEL_28;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10033E17C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_10050B600, &qword_100416928);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10033E1E8(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_10033E338, 0, 0);
}

uint64_t sub_10033E338()
{
  v49 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 192);
  v5 = *(v3 + 16);
  *(v0 + 280) = v5;
  *(v0 + 288) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_100340DB8(v1);
  *(v0 + 313) = v6;
  if (v6 == 12)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 248);
    v8 = *(v0 + 232);
    v9 = *(v0 + 192);
    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B2C8);
    v5(v7, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v16 = *(v0 + 232);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v48[0] = v18;
      *v17 = 136315138;
      v19 = UUID.uuidString.getter();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_1002FFA0C(v19, v21, v48);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "SLAMInstall createCredential: %s is not a valid configuration", v17, 0xCu);
      sub_1000752F4(v18);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    sub_10009591C();
    swift_allocError();
    *v42 = 2;
    swift_willThrow();

    v43 = *(v0 + 8);
LABEL_18:

    return v43();
  }

  v24 = *(v0 + 216);
  v23 = *(v0 + 224);
  v25 = *(v0 + 208);
  (*(v24 + 16))(v23, *(v0 + 200) + OBJC_IVAR____TtC10seserviced14SECNetworkShim__shimFailInstall, v25);
  UserDefaultBacked.wrappedValue.getter();
  (*(v24 + 8))(v23, v25);
  if (*(v0 + 312))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 256);
    v27 = *(v0 + 232);
    v28 = *(v0 + 192);
    v29 = type metadata accessor for Logger();
    sub_1000958E4(v29, qword_10051B2C8);
    v5(v26, v28, v27);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 256);
    v34 = *(v0 + 232);
    v35 = *(v0 + 240);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48[0] = v37;
      *v36 = 136315138;
      v38 = UUID.uuidString.getter();
      v40 = v39;
      (*(v35 + 8))(v33, v34);
      v41 = sub_1002FFA0C(v38, v40, v48);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "Created credential that failed install %s", v36, 0xCu);
      sub_1000752F4(v37);
    }

    else
    {

      (*(v35 + 8))(v33, v34);
    }

    (*(v0 + 280))(*(v0 + 184), *(v0 + 192), *(v0 + 232));

    v43 = *(v0 + 8);
    goto LABEL_18;
  }

  v44 = objc_opt_self();
  v45 = String._bridgeToObjectiveC()();
  *(v0 + 296) = v45;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_10033E920;
  v46 = swift_continuation_init();
  *(v0 + 136) = sub_100068FC4(&qword_100503460, &qword_10040B560);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001861F4;
  *(v0 + 104) = &unk_1004D11A0;
  *(v0 + 112) = v46;
  sub_1003AF710(v44, v45, (v0 + 80));

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10033E920()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_10033EE74;
  }

  else
  {
    v2 = sub_10033EA30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10033EA30()
{
  v34 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 313);

  sub_10033F064(v2);
  v3 = String._bridgeToObjectiveC()();
  v4 = String.utf8CString.getter();

  v5 = sub_100013548(v1, v4 + 32, v3);

  if (v5)
  {
    swift_willThrow();

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33[0] = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_1002FFA0C(v11, v12, v33);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error encountered %s", v9, 0xCu);
      sub_1000752F4(v10);
    }

    swift_willThrow();

    v14 = *(v0 + 8);
  }

  else
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 280);
    v16 = *(v0 + 264);
    v17 = *(v0 + 232);
    v18 = *(v0 + 192);
    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_10051B2C8);
    v15(v16, v18, v17);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 264);
    v24 = *(v0 + 232);
    v25 = *(v0 + 240);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33[0] = v27;
      *v26 = 136315138;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      (*(v25 + 8))(v23, v24);
      v31 = sub_1002FFA0C(v28, v30, v33);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "Successfully created credential %s with SLAM", v26, 0xCu);
      sub_1000752F4(v27);
    }

    else
    {

      (*(v25 + 8))(v23, v24);
    }

    (*(v0 + 280))(*(v0 + 184), *(v0 + 192), *(v0 + 232));

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_10033EE74(uint64_t a1)
{
  v14 = v1;
  v2 = *(v1 + 296);
  swift_willThrow();

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error encountered %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  swift_willThrow();

  v11 = *(v1 + 8);

  return v11();
}

unint64_t sub_10033F064(unsigned __int8 a1)
{
  v1 = 0xD000000000000012;
  if (a1 > 5u)
  {
    v3 = 0xD000000000000020;
    v4 = 0xD000000000000014;
    if (a1 != 10)
    {
      v4 = 0xD000000000000019;
    }

    if (a1 != 9)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000017;
    if (a1 == 7)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v5;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 <= 2u)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_10033F19C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_100068FC4(&qword_100502D50, &qword_100414C30);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for SECCredentialConfig();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10033F320, 0, 0);
}

uint64_t sub_10033F320()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 120) = qword_10051B858;

  return _swift_task_switch(sub_10033F3B8, v1, 0);
}

uint64_t sub_10033F3B8()
{
  sub_10009453C(*(v0 + 80));
  *(v0 + 128) = 0;

  return _swift_task_switch(sub_10033F44C, 0, 0);
}

uint64_t sub_10033F44C()
{
  v62 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v21 = *(v2 + 32);
    v21(*(v0 + 112), v3, v1);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 72);
    v23 = *(v0 + 32);
    v24 = *(v0 + 40);
    v25 = *(v0 + 24);
    v26 = type metadata accessor for Logger();
    sub_1000958E4(v26, qword_10051B2C8);
    (*(v24 + 16))(v22, v25, v23);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 72);
    v31 = *(v0 + 32);
    v32 = *(v0 + 40);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v61[0] = v58;
      *v33 = 136315138;
      v60 = v21;
      v34 = UUID.uuidString.getter();
      v36 = v35;
      (*(v32 + 8))(v30, v31);
      v37 = v34;
      v21 = v60;
      v38 = sub_1002FFA0C(v37, v36, v61);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "Getting locally stored metadata for %s", v33, 0xCu);
      sub_1000752F4(v58);
    }

    else
    {

      (*(v32 + 8))(v30, v31);
    }

    v21(*(v0 + 16), *(v0 + 112), *(v0 + 88));

    v52 = *(v0 + 8);
    goto LABEL_21;
  }

  sub_100075768(v3, &qword_100502D50, &qword_100414C30);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 64);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_10051B2C8);
  v9 = *(v5 + 16);
  v9(v4, v7, v6);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 64);
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *v16 = 136315138;
    v17 = UUID.uuidString.getter();
    v57 = v9;
    v19 = v18;
    v59 = *(v15 + 8);
    v59(v13, v14);
    v20 = sub_1002FFA0C(v17, v19, v61);
    v9 = v57;

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Metadata for %s absent, fetching from SHIM", v16, 0xCu);
    sub_1000752F4(v56);
  }

  else
  {

    v59 = *(v15 + 8);
    v59(v13, v14);
  }

  v39 = *(v0 + 56);
  v9(v39, *(v0 + 24), *(v0 + 32));
  v40 = sub_100340DB8(v39);
  *(v0 + 144) = v40;
  if (v40 == 12)
  {
    v9(*(v0 + 48), *(v0 + 24), *(v0 + 32));
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 48);
    v45 = *(v0 + 32);
    if (v43)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v61[0] = v47;
      *v46 = 136315138;
      v48 = UUID.uuidString.getter();
      v50 = v49;
      v59(v44, v45);
      v51 = sub_1002FFA0C(v48, v50, v61);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "SHIM config uuid %s is invalid", v46, 0xCu);
      sub_1000752F4(v47);
    }

    else
    {

      v59(v44, v45);
    }

    sub_10009591C();
    swift_allocError();
    *v54 = 1;
    swift_willThrow();

    v52 = *(v0 + 8);
LABEL_21:

    return v52();
  }

  v53 = *(v0 + 120);
  sub_10033FE18(v40, *(v0 + 104));

  return _swift_task_switch(sub_10033FADC, v53, 0);
}

uint64_t sub_10033FADC(uint64_t a1)
{
  v2 = v1[16];
  v3 = sub_10035E904();
  if (v2)
  {
    v1[17] = v2;
    (*(v1[12] + 8))(v1[13], v1[11]);
    v7 = sub_10033FCA8;
  }

  else
  {
    v4 = v3;
    v5 = v1[13];
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    NSManagedObjectContext.performAndWait<A>(_:)();

    (*(v1[12] + 8))(v1[13], v1[11]);
    v7 = sub_10033FBEC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10033FBEC()
{
  sub_10033FE18(*(v0 + 144), *(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10033FCA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10033FD60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10033FE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v77 = a2;
  v3 = type metadata accessor for SECMetadata();
  __chkstk_darwin(v3 - 8);
  v76 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for UUID();
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v6 - 8);
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v69 - v9;
  __chkstk_darwin(v10);
  v73 = &v69 - v11;
  v80 = type metadata accessor for SECCredentialInfo();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v70 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v71 = &v69 - v14;
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  v81 = type metadata accessor for SECMemoryInfo();
  v18 = *(v81 - 8);
  __chkstk_darwin(v81);
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  __chkstk_darwin(v23);
  v25 = &v69 - v24;
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  __chkstk_darwin(v29);
  v31 = &v69 - v30;
  __chkstk_darwin(v32);
  v34 = &v69 - v33;
  __chkstk_darwin(v35);
  v39 = &v69 - v38;
  if (((1 << v2) & 0x1C7) != 0)
  {
    SECMemoryInfo.init(corSize:codSize:nvmSize:)();
    SECMemoryInfo.init(corSize:codSize:nvmSize:)();
    v74 = v18;
    v40 = *(v18 + 2);
    v41 = v81;
    v40(v31, v34, v81);
    v40(v28, v39, v41);
    SECCredentialInfo.init(modulesAIDs:packageAid:containerSize:requiredMemoryForCredential:)();
    sub_100340B84();
    v42 = v73;
    UUID.init(uuidString:)();

    v43 = v79;
    v44 = v82;
    result = (*(v79 + 48))(v42, 1, v82);
    if (result != 1)
    {
      v72 = "464143544F525954455354455854";
      sub_100068FC4(&qword_1005043D8, &qword_10040B6D8);
      v46 = v78;
      v47 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1004098F0;
      (*(v46 + 16))(v48 + v47, v17, v80);
      (*(v43 + 16))(v75, v42, v44);
      v49 = v42;
      SECMetadata.init(credentialTypes:appletInstances:friendlyName:)();
      v18 = v74;
LABEL_9:
      SECCredentialConfig.init(configUUID:metadata:)();
      (*(v46 + 8))(v17, v80);
      v66 = *(v18 + 1);
      v67 = v34;
      v68 = v81;
      v66(v67, v81);
      v66(v39, v68);
      return (*(v43 + 8))(v49, v82);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((1 << v2) & 0x238) != 0)
  {
    v50 = v18;
    v51 = v80;
    SECMemoryInfo.init(corSize:codSize:nvmSize:)();
    SECMemoryInfo.init(corSize:codSize:nvmSize:)();
    v74 = v50;
    v52 = *(v50 + 2);
    v53 = v81;
    v52(v31, v22, v81);
    v52(v28, v25, v53);
    v54 = v71;
    SECCredentialInfo.init(modulesAIDs:packageAid:containerSize:requiredMemoryForCredential:)();
    sub_100340B84();
    v49 = v72;
    UUID.init(uuidString:)();

    v55 = v79;
    result = (*(v79 + 48))(v49, 1, v82);
    v46 = v78;
    if (result != 1)
    {
      sub_100068FC4(&qword_1005043D8, &qword_10040B6D8);
      v56 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1004098F0;
      (*(v46 + 16))(v57 + v56, v54, v51);
      (*(v55 + 16))(v75, v49, v82);
      SECMetadata.init(credentialTypes:appletInstances:friendlyName:)();
      v17 = v54;
      v34 = v22;
      v39 = v25;
      v43 = v55;
      v18 = v74;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v58 = v37;
  v59 = v36;
  SECMemoryInfo.init(corSize:codSize:nvmSize:)();
  SECMemoryInfo.init(corSize:codSize:nvmSize:)();
  v60 = *(v18 + 2);
  v72 = v58;
  v61 = v58;
  v62 = v81;
  v60(v31, v61, v81);
  v73 = v59;
  v60(v28, v59, v62);
  v63 = v70;
  SECCredentialInfo.init(modulesAIDs:packageAid:containerSize:requiredMemoryForCredential:)();
  sub_100340B84();
  v49 = v74;
  UUID.init(uuidString:)();

  v43 = v79;
  result = (*(v79 + 48))(v49, 1, v82);
  v46 = v78;
  if (result != 1)
  {
    sub_100068FC4(&qword_1005043D8, &qword_10040B6D8);
    v64 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1004098F0;
    (*(v46 + 16))(v65 + v64, v63, v80);
    (*(v43 + 16))(v75, v49, v82);
    SECMetadata.init(credentialTypes:appletInstances:friendlyName:)();
    v17 = v63;
    v34 = v72;
    v39 = v73;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1003407F0()
{
  v1 = OBJC_IVAR____TtC10seserviced14SECNetworkShim__shimFailInstall;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SECNetworkShim(uint64_t a1)
{
  result = qword_10050B648;
  if (!qword_10050B648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003408EC(uint64_t a1)
{
  sub_1002186C8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10034097C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10012E598;

  return sub_100340C84();
}

uint64_t sub_100340A1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C288C;

  return sub_10033E1E8(a1, a2);
}

uint64_t sub_100340AE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10012E598;

  return sub_10033F19C(a1, a2);
}

uint64_t sub_100340CA0(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Kicked off NetworkShim", v6, 2u);
  }

  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_100340DB8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v277 = &v233[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  __chkstk_darwin(v5);
  v238 = &v233[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v241 = &v233[-v8];
  __chkstk_darwin(v9);
  v245 = &v233[-v10];
  __chkstk_darwin(v11);
  v252 = &v233[-v12];
  __chkstk_darwin(v13);
  v256 = &v233[-v14];
  __chkstk_darwin(v15);
  v260 = &v233[-v16];
  __chkstk_darwin(v17);
  v266 = &v233[-v18];
  __chkstk_darwin(v19);
  v265 = &v233[-v20];
  __chkstk_darwin(v21);
  v274 = &v233[-v22];
  __chkstk_darwin(v23);
  v278 = &v233[-v24];
  __chkstk_darwin(v25);
  v276 = &v233[-v26];
  __chkstk_darwin(v27);
  v29 = &v233[-v28];
  v30 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v30 - 8);
  v235 = &v233[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v237 = &v233[-v33];
  __chkstk_darwin(v34);
  v240 = &v233[-v35];
  __chkstk_darwin(v36);
  v236 = &v233[-v37];
  __chkstk_darwin(v38);
  v243 = &v233[-v39];
  __chkstk_darwin(v40);
  v244 = &v233[-v41];
  __chkstk_darwin(v42);
  v239 = &v233[-v43];
  __chkstk_darwin(v44);
  v246 = &v233[-v45];
  __chkstk_darwin(v46);
  v247 = &v233[-v47];
  __chkstk_darwin(v48);
  v242 = &v233[-v49];
  __chkstk_darwin(v50);
  v250 = &v233[-v51];
  __chkstk_darwin(v52);
  v251 = &v233[-v53];
  __chkstk_darwin(v54);
  v248 = &v233[-v55];
  __chkstk_darwin(v56);
  v254 = &v233[-v57];
  __chkstk_darwin(v58);
  v255 = &v233[-v59];
  __chkstk_darwin(v60);
  v249 = &v233[-v61];
  __chkstk_darwin(v62);
  v258 = &v233[-v63];
  __chkstk_darwin(v64);
  v259 = &v233[-v65];
  __chkstk_darwin(v66);
  v253 = &v233[-v67];
  __chkstk_darwin(v68);
  v262 = &v233[-v69];
  __chkstk_darwin(v70);
  v263 = &v233[-v71];
  __chkstk_darwin(v72);
  v257 = &v233[-v73];
  __chkstk_darwin(v74);
  v268 = &v233[-v75];
  __chkstk_darwin(v76);
  v264 = &v233[-v77];
  __chkstk_darwin(v78);
  v261 = &v233[-v79];
  __chkstk_darwin(v80);
  v270 = &v233[-v81];
  __chkstk_darwin(v82);
  v271 = &v233[-v83];
  __chkstk_darwin(v84);
  v267 = &v233[-v85];
  __chkstk_darwin(v86);
  v275 = &v233[-v87];
  __chkstk_darwin(v88);
  v273 = &v233[-v89];
  __chkstk_darwin(v90);
  v269 = &v233[-v91];
  __chkstk_darwin(v92);
  v279 = &v233[-v93];
  __chkstk_darwin(v94);
  v280 = &v233[-v95];
  __chkstk_darwin(v96);
  v98 = &v233[-v97];
  __chkstk_darwin(v99);
  v101 = &v233[-v100];
  v103 = __chkstk_darwin(v102);
  v105 = &v233[-v104];
  v106 = *(v3 + 16);
  v281 = a1;
  v284 = v3 + 16;
  v287 = v106;
  (v106)(&v233[-v104], a1, v2, v103);
  v107 = *(v3 + 56);
  v288 = v3 + 56;
  v286 = v107;
  v107(v105, 0, 1, v2);
  UUID.init(uuidString:)();
  v285 = v5;
  v108 = *(v5 + 48);
  sub_1000756F8(v105, v29);
  sub_1000756F8(v101, &v29[v108]);
  v109 = *(v3 + 48);
  v110 = v109(v29, 1, v2);
  v282 = v109;
  v283 = v3 + 48;
  if (v110 == 1)
  {
    sub_100075768(v101, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v105, &unk_10050BE80, &unk_10040B360);
    if (v109(&v29[v108], 1, v2) == 1)
    {
      sub_100075768(v29, &unk_10050BE80, &unk_10040B360);
      (*(v3 + 8))(v281, v2);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1000756F8(v29, v98);
  if (v109(&v29[v108], 1, v2) == 1)
  {
    sub_100075768(v101, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v105, &unk_10050BE80, &unk_10040B360);
    (*(v3 + 8))(v98, v2);
    v109 = v282;
LABEL_6:
    v272 = v3;
    sub_100075768(v29, &qword_1005031D0, &unk_100413B20);
    v111 = v281;
    goto LABEL_7;
  }

  v126 = &v29[v108];
  v127 = v277;
  (*(v3 + 32))(v277, v126, v2);
  sub_10028527C();
  v234 = dispatch thunk of static Equatable.== infix(_:_:)();
  v272 = v3;
  v128 = *(v3 + 8);
  v128(v127, v2);
  sub_100075768(v101, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v105, &unk_10050BE80, &unk_10040B360);
  v128(v98, v2);
  sub_100075768(v29, &unk_10050BE80, &unk_10040B360);
  v111 = v281;
  v109 = v282;
  if (v234)
  {
    v128(v281, v2);
    return 0;
  }

LABEL_7:
  v112 = v280;
  (v287)(v280, v111, v2);
  v286(v112, 0, 1, v2);
  v113 = v279;
  UUID.init(uuidString:)();
  v114 = *(v285 + 48);
  v115 = v276;
  sub_1000756F8(v112, v276);
  sub_1000756F8(v113, &v115[v114]);
  if (v109(v115, 1, v2) == 1)
  {
    sub_100075768(v113, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v112, &unk_10050BE80, &unk_10040B360);
    v116 = v109(&v115[v114], 1, v2);
    v117 = v272;
    if (v116 == 1)
    {
      sub_100075768(v115, &unk_10050BE80, &unk_10040B360);
      (*(v117 + 8))(v111, v2);
      return 1;
    }

    goto LABEL_12;
  }

  v118 = v269;
  sub_1000756F8(v115, v269);
  v119 = v109(&v115[v114], 1, v2);
  v117 = v272;
  if (v119 == 1)
  {
    sub_100075768(v279, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v280, &unk_10050BE80, &unk_10040B360);
    (*(v117 + 8))(v118, v2);
LABEL_12:
    sub_100075768(v115, &qword_1005031D0, &unk_100413B20);
    goto LABEL_13;
  }

  v137 = v277;
  (*(v272 + 32))(v277, &v115[v114], v2);
  sub_10028527C();
  LODWORD(v281) = dispatch thunk of static Equatable.== infix(_:_:)();
  v138 = *(v117 + 8);
  v138(v137, v2);
  sub_100075768(v279, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v280, &unk_10050BE80, &unk_10040B360);
  v138(v118, v2);
  sub_100075768(v115, &unk_10050BE80, &unk_10040B360);
  if (v281)
  {
    v138(v111, v2);
    return 1;
  }

LABEL_13:
  v120 = v273;
  (v287)(v273, v111, v2);
  v286(v120, 0, 1, v2);
  v121 = v275;
  UUID.init(uuidString:)();
  v122 = *(v285 + 48);
  v123 = v278;
  sub_1000756F8(v120, v278);
  sub_1000756F8(v121, &v123[v122]);
  v124 = v282;
  if (v282(v123, 1, v2) == 1)
  {
    sub_100075768(v121, &unk_10050BE80, &unk_10040B360);
    v125 = v278;
    sub_100075768(v120, &unk_10050BE80, &unk_10040B360);
    if (v124(&v125[v122], 1, v2) == 1)
    {
      sub_100075768(v125, &unk_10050BE80, &unk_10040B360);
      (*(v117 + 8))(v111, v2);
      return 2;
    }

    goto LABEL_21;
  }

  v130 = v267;
  sub_1000756F8(v123, v267);
  if (v124(&v123[v122], 1, v2) == 1)
  {
    sub_100075768(v275, &unk_10050BE80, &unk_10040B360);
    v125 = v278;
    sub_100075768(v120, &unk_10050BE80, &unk_10040B360);
    (*(v117 + 8))(v130, v2);
LABEL_21:
    sub_100075768(v125, &qword_1005031D0, &unk_100413B20);
    goto LABEL_22;
  }

  v145 = &v123[v122];
  v146 = v277;
  (*(v117 + 32))(v277, v145, v2);
  sub_10028527C();
  LODWORD(v281) = dispatch thunk of static Equatable.== infix(_:_:)();
  v147 = *(v117 + 8);
  v147(v146, v2);
  sub_100075768(v275, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v120, &unk_10050BE80, &unk_10040B360);
  v147(v130, v2);
  sub_100075768(v123, &unk_10050BE80, &unk_10040B360);
  if (v281)
  {
    v147(v111, v2);
    return 2;
  }

LABEL_22:
  v131 = v271;
  (v287)(v271, v111, v2);
  v286(v131, 0, 1, v2);
  v132 = v270;
  UUID.init(uuidString:)();
  v133 = *(v285 + 48);
  v134 = v274;
  sub_1000756F8(v131, v274);
  sub_1000756F8(v132, &v134[v133]);
  v135 = v282;
  if (v282(v134, 1, v2) == 1)
  {
    sub_100075768(v132, &unk_10050BE80, &unk_10040B360);
    v136 = v274;
    sub_100075768(v131, &unk_10050BE80, &unk_10040B360);
    if (v135(&v136[v133], 1, v2) == 1)
    {
      sub_100075768(v136, &unk_10050BE80, &unk_10040B360);
      (*(v117 + 8))(v111, v2);
      return 3;
    }

    goto LABEL_30;
  }

  v139 = v261;
  sub_1000756F8(v134, v261);
  if (v135(&v134[v133], 1, v2) == 1)
  {
    sub_100075768(v270, &unk_10050BE80, &unk_10040B360);
    v136 = v274;
    sub_100075768(v271, &unk_10050BE80, &unk_10040B360);
    (*(v117 + 8))(v139, v2);
LABEL_30:
    sub_100075768(v136, &qword_1005031D0, &unk_100413B20);
    goto LABEL_31;
  }

  v155 = &v134[v133];
  v156 = v277;
  (*(v117 + 32))(v277, v155, v2);
  sub_10028527C();
  LODWORD(v281) = dispatch thunk of static Equatable.== infix(_:_:)();
  v157 = *(v117 + 8);
  v157(v156, v2);
  sub_100075768(v270, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v271, &unk_10050BE80, &unk_10040B360);
  v157(v139, v2);
  sub_100075768(v134, &unk_10050BE80, &unk_10040B360);
  if (v281)
  {
    v157(v111, v2);
    return 3;
  }

LABEL_31:
  v140 = v264;
  v287();
  v286(v140, 0, 1, v2);
  v141 = v268;
  UUID.init(uuidString:)();
  v142 = *(v285 + 48);
  v143 = v265;
  sub_1000756F8(v140, v265);
  sub_1000756F8(v141, &v143[v142]);
  v144 = v282;
  if (v282(v143, 1, v2) == 1)
  {
    sub_100075768(v141, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v140, &unk_10050BE80, &unk_10040B360);
    if (v144(&v143[v142], 1, v2) == 1)
    {
      sub_100075768(v143, &unk_10050BE80, &unk_10040B360);
      (*(v117 + 8))(v111, v2);
      return 4;
    }

    goto LABEL_39;
  }

  v148 = v257;
  sub_1000756F8(v143, v257);
  if (v144(&v143[v142], 1, v2) == 1)
  {
    sub_100075768(v268, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v140, &unk_10050BE80, &unk_10040B360);
    (*(v117 + 8))(v148, v2);
LABEL_39:
    sub_100075768(v143, &qword_1005031D0, &unk_100413B20);
    goto LABEL_40;
  }

  v168 = &v143[v142];
  v169 = v277;
  (*(v117 + 32))(v277, v168, v2);
  sub_10028527C();
  LODWORD(v281) = dispatch thunk of static Equatable.== infix(_:_:)();
  v170 = *(v117 + 8);
  v170(v169, v2);
  sub_100075768(v268, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v140, &unk_10050BE80, &unk_10040B360);
  v170(v148, v2);
  sub_100075768(v143, &unk_10050BE80, &unk_10040B360);
  if (v281)
  {
    v170(v111, v2);
    return 4;
  }

LABEL_40:
  v149 = v263;
  (v287)(v263, v111, v2);
  v286(v149, 0, 1, v2);
  v150 = v262;
  UUID.init(uuidString:)();
  v151 = *(v285 + 48);
  v152 = v266;
  sub_1000756F8(v149, v266);
  sub_1000756F8(v150, &v152[v151]);
  v153 = v282;
  if (v282(v152, 1, v2) == 1)
  {
    sub_100075768(v150, &unk_10050BE80, &unk_10040B360);
    v154 = v266;
    sub_100075768(v149, &unk_10050BE80, &unk_10040B360);
    if (v153(&v154[v151], 1, v2) == 1)
    {
      sub_100075768(v154, &unk_10050BE80, &unk_10040B360);
      (*(v117 + 8))(v111, v2);
      return 5;
    }

    goto LABEL_48;
  }

  v158 = v253;
  sub_1000756F8(v152, v253);
  if (v153(&v152[v151], 1, v2) == 1)
  {
    sub_100075768(v262, &unk_10050BE80, &unk_10040B360);
    v154 = v266;
    sub_100075768(v263, &unk_10050BE80, &unk_10040B360);
    (*(v117 + 8))(v158, v2);
LABEL_48:
    sub_100075768(v154, &qword_1005031D0, &unk_100413B20);
    goto LABEL_49;
  }

  v178 = &v152[v151];
  v179 = v277;
  (*(v117 + 32))(v277, v178, v2);
  sub_10028527C();
  LODWORD(v281) = dispatch thunk of static Equatable.== infix(_:_:)();
  v180 = *(v117 + 8);
  v180(v179, v2);
  sub_100075768(v262, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v263, &unk_10050BE80, &unk_10040B360);
  v180(v158, v2);
  sub_100075768(v152, &unk_10050BE80, &unk_10040B360);
  if (v281)
  {
    v180(v111, v2);
    return 5;
  }

LABEL_49:
  v159 = v111;
  v160 = v259;
  v161 = v159;
  (v287)(v259);
  v286(v160, 0, 1, v2);
  v162 = v258;
  UUID.init(uuidString:)();
  v163 = *(v285 + 48);
  v164 = v260;
  sub_1000756F8(v160, v260);
  sub_1000756F8(v162, &v164[v163]);
  v165 = v282;
  if (v282(v164, 1, v2) == 1)
  {
    sub_100075768(v162, &unk_10050BE80, &unk_10040B360);
    v166 = v260;
    sub_100075768(v160, &unk_10050BE80, &unk_10040B360);
    v167 = v161;
    if (v165(&v166[v163], 1, v2) == 1)
    {
      sub_100075768(v166, &unk_10050BE80, &unk_10040B360);
      (*(v117 + 8))(v161, v2);
      return 6;
    }

    goto LABEL_57;
  }

  v171 = v249;
  sub_1000756F8(v164, v249);
  if (v165(&v164[v163], 1, v2) == 1)
  {
    sub_100075768(v258, &unk_10050BE80, &unk_10040B360);
    v166 = v260;
    sub_100075768(v259, &unk_10050BE80, &unk_10040B360);
    (*(v117 + 8))(v171, v2);
    v167 = v161;
LABEL_57:
    sub_100075768(v166, &qword_1005031D0, &unk_100413B20);
    goto LABEL_58;
  }

  v188 = &v164[v163];
  v189 = v277;
  (*(v117 + 32))(v277, v188, v2);
  sub_10028527C();
  v190 = dispatch thunk of static Equatable.== infix(_:_:)();
  v191 = *(v117 + 8);
  v191(v189, v2);
  sub_100075768(v258, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v259, &unk_10050BE80, &unk_10040B360);
  v191(v171, v2);
  sub_100075768(v164, &unk_10050BE80, &unk_10040B360);
  v167 = v161;
  if (v190)
  {
    v191(v161, v2);
    return 6;
  }

LABEL_58:
  v172 = v255;
  (v287)(v255, v167, v2);
  v286(v172, 0, 1, v2);
  v173 = v254;
  UUID.init(uuidString:)();
  v174 = *(v285 + 48);
  v175 = v256;
  sub_1000756F8(v172, v256);
  sub_1000756F8(v173, &v175[v174]);
  v176 = v282;
  if (v282(v175, 1, v2) == 1)
  {
    sub_100075768(v173, &unk_10050BE80, &unk_10040B360);
    v177 = v256;
    sub_100075768(v172, &unk_10050BE80, &unk_10040B360);
    if (v176(&v177[v174], 1, v2) == 1)
    {
      sub_100075768(v177, &unk_10050BE80, &unk_10040B360);
      (*(v117 + 8))(v167, v2);
      return 7;
    }

    goto LABEL_66;
  }

  v181 = v248;
  sub_1000756F8(v175, v248);
  if (v176(&v175[v174], 1, v2) == 1)
  {
    sub_100075768(v254, &unk_10050BE80, &unk_10040B360);
    v177 = v256;
    sub_100075768(v255, &unk_10050BE80, &unk_10040B360);
    (*(v117 + 8))(v181, v2);
LABEL_66:
    sub_100075768(v177, &qword_1005031D0, &unk_100413B20);
    goto LABEL_67;
  }

  v199 = &v175[v174];
  v200 = v277;
  (*(v117 + 32))(v277, v199, v2);
  sub_10028527C();
  v201 = dispatch thunk of static Equatable.== infix(_:_:)();
  v202 = *(v117 + 8);
  v202(v200, v2);
  sub_100075768(v254, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v255, &unk_10050BE80, &unk_10040B360);
  v202(v248, v2);
  sub_100075768(v175, &unk_10050BE80, &unk_10040B360);
  if (v201)
  {
    v202(v167, v2);
    return 7;
  }

LABEL_67:
  v182 = v251;
  (v287)(v251, v167, v2);
  v286(v182, 0, 1, v2);
  v183 = v250;
  UUID.init(uuidString:)();
  v184 = *(v285 + 48);
  v185 = v252;
  sub_1000756F8(v182, v252);
  sub_1000756F8(v183, &v185[v184]);
  v186 = v282;
  if (v282(v185, 1, v2) == 1)
  {
    sub_100075768(v183, &unk_10050BE80, &unk_10040B360);
    v187 = v252;
    sub_100075768(v182, &unk_10050BE80, &unk_10040B360);
    if (v186(&v187[v184], 1, v2) == 1)
    {
      sub_100075768(v187, &unk_10050BE80, &unk_10040B360);
      (*(v117 + 8))(v167, v2);
      return 8;
    }

    goto LABEL_75;
  }

  v192 = v242;
  sub_1000756F8(v185, v242);
  if (v186(&v185[v184], 1, v2) == 1)
  {
    sub_100075768(v250, &unk_10050BE80, &unk_10040B360);
    v187 = v252;
    sub_100075768(v251, &unk_10050BE80, &unk_10040B360);
    (*(v117 + 8))(v192, v2);
LABEL_75:
    sub_100075768(v187, &qword_1005031D0, &unk_100413B20);
    v193 = v285;
    goto LABEL_76;
  }

  v209 = &v185[v184];
  v210 = v277;
  (*(v117 + 32))(v277, v209, v2);
  sub_10028527C();
  LODWORD(v281) = dispatch thunk of static Equatable.== infix(_:_:)();
  v211 = *(v117 + 8);
  v211(v210, v2);
  sub_100075768(v250, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v251, &unk_10050BE80, &unk_10040B360);
  v211(v192, v2);
  sub_100075768(v185, &unk_10050BE80, &unk_10040B360);
  v193 = v285;
  if (v281)
  {
    v211(v167, v2);
    return 8;
  }

LABEL_76:
  v194 = v247;
  (v287)(v247, v167, v2);
  v286(v194, 0, 1, v2);
  v195 = v246;
  UUID.init(uuidString:)();
  v196 = *(v193 + 48);
  v197 = v245;
  sub_1000756F8(v194, v245);
  sub_1000756F8(v195, &v197[v196]);
  v198 = v282;
  if (v282(v197, 1, v2) == 1)
  {
    sub_100075768(v195, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v194, &unk_10050BE80, &unk_10040B360);
    if (v198(&v197[v196], 1, v2) == 1)
    {
      sub_100075768(v197, &unk_10050BE80, &unk_10040B360);
      (*(v117 + 8))(v167, v2);
      return 9;
    }

    goto LABEL_84;
  }

  v203 = v239;
  sub_1000756F8(v197, v239);
  if (v198(&v197[v196], 1, v2) == 1)
  {
    sub_100075768(v246, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v247, &unk_10050BE80, &unk_10040B360);
    (*(v117 + 8))(v203, v2);
LABEL_84:
    sub_100075768(v197, &qword_1005031D0, &unk_100413B20);
    goto LABEL_85;
  }

  v219 = &v197[v196];
  v220 = v277;
  (*(v117 + 32))(v277, v219, v2);
  sub_10028527C();
  LODWORD(v281) = dispatch thunk of static Equatable.== infix(_:_:)();
  v221 = v197;
  v222 = *(v117 + 8);
  v222(v220, v2);
  sub_100075768(v246, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v247, &unk_10050BE80, &unk_10040B360);
  v222(v203, v2);
  sub_100075768(v221, &unk_10050BE80, &unk_10040B360);
  if (v281)
  {
    v222(v167, v2);
    return 9;
  }

LABEL_85:
  v204 = v244;
  (v287)(v244, v167, v2);
  v286(v204, 0, 1, v2);
  v205 = v243;
  UUID.init(uuidString:)();
  v206 = *(v193 + 48);
  v207 = v241;
  sub_1000756F8(v204, v241);
  sub_1000756F8(v205, &v207[v206]);
  v208 = v282;
  if (v282(v207, 1, v2) == 1)
  {
    sub_100075768(v205, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v204, &unk_10050BE80, &unk_10040B360);
    if (v208(&v207[v206], 1, v2) == 1)
    {
      sub_100075768(v207, &unk_10050BE80, &unk_10040B360);
      (*(v117 + 8))(v167, v2);
      return 10;
    }

    goto LABEL_93;
  }

  v212 = v236;
  sub_1000756F8(v207, v236);
  if (v208(&v207[v206], 1, v2) == 1)
  {
    sub_100075768(v243, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v244, &unk_10050BE80, &unk_10040B360);
    (*(v117 + 8))(v212, v2);
LABEL_93:
    sub_100075768(v207, &qword_1005031D0, &unk_100413B20);
    goto LABEL_94;
  }

  v225 = &v207[v206];
  v226 = v277;
  (*(v117 + 32))(v277, v225, v2);
  sub_10028527C();
  LODWORD(v281) = dispatch thunk of static Equatable.== infix(_:_:)();
  v227 = v207;
  v228 = *(v117 + 8);
  v228(v226, v2);
  sub_100075768(v243, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v244, &unk_10050BE80, &unk_10040B360);
  v228(v212, v2);
  sub_100075768(v227, &unk_10050BE80, &unk_10040B360);
  if (v281)
  {
    v228(v167, v2);
    return 10;
  }

LABEL_94:
  v213 = v240;
  (v287)(v240, v167, v2);
  v286(v213, 0, 1, v2);
  v214 = v237;
  UUID.init(uuidString:)();
  v215 = *(v193 + 48);
  v216 = v214;
  v217 = v238;
  sub_1000756F8(v213, v238);
  sub_1000756F8(v214, &v217[v215]);
  v218 = v282;
  if (v282(v217, 1, v2) == 1)
  {
    (*(v117 + 8))(v167, v2);
    sub_100075768(v216, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v213, &unk_10050BE80, &unk_10040B360);
    if (v218(&v217[v215], 1, v2) == 1)
    {
      sub_100075768(v217, &unk_10050BE80, &unk_10040B360);
      return 11;
    }

    goto LABEL_102;
  }

  v223 = v235;
  sub_1000756F8(v217, v235);
  if (v218(&v217[v215], 1, v2) == 1)
  {
    v224 = *(v117 + 8);
    v224(v167, v2);
    sub_100075768(v216, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v240, &unk_10050BE80, &unk_10040B360);
    v224(v223, v2);
LABEL_102:
    sub_100075768(v217, &qword_1005031D0, &unk_100413B20);
    return 12;
  }

  v229 = &v217[v215];
  v230 = v277;
  (*(v117 + 32))(v277, v229, v2);
  sub_10028527C();
  v231 = dispatch thunk of static Equatable.== infix(_:_:)();
  v232 = *(v117 + 8);
  v232(v167, v2);
  v232(v230, v2);
  sub_100075768(v216, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v240, &unk_10050BE80, &unk_10040B360);
  v232(v223, v2);
  sub_100075768(v217, &unk_10050BE80, &unk_10040B360);
  if (v231)
  {
    return 11;
  }

  else
  {
    return 12;
  }
}

void *sub_1003436E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v56 = a1;
  v57 = a3;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v50 - v8;
  v10 = sub_100068FC4(&unk_100504270, &qword_10040B598);
  __chkstk_darwin(v10 - 8);
  v12 = &v50 - v11;
  v55 = type metadata accessor for Calendar.Identifier();
  v13 = *(v55 - 8);
  __chkstk_darwin(v55);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Calendar();
  v52 = *(v16 - 8);
  v53 = v16;
  __chkstk_darwin(v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v50 = *(v19 - 8);
  v51 = v19;
  __chkstk_darwin(v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v50 - v24;
  v26 = *(v4 + 16);
  v58 = v3;
  v26(v57, v56, v3, v23);
  static Date.now.getter();
  v27 = v55;
  (*(v13 + 104))(v15, enum case for Calendar.Identifier.gregorian(_:), v55);
  Calendar.init(identifier:)();
  (*(v13 + 8))(v15, v27);
  TimeZone.init(abbreviation:)();
  v28 = type metadata accessor for TimeZone();
  result = (*(*(v28 - 8) + 48))(v12, 1, v28);
  if (result == 1)
  {
    goto LABEL_20;
  }

  Calendar.timeZone.setter();
  Calendar.startOfDay(for:)();
  (*(v52 + 8))(v18, v53);
  v30 = v51;
  v31 = *(v50 + 8);
  v31(v25, v51);
  Date.timeIntervalSince1970.getter();
  v33 = v32;
  v31(v21, v30);
  v34 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  v35 = v57;
  *(v57 + *(v34 + 20)) = v33 * 1000.0;
  v36 = v54;
  v37 = v35;
  if (v54 >> 62)
  {
    v49 = v54;
    v38 = _CocoaArrayWrapper.endIndex.getter();
    v36 = v49;
    if (v38)
    {
      goto LABEL_4;
    }

LABEL_17:

    result = (*(v4 + 8))(v56, v58);
    v40 = _swiftEmptyArrayStorage;
LABEL_18:
    *(v37 + *(v34 + 24)) = v40;
    return result;
  }

  v38 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
    goto LABEL_17;
  }

LABEL_4:
  v39 = v36;
  v59 = _swiftEmptyArrayStorage;
  result = sub_10019F420(0, v38 & ~(v38 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v55 = v34;
    v40 = v59;
    v41 = v39;
    if ((v39 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v38; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        CredentialInternal.identifier.getter();
        swift_unknownObjectRelease();
        v59 = v40;
        v44 = v40[2];
        v43 = v40[3];
        if (v44 >= v43 >> 1)
        {
          sub_10019F420((v43 > 1), v44 + 1, 1);
          v40 = v59;
        }

        v40[2] = v44 + 1;
        (*(v4 + 32))(v40 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v44, v9, v58);
      }
    }

    else
    {
      v45 = 32;
      do
      {
        v46 = *(v41 + v45);
        CredentialInternal.identifier.getter();

        v59 = v40;
        v48 = v40[2];
        v47 = v40[3];
        if (v48 >= v47 >> 1)
        {
          sub_10019F420((v47 > 1), v48 + 1, 1);
          v40 = v59;
        }

        v40[2] = v48 + 1;
        (*(v4 + 32))(v40 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v48, v6, v58);
        v45 += 8;
        --v38;
        v41 = v39;
      }

      while (v38);
    }

    result = (*(v4 + 8))(v56, v58);
    v37 = v57;
    v34 = v55;
    goto LABEL_18;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_100343D18()
{
  v28 = type metadata accessor for UUID();
  v1 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = 0x644974726F706572;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = UUID.uuidString.getter();
  *(inited + 56) = v4;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "timestampDay");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v5 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  *(inited + 96) = *(v0 + *(v5 + 20));
  *(inited + 120) = &type metadata for Double;
  *(inited + 128) = 7562345;
  *(inited + 136) = 0xE300000000000000;
  v6 = *(v0 + *(v5 + 24));
  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v24[0] = inited;
    v24[1] = inited + 32;
    v29 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v7, 0);
    v8 = v29;
    v10 = *(v1 + 16);
    v9 = v1 + 16;
    v26 = v10;
    v11 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v25 = *(v9 + 56);
    v12 = (v9 - 8);
    do
    {
      v13 = v27;
      v14 = v28;
      v15 = v9;
      v26(v27, v11, v28);
      v16 = UUID.uuidString.getter();
      v18 = v17;
      (*v12)(v13, v14);
      v29 = v8;
      v20 = v8[2];
      v19 = v8[3];
      if (v20 >= v19 >> 1)
      {
        sub_10019F3C0((v19 > 1), v20 + 1, 1);
        v8 = v29;
      }

      v8[2] = v20 + 1;
      v21 = &v8[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v11 += v25;
      --v7;
      v9 = v15;
    }

    while (v7);
    inited = v24[0];
  }

  *(inited + 168) = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *(inited + 144) = v8;
  v22 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  return v22;
}

uint64_t sub_10034402C(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_10050B7C8, &qword_100416A30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000752B0(a1, a1[3]);
  sub_100345A14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for UUID();
  sub_100345A68(&qword_1005089F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_100068FC4(&qword_10050B7B8, &qword_100416A28);
    sub_100345AB0(&qword_10050B7D0, &qword_1005089F8, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100344278@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for UUID();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100068FC4(&qword_10050B7A8, &qword_100416A20);
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000752B0(a1, a1[3]);
  sub_100345A14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  v19 = a1;
  v12 = v11;
  v13 = v21;
  v28 = 0;
  sub_100345A68(&qword_100508A20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v22;
  v15 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v12, v14, v4);
  v27 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v12 + *(v9 + 20)) = v16;
  sub_100068FC4(&qword_10050B7B8, &qword_100416A28);
  v26 = 2;
  sub_100345AB0(&qword_10050B7C0, &qword_100508A20, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 8))(v8, v15);
  *(v12 + *(v9 + 24)) = v25;
  sub_1003460C8(v12, v20, type metadata accessor for CredentialHeartbeatPayload.Report);
  sub_1000752F4(v19);
  return sub_100346130(v12, type metadata accessor for CredentialHeartbeatPayload.Report);
}

uint64_t sub_100344678()
{
  v1 = 0x6D617473656D6974;
  if (*v0 != 1)
  {
    v1 = 7562345;
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

uint64_t sub_1003446D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100345EF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1003446FC(uint64_t a1)
{
  v2 = sub_100345A14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100344738(uint64_t a1)
{
  v2 = sub_100345A14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003447A4(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_10050B8A0, &qword_100416BA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000752B0(a1, a1[3]);
  sub_100346010();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for CredentialHeartbeatPayload.Report(0);
  sub_100345A68(&qword_10050B8A8, type metadata accessor for CredentialHeartbeatPayload.Report, &unk_1004169CC);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for CredentialHeartbeatPayload(0) + 20));
    v10[15] = 1;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10025CC88(&qword_100508158, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003449AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  __chkstk_darwin(v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100068FC4(&qword_10050B888, &qword_100416BA0);
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CredentialHeartbeatPayload(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000752B0(a1, a1[3]);
  sub_100346010();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  v12 = v11;
  v13 = v18;
  v23 = 0;
  sub_100345A68(&qword_10050B898, type metadata accessor for CredentialHeartbeatPayload.Report, &unk_1004169F4);
  v14 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100346064(v20, v12);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v22 = 1;
  sub_10025CC88(&qword_100508150, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_1003460C8(v12, v17, type metadata accessor for CredentialHeartbeatPayload);
  sub_1000752F4(a1);
  return sub_100346130(v12, type metadata accessor for CredentialHeartbeatPayload);
}

uint64_t sub_100344CEC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_100344D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010046BFC0 == a2)
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

uint64_t sub_100344E08(uint64_t a1)
{
  v2 = sub_100346010();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100344E44(uint64_t a1)
{
  v2 = sub_100346010();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100344EB0(uint64_t a1)
{
  *(v1 + 224) = a1;
  v2 = swift_task_alloc();
  *(v1 + 232) = v2;
  *v2 = v1;
  v2[1] = sub_100344F88;

  return sub_1001BDDF0(v1 + 144);
}

uint64_t sub_100344F88()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100345100, 0, 0);
  }
}

uint64_t sub_100345100()
{
  v41 = v0;
  sub_100068FC4(&unk_100504720, &qword_100414C40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100409900;
  *(v1 + 32) = Data.base64EncodedString(options:)(0);
  *(v1 + 48) = Data.base64EncodedString(options:)(0);
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409900;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  v3 = sub_100343D18();
  v4 = sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000010046BFC0;
  *(inited + 120) = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *(inited + 96) = v1;
  sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  v5 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 208) = 0;
  v7 = [v5 dataWithJSONObject:isa options:0 error:v0 + 208];

  v8 = *(v0 + 208);
  if (!v7)
  {
    v22 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000958E4(v23, qword_10051B2C8);
    swift_errorRetain();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v26 = 136315394;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = sub_1002FFA0C(v27, v28, &v40);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = Dictionary.description.getter();
      v32 = v31;

      v33 = sub_1002FFA0C(v30, v32, &v40);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Error %s when serializing %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10009591C();
    swift_allocError();
    *v38 = 14;
    swift_willThrow();
    sub_1002F6D44(v0 + 144);

    goto LABEL_17;
  }

  v9 = *(v0 + 240);

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = sub_1001BD2A4();
  if (v9)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_10051B2C8);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error %@ when signing report", v18, 0xCu);
      sub_1000C2998(v19);
    }

    sub_10009591C();
    swift_allocError();
    *v21 = 6;
    swift_willThrow();

    sub_1002F6D44(v0 + 144);
    sub_10006A178(v10, v12);
LABEL_17:
    v39 = *(v0 + 8);

    return v39();
  }

  v34 = v14;
  v35 = v13;
  sub_1002F6D44(v0 + 144);
  v36 = *(v0 + 8);

  return v36(v35, v34, v10, v12);
}

uint64_t sub_1003457A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100345878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_100345930(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1003459BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003459BC(uint64_t a1)
{
  if (!qword_10050B770)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_10050B770);
    }
  }
}

unint64_t sub_100345A14()
{
  result = qword_10050B7B0;
  if (!qword_10050B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B7B0);
  }

  return result;
}

uint64_t sub_100345A68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100345AB0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_10050B7B8, &qword_100416A28);
    sub_100345A68(a2, &type metadata accessor for UUID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100345B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100345C40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100345D18(uint64_t a1)
{
  type metadata accessor for CredentialHeartbeatPayload.Report(319);
  if (v1 <= 0x3F)
  {
    sub_100345D9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100345D9C()
{
  if (!qword_10050B840)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10050B840);
    }
  }
}

unint64_t sub_100345DF0()
{
  result = qword_10050B870;
  if (!qword_10050B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B870);
  }

  return result;
}

unint64_t sub_100345E48()
{
  result = qword_10050B878;
  if (!qword_10050B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B878);
  }

  return result;
}

unint64_t sub_100345EA0()
{
  result = qword_10050B880;
  if (!qword_10050B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B880);
  }

  return result;
}

uint64_t sub_100345EF4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
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

unint64_t sub_100346010()
{
  result = qword_10050B890;
  if (!qword_10050B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B890);
  }

  return result;
}

uint64_t sub_100346064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialHeartbeatPayload.Report(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003460C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100346130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003461A4()
{
  result = qword_10050B8B0;
  if (!qword_10050B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B8B0);
  }

  return result;
}

unint64_t sub_1003461FC()
{
  result = qword_10050B8B8;
  if (!qword_10050B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B8B8);
  }

  return result;
}

unint64_t sub_100346254()
{
  result = qword_10050B8C0;
  if (!qword_10050B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B8C0);
  }

  return result;
}

void sub_1003462A8(Swift::UInt a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v10 = v5 + 8;
  v11(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_15;
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37[0] = v15;
    *v14 = 136315138;
    if (a1)
    {
      if (a1 != 1)
      {
        v38 = a1;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      v16 = 0xE400000000000000;
      v17 = 1852799308;
    }

    else
    {
      v16 = 0xE600000000000000;
      v17 = 0x616873696C41;
    }

    v18 = sub_1002FFA0C(v17, v16, v37);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Enabling LPEM for %s", v14, 0xCu);
    sub_1000752F4(v15);
  }

  swift_beginAccess();
  sub_1000D558C(&v38, a1);
  swift_endAccess();
  v10 = OBJC_IVAR____TtC10seserviced7DSKLPEM_state;
  if ((*(v2 + OBJC_IVAR____TtC10seserviced7DSKLPEM_state) & 0xFE) == 2)
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37[0] = v22;
      *v21 = 136315138;
      LOBYTE(v38) = *(v2 + v10);
      v23 = String.init<A>(describing:)();
      v25 = sub_1002FFA0C(v23, v24, v37);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "LPEM already %s", v21, 0xCu);
      sub_1000752F4(v22);
    }

    return;
  }

  if (qword_100501A18 != -1)
  {
    goto LABEL_26;
  }

LABEL_15:
  sub_100074C60();
  if (v26 == 2)
  {
    goto LABEL_22;
  }

  v27 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    *(v30 + 4) = v27 & 1;
    _os_log_impl(&_mh_execute_header, v28, v29, "Retrieved LPEM state from storage %{BOOL}d", v30, 8u);
  }

  if ((v27 & 1) == 0)
  {
LABEL_22:
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Enabling LPEM", v36, 2u);
    }

    *(v2 + v10) = 3;
    sub_100347220();
  }

  else
  {
    *(v2 + v10) = 2;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "LPEM state from cache already enabled", v33, 2u);
    }
  }
}

void sub_10034682C(Swift::UInt a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v39[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v10 = v5 + 8;
  v11(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    swift_once();
LABEL_16:
    sub_100074C60();
    if (v27 == 2)
    {
      goto LABEL_20;
    }

    v28 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67109120;
      *(v31 + 4) = v28 & 1;
      _os_log_impl(&_mh_execute_header, v29, v30, "Retrieved LPEM state from storage %{BOOL}d", v31, 8u);
    }

    if (v28)
    {
LABEL_20:
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Disabling LPEM", v34, 2u);
      }

      *(v2 + v10) = 1;
      sub_100347220();
    }

    else
    {
      *(v2 + v10) = 0;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "LPEM state from cache already disabled", v37, 2u);
      }
    }

    return;
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39[0] = v15;
    *v14 = 136315138;
    if (a1)
    {
      if (a1 != 1)
      {
        v38 = a1;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      v16 = 0xE400000000000000;
      v17 = 1852799308;
    }

    else
    {
      v16 = 0xE600000000000000;
      v17 = 0x616873696C41;
    }

    v18 = sub_1002FFA0C(v17, v16, v39);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Disabling LPEM for %s", v14, 0xCu);
    sub_1000752F4(v15);
  }

  v19 = OBJC_IVAR____TtC10seserviced7DSKLPEM_runningModules;
  swift_beginAccess();
  sub_10010D998(a1);
  swift_endAccess();
  if (!*(*(v2 + v19) + 16))
  {
    v10 = OBJC_IVAR____TtC10seserviced7DSKLPEM_state;
    if (*(v2 + OBJC_IVAR____TtC10seserviced7DSKLPEM_state) < 2u)
    {

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v39[0] = v23;
        *v22 = 136315138;
        LOBYTE(v38) = *(v2 + v10);
        v24 = String.init<A>(describing:)();
        v26 = sub_1002FFA0C(v24, v25, v39);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "LPEM already %s", v22, 0xCu);
        sub_1000752F4(v23);
      }

      return;
    }

    if (qword_100501A18 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }
}

uint64_t sub_100346DD8()
{
  type metadata accessor for DSKLPEM(0);
  swift_allocObject();
  result = sub_100346E18();
  qword_10051B810 = result;
  return result;
}

uint64_t sub_100346E18()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_state) = 4;
  *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_isSessionRequested) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_isSupported) = 1;
  v1 = (v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey);
  *v1 = 0xD000000000000013;
  v1[1] = 0x800000010046FAE0;
  *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_runningModules) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetriesMax) = 5;
  *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter) = 0;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v4[4] = sub_1003485A4;
  v4[5] = v0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100193978;
  v4[3] = &unk_1004D1440;
  v2 = _Block_copy(v4);

  os_state_add_handler();
  _Block_release(v2);
  return v0;
}

_DWORD *sub_100346FC4()
{
  v15 = &type metadata for Bool;
  LOBYTE(v14) = 1;
  sub_100075D50(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v13, 0x726F707075537369, 0xEB00000000646574, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();

  v3 = sub_10023FE3C(v2);

  v15 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *&v14 = v3;
  sub_100075D50(&v14, v13);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v13, 0x4D676E696E6E7572, 0xEE0073656C75646FLL, v4);
  v5 = *(v0 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter);
  v15 = &type metadata for Int;
  *&v14 = v5;
  sub_100075D50(&v14, v13);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v13, 0xD000000000000013, 0x800000010046FA90, v6);
  v7 = Dictionary.description.getter();
  v15 = &type metadata for String;
  *&v14 = v7;
  *(&v14 + 1) = v8;
  sub_100075D50(&v14, v13);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v13, 0x6574617473, 0xE500000000000000, v9);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = sub_100015DA0("dsklpem.state", isa);

  return v11;
}

void sub_100347220()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    if ((*(v1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_isSessionRequested) & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_isSessionRequested) = 1;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Requesting hardware manager from NF", v10, 2u);
      }

      v11 = objc_opt_self();
      aBlock[4] = sub_100348518;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000A409C;
      aBlock[3] = &unk_1004D1378;
      v12 = _Block_copy(aBlock);

      [v11 sharedHardwareManagerWithNoUI:v12];
      _Block_release(v12);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100347498(void *a1, uint64_t a2)
{
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Requesting session from NF", v6, 2u);
  }

  v10[4] = sub_100348538;
  v10[5] = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000BBFA0;
  v10[3] = &unk_1004D13A0;
  v7 = _Block_copy(v10);

  v8 = [a1 startLPEMConfigSession:v7];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

void sub_1003475F4(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a2;
  v7[4] = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100348588;
  *(v8 + 24) = v7;
  v12[4] = sub_10021A46C;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100346DB0;
  v12[3] = &unk_1004D1418;
  v9 = _Block_copy(v12);

  swift_errorRetain();
  v10 = a1;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_10034779C(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_isSessionRequested) = 0;
  v4 = OBJC_IVAR____TtC10seserviced7DSKLPEM_state;
  if ((*(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_state) | 2) == 3)
  {
    if (a2)
    {
      v5 = OBJC_IVAR____TtC10seserviced7DSKLPEM_logger;
      swift_errorRetain();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v82 = v9;
        *v8 = 136315138;
        swift_getErrorValue();
        v10 = Error.localizedDescription.getter();
        v12 = sub_1002FFA0C(v10, v11, &v82);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Failed to start LPEM config session %s", v8, 0xCu);
        sub_1000752F4(v9);
      }

      v13 = OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter;
      v14 = *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter);
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (!v15)
      {
        *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter) = v16;
        if (v16 <= 5)
        {

          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 134217984;
            *(v42 + 4) = *(a1 + v13);

            _os_log_impl(&_mh_execute_header, v40, v41, "Retry %ld LPEM Session", v42, 0xCu);
          }

          else
          {
          }

          sub_100347220();
        }

        else
        {
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, v18, "Retries exhausted", v19, 2u);
          }

          *(a1 + v4) = 2 * (*(a1 + v4) != 3);
          *(a1 + v13) = 0;
        }

        return;
      }

      __break(1u);
      goto LABEL_49;
    }

    *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter) = 0;
    if (a3)
    {

      v5 = a3;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v82 = v31;
        *v30 = 136315138;
        v32 = String.init<A>(describing:)();
        v34 = sub_1002FFA0C(v32, v33, &v82);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "LPEM %s", v30, 0xCu);
        sub_1000752F4(v31);
      }

      v35 = *(a1 + v4);
      if (v35 == 1)
      {
        v82 = 0;
        v45 = [v5 disableLPEMFeature:2 error:&v82];
        v46 = v82;
        if (v45)
        {
          *(a1 + v4) = 0;
          v47 = qword_100501A18;
          v48 = v46;
          if (v47 != -1)
          {
            swift_once();
          }

          sub_10008BF48(*(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey), *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey + 8), 0);
        }

        else
        {
          v64 = v82;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_errorRetain();
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            oslogb = swift_slowAlloc();
            v82 = oslogb;
            *v67 = 136315138;
            swift_getErrorValue();
            v68 = Error.localizedDescription.getter();
            v70 = v5;
            v71 = sub_1002FFA0C(v68, v69, &v82);

            *(v67 + 4) = v71;
            v5 = v70;
            _os_log_impl(&_mh_execute_header, v65, v66, "Failed to disable LPEM %s", v67, 0xCu);
            sub_1000752F4(oslogb);
          }

          else
          {
          }

          *(a1 + v4) = 2;
        }

        goto LABEL_45;
      }

      if (v35 != 3)
      {

        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v82 = v52;
          *v51 = 136315138;
          v53 = String.init<A>(describing:)();
          v55 = sub_1002FFA0C(v53, v54, &v82);

          *(v51 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v49, v50, "Unexpected state %s", v51, 0xCu);
          sub_1000752F4(v52);
        }

        goto LABEL_45;
      }

      v82 = 0;
      v36 = [v5 enableLPEMFeature:2 error:&v82];
      v37 = v82;
      if (!v36)
      {
        v56 = v82;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          osloga = swift_slowAlloc();
          v82 = osloga;
          *v59 = 136315138;
          swift_getErrorValue();
          v60 = Error.localizedDescription.getter();
          v62 = v5;
          v63 = sub_1002FFA0C(v60, v61, &v82);

          *(v59 + 4) = v63;
          v5 = v62;
          _os_log_impl(&_mh_execute_header, v57, v58, "Failed to enable LPEM %s", v59, 0xCu);
          sub_1000752F4(osloga);
        }

        else
        {
        }

        *(a1 + v4) = 0;
        goto LABEL_45;
      }

      *(a1 + v4) = 2;
      v38 = qword_100501A18;
      v39 = v37;
      if (v38 == -1)
      {
LABEL_20:
        sub_10008BF48(*(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey), *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_lpemEnabledStorageKey + 8), 1);
LABEL_45:

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v82 = v75;
          *v74 = 136315138;
          v76 = String.init<A>(describing:)();
          v78 = sub_1002FFA0C(v76, v77, &v82);

          *(v74 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v72, v73, "LPEM is %s", v74, 0xCu);
          sub_1000752F4(v75);
        }

        [v5 endSession];
        return;
      }

LABEL_49:
      swift_once();
      goto LABEL_20;
    }

    oslog = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v43, "Got no LPEM config session", v44, 2u);
    }
  }

  else
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v82 = v23;
      *v22 = 136315138;
      v24 = String.init<A>(describing:)();
      v26 = sub_1002FFA0C(v24, v25, &v82);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "State after session acquired %s", v22, 0xCu);
      sub_1000752F4(v23);
    }

    *(a1 + OBJC_IVAR____TtC10seserviced7DSKLPEM_sessionRetryCounter) = 0;
  }
}

uint64_t sub_1003482D0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced7DSKLPEM_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DSKLPEM(uint64_t a1)
{
  result = qword_10050B928;
  if (!qword_10050B928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003483E4(uint64_t a1, uint64_t a2)
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

unint64_t sub_1003484C4()
{
  result = qword_10050B9E8;
  if (!qword_10050B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B9E8);
  }

  return result;
}

double sub_100348520(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100348540()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1003485C0(uint64_t a1)
{
  v35 = type metadata accessor for UUID();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = UUID.uuidString.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10019F3C0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000937D4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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
  }

  return result;
}

uint64_t sub_1003488C8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v4 - 8);
  v6 = &v49 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_94;
  }

LABEL_2:
  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v17 = *(v12 + 8);
  v12 += 8;
  v17(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_96;
  }

  v14 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v18 = *(v8 + 16);
  v18(v10, a1 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v7);
  swift_beginAccess();
  sub_1000C5158(0x10000, v10);
  swift_endAccess();
  v18(v10, a1 + v14, v7);
  swift_beginAccess();
  sub_1000C5310(3, v10);
  swift_endAccess();
  swift_beginAccess();
  sub_10010D6E8(a1 + v14, v6);
  swift_endAccess();
  sub_100075768(v6, &unk_10050BE80, &unk_10040B360);
  v12 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  swift_beginAccess();
  v11 = *(v2 + v12);
  if (v11 >> 62)
  {
LABEL_96:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

  v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (!v10)
  {
  }

  v55 = v12;
  v56 = v2;
  v7 = 0;
  v8 = v11 & 0xFFFFFFFFFFFFFF8;
  v2 = &qword_10050B000;
  while ((v11 & 0xC000000000000001) == 0)
  {
    if (v7 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      swift_once();
      goto LABEL_2;
    }

    v6 = *(v11 + 8 * v7 + 32);

    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_15;
    }

LABEL_10:
    if (static UUID.== infix(_:_:)())
    {
      goto LABEL_16;
    }

    ++v7;
    if (v12 == v10)
    {
    }
  }

  v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v12 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  v19 = *&v6[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer];
  if (v19)
  {
    sub_1003AE754(v19);
  }

  v20 = &v6[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion];
  a1 = *&v6[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion];
  v21 = v55;
  v14 = v56;
  if (a1)
  {
    v11 = v20[1];

    (a1)(262);
    sub_1000B2A4C(a1, v11);
    v22 = *v20;
    v23 = v20[1];
    *v20 = 0;
    v20[1] = 0;
    sub_1000B2A4C(v22, v23);
  }

  v10 = *(v14 + v21);
  v61 = _swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
    goto LABEL_99;
  }

  v7 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
  v58 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier;
  v12 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier;

  if (v7)
  {
    v14 = 0;
    v54 = 0;
    v57 = &v6[v12];
    v2 = (v10 & 0xC000000000000001);
    v8 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v2)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v21 = *(v10 + 8 * v14 + 32);

        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_87:
          __break(1u);
LABEL_88:
          v47 = v61;
          v21 = v55;
          v14 = v56;
          goto LABEL_90;
        }
      }

      if (*(v21 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) != *&v6[v58] || *(v21 + 16) != v6[16])
      {
        goto LABEL_25;
      }

      v24 = *(v21 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
      a1 = *(v21 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
      v25 = *v57;
      v26 = v57[1];
      v27 = a1 >> 62;
      v28 = v26 >> 62;
      if (a1 >> 62 == 3)
      {
        break;
      }

      if (v27 <= 1)
      {
        if (!v27)
        {
          v30 = BYTE6(a1);
          if (v28 <= 1)
          {
            goto LABEL_55;
          }

          goto LABEL_60;
        }

        LODWORD(v30) = HIDWORD(v24) - v24;
        if (__OFSUB__(HIDWORD(v24), v24))
        {
          goto LABEL_100;
        }

        v30 = v30;
        goto LABEL_54;
      }

      if (v27 == 2)
      {
        v33 = *(v24 + 16);
        v32 = *(v24 + 24);
        v34 = __OFSUB__(v32, v33);
        v30 = v32 - v33;
        if (v34)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
        }

        goto LABEL_54;
      }

      v30 = 0;
      if (v28 <= 1)
      {
LABEL_55:
        if (v28)
        {
          LODWORD(v35) = HIDWORD(v25) - v25;
          if (__OFSUB__(HIDWORD(v25), v25))
          {
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            v7 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_22;
          }

          v35 = v35;
        }

        else
        {
          v35 = BYTE6(v26);
        }

        goto LABEL_62;
      }

LABEL_60:
      if (v28 != 2)
      {
        if (!v30)
        {
          goto LABEL_84;
        }

        goto LABEL_25;
      }

      v37 = *(v25 + 16);
      v36 = *(v25 + 24);
      v34 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v34)
      {
        goto LABEL_98;
      }

LABEL_62:
      if (v30 != v35)
      {
        goto LABEL_25;
      }

      if (v30 < 1)
      {
        goto LABEL_84;
      }

      if (v27 > 1)
      {
        if (v27 != 2)
        {
          memset(v60, 0, 14);
LABEL_76:
          a1 = v54;
          sub_10019F024(v60, v25, v26, &v59);
          v54 = a1;
          if (v59)
          {
            goto LABEL_84;
          }

          goto LABEL_25;
        }

        v52 = *v57;
        v53 = v26;
        v38 = *(v24 + 16);
        v50 = *(v24 + 24);
        v51 = v38;
        v39 = __DataStorage._bytes.getter();
        if (v39)
        {
          v49 = v39;
          v40 = __DataStorage._offset.getter();
          v41 = v51;
          if (__OFSUB__(v51, v40))
          {
            goto LABEL_103;
          }

          v49 += v51 - v40;
        }

        else
        {
          v49 = 0;
          v41 = v51;
        }

        v51 = v50 - v41;
        if (__OFSUB__(v50, v41))
        {
          goto LABEL_102;
        }

        v11 = a1 & 0x3FFFFFFFFFFFFFFFLL;
        __DataStorage._length.getter();
        v46 = v49;
      }

      else
      {
        if (!v27)
        {
          v60[0] = *(v21 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
          LOWORD(v60[1]) = a1;
          BYTE2(v60[1]) = BYTE2(a1);
          BYTE3(v60[1]) = BYTE3(a1);
          BYTE4(v60[1]) = BYTE4(a1);
          BYTE5(v60[1]) = BYTE5(a1);
          goto LABEL_76;
        }

        v52 = *v57;
        v53 = v26;
        v42 = v24;
        v43 = v24 >> 32;
        v50 = v42;
        v51 = v43 - v42;
        if (v43 < v42)
        {
          goto LABEL_101;
        }

        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v49 = v44;
          v45 = __DataStorage._offset.getter();
          if (__OFSUB__(v50, v45))
          {
            goto LABEL_104;
          }

          v50 = v50 - v45 + v49;
        }

        else
        {
          v50 = 0;
        }

        v11 = a1 & 0x3FFFFFFFFFFFFFFFLL;
        __DataStorage._length.getter();
        v46 = v50;
      }

      a1 = v54;
      sub_10019F024(v46, v52, v53, v60);
      v54 = a1;
      if (v60[0])
      {
        goto LABEL_84;
      }

LABEL_25:
      v11 = &v61;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a1 = v61[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_26:
      ++v14;
      if (v12 == v7)
      {
        goto LABEL_88;
      }
    }

    if (v24)
    {
      v29 = 0;
    }

    else
    {
      v29 = a1 == 0xC000000000000000;
    }

    v30 = 0;
    v31 = v29 && v26 >> 62 == 3;
    if (v31 && !v25 && v26 == 0xC000000000000000)
    {
LABEL_84:

      goto LABEL_26;
    }

LABEL_54:
    if (v28 <= 1)
    {
      goto LABEL_55;
    }

    goto LABEL_60;
  }

  v47 = _swiftEmptyArrayStorage;
LABEL_90:

  *(v14 + v21) = v47;
}

void sub_100349188(unint64_t a1, unint64_t a2, char **a3)
{
  v123 = a3;
  v6 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v6 - 8);
  v8 = &v112[-v7];
  v9 = type metadata accessor for UUID();
  v121 = *(v9 - 8);
  v122 = v9;
  __chkstk_darwin(v9);
  v11 = &v112[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v112[-v13];
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v112[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B7F0;
  *v18 = qword_10051B7F0;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v22 = *(v16 + 8);
  v21 = (v16 + 8);
  v22(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v23 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_18;
    }

    v25 = *(a1 + 16);
    v24 = *(a1 + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (!v26)
    {
      if (v27 >= 1)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    goto LABEL_82;
  }

  if (v23)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 1)
      {
        goto LABEL_11;
      }

LABEL_18:
      sub_100069E2C(a1, a2);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (!os_log_type_enabled(v38, v39))
      {
LABEL_22:

        return;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v126 = v41;
      *v40 = 136315138;
      v128 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v42 = BidirectionalCollection<>.joined(separator:)();
      v44 = v43;

      v45 = sub_1002FFA0C(v42, v44, &v126);

      *(v40 + 4) = v45;
      v46 = "Ignoring invalid subscription status changed payload %s";
      goto LABEL_20;
    }

LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_18;
  }

LABEL_11:
  sub_100069E2C(a1, a2);
  v28 = sub_1000939AC(a1, a2, 0, 0, 0);
  v29 = OBJC_IVAR____TtC10seserviced9AlishaRKE_logger;
  if (v28 > 1u)
  {
    if (v28 == 2)
    {

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v126 = v33;
        *v32 = 136315138;
        v96 = UUID.uuidString.getter();
        v98 = sub_1002FFA0C(v96, v97, &v126);

        *(v32 + 4) = v98;
        v37 = "Received unsubscribe request successful %s";
        goto LABEL_63;
      }

LABEL_64:

      return;
    }

    if (v28 != 3)
    {
LABEL_56:
      sub_100069E2C(a1, a2);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_22;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v126 = v41;
      *v40 = 136315138;
      v128 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v83 = BidirectionalCollection<>.joined(separator:)();
      v85 = v84;

      v86 = sub_1002FFA0C(v83, v85, &v126);

      *(v40 + 4) = v86;
      v46 = "Received unknown subscription status %s";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v38, v39, v46, v40, 0xCu);
      sub_1000752F4(v41);

LABEL_21:

      goto LABEL_22;
    }

    v21 = v123;

    v119 = v29;
    v120 = v3;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v126 = v50;
      *v49 = 136315138;
      v51 = UUID.uuidString.getter();
      v53 = sub_1002FFA0C(v51, v52, &v126);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "Received subscription possible %s", v49, 0xCu);
      sub_1000752F4(v50);

      v21 = v123;
    }

    v55 = v121;
    v54 = v122;
    (*(v121 + 16))(v11, v21 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v122);
    swift_beginAccess();
    sub_1000D6D84(v14, v11);
    swift_endAccess();
    (*(v55 + 8))(v14, v54);
    v56 = qword_1005019E8;

    if (v56 == -1)
    {
LABEL_28:
      v57 = swift_allocObject();
      *(v57 + 16) = sub_10023F6D8;
      *(v57 + 24) = v21;

      v58 = sub_1000CAA04();

      v59 = sub_1000CA810(v58);
      if (v59)
      {
        v60 = v59;
        v61 = [v59 readerIdentifier];
        if (v61)
        {
          v62 = v61;
          v121 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v122 = v63;

          v64 = [objc_opt_self() sessionManager];
          v65 = [v64 getActiveRKESessions];

          sub_10009393C(0, &qword_100507800, &off_1004BE548);
          v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v66 >> 62)
          {
            v67 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v68 = v67 == 0;
          if (!v67)
          {
            v118 = 0;
            v99 = 0;
LABEL_71:

            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.info.getter();
            v104 = os_log_type_enabled(v102, v103);
            if (v68)
            {
              if (v104)
              {
                v105 = swift_slowAlloc();
                *v105 = 0;
                _os_log_impl(&_mh_execute_header, v102, v103, "No range to subscribe", v105, 2u);
              }

              sub_10006A178(v121, v122);
            }

            else
            {
              if (v104)
              {
                v106 = swift_slowAlloc();
                v107 = swift_slowAlloc();
                v128 = v107;
                *v106 = 136315138;
                v108 = v118;
                v124 = v99;
                v125 = v118;
                v126 = 0;
                v127 = 0xE000000000000000;
                _print_unlocked<A, B>(_:_:)();
                v109._countAndFlagsBits = 3026478;
                v109._object = 0xE300000000000000;
                String.append(_:)(v109);
                _print_unlocked<A, B>(_:_:)();
                v110 = sub_1002FFA0C(v126, v127, &v128);

                *(v106 + 4) = v110;
                _os_log_impl(&_mh_execute_header, v102, v103, "Subscription range to use %s", v106, 0xCu);
                sub_1000752F4(v107);

                v111 = v123;
              }

              else
              {

                v111 = v123;
                v108 = v118;
              }

              sub_10034F23C(v108, v99, v111);

              sub_10006A178(v121, v122);
            }

            return;
          }

          v114 = v58;
          v115 = v60;
          v116 = 0;
          v118 = 0;
          v69 = 0;
          v70 = 1;
          v21 = &selRef_retrievePeripheralsWithIdentifiers_;
          v113 = v67 == 0;
          while (2)
          {
            v117 = v70;
            v71 = v69;
            while (1)
            {
              if ((v66 & 0xC000000000000001) != 0)
              {
                v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v71 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_81;
                }

                v72 = *(v66 + 8 * v71 + 32);
              }

              v73 = v72;
              v69 = v71 + 1;
              if (__OFADD__(v71, 1))
              {
                goto LABEL_80;
              }

              isa = Data._bridgeToObjectiveC()().super.isa;
              v75 = [v73 isReaderAllowed:isa];

              if (v75)
              {
                if ([v73 subscriptionRange] != 0xFFFF)
                {
                  [v73 subscriptionRange];
                  if (v76 != 0xFFFF)
                  {
                    break;
                  }
                }
              }

              ++v71;
              if (v69 == v67)
              {
                v68 = v117;
LABEL_66:
                v60 = v115;
                v99 = v116;
                goto LABEL_71;
              }
            }

            v77 = [v73 subscriptionRange];
            [v73 subscriptionRange];
            v79 = v78;

            v80 = &v77[v79];
            if (__OFADD__(v77, v79))
            {
              __break(1u);
            }

            else
            {
              if (v117)
              {
                if (v80 >= v77)
                {
                  v118 = v77;
                  v116 = &v77[v79];
                  goto LABEL_54;
                }

LABEL_88:
                __break(1u);
                swift_unexpectedError();
                __break(1u);
                return;
              }

              v81 = v118;
              if (v77 < v118)
              {
                v81 = v77;
              }

              v82 = v116;
              if (v80 > v116)
              {
                v82 = &v77[v79];
              }

              v116 = v82;
              v118 = v81;
              if (v82 >= v81)
              {
LABEL_54:
                v68 = v113;
                v70 = 0;
                if (v69 != v67)
                {
                  continue;
                }

                goto LABEL_66;
              }
            }

            break;
          }

          __break(1u);
          goto LABEL_88;
        }
      }

      v38 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v38, v100))
      {
        goto LABEL_22;
      }

      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&_mh_execute_header, v38, v100, "Failed to retrieve endpoint", v101, 2u);
      goto LABEL_21;
    }

LABEL_84:
    swift_once();
    goto LABEL_28;
  }

  if (v28)
  {
    if (v28 == 1)
    {

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v126 = v33;
        *v32 = 136315138;
        v34 = UUID.uuidString.getter();
        v36 = sub_1002FFA0C(v34, v35, &v126);

        *(v32 + 4) = v36;
        v37 = "Received subscription request successful %s";
LABEL_63:
        _os_log_impl(&_mh_execute_header, v30, v31, v37, v32, 0xCu);
        sub_1000752F4(v33);

        goto LABEL_64;
      }

      goto LABEL_64;
    }

    goto LABEL_56;
  }

  v87 = v123;

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v126 = v91;
    *v90 = 136315138;
    v92 = UUID.uuidString.getter();
    v94 = sub_1002FFA0C(v92, v93, &v126);

    *(v90 + 4) = v94;
    v87 = v123;
    _os_log_impl(&_mh_execute_header, v88, v89, "Received unsubscribed all, no subscription possible %s", v90, 0xCu);
    sub_1000752F4(v91);
  }

  v95 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  swift_beginAccess();
  sub_10010D6E8(v87 + v95, v8);
  swift_endAccess();
  sub_100075768(v8, &unk_10050BE80, &unk_10040B360);
}

void sub_10034A0DC(unint64_t a1, int a2, unint64_t a3)
{
  v4 = v3;
  LODWORD(v6) = a2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_63;
  }

LABEL_2:
  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v14 = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  if (qword_1005019E8 != -1)
  {
LABEL_65:
    v14 = swift_once();
  }

  __chkstk_darwin(v14);
  *(&v83 - 2) = sub_10023FA88;
  *(&v83 - 1) = a3;
  v9 = *(v15 + 24);
  __chkstk_darwin(v16);
  *(&v83 - 4) = sub_100078968;
  *(&v83 - 3) = v17;
  *(&v83 - 2) = v18;
  os_unfair_lock_lock((v9 + 32));
  sub_10035A1F4(v9 + 16, &v105);
  os_unfair_lock_unlock((v9 + 32));
  if (!v105)
  {
    goto LABEL_17;
  }

  v94 = v6;
  v104 = v105;
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
LABEL_67:
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "No function sequence tag", v82, 2u);
      }

      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_67;
    }
  }

  v11 = 0;
  v6 = (a1 & 0xC000000000000001);
  while (!v6)
  {
    if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      swift_once();
      goto LABEL_2;
    }

    v19 = *(a1 + 8 * v11 + 32);
    v20 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      goto LABEL_16;
    }

LABEL_11:
    v9 = v19;
    if ([v19 tag] == 48)
    {
      v89 = v9;
      v24 = OBJC_IVAR____TtC10seserviced9AlishaRKE_logger;

      v102 = v24;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      v27 = os_log_type_enabled(v25, v26);
      v90 = a3;
      if (v27)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v105 = v29;
        *v28 = 136315138;
        v30 = UUID.uuidString.getter();
        v32 = sub_1002FFA0C(v30, v31, &v105);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "Received vehicle status update %s", v28, 0xCu);
        sub_1000752F4(v29);
      }

      if (qword_100501C40 != -1)
      {
        swift_once();
      }

      v33 = qword_10051B6C8;
      v6 = v90;
      v86 = sub_1002A73E0(v90);
      v9 = sub_1002A94EC(v6);
      a1 = &selRef_cacheProximityChipData_completion_;
      v34 = [v89 children];
      if (v34)
      {
        v35 = v34;
        v103 = sub_10009393C(0, &qword_100502418, SESTLV_ptr);
        v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v8 = v36 & 0xFFFFFFFFFFFFFF8;
        if (v36 >> 62)
        {
          v37 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v83 = v33;

        v88 = v104;
        v85 = v9;

        v93 = v4;
        if (v37)
        {
          v11 = v37;
          v84 = 0;
          v87 = 0;
          a3 = 0;
          v104 = (v36 & 0xC000000000000001);
          *(&v38 + 1) = 0xF000000000000000;
          v101 = xmmword_1004098E0;
          *&v38 = 136315138;
          v91 = v38;
          v39 = v94;
          v92 = v36;
          v99 = v11;
          v100 = v36 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v104)
            {
              v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (a3 >= *(v8 + 16))
              {
                goto LABEL_62;
              }

              v40 = *(v36 + 8 * a3 + 32);
            }

            v6 = v40;
            v9 = a3 + 1;
            if (__OFADD__(a3, 1))
            {
              goto LABEL_61;
            }

            if ([v40 tag] != 160)
            {
              break;
            }

            v110 = 0;
            v111 = 1;
            v109 = 256;
            v105 = v101;
            v108 = 256;
            v41 = [v6 *(a1 + 96)];
            if (!v41)
            {
              goto LABEL_72;
            }

            v42 = v41;
            v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100358688(v43, &v110, &v109, v4, &v105, v39, &v108);

            if ((v111 & 1) != 0 || (v109 & 0x100) != 0)
            {
              v44 = v6;
              v45 = Logger.logObject.getter();
              LODWORD(v6) = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v45, v6))
              {
                LODWORD(v96) = v6;
                v97 = v45;
                v46 = swift_slowAlloc();
                v47 = swift_slowAlloc();
                v107 = v47;
                *v46 = v91;
                v48 = [v44 asData];
                v98 = v44;

                if (!v48)
                {
                  goto LABEL_73;
                }

                v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v95 = v49;
                v51 = v50;

                v52 = sub_100288788(v49, v51);
                LODWORD(v6) = v52;
                v106 = v52;
                sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
                v53 = BidirectionalCollection<>.joined(separator:)();
                v55 = v54;
                sub_10006A178(v95, v51);

                v56 = sub_1002FFA0C(v53, v55, &v107);

                *(v46 + 4) = v56;
                v57 = v97;
                _os_log_impl(&_mh_execute_header, v97, v96, "Failed to retrieve function identifier and status %s", v46, 0xCu);
                sub_1000752F4(v47);

                v4 = v93;
                v39 = v94;
                a1 = 0x1004F7000;
                v36 = v92;
                v44 = v98;
              }

              else
              {
              }

              sub_10006A2D0(v105, *(&v105 + 1));

              v11 = v99;
              v8 = v100;
LABEL_30:
              ++a3;
              if (v9 == v11)
              {
                goto LABEL_50;
              }
            }

            else
            {
              LODWORD(v98) = v108;
              v58 = HIBYTE(v108);
              v59 = v105;
              v60 = v110;
              LODWORD(v95) = v110;
              v61 = v109;
              v62 = [v88 publicKeyIdentifier];
              v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v96 = v63;

              v64 = v86;

              v65 = v98 | (v58 << 8);
              v39 = v94;
              LODWORD(v62) = sub_100358C38(v60, v61, v65, v59, *(&v59 + 1), v90, v64, v85);
              a1 = 0x1004F7000;

              v4 = v93;
              sub_10006A178(v97, v96);
              v87 |= v62;
              v66 = v61 == 1;
              v36 = v92;
              v67 = v84;
              if (v95 == 17)
              {
                v67 = v66;
              }

              v84 = v67;
              sub_10006A2D0(v59, *(&v59 + 1));

              ++a3;
              v11 = v99;
              v8 = v100;
              if (v9 == v99)
              {
                goto LABEL_50;
              }
            }
          }

          goto LABEL_30;
        }

        v87 = 0;
        v84 = 0;
        LODWORD(v39) = v94;
LABEL_50:

        v68 = v88;

        v69 = v90;

        swift_bridgeObjectRelease_n();
        if (v39 >= 0x300u)
        {
LABEL_57:
          if (v87)
          {
            v75 = *&v69[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier];
            v76 = *&v69[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8];
            v77 = &v69[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier];
            v78 = *&v69[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier];
            v79 = *(v77 + 1);
            sub_10006A2BC(v75, v76);
            sub_10006A2BC(v78, v79);
            sub_1003375E0(0xD000000000000042, 0x80000001004612F0, v75, v76, v78, v79, 0);

            sub_10006A2D0(v78, v79);
            sub_10006A2D0(v75, v76);
          }

          else
          {
          }

          return;
        }

        v70 = sub_1002A73E0(v69);

        v71 = *(v70 + 16);
        if (!v71)
        {
          v72 = _swiftEmptyArrayStorage;
          goto LABEL_56;
        }

        v72 = sub_1000C0148(*(v70 + 16), 0);
        v73 = sub_100358384(&v105, v72 + 16, v71, v70);
        v74 = v105;

        sub_100093854(v74);
        if (v73 == v71)
        {
          v69 = v90;
          LODWORD(v39) = v94;
          v68 = v88;
LABEL_56:
          *&v105 = v72;
          sub_1002AB1DC(&v105);

          sub_100355784(v105, v84, v39, v69);

          goto LABEL_57;
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      __break(1u);

      __break(1u);
      return;
    }

    ++v11;
    if (v20 == v8)
    {
      goto LABEL_67;
    }
  }

  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v20 = (v11 + 1);
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Failed to retrieve endpoint", v23, 2u);
  }
}

void sub_10034ADB0(unint64_t a1, int a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_20:
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v13)
  {
    v31 = a2;
    if (!(a1 >> 62))
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_5;
      }

LABEL_23:
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "No function sequence tag", v29, 2u);
      }

      return;
    }
  }

  else
  {
    __break(1u);
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_5:
  v14 = 0;
  v8 = a1 & 0xC000000000000001;
  a2 = a1 & 0xFFFFFFF8;
  while (1)
  {
    if (v8)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v7 = v15;
    v16 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v15 tag] == 48)
    {
      break;
    }

    ++v14;
    if (v16 == v10)
    {
      goto LABEL_23;
    }
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315138;
    v21 = UUID.uuidString.getter();
    v23 = sub_1002FFA0C(v21, v22, &v32);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Received supported functions and actions update %s", v19, 0xCu);
    sub_1000752F4(v20);
  }

  v32 = _swiftEmptyArrayStorage;
  v24 = [v7 children];
  if (v24)
  {
    v25 = v24;
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003597C4(v26, v3, &v32);

    sub_100355784(v32, 0, v31, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_10034B1D0(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    sub_10023EFC4();
    Set.Iterator.init(_cocoa:)();
    v4 = v20[4];
    v5 = v20[5];
    v6 = v20[6];
    v7 = v20[7];
    v8 = v20[8];
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while (1)
      {
        v20[0] = v16;
        if (a2(v20))
        {
          break;
        }

        v7 = v14;
        v8 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v17 = __CocoaSet.Iterator.next()();
        if (v17)
        {
          v20[10] = v17;
          sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
          swift_dynamicCast();
          v16 = v20[0];
          v14 = v7;
          v15 = v8;
          if (v20[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_100093854(v4);
      if ((*(a4 + 16) & 1) == 0)
      {
        [v16 copyWithZone:0];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
        swift_dynamicCast();
      }
    }

    else
    {
LABEL_19:
      sub_100093854(v4);
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_10034B46C(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v2 = *(a1 + 8);
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer(0);
    sub_10035A294(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
    Set.Iterator.init(_cocoa:)();
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = v5;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (v14)
    {
      while (1)
      {
        v21 = v14;
        if (a2(&v21))
        {
          break;
        }

        v5 = v12;
        v6 = v13;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for Peer(0);
          swift_dynamicCast();
          v14 = v21;
          v12 = v5;
          v13 = v6;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_100093854(v2);
      sub_1002230A4(v14);
    }

    else
    {
LABEL_19:
      sub_100093854(v2);
    }
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= ((v4 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v11 = *(v3 + 8 * v12);
      ++v10;
      if (v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_10034B6C0(objc_class *a1, objc_class *a2, uint64_t *a3)
{
  v119 = a1;
  v120 = a2;
  v6 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v6 - 8);
  v115 = &v107 - v7;
  v8 = type metadata accessor for UUID();
  v116 = *(v8 - 8);
  __chkstk_darwin(v8);
  v118 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  isa = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
LABEL_83:
    swift_once();
  }

  v14 = qword_10051B7F0;
  *isa = qword_10051B7F0;
  (v11[13])(isa, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (v11[1])(isa, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_85;
  }

  type metadata accessor for AlishaPeer(0);
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v112 = v17;
    if (*(v17 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) < 0x300u)
    {
      v111 = v8;
      v18 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
      swift_beginAccess();
      v117 = v3;
      v8 = *(v3 + v18);
      v4 = v119;
      if (!(v8 >> 62))
      {
        v3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
        v11 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;

        v19 = v120;
        sub_100069E2C(v4, v120);

        if (v3)
        {
          v121 = a3;
          isa = 0;
          v20 = (v8 & 0xC000000000000001);
          v10 = (v8 & 0xFFFFFFFFFFFFFF8);
          a3 = &qword_10050B000;
          while (1)
          {
            if (v20)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v4 = isa + 1;
              if (__OFADD__(isa, 1))
              {
                goto LABEL_17;
              }
            }

            else
            {
              if (isa >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_82;
              }

              v21 = *(v8 + 8 * isa + 32);

              v4 = isa + 1;
              if (__OFADD__(isa, 1))
              {
LABEL_17:
                __break(1u);
                goto LABEL_18;
              }
            }

            if (static UUID.== infix(_:_:)())
            {
              break;
            }

            ++isa;
            if (v4 == v3)
            {
              v4 = v119;
              v114 = v120;
              goto LABEL_107;
            }
          }

          a3 = 0;
          v4 = v119;
          v50 = v120;
LABEL_53:

          v51 = *(v21 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
          v52 = v121;
          v53 = v118;

          if (v51)
          {
            sub_1003AE754(v51);
          }

          if (v50 >> 60 == 15)
          {
            goto LABEL_68;
          }

          v54 = v50 >> 62;
          if ((v50 >> 62) > 1)
          {
            if (v54 != 2)
            {
LABEL_67:
              sub_10006A2D0(v4, v50);
LABEL_68:
              v125 = 0;
              v126 = 0xE000000000000000;
              _StringGuts.grow(_:)(36);

              v125 = 0xD000000000000022;
              v126 = 0x800000010046FEB0;
              v58 = v50;
              if (v50 >> 60 == 15)
              {
                v59 = 0xE300000000000000;
                v60 = 7104878;
              }

              else
              {
                v123 = sub_100288788(v4, v50);
                sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
                v61 = BidirectionalCollection<>.joined(separator:)();
                v59 = v62;

                v60 = v61;
              }

              v63 = v59;
              String.append(_:)(*&v60);

              sub_100350C40(v21, 3, v125, v126, 0x80000000uLL);

              v64 = v4;
              goto LABEL_72;
            }

            v57 = *(v4 + 16);
            v56 = *(v4 + 24);
            v55 = v56 - v57;
            if (!__OFSUB__(v56, v57))
            {
LABEL_65:
              sub_100069E2C(v4, v50);
LABEL_66:
              if (v55 < 16)
              {
                goto LABEL_67;
              }

              v108 = a3;
              v114 = v50;
              v120 = v4;
              v20 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier;
              v66 = v52;
              v67 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
              swift_beginAccess();
              v68 = v116;
              v69 = *(v116 + 2);
              v10 = v111;
              (v69)(v53, v66 + v67, v111);
              v70 = static UUID.== infix(_:_:)();
              v119 = v68[1];
              (v119)(v53, v10);
              if (v70)
              {
                a3 = v66;
                v71 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state;
                if (*(v21 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state) == 1)
                {
                  v53 = v69;
                  *(v21 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state) = 2;
                  v52 = v120;
                  if (qword_100501C80 == -1)
                  {
LABEL_76:
                    v119 = qword_10051B6E8;
                    v72 = v115;
                    (v53)(v115, &v20[v21], v10);
                    (*(v116 + 7))(v72, 0, 1, v10);
                    v73 = swift_allocObject();
                    v73[2] = v117;
                    v73[3] = a3;
                    v58 = v114;
                    v73[4] = v52;
                    v73[5] = v58;
                    v73[6] = v112;
                    swift_retain_n();
                    sub_10006A2BC(v52, v58);

                    sub_1002DBAA8(0xD000000000000012, 0x800000010046FF30, a3, 1, 0, v72, sub_10035A3C0, v73);

                    sub_10006A2D0(v52, v58);
                    sub_100075768(v72, &unk_10050BE80, &unk_10040B360);
                    v64 = v52;
LABEL_72:
                    v65 = v58;
LABEL_111:
                    sub_10006A2D0(v64, v65);
                    return;
                  }

LABEL_115:
                  swift_once();
                  goto LABEL_76;
                }

                v123 = 0;
                v124 = 0xE000000000000000;
                _StringGuts.grow(_:)(44);
                v79._countAndFlagsBits = 0xD00000000000001ELL;
                v79._object = 0x800000010046FF10;
                String.append(_:)(v79);
                v122 = sub_100288788(*(v21 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier), *(v21 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8));
                sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
                v80 = BidirectionalCollection<>.joined(separator:)();
                v82 = v81;

                v83._countAndFlagsBits = v80;
                v83._object = v82;
                String.append(_:)(v83);

                v84._countAndFlagsBits = 0x74617473206E6920;
                v84._object = 0xEA00000000002065;
                String.append(_:)(v84);
                LOBYTE(v122) = *(v21 + v71);
                _print_unlocked<A, B>(_:_:)();
                sub_100350C40(v21, 2, v123, v124, 0x80000001uLL);

                v77 = v120;
                v78 = v114;
                sub_10006A2D0(v120, v114);
              }

              else
              {
                v123 = 0;
                v124 = 0xE000000000000000;
                _StringGuts.grow(_:)(39);

                v123 = 0xD000000000000022;
                v124 = 0x800000010046FEE0;
                sub_10035A294(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v116 = v69;
                v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v74);

                v75._countAndFlagsBits = 32;
                v75._object = 0xE100000000000000;
                String.append(_:)(v75);
                (v116)(v53, v66 + v67, v10);
                v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v76);

                (v119)(v53, v10);
                sub_100350C40(v21, 6, v123, v124, 0x80000001uLL);

                v77 = v120;
                v78 = v114;
                sub_10006A2D0(v120, v114);
              }

              v64 = v77;
              v65 = v78;
              goto LABEL_111;
            }

            __break(1u);
          }

          else if (!v54)
          {
            v55 = BYTE6(v50);
            goto LABEL_66;
          }

          if (__OFSUB__(HIDWORD(v4), v4))
          {
            __break(1u);
            goto LABEL_115;
          }

          v55 = HIDWORD(v4) - v4;
          goto LABEL_65;
        }

        v114 = v19;
        goto LABEL_107;
      }

LABEL_85:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_7;
    }

    v29 = objc_opt_self();

    isa = Data._bridgeToObjectiveC()().super.isa;
    v30 = [v29 TLVsWithData:isa];

    if (v30)
    {
      v111 = v8;
      v117 = v3;
      sub_10009393C(0, &qword_100502418, SESTLV_ptr);
      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v4 = v31 & 0xFFFFFFFFFFFFFF8;
      if (v31 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
        v121 = a3;
        if (v8)
        {
LABEL_24:
          LODWORD(v113) = 0;
          v32 = 0;
          v33 = 0;
          a3 = 0;
          v109 = 0xF000000000000000;
          v110 = 1;
          v11 = &selRef_mockFleetIntermediateCert;
          while (2)
          {
            v114 = v32;
LABEL_26:
            v3 = v33;
            while (1)
            {
              if ((v31 & 0xC000000000000001) != 0)
              {
                v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v3 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_81;
                }

                v34 = *(v31 + 8 * v3 + 32);
              }

              v10 = v34;
              v33 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
                goto LABEL_83;
              }

              v35 = [v34 tag];
              if (v35 == 132)
              {
                isa = a3;
                v36 = [v10 value];
                if (!v36)
                {
                  __break(1u);
                  return;
                }

                v37 = v36;
                v113 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v39 = v38;

                v40 = sub_1000939AC(v113, v39, 0, 0, 0);
                a3 = isa;
                v110 = isa != 0;
                if (isa)
                {

                  LODWORD(v113) = 0;
                  a3 = 0;
                }

                else
                {
                  LODWORD(v113) = v40;
                }

                if (v33 == v8)
                {
LABEL_51:
                  isa = v114;
                  v49 = v109;
                  goto LABEL_88;
                }

                goto LABEL_26;
              }

              if (v35 == 149)
              {
                break;
              }

              ++v3;
              if (v33 == v8)
              {
                goto LABEL_51;
              }
            }

            v108 = a3;
            v41 = [v10 value];
            if (v41)
            {
              v42 = v41;
              v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v45 = v44;
            }

            else
            {
              v43 = 0;
              v45 = 0xF000000000000000;
            }

            sub_10006A2D0(v114, v109);

            v114 = v45;
            v109 = v45;
            isa = v43;
            v32 = v43;
            a3 = v108;
            if (v33 != v8)
            {
              continue;
            }

            goto LABEL_89;
          }
        }
      }

      else
      {
        v8 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v121 = a3;
        if (v8)
        {
          goto LABEL_24;
        }
      }

      isa = 0;
      LODWORD(v113) = 0;
      a3 = 0;
      v110 = 1;
      v49 = 0xF000000000000000;
LABEL_88:
      v114 = v49;
LABEL_89:

      if (v110)
      {
        v86 = v119;
        v85 = v120;
        sub_100069E2C(v119, v120);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.error.getter();
        sub_10006A178(v86, v85);
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v127[0] = v90;
          *v89 = 136315138;
          v125 = sub_100288788(v86, v85);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v91 = BidirectionalCollection<>.joined(separator:)();
          v93 = v92;

          v94 = sub_1002FFA0C(v91, v93, v127);

          *(v89 + 4) = v94;
          _os_log_impl(&_mh_execute_header, v87, v88, "Failed to retrieve execution identifier %s", v89, 0xCu);
          sub_1000752F4(v90);
        }

        v64 = isa;
        goto LABEL_110;
      }

      v95 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
      v96 = v117;
      swift_beginAccess();
      v97 = *(v96 + v95);
      v4 = isa;
      if (v97 >> 62)
      {
        goto LABEL_113;
      }

      v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_95:

      if (v98)
      {
        v99 = 0;
        v20 = &unk_10051B000;
        do
        {
          if ((v97 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v10 = (v99 + 1);
            if (__OFADD__(v99, 1))
            {
LABEL_106:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v99 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_113:
              v98 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_95;
            }

            v21 = *(v97 + 8 * v99 + 32);

            v10 = (v99 + 1);
            if (__OFADD__(v99, 1))
            {
              goto LABEL_106;
            }
          }

          if ((*(v21 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1) & 1) == 0 && *(v21 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier) == v113)
          {
            v50 = v114;
            goto LABEL_53;
          }

          ++v99;
        }

        while (v10 != v98);
      }

LABEL_107:

      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v125 = v103;
        *v102 = 136315138;
        v104 = UUID.uuidString.getter();
        v106 = sub_1002FFA0C(v104, v105, &v125);

        *(v102 + 4) = v106;
        _os_log_impl(&_mh_execute_header, v100, v101, "Failed to retrieve RKE request in progress for %s", v102, 0xCu);
        sub_1000752F4(v103);
      }

      v64 = v4;
LABEL_110:
      v65 = v114;
      goto LABEL_111;
    }

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Ignoring malformed TLV", v48, 2u);
    }
  }

  else
  {
LABEL_18:

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v127[0] = v25;
      *v24 = 136315138;
      v26 = UUID.uuidString.getter();
      v28 = sub_1002FFA0C(v26, v27, v127);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to cast Peer to AlishaPeer %s", v24, 0xCu);
      sub_1000752F4(v25);
    }
  }
}

double sub_10034C8DC(unint64_t a1, uint64_t a2, char **a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = (v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    (*(v7 + 13))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v11 = v10;
    v12 = _dispatchPreconditionTest(_:)();
    v13 = *(v7 + 1);
    v7 += 8;
    v13(v9, v6);
    if ((v12 & 1) == 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    type metadata accessor for AlishaPeer(0);
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      break;
    }

    v6 = v14;
    v15 = objc_opt_self();

    isa = Data._bridgeToObjectiveC()().super.isa;
    v17 = [v15 TLVsWithData:isa];

    if (!v17)
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Ignoring malformed TLV", v31, 2u);
      }

      goto LABEL_27;
    }

    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = a3;
    if (!(a1 >> 62))
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_26;
      }

      goto LABEL_7;
    }

LABEL_25:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
LABEL_26:

LABEL_27:

      return result;
    }

LABEL_7:
    v18 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v19 = *(a1 + 8 * v18 + 32);
      }

      v7 = v19;
      v20 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v33 = v19;
      sub_100352A0C(&v33, v32[1], v6, v3);

      ++v18;
      if (v20 == v9)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33 = v24;
    *v23 = 136315138;
    v25 = UUID.uuidString.getter();
    v27 = sub_1002FFA0C(v25, v26, &v33);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Failed to cast Peer to AlishaPeer %s", v23, 0xCu);
    sub_1000752F4(v24);
  }

  return result;
}

void *sub_10034CD08(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_10019F614(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_100069E2C(v5, *v4);
      v13 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        sub_10019F614((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v4 += 2;
      v11 = &type metadata for Data;
      v12 = &off_1004C9E30;
      *&v10 = v5;
      *(&v10 + 1) = v6;
      v2[2] = v8 + 1;
      sub_1000E39E0(&v10, &v2[5 * v8 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_10034CE08(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10019F8D4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10009393C(0, &qword_10050BCA8, SESPrivacyKey_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10019F8D4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100075D50(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10009393C(0, &qword_10050BCA8, SESPrivacyKey_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10019F8D4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100075D50(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10034D004(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 2;
      UInt16._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_10034D0AC(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v167 = a3;
  v168 = a2;
  v161 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v150 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v151 = &v145 - v9;
  __chkstk_darwin(v10);
  v12 = &v145 - v11;
  v13 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v13 - 8);
  v153 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v145 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  __chkstk_darwin(v18);
  v21 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_118;
  }

LABEL_2:
  v22 = qword_10051B7F0;
  *v21 = qword_10051B7F0;
  v23 = *(v19 + 104);
  v156 = enum case for DispatchPredicate.onQueue(_:);
  v24 = v19;
  v157 = v19 + 104;
  v155 = v23;
  v23(v21);
  v154 = v22;
  v25 = _dispatchPreconditionTest(_:)();
  v26 = v18;
  v27 = v25;
  v28 = *(v24 + 8);
  v158 = v21;
  v160 = v26;
  v159 = v24 + 8;
  (v28)(v21);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_120;
  }

  v152 = v28;
  v29 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  v30 = v165;
  swift_beginAccess();
  v28 = *(v30 + v29);
  if (v28 >> 62)
  {
LABEL_120:
    v31 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

  v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v32 = v167;
  v18 = v168;

  if (!v31)
  {
LABEL_72:

    sub_100069E2C(v18, v32);
    v53 = Logger.logObject.getter();
    v54 = v168;
    v55 = v53;
    v56 = static os_log_type_t.error.getter();
    sub_10006A178(v54, v32);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = v32;
      v60 = v58;
      v175[0] = v58;
      *v57 = 136315138;
      v176 = sub_100288788(v54, v59);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v61 = BidirectionalCollection<>.joined(separator:)();
      v63 = v62;

      v64 = sub_1002FFA0C(v61, v63, v175);

      *(v57 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v55, v56, "No RKE request in progress for %s", v57, 0xCu);
      sub_1000752F4(v60);
    }

    sub_10035CA1C();
    swift_allocError();
    *v65 = 7;
    swift_willThrow();
    return;
  }

  v146 = v12;
  v148 = v6;
  v147 = v5;
  v149 = v17;
  v12 = 0;
  v172 = v28 & 0xFFFFFFFFFFFFFF8;
  v173 = v28 & 0xC000000000000001;
  if (v18)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32 == 0xC000000000000000;
  }

  v34 = !v33;
  LODWORD(v170) = v34;
  v5 = v32 >> 62;
  v35 = __OFSUB__(HIDWORD(v18), v18);
  v164 = v35;
  v163 = (HIDWORD(v18) - v18);
  v169 = BYTE6(v32);
  v6 = v28;
  v162 = v28;
  v171 = v31;
  while (1)
  {
    if (v173)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }
    }

    else
    {
      if (v12 >= *(v172 + 16))
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        v144 = v19;
        swift_once();
        v19 = v144;
        goto LABEL_2;
      }

      v21 = *(v6 + 8 * v12 + 32);

      v17 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_71;
      }
    }

    v36 = *&v21[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier];
    v37 = *&v21[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8];
    v38 = v37 >> 62;
    if (v37 >> 62 == 3)
    {
      break;
    }

    if (v38 > 1)
    {
      if (v38 != 2)
      {
        goto LABEL_43;
      }

      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      v45 = __OFSUB__(v43, v44);
      v42 = v43 - v44;
      if (v45)
      {
        goto LABEL_116;
      }

      if (v5 <= 1)
      {
        goto LABEL_40;
      }
    }

    else if (v38)
    {
      LODWORD(v42) = HIDWORD(v36) - v36;
      if (__OFSUB__(HIDWORD(v36), v36))
      {
        goto LABEL_117;
      }

      v42 = v42;
      if (v5 <= 1)
      {
LABEL_40:
        v46 = v169;
        if (v5)
        {
          v46 = v163;
          v19 = v164;
          if (v164)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_46;
      }
    }

    else
    {
      v42 = BYTE6(v37);
      if (v5 <= 1)
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    if (v5 != 2)
    {
      if (!v42)
      {
        goto LABEL_75;
      }

      goto LABEL_17;
    }

    v19 = *(v18 + 16);
    v47 = *(v18 + 24);
    v45 = __OFSUB__(v47, v19);
    v46 = (v47 - v19);
    if (v45)
    {
      goto LABEL_114;
    }

LABEL_46:
    if (v42 != v46)
    {
      goto LABEL_17;
    }

    if (v42 < 1)
    {
      goto LABEL_75;
    }

    if (v38 <= 1)
    {
      if (!v38)
      {
        v175[0] = *&v21[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier];
        LOWORD(v175[1]) = v37;
        BYTE2(v175[1]) = BYTE2(v37);
        BYTE3(v175[1]) = BYTE3(v37);
        BYTE4(v175[1]) = BYTE4(v37);
        BYTE5(v175[1]) = BYTE5(v37);
        goto LABEL_67;
      }

      v166 = v21;
      v21 = v4;
      v4 = v36;
      if (v36 >> 32 < v36)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        swift_once();
LABEL_96:
        v168 = qword_10051B5A0;
        v102 = *&v21[v37];
        v170 = v176;
        v171 = v177;
        v172 = v102;
        v103 = v12;
        v104 = v149;
        v105 = v147;
        v169 = *(v12 + 16);
        v169(v149, &v21[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier], v147);
        (*(v12 + 56))(v104, 0, 1, v105);
        v106 = v158;
        v107 = v154;
        *v158 = v154;
        v108 = v160;
        v155(v106, v156, v160);
        v109 = v107;
        v110 = _dispatchPreconditionTest(_:)();
        v152(v106, v108);
        if (v110)
        {
          v111 = v153;
          sub_1000756F8(v104, v153);
          if ((*(v103 + 48))(v111, 1, v105) == 1)
          {
            sub_100075768(v111, &unk_10050BE80, &unk_10040B360);
            v106 = v172;
          }

          else
          {
            v166 = v21;
            v112 = v146;
            (*(v103 + 32))(v146, v111, v105);
            v113 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
            v106 = v172;
            swift_beginAccess();
            v167 = v113;
            v114 = v106 + v113;
            v115 = v151;
            v116 = v169;
            v169(v151, v114, v105);
            v117 = static UUID.== infix(_:_:)();
            v119 = *(v103 + 8);
            v118 = (v103 + 8);
            v120 = v115;
            v121 = v119;
            v119(v120, v105);
            if ((v117 & 1) == 0)
            {
              v148 = v118;
              v124 = v150;
              v116(v150, v112, v105);

              v125 = Logger.logObject.getter();
              v126 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v125, v126))
              {
                v127 = v124;
                v128 = swift_slowAlloc();
                v171 = swift_slowAlloc();
                v174 = v171;
                *v128 = 136315394;
                v165 = sub_10035A294(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v170 = v125;
                v129 = dispatch thunk of CustomStringConvertible.description.getter();
                LODWORD(v168) = v126;
                v131 = v130;
                v121(v127, v147);
                v132 = sub_1002FFA0C(v129, v131, &v174);

                *(v128 + 4) = v132;
                *(v128 + 12) = 2080;
                v133 = v151;
                v116(v151, v106 + v167, v147);
                v105 = v147;
                v134 = dispatch thunk of CustomStringConvertible.description.getter();
                v136 = v135;
                v121(v133, v105);
                v137 = sub_1002FFA0C(v134, v136, &v174);

                *(v128 + 14) = v137;
                v138 = v170;
                _os_log_impl(&_mh_execute_header, v170, v168, "Connection identifier has changed %s %s", v128, 0x16u);
                swift_arrayDestroy();
              }

              else
              {

                v121(v124, v105);
              }

              v139 = v121;
              v21 = v166;
              v140 = v149;
              v108 = v173;
              v139(v146, v105);
              v123 = v140;
              goto LABEL_109;
            }

            v121(v112, v105);
            v21 = v166;
          }

          v110 = sub_100239160(3, 17, v170, v171);
          v105 = v122;
          v108 = v173;
          if (qword_100501960 == -1)
          {
LABEL_102:
            sub_1000E71A0(v110, v105, v106);
            if (v4)
            {
              sub_10006A178(v110, v105);
              sub_100075768(v149, &unk_10050BE80, &unk_10040B360);

LABEL_110:
              v21[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state] = 4;
              v141 = *&v21[v108];
              if (v141)
              {
                v142 = *&v21[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec];
                v143 = v141;
                sub_1003AE618(v143, v142);
              }

              sub_10006A178(v176, v177);
              return;
            }

            sub_10006A178(v110, v105);
            v123 = v149;
LABEL_109:
            sub_100075768(v123, &unk_10050BE80, &unk_10040B360);
            goto LABEL_110;
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
        goto LABEL_102;
      }

      v49 = __DataStorage._bytes.getter();
      if (v49)
      {
        v51 = __DataStorage._offset.getter();
        if (__OFSUB__(v4, v51))
        {
          goto LABEL_124;
        }

        v49 += &v4[-v51];
      }

LABEL_64:
      __DataStorage._length.getter();
      v52 = v49;
      v32 = v167;
      v18 = v168;
      sub_10019F024(v52, v168, v167, v175);
      v4 = v21;
      v21 = v166;
      v6 = v162;
      if (v175[0])
      {
        goto LABEL_75;
      }

      goto LABEL_17;
    }

    if (v38 == 2)
    {
      v166 = v21;
      v21 = v4;
      v48 = *(v36 + 16);
      v4 = *(v36 + 24);
      v49 = __DataStorage._bytes.getter();
      if (v49)
      {
        v50 = __DataStorage._offset.getter();
        if (__OFSUB__(v48, v50))
        {
          goto LABEL_123;
        }

        v49 += v48 - v50;
      }

      v45 = __OFSUB__(v4, v48);
      v4 -= v48;
      if (v45)
      {
        goto LABEL_122;
      }

      goto LABEL_64;
    }

    memset(v175, 0, 14);
LABEL_67:
    sub_10019F024(v175, v18, v32, &v176);
    if (v176)
    {
      goto LABEL_75;
    }

LABEL_17:

    ++v12;
    if (v17 == v171)
    {
      goto LABEL_72;
    }
  }

  if (v36)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37 == 0xC000000000000000;
  }

  v41 = !v39 || v5 < 3;
  if ((v41 | v170))
  {
LABEL_43:
    v42 = 0;
    if (v5 <= 1)
    {
      goto LABEL_40;
    }

    goto LABEL_44;
  }

LABEL_75:

  v66 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier;
  v67 = v161;
  if (*&v21[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier] != v161)
  {

    sub_100069E2C(v18, v32);
    v75 = Logger.logObject.getter();
    v76 = v168;
    v77 = v75;
    v78 = static os_log_type_t.error.getter();
    sub_10006A178(v76, v32);
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v32;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v166 = v21;
      v82 = v81;
      v175[0] = v81;
      *v80 = 33555202;
      *(v80 + 4) = v67;
      *(v80 + 6) = 512;
      *(v80 + 8) = *&v166[v66];

      *(v80 + 10) = 2080;
      v176 = sub_100288788(v76, v79);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v83 = BidirectionalCollection<>.joined(separator:)();
      v85 = v84;

      v86 = sub_1002FFA0C(v83, v85, v175);

      *(v80 + 12) = v86;
      _os_log_impl(&_mh_execute_header, v77, v78, "RKE function %hu does not match current function in progress %hu for key %s", v80, 0x14u);
      sub_1000752F4(v82);
    }

    else
    {
    }

    sub_10035CA1C();
    swift_allocError();
    v91 = 7;
LABEL_90:
    *v90 = v91;
    swift_willThrow();

    return;
  }

  v68 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer;
  v69 = *&v21[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer];
  if (v69)
  {
    sub_1003AE754(v69);
  }

  v37 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer;
  v12 = v148;
  if (*(*&v21[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer] + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) >= 0x300u)
  {
    if (v21[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1])
    {
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&_mh_execute_header, v87, v88, "Invalid execution identifier", v89, 2u);
      }

      sub_10035CA1C();
      swift_allocError();
      v91 = 2;
      goto LABEL_90;
    }

    v92 = v21[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier];
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_100409E40;
    v94 = [objc_opt_self() TLVWithTag:132 unsignedChar:v92];
    if (!v94)
    {
      goto LABEL_132;
    }

    *(v93 + 32) = v94;
LABEL_93:
    v176 = sub_1002B3B94(&off_1004C4F80);
    v177 = v95;
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v97 = [objc_opt_self() TLVWithTag:32631 children:isa];

    if (v97)
    {
      v98 = [v97 asData];

      if (v98)
      {
        v173 = v68;
        v99 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v101 = v100;

        Data.append(_:)();
        sub_10006A178(v99, v101);
        if (qword_100501B60 == -1)
        {
          goto LABEL_96;
        }

        goto LABEL_125;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_130;
  }

  sub_100068FC4(&qword_100504060, &qword_10040B370);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_10040DA10;
  v71 = bswap32(*&v21[v66]) >> 16;
  v72 = objc_opt_self();
  v73 = [v72 TLVWithTag:128 unsignedShort:v71];
  if (!v73)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  *(v70 + 32) = v73;
  v74 = [v72 TLVWithTag:129 unsignedChar:v21[16]];
  if (v74)
  {
    *(v70 + 40) = v74;
    goto LABEL_93;
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_10034E460(os_log_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v118 = a2;
  v114 = type metadata accessor for UUID();
  v7 = *(v114 - 8);
  __chkstk_darwin(v114);
  v107 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v108 = &v101 - v10;
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v14 - 8);
  v109 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v117 = &v101 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v22 = qword_10051B7F0;
  *v21 = qword_10051B7F0;
  v23 = *(v19 + 104);
  LODWORD(v113) = enum case for DispatchPredicate.onQueue(_:);
  v115 = (v19 + 104);
  v112 = v23;
  v23(v21);
  v110 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v25 = *(v19 + 8);
  v24 = (v19 + 8);
  v111 = v25;
  v25(v21, v18);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if ((*(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType) | 2) != 2)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "Ignoring confirmation for non-enduring request";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);
    }

LABEL_17:

    return;
  }

  v26 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer;
  v27 = *(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
  if (v27)
  {
    sub_1003AE754(v27);
  }

  v28 = *(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer);
  if (*(v28 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) < 0x300u)
  {
    v103 = a3;
    v29 = v18;
    v30 = v7;
    v101 = v26;
    v106 = v28;
    v104 = v13;
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10040DA10;
    v32 = a1;
    v33 = bswap32(*(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier)) >> 16;
    v34 = objc_opt_self();
    v35 = [v34 TLVWithTag:128 unsignedShort:v33];
    if (!v35)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    *(v31 + 32) = v35;
    v36 = [v34 TLVWithTag:129 unsignedChar:LOBYTE(v32[2].isa)];
    if (!v36)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    a1 = v32;
    *(v31 + 40) = v36;
    v7 = v30;
    v18 = v29;
    v4 = v3;
    a3 = v103;
LABEL_20:
    v116 = a1;
    v124 = v31;
    v102 = a3 >> 60;
    if (a3 >> 60 != 15)
    {
      sub_100069E2C(v118, a3);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v44 = [objc_opt_self() TLVWithTag:136 value:isa];

      if (!v44)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10006A2D0(v118, a3);
    }

    v122 = sub_1002B3B94(&off_1004C39C0);
    v123 = v45;
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v46 = Array._bridgeToObjectiveC()().super.isa;
    v47 = [objc_opt_self() TLVWithTag:32630 children:v46];

    if (v47)
    {
      v103 = v4;
      v48 = [v47 asData];

      if (v48)
      {
        v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        Data.append(_:)();
        sub_10006A178(v49, v51);
        v52 = v118;
        sub_10006A2BC(v118, a3);
        a1 = v116;

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();
        sub_10006A2D0(v52, a3);
        v55 = os_log_type_enabled(v53, v54);
        v105 = v18;
        if (v55)
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v121[0] = v57;
          v58 = *(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
          *v56 = 33555202;
          *(v56 + 4) = v58;
          *(v56 + 6) = 256;
          *(v56 + 8) = a1[2].isa;

          *(v56 + 9) = 2080;
          if (v102 <= 0xE)
          {
            v59 = 0x7461642068746977;
          }

          else
          {
            v59 = 0;
          }

          if (v102 <= 0xE)
          {
            v60 = 0xE900000000000061;
          }

          else
          {
            v60 = 0xE000000000000000;
          }

          v61 = sub_1002FFA0C(v59, v60, v121);

          *(v56 + 11) = v61;
          a1 = v116;
          _os_log_impl(&_mh_execute_header, v53, v54, "Sending continuation request function %hu action %hhu %s", v56, 0x13u);
          sub_1000752F4(v57);
        }

        else
        {
        }

        if (qword_100501B60 == -1)
        {
LABEL_37:
          v102 = qword_10051B5A0;
          v118 = v123;
          v119 = v122;
          v62 = *(v7 + 16);
          v63 = a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier;
          v64 = v7;
          v65 = v117;
          v66 = v114;
          v115 = v62;
          v62(v117, v63, v114);
          (*(v64 + 56))(v65, 0, 1, v66);
          v67 = v110;
          *v21 = v110;
          v68 = v105;
          v112(v21, v113, v105);
          v69 = v67;
          v70 = _dispatchPreconditionTest(_:)();
          v111(v21, v68);
          if (v70)
          {
            v71 = v109;
            sub_1000756F8(v65, v109);
            if ((*(v64 + 48))(v71, 1, v66) == 1)
            {
              sub_100075768(v71, &unk_10050BE80, &unk_10040B360);
            }

            else
            {
              v72 = v104;
              (*(v64 + 32))(v104, v71, v66);
              v73 = v66;
              v74 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
              v75 = v106;
              swift_beginAccess();
              v113 = v74;
              v76 = v108;
              v77 = v115;
              v115(v108, (v75 + v74), v73);
              LOBYTE(v74) = static UUID.== infix(_:_:)();
              v80 = *(v64 + 8);
              v78 = v64 + 8;
              v79 = v80;
              v80(v76, v73);
              if ((v74 & 1) == 0)
              {
                v119 = v78;
                v83 = v107;
                v77(v107, v72, v73);

                v84 = Logger.logObject.getter();
                v85 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v84, v85))
                {
                  v86 = swift_slowAlloc();
                  v118 = swift_slowAlloc();
                  v120 = v118;
                  *v86 = 136315394;
                  v111 = sub_10035A294(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v116 = v84;
                  v87 = dispatch thunk of CustomStringConvertible.description.getter();
                  LODWORD(v112) = v85;
                  v89 = v88;
                  v79(v83, v73);
                  v90 = sub_1002FFA0C(v87, v89, &v120);
                  v91 = v117;

                  *(v86 + 4) = v90;
                  *(v86 + 12) = 2080;
                  v92 = v75 + v113;
                  v93 = v108;
                  v115(v108, v92, v73);
                  v94 = dispatch thunk of CustomStringConvertible.description.getter();
                  v95 = v79;
                  v97 = v96;
                  v95(v93, v73);
                  v98 = sub_1002FFA0C(v94, v97, &v120);

                  *(v86 + 14) = v98;
                  v99 = v116;
                  _os_log_impl(&_mh_execute_header, v116, v112, "Connection identifier has changed %s %s", v86, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {

                  v79(v83, v73);
                  v91 = v117;
                  v95 = v79;
                }

                sub_100079E24();
                swift_allocError();
                *v100 = 2;
                swift_willThrow();
                v95(v104, v73);
                sub_100075768(v91, &unk_10050BE80, &unk_10040B360);
                goto LABEL_50;
              }

              v79(v72, v73);
              v65 = v117;
            }

            v70 = sub_100239160(3, 17, v119, v118);
            v68 = v81;
            v3 = v103;
            v24 = v116;
            if (qword_100501960 == -1)
            {
LABEL_43:
              sub_1000E71A0(v70, v68, v106);
              sub_10006A178(v70, v68);
              sub_100075768(v65, &unk_10050BE80, &unk_10040B360);
              if (!v3)
              {
                v82 = *(&v24->isa + v101);
                if (v82)
                {
                  sub_1003AE618(v82, *(&v24->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec));
                }
              }

LABEL_50:
              sub_10006A178(v122, v123);
              return;
            }
          }

          else
          {
            __break(1u);
          }

          swift_once();
          goto LABEL_43;
        }

LABEL_52:
        swift_once();
        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_57;
  }

  if (*(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1))
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "Invalid execution identifier";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v101 = v26;
  v106 = v28;
  v104 = v13;
  v41 = *(&a1->isa + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier);
  sub_100068FC4(&qword_100504060, &qword_10040B370);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100409E40;
  v42 = [objc_opt_self() TLVWithTag:132 unsignedChar:v41];
  if (v42)
  {
    *(v31 + 32) = v42;
    goto LABEL_20;
  }

LABEL_60:
  __break(1u);
}

void sub_10034F23C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v53 = a2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = *(v6 + 104);
  v11(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v51 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v52 = *(v6 + 8);
  v52(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_16:
    v37 = v57;
    v38 = v58;
    v39 = v51;
    *v8 = v51;
    (a1)(v8, HIDWORD(v47), v10);
    v40 = v39;
    LOBYTE(v39) = _dispatchPreconditionTest(_:)();
    v52(v8, v10);
    if (v39)
    {
      v37 = sub_100239160(3, 17, v37, v38);
      v8 = v41;
      if (qword_100501960 == -1)
      {
LABEL_18:
        sub_1000E71A0(v37, v8, a3);
        sub_10006A178(v37, v8);
        sub_10006A178(v57, v58);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_18;
  }

  v50 = v11;
  v12 = Logger.logObject.getter();
  v13 = v53;
  if ((a1 & 0x8000000000000000) == 0 && v53 >= a1 && v53 < 0x10000)
  {
    v14 = static os_log_type_t.info.getter();
    v15 = os_log_type_enabled(v12, v14);
    v48 = v5;
    HIDWORD(v47) = v10;
    if (v15)
    {
      v16 = swift_slowAlloc();
      *&v49 = a3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v55 = a1;
      v56[0] = v18;
      *v17 = 136315138;
      v54 = v13;
      v57 = 0;
      v58 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v19._countAndFlagsBits = 3026478;
      v19._object = 0xE300000000000000;
      String.append(_:)(v19);
      _print_unlocked<A, B>(_:_:)();
      v20 = sub_1002FFA0C(v57, v58, v56);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v12, v14, "Subscribing to function identifier range %s", v17, 0xCu);
      sub_1000752F4(v18);

      a3 = v49;
    }

    v57 = sub_1002B3B94(&off_1004C3880);
    v58 = v21;
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v22 = swift_allocObject();
    v49 = xmmword_10040DA10;
    *(v22 + 16) = xmmword_10040DA10;
    v23 = swift_allocObject();
    *(v23 + 16) = v49;
    v24 = bswap32(a1) >> 16;
    v25 = objc_opt_self();
    v26 = [v25 TLVWithTag:132 unsignedShort:v24];
    if (v26)
    {
      *(v23 + 32) = v26;
      v27 = [v25 TLVWithTag:133 unsignedShort:bswap32(v53) >> 16];
      if (v27)
      {
        *(v23 + 40) = v27;
        sub_10009393C(0, &qword_100502418, SESTLV_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v29 = [v25 TLVWithTag:48 children:isa];

        if (v29)
        {
          *(v22 + 32) = v29;
          v30 = [v25 TLVWithTag:134 value:0];
          if (v30)
          {
            *(v22 + 40) = v30;
            v31 = Array._bridgeToObjectiveC()().super.isa;

            v32 = [v25 TLVWithTag:32627 children:v31];

            if (v32)
            {
              v33 = [v32 asData];

              v10 = v48;
              a1 = v50;
              if (v33)
              {
                v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v36 = v35;

                Data.append(_:)();
                sub_10006A178(v34, v36);
                if (qword_100501B60 == -1)
                {
                  goto LABEL_16;
                }

                goto LABEL_23;
              }

              goto LABEL_31;
            }

LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v55 = a1;
    v56[0] = v44;
    *v43 = 136315138;
    v54 = v13;
    v57 = 0;
    v58 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v45._countAndFlagsBits = 3026478;
    v45._object = 0xE300000000000000;
    String.append(_:)(v45);
    _print_unlocked<A, B>(_:_:)();
    v46 = sub_1002FFA0C(v57, v58, v56);

    *(v43 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v12, v42, "Invalid subscription range %s", v43, 0xCu);
    sub_1000752F4(v44);
  }
}