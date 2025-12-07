uint64_t sub_100410568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_100410604, v6, 0);
}

uint64_t sub_100410604()
{
  v1 = v0[3];
  *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_currentResults) = v1;

  if (*(v1 + 16))
  {
    sub_1004106A8();
  }

  v2 = v0[1];

  return v2();
}

void sub_1004106A8()
{
  v0 = [objc_allocWithZone(SFUserAlert) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setDefaultButtonTitle:v2];

  v3 = String._bridgeToObjectiveC()();
  [v0 setMessage:v3];

  [v0 setTextInput:1];
  v4 = String._bridgeToObjectiveC()();
  [v0 setTextInputTitle:v4];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_100413760;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1004120A4;
  v7[3] = &unk_1008DFF48;
  v6 = _Block_copy(v7);

  [v0 setTextResponseHandler:v6];
  _Block_release(v6);
  [v0 present];
}

void sub_100410888()
{
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_10097C8B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Rapport identities changed, updating connection state", v3, 2u);
  }

  sub_10040CB8C();
  v4 = [objc_opt_self() sharedNearbyAgent];
  v5 = [v4 adHocPairedDeviceIdentities];

  if (v5)
  {
    sub_1000276B4(0, &unk_10097CA10, RPIdentity_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v7)
    {
      sub_1005C2374();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100410A6C()
{
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_10097C8B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "AirDrop discoverable mode changed", v3, 2u);
  }

  v4 = [objc_opt_self() sharedMonitor];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 discoverableLevel];

    if (v6)
    {

      sub_10040D338();
    }

    else
    {
      sub_10040EBB0();

      sub_10040F8B4();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100410C0C(id *a1, uint64_t a2)
{
  v3 = [*a1 edPKData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = a2 + *(type metadata accessor for SDTempPairingEndpoint(0) + 20);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v7 >> 60 != 15)
  {
    if (v10 >> 60 != 15)
    {
      sub_100294008(*(v8 + 16), *(v8 + 24));
      sub_100294008(v9, v10);
      sub_1002A9924(v5, v7);
      v12 = sub_100331508(v5, v7, v9, v10);
      sub_10028BCC0(v9, v10);
      sub_100026AC0(v9, v10);
      sub_10028BCC0(v5, v7);
      sub_10028BCC0(v5, v7);
      if (v12)
      {
        return sub_100410D90() & 1;
      }

      return 0;
    }

LABEL_8:
    sub_100294008(*(v8 + 16), *(v8 + 24));
    sub_10028BCC0(v5, v7);
    sub_10028BCC0(v9, v10);
    return 0;
  }

  if (v10 >> 60 != 15)
  {
    goto LABEL_8;
  }

  sub_100294008(*(v8 + 16), *(v8 + 24));
  sub_10028BCC0(v5, v7);
  return sub_100410D90() & 1;
}

id sub_100410D90()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = Data._bridgeToObjectiveC()().super.isa;
  v7 = 0;
  v3 = [v0 verifyAuthTag:isa data:v2 type:1 error:&v7];

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

void sub_100410E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = qword_1009735E0;
    v12 = v9;

    if (v11 != -1)
    {
      swift_once();
    }

    v13 = static AirDropActor.shared;
    v14 = sub_100014374(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = v12;
    v15[5] = a2;
    v15[6] = a3;

    sub_1002B3098(0, 0, v7, &unk_1008015D8, v15);
  }
}

uint64_t sub_10041104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004110EC, v7, 0);
}

uint64_t sub_1004110EC()
{
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097C8B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Nearby device is close timer fired", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  sub_1004EA84C(0);
  swift_beginAccess();
  sub_10036DB18(v6, v5);
  swift_endAccess();

  *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_hasStartedBonjourBrowsing) = 0;

  NWBrowser.cancel()();

  *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_currentResults) = &_swiftEmptySetSingleton;

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004112A4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for DispatchTime();
  v39 = *(v46 - 8);
  v13 = __chkstk_darwin(v46);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v38 = &v36 - v16;
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_10097C8B0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37 = v9;
    v22 = a1;
    v23 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10000C4E4(v22, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v18, v19, "Ask to AirDrop device (%s) within bubble", v20, 0xCu);
    sub_10000C60C(v23);
    a1 = v22;
    v9 = v37;
  }

  v24 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_nearbyDevicesByIdentifier;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v3 + v24);
  *(v3 + v24) = 0x8000000000000000;
  sub_10057B284(1, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + v24) = v48;
  swift_endAccess();
  v26 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
  if (v26)
  {
    v27 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8);

    v26(v28);
    sub_100015D04(v26, v27);
  }

  sub_1004EA84C(1);
  sub_1005C2694();
  v37 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_queue);
  static DispatchTime.now()();
  *v12 = 30;
  (*(v10 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v9);
  v29 = v38;
  + infix(_:_:)();
  (*(v10 + 8))(v12, v9);
  v39 = *(v39 + 8);
  (v39)(v15, v46);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004134D8;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DFE08;
  v31 = _Block_copy(aBlock);

  v32 = v40;
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_100014374(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  v33 = v42;
  v34 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v31);
  (*(v44 + 8))(v33, v34);
  (*(v41 + 8))(v32, v43);
  (v39)(v29, v46);
}

void sub_100411934(void *a1, char a2)
{
  v3 = v2;
  v6 = [a1 identifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_nearbyDevicesByIdentifier;
    swift_beginAccess();
    sub_1002B1940(2, v8, v10);
    swift_endAccess();
    v12 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
    if (v12)
    {
      v13 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged + 8);

      v12(v14);
      sub_100015D04(v12, v13);
    }

    if (a2)
    {
      v15 = [objc_opt_self() sharedController];
      [v15 notifyDeviceLost:a1];
    }

    if (!*(*(v3 + v11) + 16))
    {
      sub_1005C2694();
      sub_1004EA84C(0);
    }
  }
}

void sub_100411A80(uint64_t a1)
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = qword_1009735E0;
    v8 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = static AirDropActor.shared;
    v10 = sub_100014374(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = v8;

    sub_1002B3098(0, 0, v3, &unk_1008015C8, v11);
  }
}

uint64_t sub_100411C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_100411CD8, v5, 0);
}

uint64_t sub_100411CD8()
{
  if (qword_100973818 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097C8B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Nearby device is close timer fired", v4, 2u);
  }

  sub_1004EA84C(0);
  v5 = *(v0 + 8);

  return v5();
}

void sub_100411E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_10097C8B0);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    v14 = os_log_type_enabled(v12, v13);
    v24[1] = a1;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v24[0] = v6;
      v16 = v15;
      v17 = swift_slowAlloc();
      v24[3] = a2;
      v25 = v17;
      *v16 = 136315138;
      v24[2] = a1;

      sub_10028088C(&qword_100975100, &qword_1007FBA10);
      v18 = String.init<A>(describing:)();
      v20 = sub_10000C4E4(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "User entered PIN: %s", v16, 0xCu);
      sub_10000C60C(v17);

      v6 = v24[0];
    }

    if (a2)
    {
      static String.Encoding.utf8.getter();
      v21 = String.data(using:allowLossyConversion:)();
      v23 = v22;
      (*(v6 + 8))(v8, v5);
      if (v23 >> 60 == 15)
      {
        __break(1u);
        return;
      }

      sub_1004139E8();
      sub_10028BCC0(v21, v23);
    }
  }
}

uint64_t sub_1004120A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

void sub_100412120(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v5 - 8);
  v7 = v55 - v6;
  v8 = type metadata accessor for NWConnection.State();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v61 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v55 - v13;
  __chkstk_darwin(v12);
  v16 = v55 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v59 = Strong;
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    v19 = sub_10000C4AC(v18, qword_10097C8B0);
    v20 = *(v9 + 16);
    v58 = a1;
    v60 = v20;
    v20(v16, a1, v8);
    v57 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v55[1] = a3;
      v24 = v23;
      v25 = swift_slowAlloc();
      v56 = v9;
      v26 = v25;
      v62 = v25;
      *v24 = 136315138;
      v60(v14, v16, v8);
      v27 = String.init<A>(describing:)();
      v55[0] = v7;
      v29 = v28;
      v30 = *(v56 + 8);
      v30(v16, v8);
      v31 = sub_10000C4E4(v27, v29, &v62);
      v7 = v55[0];

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "Pairing connection state changed to %s", v24, 0xCu);
      sub_10000C60C(v26);
      v9 = v56;
    }

    else
    {

      v30 = *(v9 + 8);
      v30(v16, v8);
    }

    v32 = v61;
    v60(v61, v58, v8);
    v33 = (*(v9 + 88))(v32, v8);
    if (v33 == enum case for NWConnection.State.waiting(_:))
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Pairing failed", v36, 2u);
      }

      v37 = type metadata accessor for TaskPriority();
      (*(*(v37 - 8) + 56))(v7, 1, 1, v37);
      v38 = qword_1009735E0;
      v39 = v59;
      if (v38 != -1)
      {
        swift_once();
      }

      v40 = static AirDropActor.shared;
      v41 = sub_100014374(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v42 = swift_allocObject();
      v42[2] = v40;
      v42[3] = v41;
      v42[4] = v39;

      sub_1002B3098(0, 0, v7, &unk_100801608, v42);

      NWConnection.cancel()();

      goto LABEL_15;
    }

    if (v33 == enum case for NWConnection.State.failed(_:))
    {

LABEL_15:
      v43 = v32;
LABEL_16:
      v30(v43, v8);
      return;
    }

    if (v33 == enum case for NWConnection.State.setup(_:) || v33 == enum case for NWConnection.State.preparing(_:))
    {

      return;
    }

    if (v33 == enum case for NWConnection.State.ready(_:))
    {
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Pairing success", v46, 2u);
      }

      v47 = type metadata accessor for TaskPriority();
      (*(*(v47 - 8) + 56))(v7, 1, 1, v47);
      v48 = qword_1009735E0;
      v49 = v59;
      if (v48 != -1)
      {
        swift_once();
      }

      v50 = static AirDropActor.shared;
      v51 = sub_100014374(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v52 = swift_allocObject();
      v52[2] = v50;
      v52[3] = v51;
      v52[4] = v49;

      sub_1002B3098(0, 0, v7, &unk_1008015F8, v52);

      NWConnection.cancel()();
    }

    else
    {
      v53 = enum case for NWConnection.State.cancelled(_:);
      v54 = v33;

      if (v54 != v53)
      {
        v43 = v61;
        goto LABEL_16;
      }
    }
  }
}

uint64_t sub_100412880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_10041291C, v5, 0);
}

uint64_t sub_10041291C()
{
  sub_1004106A8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100412994()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_100412A2C, v0, 0);
}

uint64_t sub_100412A2C()
{
  sub_100413F08();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100412C18(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100412D0C()
{
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v0 = static NSUserDefaults.airdrop.getter();
  v1 = SFAirDropUserDefaults.a2aRangingAssumeFar.getter();

  if (v1)
  {
    if (qword_100973818 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097C8B0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Assuming device is not in range", v4, 2u);
    }
  }

  else
  {
    v5 = UUID.uuidString.getter();
    sub_1004112A4(v5, v6);
  }
}

uint64_t sub_100412FB4(uint64_t a1)
{
  result = type metadata accessor for NWEndpoint();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10041302C()
{
  result = qword_10097CA08;
  if (!qword_10097CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097CA08);
  }

  return result;
}

unint64_t sub_100413080(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v6 = static UUID.== infix(_:_:)();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_10041318C()
{
  v0 = [objc_opt_self() sharedNearbyAgent];
  v1 = [v0 adHocPairedDeviceIdentities];

  if (v1)
  {
    sub_1000276B4(0, &unk_10097CA10, RPIdentity_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v2 >> 62)
    {
LABEL_22:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (v3)
      {
LABEL_4:
        v4 = 0;
        v5 = _swiftEmptyArrayStorage;
        do
        {
          v6 = v4;
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v7 = *(v2 + 8 * v6 + 32);
            }

            v8 = v7;
            v4 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            v9 = [v7 name];
            if (v9)
            {
              break;
            }

            ++v6;
            if (v4 == v3)
            {
              goto LABEL_23;
            }
          }

          v10 = v9;
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v12;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10028E1C8(0, *(v5 + 2) + 1, 1, v5);
          }

          v14 = *(v5 + 2);
          v13 = *(v5 + 3);
          if (v14 >= v13 >> 1)
          {
            v5 = sub_10028E1C8((v13 > 1), v14 + 1, 1, v5);
          }

          *(v5 + 2) = v14 + 1;
          v15 = &v5[16 * v14];
          *(v15 + 4) = v11;
          *(v15 + 5) = v16;
        }

        while (v4 != v3);
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_4;
      }
    }

LABEL_23:

    return;
  }

  __break(1u);
}

uint64_t sub_100413394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDTempPairingEndpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100413418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDTempPairingEndpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10041347C(uint64_t a1)
{
  v2 = type metadata accessor for SDTempPairingEndpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004134E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100411C3C(a1, v4, v5, v6);
}

uint64_t sub_1004135D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_10041104C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004136A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100410568(a1, v4, v5, v7, v6);
}

unint64_t sub_100413768(unint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a1;
  result = sub_100413080(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    v10 = static UUID.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v13)
          {
            goto LABEL_45;
          }

          if (v8 >= v13)
          {
            goto LABEL_46;
          }

          v11 = *(v4 + 32 + 8 * v7);
          v12 = *(v4 + 32 + 8 * v8);
        }

        v14 = v3;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_1002D8B8C();
          v15 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v4 & 0xFFFFFFFFFFFFFF8;
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v12;

        if ((v4 & 0x8000000000000000) != 0 || v15)
        {
          v4 = sub_1002D8B8C();
          v16 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v16 + 16))
        {
          goto LABEL_43;
        }

        v3 = v14;
        *(v16 + 8 * v8 + 32) = v11;

        *v14 = v4;
      }

      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1004139E8()
{
  v0 = sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v3 = type metadata accessor for NWEndpoint();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - v9;
  __chkstk_darwin(v8);
  v12 = &v21 - v11;

  sub_1002FB4EC(v13, v2);

  v14 = type metadata accessor for NWBrowser.Result();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v2, 1, v14) == 1)
  {
    return sub_100413D30(v2);
  }

  NWBrowser.Result.endpoint.getter();
  (*(v15 + 8))(v2, v14);
  (*(v4 + 32))(v12, v10, v3);
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  (*(v4 + 16))(v7, v12, v3);
  type metadata accessor for NWConnection();
  swift_allocObject();

  v17 = NWConnection.init(to:using:)();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;

  NWConnection.stateUpdateHandler.setter();

  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  NWConnection.start(queue:)();

  return (*(v4 + 8))(v12, v3);
}

uint64_t sub_100413D30(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100413DA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_100412994();
}

uint64_t sub_100413E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100412880(a1, v4, v5, v6);
}

void sub_100413F08()
{
  v3 = [objc_allocWithZone(SFUserAlert) init];
  v0 = String._bridgeToObjectiveC()();
  [v3 setTitle:v0];

  v1 = String._bridgeToObjectiveC()();
  [v3 setDefaultButtonTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v3 setMessage:v2];

  [v3 present];
}

uint64_t sub_100413FFC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10041405C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097CA40);
  v1 = sub_10000C4AC(v0, qword_10097CA40);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100414124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007F8830;
  if (qword_100973828 != -1)
  {
    v12 = v4;
    swift_once();
    v4 = v12;
  }

  *(v4 + 56) = &type metadata for SDAuthentication.Operation.UnpairRemoteLTK;
  *(v4 + 64) = &off_10097BB48;
  *(v4 + 96) = &type metadata for SDAuthentication.Operation.RecordFeaturePreviouslyPaired;
  *(v4 + 104) = &off_10097BB30;
  *(v4 + 136) = &type metadata for SDAuthentication.Operation.BuildPairingDisableMessage;
  *(v4 + 144) = &off_10097BB18;
  *a2 = v4;
  v5 = _s6UnpairV23InitialInitiatorContextVMa(0);
  v6 = (a2 + v5[6]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5[7]) = 0;
  *(a2 + v5[8]) = 8;
  if (qword_100973820 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_10097CA40);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Start Key initiated pairing disable flow", v10, 2u);
  }

  return sub_1004153C0(a1, a2 + v5[5], type metadata accessor for SDAuthenticationSessionMetrics);
}

uint64_t sub_100414324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

id sub_1004143CC(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 28);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041444C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973828 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.ProcessUnpairRequest;
  *(v6 + 64) = &off_10097C288;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RecordFeaturePreviouslyPaired;
  *(v6 + 104) = &off_10097BB30;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 144) = &off_10097C270;
  *a3 = v6;
  v7 = _s6UnpairV27HandlePairingDisableContextVMa(0);
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = 2;
  v8 = _s6UnpairV23InitialResponderContextVMa(0);
  v9 = v7[5];
  sub_100415428(a2 + *(v8 + 20), a3 + v9, type metadata accessor for SDAuthenticationSessionMetrics);
  if ([a1 hasPairingID] && (v10 = objc_msgSend(a1, "pairingID")) != 0)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    result = sub_100415490(a2, _s6UnpairV23InitialResponderContextVMa);
    v16 = (a3 + v7[6]);
    *v16 = v12;
    v16[1] = v14;
  }

  else
  {
    v17 = sub_100010F88(1, 0xD000000000000011, 0x8000000100790120);
    v19 = v18;
    sub_1000115C8();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    swift_willThrow();

    sub_100415490(a2, _s6UnpairV23InitialResponderContextVMa);

    return sub_100415490(a3 + v9, type metadata accessor for SDAuthenticationSessionMetrics);
  }

  return result;
}

uint64_t sub_1004146FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_1004143CC(a3, a4);
  v5 = [v4 data];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v8 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }
}

uint64_t sub_1004147D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F5670;
  if (qword_100973828 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s6UnpairV23InitialInitiatorContextVMa(0) + 20);
    v8 = _s6UnpairV25HandleConfirmationContextVMa(0);
    sub_100415428(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_100415490(a2, _s6UnpairV23InitialInitiatorContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_100415490(a2, _s6UnpairV23InitialInitiatorContextVMa);
  }

  return result;
}

