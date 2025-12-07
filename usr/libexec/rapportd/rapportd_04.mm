void sub_1000E372C()
{
  v1 = sub_1000C4810(&qword_1001D55C0, &unk_10014B200);
  __chkstk_darwin(v1 - 8);
  v60 = &v57 - v2;
  v3 = type metadata accessor for NWEndpoint.Port();
  __chkstk_darwin(v3 - 8);
  v63 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NWListener.Service();
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C4810(&qword_1001D55C8, &qword_10014B2C0);
  __chkstk_darwin(v7 - 8);
  v61 = (&v57 - v8);
  v66 = type metadata accessor for NWListener.Service.PairingConfiguration();
  v64 = *(v66 - 8);
  v9 = __chkstk_darwin(v66);
  v62 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v57 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v70 = v16;
  v17 = *&v0[v16];
  *v15 = v17;
  v18 = enum case for DispatchPredicate.onQueue(_:);
  v19 = *(v13 + 104);
  v19(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v20 = v17;
  v21 = _dispatchPreconditionTest(_:)();
  v22 = *(v13 + 8);
  v22(v15, v12);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListenerStarted])
  {
    return;
  }

  v59 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListenerStarted;
  v23 = *&v0[v70];
  *v15 = v23;
  v19(v15, v18, v12);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v22(v15, v12);
  if ((v23 & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue + 8];
  v19 = v72;
  if (v12)
  {
    v58 = v0;
    v18 = *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue];
    v25 = qword_1001D8898;

    if (v25 == -1)
    {
LABEL_6:
      v26 = type metadata accessor for Logger();
      sub_10000BB0C(v26, qword_1001D88A0);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Starting Bonjour listener", v29, 2u);
      }

      sub_1000C4810(&qword_1001D55D0, &qword_10014B210);
      v30 = type metadata accessor for NWPairingType();
      v31 = *(v30 - 8);
      v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_10014A0A0;
      (*(v31 + 104))(v33 + v32, enum case for NWPairingType.pin(_:), v30);
      v34 = v61;
      *v61 = v18;
      v34[1] = v12;
      v35 = enum case for NWPairingValue.pin(_:);
      v36 = type metadata accessor for NWPairingValue();
      v37 = *(v36 - 8);
      (*(v37 + 104))(v34, v35, v36);
      (*(v37 + 56))(v34, 0, 1, v36);
      v38 = v65;
      NWListener.Service.PairingConfiguration.init(supportedPairingTypes:pairingValue:generatePairingValueImmediately:)();
      RPPairingReceiverAppServiceName.unsafeMutableAddressor();
      v39 = v64;
      v40 = v66;
      (*(v64 + 16))(v62, v38, v66);

      v41 = v67;
      NWListener.Service.init(name:pairingConfiguration:)();
      type metadata accessor for NWParameters();
      static NWParameters.applicationService.getter();

      static NWEndpoint.Port.any.getter();
      type metadata accessor for NWListener();
      swift_allocObject();
      v42 = NWListener.init(using:on:)();
      if (v19)
      {

        (*(v68 + 8))(v41, v69);
        (*(v39 + 8))(v38, v40);
      }

      else
      {
        v47 = v42;
        v48 = v69;
        v49 = v68;
        v50 = v60;
        (*(v68 + 16))(v60, v41, v69);
        (*(v49 + 56))(v50, 0, 1, v48);
        NWListener.service.setter();
        NWListener.stateUpdateHandler.setter();
        NWListener.newConnectionHandler.setter();
        v51 = NWListener.nw.getter();
        v52 = swift_allocObject();
        v53 = v58;
        *(v52 + 16) = v58;
        aBlock[4] = sub_1000E9978;
        aBlock[5] = v52;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000E5748;
        aBlock[3] = &unk_1001B0638;
        v54 = _Block_copy(aBlock);
        v55 = v53;

        nw_listener_set_advertised_endpoint_changed_handler(v51, v54);
        _Block_release(v54);
        swift_unknownObjectRelease();
        v56 = *&v53[v70];
        NWListener.start(queue:)();

        (*(v68 + 8))(v67, v69);
        (*(v39 + 8))(v65, v66);
        v53[v59] = 1;
        *&v55[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListener] = v47;
      }

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_10000BB0C(v43, qword_1001D88A0);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Pairing listener tried to start without a pairing value", v46, 2u);
  }
}

uint64_t sub_1000E4070(uint64_t a1)
{
  v19 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v7 = *(v1 + v6);
  *v5 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v3 + 104);
  v9(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v3 + 8);
  result = v12(v5, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = *(v1 + v6);
  *v5 = v14;
  v9(v5, v8, v2);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = v12(v5, v2);
  if ((v16 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v17 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue + 8);
  if (v17)
  {
    v18 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue);

    sub_1000E13E0(v18, v17);
  }

  return sub_10000BB44();
}

void sub_1000E4240(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v13 = *(v2 + v12);
  *v11 = v13;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_20;
  }

  v15 = [a1 identifier];
  if (v15)
  {
    v16 = v15;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [a1 deviceActionType];
    v18 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_blePairingDevices;
    swift_beginAccess();
    v19 = *(v2 + v18);
    if (*(v19 + 16) && (v20 = sub_1000E65E8(v7), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + 8 * v20);
      swift_endAccess();
      if (v17 == 94)
      {
        v23 = qword_1001D8898;
        v24 = v22;
        if (v23 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_10000BB0C(v25, qword_1001D88A0);
        v26 = a1;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v51 = v27;
          v31 = v30;
          *v29 = 138412290;
          *(v29 + 4) = v26;
          *v30 = v26;
          v32 = v26;
          _os_log_impl(&_mh_execute_header, v51, v28, "AdHocPairing Device changed: %@", v29, 0xCu);
          sub_1000C59E0(v31, &qword_1001D55A0, &unk_100149890);
          v27 = v51;
        }

        swift_beginAccess();
        v33 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = *(v2 + v18);
        *(v2 + v18) = 0x8000000000000000;
        sub_1000E7F1C(v33, v7, isUniquelyReferenced_nonNull_native);
        *(v2 + v18) = v52;
        swift_endAccess();
      }

      else
      {
        v24 = v22;
        sub_1000E4934(a1);
      }
    }

    else
    {
      swift_endAccess();
      if (v17 == 94)
      {
        if (qword_1001D8898 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_10000BB0C(v35, qword_1001D88A0);
        v36 = a1;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v39 = 138412290;
          *(v39 + 4) = v36;
          *v40 = v36;
          v41 = v36;
          _os_log_impl(&_mh_execute_header, v37, v38, "AdHocPairing Device found: %@", v39, 0xCu);
          sub_1000C59E0(v40, &qword_1001D55A0, &unk_100149890);
        }

        swift_beginAccess();
        v42 = v36;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v52 = *(v2 + v18);
        *(v2 + v18) = 0x8000000000000000;
        sub_1000E7F1C(v42, v7, v43);
        *(v2 + v18) = v52;
        swift_endAccess();
      }

      v24 = 0;
    }

    sub_10000BB44();

    (*(v5 + 8))(v7, v4);
    return;
  }

  if (qword_1001D8898 != -1)
  {
    goto LABEL_25;
  }

LABEL_20:
  v44 = type metadata accessor for Logger();
  sub_10000BB0C(v44, qword_1001D88A0);
  v45 = a1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    *(v48 + 4) = v45;
    *v49 = v45;
    v50 = v45;
    _os_log_impl(&_mh_execute_header, v46, v47, "Discovered device has no identifier: %@", v48, 0xCu);
    sub_1000C59E0(v49, &qword_1001D55A0, &unk_100149890);
  }
}

void sub_1000E48C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1000E4934(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v13 = *(v2 + v12);
  *v11 = v13;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = [a1 identifier];
  if (v15)
  {
    v16 = v15;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v8 = sub_1000E5010(v7);
    swift_endAccess();
    if (!v8)
    {
LABEL_8:
      sub_10000BB44();
      (*(v5 + 8))(v7, v4);
      return;
    }

    if (qword_1001D8898 == -1)
    {
LABEL_5:
      v17 = type metadata accessor for Logger();
      sub_10000BB0C(v17, qword_1001D88A0);
      v18 = v8;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        *(v21 + 4) = v18;
        *v22 = v8;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v19, v20, "AdHocPairing Device lost: %@", v21, 0xCu);
        sub_1000C59E0(v22, &qword_1001D55A0, &unk_100149890);

        v18 = v19;
        v19 = v23;
      }

      goto LABEL_8;
    }

LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000BB0C(v24, qword_1001D88A0);
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "Device lost with no identifier: %@", v28, 0xCu);
    sub_1000C59E0(v29, &qword_1001D55A0, &unk_100149890);
  }
}

void sub_1000E4DC0(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1001D8898 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000BB0C(v6, qword_1001D88A0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "BLE discovery started", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BB0C(v1, qword_1001D88A0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to activate BLE Discovery: %@)", v3, 0xCu);
    sub_1000C59E0(v4, &qword_1001D55A0, &unk_100149890);

LABEL_10:

    return;
  }
}

uint64_t sub_1000E5010(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000E65E8(a1);
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
    sub_1000E81A0();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1000E7BF8(v5, v7);
  *v2 = v7;
  return v10;
}

void sub_1000E50D8(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000BB0C(v6, qword_1001D88A0);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_1000DC030(v5, v2);
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_1000C3440(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pairing listener state changed: %s", v9, 0xCu);
    sub_1000C5604(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

void sub_1000E5310(uint64_t *a1)
{
  v2 = *a1;
  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000BB0C(v3, qword_1001D88A0);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = a1;
    v12 = v6;
    *v5 = 136315138;
    v7 = sub_1000DC030(&v11, v2);
    v9 = sub_1000C3440(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Pairing listener new connection: %s", v5, 0xCu);
    sub_1000C5604(v6);
  }

  else
  {
  }
}

void sub_1000E54C0(uint64_t a1)
{
  v2 = sub_1000C4810(&qword_1001D55D8, &unk_10014B218);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  swift_unknownObjectRetain();
  NWEndpoint.init(_:)();
  v5 = type metadata accessor for NWEndpoint();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000C59E0(v4, &qword_1001D55D8, &unk_10014B218);
  }

  else
  {
    v7 = NWEndpoint.deviceID.getter();
    v9 = v8;
    (*(v6 + 8))(v4, v5);
    if (v9)
    {
      sub_1000E0E70(v7, v9);
      return;
    }
  }

  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000BB0C(v10, qword_1001D88A0);
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = a1;
    v20 = v14;
    *v13 = 136315138;
    v15 = sub_1000C4810(&qword_1001D5640, &qword_10014B228);
    v16 = sub_1000DC030(&v19, v15);
    v18 = sub_1000C3440(v16, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Advertised endpoint changed without device ID: %s", v13, 0xCu);
    sub_1000C5604(v14);
  }
}

uint64_t sub_1000E5748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v4(v5, a3);

  return swift_unknownObjectRelease();
}

id sub_1000E5864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_activatedReceiver] = 0;
  v7[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_pairingValueUIVisible] = 0;
  *&v7[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcID] = 0;
  *&v7[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_daemon] = a1;
  *&v7[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_queue] = a2;
  *&v7[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1000E5900(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v9 = *(a1 + v8);
  *v7 = v9;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v9)
  {
    sub_1000E5AD8();
    swift_beginAccess();
    v13 = sub_1000E73A0(a2, v12);
    swift_endAccess();

    return sub_10000BB44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000E5AD8()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_1001D8898 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000BB0C(v7, qword_1001D88A0);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = [*(&v8->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx) processIdentifier];

    _os_log_impl(&_mh_execute_header, v9, v10, "Connection invalidated from %d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  v12 = OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_activatedReceiver;
  v13 = *(&v8->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_activatedReceiver);
  if (v13)
  {
    v14 = v13;
    RPPairingReceiverController.stop()();

    v13 = *(&v8->isa + v12);
  }

  *(&v8->isa + v12) = 0;
}

uint64_t sub_1000E5E48()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx);
  [v2 processIdentifier];
  v3 = sub_10001B924([v2 processIdentifier]);
  if (v3)
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

  _StringGuts.grow(_:)(32);
  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._countAndFlagsBits = 58;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._object = 0x8000000100179630;
  v13._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v13);
  v14 = OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_pairingValueUIVisible;
  swift_beginAccess();
  if (*(v1 + v14))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v1 + v14))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  return 0;
}

void sub_1000E5FD8(objc_class *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_queue];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v9)
  {
    if (qword_1001D8898 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000BB0C(v10, qword_1001D88A0);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = [*(&v11->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx) processIdentifier];

    _os_log_impl(&_mh_execute_header, v12, v13, "Start pairing receiver controller from %d", v14, 8u);
  }

  else
  {

    v12 = v11;
  }

  v15 = *(&v11->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_activatedReceiver);
  *(&v11->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_activatedReceiver) = a1;

  v16 = a1;
  RPPairingReceiverController.queue.setter();
  v17 = *(&v11->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_daemon);
  sub_1000E4070(v11);
}

void sub_1000E629C(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_queue];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (qword_1001D8898 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_10000BB0C(v9, qword_1001D88A0);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    *(v13 + 4) = a1 & 1;
    *(v13 + 8) = 1024;
    *(v13 + 10) = [*(&v10->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx) processIdentifier];

    _os_log_impl(&_mh_execute_header, v11, v12, "Pairing value UI visible updated: %{BOOL}d for %d", v13, 0xEu);
  }

  else
  {

    v11 = v10;
  }

  v14 = OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_pairingValueUIVisible;
  swift_beginAccess();
  *(&v10->isa + v14) = a1 & 1;
  v15 = *(&v10->isa + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_daemon);
  sub_10000BB44();
}