void sub_10041499C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a2;
  v64 = a3;
  v59 = _s6UnpairV25HandleConfirmationContextVMa(0);
  __chkstk_darwin(v59);
  v63 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10028088C(&qword_10097CC30, &qword_100801740);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - v6;
  v8 = _s6UnpairV23InitialInitiatorContextVMa(0);
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = __chkstk_darwin(v8);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v58 - v11;
  v60 = _s6UnpairV27HandlePairingDisableContextVMa(0);
  __chkstk_darwin(v60);
  v13 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_10028088C(&qword_10097CC38, &qword_100801748);
  __chkstk_darwin(v14 - 8);
  v16 = &v58 - v15;
  v17 = _s6UnpairV23InitialResponderContextVMa(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v58 - v22;
  sub_1002A9938(a1, v69);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &unk_10097CBF0, off_1008C8D20);
  if (swift_dynamicCast())
  {
    v24 = v70;
    sub_1002A9938(v68, v69);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v25 = swift_dynamicCast();
    v26 = *(v18 + 56);
    if (!v25)
    {
      v26(v16, 1, 1, v17);
      sub_100005508(v16, &qword_10097CC38, &qword_100801748);
      v40 = sub_100010F88(10, 0xD00000000000004CLL, 0x80000001007900D0);
      v42 = v41;
      sub_1000115C8();
      swift_allocError();
      *v43 = v40;
      *(v43 + 8) = v42;
      swift_willThrow();

      return;
    }

    v26(v16, 0, 1, v17);
    sub_1004153C0(v16, v23, _s6UnpairV23InitialResponderContextVMa);
    sub_100415428(v23, v21, _s6UnpairV23InitialResponderContextVMa);
    v27 = v24;
    v28 = v67;
    sub_10041444C(v27, v21, v13);
    if (v28)
    {
      v29 = _s6UnpairV23InitialResponderContextVMa;
      v30 = v23;
LABEL_9:
      sub_100415490(v30, v29);

      return;
    }

    v52 = v64;
    v64[3] = v60;
    v52[4] = &off_1008E0280;
    v53 = sub_10002F604(v52);
    sub_1004153C0(v13, v53, _s6UnpairV27HandlePairingDisableContextVMa);

    v54 = _s6UnpairV23InitialResponderContextVMa;
    v55 = v23;
  }

  else
  {
    v31 = v68;
    sub_1002A9938(a1, v69);
    sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
    if (!swift_dynamicCast())
    {
      v44 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
      v46 = v45;
      sub_1000115C8();
      swift_allocError();
      *v47 = v44;
      *(v47 + 8) = v46;
      swift_willThrow();
      return;
    }

    v32 = v70;
    sub_1002A9938(v31, v69);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v33 = v66;
    v34 = swift_dynamicCast();
    v35 = *(v65 + 56);
    if (!v34)
    {
      v35(v7, 1, 1, v33);
      sub_100005508(v7, &qword_10097CC30, &qword_100801740);
      v48 = sub_100010F88(10, 0xD00000000000004CLL, 0x8000000100790080);
      v50 = v49;
      sub_1000115C8();
      swift_allocError();
      *v51 = v48;
      *(v51 + 8) = v50;
      swift_willThrow();

      return;
    }

    v35(v7, 0, 1, v33);
    v36 = v62;
    sub_1004153C0(v7, v62, _s6UnpairV23InitialInitiatorContextVMa);
    v37 = v61;
    sub_100415428(v36, v61, _s6UnpairV23InitialInitiatorContextVMa);
    v27 = v32;
    v38 = v63;
    v39 = v67;
    sub_1004147D4(v27, v37, v63);
    if (v39)
    {
      v29 = _s6UnpairV23InitialInitiatorContextVMa;
      v30 = v36;
      goto LABEL_9;
    }

    v56 = v64;
    v64[3] = v59;
    v56[4] = &off_1008E0298;
    v57 = sub_10002F604(v56);
    sub_1004153C0(v38, v57, _s6UnpairV25HandleConfirmationContextVMa);

    v54 = _s6UnpairV23InitialInitiatorContextVMa;
    v55 = v36;
  }

  sub_100415490(v55, v54);
}