unint64_t sub_1000E65E8(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1000E9980(&qword_1001D55A8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000E6684(a1, v2);
}

unint64_t sub_1000E6684(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1000E9980(&qword_1001D55B8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_1000E6848(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for RPPairingDaemonXPCConnection(v10, v11);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1000E6A58(v7, result + 1);
    v22 = v21[2];
    if (v21[3] <= v22)
    {
      sub_1000E6C34(v22 + 1);
    }

    v20 = v8;
    sub_1000E6E5C(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for RPPairingDaemonXPCConnection(a1, a2);
  v13 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v14 = -1 << *(v6 + 32);
  v15 = v13 & ~v14;
  if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1000E6EE0(v20, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v16 = ~v14;
  while (1)
  {
    v17 = *(*(v6 + 48) + 8 * v15);
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v15);
  *a1 = v23;
  v24 = v23;
  return 0;
}

Swift::Int sub_1000E6A58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000C4810(&qword_1001D5658, &qword_10014B238);
    v2 = static _SetStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      type metadata accessor for RPPairingDaemonXPCConnection(v3, v4);
      do
      {
        swift_dynamicCast();
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_1000E6C34(v11 + 1);
        }

        v2 = v17;
        result = NSObject._rawHashValue(seed:)(*(v17 + 40));
        v6 = v17 + 56;
        v7 = -1 << *(v17 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v9 == v13;
            if (v9 == v13)
            {
              v9 = 0;
            }

            v12 |= v14;
            v15 = *(v6 + 8 * v9);
          }

          while (v15 == -1);
          v10 = __clz(__rbit64(~v15)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v17 + 48) + 8 * v10) = v16;
        ++*(v17 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1000E6C34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000C4810(&qword_1001D5658, &qword_10014B238);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1000E6E5C(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_1000E6EE0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000E6C34(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000E703C();
      goto LABEL_12;
    }

    sub_1000E718C(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v11 = -1 << *(v8 + 32);
  a2 = v9 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for RPPairingDaemonXPCConnection(v9, v10);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_1000E703C()
{
  v1 = v0;
  sub_1000C4810(&qword_1001D5658, &qword_10014B238);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

Swift::Int sub_1000E718C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000C4810(&qword_1001D5658, &qword_10014B238);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_1000E73A0(void *a1, uint64_t a2)
{
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *v2;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_1000E7524(v5, v6);

      return v8;
    }

    return 0;
  }

  v10 = v2;
  type metadata accessor for RPPairingDaemonXPCConnection(a1, a2);
  v11 = NSObject._rawHashValue(seed:)(*(v4 + 40));
  v12 = -1 << *(v4 + 32);
  v13 = v11 & ~v12;
  if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v4 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v10;
  v20 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000E703C();
    v18 = v20;
  }

  v19 = *(*(v18 + 48) + 8 * v13);
  sub_1000E7678(v13);
  result = v19;
  *v10 = v20;
  return result;
}

uint64_t sub_1000E7524(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1000E6A58(v5, v4);
  v17 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    type metadata accessor for RPPairingDaemonXPCConnection(v8, v9);
    while (1)
    {
      v13 = *(*(v6 + 48) + 8 * v11);
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v15 = *(*(v6 + 48) + 8 * v11);
  sub_1000E7678(v11);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v17;
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000E7678(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000E7818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000C4810(&qword_1001D55B0, &qword_10014B1F8);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000E9980(&qword_1001D55A8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_1000E7BF8(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1000E9980(&qword_1001D55A8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_1000E7F1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000E65E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000E81A0();
      goto LABEL_7;
    }

    sub_1000E7818(v17, a3 & 1);
    v23 = sub_1000E65E8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1000E80E8(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1000E80E8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_1000E81A0()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4810(&qword_1001D55B0, &qword_10014B1F8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_1000E8414(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000C4810(&qword_1001D5658, &qword_10014B238);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v39 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v13 = -1 << *(v3 + 32);
      v14 = v11 & ~v13;
      v15 = v14 >> 6;
      v16 = *&v6[8 * (v14 >> 6)];
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        type metadata accessor for RPPairingDaemonXPCConnection(v11, v12);
        while (1)
        {
          v19 = *(v3[6] + 8 * v14);
          v20 = static NSObject.== infix(_:_:)();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *&v6[8 * (v14 >> 6)];
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v15] = v17 | v16;
        *(v3[6] + 8 * v14) = v10;
        v21 = v3[2];
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = v3[5];
      v25 = *(a1 + 32 + 8 * v23);
      v26 = NSObject._rawHashValue(seed:)(v24);
      v28 = -1 << *(v3 + 32);
      v29 = v26 & ~v28;
      v30 = v29 >> 6;
      v31 = *&v6[8 * (v29 >> 6)];
      v32 = 1 << v29;
      if (((1 << v29) & v31) != 0)
      {
        v33 = ~v28;
        type metadata accessor for RPPairingDaemonXPCConnection(v26, v27);
        while (1)
        {
          v34 = *(v3[6] + 8 * v29);
          v35 = static NSObject.== infix(_:_:)();

          if (v35)
          {
            break;
          }

          v29 = (v29 + 1) & v33;
          v30 = v29 >> 6;
          v31 = *&v6[8 * (v29 >> 6)];
          v32 = 1 << v29;
          if (((1 << v29) & v31) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v30] = v32 | v31;
        *(v3[6] + 8 * v29) = v25;
        v36 = v3[2];
        v9 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v37;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1000E86D8(uint64_t a1)
{
  v2 = sub_1000C4810(&unk_1001D5670, &unk_10014B250);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000C4810(&qword_1001D55B0, &qword_10014B1F8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000E9C1C(v9, v5);
      result = sub_1000E65E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
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

unint64_t _s8rapportd15RPPairingDaemonC20descriptionWithLevelySSs5Int32VF_0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = 0xD000000000000016;
  v48 = 0x80000001001799D0;
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_activeSenders;
  swift_beginAccess();
  if (*(*(v0 + v6) + 16))
  {
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v46._countAndFlagsBits = 0x6553657669746361;
    v46._object = 0xEF203A737265646ELL;

    v7 = Set.description.getter();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 10;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    String.append(_:)(v46);
  }

  v12 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcConnections;
  swift_beginAccess();
  v13 = *(v0 + v12);
  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = __CocoaSet.count.getter();

    if (!v14)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(v13 + 16))
  {
LABEL_5:
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v45._countAndFlagsBits = 0xD000000000000010;
    v45._object = 0x80000001001799F0;
    type metadata accessor for RPPairingDaemonXPCConnection(v15, v16);
    sub_1000E9980(&qword_1001D5648, v17, type metadata accessor for RPPairingDaemonXPCConnection, &protocol conformance descriptor for NSObject);

    v18 = Set.description.getter();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 10;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    String.append(_:)(v45);
  }

LABEL_6:
  v23 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v24 = *(v1 + v23);
  *v5 = v24;
  v25 = enum case for DispatchPredicate.onQueue(_:);
  v26 = *(v3 + 104);
  v26(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v27 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v28 = *(v3 + 8);
  v43 = v3 + 8;
  result = v28(v5, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v42 = v26;
  v30 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue + 8);
  if (v30)
  {
    v31 = v2;
    v32 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue);
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;

    _StringGuts.grow(_:)(24);

    v44._countAndFlagsBits = 0xD000000000000015;
    v44._object = 0x8000000100179A30;
    v33._countAndFlagsBits = v32;
    v2 = v31;
    v33._object = v30;
    String.append(_:)(v33);

    v34._countAndFlagsBits = 10;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    String.append(_:)(v44);
  }

  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v44._countAndFlagsBits = 0xD000000000000017;
  v44._object = 0x8000000100179A10;
  v35 = *(v1 + v23);
  *v5 = v35;
  v42(v5, v25, v2);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  result = v28(v5, v2);
  if ((v35 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (*(v1 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__pairingValueUIVisible))
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__pairingValueUIVisible))
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  v39 = v38;
  String.append(_:)(*&v37);

  v40._countAndFlagsBits = 10;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);
  String.append(_:)(v44);

  return v47;
}

uint64_t sub_1000E8DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E8DF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000C6A0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000E8E5C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();

    sub_1000D80FC(&v5, v1, v2);
    swift_endAccess();

    sub_10000BB44();
  }
}

uint64_t sub_1000E8F08()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000E8F48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    sub_1000D8A78(v1, v2);
    swift_endAccess();

    sub_10000BB44();
  }
}

void sub_1000E8FEC(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BB0C(v4, qword_1001D88A0);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_1000E90E4(id a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v9 = *(&v2->isa + v8);
  *v7 = v9;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v11 = (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v13 = *(&v2->isa + v8);
    v14 = type metadata accessor for RPPairingDaemonXPCConnection(v11, v12);
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_activatedReceiver] = 0;
    v15[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_pairingValueUIVisible] = 0;
    *&v15[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcID] = 0;
    *&v15[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_daemon] = v2;
    *&v15[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_queue] = v13;
    *&v15[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx] = a1;
    v39.receiver = v15;
    v39.super_class = v14;
    v16 = v13;
    v17 = v2;
    a1 = a1;
    v18 = objc_msgSendSuper2(&v39, "init");
    v19 = *(&v17->isa + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcLastID);
    v20 = (v19 + 1);
    if (!__OFADD__(v19, 1))
    {
      v21 = v18;
      *(&v17->isa + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcLastID) = v20;
      v22 = OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcID;
      swift_beginAccess();
      *&v21[v22] = v20;
      swift_beginAccess();
      v23 = v21;
      sub_1000E6848(&v38, v23);
      swift_endAccess();

      [a1 rp_setQueue:*(&v2->isa + v8)];
      v24 = objc_opt_self();
      v25 = [v24 interfaceWithProtocol:&OBJC_PROTOCOL____TtP8rapportd27RPPairingDaemonXPCInterface_];
      [a1 setExportedInterface:v25];

      [a1 setExportedObject:v23];
      v26 = swift_allocObject();
      *(v26 + 16) = v17;
      *(v26 + 24) = v23;
      aBlock[4] = sub_1000E9C14;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D36FC;
      aBlock[3] = &unk_1001B06B0;
      v27 = _Block_copy(aBlock);
      v28 = v17;
      v2 = v23;

      [a1 setInvalidationHandler:v27];
      _Block_release(v27);
      v29 = [v24 interfaceWithProtocol:&OBJC_PROTOCOL____TtP8rapportd45RPPairingReceiverControllerXPCClientInterface_];
      [a1 setRemoteObjectInterface:v29];

      [a1 resume];
      if (qword_1001D8898 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  swift_once();
LABEL_4:
  v30 = type metadata accessor for Logger();
  sub_10000BB0C(v30, qword_1001D88A0);
  v31 = a1;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109120;
    *(v34 + 4) = [v31 processIdentifier];

    _os_log_impl(&_mh_execute_header, v32, v33, "XPC connection started from %d", v34, 8u);
  }

  else
  {

    v2 = v32;
    v32 = v31;
  }

  return 1;
}

void sub_1000E95E0(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    a1();
  }
}

void sub_1000E9658(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1001D8898 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000BB0C(v4, qword_1001D88A0);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "BLE Device changed: %@", v8, 0xCu);
      sub_1000C59E0(v9, &qword_1001D55A0, &unk_100149890);
    }

    sub_1000E4240(v5);
  }
}

void sub_1000E97F0(void *a1, const char *a2, void (*a3)(id), ...)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_1001D8898 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000BB0C(v8, qword_1001D88A0);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 0xCu);
      sub_1000C59E0(v13, &qword_1001D55A0, &unk_100149890);
    }

    a3(v9);
  }
}

uint64_t sub_1000E9980(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000E99C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (a1)
    {
      swift_errorRetain();
      if (qword_1001D8898 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000BB0C(v3, qword_1001D88A0);
      swift_errorRetain();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        swift_errorRetain();
        v8 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v8;
        *v7 = v8;
        _os_log_impl(&_mh_execute_header, v4, v5, "Failed to activate BLE advertiser: %@", v6, 0xCu);
        sub_1000C59E0(v7, &qword_1001D55A0, &unk_100149890);
      }

      else
      {
      }
    }

    if (qword_1001D8898 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000BB0C(v9, qword_1001D88A0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "BLE advertiser started", v12, 2u);
    }
  }
}

uint64_t sub_1000E9C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4810(&unk_1001D5670, &unk_10014B250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E9D00()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D88C8);
  v1 = sub_10000BB0C(v0, qword_1001D88C8);
  v2 = sub_1001061B0();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1000E9D8C()
{
  result = sub_1000EF954(_swiftEmptyArrayStorage);
  qword_1001DA6D0 = result;
  return result;
}

id sub_1000E9FA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 136) = 0;
  *(v16 + 144) = 0;
  *(v16 + 152) = 0;
  sub_1000C4810(&qword_1001D56E0, &unk_10014B280);
  v23 = sub_1000EFB3C(_swiftEmptyArrayStorage);
  *(v16 + 160) = sub_1000DE8D8(&v23);
  *(v16 + 168) = 0u;
  *(v16 + 184) = 0u;
  *(v16 + 112) = a1;
  *(v16 + 120) = a2;
  *(v16 + 200) = a8;
  *(v16 + 208) = a9;
  *(v16 + 128) = a3;
  v22.receiver = v16;
  v22.super_class = v9;
  v17 = a3;
  v18 = objc_msgSendSuper2(&v22, "init");
  sub_1000134D4(a6, a7);
  sub_1000134D4(a4, a5);

  return v18;
}

void sub_1000EA238(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RPPairingPINInfo(0, a2);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_1000EA2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = (*(a3 + 16))(a3, isa);

  return v5;
}

void sub_1000EA2F4(uint64_t a1, uint64_t a2)
{
  sub_1000C5AF8(0, &qword_1001D5720, off_1001A9AA0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1000EA370(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C48EC;

  return sub_1000EFD18(a1, a2);
}

void *sub_1000EA428(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v42 = a1;
  v43 = a2;
  v9 = type metadata accessor for NWTXTRecord();
  __chkstk_darwin(v9 - 8);
  v39[2] = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NWListener.Service();
  v41 = *(v11 - 8);
  __chkstk_darwin(v11);
  v40 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.Encoding();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v6[21];
  if (v17)
  {
    v39[0] = v11;
    v39[1] = v5;
    type metadata accessor for NWParameters();

    v18 = v17;
    v19 = sub_100108D14(v42, v43, a3, a4);

    if (v19)
    {
      static String.Encoding.utf8.getter();
      v43 = String.data(using:allowLossyConversion:)();
      v21 = v20;
      (*(v14 + 8))(v16, v13);
      if (v21 >> 60 == 15)
      {
        v22 = 0x8000000100179E70;
        sub_1000DB7B8();
        swift_allocError();
        *v23 = 0xD000000000000012;
        *(v23 + 8) = 0x8000000100179E70;
        *(v23 + 16) = 0xD000000000000060;
        *(v23 + 24) = 0x8000000100179B20;
        *(v23 + 32) = 228;
        *(v23 + 40) = 2;
        swift_willThrow();
LABEL_10:

        return v22;
      }

      v42 = v21;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v44 = 0;
      v27 = [v18 authTagForData:isa type:6 error:&v44];

      v28 = v44;
      if (!v27)
      {
        v22 = v28;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_1000C5928(v43, v42);
        goto LABEL_10;
      }

      v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v33 = v6[14];
      v32 = v6[15];
      sub_1000C61D4(v29, v31);

      v38.n128_u64[0] = v33;
      v38.n128_u64[1] = v32;
      v37.n128_u64[0] = a3;
      v37.n128_u64[1] = a4;
      v34 = v31;
      sub_1000CBF5C(v29, v31, 0, 0, 0, 0, 0, 0, v45, v37, v38);
      RPPairingBonjourServiceName.unsafeMutableAddressor();

      sub_1000CC6E4();
      v35 = v40;
      NWListener.Service.init(name:type:domain:txtRecord:)();
      type metadata accessor for NWActorSystem();
      v22 = sub_1001089F0(v35, v19);
      sub_1000C5928(v43, v42);
      sub_1000F1908(v45);

      sub_1000C4AA4(v29, v34);
      (*(v41 + 8))(v35, v39[0]);
    }

    else
    {
      v22 = 0x8000000100179E50;
      sub_1000DB7B8();
      swift_allocError();
      *v25 = 0xD000000000000012;
      *(v25 + 8) = 0x8000000100179E50;
      *(v25 + 16) = 0xD000000000000060;
      *(v25 + 24) = 0x8000000100179B20;
      *(v25 + 32) = 225;
      *(v25 + 40) = 2;
      swift_willThrow();
    }
  }

  else
  {
    v22 = 0x8000000100179B20;
    sub_1000DB7B8();
    swift_allocError();
    *v24 = xmmword_10014B260;
    *(v24 + 16) = 0xD000000000000060;
    *(v24 + 24) = 0x8000000100179B20;
    *(v24 + 32) = 218;
    *(v24 + 40) = 2;
    swift_willThrow();
  }

  return v22;
}

uint64_t sub_1000EA9A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1000EAA8C;

    return sub_1000EABA0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000EAA8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000EABC0()
{
  v19 = v0;
  v1 = v0[2];
  v2 = v1[17];
  v0[3] = v2;
  if (v2 && (v3 = v1[18], (v0[4] = v3) != 0) && (v4 = v1[23]) != 0)
  {
    v5 = v1[22];
    v6 = qword_1001D88C0;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v0[5] = sub_10000BB0C(v7, qword_1001D88C8);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = sub_1000C3440(v5, v4, &v18);

      *(v10 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Starting advertising for pairing session with server identity: %s", v10, 0xCu);
      sub_1000C5604(v11);
    }

    else
    {
    }

    v15 = swift_task_alloc();
    v0[6] = v15;
    v16 = type metadata accessor for RPPairingDistributedActor(0);
    v17 = sub_1000F16F0(&qword_1001D5748, type metadata accessor for RPPairingDistributedActor, &unk_100149EF8);
    *v15 = v0;
    v15[1] = sub_1000EAE70;

    return NWActorSystem.publish<A>(_:)(v3, v16, v17);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000EAE70()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1000EB080;
  }

  else
  {
    v4 = sub_1000EAF9C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000EAF9C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished advertising for pairing session", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1000EB080()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to publish pairing actor %@", v3, 0xCu);
    sub_1000C59E0(v4, &qword_1001D55A0, &unk_100149890);
  }

  else
  {
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Finished advertising for pairing session", v8, 2u);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000EB3F8(uint64_t a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v4[4] = v7;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1000EB4F0;

  return sub_1000EFD18(a1, v7);
}

uint64_t sub_1000EB4F0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1000EB6B4()
{
  v1 = *(v0 + 16);
  if (*(v1 + 144))
  {
    if (qword_1001D88C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000BB0C(v2, qword_1001D88C8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stopping bonjour advertising", v5, 2u);
    }

    v6 = *(v0 + 16);

    if (*(v6 + 152))
    {

      sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
      Task.cancel()();
    }

    *(v6 + 152) = 0;

    v7 = *(v0 + 16);
    if (*(v1 + 144) && v7[17])
    {
      type metadata accessor for RPPairingDistributedActor(0);
      sub_1000F16F0(&qword_1001D5008, type metadata accessor for RPPairingDistributedActor, &unk_100149E98);

      NWActorSystem.invalidateActor<A>(_:)();

      v7 = *(v0 + 16);
    }

    *(v1 + 144) = 0;

    v7[22] = 0;
    v7[23] = 0;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000EBA60(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1000EBB08;

  return sub_1000EB694();
}

uint64_t sub_1000EBB08()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000EBC44(uint64_t a1)
{
  *(v2 + 232) = a1;
  *(v2 + 240) = v1;
  return _swift_task_switch(sub_1000EBC64, v1, 0);
}

uint64_t sub_1000EBC64()
{
  if (qword_1001D88C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BB0C(v1, qword_1001D88C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activate browsing", v4, 2u);
  }

  v5 = v0[30];

  sub_1000C5AF8(0, &qword_1001D5030, RPClient_ptr);
  v6 = *(v5 + 128);
  v0[31] = v6;
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_1000EBDDC;

  return sub_100108600(v6);
}

uint64_t sub_1000EBDDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 240);
    *(v4 + 264) = a1;

    return _swift_task_switch(sub_1000EBF28, v8, 0);
  }
}

uint64_t sub_1000EBF28()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v2 + 168);
  *(v2 + 168) = v1;
  v4 = v1;

  if (!v1)
  {
    goto LABEL_9;
  }

  v5 = v4;
  sub_100106274(v5, (v0 + 80));
  v7 = *(v0 + 88);
  if (!v7)
  {

LABEL_9:
    sub_1000DB7B8();
    swift_allocError();
    *v26 = xmmword_10014B260;
    *(v26 + 16) = 0xD000000000000060;
    *(v26 + 24) = 0x8000000100179B20;
    *(v26 + 32) = 166;
    *(v26 + 40) = 2;
    swift_willThrow();
    v25 = *(v0 + 8);
    goto LABEL_10;
  }

  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 232);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 24) = v7;
  v11 = *(v0 + 112);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v11;
  *(v0 + 64) = *(v0 + 128);
  type metadata accessor for RPPairingClient(0, v6);
  v12 = v9[14];
  v13 = v9[15];

  v14 = v8;
  sub_1000C5808(v0 + 80, v0 + 144, &qword_1001D5010, &qword_10014B2B0);
  v15 = sub_1000BDAB4(v10, v12, v13, v14, (v0 + 16));
  v16 = v9[24];
  v9[24] = v15;

  v17 = v9[24];
  if (v17 && (v18 = *(v0 + 240), v19 = &v17[OBJC_IVAR____TtC8rapportd15RPPairingClient_endpointsChangedHandler], swift_beginAccess(), v20 = *v19, v21 = v19[1], *v19 = sub_1000F0614, v19[1] = v18, v22 = v17, , sub_1000134D4(v20, v21), v22, (v23 = v9[24]) != 0))
  {
    v24 = v23;
    sub_1000BDCF0();

    sub_1000C59E0(v0 + 80, &qword_1001D5010, &qword_10014B2B0);
  }

  else
  {

    sub_1000C59E0(v0 + 80, &qword_1001D5010, &qword_10014B2B0);
  }

  v25 = *(v0 + 8);
LABEL_10:

  return v25();
}