void sub_1004151DC(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100415288(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002F9C34(319, qword_1009771F0, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1002A6C94(319, &qword_10097CBE8, &unk_10097CBF0, off_1008C8D20);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1004153C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100415428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100415490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100415518(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6C94(319, &unk_100975B40, &qword_1009758D0, off_1008C8D08);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100415618(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v2[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_100415770, v5, 0);
}

void sub_100415770(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = objc_allocWithZone(LSApplicationRecord);
    v7 = sub_10066F3F8(0xD000000000000011, 0x800000010078FA70, 1);
    v8 = v1[3];
    v9 = *(v8 + 16);
    *(v8 + 16) = v7;

    if (*(v8 + 16))
    {
      v10 = v1[5];
      v11 = SFAirDropReceive.AskRequest.urlItems.getter();
      v12 = v11;
      v13 = 0;
      v14 = v11 + 56;
      v15 = -1;
      v16 = -1 << *(v11 + 32);
      if (-v16 < 64)
      {
        v15 = ~(-1 << -v16);
      }

      v17 = v15 & *(v11 + 56);
      v18 = (63 - v16) >> 6;
      while (v17)
      {
        v19 = v13;
LABEL_12:
        v20 = v1[6];
        v21 = v1[4];
        v22 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        (*(v10 + 16))(v20, *(v12 + 48) + *(v10 + 72) * (v22 | (v19 << 6)), v21);
        URL._bridgeToObjectiveC()(v23);
        v25 = v24;
        (*(v10 + 8))(v20, v21);
        LOBYTE(v20) = SFIsKeynoteLiveLink();

        if ((v20 & 1) == 0)
        {
          v26 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      while (1)
      {
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v19 >= v18)
        {
          v26 = 1;
          goto LABEL_16;
        }

        v17 = *(v14 + 8 * v19);
        ++v13;
        if (v17)
        {
          v13 = v19;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      v28 = v1[3];
      type metadata accessor for SDAirDropContentHandlerWebLinks();
      v29 = swift_allocObject();
      v1[11] = v29;
      *(v28 + 24) = v29;

      v30 = swift_task_alloc();
      v1[12] = v30;
      *v30 = v1;
      v30[1] = sub_100415A74;
      v31 = v1[2];

      sub_1002FC674(v31);
    }
  }

  else
  {
    v26 = 0;
LABEL_17:

    v27 = v1[1];

    v27(v26);
  }
}

uint64_t sub_100415A74(char a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100415B8C, v2, 0);
}

void sub_100415B8C()
{
  v1 = *(v0 + 104);

  if (v1 == 1)
  {
    v2 = *(v0 + 40);
    v3 = SFAirDropReceive.AskRequest.urlItems.getter();
    v4 = v3;
    v5 = 0;
    v6 = v3 + 56;
    v7 = -1;
    v8 = -1 << *(v3 + 32);
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v9 = v7 & *(v3 + 56);
    v10 = (63 - v8) >> 6;
    while (v9)
    {
      v11 = v5;
LABEL_11:
      v12 = *(v0 + 48);
      v13 = *(v0 + 32);
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      (*(v2 + 16))(v12, *(v4 + 48) + *(v2 + 72) * (v14 | (v11 << 6)), v13);
      URL._bridgeToObjectiveC()(v15);
      v17 = v16;
      (*(v2 + 8))(v12, v13);
      LOBYTE(v12) = SFIsKeynoteLiveLink();

      if ((v12 & 1) == 0)
      {
        v18 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    while (1)
    {
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        v18 = 1;
        goto LABEL_15;
      }

      v9 = *(v6 + 8 * v11);
      ++v5;
      if (v9)
      {
        v5 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = 0;
LABEL_16:

    v19 = *(v0 + 8);

    v19(v18);
  }
}

uint64_t sub_100415D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  if (*(v2 + 24))
  {

    sub_1002FB6E8(a1, a2);
  }

  else
  {
    v44 = v8;
    v12 = *(a1 + 16);
    v38 = *(v2 + 16);
    v39 = a2;
    v13 = v38;
    v36 = a1;
    v37 = v12;
    if (v12)
    {
      v16 = *(v6 + 16);
      v15 = v6 + 16;
      v14 = v16;
      v42 = (*(v15 + 64) + 32) & ~*(v15 + 64);
      v17 = a1 + v42;
      v18 = *(v15 + 56);
      v45 = (v15 + 16);
      v40 = (v15 - 8);
      v19 = _swiftEmptyArrayStorage;
      v43 = v15;
      v20 = v44;
      v41 = v18;
      v16(v10, v17, v5);
      while (1)
      {
        if (URL.isFileURL.getter())
        {
          (*v40)(v10, v5);
        }

        else
        {
          v21 = *v45;
          (*v45)(v20, v10, v5);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10028FAB4(0, v19[2] + 1, 1);
            v19 = v46;
          }

          v24 = v19[2];
          v23 = v19[3];
          if (v24 >= v23 >> 1)
          {
            sub_10028FAB4((v23 > 1), v24 + 1, 1);
            v19 = v46;
          }

          v19[2] = v24 + 1;
          v25 = v41;
          v26 = v19 + v42 + v24 * v41;
          v20 = v44;
          v21(v26, v44, v5);
          v18 = v25;
        }

        v17 += v18;
        if (!--v12)
        {
          break;
        }

        v14(v10, v17, v5);
      }
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

    v27 = v19[2];
    if (v27)
    {
      if (v27 != v37)
      {
        if (qword_1009737B0 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_10000C4AC(v28, qword_10097B528);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Asked to view mixed files and links, only viewing links", v31, 2u);
        }
      }

      v46 = 0;
      v32 = swift_allocObject();
      v33 = v38;
      *(v32 + 16) = v19;
      *(v32 + 24) = v33;
    }

    else
    {

      v46 = 0;
      v34 = swift_allocObject();
      *(v34 + 16) = v38;
      *(v34 + 24) = 1;
      *(v34 + 32) = v36;
    }

    return SFProgressTask.init(_:initialProgress:operation:file:line:)();
  }
}

uint64_t sub_1004161FC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100416260@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerKeynoteLiveLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100416298(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100415618(a1);
}

void sub_100416358(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0xD00000000000001ALL;
  v5 = inited + 32;
  *(inited + 40) = 0x8000000100790190;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_1003470A0(v5);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004164D0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097CE70);
  v1 = sub_10000C4AC(v0, qword_10097CE70);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100416598@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1008018C0;
  if (qword_100973838 != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  *(v4 + 56) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(v4 + 64) = &off_10097BDB8;
  *(v4 + 96) = &type metadata for SDAuthentication.Operation.CheckIsWiFiEnabled;
  *(v4 + 104) = &off_10097BDA0;
  *(v4 + 136) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(v4 + 144) = &off_10097BE00;
  *(v4 + 176) = &type metadata for SDAuthentication.Operation.CheckEnabledWithPeerDevice;
  *(v4 + 184) = &off_10097BC20;
  *(v4 + 216) = &type metadata for SDAuthentication.Operation.RecordRemoteDevice;
  *(v4 + 224) = &off_10097BD70;
  *(v4 + 256) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v4 + 264) = &off_10097BD58;
  *(v4 + 296) = &type metadata for SDAuthentication.Operation.CheckRegistrationStateWithAKSManager;
  *(v4 + 304) = &off_10097BC08;
  *(v4 + 336) = &type metadata for SDAuthentication.Operation.IncludeRegistrationIDInMessage;
  *(v4 + 344) = &off_10097BBF0;
  *(v4 + 376) = &type metadata for SDAuthentication.Operation.IncludeSessionStartDateInMessage;
  *(v4 + 384) = &off_10097BCB0;
  *(v4 + 416) = &type metadata for SDAuthentication.Operation.IncludeFirstAKSTokenWithLTKSessionInMessage;
  *(v4 + 424) = &off_10097BBD8;
  *(v4 + 456) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(v4 + 464) = &off_10097BCF8;
  *a2 = v4;
  v5 = _s15GuestModeUnlockV17InitialKeyContextVMa(0);
  v6 = v5[6];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  *&a2[v5[7]] = 0;
  a2[v5[8]] = 0;
  return sub_100418D2C(a1, &a2[v5[5]], type metadata accessor for SDAuthenticationSessionMetrics);
}

void sub_1004167F8(uint64_t a1)
{
  type metadata accessor for SDAuthenticationCommonOperationInput(319);
  if (v1 <= 0x3F)
  {
    sub_100349E3C();
    if (v2 <= 0x3F)
    {
      sub_100416894();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100416894()
{
  if (!qword_1009756D8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1009756D8);
    }
  }
}

void sub_10041692C(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6BEC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1004169DC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100416B20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100416C50(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6BEC(319);
      if (v3 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_1009759E8, &qword_1009758B8, off_1008C8D48);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_100416D9C()
{
  v1 = *(_s15GuestModeUnlockV20HandleRequestContextVMa(0) + 40);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationResponse) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100416E0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007FA7D0;
  if (qword_100973838 != -1)
  {
    swift_once();
  }

  *(v11 + 56) = &type metadata for SDAuthentication.Operation.RecordSessionStart;
  *(v11 + 64) = &off_10097BDE8;
  *(v11 + 96) = &type metadata for SDAuthentication.Operation.RecordRemoteUnlockDate;
  *(v11 + 104) = &off_10097BF40;
  *(v11 + 136) = &type metadata for SDAuthentication.Operation.RecordDiscoveryEnd;
  *(v11 + 144) = &off_10097BB90;
  *(v11 + 176) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeStart;
  *(v11 + 184) = &off_10097BDD0;
  *(v11 + 216) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeEnd;
  *(v11 + 224) = &off_10097C1F8;
  *(v11 + 256) = &type metadata for SDAuthentication.Operation.CheckEnabledWithPeerDevice;
  *(v11 + 264) = &off_10097BC20;
  *(v11 + 296) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v11 + 304) = &off_10097BD58;
  *(v11 + 336) = &type metadata for SDAuthentication.Operation.CheckIsWiFiEnabled;
  *(v11 + 344) = &off_10097BDA0;
  *(v11 + 376) = &type metadata for SDAuthentication.Operation.CheckRegistrationStateWithAKSManager;
  *(v11 + 384) = &off_10097BC08;
  *(v11 + 416) = &type metadata for SDAuthentication.Operation.VerifyRegistrationIDsInSync;
  *(v11 + 424) = &off_10097C240;
  *(v11 + 456) = &type metadata for SDAuthentication.Operation.UseReceivedTokenForIncludingFirstAKSTokenWithLTKSessionInMessage;
  *(v11 + 464) = &off_10097C120;
  *(v11 + 496) = &type metadata for SDAuthentication.Operation.SendResponseMessage;
  *(v11 + 504) = &off_10097C1B0;
  *a3 = v11;
  v12 = _s15GuestModeUnlockV20HandleRequestContextVMa(0);
  v13 = v12[7];
  v53 = v6;
  (*(v6 + 56))(&a3[v13], 1, 1, v5);
  *&a3[v12[10]] = 0;
  a3[v12[11]] = 1;
  if (![a1 hasAksToken] || (v14 = objc_msgSend(a1, "aksToken")) == 0)
  {
    v38 = sub_100010F88(1, 0xD000000000000011, 0x80000001007901B0);
    v40 = v39;
    sub_1000115C8();
    swift_allocError();
    *v41 = v38;
    *(v41 + 8) = v40;
    swift_willThrow();
LABEL_16:

    sub_100418DFC(v54, _s15GuestModeUnlockV18InitialLockContextVMa);

    return sub_100005508(&a3[v13], &qword_10097A7F0, &unk_1007FB600);
  }

  v15 = v14;
  v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v16;

  if (![a1 hasRegistrationID] || (v17 = objc_msgSend(a1, "registrationID")) == 0)
  {
    v42 = sub_100010F88(11, 0xD000000000000016, 0x80000001007901D0);
    v44 = v43;
    sub_1000115C8();
    swift_allocError();
    *v45 = v42;
    *(v45 + 8) = v44;
    swift_willThrow();
    sub_100026AC0(v50, v51);
    goto LABEL_16;
  }

  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v20;
  v49 = v19;

  v21 = _s15GuestModeUnlockV18InitialLockContextVMa(0);
  v22 = v54;
  sub_100418D94(v54 + *(v21 + 20), &a3[v12[5]], type metadata accessor for SDAuthenticationSessionMetrics);
  sub_1000168F4(v22 + *(v21 + 24), &a3[v13]);
  v23 = &a3[v12[9]];
  v24 = v48;
  *v23 = v49;
  v23[1] = v24;
  if ([a1 hasUnlockDate] && (objc_msgSend(a1, "unlockDate"), v25 != 0.0))
  {
    [a1 unlockDate];
    Date.init(timeIntervalSince1970:)();
  }

  else
  {
    Date.init()();
  }

  (*(v53 + 32))(&a3[v12[8]], v10, v5);
  v26 = &a3[v12[6]];
  v27 = v51;
  *v26 = v50;
  *(v26 + 1) = v27;
  if (qword_100973830 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000C4AC(v28, qword_10097CE70);
  v29 = a1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v55 = v51;
    *v32 = 136315138;
    [v29 unlockDate];
    v33 = v52;
    Date.init(timeIntervalSince1970:)();
    sub_100418E5C();
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    (*(v53 + 8))(v33, v5);
    v37 = sub_10000C4E4(v34, v36, &v55);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "got remote unlock date: %s", v32, 0xCu);
    sub_10000C60C(v51);
  }

  else
  {
  }

  return sub_100418DFC(v54, _s15GuestModeUnlockV18InitialLockContextVMa);
}

uint64_t sub_100417494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_100417538()
{
  v1 = *(_s15GuestModeUnlockV21HandleResponseContextVMa(0) + 32);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationToken) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1004175A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973838 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.IncludeNextAKSTokenWithLTKSessionInMessage;
  *(v6 + 64) = &off_10097C198;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendTokenMessage;
  *(v6 + 104) = &off_10097C180;
  *a3 = v6;
  v7 = _s15GuestModeUnlockV21HandleResponseContextVMa(0);
  *(a3 + v7[6]) = 34;
  *(a3 + v7[8]) = 0;
  *(a3 + v7[9]) = 7;
  if ([a1 hasAksToken])
  {
    v8 = _s15GuestModeUnlockV17InitialKeyContextVMa(0);
    sub_100418D94(a2 + *(v8 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_100418DFC(a2, _s15GuestModeUnlockV17InitialKeyContextVMa);
      v14 = (a3 + v7[7]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_100418DFC(a2, _s15GuestModeUnlockV17InitialKeyContextVMa);
  }

  return result;
}

uint64_t sub_10041780C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

id sub_1004178E0(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 28);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100417960@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973838 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.ConsumeAKSTokenWithLTKSession;
  *(v6 + 64) = &off_10097C150;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 104) = &off_10097C270;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 144) = &off_10097BB00;
  *a3 = v6;
  v7 = _s15GuestModeUnlockV18HandleTokenContextVMa(0);
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = 2;
  if ([a1 hasAksToken])
  {
    v8 = _s15GuestModeUnlockV20HandleRequestContextVMa(0);
    sub_100418D94(a2 + *(v8 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_100418DFC(a2, _s15GuestModeUnlockV20HandleRequestContextVMa);
      v14 = (a3 + v7[6]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_100418DFC(a2, _s15GuestModeUnlockV20HandleRequestContextVMa);
  }

  return result;
}

uint64_t sub_100417B90(uint64_t a1)
{
  v2 = v1 + *(a1 + 24);
  v3 = *v2;
  sub_100294008(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_100417C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_1004178E0(a3, a4);
  v5 = [v4 data];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v8 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }
}

uint64_t sub_100417D0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973838 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.ConfirmAKSSessionWithLTKSession;
  *(v6 + 104) = &off_10097C090;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 144) = &off_10097BB00;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s15GuestModeUnlockV21HandleResponseContextVMa(0) + 20);
    v8 = _s15GuestModeUnlockV25HandleConfirmationContextVMa(0);
    sub_100418D94(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_100418DFC(a2, _s15GuestModeUnlockV21HandleResponseContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_100418DFC(a2, _s15GuestModeUnlockV21HandleResponseContextVMa);
  }

  return result;
}

void sub_100417EFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v116 = a2;
  v111 = a3;
  v95 = _s15GuestModeUnlockV25HandleConfirmationContextVMa(0);
  __chkstk_darwin(v95);
  v99 = (&v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10028088C(&qword_10097D058, &qword_100801A18);
  __chkstk_darwin(v5 - 8);
  v104 = &v95 - v6;
  v96 = _s15GuestModeUnlockV18HandleTokenContextVMa(0);
  __chkstk_darwin(v96);
  v103 = (&v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10028088C(&qword_10097D060, &qword_100801A20);
  __chkstk_darwin(v8 - 8);
  v110 = &v95 - v9;
  v105 = _s15GuestModeUnlockV21HandleResponseContextVMa(0);
  v102 = *(v105 - 8);
  v10 = __chkstk_darwin(v105);
  v97 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v98 = &v95 - v13;
  __chkstk_darwin(v12);
  v109 = (&v95 - v14);
  v15 = sub_10028088C(&qword_10097D068, &qword_100801A28);
  __chkstk_darwin(v15 - 8);
  v17 = &v95 - v16;
  v18 = _s15GuestModeUnlockV17InitialKeyContextVMa(0);
  v113 = *(v18 - 8);
  v114 = v18;
  v19 = __chkstk_darwin(v18);
  v107 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v108 = &v95 - v21;
  v112 = _s15GuestModeUnlockV20HandleRequestContextVMa(0);
  v106 = *(v112 - 8);
  v22 = __chkstk_darwin(v112);
  v100 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v101 = &v95 - v25;
  __chkstk_darwin(v24);
  v27 = &v95 - v26;
  v28 = sub_10028088C(&qword_10097D070, &unk_100801A30);
  __chkstk_darwin(v28 - 8);
  v30 = &v95 - v29;
  v31 = _s15GuestModeUnlockV18InitialLockContextVMa(0);
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v95 - v36;
  sub_1002A9938(a1, v117);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
  if (swift_dynamicCast())
  {
    v38 = v118;
    sub_1002A9938(v116, v117);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v39 = swift_dynamicCast();
    v40 = *(v32 + 56);
    if (v39)
    {
      v40(v30, 0, 1, v31);
      sub_100418D2C(v30, v37, _s15GuestModeUnlockV18InitialLockContextVMa);
      sub_100418D94(v37, v35, _s15GuestModeUnlockV18InitialLockContextVMa);
      v41 = v38;
      v42 = v115;
      sub_100416E0C(v41, v35, v27);
      if (v42)
      {
        v43 = _s15GuestModeUnlockV18InitialLockContextVMa;
        v44 = v37;
LABEL_21:
        sub_100418DFC(v44, v43);

        return;
      }

      v80 = v111;
      v111[3] = v112;
      v80[4] = &off_1008E07B0;
      v81 = sub_10002F604(v80);
      sub_100418D2C(v27, v81, _s15GuestModeUnlockV20HandleRequestContextVMa);

      v82 = _s15GuestModeUnlockV18InitialLockContextVMa;
      v83 = v37;
      goto LABEL_30;
    }

    v40(v30, 1, 1, v31);
    sub_100005508(v30, &qword_10097D070, &unk_100801A30);
    v54 = "sult, message may be replayed";
    v55 = 0xD000000000000047;
LABEL_10:
    v56 = sub_100010F88(10, v55, v54 | 0x8000000000000000);
    v58 = v57;
    sub_1000115C8();
    swift_allocError();
    *v59 = v56;
    *(v59 + 8) = v58;
    swift_willThrow();

    return;
  }

  v45 = v116;
  sub_1002A9938(a1, v117);
  sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
  if (swift_dynamicCast())
  {
    v46 = v118;
    sub_1002A9938(v45, v117);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v47 = v114;
    v48 = swift_dynamicCast();
    v49 = *(v113 + 56);
    if (!v48)
    {
      v49(v17, 1, 1, v47);
      sub_100005508(v17, &qword_10097D068, &qword_100801A28);
      v69 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v71 = v70;
      sub_1000115C8();
      swift_allocError();
      *v72 = v69;
      *(v72 + 8) = v71;
      swift_willThrow();

      return;
    }

    v49(v17, 0, 1, v47);
    v50 = v108;
    sub_100418D2C(v17, v108, _s15GuestModeUnlockV17InitialKeyContextVMa);
    v51 = v107;
    sub_100418D94(v50, v107, _s15GuestModeUnlockV17InitialKeyContextVMa);
    v41 = v46;
    v52 = v109;
    v53 = v115;
    sub_1004175A8(v41, v51, v109);
    if (v53)
    {
      v43 = _s15GuestModeUnlockV17InitialKeyContextVMa;
      v44 = v50;
      goto LABEL_21;
    }

    v88 = v111;
    v111[3] = v105;
    v88[4] = &off_1008E07C8;
    v89 = sub_10002F604(v88);
    sub_100418D2C(v52, v89, _s15GuestModeUnlockV21HandleResponseContextVMa);

    v82 = _s15GuestModeUnlockV17InitialKeyContextVMa;
    v83 = v50;
    goto LABEL_30;
  }

  sub_1002A9938(a1, v117);
  sub_1000276B4(0, &qword_1009758C8, off_1008C8D58);
  if (swift_dynamicCast())
  {
    v38 = v118;
    sub_1002A9938(v45, v117);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v60 = v110;
    v61 = v112;
    v62 = swift_dynamicCast();
    v63 = *(v106 + 56);
    if (!v62)
    {
      v63(v60, 1, 1, v61);
      sub_100005508(v60, &qword_10097D060, &qword_100801A20);
      v54 = "t, message may be replayed";
      v55 = 0xD000000000000049;
      goto LABEL_10;
    }

    v63(v60, 0, 1, v61);
    v64 = v101;
    sub_100418D2C(v60, v101, _s15GuestModeUnlockV20HandleRequestContextVMa);
    v65 = v100;
    sub_100418D94(v64, v100, _s15GuestModeUnlockV20HandleRequestContextVMa);
    v41 = v38;
    v66 = v103;
    v67 = v115;
    sub_100417960(v41, v65, v103);
    if (v67)
    {
      v68 = _s15GuestModeUnlockV20HandleRequestContextVMa;
LABEL_20:
      v43 = v68;
      v44 = v64;
      goto LABEL_21;
    }

    v90 = v111;
    v111[3] = v96;
    v90[4] = &off_1008E07E0;
    v91 = sub_10002F604(v90);
    sub_100418D2C(v66, v91, _s15GuestModeUnlockV18HandleTokenContextVMa);

    v92 = _s15GuestModeUnlockV20HandleRequestContextVMa;
  }

  else
  {
    sub_1002A9938(a1, v117);
    sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
    if (!swift_dynamicCast())
    {
      v84 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
      v86 = v85;
      sub_1000115C8();
      swift_allocError();
      *v87 = v84;
      *(v87 + 8) = v86;
      swift_willThrow();
      return;
    }

    v38 = v118;
    sub_1002A9938(v45, v117);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v74 = v104;
    v73 = v105;
    v75 = swift_dynamicCast();
    v76 = *(v102 + 56);
    if (!v75)
    {
      v76(v74, 1, 1, v73);
      sub_100005508(v74, &qword_10097D058, &qword_100801A18);
      v54 = "Invalid message object received";
      v55 = 0xD00000000000004ALL;
      goto LABEL_10;
    }

    v76(v74, 0, 1, v73);
    v64 = v98;
    sub_100418D2C(v74, v98, _s15GuestModeUnlockV21HandleResponseContextVMa);
    v77 = v97;
    sub_100418D94(v64, v97, _s15GuestModeUnlockV21HandleResponseContextVMa);
    v41 = v38;
    v78 = v99;
    v79 = v115;
    sub_100417D0C(v41, v77, v99);
    if (v79)
    {
      v68 = _s15GuestModeUnlockV21HandleResponseContextVMa;
      goto LABEL_20;
    }

    v93 = v111;
    v111[3] = v95;
    v93[4] = &off_1008E07F8;
    v94 = sub_10002F604(v93);
    sub_100418D2C(v78, v94, _s15GuestModeUnlockV25HandleConfirmationContextVMa);

    v92 = _s15GuestModeUnlockV21HandleResponseContextVMa;
  }

  v82 = v92;
  v83 = v64;
LABEL_30:
  sub_100418DFC(v83, v82);
}

uint64_t sub_100418D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100418D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100418DFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100418E5C()
{
  result = qword_100983290;
  if (!qword_100983290)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983290);
  }

  return result;
}

void sub_100418EDC(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6BEC(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          sub_1002A6C94(319, &unk_100975A90, &qword_1009758C0, off_1008C8D50);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100419000(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6C94(319, &unk_100975B40, &qword_1009758D0, off_1008C8D08);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1004190FC(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SFAuthenticationErrorCode(319);
      if (v3 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975BE8, &qword_1009758C8, off_1008C8D58);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100419208()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097D2F8);
  v1 = sub_10000C4AC(v0, qword_10097D2F8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004192D0()
{
  v1 = type metadata accessor for SFPlatform();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SFFilesAppAvailable() && (static SFPlatform.visionOS.getter(), v5 = static SFPlatform.isPlatform(_:)(), v6 = *(v2 + 8), v6(v4, v1), (v5 & 1) == 0))
  {
    static SFPlatform.macOS.getter();
    v9 = static SFPlatform.isPlatform(_:)();
    v6(v4, v1);
    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v0 + 24) ^ 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1004193F8()
{
  v1 = type metadata accessor for SFPlatform();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.visionOS.getter();
  v5 = static SFPlatform.isPlatform(_:)();
  v6 = *(v2 + 8);
  v6(v4, v1);
  if (v5)
  {
    return 1;
  }

  static SFPlatform.macOS.getter();
  v8 = static SFPlatform.isPlatform(_:)();
  v6(v4, v1);
  if (v8)
  {
    return 0;
  }

  else
  {
    return *(v0 + 24);
  }
}

uint64_t sub_100419510(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004195AC, v3, 0);
}

uint64_t sub_1004195AC(uint64_t a1)
{
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (!v3)
    {
      v8 = *(v1 + 24);
      v9 = sub_1003D92E8();
      *(v8 + 16) = v9;

      if (v9 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() == 1)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (result)
          {
            goto LABEL_9;
          }
        }
      }

      else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_9:
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v10 = *(v9 + 32);
        }

        v11 = v10;

        v12 = [v11 bundleIdentifier];

        if (v12)
        {
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          v16._countAndFlagsBits = 0x6C7070612E6D6F63;
          v16._object = 0xEA00000000002E65;
          v17 = String.hasPrefix(_:)(v16);
          if (v13 == 0xD000000000000014 && 0x8000000100790320 == v15)
          {

            v18 = 0;
          }

          else
          {
            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v18 = v17 & (v19 ^ 1);
          }

          *(*(v1 + 24) + 24) = v18 & 1;
        }

        goto LABEL_21;
      }

LABEL_21:
      v4 = SFFilesAppAvailable();
      v20 = *(v8 + 16);
      if (v20)
      {
        if (v20 >> 62)
        {
          v22 = v4;
          v21 = _CocoaArrayWrapper.endIndex.getter();
          v4 = v22;
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v4 |= v21 != 0;
      }

      goto LABEL_4;
    }
  }

  v4 = 0;
LABEL_4:
  v5 = *(v1 + 8);
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t sub_100419808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v42 = a2;
  v5 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v34 - v9;
  v41 = type metadata accessor for URL();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SFPlatform();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SFFilesAppAvailable())
  {
    v34 = v6;
    v35 = a1;
    v19 = a3;
    static SFPlatform.visionOS.getter();
    v20 = static SFPlatform.isPlatform(_:)();
    v21 = *(v16 + 8);
    v21(v18, v15);
    if (v20)
    {
      v22 = 0;
    }

    else
    {
      static SFPlatform.macOS.getter();
      v23 = static SFPlatform.isPlatform(_:)();
      v21(v18, v15);
      if (v23)
      {
        v22 = 1;
      }

      else
      {
        v22 = *(v36 + 24) ^ 1;
      }
    }

    a3 = v19;
    v6 = v34;
    a1 = v35;
  }

  else
  {
    v22 = 0;
  }

  (*(v12 + 16))(v14, v42, v11);
  if ((*(v12 + 88))(v14, v11) == enum case for SFAirDropReceive.ItemDestination.customURL(_:))
  {
    (*(v12 + 96))(v14, v11);
    v24 = v39;
    v25 = *(v39 + 32);
    v42 = a3;
    v26 = v38;
    v27 = v41;
    v25(v38, v14, v41);
    v28 = v40;
    (*(v24 + 16))(v40, v26, v27);
    (*(v24 + 56))(v28, 0, 1, v27);
    v43 = 0;
    v29 = v37;
    sub_100333278(v28, v37);
    v30 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v31 = swift_allocObject();
    sub_1003332E8(v29, v31 + v30);
    *(v31 + ((v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    sub_100005508(v28, &unk_100974E00, &qword_1007F8940);
    return (*(v24 + 8))(v26, v27);
  }

  else
  {
    v43 = 0;
    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    *(v33 + 24) = v22 & 1;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100419DB8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X8>)
{
  v72 = a2;
  v69 = a1;
  v73 = type metadata accessor for URL();
  v5 = *(v73 - 8);
  v6 = __chkstk_darwin(v73);
  v75 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v74 = &v64[-v8];
  v9 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for SFPlatform();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = v3;
  v17 = *(v3 + 16);
  if (!v17)
  {
    v18 = a3;
    goto LABEL_8;
  }

  v18 = a3;
  v19 = v17 & 0xFFFFFFFFFFFFFF8;
  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_8:
    v68 = 0;
    goto LABEL_9;
  }

LABEL_73:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v17 & 0xC000000000000001) != 0)
  {

    v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v19 + 16))
    {
      __break(1u);
LABEL_77:
      swift_once();
LABEL_58:
      v48 = type metadata accessor for Logger();
      sub_10000C4AC(v48, qword_10097B528);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Asked to view mixed files and links, only viewing links", v51, 2u);
      }

LABEL_61:
      v76 = 0;
      v52 = swift_allocObject();
      v53 = v68;
      *(v52 + 16) = v14;
      *(v52 + 24) = v53;
      return SFProgressTask.init(_:initialProgress:operation:file:line:)();
    }

    v68 = v17[4];
  }

LABEL_9:
  static SFPlatform.visionOS.getter();
  v20 = static SFPlatform.isPlatform(_:)();
  v19 = *(v14 + 8);
  (v19)(v16, v13);
  if (v20)
  {
    v21 = 1;
  }

  else
  {
    static SFPlatform.macOS.getter();
    v22 = static SFPlatform.isPlatform(_:)();
    (v19)(v16, v13);
    if (v22)
    {
      v65 = 0;
      goto LABEL_15;
    }

    v21 = *(v71 + 24);
  }

  v65 = v21;
LABEL_15:
  v13 = v9;
  (*(v10 + 16))(v12, v72, v9);
  v23 = (*(v10 + 88))(v12, v9);
  v9 = v69;
  v67 = v18;
  if (v23 != enum case for SFAirDropReceive.ItemDestination.customApp(_:))
  {
LABEL_40:
    (*(v10 + 8))(v12, v13);
LABEL_42:
    v12 = v73;
    v17 = v74;
    goto LABEL_43;
  }

  (*(v10 + 96))(v12, v13);
  v13 = *v12;
  v14 = v12[1];
  v24 = *v12 == 0xD000000000000034 && 0x800000010078AA10 == v14;
  if (v24)
  {

    goto LABEL_42;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v12 = v73;
  v17 = v74;
  if ((v25 & 1) != 0 || (v18 = *(v71 + 16)) == 0)
  {

    goto LABEL_43;
  }

  v9 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
LABEL_65:

    v9 = v69;
    goto LABEL_43;
  }

  v16 = 0;
  v70 = v5;
  v71 = v18 & 0xC000000000000001;
  while (1)
  {
    if (v71)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      if (v16 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_73;
      }

      v26 = *(v18 + 8 * v16 + 32);
      v5 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        goto LABEL_39;
      }
    }

    v19 = v18;
    v72 = v26;
    v27 = [v26 bundleIdentifier];
    if (!v27)
    {
      goto LABEL_26;
    }

    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v29 == v13 && v31 == v14)
    {
      break;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v12 = v73;
    v17 = v74;
    if (v33)
    {

      goto LABEL_67;
    }

LABEL_26:

    ++v16;
    v24 = v5 == v10;
    v5 = v70;
    v18 = v19;
    if (v24)
    {
      goto LABEL_65;
    }
  }

  v12 = v73;
  v17 = v74;
LABEL_67:
  v9 = v69;
  v5 = v70;
  if (qword_100973840 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_10000C4AC(v56, qword_10097D2F8);
  v57 = v72;
  v58 = v72;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 138412290;
    *(v61 + 4) = v58;
    *v62 = v57;
    v63 = v58;
    _os_log_impl(&_mh_execute_header, v59, v60, "Opening with chosen app %@", v61, 0xCu);
    sub_100005508(v62, &qword_100975400, &qword_1007F65D0);

    v17 = v74;
  }

  v65 = 1;
  v68 = v57;