uint64_t sub_1000EC30C(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1000EC3C8;

  return sub_1000EBC44(a1);
}

uint64_t sub_1000EC3C8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1000EC570()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3(0, 0xF000000000000000);
}

uint64_t sub_1000EC7C0(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5)
{
  v5[2] = a5;
  sub_1000C4810(&qword_1001D5718, &qword_10014B418);
  v5[3] = swift_task_alloc();
  v5[4] = swift_task_alloc();
  v5[5] = _Block_copy(a4);
  v9 = a3;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000C4AA4(v10, v11);

  return _swift_task_switch(sub_1000EC8A8, a5, 0);
}

uint64_t sub_1000EC8A8()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  sub_1000F1330(v1, v2);
  isa = 0;
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v6 = v0[3];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v6, v3);
  }

  v7 = v0[5];
  (v7)[2](v7, 0, isa, 0);
  _Block_release(v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000ECA0C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000ECA30, v2, 0);
}

uint64_t sub_1000ECA30()
{
  v1 = *(v0[4] + 192);
  v0[5] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_1000ECB1C;
    v4 = v0[2];
    v3 = v0[3];

    return sub_1000BE7E0(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_1000ECB1C(char a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1000ECC34, v2, 0);
}

uint64_t sub_1000ECC34()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000ECE24(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v3[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[3] = v5;
  v3[6] = v5;

  return _swift_task_switch(sub_1000ECEB8, a3, 0);
}

uint64_t sub_1000ECEB8()
{
  v1 = *(v0[4] + 192);
  v0[7] = v1;
  if (v1)
  {
    v2 = v0[2];
    v1;
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1000ECFE0;
    v4 = v0[6];

    return sub_1000BE7E0(v2, v4);
  }

  else
  {

    v6 = v0[5];
    v6[2](v6, 0);
    _Block_release(v6);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1000ECFE0(char a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1000ED114, v2, 0);
}

uint64_t sub_1000ED114()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 40);
  v2[2](v2, *(v0 + 72));
  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000ED340(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1000ED3DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 192);
  if (v2)
  {
    v3 = v2;
    sub_1000BE618();

    v2 = *(v1 + 192);
  }

  *(v1 + 192) = 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000ED5D4(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_1000ED650, a2, 0);
}

uint64_t sub_1000ED650()
{
  v1 = v0[2];
  v2 = *(v1 + 192);
  if (v2)
  {
    v3 = v2;
    sub_1000BE618();

    v2 = *(v1 + 192);
  }

  v4 = v0[3];
  *(v1 + 192) = 0;

  v4[2](v4);
  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1000ED708(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Date();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000ED7C8, 0, 0);
}

uint64_t sub_1000ED7C8()
{
  v32 = v0;
  v1 = [objc_allocWithZone(RPIdentity) initWithType:15];
  v2 = v0[7];
  if (v1)
  {
    v3 = v1;
    v4 = v0[5];
    v5 = v0[6];
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v2, v4);
    [v3 setDateAdded:isa];

    v7 = Data._bridgeToObjectiveC()().super.isa;
    [v3 setDeviceIRKData:v7];

    v8 = Data._bridgeToObjectiveC()().super.isa;
    [v3 setEdPKData:v8];

    v9 = String._bridgeToObjectiveC()();
    [v3 setIdentifier:v9];

    v10 = String._bridgeToObjectiveC()();
    [v3 setName:v10];

    v11 = [objc_opt_self() sharedIdentityDaemon];
    [v11 addOrUpdateAdHocPairedIdentity:v3];
    if (qword_1001D88C0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000BB0C(v12, qword_1001D88C8);
    v13 = v3;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      v18 = [v13 identifier];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      v0[2] = v20;
      v0[3] = v22;
      v25 = sub_1000C4810(&qword_1001D5650, &qword_10014B230);
      v26 = sub_1000DC030((v0 + 2), v25);
      v28 = v27;

      v29 = sub_1000C3440(v26, v28, &v31);

      *(v16 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v14, v15, "Added/updated identity: %s", v16, 0xCu);
      sub_1000C5604(v17);
    }

    else
    {
    }

    v24 = v0[1];
  }

  else
  {
    sub_1000DB7B8();
    swift_allocError();
    *v23 = xmmword_10014B270;
    *(v23 + 16) = 0xD000000000000060;
    *(v23 + 24) = 0x8000000100179B20;
    *(v23 + 32) = 318;
    *(v23 + 40) = 2;
    swift_willThrow();

    v24 = v0[1];
  }

  return v24();
}

uint64_t sub_1000EDBB4()
{
  v30 = v0;
  v1 = [objc_allocWithZone(RPIdentity) initWithType:15];
  if (v1)
  {
    v2 = v1;
    if (*(v0[4] + 8))
    {
      v3 = String._bridgeToObjectiveC()();
    }

    else
    {
      v3 = 0;
    }

    [v2 setContactID:v3];

    type metadata accessor for RPPairingTemporaryIdentity(0);
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v2 setDateAdded:isa];

    v7 = Data._bridgeToObjectiveC()().super.isa;
    [v2 setDeviceIRKData:v7];

    v8 = Data._bridgeToObjectiveC()().super.isa;
    [v2 setEdPKData:v8];

    v9 = String._bridgeToObjectiveC()();
    [v2 setIdentifier:v9];

    v10 = String._bridgeToObjectiveC()();
    [v2 setName:v10];

    v11 = [objc_opt_self() sharedIdentityDaemon];
    [v11 addOrUpdateAdHocPairedIdentity:v2];
    if (qword_1001D88C0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000BB0C(v12, qword_1001D88C8);
    v13 = v2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      v18 = [v13 identifier];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      v0[2] = v20;
      v0[3] = v22;
      v23 = sub_1000C4810(&qword_1001D5650, &qword_10014B230);
      v24 = sub_1000DC030((v0 + 2), v23);
      v26 = v25;

      v27 = sub_1000C3440(v24, v26, &v29);

      *(v16 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v14, v15, "Added/updated temporary identity: %s", v16, 0xCu);
      sub_1000C5604(v17);
    }

    else
    {
    }

    v5 = v0[1];
  }

  else
  {
    sub_1000DB7B8();
    swift_allocError();
    *v4 = xmmword_10014B270;
    *(v4 + 16) = 0xD000000000000060;
    *(v4 + 24) = 0x8000000100179B20;
    *(v4 + 32) = 333;
    *(v4 + 40) = 2;
    swift_willThrow();
    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_1000EE140@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1000C4810(&qword_1001D56E8, qword_10014B2C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  if (nw_agent_client_copy_advertise_descriptor())
  {
    v17 = 0;
    v6 = nw_advertise_descriptor_copy_custom_service();
    v7 = sub_1000F0644(v6, v17);
    v9 = v8;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v10 = type metadata accessor for NWListener.Service.PairingConfiguration();
    sub_1000F16F0(&qword_1001D5728, &type metadata accessor for NWListener.Service.PairingConfiguration, &protocol conformance descriptor for NWListener.Service.PairingConfiguration);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1000C4AA4(v7, v9);

    swift_unknownObjectRelease();
    v13 = *(v10 - 8);
    v14 = *(v13 + 56);
    v14(v5, 0, 1, v10);
    (*(v13 + 32))(a2, v5, v10);
    return (v14)(a2, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for NWListener.Service.PairingConfiguration();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

uint64_t sub_1000EE488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  LOBYTE(a4) = a4(a3);
  swift_unknownObjectRelease();
  return a4 & 1;
}

uint64_t sub_1000EE4D0(uint64_t a1)
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C4810(&qword_1001D55C8, &qword_10014B2C0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = sub_1000C4810(&qword_1001D56E8, qword_10014B2C8);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for NWListener.Service.PairingConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE140(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000C59E0(v13, &qword_1001D56E8, qword_10014B2C8);
    return 0;
  }

  v31 = v2;
  v32 = v1;
  (*(v15 + 32))(v17, v13, v14);
  v18 = NWListener.Service.PairingConfiguration.pairingData.getter();
  v20 = v19;
  NWListener.Service.PairingConfiguration.pairingValue.getter();
  v21 = type metadata accessor for NWPairingValue();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) != 1)
  {
    sub_1000C5808(v10, v8, &qword_1001D55C8, &qword_10014B2C0);
    if ((*(v22 + 88))(v8, v21) == enum case for NWPairingValue.pin(_:))
    {
      (*(v22 + 96))(v8, v21);
      static String.Encoding.utf8.getter();
      v23 = String.data(using:allowLossyConversion:)();
      v25 = v24;
      sub_1000C5928(v18, v20);
      result = (*(v31 + 8))(v4, v32);
      if (v25 >> 60 == 15)
      {
        goto LABEL_14;
      }

      v18 = v23;
      v20 = v25;
    }

    else
    {
      (*(v22 + 8))(v8, v21);
    }
  }

  sub_1000C59E0(v10, &qword_1001D55C8, &qword_10014B2C0);
  if ((NWListener.Service.PairingConfiguration.generatePairingValueImmediately.getter() & 1) == 0)
  {
LABEL_11:
    (*(v15 + 8))(v17, v14);
    return v18;
  }

  v27 = sub_1000DB608();
  sub_1000DB610(v27);
  static String.Encoding.utf8.getter();
  v28 = String.data(using:allowLossyConversion:)();
  v30 = v29;

  sub_1000C5928(v18, v20);
  result = (*(v31 + 8))(v4, v32);
  if (v30 >> 60 != 15)
  {
    v18 = v28;
    goto LABEL_11;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1000EEA9C()
{

  sub_1000134D4(*(v0 + 200), *(v0 + 208));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000EEB0C()
{
  sub_1000EEA9C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000EEB38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000C5EF0;

  return v6();
}

uint64_t sub_1000EEC20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000C48EC;

  return v7();
}

uint64_t sub_1000EED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000C5808(a3, v23 - v10, &qword_1001D4F68, &qword_100149690);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000C59E0(v11, &qword_1001D4F68, &qword_100149690);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000C59E0(a3, &qword_1001D4F68, &qword_100149690);

    return v21;
  }

LABEL_8:
  sub_1000C59E0(a3, &qword_1001D4F68, &qword_100149690);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

char *sub_1000EF004(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C4810(&qword_1001D5750, &qword_10014B4B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000EF12C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000C4810(&qword_1001D5740, &unk_10014B488);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000F16F0(&qword_1001D55A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000EF508(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000E65E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000EF6D4();
      goto LABEL_7;
    }

    sub_1000EF12C(v17, a3 & 1);
    v22 = sub_1000E65E8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000E80E8(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

char *sub_1000EF6D4()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4810(&qword_1001D5740, &unk_10014B488);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_1000EF954(uint64_t a1)
{
  v2 = sub_1000C4810(&qword_1001D5760, &qword_10014B4C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000C4810(&qword_1001D5740, &unk_10014B488);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000C5808(v9, v5, &qword_1001D5760, &qword_10014B4C8);
      result = sub_1000E65E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
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

unint64_t sub_1000EFB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C4810(&qword_1001D5758, &qword_10014B4C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000C39E8(v5, v6);
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

id sub_1000EFC40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0;
  sub_1000C4810(&qword_1001D56E0, &unk_10014B280);
  v15 = sub_1000EFB3C(_swiftEmptyArrayStorage);
  *(v5 + 160) = sub_1000DE8D8(&v15);
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  *(v5 + 200) = a4;
  *(v5 + 208) = a5;
  *(v5 + 128) = a3;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = a3;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1000EFD18(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v3[29] = swift_task_alloc();
  v4 = type metadata accessor for String.Encoding();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000EFE70, v2, 0);
}

uint64_t sub_1000EFE70()
{
  v1 = v0[28];
  if (v1[17] || v1[18] || v1[23])
  {
    sub_1000DB7B8();
    swift_allocError();
    *v2 = 0xD000000000000027;
    *(v2 + 8) = 0x8000000100179E20;
    *(v2 + 16) = 0xD000000000000060;
    *(v2 + 24) = 0x8000000100179B20;
    *(v2 + 32) = 76;
    *(v2 + 40) = 1;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1000C5AF8(0, &qword_1001D5030, RPClient_ptr);
    v5 = v1[16];
    v0[36] = v5;
    v6 = swift_task_alloc();
    v0[37] = v6;
    *v6 = v0;
    v6[1] = sub_1000F000C;

    return sub_100108600(v5);
  }
}

uint64_t sub_1000F000C(uint64_t a1)
{
  v4 = *v2;
  v4[38] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v4[28];
    v4[39] = a1;

    return _swift_task_switch(sub_1000F0174, v7, 0);
  }
}

uint64_t sub_1000F0174()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 224);
  v3 = *(v2 + 168);
  *(v2 + 168) = v1;
  v4 = v1;

  if (!v1)
  {
    sub_1000DB7B8();
    swift_allocError();
    *v16 = xmmword_10014B260;
    *(v16 + 16) = 0xD000000000000060;
    *(v16 + 24) = 0x8000000100179B20;
    *(v16 + 32) = 81;
    *(v16 + 40) = 2;
    swift_willThrow();
    goto LABEL_5;
  }

  v41 = v4;
  v5 = *(v0 + 304);
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);
  v8 = *(v0 + 264);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v11 = *(v0 + 208);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v6 + 8))(v7, v8);
  *(v9 + 176) = v12;
  *(v9 + 184) = v14;

  v15 = sub_1000EA428(v11, v10, v12, v14);
  if (v5)
  {

LABEL_5:

    v17 = *(v0 + 8);
    goto LABEL_6;
  }

  *(*(v0 + 224) + 136) = v15;
  v19 = v15;

  v20 = v41;
  sub_100106274(v20, (v0 + 80));
  v21 = *(v0 + 88);
  if (!v21)
  {

    sub_1000DB7B8();
    swift_allocError();
    *v30 = 0xD000000000000013;
    *(v30 + 8) = 0x8000000100178ED0;
    *(v30 + 16) = 0xD000000000000060;
    *(v30 + 24) = 0x8000000100179B20;
    *(v30 + 32) = 98;
    *(v30 + 40) = 2;
    swift_willThrow();

    goto LABEL_5;
  }

  v40 = *(v0 + 80);
  v42 = v20;
  v22 = *(v0 + 288);
  if (*(v0 + 216))
  {
    v23 = *(v0 + 248);
    v24 = *(v0 + 256);
    v25 = *(v0 + 240);
    v26 = v22;
    static String.Encoding.utf8.getter();
    v27 = String.data(using:allowLossyConversion:)();
    v29 = v28;
    result = (*(v23 + 8))(v24, v25);
    if (v29 >> 60 == 15)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v31 = v22;

    v27 = 0;
    v29 = 0xF000000000000000;
  }

  v32 = *(v0 + 288);
  v34 = *(v0 + 224);
  v33 = *(v0 + 232);
  type metadata accessor for RPPairingDistributedActor(0);
  v35 = *(v0 + 112);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v35;
  *(v0 + 64) = *(v0 + 128);
  *(v0 + 16) = v40;
  *(v0 + 24) = v21;

  sub_1000C5808(v0 + 80, v0 + 144, &qword_1001D5010, &qword_10014B2B0);
  *(v34 + 144) = sub_1000C8A8C(v19, v32, v27, v29, (v0 + 16), variable initialization expression of RPPairingDaemon.xpcLastID, 0, 0, 0);

  v36 = type metadata accessor for TaskPriority();
  (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v37;
  v39 = sub_1000BE36C(0, 0, v33, &unk_10014B4A0, v38);

  sub_1000C59E0(v0 + 80, &qword_1001D5010, &qword_10014B2B0);
  *(v34 + 152) = v39;

  v17 = *(v0 + 8);
LABEL_6:

  return v17();
}

uint64_t sub_1000F0614()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1000F0644(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000CDAB4(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000F06F4(uint64_t a1)
{
  v1 = sub_1000C4810(&qword_1001D5730, &qword_10014B480);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  if (!nw_agent_client_copy_browse_descriptor())
  {
    return 0;
  }

  v12 = 0;
  v4 = nw_browse_descriptor_copy_custom_service();
  v5 = sub_1000F0644(v4, v12);
  v7 = v6;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v8 = type metadata accessor for NWBrowser.Descriptor.PairingConfiguration();
  sub_1000F16F0(&qword_1001D5738, &type metadata accessor for NWBrowser.Descriptor.PairingConfiguration, &protocol conformance descriptor for NWBrowser.Descriptor.PairingConfiguration);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v9 = 1;
  sub_1000C4AA4(v5, v7);

  swift_unknownObjectRelease();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  sub_1000C59E0(v3, &qword_1001D5730, &qword_10014B480);
  return v9;
}

uint64_t sub_1000F0900(uint64_t a1)
{
  v1 = sub_1000C4810(&qword_1001D56E8, qword_10014B2C8);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v17[-v5];
  if (!nw_agent_client_copy_advertise_descriptor())
  {
    v12 = type metadata accessor for NWListener.Service.PairingConfiguration();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v18 = 0;
  v7 = nw_advertise_descriptor_copy_custom_service();
  v8 = sub_1000F0644(v7, v18);
  v10 = v9;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v11 = type metadata accessor for NWListener.Service.PairingConfiguration();
  sub_1000F16F0(&qword_1001D5728, &type metadata accessor for NWListener.Service.PairingConfiguration, &protocol conformance descriptor for NWListener.Service.PairingConfiguration);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1000C4AA4(v8, v10);

  swift_unknownObjectRelease();
  v13 = *(v11 - 8);
  v14 = *(v13 + 56);
  v14(v4, 0, 1, v11);
  (*(v13 + 32))(v6, v4, v11);
  v14(v6, 0, 1, v11);
  v15 = 1;
  if ((*(v13 + 48))(v6, 1, v11) == 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1000C59E0(v6, &qword_1001D56E8, qword_10014B2C8);
  return v15;
}

uint64_t sub_1000F0C60(uint64_t a1)
{
  v2 = type metadata accessor for NWTXTRecord();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = swift_unknownObjectRetain();
    if (nw_endpoint_copy_txt_record(v6))
    {
      swift_unknownObjectRetain();
      NWTXTRecord.init(nw:)();
      v7 = NWTXTRecord.subscript.getter();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v3 + 8))(v5, v2);
      return v7;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_1000F0DC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000C5EF0;

  return sub_1000ED5D4(v2, v3);
}

uint64_t sub_1000F0E74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C5EF0;

  return sub_1000EEB38(v2, v3, v4);
}

uint64_t sub_1000F0F34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000C5EF0;

  return sub_1000EEC20(a1, v4, v5, v6);
}

uint64_t sub_1000F1000(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C5EF0;

  return sub_1000C3250(a1, v4);
}

uint64_t sub_1000F10B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000C5EF0;

  return sub_1000ED340(v2, v3);
}

uint64_t sub_1000F116C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F11B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C5EF0;

  return sub_1000ECE24(v2, v3, v4);
}

uint64_t sub_1000F1268()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000C5EF0;

  return sub_1000EC7C0(v2, v3, v4, v5, v6);
}

uint64_t sub_1000F1330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4810(&qword_1001D5718, &qword_10014B418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F13A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C5EF0;

  return sub_1000EC30C(v2, v3, v4);
}

uint64_t sub_1000F1454()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F1494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000C48EC;

  return sub_1000EBA60(v2, v3);
}

uint64_t sub_1000F1540()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000C5EF0;

  return sub_1000EB3F8(v2, v3, v5, v4);
}

uint64_t sub_1000F1604()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000F165C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C48EC;

  return sub_1000EA984(v3, v4, v5, v2);
}

uint64_t sub_1000F16F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000F1738()
{

  sub_1000DE818(&v31);

  v0 = v31;
  v1 = v31 + 64;
  v2 = 1 << *(v31 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v31 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      do
      {
LABEL_8:
        v9 = (*(*(v0 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4))))) + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_pake);
        v11 = v9[1];
        v10 = v9[2];
        v24 = *v9;
        v25 = v11;
        v26 = v10;
        v12 = v9[6];
        v14 = v9[3];
        v13 = v9[4];
        v29 = v9[5];
        v30 = v12;
        v27 = v14;
        v28 = v13;
        sub_1000DFBB8(&v24, &v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1000EF004(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          v7 = sub_1000EF004((v15 > 1), v16 + 1, 1, v7);
        }

        v4 &= v4 - 1;
        *(v7 + 2) = v16 + 1;
        v17 = &v7[112 * v16];
        v18 = v24;
        v19 = v26;
        *(v17 + 3) = v25;
        *(v17 + 4) = v19;
        *(v17 + 2) = v18;
        v20 = v27;
        v21 = v28;
        v22 = v30;
        *(v17 + 7) = v29;
        *(v17 + 8) = v22;
        *(v17 + 5) = v20;
        *(v17 + 6) = v21;
      }

      while (v4);
    }
  }

  __break(1u);
}

uint64_t sub_1000F195C()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D8978);
  v1 = sub_10000BB0C(v0, qword_1001D8978);
  v2 = sub_10010ACCC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1000F19E8()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1000F1A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000100179EF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100179F10 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1000F1B14(uint64_t a1)
{
  v2 = sub_1000F1D84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1B50(uint64_t a1)
{
  v2 = sub_1000F1D84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1B8C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = sub_1000C4810(&qword_1001D5768, &qword_10014B4E0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_1000CE97C(a1, a1[3]);
  sub_1000F1D84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_1000C61D4(a2, a3);
  sub_1000C9F54();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000C4AA4(v15, v16);
  if (!v4)
  {
    v15 = v14;
    v17 = 1;
    sub_1000C4810(&qword_1001D5770, &qword_10014B4E8);
    sub_1000F5D34(&qword_1001D5778, sub_1000C9F54, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1000F1D84()
{
  result = qword_1001D8990[0];
  if (!qword_1001D8990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8990);
  }

  return result;
}

uint64_t sub_1000F1DD8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000F5724(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1000F1E28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000F1E4C, v2, 0);
}

uint64_t sub_1000F1E4C()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000BB0C(v2, qword_1001D8978);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Missing self IRK", v5, 2u);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_1000C61D4(v0[2], v1);
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_1000F1FEC;
    v9 = v0[3];
    v10 = v0[2];

    return sub_1000F20FC(v10, v9);
  }
}

uint64_t sub_1000F1FEC()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1000F5DAC, v1, 0);
}

uint64_t sub_1000F20FC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_1000C4810(&qword_1001D5780, &qword_10014B508);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000F221C, v2, 0);
}