LABEL_43:
  v34 = *(v9 + 16);
  v66 = v34;
  if (v34)
  {
    v37 = *(v5 + 2);
    v36 = v5 + 16;
    v35 = v37;
    v72 = ((v36[64] + 32) & ~v36[64]);
    v38 = &v72[v9];
    v39 = *(v36 + 7);
    v40 = (v36 + 16);
    v70 = v36 - 8;
    v14 = _swiftEmptyArrayStorage;
    v71 = v37;
    v37(v17, v38, v12);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v70)(v17, v12);
      }

      else
      {
        v41 = v36;
        v42 = *v40;
        (*v40)(v75, v17, v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, *(v14 + 16) + 1, 1);
          v14 = v76;
        }

        v45 = *(v14 + 16);
        v44 = *(v14 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_10028FAB4((v44 > 1), v45 + 1, 1);
          v14 = v76;
        }

        *(v14 + 16) = v45 + 1;
        v46 = &v72[v14 + v45 * v39];
        v12 = v73;
        v42(v46, v75, v73);
        v36 = v41;
        v17 = v74;
        v35 = v71;
      }

      v38 += v39;
      if (!--v34)
      {
        break;
      }

      v35(v17, v38, v12);
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v47 = *(v14 + 16);
  if (v47)
  {
    if (v47 != v66)
    {
      if (qword_1009737B0 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_77;
    }

    goto LABEL_61;
  }

  v76 = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = v68;
  *(v54 + 24) = v65;
  *(v54 + 32) = v69;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_10041A770()
{

  return swift_deallocClassInstance();
}

BOOL sub_10041A7CC()
{
  v0 = type metadata accessor for SFPlatform();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.macOS.getter();
  v4 = static SFPlatform.isPlatform(_:)();
  (*(v1 + 8))(v3, v0);
  return (v4 & 1) == 0;
}

uint64_t sub_10041A8F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerGenericFiles();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10041A92C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100419510(a1);
}

uint64_t sub_10041AA1C(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10041AABC, v2, 0);
}

uint64_t sub_10041AABC()
{
  v0[4] = [objc_allocWithZone(type metadata accessor for SDAirDropMoveToAppShareSheet()) init];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_10041AB80;
  v2 = v0[2];

  return sub_10066D568(v2);
}

uint64_t sub_10041AB80(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v6 = *(v4 + 24);

    return _swift_task_switch(sub_10041ACD8, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_10041ACD8()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10041AD40@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v107 = &v99 - v5;
  v6 = sub_10028088C(&qword_10097D430, &unk_100808E50);
  __chkstk_darwin(v6 - 8);
  v104 = &v99 - v7;
  v101 = sub_10028088C(&qword_100975358, &unk_1007F8590);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v103 = &v99 - v8;
  v9 = type metadata accessor for Date();
  __chkstk_darwin(v9 - 8);
  v102 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11 - 8);
  v105 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SFAirDrop.DeclineAction();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v127 = (&v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v110 = *(v128 - 8);
  __chkstk_darwin(v128);
  v150 = (&v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = sub_10028088C(&qword_100974EB0, &qword_1007FE410);
  v129 = *(v144 - 8);
  v21 = __chkstk_darwin(v144);
  v143 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v142 = &v99 - v23;
  v24 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v25 = *(v24 - 8);
  v133 = v24;
  v134 = v25;
  v26 = __chkstk_darwin(v24);
  v130 = v27;
  v131 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v113 = "openDestinationRequest";
  v132 = &v99 - v28;
  v145 = v17;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v29 = *(v1 + 16);
  v106 = a1;
  v108 = v13;
  v109 = v14;
  v111 = v16;
  if (!v29)
  {
    goto LABEL_19;
  }

  if (v29 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_4;
    }

LABEL_19:
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v30 < 1)
  {
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_32;
  }

  v135 = v29 & 0xC000000000000001;
  v124 = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v123 = (v110 + 104);
  v122 = enum case for SFAirDropReceive.ItemDestination.customApp(_:);
  v121 = (v18 + 104);
  v120 = v134 + 16;
  v119 = v134 + 32;
  v118 = enum case for SFAirDrop.AcceptAction.single<A>(_:);
  v117 = (v129 + 104);
  v116 = (v129 + 16);
  v115 = v129 + 8;
  v114 = v129 + 32;

  v31 = 0;
  v32 = _swiftEmptyArrayStorage;
  v33 = v131;
  v126 = v29;
  v125 = v30;
  v34 = v133;
  do
  {
    if (v135)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v35 = *(v29 + 8 * v31 + 32);
    }

    v36 = v35;
    v37 = [v35 bundleIdentifier];
    if (v37)
    {
      v138 = v31;
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
      v136 = v40;

      v140 = v36;
      v42 = [v36 localizedName];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v139 = *(sub_10028088C(&qword_10097B140, &qword_1007FE418) + 48);
      v46 = v150;
      *v150 = v43;
      v46[1] = v45;
      (*v123)();
      v47 = v127;
      *v127 = v39;
      v47[1] = v41;
      v137 = v39;
      (*v121)(v47, v122, v145);
      v141 = v32;
      v48 = v134;
      (*(v134 + 16))(v33, v132, v34);
      v49 = v33;
      v50 = (*(v48 + 80) + 48) & ~*(v48 + 80);
      v51 = swift_allocObject();
      *(v51 + 2) = v43;
      *(v51 + 3) = v45;
      *(v51 + 4) = v39;
      *(v51 + 5) = v136;
      (*(v48 + 32))(&v51[v50], v49, v34);
      sub_10041C6B4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      sub_10041C6B4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      sub_10041C6B4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      swift_bridgeObjectRetain_n();

      v32 = v141;
      v52 = v142;
      SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
      UUID.init()();
      v53 = v144;
      (*v117)(v52, v118, v144);
      (*v116)(v143, v52, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_10028E7FC(0, v32[2] + 1, 1, v32);
      }

      v55 = v32[2];
      v54 = v32[3];
      v33 = v131;
      v30 = v125;
      if (v55 >= v54 >> 1)
      {
        v32 = sub_10028E7FC((v54 > 1), v55 + 1, 1, v32);
      }

      v56 = v129;
      v57 = v144;
      (*(v129 + 8))(v142, v144);
      v32[2] = v55 + 1;
      (*(v56 + 32))(v32 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v55, v143, v57);
      v29 = v126;
      v31 = v138;
    }

    else
    {
    }

    ++v31;
  }

  while (v30 != v31);

LABEL_20:
  v58 = String._bridgeToObjectiveC()();
  v59 = SFLocalizedStringForKey();

  v60 = v132;
  if (v59)
  {
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v146 = v61;
  v147 = v63;
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  v64 = v112;
  Optional.tryUnwrap(_:file:line:)();
  if (v64)
  {

    (*(v134 + 8))(v60, v133);
  }

  v65 = v133;
  v141 = v32;

  v66 = v149;
  v67 = v150;
  *v150 = v148;
  v67[1] = v66;
  (*(v110 + 104))(v67, enum case for SFAirDrop.ButtonConfiguration.text(_:), v128);
  v68 = v134;
  v69 = *(v134 + 16);
  v70 = v131;
  v142 = (v134 + 16);
  v140 = v69;
  (v69)(v131, v60, v65);
  v71 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v144 = *(v68 + 80);
  v72 = swift_allocObject();
  v143 = *(v68 + 32);
  (v143)(v72 + v71, v70, v65);
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  v73 = String._bridgeToObjectiveC()();
  v74 = SFLocalizedStringForKey();

  if (v74)
  {
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0;
  }

  v146 = v75;
  v147 = v77;
  Optional.tryUnwrap(_:file:line:)();

  v139 = v148;
  v150 = v149;
  v78 = String._bridgeToObjectiveC()();
  v79 = SFLocalizedStringForKey();

  if (v79)
  {
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  v83 = v107;
  v84 = v144;
  v146 = v80;
  v147 = v82;
  Optional.tryUnwrap(_:file:line:)();
  v137 = ~v84;
  v138 = 0;

  v86 = v148;
  v87 = v149;
  UUID.init()();
  static Date.now.getter();
  v88 = *(sub_10028088C(&qword_100975360, &unk_100801D40) + 80);
  v89 = v103;
  v90 = v150;
  *v103 = v139;
  *(v89 + 1) = v90;
  *(v89 + 2) = v86;
  *(v89 + 3) = v87;
  *(v89 + 4) = v141;
  v17 = v109;
  (*(v109 + 16))(&v89[v88], v111, v108);
  (*(v100 + 104))(v89, enum case for SFAirDrop.PermissionRequest.Style.alert<A>(_:), v101);
  v91 = sub_10028088C(&qword_10097D440, &qword_100808E60);
  (*(*(v91 - 8) + 56))(v104, 1, 1, v91);
  sub_10041C6B4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  sub_10041C6B4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  sub_10041C6B4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v92 = v132;
  SFAirDrop.PermissionRequest.init(id:requestDate:style:isAnswered:telemetryData:)();
  v93 = type metadata accessor for TaskPriority();
  v2 = v92;
  (*(*(v93 - 8) + 56))(v83, 1, 1, v93);
  v18 = v131;
  v16 = v133;
  (v140)(v131, v92, v133);
  if (qword_1009735E0 != -1)
  {
    goto LABEL_34;
  }

LABEL_32:
  v94 = static AirDropActor.shared;
  v95 = sub_10041C6B4(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v96 = (v144 + 32) & v137;
  v97 = swift_allocObject();
  *(v97 + 16) = v94;
  *(v97 + 24) = v95;
  (v143)(v97 + v96, v18, v16);

  v98 = sub_1002B282C(0, 0, v107, &unk_100801D58, v97);
  (*(v17 + 8))(v111, v108);
  (*(v134 + 8))(v2, v16);
  result = sub_10028088C(&qword_100976908, &unk_100801D60);
  *(v106 + *(result + 52)) = v98;
  return result;
}

uint64_t sub_10041BF60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (qword_100973840 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_10097D2F8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10000C4E4(a2, a3, &v14);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10000C4E4(a4, a5, &v14);
    _os_log_impl(&_mh_execute_header, v10, v11, "View destination chosen was %s [bundleID = %s]", v12, 0x16u);
    swift_arrayDestroy();
  }

  sub_10028088C(&qword_10097D438, &unk_100801D30);
  return SFProgressContinuation.finish(with:)();
}

uint64_t sub_10041C128()
{
  if (qword_100973840 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_10097D2F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "View destination chosen was 'Cancel', cancelling AirDrop", v3, 2u);
  }

  v4 = type metadata accessor for SFAirDropReceive.Failure();
  sub_10041C6B4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v4 - 8) + 104))(v5, enum case for SFAirDropReceive.Failure.declined(_:), v4);
  sub_10028088C(&qword_10097D438, &unk_100801D30);
  SFProgressContinuation.fail(with:)();
}

uint64_t sub_10041C2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10028088C(&qword_10097D458, &unk_100801D70);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v4[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10041C3D8, v6, 0);
}

uint64_t sub_10041C3D8()
{
  sub_10028088C(&qword_10097D438, &unk_100801D30);
  SFProgressContinuation.task.getter();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1003C11F8;
  v2 = v0[4];
  v3 = v0[2];

  return SFProgressTask.finalValue.getter(v3, v2);
}

uint64_t sub_10041C4C8()
{
  sub_10028088C(&qword_10097D438, &unk_100801D30);

  return sub_10041C128();
}

uint64_t sub_10041C534(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10041C2D0(a1, v6, v7, v1 + v5);
}

uint64_t sub_10041C630(uint64_t a1)
{
  sub_10028088C(&qword_10097D438, &unk_100801D30);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];

  return sub_10041BF60(a1, v3, v4, v5, v6);
}

uint64_t sub_10041C6B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10041C6FC(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((SFFilesAppAvailable() & 1) == 0)
  {
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 == enum case for SFAirDropReceive.ItemDestination.customApp(_:))
    {
      (*(v3 + 96))(v5, v2);
      if (*v5 != 0xD000000000000034 || 0x800000010078AA10 != v5[1])
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v6 = v10 ^ 1;
        return v6 & 1;
      }
    }

    else if (v8 != enum case for SFAirDropReceive.ItemDestination.noItem(_:))
    {
      (*(v3 + 8))(v5, v2);
      v6 = 1;
      return v6 & 1;
    }
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t sub_10041C8A8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097D460);
  v1 = sub_10000C4AC(v0, qword_10097D460);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10041C970(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_10041CB20, v6, 0);
}

uint64_t sub_10041CB20(uint64_t a1)
{
  v47 = v1;
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (v3)
    {
LABEL_3:
      v2 = 0;
    }

    else
    {
      v4 = SFAirDropReceive.AskRequest.files.getter();
      v5 = v4;
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = v1[11];
        v44 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        while (v7 < *(v5 + 16))
        {
          v9 = v1[12];
          v10 = v1[10];
          (*(v8 + 16))(v9, v44 + *(v8 + 72) * v7, v10);
          SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
          (*(v8 + 8))(v9, v10);
          v11 = String._bridgeToObjectiveC()();

          v12 = [v11 pathExtension];

          if (!v12)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v12 = String._bridgeToObjectiveC()();
          }

          v13 = SFIsNote();

          if ((v13 & 1) == 0)
          {

            goto LABEL_3;
          }

          if (v6 == ++v7)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        swift_once();
        v17 = v1[8];
        v16 = v1[9];
        v18 = v1[7];
        v19 = v1[2];
        v20 = type metadata accessor for Logger();
        sub_10000C4AC(v20, qword_10097D460);
        (*(v17 + 16))(v16, v19, v18);
        swift_errorRetain();
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();

        v23 = os_log_type_enabled(v21, v22);
        v24 = v1[8];
        v25 = v1[9];
        v26 = v1[7];
        if (v23)
        {
          v28 = v1[5];
          v27 = v1[6];
          v29 = v1[4];
          v43 = v22;
          v30 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v46 = v45;
          *v30 = 136315394;
          v41 = v21;
          SFAirDropReceive.AskRequest.id.getter();
          sub_1002891F4();
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v31 = v26;
          v33 = v32;
          (*(v28 + 8))(v27, v29);
          (*(v24 + 8))(v25, v31);
          v34 = sub_10000C4E4(v40, v33, &v46);

          *(v30 + 4) = v34;
          *(v30 + 12) = 2112;
          swift_errorRetain();
          v35 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 14) = v35;
          *v42 = v35;
          _os_log_impl(&_mh_execute_header, v41, v43, "Failed to get Notes app for ask request %s: %@", v30, 0x16u);
          sub_100005508(v42, &qword_100975400, &qword_1007F65D0);

          sub_10000C60C(v45);
        }

        else
        {

          (*(v24 + 8))(v25, v26);
        }
      }

      else
      {
LABEL_11:

        v14 = objc_allocWithZone(LSApplicationRecord);
        v15 = sub_10066F3F8(0xD000000000000015, 0x8000000100790380, 1);
        v36 = v1[3];
        v37 = *(v36 + 16);
        *(v36 + 16) = v15;
      }

      v2 = *(v1[3] + 16) != 0;
    }
  }

  v38 = v1[1];

  return v38(v2);
}

uint64_t sub_10041CFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_10041D424@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerNotes();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10041D45C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_10041C970(a1);
}

void sub_10041D51C(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 1163153230;
  v5 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_100005508(v5, &qword_100981D40, &unk_1007FA6C0);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10041D698(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_10041D734()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097D558);
  v1 = sub_10000C4AC(v0, qword_10097D558);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10041D7FC(int a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100973850 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097D558);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "MAEIssueDCRT failed with %@", v10, 0xCu);
      sub_10028924C(v11);
    }

    swift_beginAccess();
    *(a3 + 16) = a2;
  }

  dispatch_group_leave(group);
}

uint64_t sub_10041D984(uint64_t a1)
{
  v1 = _convertErrorToNSError(_:)();
  HasDomainAndErrorCode = mobileactivationErrorHasDomainAndErrorCode();

  if (HasDomainAndErrorCode)
  {
    return 1;
  }

  v3 = _convertErrorToNSError(_:)();
  v4 = mobileactivationErrorHasDomainAndErrorCode();

  if (v4)
  {
    return 1;
  }

  v5 = _convertErrorToNSError(_:)();
  v6 = mobileactivationErrorHasDomainAndErrorCode();

  if (v6)
  {
    return 1;
  }

  v7 = _convertErrorToNSError(_:)();
  v8 = mobileactivationErrorHasDomainAndErrorCode();

  if (v8)
  {
    return 1;
  }

  v10 = _convertErrorToNSError(_:)();
  v11 = mobileactivationErrorHasDomainAndErrorCode();

  return v11;
}

char *sub_10041DA70()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v42 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  aBlock[4] = sub_10041E258;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10041D698;
  aBlock[3] = &unk_1008E0AF8;
  v11 = _Block_copy(aBlock);

  v12 = v9;
  MAEIssueDCRTWithCompletion();
  _Block_release(v11);

  static DispatchTime.now()();
  + infix(_:_:)();
  v13 = *(v1 + 8);
  v13(v4, v0);
  OS_dispatch_group.wait(timeout:)();
  v13(v6, v0);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
  {
    swift_beginAccess();
    if (*v8)
    {
      goto LABEL_18;
    }

    v46 = 0;
    v18 = MAECopyDCRTWithOptions();
    if (v18)
    {
      v19 = v18;
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v15 = v46;
      if (!v46)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
      v21 = 0xF000000000000000;
      v15 = v46;
      if (!v46)
      {
        goto LABEL_16;
      }
    }

    v45 = v6;
    v22 = qword_100973850;
    v23 = v15;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_10097D558);
    v25 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    v44 = v27;
    v28 = v27;
    v29 = v26;
    if (os_log_type_enabled(v26, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v31;
      *v30 = 138412290;
      *(v30 + 4) = v25;
      *v31 = v15;
      v43 = v25;
      _os_log_impl(&_mh_execute_header, v29, v44, "Failed to MAECopyDCRT after MAEIssueDCRT, error: %@", v30, 0xCu);
      sub_10028924C(v42);

      v25 = v29;
      v29 = v43;
    }

    v6 = v45;

LABEL_16:
    if (v21 >> 60 != 15)
    {

      return v6;
    }

    goto LABEL_17;
  }

  if (qword_100973850 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_10097D558);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Timing out for _MAEIssueDCRT", v17, 2u);
  }

LABEL_17:

LABEL_18:
  swift_beginAccess();
  v32 = *v8;
  if (!*v8)
  {
LABEL_22:
    v37 = sub_100010F88(10, 0xD00000000000001CLL, 0x80000001007903A0);
    v39 = v38;
    sub_1000115C8();
    swift_allocError();
    *v40 = v37;
    *(v40 + 8) = v39;
    swift_willThrow();
    goto LABEL_23;
  }

  swift_errorRetain();
  if ((sub_10041D984(v32) & 1) == 0)
  {

    goto LABEL_22;
  }

  v33 = sub_100010F88(39, 0xD000000000000027, 0x80000001007903C0);
  v35 = v34;
  sub_1000115C8();
  swift_allocError();
  *v36 = v33;
  *(v36 + 8) = v35;
  swift_willThrow();

LABEL_23:

  return v6;
}

char *sub_10041E038(__n128 a1)
{
  v1 = MAECopyDCRTWithOptions();
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  if (v5 >> 60 == 15)
  {
    v3 = sub_10041DA70();
  }

  return v3;
}

uint64_t sub_10041E294()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_pathUpdateTask;
  if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_pathUpdateTask))
  {
    if (qword_100973858 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097D570);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Activating path monitor", v10, 2u);
    }

    *(v1 + 112) = 0;
    NWPathMonitor.start(queue:)();
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;
    *(v1 + v6) = sub_1002B3098(0, 0, v5, &unk_100801EA8, v13);
  }

  return result;
}

uint64_t sub_10041E4B0()
{
  v1[8] = v0;
  v2 = sub_10028088C(&qword_100975658, &qword_1007F8A40);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  sub_10028088C(&qword_10097D5E8, &unk_100801E90);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_10041E61C, v0, 0);
}

uint64_t sub_10041E61C()
{
  v1 = v0[8];
  if (*(v1 + 112))
  {
LABEL_8:

    v16 = v0[1];

    return v16();
  }

  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v5 = *(v4 + 56);
  v0[16] = v5;
  v0[17] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v2, 0, 1, v3);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_reachableContinuation;
  v0[18] = OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_reachableContinuation;
  swift_beginAccess();
  sub_10041FED4(v2, v1 + v6);
  swift_endAccess();
  if ((*(v4 + 48))(v1 + v6, 1, v3))
  {
    if (qword_100973858 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097D570);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Finished waiting for reachability", v10, 2u);
    }

    v11 = v0[18];
    v12 = v0[15];
    v13 = v0[16];
    v14 = v0[12];
    v15 = v0[8];

    v13(v12, 1, 1, v14);
    swift_beginAccess();
    sub_10041FED4(v12, v15 + v11);
    swift_endAccess();
    goto LABEL_8;
  }

  v19 = v0[13];
  v18 = v0[14];
  v20 = v0[12];
  (*(v19 + 16))(v18, v1 + v6, v20);
  SFProgressContinuation.task.getter();
  (*(v19 + 8))(v18, v20);
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_10041E968;
  v22 = v0[9];

  return SFProgressTask.finalValue.getter(v0 + 20, v22);
}

uint64_t sub_10041E968()
{
  v2 = *v1;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[8];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v7 = sub_1004200A8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v7 = sub_10041EB14;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10041EB14()
{
  if (qword_100973858 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097D570);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished waiting for reachability", v4, 2u);
  }

  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[12];
  v9 = v0[8];

  v7(v6, 1, 1, v8);
  swift_beginAccess();
  sub_10041FED4(v6, v9 + v5);
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10041ECA0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097D570);
  v1 = sub_10000C4AC(v0, qword_10097D570);
  if (qword_100973760 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10041ED68()
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v10 - 8);
  __chkstk_darwin(v10);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_reachableContinuation;
  v7 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_pathUpdateTask] = 0;
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_queue;
  sub_1002DDC10();
  static DispatchQoS.default.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10041FFF8(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_1002808D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  *&v0[v9] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_pathMonitor] = NWPathMonitor.init()();
  v0[112] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_10041F0AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1003778DC;

    return sub_10041F194();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10041F194()
{
  v1[9] = v0;
  sub_10028088C(&qword_10097D5E8, &unk_100801E90);
  v1[10] = swift_task_alloc();
  v2 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for NWPath.Status();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v4 = type metadata accessor for NWPath();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_10028088C(&qword_1009787B0, &qword_1007FB9A0);
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for NWPathMonitor.Iterator();
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_10041F3FC, v0, 0);
}

uint64_t sub_10041F3FC()
{

  NWPathMonitor.makeAsyncIterator()();
  v1 = sub_10041FFF8(&qword_10097D5F0, type metadata accessor for SDNWPathMonitor, &unk_100801E58);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_reachableContinuation;
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  *(v0 + 240) = enum case for NWPath.Status.satisfied(_:);
  v3 = sub_10041FFF8(&qword_10097D5F8, &type metadata accessor for NWPathMonitor.Iterator, &protocol conformance descriptor for NWPathMonitor.Iterator);
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = sub_10041F548;
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v3);
}

uint64_t sub_10041F548()
{
  *(*v1 + 232) = v0;

  swift_getObjectType();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10041FC58;
  }

  else
  {
    v4 = sub_10041F6A4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10041F6C0()
{
  v50 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 240);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v47 = *(v0 + 72);
    (*(v3 + 32))(*(v0 + 168), v1, v2);
    NWPath.status.getter();
    (*(v10 + 104))(v8, v6, v9);
    v11 = static NWPath.Status.== infix(_:_:)();
    v12 = *(v10 + 8);
    v12(v8, v9);
    v12(v7, v9);
    if ((v11 & 1) == *(v47 + 112))
    {
      (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
    }

    else
    {
      if (qword_100973858 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 160);
      v13 = *(v0 + 168);
      v15 = *(v0 + 144);
      v16 = *(v0 + 152);
      v17 = type metadata accessor for Logger();
      sub_10000C4AC(v17, qword_10097D570);
      (*(v16 + 16))(v14, v13, v15);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      v20 = os_log_type_enabled(v18, v19);
      v22 = *(v0 + 152);
      v21 = *(v0 + 160);
      v23 = *(v0 + 144);
      if (v20)
      {
        v24 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = v48;
        *v24 = 67109378;
        *(v24 + 4) = v11 & 1;
        *(v24 + 8) = 2080;
        v46 = v19;
        v25 = NWPath.debugDescription.getter();
        v27 = v26;
        v28 = *(v22 + 8);
        v28(v21, v23);
        v29 = sub_10000C4E4(v25, v27, &v49);

        *(v24 + 10) = v29;
        _os_log_impl(&_mh_execute_header, v18, v46, "Path update %{BOOL}d - %s", v24, 0x12u);
        sub_10000C60C(v48);
      }

      else
      {

        v28 = *(v22 + 8);
        v28(v21, v23);
      }

      *(*(v0 + 72) + 112) = v11 & 1;
      if (v11)
      {
        v30 = *(v0 + 216);
        v31 = *(v0 + 88);
        v32 = *(v0 + 96);
        v33 = *(v0 + 72);
        swift_beginAccess();
        if ((*(v32 + 48))(v33 + v30, 1, v31))
        {
          v28(*(v0 + 168), *(v0 + 144));
          swift_endAccess();
        }

        else
        {
          v34 = *(v0 + 168);
          v35 = *(v0 + 144);
          v37 = *(v0 + 96);
          v36 = *(v0 + 104);
          v38 = *(v0 + 88);
          (*(v37 + 16))(v36, *(v0 + 72) + *(v0 + 216), v38);
          swift_endAccess();
          *(v0 + 244) = 1;
          SFProgressContinuation.finish(with:)();
          (*(v37 + 8))(v36, v38);
          v28(v34, v35);
        }

        v39 = *(v0 + 216);
        v41 = *(v0 + 72);
        v40 = *(v0 + 80);
        (*(*(v0 + 96) + 56))(v40, 1, 1, *(v0 + 88));
        swift_beginAccess();
        sub_10041FED4(v40, v41 + v39);
        swift_endAccess();
      }

      else
      {
        v28(*(v0 + 168), *(v0 + 144));
      }
    }

    v42 = sub_10041FFF8(&qword_10097D5F8, &type metadata accessor for NWPathMonitor.Iterator, &protocol conformance descriptor for NWPathMonitor.Iterator);
    v43 = swift_task_alloc();
    *(v0 + 224) = v43;
    *v43 = v0;
    v43[1] = sub_10041F548;
    v44 = *(v0 + 176);
    v45 = *(v0 + 184);

    return dispatch thunk of AsyncIteratorProtocol.next()(v44, v45, v42);
  }
}

uint64_t sub_10041FC58()
{
  *(v0 + 64) = *(v0 + 232);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10041FCE4()
{
  sub_100420040(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_reachableContinuation);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SDNWPathMonitor(uint64_t a1)
{
  result = qword_10097D5D0;
  if (!qword_10097D5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10041FDA8(uint64_t a1)
{
  sub_10041FE70(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10041FE70(uint64_t a1)
{
  if (!qword_10097D5E0)
  {
    sub_100280938(&unk_1009755E0, &qword_1007F8970);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10097D5E0);
    }
  }
}

uint64_t sub_10041FED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097D5E8, &unk_100801E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10041FF44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_10041F08C(a1, v4, v5, v6);
}

uint64_t sub_10041FFF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100420040(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097D5E8, &unk_100801E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004200AC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097D600);
  v1 = sub_10000C4AC(v0, qword_10097D600);
  if (qword_1009736C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100420174()
{
  v37 = sub_10028088C(&qword_10097D808, &unk_100801F00);
  __chkstk_darwin(v37);
  v34 = &v21 - v0;
  v1 = sub_10028088C(&qword_10097D810, &qword_100803210);
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin(v1);
  v33 = &v21 - v2;
  v32 = type metadata accessor for SFTempPairingSenderStateUpdate();
  __chkstk_darwin(v32);
  v31 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10028088C(&qword_10097D818, &qword_100801F10);
  __chkstk_darwin(v30);
  v26 = &v21 - v4;
  v5 = sub_10028088C(&qword_10097D820, &unk_100801F18);
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v25 = &v21 - v6;
  v24 = type metadata accessor for SFTempPairingStateUpdate();
  __chkstk_darwin(v24);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v21 = sub_1002DDC10();
  static DispatchQoS.userInitiated.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_1004217EC();
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = v29;
  *(v29 + 16) = v13;
  *(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server) = 0;
  *(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_client) = 0;
  SFTempPairingStateUpdate.init()();
  sub_10028088C(&qword_10097D828, &qword_100801F28);
  swift_allocObject();
  v15 = CurrentValueSubject.init(_:)();
  *(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_receiverStateUpdateSequence) = v15;
  v38 = v15;
  sub_100011630(&qword_10097D830, &qword_10097D828, &qword_100801F28, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.values.getter();
  sub_100011630(&qword_10097D838, &qword_10097D818, &qword_100801F10, &protocol conformance descriptor for AsyncPublisher<A>);
  v16 = v25;
  SFNoThrowAsyncSequence.init<A>(_:)();
  (*(v27 + 32))(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_receiverStateUpdates, v16, v28);
  SFTempPairingSenderStateUpdate.init()();
  sub_10028088C(&qword_10097D840, &unk_100801F30);
  swift_allocObject();
  v17 = CurrentValueSubject.init(_:)();
  *(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdateSequence) = v17;
  v38 = v17;
  sub_100011630(&qword_10097D848, &qword_10097D840, &unk_100801F30, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.values.getter();
  sub_100011630(&qword_10097D850, &qword_10097D808, &unk_100801F00, &protocol conformance descriptor for AsyncPublisher<A>);
  v18 = v33;
  SFNoThrowAsyncSequence.init<A>(_:)();
  (*(v35 + 32))(v14 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdates, v18, v36);
  v19 = [objc_opt_self() defaultCenter];
  [v19 addObserver:v14 selector:"handleRapportIdentitiesChanged" name:off_1009731D0 object:0];

  return v14;
}

void sub_100420850()
{
  v21[3] = &type metadata for SharingFeatureFlags;
  v21[4] = sub_10002F2C4();
  LOBYTE(v21[0]) = 5;
  v1 = isFeatureEnabled(_:)();
  sub_10000C60C(v21);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_client;
    if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_client))
    {
      v9 = *(v0 + 16);
      v10 = objc_allocWithZone(type metadata accessor for SDTempPairingClient(0));
      v11 = v9;
      v12 = v0;
      v13 = sub_10040CF68(v11);
      v14 = *(v0 + v2);
      *(v12 + v2) = v13;
      v4 = v13;

      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      *(v17 + 24) = v16;
      v18 = (v4 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
      v19 = *(&v4->isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
      v20 = *(&v4[1].isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
      *v18 = sub_100421A20;
      v18[1] = v17;

      sub_1002F5A40(v19, v20);

      sub_10040D338();
      sub_100421110(v4);
      goto LABEL_13;
    }

    if (qword_100973860 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097D600);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Attempted to start browsing but already browsing";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    }
  }

  else
  {
    if (qword_100973860 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_10097D600);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "PIN Pairing not enabled";
      goto LABEL_11;
    }
  }

LABEL_13:
}

void sub_100420B18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_100421110(Strong);
    }

    else
    {
    }
  }
}

uint64_t sub_100420BA8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100420E40();
  }

  return result;
}

void sub_100420C00()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_client);
  if (v1)
  {
    v2 = v1;
    v3 = sub_100421844();
    sub_10040F030(v3, v4);
  }

  else
  {
    if (qword_100973860 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097D600);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Attempting to connect while not browsing.", v7, 2u);
    }
  }
}

void sub_100420D34()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_client);
  if (v1)
  {
    oslog = v1;
    sub_10040F8B4();
  }

  else
  {
    if (qword_100973860 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097D600);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Attempting to disconnect while not browsing.", v4, 2u);
    }
  }
}

uint64_t sub_100420E40()
{
  v1 = v0;
  v11 = sub_10028088C(&qword_10097D808, &unk_100801F00);
  __chkstk_darwin(v11);
  v10 = sub_10028088C(&qword_10097D810, &qword_100803210);
  v2 = *(v10 - 8);
  __chkstk_darwin(v10);
  v4 = &v9 - v3;
  v9 = type metadata accessor for SFTempPairingSenderStateUpdate();
  __chkstk_darwin(v9);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdateSequence;
  LOBYTE(v12) = 1;

  CurrentValueSubject.send(completion:)();

  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server) = 0;

  SFTempPairingSenderStateUpdate.init()();
  sub_10028088C(&qword_10097D840, &unk_100801F30);
  swift_allocObject();
  v6 = CurrentValueSubject.init(_:)();
  *(v0 + v5) = v6;

  v12 = v6;
  sub_100011630(&qword_10097D848, &qword_10097D840, &unk_100801F30, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.values.getter();

  sub_100011630(&qword_10097D850, &qword_10097D808, &unk_100801F00, &protocol conformance descriptor for AsyncPublisher<A>);
  SFNoThrowAsyncSequence.init<A>(_:)();
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdates;
  swift_beginAccess();
  (*(v2 + 40))(v1 + v7, v4, v10);
  return swift_endAccess();
}