uint64_t sub_1000F221C(uint64_t a1, uint64_t a2)
{
  v46 = v2;
  v3 = v2[7];
  if (*(v3 + 128))
  {
LABEL_8:

    v11 = v2[1];

    return v11();
  }

  v4 = v2[9];
  v5 = v2[10];
  v6 = v2[8];
  sub_1000F5A00(0, a2);
  sub_1000CEBE4(v6);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_1000C59E0(v2[8], &qword_1001D5780, &qword_10014B508);
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000BB0C(v7, qword_1001D8978);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing protected container", v10, 2u);
    }

    goto LABEL_8;
  }

  v13 = v2[12];
  v14 = v2[9];
  v15 = v2[10];
  (*(v15 + 32))(v2[14], v2[8], v14);
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v16 = *(v15 + 8);
  v2[15] = v16;
  v2[16] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  if (qword_1001D8970 != -1)
  {
    swift_once();
  }

  v17 = v2[13];
  v19 = v2[10];
  v18 = v2[11];
  v20 = v2[9];
  v21 = type metadata accessor for Logger();
  v2[17] = sub_10000BB0C(v21, qword_1001D8978);
  (*(v19 + 16))(v18, v17, v20);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v2[11];
  v26 = v2[9];
  if (v24)
  {
    buf = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    *buf = 136315138;
    sub_1000F5AA0();
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v16(v25, v26);
    v30 = sub_1000C3440(v27, v29, &v45);

    *(buf + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Loading sync cache from URL %s", buf, 0xCu);
    sub_1000C5604(v44);
  }

  else
  {

    v16(v25, v26);
  }

  v31 = Data.init(contentsOf:options:)();
  v33 = v32;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000F5CE0();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v37 = v2[7];
  sub_1000C4AA4(v31, v33);

  v38 = v2[3];
  v39 = v2[4];
  v40 = *(v3 + 112);
  v41 = *(v37 + 120);
  v42 = *(v3 + 128);
  *(v3 + 112) = v2[2];
  *(v37 + 120) = v38;
  *(v3 + 128) = v39;
  sub_1000F59C0(v40, v41, v42);
  v34 = swift_task_alloc();
  v2[18] = v34;
  *v34 = v2;
  v34[1] = sub_1000F2864;
  v35 = v2[6];
  v36 = v2[5];

  return sub_1000F42C4(v36, v35, 0);
}

uint64_t sub_1000F2864(char a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1000F297C, v2, 0);
}

uint64_t sub_1000F297C(uint64_t a1)
{
  if (*(v1 + 152))
  {
    v2 = *(v1 + 120);
    v3 = *(v1 + 112);
    v4 = *(v1 + 72);
    v2(*(v1 + 104), v4);
    v2(v3, v4);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v1 + 120);
    v10 = *(v1 + 104);
    v9 = *(v1 + 112);
    v11 = *(v1 + 72);
    if (v7)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Sync cache initialized", v12, 2u);
    }

    v8(v10, v11);
    v8(v9, v11);
  }

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_1000F2ADC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000BB0C(v3, qword_1001D8978);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Missing peer IRK data", v6, 2u);
    }

LABEL_15:
    v14 = 0;
    return v14 & 1;
  }

  v9 = v2[16];
  if (!v9)
  {
    sub_1000C61D4(a1, a2);
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000BB0C(v15, qword_1001D8978);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing cached sync info", v18, 2u);
    }

    sub_1000C5928(a1, a2);

    goto LABEL_15;
  }

  v10 = v2[14];
  v11 = v2[15];
  swift_beginAccess();
  v12 = v2[17];
  sub_1000C66E4(a1, a2);
  sub_1000F5980(v10, v11, v9);

  v13 = sub_1000F2D78(a1, a2, v12);

  if (v13)
  {
    sub_1000C5928(a1, a2);
    sub_1000F59C0(v10, v11, v9);
    v14 = 1;
  }

  else
  {
    v14 = sub_1000F2D78(a1, a2, v9);
    sub_1000F59C0(v10, v11, v9);
    sub_1000C5928(a1, a2);
  }

  return v14 & 1;
}

uint64_t sub_1000F2D78(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    Hasher.init(_seed:)();
    Data.hash(into:)();
    v6 = Hasher._finalize()();
    v7 = a3 + 56;
    v8 = -1 << *(a3 + 32);
    v9 = v6 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      if (a1)
      {
        v11 = 0;
      }

      else
      {
        v11 = a2 == 0xC000000000000000;
      }

      v12 = !v11;
      v42 = v12;
      v13 = a2 >> 62;
      v14 = __OFSUB__(HIDWORD(a1), a1);
      v39 = v14;
      v37 = a2;
      v38 = HIDWORD(a1) - a1;
      v40 = v10;
      v41 = BYTE6(a2);
      v36 = a1;
      while (1)
      {
        v15 = (*(a3 + 48) + 16 * v9);
        v17 = *v15;
        v16 = v15[1];
        v18 = v16 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v18 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_37;
          }

          v24 = *(v17 + 16);
          v23 = *(v17 + 24);
          v25 = __OFSUB__(v23, v24);
          v22 = v23 - v24;
          if (v25)
          {
            goto LABEL_67;
          }

          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v18)
        {
          LODWORD(v22) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_68;
          }

          v22 = v22;
          if (v13 <= 1)
          {
LABEL_34:
            v26 = v41;
            if (v13)
            {
              v26 = v38;
              if (v39)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v22 = BYTE6(v16);
          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v13 != 2)
        {
          if (!v22)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        v25 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v25)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
        }

LABEL_40:
        if (v22 == v26)
        {
          if (v22 < 1)
          {
            return 1;
          }

          if (v18 <= 1)
          {
            if (!v18)
            {
              *v44 = v17;
              *&v44[8] = v16;
              v44[10] = BYTE2(v16);
              v44[11] = BYTE3(v16);
              v44[12] = BYTE4(v16);
              v44[13] = BYTE5(v16);
              sub_1000C61D4(v17, v16);
              sub_1000CB48C(v44, a1, a2, v43);
              sub_1000C4AA4(v17, v16);
              if (v43[0])
              {
                return 1;
              }

LABEL_61:
              v10 = v40;
              goto LABEL_14;
            }

            if (v17 >> 32 < v17)
            {
              goto LABEL_69;
            }

            sub_1000C61D4(v17, v16);
            v31 = __DataStorage._bytes.getter();
            if (v31)
            {
              v33 = __DataStorage._offset.getter();
              if (__OFSUB__(v17, v33))
              {
                goto LABEL_72;
              }

              v31 += v17 - v33;
            }

LABEL_59:
            __DataStorage._length.getter();
            v34 = v31;
            a1 = v36;
            a2 = v37;
            sub_1000CB48C(v34, v36, v37, v44);
            sub_1000C4AA4(v17, v16);
            if (v44[0])
            {
              return 1;
            }

            v7 = a3 + 56;
            goto LABEL_61;
          }

          if (v18 == 2)
          {
            v30 = *(v17 + 16);
            v29 = *(v17 + 24);
            sub_1000C61D4(v17, v16);
            v31 = __DataStorage._bytes.getter();
            if (v31)
            {
              v32 = __DataStorage._offset.getter();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_71;
              }

              v31 += v30 - v32;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v44[6] = 0;
          *v44 = 0;
          sub_1000C61D4(v17, v16);
          sub_1000CB48C(v44, a1, a2, v43);
          sub_1000C4AA4(v17, v16);
          if (v43[0])
          {
            return 1;
          }
        }

LABEL_14:
        v9 = (v9 + 1) & v10;
        if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          return 0;
        }
      }

      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v13 < 3;
      if (((v21 | v42) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v13 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

void sub_1000F319C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000BB0C(v2, qword_1001D8978);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Missing peer IRK data", v4, 2u);
    }
  }

  else
  {
    sub_1000C61D4(a1, a2);
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000BB0C(v7, qword_1001D8978);
    sub_1000C61D4(a1, a2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    sub_1000C5928(a1, a2);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = v11;
      *v10 = 136315138;
      v12 = sub_1000CC910(a1, a2);
      v14 = sub_1000C3440(v12, v13, v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Staging verified known peer IRK %s", v10, 0xCu);
      sub_1000C5604(v11);
    }

    swift_beginAccess();
    sub_1000C61D4(a1, a2);
    sub_1000F482C(v17, a1, a2);
    swift_endAccess();
    sub_1000C5928(a1, a2);
    sub_1000C4AA4(v17[0], v17[1]);
  }
}

uint64_t sub_1000F3458(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 128) = a1;
  sub_1000C4810(&qword_1001D5780, &qword_10014B508);
  *(v2 + 72) = swift_task_alloc();
  v3 = type metadata accessor for URL();
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1000F3578, v1, 0);
}

uint64_t sub_1000F3578(uint64_t a1, uint64_t a2)
{
  v69 = v2;
  v3 = *(v2 + 64);
  v4 = v3[16];
  if (v4)
  {
    v6 = v3[14];
    v5 = v3[15];
    v7 = *(v2 + 80);
    v8 = *(v2 + 88);
    v9 = *(v2 + 72);
    sub_1000F5A00(0, a2);
    sub_1000C61D4(v6, v5);

    sub_1000CEBE4(v9);
    if ((*(v8 + 48))(v9, 1, v7) == 1)
    {
      sub_1000C59E0(*(v2 + 72), &qword_1001D5780, &qword_10014B508);
      if (qword_1001D8970 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000BB0C(v10, qword_1001D8978);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Missing protected container", v13, 2u);
      }

      sub_1000F59C0(v6, v5, v4);
    }

    else
    {
      v18 = *(v2 + 64);
      v19 = *(v2 + 128);
      (*(*(v2 + 88) + 32))(*(v2 + 120), *(v2 + 72), *(v2 + 80));
      swift_beginAccess();
      if (*(*(v18 + 136) + 16))
      {
        v20 = 0;
      }

      else
      {
        v20 = v19 == 0;
      }

      if (v20)
      {
        if (qword_1001D8970 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_10000BB0C(v25, qword_1001D8978);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        v28 = os_log_type_enabled(v26, v27);
        v29 = *(v2 + 120);
        v30 = *(v2 + 80);
        v31 = *(v2 + 88);
        if (v28)
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "No staged changes, skipping cache store", v32, 2u);

          sub_1000F59C0(v6, v5, v4);
        }

        else
        {
          sub_1000F59C0(v6, v5, v4);
        }

        (*(v31 + 8))(v29, v30);
      }

      else
      {
        if (qword_1001D8970 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_10000BB0C(v21, qword_1001D8978);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        v66 = v5;
        v67 = v6;
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 134217984;
          *(v24 + 4) = *(*(v18 + 136) + 16);

          _os_log_impl(&_mh_execute_header, v22, v23, "Updating sync cache with %ld additions", v24, 0xCu);
        }

        else
        {
        }

        v33 = *(v2 + 112);
        v34 = *(v2 + 104);
        v62 = v18;
        v63 = *(v2 + 96);
        v36 = *(v2 + 80);
        v35 = *(v2 + 88);
        v37 = *(v18 + 136);
        sub_1000C61D4(v67, v66);

        v65 = sub_1000F3E84(v38, v37);
        URL.appendingPathComponent(_:)();
        URL.appendingPathExtension(_:)();
        v39 = *(v35 + 8);
        v39(v34, v36);
        (*(v35 + 16))(v63, v33, v36);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        v42 = os_log_type_enabled(v40, v41);
        v43 = *(v2 + 96);
        v44 = *(v2 + 80);
        if (v42)
        {
          v45 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v68 = v64;
          *v45 = 136315138;
          sub_1000F5AA0();
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v61 = v41;
          v48 = v47;
          v39(v43, v44);
          v49 = sub_1000C3440(v46, v48, &v68);

          *(v45 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v40, v61, "Storing sync cache to URL %s", v45, 0xCu);
          sub_1000C5604(v64);
        }

        else
        {

          v39(v43, v44);
        }

        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        *(v2 + 40) = v67;
        *(v2 + 48) = v66;
        *(v2 + 56) = v65;
        sub_1000F5A4C();
        v50 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v52 = v51;

        Data.write(to:options:)();
        v55 = *(v2 + 112);
        v56 = *(v2 + 120);
        v57 = *(v2 + 80);
        sub_1000C4AA4(v50, v52);
        sub_1000F59C0(v67, v66, v4);
        v39(v55, v57);
        v39(v56, v57);
        v58 = v3[14];
        v59 = v3[15];
        v60 = v3[16];
        v3[14] = v67;
        v3[15] = v66;
        v3[16] = v65;
        sub_1000F59C0(v58, v59, v60);
        *(v62 + 136) = &_swiftEmptySetSingleton;
      }
    }
  }

  else
  {
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000BB0C(v14, qword_1001D8978);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing cached sync info", v17, 2u);
    }
  }

  v53 = *(v2 + 8);

  return v53();
}

uint64_t sub_1000F3E84(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1000C4AA4(v14[0], v14[1]))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_1000C61D4(*v11, v13);
    sub_1000F482C(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F3F8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000F3FB0, v2, 0);
}

uint64_t sub_1000F3FB0()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_1001D8970 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000BB0C(v2, qword_1001D8978);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Missing self IRK", v5, 2u);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_1000C61D4(v0[2], v1);
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_1000F4154;
    v9 = v0[3];
    v10 = v0[2];

    return sub_1000F42C4(v10, v9, 0);
  }
}

uint64_t sub_1000F4154()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1000F4264, v1, 0);
}

uint64_t sub_1000F4264()
{
  sub_1000C5928(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000F42C4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 72) = a3;
  *(v4 + 40) = a1;
  return _swift_task_switch(sub_1000F42EC, v3, 0);
}