uint64_t sub_100421110(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFTempPairingStateUpdate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - v10;
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  SFTempPairingStateUpdate.init()();
  sub_10040C4E8();
  SFTempPairingStateUpdate.nearbyDeviceNames.setter();
  sub_10041318C();
  SFTempPairingStateUpdate.connectedDeviceNames.setter();
  SFTempPairingStateUpdate.connectionState.setter();
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_nearbyDevicesByIdentifier;
  swift_beginAccess();
  v15 = *(a1 + v14);

  sub_10054AA7C(1, v15);

  SFTempPairingStateUpdate.isNearbyDeviceClose.setter();
  sub_100421844();
  SFTempPairingStateUpdate.sharingName.setter();
  if (qword_100973860 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_10097D600);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29[0] = v27;
    *v19 = 136315138;
    swift_beginAccess();
    v28 = v2;
    v20 = *(v5 + 16);
    v20(v11, v13, v4);
    v20(v8, v11, v4);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    (*(v5 + 8))(v11, v4);
    v24 = sub_10000C4E4(v21, v23, v29);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Updating pairing state: %s", v19, 0xCu);
    sub_10000C60C(v27);
  }

  swift_beginAccess();
  CurrentValueSubject.send(_:)();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_1004214D0()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_receiverStateUpdates;
  v2 = sub_10028088C(&qword_10097D820, &unk_100801F18);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdates;
  v4 = sub_10028088C(&qword_10097D810, &qword_100803210);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDTempPairingService(uint64_t a1)
{
  result = qword_10097D670;
  if (!qword_10097D670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100421660(uint64_t a1)
{
  sub_100421798(319, &qword_10097D680, &type metadata accessor for SFTempPairingStateUpdate);
  if (v1 <= 0x3F)
  {
    sub_100421798(319, &unk_10097D688, &type metadata accessor for SFTempPairingSenderStateUpdate);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100421798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for SFNoThrowAsyncSequence();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1004217EC()
{
  result = qword_100973C60;
  if (!qword_100973C60)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973C60);
  }

  return result;
}

id sub_100421844()
{
  v0 = objc_opt_self();
  result = [v0 sharedMonitor];
  if (result)
  {
    v2 = result;
    v3 = [result meCard];

    if (v3)
    {
      v4 = [objc_opt_self() stringFromContact:v3 style:0];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v6;
      }
    }

    result = [v0 sharedMonitor];
    if (result)
    {
      v7 = result;
      v8 = [result computerName];

      if (v8)
      {
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        if (qword_100973860 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_10000C4AC(v9, qword_10097D600);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Could not find local sharing name.", v12, 2u);
        }

        return 0;
      }

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100421A28()
{
  v1 = sub_10028088C(&qword_10097A7E8, &unk_1007FD9C8);
  __chkstk_darwin(v1 - 8);
  v3 = v25 - v2 + 8;
  v4 = type metadata accessor for NWEndpoint.Port();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for NWListener.Service();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v25[3] = &type metadata for SharingFeatureFlags;
  v25[4] = sub_10002F2C4();
  LOBYTE(v25[0]) = 5;
  v9 = isFeatureEnabled(_:)();
  sub_10000C60C(v25);
  if ((v9 & 1) == 0)
  {
    if (qword_100973860 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_10097D600);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "PIN Pairing not enabled";
    goto LABEL_11;
  }

  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server))
  {
    if (qword_100973860 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_10097D600);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Attempted to start advertising but already advertising";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

LABEL_12:

    return;
  }

  sub_100421844();

  v24 = v0;
  v17 = *(v0 + 16);
  type metadata accessor for SDTempPairingServer();
  v18 = swift_allocObject();
  v18[6] = 0;
  v18[3] = 0;
  v18[4] = 0;
  v18[8] = _swiftEmptyArrayStorage;
  v18[9] = 0;
  v18[7] = [objc_allocWithZone(RPClient) init];
  v18[2] = v17;
  v19 = v17;
  NWListener.Service.init(applicationService:)();
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();

  static NWEndpoint.Port.any.getter();
  type metadata accessor for NWListener();
  swift_allocObject();
  v18[5] = NWListener.init(using:on:)();
  (*(v6 + 16))(v3, v8, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  NWListener.service.setter();

  (*(v6 + 8))(v8, v5);
  v20 = v24;
  *(v24 + v10) = v18;

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v18[3];
  v23 = v18[4];
  v18[3] = sub_10042209C;
  v18[4] = v21;

  sub_1002F5A40(v22, v23);

  if (*(v20 + v10))
  {

    sub_1005930E8();
  }
}

unint64_t sub_100422100()
{
  result = qword_10097D9A8;
  if (!qword_10097D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D9A8);
  }

  return result;
}

void _sSo11SFUserAlertC16DaemoniOSLibraryE015credentialShareB09isPasskeyABSb_tFZ_0(char a1)
{
  v2 = [objc_allocWithZone(SFUserAlert) init];
  v3 = String._bridgeToObjectiveC()();
  v4 = SFLocalizedStringForKey();

  if (v4)
  {
    [v2 setTitle:v4];

    if (a1)
    {
      v5 = String._bridgeToObjectiveC()();
      v6 = String._bridgeToObjectiveC()();
      v7 = SFLocalizedStringForKeyInStringsFileNamed();

      if (!v7)
      {
LABEL_5:
        [v2 setMessage:v7];

        [v2 setHasDefaultButton:1];
        return;
      }
    }

    else
    {
      v8 = String._bridgeToObjectiveC()();
      v7 = SFLocalizedStringForKey();

      if (!v7)
      {
        goto LABEL_5;
      }
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = String._bridgeToObjectiveC()();

    goto LABEL_5;
  }

  __break(1u);
}

void _sSo11SFUserAlertC16DaemoniOSLibraryE07carPlayB0AByFZ_0()
{
  v0 = [objc_allocWithZone(SFUserAlert) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = SFLocalizedStringForKey();

  if (v2)
  {
    [v0 setTitle:v2];

    v3 = String._bridgeToObjectiveC()();
    v4 = SFLocalizedStringForKey();

    [v0 setMessage:v4];
    [v0 setHasDefaultButton:1];
  }

  else
  {
    __break(1u);
  }
}

void _sSo11SFUserAlertC16DaemoniOSLibraryE03mdmB0AByFZ_0()
{
  v0 = [objc_allocWithZone(SFUserAlert) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = SFLocalizedStringForKey();

  if (v2)
  {
    [v0 setTitle:v2];

    v3 = String._bridgeToObjectiveC()();
    v4 = SFLocalizedStringForKey();

    [v0 setMessage:v4];
    [v0 setHasDefaultButton:1];
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1004224E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100422518(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
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

uint64_t sub_100422574(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100422600(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 25))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10042265C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1004226C0()
{
  v1 = type metadata accessor for KeyDataFormatStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for IDSIdentifierFormatStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v32 = 0;
  *(&v32 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(144);
  v30 = v32;
  v9._countAndFlagsBits = 0xD000000000000016;
  v9._object = 0x80000001007907D0;
  String.append(_:)(v9);
  v32 = v0[1];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v10._countAndFlagsBits = 0x20644D202C22;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v32 = v0[3];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v11._countAndFlagsBits = 0x2720534449202CLL;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  v12 = *(v0 + 12);
  v13 = *(v0 + 13);
  if (v13)
  {
    *&v31 = *(v0 + 12);
    *(&v31 + 1) = v13;

    static FormatStyle<>.idsID.getter();
    sub_100423BD8(&qword_10097D9C0, &type metadata accessor for IDSIdentifierFormatStyle, &protocol conformance descriptor for IDSIdentifierFormatStyle);
    Sequence.formatted<A>(_:)();
    (*(v6 + 8))(v8, v5);

    v14 = *(&v32 + 1);
    v12 = v32;
  }

  else
  {
    v14 = 0;
  }

  *&v32 = v12;
  *(&v32 + 1) = v14;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v15._countAndFlagsBits = 0x204B5249202C27;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16 = *(v0 + 9);
  if (v16 >> 60 == 15)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    *&v31 = *(v0 + 8);
    *(&v31 + 1) = v16;
    sub_100294008(v31, v16);
    static FormatStyle<>.irk.getter();
    sub_100423B84();
    sub_100423BD8(&qword_10097D9B8, &type metadata accessor for KeyDataFormatStyle, &protocol conformance descriptor for KeyDataFormatStyle);
    Sequence.formatted<A>(_:)();
    (*(v2 + 8))(v4, v1);
    sub_100026AC0(v31, *(&v31 + 1));
    v18 = *(&v32 + 1);
    v17 = v32;
  }

  *&v32 = v17;
  *(&v32 + 1) = v18;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v19._countAndFlagsBits = 0x204B50202CLL;
  v19._object = 0xE500000000000000;
  String.append(_:)(v19);
  v20 = *(v0 + 11);
  if (v20 >> 60 == 15)
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    *&v31 = *(v0 + 10);
    *(&v31 + 1) = v20;
    sub_100294008(v31, v20);
    static FormatStyle<>.publicKey.getter();
    sub_100423B84();
    sub_100423BD8(&qword_10097D9B8, &type metadata accessor for KeyDataFormatStyle, &protocol conformance descriptor for KeyDataFormatStyle);
    Sequence.formatted<A>(_:)();
    (*(v2 + 8))(v4, v1);
    sub_100026AC0(v31, *(&v31 + 1));
    v22 = *(&v32 + 1);
    v21 = v32;
  }

  *&v32 = v21;
  *(&v32 + 1) = v22;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v23._object = 0x80000001007907F0;
  v23._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v23);
  v31 = *v0;
  v32 = v31;
  sub_100339908(&v32, &v29);
  sub_1002F4C88();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10028BCC0(v31, *(&v31 + 1));
  v24._countAndFlagsBits = 0xD000000000000017;
  v24._object = 0x8000000100790810;
  String.append(_:)(v24);
  v31 = v0[2];
  v29 = v0[2];
  sub_100339908(&v31, v28);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10028BCC0(v29, *(&v29 + 1));
  v25._object = 0x8000000100790830;
  v25._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v25);
  v29 = v0[8];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v26._countAndFlagsBits = 0xD000000000000010;
  v26._object = 0x8000000100790850;
  String.append(_:)(v26);
  LOBYTE(v29) = *(v0 + 144);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return v30;
}

uint64_t sub_100422C80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "RapportBrowseAgent";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "RapportBrowseAgent";
  }

  else
  {
    v7 = "";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100422D2C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100422DAC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100422E18(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100422E94@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7928, *a1);

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

void sub_100422EF4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "RapportBrowseAgent";
  }

  else
  {
    v3 = "";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_100422F34()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_100422F70@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008D7928, v3);

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

uint64_t sub_100422FD4(uint64_t a1)
{
  v2 = sub_100424620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100423010(uint64_t a1)
{
  v2 = sub_100424620();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10042304C(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  _StringGuts.grow(_:)(63);
  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x8000000100790780;
  String.append(_:)(v6);
  sub_1002A9924(a1, a2);
  sub_1002F4C88();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10028BCC0(a1, a2);
  v7._object = 0x80000001007907B0;
  v7._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v7);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return 0;
}

uint64_t sub_100423150(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v17 = a5;
  v14[1] = a4;
  v9 = sub_10028088C(&qword_10097D9F0, &qword_1008024B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_10002CDC0(a1, a1[3]);
  sub_100424620();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3;
  v18 = 0;
  sub_1002A9924(a2, a3);
  sub_1002F3198();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_10028BCC0(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1004232F8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100423C20(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

unint64_t sub_100423364(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v2 = 0x6F72447269417349;
    if (a1 == 8)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 == 7)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000010;
    if (a1 != 5)
    {
      v3 = 0xD000000000000013;
    }

    v4 = a1 <= 6u;
  }

  else
  {
    v1 = 0xD000000000000015;
    if (a1 == 3)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0xD000000000000019;
    if (!a1)
    {
      v3 = 0xD000000000000014;
    }

    v4 = a1 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1004234B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100423364(*a1);
  v5 = v4;
  if (v3 == sub_100423364(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100423540()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100423364(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004235A4(uint64_t a1)
{
  sub_100423364(*v1);
  String.hash(into:)();
}

Swift::Int sub_1004235F8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100423364(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100423658@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100423E44(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100423688@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100423364(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1004236D0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100423E44(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100423704(uint64_t a1)
{
  v2 = sub_1004245CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100423740(uint64_t a1)
{
  v2 = sub_1004245CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10042377C(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_10097D9D8, &qword_1008024A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10002CDC0(a1, a1[3]);
  sub_1004245CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v17 = *v3;
    v13 = *v3;
    v12 = 1;
    sub_100339908(&v17, v11);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v13, *(&v13 + 1));
    v16 = v3[2];
    v13 = v3[2];
    v12 = 2;
    sub_100339908(&v16, v11);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v13, *(&v13 + 1));
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v13 = v3[4];
    v12 = 4;
    sub_100339908(&v15, v11);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v13, *(&v13 + 1));
    v13 = v3[5];
    v14 = v13;
    v12 = 5;
    sub_100339908(&v14, v11);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v13, *(&v13 + 1));
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_100423AF4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100423E90(a2, v9);
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

unint64_t sub_100423B84()
{
  result = qword_10097D9B0;
  if (!qword_10097D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D9B0);
  }

  return result;
}

uint64_t sub_100423BD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100423C20(void *a1)
{
  v3 = sub_10028088C(&qword_10097D9E0, &qword_1008024A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  sub_10002CDC0(a1, a1[3]);
  sub_100424620();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v8 = 0;
    sub_10000C60C(a1);
    sub_10028BCC0(0, 0xF000000000000000);
  }

  else
  {
    v11 = 0;
    sub_1002F309C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v8 = v10[0];
    v9 = v10[1];
    sub_10028BCC0(0, 0xF000000000000000);
    LOBYTE(v10[0]) = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_1002A9924(v8, v9);
    sub_10000C60C(a1);
    sub_10028BCC0(v8, v9);
  }

  return v8;
}

unint64_t sub_100423E44(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7978, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100423E90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_10097D9C8, &qword_100802498);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v81 = 1;
  v9 = a1[3];
  v46 = a1;
  sub_10002CDC0(a1, v9);
  sub_1004245CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v82 = v2;
    v44 = 0uLL;
    v47 = 0;
    v48 = 0;
    v50 = 0uLL;
    v51 = 0;
    v52 = 0;
    v45 = 0;
    v49 = 0xF000000000000000;
    sub_10000C60C(v46);
    v64 = 0;
    v65 = 0xF000000000000000;
    v66 = 0uLL;
    *&v67 = 0;
    *(&v67 + 1) = 0xF000000000000000;
    v68 = v52;
    v69 = v47;
    v70 = v45;
    v71 = 0xF000000000000000;
    v72 = v51;
    v73 = v49;
    v74 = v50;
    v75 = v48;
    v76 = v81;
    *&v77[3] = *&v80[3];
    *v77 = *v80;
    v78 = v44;
    v79 = 2;
    return sub_1003CB878(&v64);
  }

  else
  {
    LOBYTE(v64) = 0;
    *&v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v43 + 1) = v11;
    LOBYTE(v53) = 1;
    sub_1002F309C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v41 = v65;
    v42 = v64;
    sub_10028BCC0(0, 0xF000000000000000);
    LOBYTE(v53) = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = a2;
    v13 = v64;
    v12 = v65;
    sub_10028BCC0(0, 0xF000000000000000);
    LOBYTE(v64) = 3;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *&v39 = v13;
    *(&v39 + 1) = v12;
    v52 = v14;
    v47 = v15;
    LOBYTE(v53) = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v16 = v64;
    v38 = v65;
    sub_10028BCC0(0, 0xF000000000000000);
    LOBYTE(v53) = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = v16;
    v17 = v64;
    v18 = v65;
    sub_10028BCC0(0, 0xF000000000000000);
    LOBYTE(v64) = 6;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v51 = v17;
    v49 = v18;
    *&v50 = v19;
    *(&v50 + 1) = v20;
    LOBYTE(v64) = 7;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v81 = v21 & 1;
    LOBYTE(v64) = 8;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v82 = 0;
    *&v44 = v22;
    *(&v44 + 1) = v23;
    v63 = 9;
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v82 = 0;
    v25 = v24;
    (*(v6 + 8))(v8, v5);
    *&v53 = v42;
    *(&v53 + 1) = v41;
    v26 = v43;
    v54 = v43;
    v27 = v39;
    v55 = v39;
    v28 = v47;
    *&v56 = v52;
    *(&v56 + 1) = v47;
    v29 = *(&v44 + 1);
    v30 = v45;
    *&v57 = v45;
    *(&v57 + 1) = v38;
    *&v58 = v51;
    *(&v58 + 1) = v49;
    v59 = v50;
    *&v60 = v48;
    HIDWORD(v37) = v81;
    BYTE8(v60) = v81;
    v31 = v44;
    v61 = v44;
    v62 = v25;
    sub_1003CB81C(&v53, &v64);
    sub_10000C60C(v46);
    v64 = v42;
    v65 = v41;
    v66 = v26;
    v67 = __PAIR128__(*(&v39 + 1), v27);
    v68 = v52;
    v69 = v28;
    v70 = v30;
    v71 = v38;
    v72 = v51;
    v73 = v49;
    v74 = v50;
    v75 = v48;
    v76 = BYTE4(v37);
    *&v78 = v31;
    *(&v78 + 1) = v29;
    v79 = v25;
    result = sub_1003CB878(&v64);
    v32 = v60;
    v33 = v40;
    *(v40 + 96) = v59;
    *(v33 + 112) = v32;
    *(v33 + 128) = v61;
    *(v33 + 144) = v62;
    v34 = v56;
    *(v33 + 32) = v55;
    *(v33 + 48) = v34;
    v35 = v58;
    *(v33 + 64) = v57;
    *(v33 + 80) = v35;
    v36 = v54;
    *v33 = v53;
    *(v33 + 16) = v36;
  }

  return result;
}

unint64_t sub_1004245CC()
{
  result = qword_10097D9D0;
  if (!qword_10097D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D9D0);
  }

  return result;
}

unint64_t sub_100424620()
{
  result = qword_10097D9E8;
  if (!qword_10097D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D9E8);
  }

  return result;
}

uint64_t _s16DiscoverResponseV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16DiscoverResponseV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004247D8()
{
  result = qword_10097D9F8;
  if (!qword_10097D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D9F8);
  }

  return result;
}

unint64_t sub_100424830()
{
  result = qword_10097DA00;
  if (!qword_10097DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA00);
  }

  return result;
}

unint64_t sub_100424888()
{
  result = qword_10097DA08;
  if (!qword_10097DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA08);
  }

  return result;
}

unint64_t sub_1004248E0()
{
  result = qword_10097DA10;
  if (!qword_10097DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA10);
  }

  return result;
}

unint64_t sub_100424938()
{
  result = qword_10097DA18;
  if (!qword_10097DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA18);
  }

  return result;
}

unint64_t sub_100424990()
{
  result = qword_10097DA20;
  if (!qword_10097DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA20);
  }

  return result;
}

uint64_t sub_1004249E4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097DA28);
  v1 = sub_10000C4AC(v0, qword_10097DA28);
  if (qword_100973748 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t *sub_100424AAC@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100424B74(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_10097DAA0, &unk_100802890);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10002CDC0(a1, a1[3]);
  sub_100426514();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 16);
    v11[0] = 1;
    sub_100426568();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 24);
    v13 = v12;
    v11[23] = 2;
    sub_100339908(&v13, v11);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v12, *(&v12 + 1));
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100424D70()
{
  v1 = 0x6574617473;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_100424DF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1004265BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100424E20(uint64_t a1)
{
  v2 = sub_100426514();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100424E5C(uint64_t a1)
{
  v2 = sub_100426514();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100424E98@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100426728(a2, v6);
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

uint64_t sub_100424EF4(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    a2();
    swift_allocObject();
    v6 = a3();
    *(v8 + v4) = v6;
  }

  return v6;
}

void sub_100425040(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

void sub_1004250F8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

uint64_t sub_100425210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1004252D4;
  v9[3] = &unk_1008E0F48;
  v6 = _Block_copy(v9);
  v7 = *(a4 + 16);

  v7(a4, a1, v6);
  _Block_release(v6);
}

uint64_t sub_1004252D4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {

    v4 = v2;
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  v3(v2, v6);
  sub_10028BCC0(v2, v6);
}

id sub_10042536C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager____lazy_storage___decoder] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager____lazy_storage___encoder] = 0;
  v2 = &v0[OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithSuiteName:v4];

  if (!v5)
  {
    v5 = [objc_opt_self() standardUserDefaults];
  }

  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_localStorage] = v5;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