uint64_t sub_1000F42EC()
{
  v1 = *(v0 + 56);
  if (v1[16])
  {
    v3 = v1[14];
    v2 = v1[15];
    sub_1000C61D4(v3, v2);
    if (v2 >> 60 != 15)
    {
      v4 = *(v0 + 48);
      if (v4 >> 60 != 15)
      {
        v5 = *(v0 + 40);
        sub_1000C61D4(v5, *(v0 + 48));
        sub_1000C66E4(v3, v2);
        v6 = sub_1000CB904(v3, v2, v5, v4);
        sub_1000C5928(v3, v2);
        sub_1000C5928(v5, v4);
        sub_1000C5928(v3, v2);
        v7 = !v6;
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    v2 = 0xF000000000000000;
  }

  v4 = *(v0 + 48);
  if (v4 >> 60 == 15)
  {
    sub_1000C61D4(*(v0 + 40), *(v0 + 48));
    sub_1000C5928(v3, v2);
    v7 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v8 = *(v0 + 40);
  sub_1000C61D4(v8, v4);
  sub_1000C5928(v3, v2);
  sub_1000C5928(v8, v4);
  v7 = 1;
LABEL_9:
  v9 = v1[16];
  if (v9)
  {
    if ((v7 | *(v0 + 72)))
    {
LABEL_11:
      if (qword_1001D8970 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000BB0C(v10, qword_1001D8978);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 72);
        v14 = swift_slowAlloc();
        *v14 = 67109632;
        *(v14 + 4) = v7 & 1;
        *(v14 + 8) = 1024;
        *(v14 + 10) = v9 == 0;
        *(v14 + 14) = 1024;
        *(v14 + 16) = v13;
        _os_log_impl(&_mh_execute_header, v11, v12, "Clearing cached info - selfIdentityChange: %{BOOL}d cacheEmpty: %{BOOL}d force: %{BOOL}d", v14, 0x14u);
      }

      v15 = *(v0 + 48);
      v16 = *(v0 + 56);
      v17 = *(v0 + 40);

      v18 = v1[14];
      v19 = *(v16 + 120);
      v20 = v1[16];
      v1[14] = v17;
      *(v16 + 120) = v15;
      v1[16] = &_swiftEmptySetSingleton;
      sub_1000C61D4(v17, v15);
      sub_1000F59C0(v18, v19, v20);
      swift_beginAccess();
      *(v16 + 136) = &_swiftEmptySetSingleton;

      v21 = swift_task_alloc();
      *(v0 + 64) = v21;
      *v21 = v0;
      v21[1] = sub_1000F4634;

      return sub_1000F3458(1);
    }
  }

  else if (*(v0 + 72))
  {
    goto LABEL_11;
  }

  v23 = *(v0 + 8);

  return v23(0);
}

uint64_t sub_1000F4634()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(1);
}

id sub_1000F472C()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  v1[15] = 0;
  v1[16] = 0;
  v1[17] = &_swiftEmptySetSingleton;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_1000F47E8()
{
  sub_1000F59C0(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000F482C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_1000C61D4(a2, a3);
    sub_1000F4F14(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_1000C61D4(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_1000C61D4(v18, v17);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_1000C61D4(v18, v17);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v44;
    sub_1000CB48C(v32, a2, v44, v50);
    sub_1000C4AA4(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_1000C61D4(v18, v17);
LABEL_60:
  sub_1000CB48C(v50, a2, a3, &v49);
  sub_1000C4AA4(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_1000C4AA4(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_1000C61D4(v39, *(&v39 + 1));
  return 0;
}

Swift::Int sub_1000F4CB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000C4810(&qword_1001D57C8, &qword_10014B778);
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
      Data.hash(into:)();
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

Swift::Int sub_1000F4F14(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1000F4CB4(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_1000F538C();
        goto LABEL_68;
      }

      sub_1000F54E8(v8 + 1);
    }

    v10 = *v4;
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v11 = v10 + 56;
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2 == 0xC000000000000000;
      }

      v15 = !v14;
      v48 = v15;
      v16 = a2 >> 62;
      v17 = __OFSUB__(HIDWORD(v7), v7);
      v45 = v17;
      v44 = HIDWORD(v7) - v7;
      v46 = v13;
      v47 = BYTE6(a2);
      v41 = v7;
      v42 = a2;
      while (1)
      {
        v18 = (*(v10 + 48) + 16 * a3);
        v20 = *v18;
        v19 = v18[1];
        v21 = v19 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_32;
          }

          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          v29 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v29)
          {
            goto LABEL_73;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_74;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v19);
        }

LABEL_33:
        if (v16 > 1)
        {
          if (v16 != 2)
          {
            if (!v25)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v28 = *(v7 + 16);
          v27 = *(v7 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v26 = v47;
          if (v16)
          {
            v26 = v44;
            if (v45)
            {
              goto LABEL_71;
            }
          }
        }

        if (v25 == v26)
        {
          if (v25 < 1)
          {
            goto LABEL_67;
          }

          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v33 = *(v20 + 16);
              v32 = *(v20 + 24);
              sub_1000C61D4(v20, v19);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v35 = __DataStorage._offset.getter();
                if (__OFSUB__(v33, v35))
                {
                  goto LABEL_77;
                }

                v34 += v33 - v35;
              }

              if (__OFSUB__(v32, v33))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v50[6] = 0;
            *v50 = 0;
            sub_1000C61D4(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              sub_1000C61D4(v20, v19);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v20, v36))
                {
                  goto LABEL_78;
                }

                v34 += v20 - v36;
              }

LABEL_63:
              __DataStorage._length.getter();
              v7 = v41;
              a2 = v42;
              sub_1000CB48C(v34, v41, v42, v50);
              result = sub_1000C4AA4(v20, v19);
              v11 = v10 + 56;
              v13 = v46;
              if (v50[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v50 = v20;
            *&v50[8] = v19;
            v50[10] = BYTE2(v19);
            v50[11] = BYTE3(v19);
            v50[12] = BYTE4(v19);
            v50[13] = BYTE5(v19);
            sub_1000C61D4(v20, v19);
            v13 = v46;
          }

          sub_1000CB48C(v50, v7, a2, &v49);
          result = sub_1000C4AA4(v20, v19);
          if (v49)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v13;
        if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v48) & 1) == 0)
      {
LABEL_67:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v37 = *v43;
  *(*v43 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v38 = (*(v37 + 48) + 16 * a3);
  *v38 = v7;
  v38[1] = a2;
  v39 = *(v37 + 16);
  v29 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (v29)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v37 + 16) = v40;
  return result;
}

void *sub_1000F538C()
{
  v1 = v0;
  sub_1000C4810(&qword_1001D57C8, &qword_10014B778);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1000C61D4(v18, *(&v18 + 1));
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

Swift::Int sub_1000F54E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000C4810(&qword_1001D57C8, &qword_10014B778);
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
      sub_1000C61D4(v18, v19);
      Data.hash(into:)();
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

uint64_t sub_1000F5724(void *a1)
{
  v3 = sub_1000C4810(&qword_1001D57D8, &unk_10014B780);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = a1[3];
  sub_1000CE97C(a1, v7);
  sub_1000F1D84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1000C5604(a1);
  }

  else
  {
    v11 = 0;
    sub_1000C9F00();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    v9 = v13;
    sub_1000C4810(&qword_1001D5770, &qword_10014B4E8);
    v11 = 1;
    sub_1000F5D34(&qword_1001D57E0, sub_1000C9F00, &protocol conformance descriptor for <> Set<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_1000C61D4(v7, v9);

    sub_1000C5604(a1);
    sub_1000C4AA4(v7, v9);
  }

  return v7;
}

double sub_1000F5980(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000C61D4(a1, a2);
  }

  return result;
}

uint64_t sub_1000F59C0(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000C4AA4(result, a2);
  }

  return result;
}

unint64_t sub_1000F5A00(uint64_t a1, uint64_t a2)
{
  result = qword_1001D5788;
  if (!qword_1001D5788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001D5788);
  }

  return result;
}

unint64_t sub_1000F5A4C()
{
  result = qword_1001D5790;
  if (!qword_1001D5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5790);
  }

  return result;
}

unint64_t sub_1000F5AA0()
{
  result = qword_1001D5798;
  if (!qword_1001D5798)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5798);
  }

  return result;
}

__n128 sub_1000F5B1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000F5B30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000F5B78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000F5BDC()
{
  result = qword_1001D8C20[0];
  if (!qword_1001D8C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8C20);
  }

  return result;
}

unint64_t sub_1000F5C34()
{
  result = qword_1001D8D30;
  if (!qword_1001D8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8D30);
  }

  return result;
}

unint64_t sub_1000F5C8C()
{
  result = qword_1001D8D38[0];
  if (!qword_1001D8D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8D38);
  }

  return result;
}

unint64_t sub_1000F5CE0()
{
  result = qword_1001D57D0;
  if (!qword_1001D57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D57D0);
  }

  return result;
}

uint64_t sub_1000F5D34(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000C6A0C(&qword_1001D5770, &qword_10014B4E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F5DB0()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x65636976726573;
  }
}

uint64_t sub_1000F5DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
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

uint64_t sub_1000F5EC0(uint64_t a1)
{
  v2 = sub_1000FDA74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F5EFC(uint64_t a1)
{
  v2 = sub_1000FDA74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F5F38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = sub_1000C4810(&qword_1001D57E8, &qword_10014B7A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_1000CE97C(a1, a1[3]);
  sub_1000FDA74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    sub_1000C66E4(v12, v13);
    sub_1000C9F54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000C5928(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000F60D4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000FDAC8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000F6140()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D8DC8);
  sub_10000BB0C(v0, qword_1001D8DC8);
  return Logger.init(subsystem:category:)();
}

id sub_1000F61C0(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(type metadata accessor for RPApplicationServiceMonitor(a1 a2))];
  qword_1001DA6D8 = result;
  return result;
}

uint64_t *sub_1000F61F0()
{
  if (qword_1001D8DE0 != -1)
  {
    swift_once();
  }

  return &qword_1001DA6D8;
}

uint64_t sub_1000F6240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_changeHandlers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + v11);
  *(a1 + v11) = 0x8000000000000000;
  sub_1000FD3AC(sub_1000FEDAC, v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v11) = v14;
  return swift_endAccess();
}

uint64_t sub_1000F6418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_changeHandlers;
  swift_beginAccess();

  v7 = sub_1000C39E8(a2, a3);
  v9 = v8;

  if (v9)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + v6);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000FD534();
    }

    sub_1000FD1FC(v7, v11);
    *(a1 + v6) = v11;
  }

  return swift_endAccess();
}

uint64_t sub_1000F65A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1000FDD44(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1000F6620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, BOOL *a6@<X8>)
{
  v12 = OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_servicesByDeviceID;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (*(v13 + 16) && (v14 = sub_1000C39E8(a2, a3), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    result = swift_endAccess();
    v18 = *(v16 + 16);
    v19 = (v16 + 40);
    v20 = v18 + 1;
    do
    {
      v21 = --v20 != 0;
      if (!v20)
      {
        break;
      }

      result = *(v19 - 1);
      if (result == a4 && *v19 == a5)
      {
        break;
      }

      v19 += 4;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    while ((result & 1) == 0);
  }

  else
  {
    result = swift_endAccess();
    v21 = 0;
  }

  *a6 = v21;
  return result;
}

void sub_1000F67DC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = ObjectType;
  v7 = v0;
  *&v7[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask] = sub_1000C1E34(0, 0, v4, &unk_10014B7C0, v6);

  out_token = 0;
  DiscoverableApplicationServiceChangedNotification.getter();
  sub_1000C5AF8(0, &qword_1001D54F0, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000FDDF0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000F6B68;
  aBlock[3] = &unk_1001B0C98;
  v10 = _Block_copy(aBlock);

  v11 = String.utf8CString.getter();

  notify_register_dispatch((v11 + 32), &out_token, v8, v10);

  _Block_release(v10);
}

uint64_t sub_1000F6A40()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = ObjectType;
  v7 = v0;
  *&v7[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask] = sub_1000C1E34(0, 0, v4, &unk_10014B7C8, v6);
}

uint64_t sub_1000F6B68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1000F6C04()
{
  if (*(v0 + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask))
  {

    Task.cancel()();
  }

  if (*(v0 + OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_observationTask))
  {

    Task.cancel()();
  }
}

uint64_t sub_1000F6D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for LSKStatusOptions.DeviceType();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for NWBrowser.Descriptor.Options.DeviceType();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = type metadata accessor for DiscoverableApplicationServiceCoder.ExtensionConfiguration();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000F6E94, 0, 0);
}

uint64_t sub_1000F6E94()
{
  if (qword_1001D8DC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_10000BB0C(v1, qword_1001D8DC8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Querying for extensions", v4, 2u);
  }

  v5 = v0[9];

  v6 = type metadata accessor for _AppExtensionQuery();
  v0[22] = v6;
  v0[23] = *(v6 - 8);
  v0[24] = swift_task_alloc();
  _AppExtensionQuery.init(extensionPointIdentifier:)();
  v7 = type metadata accessor for _AppExtensionQuery.Results();
  v0[25] = v7;
  v0[26] = *(v7 - 8);
  v8 = swift_task_alloc();
  v0[27] = v8;
  _AppExtensionQuery.results.getter();
  sub_1000C4810(&qword_1001D5868, &qword_10014BB58);
  v9 = swift_task_alloc();
  v0[28] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_1000F7138;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 6);
}