void sub_100425488(void *a1)
{
  v3 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:{objc_msgSend(a1, "productIdentifier")}];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 supportsDigitalEngraving];

    if (v5)
    {
      v6 = [a1 addressString];
      if (v6)
      {
        v7 = v6;
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        sub_1004256B4(v8, v10, v15);
        if (v15[1])
        {
          sub_10042637C(v15);
        }

        else
        {
          *&v16 = v8;
          *(&v16 + 1) = v10;
          v17 = 0;
          v18 = xmmword_1007F8A80;
          v19 = 0;

          sub_100425A98(&v16);

          sub_10028BCC0(0, 0xF000000000000000);
          v11 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler);
          if (v11)
          {
            v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler + 8);
            v13 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v14 = swift_allocObject();
            v14[2] = v8;
            v14[3] = v10;
            v14[4] = v13;
            sub_1000387D0(v11, v12);

            v11(a1, sub_100426370, v14);
            sub_100015D04(v11, v12);
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_1004256B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_localStorage);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 dictionaryForKey:v8];

  v10 = 0uLL;
  if (!v9)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v11 + 16) || (v12 = sub_100012854(a1, a2), (v13 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_10000C5B0(*(v11 + 56) + 32 * v12, v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v10 = 0uLL;
    goto LABEL_9;
  }

  v15 = v24;
  v14 = v25;
  sub_100424EF4(&OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager____lazy_storage___decoder, &type metadata accessor for JSONDecoder, &JSONDecoder.init());
  sub_1004264A0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100026AC0(v15, v14);

  v16 = v20[0];
  v17 = v20[1];
  v18 = v21;
  v10 = v22;
  v19 = v23;
LABEL_9:
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = v10;
  *(a3 + 40) = v19;
}

void sub_100425A98(__int128 *a1)
{
  v2 = v1;
  sub_100424EF4(&OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager____lazy_storage___encoder, &type metadata accessor for JSONEncoder, &JSONEncoder.init());
  v4 = a1[1];
  v31 = *a1;
  v32 = v4;
  v33 = a1[2];
  sub_1004263E4();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_localStorage;
  v9 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_localStorage);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 dictionaryForKey:v10];

  if (v11)
  {
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = &_swiftEmptyDictionarySingleton;
  }

  v14 = *a1;
  v13 = *(a1 + 1);
  *(&v32 + 1) = &type metadata for Data;
  *&v31 = v5;
  *(&v31 + 1) = v7;
  sub_1000106E0(&v31, v30);

  sub_100294008(v5, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v12;
  sub_100011170(v30, v14, v13, isUniquelyReferenced_nonNull_native);
  v16 = *(v2 + v8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = String._bridgeToObjectiveC()();
  [v16 setObject:isa forKey:{v18, v29}];

  if (qword_100973868 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_10097DA28);
  sub_100294008(v5, v7);
  sub_100426438(a1, &v31);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  sub_100026AC0(v5, v7);
  sub_100426470(a1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *&v30[0] = swift_slowAlloc();
    *v22 = 136315394;
    *&v31 = v5;
    *(&v31 + 1) = v7;
    sub_100294008(v5, v7);
    v23 = String.init<A>(describing:)();
    v25 = sub_10000C4E4(v23, v24, v30);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    *&v31 = v14;
    *(&v31 + 1) = v13;
    v26 = String.init<A>(describing:)();
    v28 = sub_10000C4E4(v26, v27, v30);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Storing engraving data received from AACP %s for:%s", v22, 0x16u);
    swift_arrayDestroy();

    sub_100026AC0(v5, v7);
  }

  else
  {

    sub_100026AC0(v5, v7);
  }
}

void sub_10042604C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 60 != 15)
  {
    v29 = v5;
    v30 = v6;
    sub_100294008(a1, a2);
    if (qword_100973868 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_10097DA28);
    sub_100294008(a1, a2);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    sub_10028BCC0(a1, a2);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23[0] = v22;
      *v14 = 136315138;
      *&v24 = a1;
      *(&v24 + 1) = a2;
      sub_100294008(a1, a2);
      v15 = String.init<A>(describing:)();
      v17 = a4;
      v18 = a3;
      v19 = sub_10000C4E4(v15, v16, v23);

      *(v14 + 4) = v19;
      a3 = v18;
      a4 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "Engraving data received from AACP %s", v14, 0xCu);
      sub_10000C60C(v22);
    }

    *&v24 = a3;
    *(&v24 + 1) = a4;
    v25 = 1;
    v26 = a1;
    v27 = a2;
    v28 = 0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;

      sub_100425A98(&v24);

      sub_10028BCC0(a1, a2);
    }

    else
    {
      sub_10028BCC0(a1, a2);
    }
  }
}

uint64_t sub_10042637C(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097DA88, &unk_100802778);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004263E4()
{
  result = qword_10097DA90;
  if (!qword_10097DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA90);
  }

  return result;
}

unint64_t sub_1004264A0()
{
  result = qword_10097DA98;
  if (!qword_10097DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA98);
  }

  return result;
}

unint64_t sub_100426514()
{
  result = qword_10097DAA8;
  if (!qword_10097DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAA8);
  }

  return result;
}

unint64_t sub_100426568()
{
  result = qword_10097DAB0;
  if (!qword_10097DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAB0);
  }

  return result;
}

uint64_t sub_1004265BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100790990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001007909B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001007909D0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100426728@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_10097DAB8, &qword_1008028A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_100426514();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v19) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v18 = v9;
  v22 = 1;
  sub_100426A04();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v19;
  v22 = 2;
  sub_1002F309C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v12;
  v13 = v20;
  v17 = v19;
  LOBYTE(v19) = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);

  v15 = v17;
  sub_1002A9924(v17, v13);
  sub_10000C60C(a1);

  result = sub_10028BCC0(v15, v13);
  *a2 = v18;
  *(a2 + 8) = v11;
  *(a2 + 16) = v21;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_100426A04()
{
  result = qword_10097DAC0;
  if (!qword_10097DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAC0);
  }

  return result;
}

unint64_t sub_100426A7C()
{
  result = qword_10097DAC8;
  if (!qword_10097DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAC8);
  }

  return result;
}

unint64_t sub_100426AD4()
{
  result = qword_10097DAD0;
  if (!qword_10097DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAD0);
  }

  return result;
}

unint64_t sub_100426B2C()
{
  result = qword_10097DAD8;
  if (!qword_10097DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAD8);
  }

  return result;
}

unint64_t sub_100426B84()
{
  result = qword_10097DAE0;
  if (!qword_10097DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAE0);
  }

  return result;
}

unint64_t sub_100426BD8()
{
  result = qword_10097DAE8;
  if (!qword_10097DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAE8);
  }

  return result;
}

uint64_t sub_100426C40()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097DAF0);
  v1 = sub_10000C4AC(v0, qword_10097DAF0);
  if (qword_100973760 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100426DC0(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100973870 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000C4AC(v8, qword_10097DAF0);
  v10 = v2;
  v31[1] = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31[0] = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v35[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_10000C4E4(*&v10[OBJC_IVAR___SDDeferrableOperation_identifier], *&v10[OBJC_IVAR___SDDeferrableOperation_identifier + 8], v35);
    *(v14 + 12) = 2048;
    v16 = OBJC_IVAR___SDDeferrableOperation_reasons;
    swift_beginAccess();
    *(v14 + 14) = *(*&v10[v16] + 16);

    _os_log_impl(&_mh_execute_header, v11, v12, "%s addReason start: %ld", v14, 0x16u);
    sub_10000C60C(v15);

    a1 = v31[0];
  }

  else
  {
  }

  v17 = *&v10[OBJC_IVAR___SDDeferrableOperation_queue];
  *v7 = v17;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v17)
  {
    sub_10042AB98();
    v19 = OBJC_IVAR___SDDeferrableOperation_reasons;
    swift_beginAccess();
    v20 = *&v10[v19];

    v21 = sub_100569230(a1, v32, v20);

    if (v21)
    {

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v33[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_10000C4E4(a1, v32, v33);
        _os_log_impl(&_mh_execute_header, v22, v23, "Exiting addReason, %s is already in set", v24, 0xCu);
        sub_10000C60C(v25);
      }
    }

    else
    {
      swift_beginAccess();
      v26 = v32;

      sub_10046DAAC(v34, a1, v26);
      swift_endAccess();

      v27 = v10;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = *(*&v10[v19] + 16);

        _os_log_impl(&_mh_execute_header, v28, v29, "addReason end: %ld", v30, 0xCu);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100427264(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v62 = sub_10028088C(&qword_10097DBB0, &unk_100802B50);
  __chkstk_darwin(v62);
  v64 = &v58 - v4;
  v5 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v58 - v10;
  __chkstk_darwin(v9);
  v61 = &v58 - v12;
  v63 = type metadata accessor for Date();
  v67 = *(v63 - 8);
  v13 = __chkstk_darwin(v63);
  v59 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v58 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v68 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100973870 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_10000C4AC(v19, qword_10097DAF0);
  v21 = v2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v60 = v8;
  v65 = v11;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v70[0] = v58;
    *v25 = 136315394;
    *(v25 + 4) = sub_10000C4E4(*&v21[OBJC_IVAR___SDDeferrableOperation_identifier], *&v21[OBJC_IVAR___SDDeferrableOperation_identifier + 8], v70);
    *(v25 + 12) = 2048;
    v26 = OBJC_IVAR___SDDeferrableOperation_reasons;
    swift_beginAccess();
    *(v25 + 14) = *(*&v21[v26] + 16);

    _os_log_impl(&_mh_execute_header, v22, v23, "%s removeReason start: %ld", v25, 0x16u);
    sub_10000C60C(v58);
  }

  else
  {
  }

  v27 = *&v21[OBJC_IVAR___SDDeferrableOperation_queue];
  *v18 = v27;
  v28 = v68;
  (*(v68 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v16);
  v29 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v18, v16);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v30 = OBJC_IVAR___SDDeferrableOperation_reasons;
  swift_beginAccess();
  sub_10036DB18(v69, a2);
  swift_endAccess();

  v31 = OBJC_IVAR___SDDeferrableOperation_timedReasons;
  swift_beginAccess();
  v32 = *&v21[v31];
  if (*(v32 + 16))
  {

    v33 = sub_100012854(v69, a2);
    if (v34)
    {
      v58 = v30;
      v68 = v20;
      v36 = v66;
      v35 = v67;
      v37 = *(v67 + 16);
      v38 = v63;
      v37(v66, *(v32 + 56) + *(v67 + 72) * v33, v63);

      sub_10042AB98();
      swift_beginAccess();
      v39 = v61;
      sub_1002D3654(v69, a2, v61);
      sub_100005508(v39, &qword_10097A7F0, &unk_1007FB600);
      swift_endAccess();
      v40 = v65;
      v41 = v35;
      v42 = v38;
      v37(v65, v36, v38);
      (*(v41 + 56))(v40, 0, 1, v38);
      v43 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
      swift_beginAccess();
      v44 = *(v62 + 48);
      v45 = v64;
      sub_10000FF90(v40, v64, &qword_10097A7F0, &unk_1007FB600);
      sub_10000FF90(&v21[v43], v45 + v44, &qword_10097A7F0, &unk_1007FB600);
      v46 = *(v41 + 48);
      if (v46(v45, 1, v38) == 1)
      {
        sub_100005508(v40, &qword_10097A7F0, &unk_1007FB600);
        v47 = v46(v45 + v44, 1, v38);
        v30 = v58;
        if (v47 == 1)
        {
          sub_100005508(v45, &qword_10097A7F0, &unk_1007FB600);
          v48 = v66;
LABEL_18:
          sub_100429038();
          sub_1004297D0();
          goto LABEL_19;
        }
      }

      else
      {
        v49 = v60;
        sub_10000FF90(v45, v60, &qword_10097A7F0, &unk_1007FB600);
        if (v46(v45 + v44, 1, v38) != 1)
        {
          v50 = v67;
          v51 = v45 + v44;
          v52 = v59;
          (*(v67 + 32))(v59, v51, v42);
          sub_10042C9B8(&qword_10097DBB8, &protocol conformance descriptor for Date);
          LODWORD(v69) = dispatch thunk of static Equatable.== infix(_:_:)();
          v53 = *(v50 + 8);
          v53(v52, v42);
          sub_100005508(v65, &qword_10097A7F0, &unk_1007FB600);
          v53(v49, v42);
          v48 = v66;
          sub_100005508(v45, &qword_10097A7F0, &unk_1007FB600);
          v30 = v58;
          if (v69)
          {
            goto LABEL_18;
          }

LABEL_19:
          (*(v67 + 8))(v48, v42);
          goto LABEL_20;
        }

        sub_100005508(v65, &qword_10097A7F0, &unk_1007FB600);
        (*(v67 + 8))(v49, v38);
        v30 = v58;
      }

      sub_100005508(v45, &qword_10097DBB0, &unk_100802B50);
      v48 = v66;
      goto LABEL_19;
    }
  }

  sub_10042AB98();
LABEL_20:
  v54 = v21;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134217984;
    *(v57 + 4) = *(*(v30 + v21) + 16);

    _os_log_impl(&_mh_execute_header, v55, v56, "removeReason end: %ld", v57, 0xCu);
  }

  else
  {

    v55 = v54;
  }

  if (!*(*(v30 + v21) + 16) && *(&v54->isa + OBJC_IVAR___SDDeferrableOperation_pendingOperation) == 1)
  {
    sub_10042A81C(1);
  }
}

uint64_t sub_100427B50(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_100427BBC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v114 = a1;
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v7 = __chkstk_darwin(v6 - 8);
  v104 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v101 = &v97 - v10;
  __chkstk_darwin(v9);
  v111 = &v97 - v11;
  v109 = type metadata accessor for DispatchPredicate();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v13 = (&v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v102 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v100 = &v97 - v19;
  v20 = __chkstk_darwin(v18);
  v99 = &v97 - v21;
  v22 = __chkstk_darwin(v20);
  v103 = &v97 - v23;
  __chkstk_darwin(v22);
  v25 = &v97 - v24;
  if (qword_100973870 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_10000C4AC(v26, qword_10097DAF0);
  v28 = *(v15 + 16);
  v106 = v15 + 16;
  v113 = v28;
  v28(v25, a3, v14);
  v29 = v3;

  v112 = v27;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v32 = os_log_type_enabled(v30, v31);
  v110 = a3;
  v107 = a2;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v116[0] = v98;
    *v33 = 136315650;
    *(v33 + 4) = sub_10000C4E4(*&v29[OBJC_IVAR___SDDeferrableOperation_identifier], *&v29[OBJC_IVAR___SDDeferrableOperation_identifier + 8], v116);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_10000C4E4(v114, a2, v116);
    *(v33 + 22) = 2080;
    sub_10042C9B8(&qword_100983290, &protocol conformance descriptor for Date);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v14;
    v37 = v36;
    v105 = *(v15 + 8);
    v105(v25, v35);
    v38 = sub_10000C4E4(v34, v37, v116);
    v14 = v35;
    v39 = v111;

    *(v33 + 24) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s pushPreventionDateForReason, reason: %s, date: %s", v33, 0x20u);
    swift_arrayDestroy();

    a3 = v110;

    v40 = v15;
  }

  else
  {

    v105 = *(v15 + 8);
    v105(v25, v14);
    v40 = v15;
    v39 = v111;
  }

  v41 = *&v29[OBJC_IVAR___SDDeferrableOperation_queue];
  *v13 = v41;
  v42 = v108;
  v43 = v109;
  v108[13](v13, enum case for DispatchPredicate.onQueue(_:), v109);
  v44 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  (v42[1])(v13, v43);
  v45 = v113;
  if ((v41 & 1) == 0)
  {
    __break(1u);
    return;
  }

  sub_10042AB98();
  v46 = OBJC_IVAR___SDDeferrableOperation_reasons;
  swift_beginAccess();
  v47 = *&v29[v46];

  v48 = v107;
  v49 = sub_100569230(v114, v107, v47);

  if ((v49 & 1) == 0)
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "Cannot bump date for reason that is not in set";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v57, v58, v60, v59, 2u);
    }

LABEL_25:

    return;
  }

  v50 = OBJC_IVAR___SDDeferrableOperation_timedReasons;
  swift_beginAccess();
  v51 = *&v29[v50];
  if (*(v51 + 16))
  {

    v52 = sub_100012854(v114, v48);
    if (v53)
    {
      v54 = *(v51 + 56) + *(v40 + 72) * v52;
      v55 = v40;
      v56 = v103;
      v45(v103, v54, v14);

      if ((static Date.> infix(_:_:)() & 1) == 0)
      {
        v84 = v99;
        v45(v99, a3, v14);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v115[0] = v88;
          *v87 = 136315138;
          sub_10042C9B8(&qword_100983290, &protocol conformance descriptor for Date);
          v89 = dispatch thunk of CustomStringConvertible.description.getter();
          v90 = v14;
          v92 = v91;
          v93 = v84;
          v94 = v105;
          v105(v93, v90);
          v95 = sub_10000C4E4(v89, v92, v115);

          *(v87 + 4) = v95;
          _os_log_impl(&_mh_execute_header, v85, v86, "This function is for moving the date further into the future: %s", v87, 0xCu);
          sub_10000C60C(v88);

          v94(v103, v90);
        }

        else
        {

          v96 = v105;
          v105(v84, v14);
          v96(v103, v14);
        }

        return;
      }

      v105(v56, v14);
      v40 = v55;
      v39 = v111;
    }

    else
    {
    }
  }

  v45(v39, a3, v14);
  v61 = *(v40 + 56);
  v109 = v40 + 56;
  v108 = v61;
  (v61)(v39, 0, 1, v14);
  swift_beginAccess();

  sub_1002B1544(v39, v114, v48);
  swift_endAccess();
  v62 = v29;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v115[0] = v66;
    *v65 = 136315394;
    v67 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
    swift_beginAccess();
    v68 = &v62[v67];
    v69 = v101;
    sub_10000FF90(v68, v101, &qword_10097A7F0, &unk_1007FB600);
    if ((*(v40 + 48))(v69, 1, v14))
    {
      v70 = v40;
      v71 = v14;
      sub_100005508(v69, &qword_10097A7F0, &unk_1007FB600);
      v72 = 0x8000000100790A60;
      v73 = 0xD00000000000001ALL;
    }

    else
    {
      v74 = v100;
      v45(v100, v69, v14);
      sub_100005508(v69, &qword_10097A7F0, &unk_1007FB600);
      v114 = Date.description.getter();
      v72 = v75;
      v70 = v40;
      v71 = v14;
      v105(v74, v14);
      v73 = v114;
    }

    v76 = sub_10000C4E4(v73, v72, v115);

    *(v65 + 4) = v76;
    *(v65 + 12) = 1024;
    v77 = *&v62[OBJC_IVAR___SDDeferrableOperation_mainTimer];

    *(v65 + 14) = v77 != 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "preventUntilDate: %s, activeTimer: %{BOOL}d", v65, 0x12u);
    sub_10000C60C(v66);

    v39 = v111;
  }

  else
  {
    v70 = v40;
    v71 = v14;
  }

  v78 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
  swift_beginAccess();
  v79 = v104;
  sub_10000FF90(&v62[v78], v104, &qword_10097A7F0, &unk_1007FB600);
  if ((*(v70 + 48))(v79, 1, v71) == 1)
  {
    sub_100005508(v79, &qword_10097A7F0, &unk_1007FB600);
    v113(v39, v110, v71);
    (v108)(v39, 0, 1, v71);
    swift_beginAccess();
    sub_1003561CC(v39, &v62[v78]);
    swift_endAccess();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "First time setting date";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v80 = v102;
  (*(v70 + 32))(v102, v79, v71);
  if (static Date.> infix(_:_:)())
  {
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "preventUntilDate updated", v83, 2u);
    }

    v105(v80, v71);
    v113(v39, v110, v71);
    (v108)(v39, 0, 1, v71);
    swift_beginAccess();
    sub_1003561CC(v39, &v62[v78]);
    swift_endAccess();
  }

  else
  {
    v105(v80, v71);
  }
}