uint64_t sub_1000F7138()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1000F7D60;
  }

  else
  {
    v2 = sub_1000F7268;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F7268()
{
  v1 = v0[6];
  type metadata accessor for LSKLocalStatusClient();
  swift_allocObject();
  v2 = LSKLocalStatusClient.init()();
  v0[8] = &_swiftEmptyDictionarySingleton;
  v70 = v2;
  v0[31] = v2;
  v3 = *(v1 + 16);
  v82 = v0 + 8;
  if (!v3)
  {

    v4 = 0;
LABEL_38:
    v0[32] = v4;
    v67 = v0[9];
    v68 = swift_task_alloc();
    v0[33] = v68;
    v68[2] = v82;
    v68[3] = v67;
    v68[4] = v70;
    v2 = swift_task_alloc();
    v0[34] = v2;
    *v2 = v0;
    v2[1] = sub_1000F7B40;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v2);
  }

  v4 = 0;
  v5 = 0;
  v69 = (v0 + 2);
  v6 = v0[19];
  v78 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v7 = v0[11];
  v80 = (v0[15] + 8);
  v75 = enum case for LSKStatusOptions.DeviceType.mac(_:);
  v74 = (v7 + 104);
  v89 = v7;
  v81 = (v7 + 8);
  v76 = (v6 + 8);
  v90 = v0;
  v72 = *(v1 + 16);
  v73 = v1;
  v71 = v6;
  while (1)
  {
    if (v5 >= *(v1 + 16))
    {
LABEL_45:
      __break(1u);
      return withTaskGroup<A, B>(of:returning:isolation:body:)(v2);
    }

    v11 = v0[16];
    v12 = v0[14];
    (*(v6 + 16))(v0[20], v78 + *(v6 + 72) * v5, v0[18]);
    DiscoverableApplicationServiceCoder.ExtensionConfiguration.deviceTypes.getter();
    NWBrowser.Descriptor.Options.DeviceType.init(rawValue:)();
    static NWBrowser.Descriptor.Options.DeviceType.mac.getter();
    sub_1000FE8AC(&qword_1001D5870, &type metadata accessor for NWBrowser.Descriptor.Options.DeviceType, &protocol conformance descriptor for NWBrowser.Descriptor.Options.DeviceType);
    v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v79 = *v80;
    (*v80)(v11, v12);
    v14 = _swiftEmptyArrayStorage;
    if (v13)
    {
      (*v74)(v0[13], v75, v0[10]);
      v14 = sub_1000FC98C(0, 1, 1, _swiftEmptyArrayStorage, &qword_1001D5878, &qword_10014BB88, &type metadata accessor for LSKStatusOptions.DeviceType);
      v16 = v14[2];
      v15 = v14[3];
      if (v16 >= v15 >> 1)
      {
        v14 = sub_1000FC98C((v15 > 1), v16 + 1, 1, v14, &qword_1001D5878, &qword_10014BB88, &type metadata accessor for LSKStatusOptions.DeviceType);
      }

      v0 = v90;
      v17 = v90[13];
      v18 = v90[10];
      v14[2] = v16 + 1;
      (*(v89 + 32))(v14 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v16, v17, v18);
    }

    v19 = v0[20];
    v87 = v14[2];
    if (v87)
    {
      break;
    }

    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[14];

    v79(v9, v10);
    v2 = (*v76)(v19, v8);
LABEL_4:
    if (++v5 == v3)
    {

      goto LABEL_38;
    }
  }

  v77 = v5;
  v84 = DiscoverableApplicationServiceCoder.ExtensionConfiguration.service.getter();
  v21 = v20;
  v2 = DiscoverableApplicationServiceCoder.ExtensionConfiguration.payload.getter();
  v22 = v2;
  v24 = v23;
  v25 = 0;
  v86 = v14 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
  v26 = v0;
  v83 = v14;
  while (1)
  {
    if (v25 >= v14[2])
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v27 = v24;
    v28 = v26[12];
    v29 = *(v89 + 72);
    v30 = *(v89 + 16);
    v30(v28, &v86[v29 * v25], v26[10]);
    sub_1000134D4(v4, 0);
    v31 = v26[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v31;
    v34 = sub_1000FC628(v28);
    v35 = v31[2];
    v36 = (v33 & 1) == 0;
    v2 = (v35 + v36);
    if (__OFADD__(v35, v36))
    {
      goto LABEL_43;
    }

    v37 = v33;
    if (v31[3] < v2)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      *v82 = v31;
      if ((v33 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1000FD6B4();
      v31 = v92;
      *v82 = v92;
      if ((v37 & 1) == 0)
      {
LABEL_20:
        v41 = v90[12];
        v42 = v90[10];
        v31[(v34 >> 6) + 8] |= 1 << v34;
        v2 = v30(v31[6] + v34 * v29, v41, v42);
        *(v31[7] + 8 * v34) = _swiftEmptyArrayStorage;
        v43 = v31[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_44;
        }

        v31[2] = v45;
      }
    }

LABEL_22:
    v46 = v31[7];
    v47 = *(v46 + 8 * v34);

    v24 = v27;
    sub_1000C66E4(v22, v27);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    *(v46 + 8 * v34) = v47;
    if ((v48 & 1) == 0)
    {
      v47 = sub_1000FC880(0, *(v47 + 2) + 1, 1, v47);
      *(v46 + 8 * v34) = v47;
    }

    v50 = *(v47 + 2);
    v49 = *(v47 + 3);
    if (v50 >= v49 >> 1)
    {
      *(v46 + 8 * v34) = sub_1000FC880((v49 > 1), v50 + 1, 1, v47);
    }

    ++v25;
    v26 = v90;
    v2 = (*v81)(v90[12], v90[10]);
    v51 = *(v46 + 8 * v34);
    *(v51 + 16) = v50 + 1;
    v52 = (v51 + 32 * v50);
    v14 = v83;
    v52[4] = v84;
    v52[5] = v21;
    v52[6] = v22;
    v52[7] = v27;
    v4 = sub_1000FA250;
    if (v87 == v25)
    {

      sub_1000C66E4(v22, v27);
      v0 = v90;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      sub_1000C5928(v22, v24);
      v55 = os_log_type_enabled(v53, v54);
      v56 = v90[20];
      v57 = v90[17];
      v58 = v90[18];
      v59 = v90[14];
      if (v55)
      {
        v60 = v54;
        v61 = swift_slowAlloc();
        v88 = v58;
        v62 = swift_slowAlloc();
        v92 = v62;
        *v61 = 136315138;
        v90[2] = v84;
        v90[3] = v21;
        v90[4] = v22;
        v90[5] = v24;
        v63 = sub_1000DC030(v69, &type metadata for ServiceDefinition);
        v85 = v59;
        v65 = sub_1000C3440(v63, v64, &v92);

        *(v61 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v53, v60, "Adding service definition: %s", v61, 0xCu);
        sub_1000C5604(v62);
        v0 = v90;

        sub_1000C5928(v22, v24);
        v79(v57, v85);
        v2 = (*v76)(v56, v88);
      }

      else
      {

        sub_1000C5928(v22, v24);
        v79(v57, v59);
        v2 = (*v76)(v56, v58);
      }

      v4 = sub_1000FA250;
      v3 = v72;
      v1 = v73;
      v5 = v77;
      v6 = v71;
      goto LABEL_4;
    }
  }

  v38 = v90[12];
  sub_1000FCE20(v2, isUniquelyReferenced_nonNull_native);
  v31 = v92;
  v39 = sub_1000FC628(v38);
  if ((v37 & 1) == (v40 & 1))
  {
    v34 = v39;
    *v82 = v31;
    if ((v37 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1000F7B40()
{

  return _swift_task_switch(sub_1000F7C58, 0, 0);
}

uint64_t sub_1000F7C58()
{
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];

  (*(v7 + 8))(v5, v6);

  (*(v3 + 8))(v2, v4);
  sub_1000134D4(v1, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000F7D60()
{
  v16 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v2 + 8))(v1, v3);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v0[7] = v6;
    v9 = sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    v10 = sub_1000DC030((v0 + 7), v9);
    v12 = sub_1000C3440(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed: %s", v7, 0xCu);
    sub_1000C5604(v8);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000F7F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  sub_1000C4810(&qword_1001D5900, &qword_10014BBF8);
  v4[15] = swift_task_alloc();
  v5 = type metadata accessor for DiscoverableApplicationServiceCoder.ExtensionConfiguration();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = sub_1000C4810(&qword_1001D5908, &qword_10014BC00);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8118, 0, 0);
}

uint64_t sub_1000F8118()
{
  v1 = type metadata accessor for _AppExtensionQuery.Results.AsyncIterator();
  v0[25] = v1;
  v0[26] = *(v1 - 8);
  v0[27] = swift_task_alloc();
  _AppExtensionQuery.Results.makeAsyncIterator()();
  v2 = sub_1000FE8F4();
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1000F8240;

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 9, v1, v2);
}

uint64_t sub_1000F8240()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1000F89DC;
  }

  else
  {
    v2 = sub_1000F8354;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F8378()
{
  v56 = v0;
  v1 = v0;
  v2 = *(v0 + 240);
  if (v2)
  {
    if (qword_1001D8DC0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000BB0C(v3, qword_1001D8DC8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v55 = v7;
      *v6 = 136315138;
      type metadata accessor for _AppExtensionIdentity();
      v8 = Array.description.getter();
      v10 = sub_1000C3440(v8, v9, &v55);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received extensions: %s", v6, 0xCu);
      sub_1000C5604(v7);
    }

    v11 = *(type metadata accessor for _AppExtensionIdentity() - 8);
    v49 = swift_task_alloc();
    v12 = *(v2 + 16);
    if (v12)
    {
      v14 = *(v11 + 16);
      v13 = v11 + 16;
      v47 = v14;
      v48 = **(v1 + 96);
      v15 = v2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v45 = (v1 + 16);
      v46 = *(v13 + 56);
      do
      {
        v54 = v12;
        v18 = *(v1 + 192);
        v50 = v18;
        v51 = *(v1 + 184);
        v19 = *(v1 + 112);
        v53 = v15;
        v47(v49);
        v20 = type metadata accessor for AppExtensionIdentity();
        v21 = *(v20 - 8);
        v22 = swift_task_alloc();
        AppExtensionIdentity.init(_:)();
        v23 = type metadata accessor for TaskPriority();
        v24 = *(v23 - 8);
        (*(v24 + 56))(v18, 1, 1, v23);
        v25 = swift_task_alloc();
        v52 = v22;
        (*(v21 + 16))(v25, v22, v20);
        v26 = v1;
        v27 = (*(v21 + 80) + 40) & ~*(v21 + 80);
        v28 = swift_allocObject();
        v28[2] = 0;
        v29 = v28 + 2;
        v28[3] = 0;
        v28[4] = v19;
        v30 = v28 + v27;
        v1 = v26;
        v31 = v20;
        (*(v21 + 32))(v30, v25, v20);

        sub_1000C8770(v50, v51);
        LODWORD(v25) = (*(v24 + 48))(v51, 1, v23);
        v32 = v19;
        v33 = *(v1 + 184);
        if (v25 == 1)
        {
          sub_1000C59E0(*(v1 + 184), &qword_1001D4F68, &qword_100149690);
          if (!*v29)
          {
            goto LABEL_14;
          }
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v24 + 8))(v33, v23);
          if (!*v29)
          {
LABEL_14:
            v34 = 0;
            v36 = 0;
            goto LABEL_15;
          }
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        v34 = dispatch thunk of Actor.unownedExecutor.getter();
        v36 = v35;
        swift_unknownObjectRelease();
LABEL_15:

        if (v36 | v34)
        {
          v16 = v45;
          *v45 = 0;
          v45[1] = 0;
          *(v1 + 32) = v34;
          *(v1 + 40) = v36;
        }

        else
        {
          v16 = 0;
        }

        v17 = *(v1 + 192);
        *(v1 + 48) = 1;
        *(v1 + 56) = v16;
        *(v1 + 64) = v48;
        swift_task_create();

        sub_1000C59E0(v17, &qword_1001D4F68, &qword_100149690);
        (*(v21 + 8))(v52, v31);

        v15 = v53 + v46;
        v12 = v54 - 1;
      }

      while (v54 != 1);
    }

    v38 = *(v1 + 208);
    v37 = *(v1 + 216);
    v39 = *(v1 + 200);

    (*(v38 + 8))(v37, v39);
  }

  else
  {
    (*(*(v1 + 208) + 8))(*(v1 + 216), *(v1 + 200));
  }

  sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v1 + 248) = _swiftEmptyArrayStorage;
  v40 = sub_1000FE940();
  v41 = swift_task_alloc();
  *(v1 + 256) = v41;
  *v41 = v1;
  v41[1] = sub_1000F8B3C;
  v42 = *(v1 + 160);
  v43 = *(v1 + 120);

  return dispatch thunk of AsyncIteratorProtocol.next()(v43, v42, v40);
}

uint64_t sub_1000F89DC()
{
  *(v0 + 80) = *(v0 + 232);
  sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1000F8A70, 0, 0);
}

uint64_t sub_1000F8A70()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000F8B3C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    (*(v2[21] + 8))(v2[22], v2[20]);

    v3 = sub_1000F8F58;
  }

  else
  {
    v3 = sub_1000F8C74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000F8C74()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[31];
  if (v4 == 1)
  {
    v6 = v0[11];
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_1000C59E0(v3, &qword_1001D5900, &qword_10014BBF8);
    *v6 = v5;

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[18];
    v9 = v0[19];
    v11 = *(v2 + 32);
    v11(v9, v3, v1);
    (*(v2 + 16))(v10, v9, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v0[31];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1000FC98C(0, v13[2] + 1, 1, v0[31], &qword_1001D5960, &qword_10014BC50, &type metadata accessor for DiscoverableApplicationServiceCoder.ExtensionConfiguration);
    }

    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1000FC98C((v14 > 1), v15 + 1, 1, v13, &qword_1001D5960, &qword_10014BC50, &type metadata accessor for DiscoverableApplicationServiceCoder.ExtensionConfiguration);
    }

    v16 = v0[18];
    v17 = v0[16];
    v18 = v0[17];
    (*(v18 + 8))(v0[19], v17);
    v13[2] = v15 + 1;
    v11(v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15, v16, v17);
    v0[31] = v13;
    v19 = sub_1000FE940();
    v20 = swift_task_alloc();
    v0[32] = v20;
    *v20 = v0;
    v20[1] = sub_1000F8B3C;
    v21 = v0[20];
    v22 = v0[15];

    return dispatch thunk of AsyncIteratorProtocol.next()(v22, v21, v19);
  }
}

uint64_t sub_1000F8F58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F9000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1000F90A0;

  return sub_1000F9390(a1, a5);
}

uint64_t sub_1000F90A0()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000F91D4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000F91D4()
{
  v14 = v0;
  if (qword_1001D8DC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BB0C(v1, qword_1001D8DC8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[2] = v4;
    v7 = sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    v8 = sub_1000DC030((v0 + 2), v7);
    v10 = sub_1000C3440(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch extension: %s", v5, 0xCu);
    sub_1000C5604(v6);
  }

  swift_willThrow();
  v11 = v0[1];

  return v11();
}

uint64_t sub_1000F9390(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_1000F93B0, 0, 0);
}

uint64_t sub_1000F93B0()
{
  v30 = v0;
  v1 = v0[7];
  v2 = type metadata accessor for AppExtensionProcess.Configuration();
  v0[8] = v2;
  v28 = *(v2 - 8);
  v0[9] = v28;
  v0[10] = swift_task_alloc();
  v3 = type metadata accessor for AppExtensionIdentity();
  v0[11] = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  v0[12] = v4;
  v0[13] = *(v4 + 64);
  swift_task_alloc();
  v6 = *(v5 + 16);
  v0[14] = v6;
  v0[15] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6();
  v7 = swift_task_alloc();
  v26 = v6;
  (v6)(v7, v1, v3);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v3);
  AppExtensionProcess.Configuration.init(appExtensionIdentity:onInterruption:)();

  if (qword_1001D8DC0 != -1)
  {
    swift_once();
  }

  v10 = v0[7];
  v11 = type metadata accessor for Logger();
  v0[16] = sub_10000BB0C(v11, qword_1001D8DC8);
  v12 = swift_task_alloc();
  (v26)(v12, v10, v3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v15 = 136315138;
    v16 = sub_1000DC030(v12, v3);
    v18 = v17;
    v19 = *(v5 + 8);
    v19(v12, v3);
    v20 = sub_1000C3440(v16, v18, &v29);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Fetching configuration from %s", v15, 0xCu);
    sub_1000C5604(v27);
  }

  else
  {

    v19 = *(v5 + 8);
    v19(v12, v3);
  }

  v0[17] = v19;

  v21 = type metadata accessor for AppExtensionProcess();
  v0[18] = v21;
  v0[19] = *(v21 - 8);
  v22 = swift_task_alloc();
  v0[20] = v22;
  v23 = swift_task_alloc();
  v0[21] = v23;
  (*(v28 + 16))();
  v24 = swift_task_alloc();
  v0[22] = v24;
  *v24 = v0;
  v24[1] = sub_1000F9838;

  return AppExtensionProcess.init(configuration:)(v22, v23);
}

uint64_t sub_1000F9838()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000FA1BC;
  }

  else
  {

    v2 = sub_1000F9954;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F9954()
{
  v1.super.isa = AppExtensionProcess.makeXPCConnection()().super.isa;
  v0[24].super.isa = v1.super.isa;
  if (v2)
  {
    isa = v0[9].super.isa;
    v3 = v0[10].super.isa;
    v5 = v0[8].super.isa;
    (*(v0[19].super.isa + 1))(v0[20].super.isa, v0[18].super.isa);
    (*(isa + 1))(v3, v5);

    v6 = v0[1].super.isa;

    return v6();
  }

  else
  {
    v8 = v1.super.isa;
    v9 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7Network33DiscoverableApplicationServiceXPC_];
    sub_1000C4810(&qword_1001D5938, &qword_10014BC38);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10014B790;
    v11 = sub_1000C5AF8(0, &qword_1001D5940, NSError_ptr);
    *(v10 + 56) = sub_1000C4810(&qword_1001D5948, &qword_10014BC40);
    *(v10 + 32) = v11;
    v12 = sub_1000C5AF8(0, &qword_1001D5950, NSData_ptr);
    *(v10 + 88) = sub_1000C4810(&qword_1001D5958, &qword_10014BC48);
    *(v10 + 64) = v12;
    v13 = objc_allocWithZone(NSSet);
    v14 = Array._bridgeToObjectiveC()().super.isa;

    v15 = [v13 initWithArray:v14];

    static Set._conditionallyBridgeFromObjectiveC(_:result:)();
    [(objc_class *)v8 setRemoteObjectInterface:v9, 0];

    [(objc_class *)v8 resume];
    v16 = swift_task_alloc();
    v0[25].super.isa = v16;
    *(v16 + 16) = v8;
    v17 = swift_task_alloc();
    v0[26].super.isa = v17;
    *v17 = v0;
    *(v17 + 1) = sub_1000F9D04;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[2], 0, 0, 0xD00000000000001ALL, 0x800000010017A0B0, sub_1000FEAE8, v16, &type metadata for Data);
  }
}

uint64_t sub_1000F9D04()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1000FA0E8;
  }

  else
  {

    v2 = sub_1000F9E20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F9E20()
{
  v31 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  [*(v0 + 192) invalidate];
  AppExtensionProcess.invalidate()();
  v6 = swift_task_alloc();
  v1(v6, v3, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v27 = *(v0 + 88);
    v28 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v29 = v4;
    v30 = swift_slowAlloc();
    v10 = v30;
    *v9 = 136315138;
    *(v0 + 32) = AppExtensionIdentity.extensionPointIdentifier.getter();
    *(v0 + 40) = v11;
    v12 = sub_1000DC030(v0 + 32, &type metadata for String);
    v13 = v5;
    v15 = v14;

    v28(v6, v27);
    v16 = sub_1000C3440(v12, v15, &v30);
    v5 = v13;

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received data from %s", v9, 0xCu);
    sub_1000C5604(v10);
    v4 = v29;
  }

  else
  {
    v17 = *(v0 + 136);
    v18 = *(v0 + 88);

    v17(v6, v18);
  }

  static DiscoverableApplicationServiceCoder.createConfiguration(xpcData:)();
  v20 = *(v0 + 152);
  v19 = *(v0 + 160);
  v21 = *(v0 + 144);
  v23 = *(v0 + 72);
  v22 = *(v0 + 80);
  v24 = *(v0 + 64);

  sub_1000C4AA4(v4, v5);
  (*(v20 + 8))(v19, v21);
  (*(v23 + 8))(v22, v24);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1000FA0E8()
{
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000FA1BC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000FA260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v6 = type metadata accessor for LSKStatusOptions.DeviceType();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  sub_1000C4810(&qword_1001D5890, &qword_10014BB98);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000FA3B4, 0, 0);
}

void sub_1000FA3B4()
{
  v47 = (v0 + 16);
  v1 = **(v0 + 80);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(**(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v46 = (63 - v6) >> 6;
  v48 = **(v0 + 80);
  v52 = *(v0 + 128);
  v50 = *(v0 + 136) + 7;

  v8 = 0;
  v51 = v3;
  v49 = v0;
  while (v7)
  {
    v11 = v8;
LABEL_16:
    v15 = *(v0 + 144);
    v14 = *(v0 + 152);
    v16 = *(v0 + 120);
    v17 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = v17 | (v11 << 6);
    (*(v52 + 16))(v15, *(v48 + 48) + *(v52 + 72) * v18, v16);
    v19 = *(*(v48 + 56) + 8 * v18);
    v20 = sub_1000C4810(&qword_1001D5898, &qword_10014BBA0);
    v21 = *(v20 + 48);
    (*(v52 + 32))(v14, v15, v16);
    *(v14 + v21) = v19;
    (*(*(v20 - 8) + 56))(v14, 0, 1, v20);

LABEL_17:
    v22 = *(v0 + 160);
    sub_1000FE500(*(v0 + 152), v22);
    v23 = sub_1000C4810(&qword_1001D5898, &qword_10014BBA0);
    v24 = (*(*(v23 - 8) + 48))(v22, 1, v23);
    v25 = *(v0 + 160);
    v26 = *(v0 + 104);
    v27 = *(v0 + 112);
    if (v24 == 1)
    {

      v45 = *(v0 + 8);

      v45();
      return;
    }

    v28 = *(v0 + 144);
    v29 = *(v0 + 120);
    v53 = v28;
    v56 = *(v0 + 88);
    v57 = *(v25 + *(v23 + 48));
    v58 = *(v0 + 96);
    v30 = type metadata accessor for TaskPriority();
    v55 = *(v30 - 8);
    (*(v55 + 56))(v27, 1, 1, v30);
    v54 = v26;
    v31 = *(v52 + 32);
    v31(v28, v25, v29);
    v32 = v31;
    v33 = (*(v52 + 80) + 40) & ~*(v52 + 80);
    v34 = (v50 + v33) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    *(v35 + 4) = v56;
    v32(&v35[v33], v53, v29);
    *&v35[v34] = v57;
    *&v35[(v34 + 15) & 0xFFFFFFFFFFFFFFF8] = v58;
    sub_1000C8770(v27, v54);
    LODWORD(v32) = (*(v55 + 48))(v54, 1, v30);
    v36 = v56;

    v37 = *(v49 + 104);
    if (v32 == 1)
    {
      sub_1000C59E0(*(v49 + 104), &qword_1001D4F68, &qword_100149690);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v55 + 8))(v37, v30);
    }

    v0 = v49;
    if (*(v35 + 2))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v38 = dispatch thunk of Actor.unownedExecutor.getter();
      v40 = v39;
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v41 = **(v49 + 72);
    v42 = swift_allocObject();
    *(v42 + 16) = &unk_10014BBB0;
    *(v42 + 24) = v35;

    if (v40 | v38)
    {
      v9 = v47;
      *v47 = 0;
      v47[1] = 0;
      *(v49 + 32) = v38;
      *(v49 + 40) = v40;
    }

    else
    {
      v9 = 0;
    }

    v3 = v51;
    v10 = *(v49 + 112);
    *(v49 + 48) = 1;
    *(v49 + 56) = v9;
    *(v49 + 64) = v41;
    swift_task_create();

    sub_1000C59E0(v10, &qword_1001D4F68, &qword_100149690);
  }

  if (v46 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v46;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v46)
    {
      v43 = *(v0 + 152);
      v44 = sub_1000C4810(&qword_1001D5898, &qword_10014BBA0);
      (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
      v7 = 0;
      v8 = v13;
      goto LABEL_17;
    }

    v7 = *(v3 + 8 * v11);
    ++v8;
    if (v7)
    {
      v8 = v11;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1000FA99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[4] = a5;
  sub_1000C4810(&qword_1001D58A0, &qword_10014BBC8);
  v7[7] = swift_task_alloc();
  v8 = sub_1000C4810(&qword_1001D58A8, &qword_10014BBD0);
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = type metadata accessor for LSKStatusOptions.Scope();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v10 = type metadata accessor for LSKStatusOptions();
  v7[14] = v10;
  v7[15] = *(v10 - 8);
  v7[16] = swift_task_alloc();
  v11 = type metadata accessor for LSKDomain();
  v7[17] = v11;
  v7[18] = *(v11 - 8);
  v7[19] = swift_task_alloc();
  v12 = type metadata accessor for LSKStatusOptions.DeviceType();
  v7[20] = v12;
  v7[21] = *(v12 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v13 = sub_1000C4810(&qword_1001D58B0, &qword_10014BBD8);
  v7[27] = v13;
  v7[28] = *(v13 - 8);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000FACB8, 0, 0);
}

uint64_t sub_1000FACB8()
{
  v71 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 32);
  v5 = v3 + 16;
  v6 = *(v3 + 16);
  *(v0 + 248) = v6;
  *(v0 + 256) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = (*(v3 + 88))(v1, v2);
  if (v7 == enum case for LSKStatusOptions.DeviceType.n301(_:))
  {
    v8 = 11;
LABEL_7:
    v9 = *(v0 + 232);
    v74 = *(v0 + 240);
    v10 = *(v0 + 224);
    v68 = *(v0 + 216);
    (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for LSKDomain.applicationServiceDiscovery(_:), *(v0 + 136));
    v70[0] = 68;
    v70[1] = 0xE100000000000000;
    *(v0 + 296) = v8;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12 = sub_1000C4810(&qword_1001D58B8, &qword_10014BBE0);
    v66 = sub_1000FE7E0(&qword_1001D58C0, sub_1000FE738, &protocol conformance descriptor for <A> [A]);
    v67 = v12;
    v65 = sub_1000FE7E0(&qword_1001D58D0, sub_1000FE78C, &protocol conformance descriptor for <A> [A]);
    LSKKey.init(domain:name:)();
    (*(v10 + 32))(v74, v9, v68);
    if (qword_1001D8DC0 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 200);
    v14 = *(v0 + 160);
    v15 = *(v0 + 32);
    v16 = type metadata accessor for Logger();
    *(v0 + 264) = sub_10000BB0C(v16, qword_1001D8DC8);
    v74 = v5;
    v69 = v6;
    v6(v13, v15, v14);
    swift_bridgeObjectRetain_n();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 200);
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);
    v23 = *(v0 + 40);
    if (v19)
    {
      v24 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v70[0] = v64;
      *v24 = 136315394;
      v63 = v18;
      v25 = sub_1000DC030(v20, v21);
      v27 = v26;
      v28 = *(v22 + 8);
      v28(v20, v21);
      v29 = sub_1000C3440(v25, v27, v70);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2048;
      v30 = *(v23 + 16);

      *(v24 + 14) = v30;

      _os_log_impl(&_mh_execute_header, v17, v63, "Publishing value for %s: %ld", v24, 0x16u);
      sub_1000C5604(v64);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v28 = *(v22 + 8);
      v28(v20, v21);
    }

    *(v0 + 272) = v28;
    v31 = *(v0 + 160);
    v32 = *(v0 + 168);
    v33 = *(v0 + 32);
    v34 = *(v0 + 40);
    (*(*(v0 + 96) + 104))(*(v0 + 104), enum case for LSKStatusOptions.Scope.sameAccount(_:), *(v0 + 88));
    sub_1000C4810(&qword_1001D5878, &qword_10014BB88);
    v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10014A0A0;
    v69(v36 + v35, v33, v31);
    LSKStatusOptions.init(scope:publishToDeviceTypes:)();
    *(v0 + 16) = v34;
    v37 = swift_task_alloc();
    *(v0 + 280) = v37;
    v38 = sub_1000FE7E0(&qword_1001D58E0, sub_1000FE858, &protocol conformance descriptor for <A> [A]);
    *v37 = v0;
    v37[1] = sub_1000FB494;
    v39 = *(v0 + 240);
    v40 = *(v0 + 128);
    v41 = *(v0 + 80);
    v42 = *(v0 + 56);
    v73 = v38;

    return LSKLocalStatusClient.publish<A>(_:for:options:)(v41, v42, v0 + 16, v39, v40, v67, v66, v65);
  }

  if (v7 == enum case for LSKStatusOptions.DeviceType.mac(_:))
  {
    v8 = 9;
    goto LABEL_7;
  }

  if (v7 == enum case for LSKStatusOptions.DeviceType.tv(_:))
  {
    v8 = 4;
    goto LABEL_7;
  }

  v43 = *(*(v0 + 168) + 8);
  v43(*(v0 + 208), *(v0 + 160));
  if (qword_1001D8DC0 != -1)
  {
    swift_once();
  }

  v44 = *(v0 + 184);
  v45 = *(v0 + 160);
  v46 = *(v0 + 32);
  v47 = type metadata accessor for Logger();
  sub_10000BB0C(v47, qword_1001D8DC8);
  v6(v44, v46, v45);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 184);
  v52 = *(v0 + 160);
  if (v50)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v70[0] = v54;
    *v53 = 136315138;
    v55 = sub_1000DC030(v51, v52);
    v56 = v43;
    v57 = v55;
    v59 = v58;
    v56(v51, v52);
    v60 = sub_1000C3440(v57, v59, v70);

    *(v53 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v48, v49, "Failed to generate status key for %s", v53, 0xCu);
    sub_1000C5604(v54);
  }

  else
  {

    v43(v51, v52);
  }

  v74 = *(v0 + 56);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1000FB494()
{
  v2 = *v1;
  (*v1)[36] = v0;

  if (v0)
  {
    v3 = sub_1000FB890;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    sub_1000C59E0(v2[7], &qword_1001D58A0, &qword_10014BBC8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_1000FB5E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000FB5E4()
{
  v26 = v0;
  (*(v0 + 248))(*(v0 + 192), *(v0 + 32), *(v0 + 160));
  v1 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v2 = os_log_type_enabled(v1, v22);
  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 192);
  v7 = *(v0 + 160);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v23 = *(v0 + 272);
  v24 = *(v0 + 112);
  if (v2)
  {
    v21 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v20 = v3;
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    log = v1;
    v19 = v4;
    v12 = sub_1000DC030(v6, v7);
    v14 = v13;
    v23(v6, v7);
    v15 = sub_1000C3440(v12, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, log, v22, "Finished publishing value for %s", v10, 0xCu);
    sub_1000C5604(v11);

    (*(v8 + 8))(v21, v24);
    (*(v5 + 8))(v20, v19);
  }

  else
  {

    v23(v6, v7);
    (*(v8 + 8))(v9, v24);
    (*(v5 + 8))(v3, v4);
  }

  v16 = *(v0 + 8);

  return v16();
}