void sub_100428AA8()
{
  v1 = type metadata accessor for Date();
  v45 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v44 = &v41 - v5;
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v7 = __chkstk_darwin(v6 - 8);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v41 - v10;
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  if (qword_100973870 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_10097DAF0);
  v15 = v0;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = &unk_10097D000;
  if (os_log_type_enabled(v16, v17))
  {
    v42 = v4;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46[0] = v20;
    *v19 = 136315394;
    v21 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
    swift_beginAccess();
    sub_10000FF90(&v15[v21], v13, &qword_10097A7F0, &unk_1007FB600);
    v22 = v45;
    if ((*(v45 + 48))(v13, 1, v1))
    {
      sub_100005508(v13, &qword_10097A7F0, &unk_1007FB600);
      v23 = 0x8000000100790A60;
      v24 = 0xD00000000000001ALL;
    }

    else
    {
      v25 = *(v22 + 16);
      v41 = v11;
      v26 = v1;
      v27 = v44;
      v25(v44, v13, v26);
      sub_100005508(v13, &qword_10097A7F0, &unk_1007FB600);
      v28 = Date.description.getter();
      v23 = v29;
      v30 = v27;
      v1 = v26;
      v11 = v41;
      (*(v22 + 8))(v30, v1);
      v24 = v28;
    }

    v31 = sub_10000C4E4(v24, v23, v46);

    *(v19 + 4) = v31;
    *(v19 + 12) = 1024;
    v18 = &unk_10097D000;
    v32 = *&v15[OBJC_IVAR___SDDeferrableOperation_mainTimer];

    *(v19 + 14) = v32 != 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "scheduleOperation:%s, %{BOOL}d", v19, 0x12u);
    sub_10000C60C(v20);

    v4 = v42;
  }

  else
  {
  }

  v33 = *&v15[v18[360]];
  v34 = v45;
  if (!v33)
  {
    v35 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
    swift_beginAccess();
    sub_10000FF90(&v15[v35], v11, &qword_10097A7F0, &unk_1007FB600);
    if ((*(v34 + 48))(v11, 1, v1) == 1)
    {
      sub_100005508(v11, &qword_10097A7F0, &unk_1007FB600);
    }

    else
    {
      (*(v34 + 32))(v4, v11, v1);
      v36 = v1;
      v37 = v44;
      Date.init()();
      v38 = static Date.< infix(_:_:)();
      v39 = *(v34 + 8);
      v39(v37, v36);
      if (v38)
      {
        v40 = v43;
        (*(v34 + 56))(v43, 1, 1, v36);
        swift_beginAccess();
        sub_1003561CC(v40, &v15[v35]);
        swift_endAccess();
        sub_10042AB98();
      }

      else
      {
        sub_1004297D0();
      }

      v39(v4, v36);
    }
  }

  sub_10042A81C(0);
}

void sub_100429038()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v6 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v55 - v7;
  v8 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v9 = __chkstk_darwin(v8 - 8);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = &v55 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v1[OBJC_IVAR___SDDeferrableOperation_queue];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v18)
  {
    v55 = v5;
    if (qword_100973870 == -1)
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
  v19 = type metadata accessor for Logger();
  v20 = sub_10000C4AC(v19, qword_10097DAF0);
  v21 = v1;
  v60 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v62 = v3;
  v63 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v64 = v26;
    *v25 = 136315138;
    swift_beginAccess();

    v27 = Dictionary.description.getter();
    v28 = v6;
    v30 = v29;
    v21 = v63;

    v31 = sub_10000C4E4(v27, v30, &v64);
    v6 = v28;

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "recalculateDate timedReasons:%s", v25, 0xCu);
    sub_10000C60C(v26);

    v3 = v62;
  }

  v32 = OBJC_IVAR___SDDeferrableOperation_timedReasons;
  swift_beginAccess();
  v33 = *&v21[v32];
  v34 = *(v33 + 16);
  if (v34)
  {
    v56 = v2;
    v35 = sub_10028F7AC(v34, 0);
    v36 = sub_1002920C0(&v64, &v35[(*(v6 + 80) + 32) & ~*(v6 + 80)], v34, v33);
    v37 = v64;
    swift_bridgeObjectRetain_n();
    sub_100027D64(v37);
    if (v36 != v34)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v2 = v56;
    v3 = v62;
  }

  else
  {

    v35 = _swiftEmptyArrayStorage;
  }

  v64 = v35;
  sub_10042B5F0(&v64);

  v38 = v63;
  if (*(v64 + 2))
  {
    v39 = v58;
    sub_10000FF90(&v64[(*(v6 + 80) + 32) & ~*(v6 + 80)], v58, &qword_1009750E8, &qword_1007FBB20);

    v40 = v61;
    (*(v3 + 32))(v61, v39 + *(v59 + 48), v2);
    v41 = 0;
  }

  else
  {

    v41 = 1;
    v40 = v61;
  }

  (*(v3 + 56))(v40, v41, 1, v2);
  v42 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
  swift_beginAccess();
  sub_1003561CC(v40, &v38[v42]);
  swift_endAccess();
  v43 = v38;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v64 = v47;
    *v46 = 136315138;
    v48 = v57;
    sub_10000FF90(&v38[v42], v57, &qword_10097A7F0, &unk_1007FB600);
    if ((*(v3 + 48))(v48, 1, v2))
    {
      sub_100005508(v48, &qword_10097A7F0, &unk_1007FB600);
      v49 = 0x8000000100790A60;
      v50 = 0xD00000000000001ALL;
    }

    else
    {
      v51 = v55;
      (*(v3 + 16))(v55, v48, v2);
      sub_100005508(v48, &qword_10097A7F0, &unk_1007FB600);
      v52 = Date.description.getter();
      v49 = v53;
      (*(v3 + 8))(v51, v2);
      v50 = v52;
    }

    v54 = sub_10000C4E4(v50, v49, &v64);

    *(v46 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v44, v45, "recalculateDate, preventUntilDate changed to %s", v46, 0xCu);
    sub_10000C60C(v47);
  }
}

uint64_t sub_1004297D0()
{
  v100 = type metadata accessor for DispatchWorkItemFlags();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v90 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchQoS();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for DispatchTimeInterval();
  v103 = *(v104 - 8);
  v3 = __chkstk_darwin(v104);
  v102 = (&v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v101 = &v90 - v5;
  v110 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for DispatchTime();
  v116 = *(v112 - 8);
  v7 = __chkstk_darwin(v112);
  v107 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v115 = &v90 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v117 = *(v10 - 1);
  v118 = v10;
  __chkstk_darwin(v10);
  v12 = (&v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v105 = &v90 - v18;
  v19 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v20 = __chkstk_darwin(v19 - 8);
  v106 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v94 = &v90 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v90 - v25;
  __chkstk_darwin(v24);
  v28 = &v90 - v27;
  if (qword_100973870 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_10000C4AC(v29, qword_10097DAF0);
  v31 = v0;
  v111 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v92 = v33;
    v113 = v17;
    v34 = v14;
    v35 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    aBlock[0] = v91;
    *v35 = 136315394;
    *(v35 + 4) = sub_10000C4E4(*&v31[OBJC_IVAR___SDDeferrableOperation_identifier], *&v31[OBJC_IVAR___SDDeferrableOperation_identifier + 8], aBlock);
    *(v35 + 12) = 2080;
    v36 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
    swift_beginAccess();
    sub_10000FF90(&v31[v36], v28, &qword_10097A7F0, &unk_1007FB600);
    v37 = (*(v34 + 48))(v28, 1, v13);
    v114 = v13;
    v93 = v34;
    if (v37)
    {
      v38 = 0xD00000000000001ALL;
      sub_100005508(v28, &qword_10097A7F0, &unk_1007FB600);
      v39 = 0x8000000100790A60;
    }

    else
    {
      v40 = v105;
      (*(v34 + 16))(v105, v28, v13);
      sub_100005508(v28, &qword_10097A7F0, &unk_1007FB600);
      v38 = Date.description.getter();
      v39 = v41;
      (*(v34 + 8))(v40, v13);
    }

    v42 = sub_10000C4E4(v38, v39, aBlock);

    *(v35 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v32, v92, "%s handleTimer %s", v35, 0x16u);
    swift_arrayDestroy();

    v17 = v113;
    v13 = v114;
    v14 = v93;
  }

  else
  {
  }

  v43 = *&v31[OBJC_IVAR___SDDeferrableOperation_queue];
  *v12 = v43;
  v45 = v117;
  v44 = v118;
  (*(v117 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v118);
  v46 = v43;
  v47 = _dispatchPreconditionTest(_:)();
  result = (*(v45 + 8))(v12, v44);
  if (v47)
  {
    v49 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
    swift_beginAccess();
    sub_10000FF90(&v31[v49], v26, &qword_10097A7F0, &unk_1007FB600);
    v50 = *(v14 + 48);
    if (v50(v26, 1, v13) == 1)
    {
      result = sub_100005508(v26, &qword_10097A7F0, &unk_1007FB600);
      v51 = OBJC_IVAR___SDDeferrableOperation_mainTimer;
      if (*&v31[OBJC_IVAR___SDDeferrableOperation_mainTimer])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
        *&v31[v51] = 0;
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      (*(v14 + 32))(v17, v26, v13);
      sub_10042AB98();
      Date.timeIntervalSinceNow.getter();
      if (v52 <= 0.0)
      {
        v73 = v106;
        (*(v14 + 56))(v106, 1, 1, v13);
        swift_beginAccess();
        sub_1003561CC(v73, &v31[v49]);
        swift_endAccess();
        *&v31[OBJC_IVAR___SDDeferrableOperation_mainTimer] = 0;
        swift_unknownObjectRelease();
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&_mh_execute_header, v74, v75, "handleTimer calling try operation", v76, 2u);
        }

        sub_10042A81C(1);
        return (*(v14 + 8))(v17, v13);
      }

      else
      {
        v113 = v17;
        v114 = v13;
        v53 = v107;
        static DispatchTime.now()();
        + infix(_:_:)();
        v54 = *(v116 + 8);
        v116 += 8;
        v54(v53, v112);
        v55 = OBJC_IVAR___SDDeferrableOperation_mainTimer;
        if (*&v31[OBJC_IVAR___SDDeferrableOperation_mainTimer])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          OS_dispatch_source.cancel()();
          swift_unknownObjectRelease();
          *&v31[v55] = 0;
          swift_unknownObjectRelease();
        }

        sub_10042B59C();
        v56 = v108;
        static OS_dispatch_source.TimerFlags.strict.getter();
        v57 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
        (*(v109 + 8))(v56, v110);
        *&v31[v55] = v57;
        swift_unknownObjectRelease();
        if (*&v31[v55])
        {
          swift_getObjectType();
          v58 = v101;
          sub_1002EAB84(v101);
          v59 = v102;
          sub_1002EABF8(v102);
          swift_unknownObjectRetain();
          OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
          swift_unknownObjectRelease();
          v60 = *(v103 + 8);
          v61 = v104;
          v60(v59, v104);
          v60(v58, v61);
          if (*&v31[v55])
          {
            ObjectType = swift_getObjectType();
            v63 = swift_allocObject();
            *(v63 + 16) = v31;
            aBlock[4] = sub_10042B5E8;
            aBlock[5] = v63;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100011678;
            aBlock[3] = &unk_1008E1190;
            v64 = v14;
            v65 = _Block_copy(aBlock);
            v66 = v31;
            swift_unknownObjectRetain();
            v67 = v95;
            j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
            v68 = v97;
            sub_1005944AC();
            OS_dispatch_source.setEventHandler(qos:flags:handler:)();
            v69 = v65;
            v14 = v64;
            _Block_release(v69);
            swift_unknownObjectRelease();
            (*(v99 + 8))(v68, v100);
            (*(v96 + 8))(v67, v98);

            if (*&v31[v55])
            {
              swift_getObjectType();
              swift_unknownObjectRetain();
              OS_dispatch_source.resume()();
              swift_unknownObjectRelease();
            }
          }

          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&_mh_execute_header, v70, v71, "handleTimer timer activated", v72, 2u);
          }

          v54(v115, v112);
          return (*(v14 + 8))(v113, v114);
        }

        else
        {
          v77 = v14;
          v78 = v31;
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            aBlock[0] = v118;
            *v81 = 136315138;
            v82 = &v31[v49];
            v83 = v94;
            sub_10000FF90(v82, v94, &qword_10097A7F0, &unk_1007FB600);
            v84 = v114;
            if (v50(v83, 1, v114))
            {
              v85 = 0xD00000000000001ALL;
              sub_100005508(v83, &qword_10097A7F0, &unk_1007FB600);
              v86 = 0x8000000100790A60;
            }

            else
            {
              v87 = v105;
              (*(v77 + 16))(v105, v83, v84);
              sub_100005508(v83, &qword_10097A7F0, &unk_1007FB600);
              v85 = Date.description.getter();
              v86 = v88;
              (*(v77 + 8))(v87, v84);
            }

            v89 = sub_10000C4E4(v85, v86, aBlock);

            *(v81 + 4) = v89;
            _os_log_impl(&_mh_execute_header, v79, v80, "Error making timer %s", v81, 0xCu);
            sub_10000C60C(v118);

            v54(v115, v112);
            return (*(v77 + 8))(v113, v84);
          }

          else
          {

            v54(v115, v112);
            return (*(v77 + 8))(v113, v114);
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10042A7B8(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___SDDeferrableOperation_mainTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  return sub_1004297D0();
}

void sub_10042A81C(int a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100973870 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_10097DAF0);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23[0] = v21;
    *v11 = 136315650;
    *(v11 + 4) = sub_10000C4E4(*&v8[OBJC_IVAR___SDDeferrableOperation_identifier], *&v8[OBJC_IVAR___SDDeferrableOperation_identifier + 8], v23);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    *(v11 + 18) = 2080;
    swift_beginAccess();
    v22 = v3;
    v12 = a1;

    v13 = Set.description.getter();
    v15 = v14;

    v16 = sub_10000C4E4(v13, v15, v23);

    *(v11 + 20) = v16;
    a1 = v12;
    v3 = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s _scheduleOperation delayed:%{BOOL}d, reason: %s", v11, 0x1Cu);
    swift_arrayDestroy();
  }

  v17 = *&v8[OBJC_IVAR___SDDeferrableOperation_queue];
  *v6 = v17;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v17)
  {
    v19 = OBJC_IVAR___SDDeferrableOperation_reasons;
    swift_beginAccess();
    if (*(*&v8[v19] + 16))
    {
      if ((a1 & 1) == 0)
      {
        v8[OBJC_IVAR___SDDeferrableOperation_pendingOperation] = 1;
      }
    }

    else
    {
      v20 = v8[OBJC_IVAR___SDDeferrableOperation_pendingOperation];
      if (v20 == 1 && (a1 & 1) != 0)
      {
        v8[OBJC_IVAR___SDDeferrableOperation_pendingOperation] = 0;
        (*&v8[OBJC_IVAR___SDDeferrableOperation_operation])(1);
      }

      else if (((v20 | a1) & 1) == 0)
      {
        (*&v8[OBJC_IVAR___SDDeferrableOperation_operation])(0);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10042AB98()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v1 - 8);
  v54 = v53 - v2;
  v55 = type metadata accessor for Date();
  v3 = *(v55 - 8);
  v4 = __chkstk_darwin(v55);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v59 = v53 - v7;
  v8 = sub_10028088C(&unk_10097DB90, &unk_100802B40);
  v9 = __chkstk_darwin(v8 - 8);
  v64 = (v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v62 = (v53 - v11);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v0 + OBJC_IVAR___SDDeferrableOperation_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v18)
  {
    v19 = OBJC_IVAR___SDDeferrableOperation_timedReasons;
    swift_beginAccess();
    v53[2] = v19;
    v53[3] = v0;
    v20 = *(v0 + v19);
    v21 = *(v20 + 64);
    v53[0] = v20 + 64;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v3;
    v25 = v23 & v21;
    v53[1] = OBJC_IVAR___SDDeferrableOperation_reasons;
    v26 = (v22 + 63) >> 6;
    v56 = v24 + 16;
    v63 = (v24 + 32);
    v58 = v24;
    v60 = v20;
    v61 = (v24 + 8);

    v27 = 0;
    v28 = v55;
    v57 = v6;
    v29 = v62;
    while (v25)
    {
      v30 = v27;
LABEL_16:
      v33 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v34 = v33 | (v30 << 6);
      v35 = v59;
      v36 = (*(v60 + 48) + 16 * v34);
      v38 = *v36;
      v37 = v36[1];
      v39 = v58;
      (*(v58 + 16))(v59, *(v60 + 56) + *(v58 + 72) * v34, v28);
      v40 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
      v41 = *(v40 + 48);
      v42 = v64;
      *v64 = v38;
      v42[1] = v37;
      v43 = v35;
      v44 = v42;
      v45 = v28;
      (*(v39 + 32))(v42 + v41, v43, v28);
      (*(*(v40 - 8) + 56))(v44, 0, 1, v40);

      v32 = v30;
      v6 = v57;
      v29 = v62;
LABEL_17:
      sub_10002C4E4(v64, v29, &unk_10097DB90, &unk_100802B40);
      v46 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
      if ((*(*(v46 - 8) + 48))(v29, 1, v46) == 1)
      {

        return;
      }

      v48 = *v29;
      v47 = v29[1];
      v28 = v45;
      (*v63)(v6, v29 + *(v46 + 48), v45);
      Date.timeIntervalSinceNow.getter();
      if (v49 > 0.0)
      {
        (*v61)(v6, v45);
      }

      else
      {
        swift_beginAccess();
        v50 = v54;
        sub_1002D3654(v48, v47, v54);
        v51 = v50;
        v29 = v62;
        sub_100005508(v51, &qword_10097A7F0, &unk_1007FB600);
        swift_endAccess();
        swift_beginAccess();
        v28 = v55;
        sub_10036DB18(v48, v47);
        swift_endAccess();

        (*v61)(v6, v28);
      }

      v27 = v32;
    }

    if (v26 <= v27 + 1)
    {
      v31 = v27 + 1;
    }

    else
    {
      v31 = v26;
    }

    v32 = v31 - 1;
    while (1)
    {
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v30 >= v26)
      {
        v45 = v28;
        v52 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
        (*(*(v52 - 8) + 56))(v64, 1, 1, v52);
        v25 = 0;
        goto LABEL_17;
      }

      v25 = *(v53[0] + 8 * v30);
      ++v27;
      if (v25)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}