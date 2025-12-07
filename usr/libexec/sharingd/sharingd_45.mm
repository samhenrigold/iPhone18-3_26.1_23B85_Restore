void sub_10061B83C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v65 = a4;
  v67 = a2;
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v8 - 8);
  v62 = v59 - v9;
  v10 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v10 - 8);
  v64 = v59 - v11;
  v12 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v60 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v15 - 8);
  v17 = v59 - v16;
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v19 = *(*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_accInfoDict);
  if (!v19)
  {
    goto LABEL_9;
  }

  v68 = 0xD000000000000017;
  v69 = 0x80000001007998D0;

  AnyHashable.init<A>(_:)();
  if (!*(v19 + 16) || (v20 = sub_100570754(&v70), (v21 & 1) == 0))
  {

    sub_100285E74(&v70);
    goto LABEL_9;
  }

  sub_10000C5B0(*(v19 + 56) + 32 * v20, v72);
  sub_100285E74(&v70);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v68 == 0x3330363141 && v69 == 0xE500000000000000)
  {
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v58 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_1005FFB88(1);
LABEL_9:
  v22 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel + 8);
  v66 = v18;
  if ((v22 & 1) == 0)
  {
    v23 = *(a1 + v18) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    if ((*(v23 + 8) & 1) == 0)
    {
      v24 = *v23;
      if (((*v23 | 2) == 3 || v24 == 4) && *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel) <= 0.2)
      {
        v63 = a5;
        if (qword_100973B58 != -1)
        {
          swift_once();
        }

        v25 = a3;
        v26 = type metadata accessor for Logger();
        sub_10000C4AC(v26, qword_1009865B0);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Showing low battery pill on detach of connected Pencil", v29, 2u);
        }

        v30 = type metadata accessor for TaskPriority();
        (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v32 = static MainActor.shared.getter();
        v33 = swift_allocObject();
        v33[2] = v32;
        v33[3] = &protocol witness table for MainActor;
        v33[4] = v31;
        v33[5] = v24;

        sub_1002B3098(0, 0, v17, &unk_10080DAB0, v33);

        a3 = v25;
        a5 = v63;
      }
    }
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v63 = a1;
  v34 = type metadata accessor for Logger();
  v35 = sub_10000C4AC(v34, qword_1009865B0);

  v36 = v65;
  sub_100294008(v65, a5);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  sub_100026AC0(v36, a5);
  v39 = os_log_type_enabled(v37, v38);
  v61 = a3;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v59[1] = v35;
    v68 = v41;
    *v40 = 136315394;
    *(v40 + 4) = sub_10000C4E4(v67, a3, &v68);
    *(v40 + 12) = 2080;
    v70 = 0;
    v71 = 0xE000000000000000;
    v72[0] = v36;
    v72[1] = a5;
    v42 = v60;
    (*(v60 + 104))(v14, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v12);
    sub_100423B84();
    DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
    (*(v42 + 8))(v14, v12);
    v43 = sub_10000C4E4(v70, v71, &v68);

    *(v40 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "!!! Accessory detached: %s, blePairingUUID: %s", v40, 0x16u);
    swift_arrayDestroy();
  }

  v44 = v64;
  static Date.now.getter();
  v45 = type metadata accessor for Date();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAccessoryDetachTimestamp;
  v47 = v63;
  swift_beginAccess();
  sub_10000C788(v44, v47 + v46, &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
  v48 = (*(v47 + v66) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
  v49 = v48[1];
  if (!v49 || (v50 = *v48, *v48 == v67) && v49 == v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v51 = type metadata accessor for UUID();
    v52 = v62;
    (*(*(v51 - 8) + 56))(v62, 1, 1, v51);
    sub_1005FCB7C(v52, 0);
    sub_100005508(v52, &unk_100976120, &qword_1007F9260);
  }

  else
  {

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v70 = v56;
      *v55 = 136315138;
      v57 = sub_10000C4E4(v50, v49, &v70);

      *(v55 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v53, v54, "Not resetting state on Pencil detach because a session is ongoing for a different accessory: %s", v55, 0xCu);
      sub_10000C60C(v56);
    }

    else
    {
    }
  }
}

uint64_t sub_10061C12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_10061C1C4, v7, v6);
}

uint64_t sub_10061C1C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_powerSourceID;
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_10061C2F0;
    v6 = v0[6];

    return sub_1005FAD70(v6, v3, v4);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10061C2F0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10061C410, v3, v2);
}

uint64_t sub_10061C410()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10061C534(int a1, int a2, char a3, char a4)
{
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  type metadata accessor for ACCBLEPairing_Status_t(0);
  _print_unlocked<A, B>(_:_:)();
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_1009865B0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136315906;
    v12 = sub_10000C4E4(0, 0xE000000000000000, v13);

    *(v10 + 4) = v12;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a2;
    *(v10 + 18) = 1024;
    *(v10 + 20) = a3 & 1;
    *(v10 + 24) = 1024;
    *(v10 + 26) = a4 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "!!! blePairingStateUpdate. pairingState: %s\nvalidMask: %u\npairingModeOn: %{BOOL}d\nbtRadioOn: %{BOOL}d", v10, 0x1Eu);
    sub_10000C60C(v11);
  }

  else
  {
  }
}

void sub_10061C7C0(uint64_t a1, uint64_t a2)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v61[0] = v8;
    *v7 = 136315138;
    v9 = Array.debugDescription.getter();
    v11 = sub_10000C4E4(v9, v10, v61);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "!!! blePairingInfoUpdate. pairInfoList: %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8) >> 60 != 15)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "We got a pairInfo despite already having a pairData.", v15, 2u);
    }
  }

  v16 = *(a2 + v12);
  v17 = *(v16 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd);
  v18 = *(v16 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8);
  *(v16 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd) = xmmword_1007F8A80;

  sub_10028BCC0(v17, v18);

  if (*(a1 + 16))
  {
    sub_10000C5B0(a1 + 32, v61);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "blePairingInfoUpdate - Cannot convert to data. Ignoring.", v24, 2u);
      }

      goto LABEL_42;
    }

    v19 = v60 >> 62;
    if ((v60 >> 62) > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_37;
      }

      v26 = *(v59 + 16);
      v25 = *(v59 + 24);
      v27 = __OFSUB__(v25, v26);
      v28 = v25 - v26;
      if (!v27)
      {
        if (v28 == 6)
        {
          goto LABEL_25;
        }

LABEL_37:
        sub_100294008(v59, v60);
        v22 = Logger.logObject.getter();
        v50 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v22, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 134217984;
          if (v19 > 1)
          {
            if (v19 != 2)
            {
              v52 = 0;
              goto LABEL_50;
            }

            v54 = *(v59 + 16);
            v53 = *(v59 + 24);
            v27 = __OFSUB__(v53, v54);
            v52 = v53 - v54;
            if (!v27)
            {
              goto LABEL_50;
            }

            __break(1u);
          }

          else if (!v19)
          {
            v52 = BYTE6(v60);
LABEL_50:
            *(v51 + 4) = v52;
            v55 = v51;
            sub_100026AC0(v59, v60);
            _os_log_impl(&_mh_execute_header, v22, v50, "blePairingInfoUpdate - BT addr has wrong length (%ld). Ignoring.", v55, 0xCu);

LABEL_51:
            sub_100026AC0(v59, v60);
            return;
          }

          LODWORD(v52) = HIDWORD(v59) - v59;
          if (!__OFSUB__(HIDWORD(v59), v59))
          {
            v52 = v52;
            goto LABEL_50;
          }

          goto LABEL_54;
        }

        sub_100026AC0(v59, v60);
        sub_100026AC0(v59, v60);
LABEL_42:

        return;
      }

      __break(1u);
    }

    else
    {
      if (!v19)
      {
        if (BYTE6(v60) != 6)
        {
          goto LABEL_37;
        }

LABEL_25:
        if (*(*(a2 + v12) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr + 8) >> 60 != 15)
        {
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&_mh_execute_header, v29, v30, "We got a pairInfo despite already having one.", v31, 2u);
          }
        }

        v32 = (*(a2 + v12) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr);
        v33 = *v32;
        v34 = v32[1];
        *v32 = v59;
        v32[1] = v60;
        sub_100294008(v59, v60);
        sub_100294008(v59, v60);

        sub_10028BCC0(v33, v34);
        sub_1005F184C();
        sub_100026AC0(v59, v60);

        sub_1005F3200();
        if (v35)
        {
          v36 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central);
          v37 = String._bridgeToObjectiveC()();

          v38 = [v36 retrievePeripheralWithAddress:v37];

          if (v38)
          {
            v39 = v38;
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              osloga = swift_slowAlloc();
              v61[0] = osloga;
              *v42 = 136315138;
              v43 = [v39 debugDescription];
              v56 = v41;
              v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v46 = v45;

              v47 = sub_10000C4E4(v44, v46, v61);

              *(v42 + 4) = v47;
              _os_log_impl(&_mh_execute_header, v40, v56, "b332 from info update: %s", v42, 0xCu);
              sub_10000C60C(osloga);
            }

            v48 = *(a2 + v12);
            v49 = *(v48 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
            *(v48 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral) = v38;
          }
        }

        sub_1005F7090();
        goto LABEL_51;
      }

      if (!__OFSUB__(HIDWORD(v59), v59))
      {
        if (HIDWORD(v59) - v59 == 6)
        {
          goto LABEL_25;
        }

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v20, "blePairingInfoUpdate - No elements. Ignoring.", v21, 2u);
  }
}

void sub_10061CFEC(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v8 - 8);
  v43 = &v41 - v9;
  v45 = 0;
  v46 = 0xE000000000000000;
  v44 = a1;
  type metadata accessor for ACCBLEPairing_Types_t(0);
  _print_unlocked<A, B>(_:_:)();
  v11 = v45;
  v10 = v46;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_1009865B0);

  sub_100294008(a2, a3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = a3 >> 62;
  if (!os_log_type_enabled(v13, v14))
  {
    sub_100026AC0(a2, a3);

    if (v15 > 1)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v42 = a4;
  a4 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v45 = v16;
  *a4 = 136315394;
  v17 = sub_10000C4E4(v11, v10, &v45);

  *(a4 + 4) = v17;
  *(a4 + 12) = 2048;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v21 = *(a2 + 16);
      v20 = *(a2 + 24);
      v22 = __OFSUB__(v20, v21);
      v18 = v20 - v21;
      if (v22)
      {
        __break(1u);
LABEL_14:
        LODWORD(v19) = HIDWORD(a2) - a2;
        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v19 = v19;
          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v15)
  {
    LODWORD(v18) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v18 = v18;
  }

  else
  {
    v18 = BYTE6(a3);
  }

  *(a4 + 14) = v18;
  sub_100026AC0(a2, a3);
  _os_log_impl(&_mh_execute_header, v13, v14, "!!! blePairingDataUpdate. pairType: %s, pairData: %ld bytes", a4, 0x16u);
  sub_10000C60C(v16);

  a4 = v42;
  if (v15 <= 1)
  {
LABEL_8:
    if (!v15)
    {
      v19 = BYTE6(a3);
      goto LABEL_22;
    }

    goto LABEL_14;
  }

LABEL_20:
  if (v15 != 2)
  {
LABEL_28:
    sub_100294008(a2, a3);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      sub_100026AC0(a2, a3);
LABEL_42:

      return;
    }

    v33 = swift_slowAlloc();
    *v33 = 134217984;
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        v34 = 0;
        goto LABEL_41;
      }

      v39 = *(a2 + 16);
      v38 = *(a2 + 24);
      v22 = __OFSUB__(v38, v39);
      v34 = v38 - v39;
      if (!v22)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v34 = BYTE6(a3);
LABEL_41:
      *(v33 + 4) = v34;
      v40 = v33;
      sub_100026AC0(a2, a3);
      _os_log_impl(&_mh_execute_header, v31, v32, "Wrong OOBD length of %ld. Ignoring OOBD.", v40, 0xCu);

      goto LABEL_42;
    }

    LODWORD(v34) = HIDWORD(a2) - a2;
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      v34 = v34;
      goto LABEL_41;
    }

LABEL_46:
    __break(1u);
    return;
  }

  v24 = *(a2 + 16);
  v23 = *(a2 + 24);
  v22 = __OFSUB__(v23, v24);
  v19 = v23 - v24;
  if (v22)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_22:
  if (v19 != 32 && v19 != 16)
  {
    goto LABEL_28;
  }

  v25 = *(a4 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  if (*(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToResetFromBTAddrRotation) == 1)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "blePairingDataUpdate - needToResetFromBTAddrRotation", v28, 2u);
    }

    v29 = type metadata accessor for UUID();
    v30 = v43;
    (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
    sub_1005FCB7C(v30, 1);
    sub_100005508(v30, &unk_100976120, &qword_1007F9260);
  }

  else
  {
    v35 = (v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd);
    v36 = *(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd);
    v37 = *(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8);
    *v35 = a2;
    v35[1] = a3;
    sub_100294008(a2, a3);

    sub_10028BCC0(v36, v37);

    sub_1005F7090();
  }
}

void sub_10061D5E0()
{
  v1 = v0;
  v13 = 3018;

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_10046E4E8(&v13, v3);
  swift_endAccess();
  if (v4)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "startScanning");
  }

  sub_10028088C(&unk_100987070, &unk_10080DA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v7;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v8;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v9;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = 40;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v10;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = 30;
  sub_100011040(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_1009744D0, &qword_1007F8A20);
  swift_arrayDestroy();
  v11 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 scanForPeripheralsWithServices:0 options:isa];
}

id sub_10061D8B8()
{
  v1 = v0;
  v6 = 3033;

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_10046E4E8(&v6, v3);
  swift_endAccess();
  if (v4)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "stopScanning");
  }

  return [*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central) stopScan];
}

void sub_10061DA24(void *a1)
{
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState];
  if ((*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8) & 1) == 0)
  {
    v4 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
    v5 = v4 > 4;
    v6 = (1 << v4) & 0x1A;
    v7 = v5 || v6 == 0;
    if (!v7 && !*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner))
    {
      v9 = v1;
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000C4AC(v10, qword_1009865B0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "startBatteryScanner", v13, 2u);
      }

      v14 = [objc_allocWithZone(SFDeviceDiscovery) init];
      v15 = *&v9[v2];
      v16 = *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner);
      *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner) = v14;

      v17 = v14;

      [v17 setChangeFlags:1];
      [v17 setDiscoveryFlags:2];
      [v17 setDispatchQueue:*&v9[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q]];
      sub_10028088C(&unk_100987020, &unk_10080D9D0);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1007F5670;
      v22 = [a1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1002F4FA8(v21);
      swift_setDeallocating();
      (*(v19 + 8))(v21 + v20, v18);
      swift_deallocClassInstance();
      sub_10000D4DC(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v17 setDeviceFilter:isa];

      v24 = swift_allocObject();
      *(v24 + 16) = v9;
      v36 = sub_1006248D8;
      v37 = v24;
      v32 = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = sub_100035F94;
      v35 = &unk_1008EA5F8;
      v25 = _Block_copy(&v32);
      v26 = v9;

      [v17 setDeviceFoundHandler:v25];
      _Block_release(v25);
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      v36 = sub_1006248E0;
      v37 = v27;
      v32 = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = sub_1005F11E0;
      v35 = &unk_1008EA648;
      v28 = _Block_copy(&v32);
      v29 = v26;

      [v17 setDeviceChangedHandler:v28];
      _Block_release(v28);
      v36 = sub_10061F604;
      v37 = 0;
      v32 = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = sub_100011678;
      v35 = &unk_1008EA670;
      v30 = _Block_copy(&v32);
      [v17 setInvalidationHandler:v30];
      _Block_release(v30);
      v36 = sub_10061F71C;
      v37 = 0;
      v32 = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = sub_1005CC610;
      v35 = &unk_1008EA698;
      v31 = _Block_copy(&v32);
      [v17 activateWithCompletion:v31];
      _Block_release(v31);
    }
  }
}

void sub_10061DF88(void *a1, uint64_t a2)
{
  v97 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  __chkstk_darwin(v97);
  v100 = &v89 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v94 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v9 = __chkstk_darwin(v8 - 8);
  v95 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v102 = &v89 - v12;
  v13 = __chkstk_darwin(v11);
  v99 = &v89 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v89 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v89 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v89 - v22;
  __chkstk_darwin(v21);
  v25 = &v89 - v24;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000C4AC(v26, qword_1009865B0);
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v96 = v29;
  v30 = os_log_type_enabled(v28, v29);
  v101 = v6;
  v98 = a2;
  v103 = v27;
  if (!v30)
  {

    v38 = v99;
    v39 = v100;
    v33 = v102;
    goto LABEL_23;
  }

  v93 = v28;
  v31 = swift_slowAlloc();
  v92 = swift_slowAlloc();
  v104 = v92;
  *v31 = 136315650;
  v32 = [v27 identifier];
  v33 = v102;
  if (v32)
  {
    v34 = v32;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = *(v6 + 56);
    v36 = v23;
    v37 = 0;
  }

  else
  {
    v35 = *(v6 + 56);
    v36 = v23;
    v37 = 1;
  }

  v91 = v35;
  v35(v36, v37, 1, v5);
  sub_1005D8888(v23, v25);
  v90 = *(v6 + 48);
  if (v90(v25, 1, v5))
  {
    sub_100005508(v25, &unk_100976120, &qword_1007F9260);
    v40 = 0x8000000100799580;
    v41 = 0xD000000000000015;
  }

  else
  {
    v42 = v94;
    (*(v6 + 16))(v94, v25, v5);
    sub_100005508(v25, &unk_100976120, &qword_1007F9260);
    v43 = UUID.description.getter();
    v40 = v44;
    v45 = v42;
    v33 = v102;
    (*(v6 + 8))(v45, v5);
    v41 = v43;
  }

  v46 = sub_10000C4E4(v41, v40, &v104);

  *(v31 + 4) = v46;
  *(v31 + 12) = 2080;
  v47 = [v103 bleDevice];
  v39 = v100;
  if (v47)
  {
    v48 = v47;
    v49 = [v47 identifier];

    if (v49)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v6 = v101;
    v91(v17, v50, 1, v5);
    sub_1005D8888(v17, v20);
    if (!v90(v20, 1, v5))
    {
      v53 = v94;
      (*(v6 + 16))(v94, v20, v5);
      sub_100005508(v20, &unk_100976120, &qword_1007F9260);
      v54 = UUID.description.getter();
      v51 = v55;
      v56 = v53;
      v33 = v102;
      (*(v6 + 8))(v56, v5);
      v52 = v54;
      goto LABEL_19;
    }

    sub_100005508(v20, &unk_100976120, &qword_1007F9260);
  }

  v51 = 0x80000001007995A0;
  v52 = 0xD00000000000001FLL;
  v6 = v101;
LABEL_19:
  v57 = sub_10000C4E4(v52, v51, &v104);

  *(v31 + 14) = v57;
  *(v31 + 22) = 2080;
  v58 = [v103 batteryInfo];
  v38 = v99;
  if (v58)
  {
    v59 = v58;
    sub_1000276B4(0, &qword_100987040, SFBatteryInfo_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v60 = Array.description.getter();
    v62 = v61;
  }

  else
  {
    v62 = 0x80000001007995C0;
    v60 = 0xD000000000000016;
  }

  v63 = sub_10000C4E4(v60, v62, &v104);

  *(v31 + 24) = v63;
  v64 = v93;
  _os_log_impl(&_mh_execute_header, v93, v96, "btBatteryScanner - found: %s, bleID: %s, battery: %s", v31, 0x20u);
  swift_arrayDestroy();

  a2 = v98;
LABEL_23:
  v65 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v66 = *(*(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (!v66)
  {
    return;
  }

  v67 = v66;
  v68 = [v103 identifier];
  if (v68)
  {
    v69 = v68;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = *(v6 + 56);
  v71(v38, v70, 1, v5);
  v102 = v67;
  v72 = [v67 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v71(v33, 0, 1, v5);
  v73 = *(v97 + 48);
  sub_10000FF90(v38, v39, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v33, v39 + v73, &unk_100976120, &qword_1007F9260);
  v74 = *(v6 + 48);
  if (v74(v39, 1, v5) == 1)
  {
    sub_100005508(v33, &unk_100976120, &qword_1007F9260);
    sub_100005508(v38, &unk_100976120, &qword_1007F9260);
    v75 = v74(v39 + v73, 1, v5);
    v76 = v102;
    if (v75 == 1)
    {
      sub_100005508(v39, &unk_100976120, &qword_1007F9260);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v77 = v95;
  sub_10000FF90(v39, v95, &unk_100976120, &qword_1007F9260);
  if (v74(v39 + v73, 1, v5) == 1)
  {
    sub_100005508(v33, &unk_100976120, &qword_1007F9260);
    sub_100005508(v38, &unk_100976120, &qword_1007F9260);
    (*(v101 + 8))(v77, v5);
    v76 = v102;
LABEL_32:
    sub_100005508(v39, &unk_100987030, &qword_1007F9330);
    goto LABEL_46;
  }

  v78 = v101;
  v79 = v94;
  (*(v101 + 32))(v94, v39 + v73, v5);
  sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v80 = dispatch thunk of static Equatable.== infix(_:_:)();
  v81 = *(v78 + 8);
  v81(v79, v5);
  sub_100005508(v33, &unk_100976120, &qword_1007F9260);
  sub_100005508(v38, &unk_100976120, &qword_1007F9260);
  v81(v95, v5);
  sub_100005508(v39, &unk_100976120, &qword_1007F9260);
  v76 = v102;
  if (v80)
  {
LABEL_34:
    v82 = *(v98 + v65);

    v83 = [v103 batteryInfo];
    if (v83)
    {
      sub_1000276B4(0, &qword_100987040, SFBatteryInfo_ptr);
      v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v84 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_37;
        }
      }

      else if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_37:
        if ((v84 & 0xC000000000000001) != 0)
        {
          v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v85 = *(v84 + 32);
        }

        v83 = v85;

        goto LABEL_43;
      }

      v83 = 0;
    }

LABEL_43:
    v86 = *(v82 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo);
    *(v82 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo) = v83;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v88 = Strong;
      sub_1005F2838(Strong, 1);
    }

    sub_1005F7090();
  }

LABEL_46:
}

void sub_10061EACC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v89[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  __chkstk_darwin(v9);
  v11 = &v89[-v10];
  v12 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v13 = __chkstk_darwin(v12 - 8);
  v14 = __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v16 = __chkstk_darwin(&v89[-v15]);
  v17 = __chkstk_darwin(v16);
  v102 = &v89[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v89[-v20];
  v22 = __chkstk_darwin(v19);
  v27 = &v89[-v26];
  v103 = a3;
  v28 = *(*(a3 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v28)
  {
    v94 = v22;
    v95 = v25;
    v104 = v5;
    v92 = v24;
    v93 = v23;
    v97 = v8;
    v99 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    v29 = v28;
    v98 = a1;
    v30 = [a1 identifier];
    if (v30)
    {
      v31 = v30;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = *(v6 + 56);
      v33 = v27;
      v34 = 0;
    }

    else
    {
      v32 = *(v6 + 56);
      v33 = v27;
      v34 = 1;
    }

    v35 = v104;
    v32(v33, v34, 1, v104);
    v101 = v29;
    v36 = [v29 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v96 = v32;
    v32(v21, 0, 1, v35);
    v37 = *(v9 + 48);
    sub_10000FF90(v27, v11, &unk_100976120, &qword_1007F9260);
    sub_10000FF90(v21, &v11[v37], &unk_100976120, &qword_1007F9260);
    v100 = v6;
    v38 = *(v6 + 48);
    if (v38(v11, 1, v35) == 1)
    {
      sub_100005508(v21, &unk_100976120, &qword_1007F9260);
      sub_100005508(v27, &unk_100976120, &qword_1007F9260);
      if (v38(&v11[v37], 1, v35) == 1)
      {
        v39 = v35;
        v91 = v38;
        sub_100005508(v11, &unk_100976120, &qword_1007F9260);
        goto LABEL_12;
      }
    }

    else
    {
      v40 = v102;
      sub_10000FF90(v11, v102, &unk_100976120, &qword_1007F9260);
      if (v38(&v11[v37], 1, v35) != 1)
      {
        v91 = v38;
        v41 = v100;
        v42 = &v11[v37];
        v43 = v97;
        (*(v100 + 32))(v97, v42, v35);
        sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v90 = dispatch thunk of static Equatable.== infix(_:_:)();
        v44 = *(v41 + 8);
        v44(v43, v104);
        sub_100005508(v21, &unk_100976120, &qword_1007F9260);
        sub_100005508(v27, &unk_100976120, &qword_1007F9260);
        v44(v40, v104);
        v39 = v104;
        sub_100005508(v11, &unk_100976120, &qword_1007F9260);
        if (v90)
        {
LABEL_12:
          if (qword_100973B58 != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          sub_10000C4AC(v45, qword_1009865B0);
          v46 = v98;
          v47 = Logger.logObject.getter();
          LODWORD(v48) = static os_log_type_t.default.getter();

          v49 = &selRef_awdlInfoForPeerWithServiceName_;
          if (!os_log_type_enabled(v47, v48))
          {
LABEL_33:

            v84 = *(v103 + v99);

            v85 = [v46 v49[42]];
            if (v85)
            {
              sub_1000276B4(0, &qword_100987040, SFBatteryInfo_ptr);
              v86 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v86 >> 62)
              {
                if (_CocoaArrayWrapper.endIndex.getter())
                {
                  goto LABEL_36;
                }
              }

              else if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_36:
                if ((v86 & 0xC000000000000001) != 0)
                {
                  v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (!*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    return;
                  }

                  v87 = *(v86 + 32);
                }

                v85 = v87;

                goto LABEL_42;
              }

              v85 = 0;
            }

LABEL_42:
            v88 = *(v84 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo);
            *(v84 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo) = v85;

            sub_1005F7090();
            goto LABEL_43;
          }

          v50 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v105 = v104;
          *v50 = 136315650;
          v51 = [v46 identifier];
          v52 = v94;
          if (v51)
          {
            v53 = v51;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v96(v52, 0, 1, v39);
          }

          else
          {
            v96(v94, 1, 1, v39);
          }

          v54 = v95;
          sub_1005D8888(v52, v95);
          if (v91(v54, 1, v39))
          {
            sub_100005508(v54, &unk_100976120, &qword_1007F9260);
            v55 = 0x8000000100799580;
            v56 = 0xD000000000000015;
          }

          else
          {
            LODWORD(v102) = v48;
            v48 = v100;
            v57 = v97;
            (*(v100 + 16))(v97, v54, v39);
            sub_100005508(v54, &unk_100976120, &qword_1007F9260);
            v58 = v47;
            v59 = UUID.description.getter();
            v55 = v60;
            v61 = v48;
            LOBYTE(v48) = v102;
            (*(v61 + 8))(v57, v39);
            v56 = v59;
            v47 = v58;
            v49 = &selRef_awdlInfoForPeerWithServiceName_;
          }

          v62 = sub_10000C4E4(v56, v55, &v105);

          *(v50 + 4) = v62;
          *(v50 + 12) = 2080;
          v63 = [v46 bleDevice];
          if (v63)
          {
            v64 = v63;
            v65 = [v63 identifier];

            if (v65)
            {
              v66 = v92;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v67 = 0;
            }

            else
            {
              v67 = 1;
              v66 = v92;
            }

            v96(v66, v67, 1, v39);
            v68 = v93;
            sub_1005D8888(v66, v93);
            if (!v91(v68, 1, v39))
            {
              v71 = v48;
              v48 = v100;
              v72 = v47;
              v73 = v97;
              (*(v100 + 16))(v97, v68, v39);
              sub_100005508(v68, &unk_100976120, &qword_1007F9260);
              v74 = UUID.description.getter();
              v69 = v75;
              v76 = v73;
              v47 = v72;
              (*(v48 + 8))(v76, v39);
              LOBYTE(v48) = v71;
              v70 = v74;
              goto LABEL_29;
            }

            sub_100005508(v68, &unk_100976120, &qword_1007F9260);
          }

          v69 = 0x80000001007995A0;
          v70 = 0xD00000000000001FLL;
LABEL_29:
          v77 = sub_10000C4E4(v70, v69, &v105);

          *(v50 + 14) = v77;
          *(v50 + 22) = 2080;
          v78 = [v46 v49[42]];
          if (v78)
          {
            v79 = v78;
            sub_1000276B4(0, &qword_100987040, SFBatteryInfo_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v80 = Array.description.getter();
            v82 = v81;
          }

          else
          {
            v82 = 0x80000001007995C0;
            v80 = 0xD000000000000016;
          }

          v83 = sub_10000C4E4(v80, v82, &v105);

          *(v50 + 24) = v83;
          _os_log_impl(&_mh_execute_header, v47, v48, "btBatteryScanner - changed: %s, bleID: %s, battery: %s", v50, 0x20u);
          swift_arrayDestroy();

          goto LABEL_33;
        }

LABEL_43:

        return;
      }

      sub_100005508(v21, &unk_100976120, &qword_1007F9260);
      sub_100005508(v27, &unk_100976120, &qword_1007F9260);
      (*(v100 + 8))(v40, v35);
    }

    sub_100005508(v11, &unk_100987030, &qword_1007F9330);
    goto LABEL_43;
  }
}

void sub_10061F624(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

void sub_10061F71C(uint64_t a1)
{
  if (a1)
  {
    v2 = static os_log_type_t.error.getter();
  }

  else
  {
    v2 = static os_log_type_t.default.getter();
  }

  v3 = v2;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = v8;
    }

    else
    {
      v9 = 0x8000000100789F30;
      v7 = 0xD000000000000015;
    }

    v10 = sub_10000C4E4(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Activated btBatteryScanner with error %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  else
  {
  }
}

void sub_10061F94C()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v2 = *(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner);
  if (v2)
  {
    v3 = v0;
    v4 = qword_100973B58;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_1009865B0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "stopBatteryScanner", v9, 2u);
    }

    [v5 invalidate];
    v10 = *(v3 + v1);
    v11 = *(v10 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner);
    *(v10 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner) = 0;
  }
}

unint64_t sub_10061FB04()
{
  result = qword_100987018;
  if (!qword_100987018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987018);
  }

  return result;
}

uint64_t sub_10061FB58()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 hasTag:v1];

  if (v2)
  {
    return 1;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 hasTag:v3];

  if (v4)
  {
    return 1;
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = [v0 hasTag:v5];

  if (v6)
  {
    return 1;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = [v0 hasTag:v8];

  return v9;
}

void *sub_10061FC58(uint64_t a1)
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
    result = sub_10061FDB8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1006200FC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_10061FDB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a1;
  v46 = sub_10028088C(&unk_100987098, &unk_10080DA18);
  v4 = __chkstk_darwin(v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v34 - v6;
  v43 = type metadata accessor for UUID();
  result = __chkstk_darwin(v43);
  v49 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v47 = a3;
  v11 = *(a3 + 64);
  v38 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v36 = 0;
  v37 = (v12 + 63) >> 6;
  v41 = v8 + 16;
  v42 = v8;
  v40 = v8 + 8;
  while (v14)
  {
    v15 = __clz(__rbit64(v14));
    v48 = (v14 - 1) & v14;
LABEL_11:
    v18 = v15 | (v10 << 6);
    v19 = v47;
    v21 = v42;
    v20 = v43;
    v22 = *(v42 + 16);
    v23 = v49;
    v22(v49, v47[6] + *(v42 + 72) * v18, v43);
    v24 = v19[7];
    v39 = v18;
    v25 = *(v24 + 8 * v18);
    v26 = v44;
    v22(v44, v23, v20);
    v27 = v45;
    v28 = v46;
    *(v26 + *(v46 + 48)) = v25;
    sub_10000FF90(v26, v27, &unk_100987098, &unk_10080DA18);
    v29 = *(v27 + *(v28 + 48));
    v30 = v25;
    v31 = [v29 state];

    sub_100005508(v26, &unk_100987098, &unk_10080DA18);
    v32 = *(v21 + 8);
    v32(v27, v20);

    result = (v32)(v49, v20);
    v14 = v48;
    if (v31)
    {
      *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_100620874(v35, v34, v36, v47);
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v37)
    {
      return sub_100620874(v35, v34, v36, v47);
    }

    v17 = *(v38 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v48 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1006200FC(void *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_10061FDB8(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100620174(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_10028088C(&qword_100976188, &unk_10080AFA0);
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
    sub_1002D63B0(v17 + 48 * v16, v33);
    sub_1002D6398(v33, v32);
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
    result = sub_1002D6398(v32, (*(v9 + 56) + 48 * v24));
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

uint64_t sub_1006203D0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = type metadata accessor for SFNWInterfaceType();
  v54 = *(v58 - 8);
  v8 = __chkstk_darwin(v58);
  v57 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = v44 - v10;
  v11 = type metadata accessor for UUID();
  v53 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v56 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = v44 - v14;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10028088C(&unk_1009746E0, &unk_1007F65C0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_10000D4DC(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_26:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
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

uint64_t sub_100620874(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = &v36 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10028088C(&unk_100976350, &unk_10080B030);
  result = static _DictionaryStorage.allocate(capacity:)();
  v46 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = a4;
  v39 = v9 + 16;
  v45 = v9 + 32;
  v16 = v46 + 64;
  v37 = a1;
  v40 = v9;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[6];
    v44 = *(v9 + 72);
    v22 = v41;
    (*(v9 + 16))(v41, v21 + v44 * v20, v8);
    v23 = *(a4[7] + 8 * v20);
    v43 = *(v9 + 32);
    v43(v47, v22, v8);
    v24 = v46;
    sub_10000D4DC(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = v23;
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(v24 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v9 = v40;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v9 = v40;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = v46;
    result = (v43)(*(v46 + 48) + v29 * v44, v47, v8);
    *(*(v34 + 56) + 8 * v29) = v25;
    ++*(v34 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a1 = v37;
    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v46;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v46;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v42 = (v19 - 1) & v19;
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

void sub_100620C08(uint64_t a1)
{
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = MobileGestalt_copy_hwModelStr_obj();

  if (!v3)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._countAndFlagsBits = 825767242;
  v4._object = 0xE400000000000000;
  v5 = String.hasPrefix(_:)(v4);

  if (v5)
  {
    return;
  }

  v6 = MobileGestalt_get_current_device();
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = MobileGestalt_copy_hwModelStr_obj();

  if (!v8)
  {
LABEL_13:
    __break(1u);
    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9._countAndFlagsBits = 842544458;
  v9._object = 0xE400000000000000;
  v10 = String.hasPrefix(_:)(v9);

  if (!v10)
  {
    sub_10062503C();
    if (v11)
    {
      IOObjectRelease(v11);
    }
  }
}

uint64_t sub_100620D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_100620FE4()
{
  v0 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009865B0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "remoteAlertHandleDidDeactivate", v6, 2u);
  }

  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_1005FCB7C(v2, 0);
  return sub_100005508(v2, &unk_100976120, &qword_1007F9260);
}

uint64_t sub_1006212B0()
{
  [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___SFB332UIProtocol];
  sub_10028088C(&qword_100974EA0, &qword_1007FBA30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007F5670;
  v1 = sub_1000276B4(0, &qword_100987160, NSUUID_ptr);
  *(v0 + 56) = sub_10028088C(&unk_100987168, &unk_10080DAE0);
  *(v0 + 32) = v1;
  v2 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 initWithArray:isa];

  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

uint64_t sub_10062144C(void *a1)
{
  v1 = [a1 sd_connectionBundleID];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0xD00000000000001CLL && 0x8000000100789280 == v5)
    {
      v7 = 1;
      v3 = 0xD00000000000001CLL;
    }

    else if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v7 = 1;
    }

    else if (v3 == 0xD000000000000023 && 0x80000001007913E0 == v5)
    {
      v7 = 1;
      v3 = 0xD000000000000023;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
    v3 = 0;
    v5 = 0;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_1009865B0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 67109378;
    *(v11 + 4) = v7 & 1;
    *(v11 + 8) = 2080;
    if (v5)
    {
      v13 = v3;
    }

    else
    {
      v13 = 0xD000000000000015;
    }

    if (!v5)
    {
      v5 = 0x8000000100789F30;
    }

    v14 = sub_10000C4E4(v13, v5, &v17);

    *(v11 + 10) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "XPC: shouldAcceptNewConnection: %{BOOL}d. (%s)", v11, 0x12u);
    sub_10000C60C(v12);
  }

  else
  {
  }

  return v7 & 1;
}

void sub_1006216B0(void *a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "didConnect: %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  sub_1005F7090();
}

void sub_100621804(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v53 = &v52 - v10;
  __chkstk_darwin(v9);
  v12 = &v52 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);

  v14 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingDisconnect;
  swift_beginAccess();
  v16 = *(v13 + v15);

  v17 = *(v16 + 16);
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  v54 = v5;
  if (v17)
  {
    sub_10000EBD4(v12);
    v20 = v19;
    v21 = *(v5 + 8);
    v21(v12, v4);

    if (v20)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000C4AC(v22, qword_1009865B0);
      v23 = a1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v52 = a1;
        v27 = v26;
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v23;
        *v28 = v23;
        v29 = v23;
        _os_log_impl(&_mh_execute_header, v24, v25, "didDisconnectPeripheral - removing from needingDisconnect: %@", v27, 0xCu);
        sub_100005508(v28, &qword_100975400, &qword_1007F65D0);

        a1 = v52;
      }

      v30 = [v23 identifier];
      v31 = v53;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      sub_1002B25B8(0, v31);
      swift_endAccess();
    }

    p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
  }

  else
  {

    v21 = *(v5 + 8);
    v21(v12, v4);
  }

  v32 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_peripheralsIConnectedTo;
  swift_beginAccess();
  if (*(*(v2 + v33) + 16))
  {

    sub_10000EBD4(v8);
    v35 = v34;
    v21(v8, v4);

    if (v35)
    {
      if (p_opt_class_meths[363] != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000C4AC(v36, qword_1009865B0);
      v37 = a1;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&_mh_execute_header, v38, v39, "didDisconnectPeripheral - removing from peripheralsIConnectedTo: %@", v40, 0xCu);
        sub_100005508(v41, &qword_100975400, &qword_1007F65D0);
      }

      v43 = [v37 identifier];
      v44 = v53;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      sub_1002B25B8(0, v44);
      swift_endAccess();
    }
  }

  else
  {
    v21(v8, v4);
  }

  if (p_opt_class_meths[363] != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_10000C4AC(v45, qword_1009865B0);
  v46 = a1;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v46;
    *v50 = v46;
    v51 = v46;
    _os_log_impl(&_mh_execute_header, v47, v48, "didDisconnectPeripheral: %@", v49, 0xCu);
    sub_100005508(v50, &qword_100975400, &qword_1007F65D0);
  }

  sub_1005F7090();
}

uint64_t sub_100621E8C(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v49 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  __chkstk_darwin(v5);
  v7 = &v47[-v6];
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v9 = __chkstk_darwin(v8 - 8);
  v51 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v47[-v12];
  v14 = __chkstk_darwin(v11);
  v16 = &v47[-v15];
  __chkstk_darwin(v14);
  v18 = &v47[-v17];
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_1009865B0);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v52 = v13;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v50 = v16;
    v26 = v2;
    v27 = v5;
    v28 = v3;
    v29 = v25;
    *v24 = 138412290;
    *(v24 + 4) = v20;
    *v25 = v20;
    v30 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "didFailToConnect: %@", v24, 0xCu);
    sub_100005508(v29, &qword_100975400, &qword_1007F65D0);
    v3 = v28;
    v5 = v27;
    v2 = v26;
    v16 = v50;
  }

  v31 = [v20 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = *(v3 + 56);
  v33 = 1;
  (v32)(v18, 0, 1, v2);
  v34 = *(*(v53 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v34)
  {
    v35 = [v34 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = 0;
  }

  v50 = v32;
  (v32)(v16, v33, 1, v2);
  v36 = *(v5 + 48);
  sub_10000FF90(v18, v7, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v16, &v7[v36], &unk_100976120, &qword_1007F9260);
  v37 = v3;
  v38 = *(v3 + 48);
  if (v38(v7, 1, v2) == 1)
  {
    sub_100005508(v16, &unk_100976120, &qword_1007F9260);
    sub_100005508(v18, &unk_100976120, &qword_1007F9260);
    if (v38(&v7[v36], 1, v2) == 1)
    {
      sub_100005508(v7, &unk_100976120, &qword_1007F9260);
LABEL_14:
      v46 = v51;
      (v50)(v51, 1, 1, v2);
      sub_1005FCB7C(v46, 0);
      v39 = &unk_100976120;
      v40 = &qword_1007F9260;
      v41 = v46;
      return sub_100005508(v41, v39, v40);
    }
  }

  else
  {
    sub_10000FF90(v7, v52, &unk_100976120, &qword_1007F9260);
    if (v38(&v7[v36], 1, v2) != 1)
    {
      v42 = v49;
      (*(v37 + 32))(v49, &v7[v36], v2);
      sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v43 = v52;
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = *(v37 + 8);
      v44(v42, v2);
      sub_100005508(v16, &unk_100976120, &qword_1007F9260);
      sub_100005508(v18, &unk_100976120, &qword_1007F9260);
      v44(v43, v2);
      result = sub_100005508(v7, &unk_100976120, &qword_1007F9260);
      if ((v48 & 1) == 0)
      {
        return result;
      }

      goto LABEL_14;
    }

    sub_100005508(v16, &unk_100976120, &qword_1007F9260);
    sub_100005508(v18, &unk_100976120, &qword_1007F9260);
    (*(v37 + 8))(v52, v2);
  }

  v39 = &unk_100987030;
  v40 = &qword_1007F9330;
  v41 = v7;
  return sub_100005508(v41, v39, v40);
}

void sub_1006224DC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v9 = &unk_1009A0000;
  if (!*(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral))
  {
    v10 = sub_1005F3200();
    if (v11)
    {
      v23 = a1;
      v12 = *(v1 + v8);
      v13 = *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr + 8);
      if (v13 >> 60 == 15)
      {
LABEL_14:

        v16 = String._bridgeToObjectiveC()();

        v17 = [v23 retrievePeripheralWithAddress:v16];

        v18 = *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
        *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral) = v17;

LABEL_15:

        if (*(*(v2 + v8) + v9[461]))
        {
          sub_1005F7090();
        }

        return;
      }

      v22[1] = v10;
      v14 = *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr);
      v15 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v15 != 2)
        {
          goto LABEL_10;
        }
      }

      else if (!v15)
      {
        goto LABEL_10;
      }

      sub_100294008(v14, v13);
LABEL_10:
      sub_100294008(v14, v13);
      Data.Iterator.init(_:at:)();
      sub_10000D4DC(&unk_100975020, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
      while (1)
      {
        dispatch thunk of IteratorProtocol.next()();
        if (v25)
        {
          break;
        }

        if (v24)
        {
          sub_10028BCC0(v14, v13);
          (*(v5 + 8))(v7, v4);
          v12 = *(v1 + v8);
          v9 = &unk_1009A0000;
          goto LABEL_14;
        }
      }

      sub_10028BCC0(v14, v13);
      (*(v5 + 8))(v7, v4);
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000C4AC(v19, qword_1009865B0);
      v18 = Logger.logObject.getter();
      v20 = static os_log_type_t.fault.getter();
      v9 = &unk_1009A0000;
      if (os_log_type_enabled(v18, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v18, v20, "allNullAddr! Pencil sent all-0 BT addr.", v21, 2u);
      }

      goto LABEL_15;
    }
  }
}

void sub_100622838(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v71 = a3;
  v67 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v13 = __chkstk_darwin(v12 - 8);
  v68 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v17 = &v66 - v16;
  __chkstk_darwin(v15);
  v19 = &v66 - v18;
  v69 = a2;
  v20 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v7;
  v22 = *(v7 + 56);
  v23 = 1;
  v22(v19, 0, 1, v6);
  v72 = v4;
  v70 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v24 = *(*&v4[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v24)
  {
    v25 = [v24 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  v22(v17, v23, 1, v6);
  v26 = *(v9 + 48);
  sub_10000FF90(v19, v11, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v17, &v11[v26], &unk_100976120, &qword_1007F9260);
  v27 = v21;
  v28 = *(v21 + 48);
  if (v28(v11, 1, v6) != 1)
  {
    v30 = v68;
    sub_10000FF90(v11, v68, &unk_100976120, &qword_1007F9260);
    if (v28(&v11[v26], 1, v6) != 1)
    {
      v31 = v66;
      (*(v27 + 32))(v66, &v11[v26], v6);
      sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = v30;
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v27 + 8);
      v33(v31, v6);
      sub_100005508(v17, &unk_100976120, &qword_1007F9260);
      sub_100005508(v19, &unk_100976120, &qword_1007F9260);
      v33(v32, v6);
      sub_100005508(v11, &unk_100976120, &qword_1007F9260);
      goto LABEL_10;
    }

    sub_100005508(v17, &unk_100976120, &qword_1007F9260);
    sub_100005508(v19, &unk_100976120, &qword_1007F9260);
    (*(v27 + 8))(v30, v6);
    goto LABEL_8;
  }

  sub_100005508(v17, &unk_100976120, &qword_1007F9260);
  sub_100005508(v19, &unk_100976120, &qword_1007F9260);
  if (v28(&v11[v26], 1, v6) != 1)
  {
LABEL_8:
    sub_100005508(v11, &unk_100987030, &qword_1007F9330);
    v29 = 0;
    goto LABEL_10;
  }

  sub_100005508(v11, &unk_100976120, &qword_1007F9260);
  v29 = 1;
LABEL_10:
  v34 = v72;
  v35 = v69;
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36 && (v37 = v36, (sub_10061FB58() & 1) != 0))
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [v37 hasTag:v38];

    LODWORD(v69) = v39 ^ 1;
  }

  else
  {
    LODWORD(v69) = 0;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000C4AC(v40, qword_1009865B0);
  v41 = v35;
  v42 = v34;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v68 = v47;
    *v45 = 138413314;
    *(v45 + 4) = v41;
    *v46 = v41;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v71;
    *(v45 + 22) = 2080;
    v48 = *(*&v34[v70] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired);
    v73 = v47;
    v49 = 1702195828;
    if ((v48 & 1) == 0)
    {
      v49 = 0x65736C6166;
    }

    v50 = 0xE500000000000000;
    if (v48)
    {
      v50 = 0xE400000000000000;
    }

    if (v48 == 2)
    {
      v51 = 0xD000000000000013;
    }

    else
    {
      v51 = v49;
    }

    v52 = v29;
    if (v48 == 2)
    {
      v53 = 0x8000000100799820;
    }

    else
    {
      v53 = v50;
    }

    v54 = v41;
    v55 = sub_10000C4E4(v51, v53, &v73);
    v29 = v52;

    *(v45 + 24) = v55;
    *(v45 + 32) = 1024;
    *(v45 + 34) = v52 & 1;
    *(v45 + 38) = 1024;
    *(v45 + 40) = v69;
    _os_log_impl(&_mh_execute_header, v43, v44, "peerDidRequestPairing!!!! %@, type: %ld, paired? %s, isStoredPeripheral? %{BOOL}d, isTagged? %{BOOL}d", v45, 0x2Cu);
    sub_100005508(v46, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v68);
  }

  if (v29)
  {
    v56 = v72;
    v57 = v70;
    v58 = *&v72[v70];
    v59 = *(v58 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerRequestingPairing);
    *(v58 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerRequestingPairing) = v41;
    v60 = v41;

    v61 = *&v56[v57] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerPairingType;
    *v61 = v71;
    *(v61 + 8) = 0;
    sub_1005F7090();
  }

  else if (v69)
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "peerDidRequestPairing - is a B332 but not the one we're currently trying to pair to. Rejecting.", v64, 2u);
    }

    sub_10027FD18(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v67 respondToPairingRequest:v41 type:v71 accept:0 data:isa];
  }
}

void sub_1006230A0(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v10 = __chkstk_darwin(v9 - 8);
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v39 = &v38 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v38 - v15;
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v43 = a1;
  v19 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = 1;
  v44 = *(v4 + 56);
  v45 = v4 + 56;
  v44(v18, 0, 1, v3);
  v42 = v1;
  v40 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v21 = *(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v21)
  {
    v22 = [v21 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  v44(v16, v20, 1, v3);
  v23 = *(v6 + 48);
  sub_10000FF90(v18, v8, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v16, &v8[v23], &unk_100976120, &qword_1007F9260);
  v24 = *(v4 + 48);
  if (v24(v8, 1, v3) == 1)
  {
    sub_100005508(v16, &unk_100976120, &qword_1007F9260);
    sub_100005508(v18, &unk_100976120, &qword_1007F9260);
    if (v24(&v8[v23], 1, v3) == 1)
    {
      sub_100005508(v8, &unk_100976120, &qword_1007F9260);
      v25 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v26 = v39;
  sub_10000FF90(v8, v39, &unk_100976120, &qword_1007F9260);
  if (v24(&v8[v23], 1, v3) == 1)
  {
    sub_100005508(v16, &unk_100976120, &qword_1007F9260);
    sub_100005508(v18, &unk_100976120, &qword_1007F9260);
    (*(v4 + 8))(v26, v3);
LABEL_8:
    sub_100005508(v8, &unk_100987030, &qword_1007F9330);
    v25 = 0;
    goto LABEL_10;
  }

  v27 = v38;
  (*(v4 + 32))(v38, &v8[v23], v3);
  sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v28 = v26;
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v4 + 8);
  v29(v27, v3);
  sub_100005508(v16, &unk_100976120, &qword_1007F9260);
  sub_100005508(v18, &unk_100976120, &qword_1007F9260);
  v29(v28, v3);
  sub_100005508(v8, &unk_100976120, &qword_1007F9260);
LABEL_10:
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000C4AC(v30, qword_1009865B0);
  v31 = v43;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412546;
    *(v34 + 4) = v31;
    *v35 = v31;
    *(v34 + 12) = 1024;
    *(v34 + 14) = v25 & 1;
    v36 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "peerDidFailToCompletePairing: %@, isStoredPeripheral: %{BOOL}d", v34, 0x12u);
    sub_100005508(v35, &qword_100975400, &qword_1007F65D0);
  }

  if (v25)
  {
    *(*(v42 + v40) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didPairingSucceed) = 0;

    sub_1005F1D24();

    v37 = v41;
    v44(v41, 1, 1, v3);
    sub_1005FCB7C(v37, 0);
    sub_100005508(v37, &unk_100976120, &qword_1007F9260);
  }
}

uint64_t sub_100623718(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_100625170;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EAE18;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = v1;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

uint64_t sub_1006239F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v25 = a6;
  v26 = a7;
  ObjectType = swift_getObjectType();
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v27 - 8);
  __chkstk_darwin(v27);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v20 = v25;
  v19 = v26;
  v18[6] = a5;
  v18[7] = v20;
  v18[8] = v19;
  v18[9] = v7;
  v18[10] = ObjectType;
  aBlock[4] = sub_100625004;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EADA0;
  v21 = _Block_copy(aBlock);

  sub_100294008(a3, a4);

  sub_100294008(v20, v19);
  v22 = v7;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  v23 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v31 + 8))(v15, v23);
  (*(v28 + 8))(v17, v30);
}

uint64_t sub_100623D2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = sub_100624F24;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EABE8;
  v17 = _Block_copy(aBlock);
  v18 = v4;

  sub_100294008(a3, a4);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_100624028(int a1, char a2, int a3, char a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v13 = *(v20 - 8);
  __chkstk_darwin(v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 20) = a1;
  *(v16 + 24) = a4;
  *(v16 + 25) = a2;
  aBlock[4] = sub_100624F14;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EAB98;
  v17 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_10062430C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_100624F0C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EAB48;
  v11 = _Block_copy(aBlock);

  v12 = v1;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_1006245E8(int a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = v3;
  aBlock[4] = sub_100624EFC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EAAF8;
  v15 = _Block_copy(aBlock);
  sub_100294008(a2, a3);
  v16 = v3;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

unint64_t sub_100624918()
{
  result = qword_100987048;
  if (!qword_100987048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987048);
  }

  return result;
}

unint64_t sub_10062496C()
{
  result = qword_100987050;
  if (!qword_100987050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987050);
  }

  return result;
}

uint64_t sub_1006249C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10060D954(a1, v4, v5, v6);
}

uint64_t sub_100624AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100609FFC(a1, v4, v5, v7, v6);
}

uint64_t sub_100624B60(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_10060BD14(a1, a2, v6);
}

void sub_100624C10(int a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = v1 + ((v5 + *(v6 + 80) + 9) & ~*(v6 + 80));

  sub_10060D058(a1, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_100624D24(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_10060C5DC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100624E44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_1002D65C0(a1, v4);
}

uint64_t sub_100624F34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_10061C12C(a1, v4, v5, v7, v6);
}

void sub_10062503C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_10099E960;
  v7 = off_10099E960;
  if (!off_10099E960)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100625C8C;
    v3[3] = &unk_1008CDA20;
    v3[4] = &v4;
    sub_100625C8C(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0(257);
  }

  else
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"io_service_t _IOAccessoryManagerGetServiceWithPrimaryPort(SInt32)"];
    [v1 handleFailureInFunction:v2 file:@"Daemon-iOS-Bridging-Header.h" lineNumber:103 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100625158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100625264(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_1006252EC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = *v1;
    v3 = v2 > 4;
    v4 = (1 << v2) & 0x1A;
    if (!v3 && v4 != 0)
    {
      sub_1005F7090();
    }
  }
}

const char *sub_100625350(int a1)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return "SEish";
      }

      else
      {
        return "J3XXish";
      }
    }

    else if (a1)
    {
      if (a1 != 1)
      {
        return "?";
      }

      return "D22ish";
    }

    else
    {
      return "Unknown";
    }
  }

  else if (a1 <= 5)
  {
    if (a1 == 4)
    {
      return "N112ish";
    }

    else
    {
      return "B520ish";
    }
  }

  else if (a1 == 6)
  {
    return "B620ish";
  }

  else
  {
    if (a1 != 7)
    {
      return "?";
    }

    return "J255ish";
  }
}

uint64_t sub_100625790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1005FAA10(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100625884(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

uint64_t sub_1006259B4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1006155FC(v8, a1, v4, v5, v6, v7);
}

uint64_t sub_100625A84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_100615274(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100625B4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100625B94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_100614F54(a1, v4, v5, v6, v7, v8);
}

void *sub_100625C8C(void *a1)
{
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = qword_10099E968;
  v11 = qword_10099E968;
  if (!qword_10099E968)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100625E78;
    v5[4] = &unk_1008EBCE8;
    v6 = &v8;
    v7 = v5;
    v12 = *off_1008EBCC8;
    v13 = 0;
    v9[3] = _sl_dlopen();
    qword_10099E968 = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *libIOAccessoryManagerLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"Daemon-iOS-Bridging-Header.h" lineNumber:102 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "IOAccessoryManagerGetServiceWithPrimaryPort");
  *(*(a1[4] + 8) + 24) = result;
  off_10099E960 = *(*(a1[4] + 8) + 24);
  return result;
}

void sub_100625E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100625E78(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10099E968 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1006261A0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_100626284, v3, 0);
}

uint64_t sub_100626284()
{
  sub_1002940CC(v0[5], v0[10]);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = v0[9];
    v2 = v0[8];
    v3 = v0[5];
    sub_10062708C(v0[10], type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    sub_1002940CC(v3, v2);
    swift_beginAccess();
    sub_10046DE64(v1, v2);
    swift_endAccess();
  }

  else
  {
    v1 = v0[10];
  }

  sub_10062708C(v1, type metadata accessor for SDAirDropDiscoveredEndpoint);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1006263B0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009871F0);
  v1 = sub_10000C4AC(v0, qword_1009871F0);
  if (qword_1009736E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100626478(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropDiscoveredNearFieldDevice_allEndpoints) = &_swiftEmptySetSingleton;
  v31 = a1;
  v15 = UUID.uuidString.getter();
  v17 = v16;
  *(v2 + 16) = v15;
  *(v2 + 24) = v16;
  (*(v12 + 56))(v10, 1, 1, v11);

  sub_10062E9D8(v10, v15, v17, v14);

  v18 = v10;
  v19 = v11;
  sub_100005508(v18, &unk_100976120, &qword_1007F9260);
  (*(v12 + 16))(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropDiscoveredNearFieldDevice_connectableUUID, v14, v11);
  *v7 = nw_endpoint_create_application_service();
  (*(v5 + 104))(v7, enum case for NWEndpoint.opaque(_:), v4);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropDiscoveredNearFieldDevice_displayEndpoint, v7, v4);
  if (qword_100973B78 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_1009871F0);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136315138;
    v25 = *(v2 + 16);
    v26 = *(v2 + 24);

    v27 = sub_10000C4E4(v25, v26, &v32);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Creating NearFieldDevice %s", v23, 0xCu);
    sub_10000C60C(v24);
  }

  v28 = *(v12 + 8);
  v28(v31, v19);
  v28(v14, v19);
  return v2;
}

uint64_t sub_100626894()
{

  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropDiscoveredNearFieldDevice_connectableUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropDiscoveredNearFieldDevice_displayEndpoint;
  v4 = type metadata accessor for NWEndpoint();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropDiscoveredNearFieldDevice(uint64_t a1)
{
  result = qword_100987238;
  if (!qword_100987238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006269DC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NWEndpoint();
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

unint64_t sub_100626AC0()
{
  v1 = *v0;
  _StringGuts.grow(_:)(19);

  String.append(_:)(v1[1]);
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0xD000000000000010;
}

uint64_t sub_100626B60(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_100626C64, v3, 0);
}

uint64_t sub_100626C64()
{
  sub_1002940CC(v0[5], v0[9]);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = v0[7];
    v2 = v0[5];
    sub_10062708C(v0[9], type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    swift_beginAccess();
    sub_10036E788(v2, v1);
    swift_endAccess();
    sub_100005508(v1, &qword_1009763E0, &qword_1007F95D0);
  }

  else
  {
    sub_10062708C(v0[9], type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_100626DAC()
{
  *(v1 + 40) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_100626E48, v2, 0);
}

uint64_t sub_100626E48()
{
  swift_beginAccess();
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_100626EDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C04;

  return sub_1006261A0(a1);
}

uint64_t sub_100626F74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C00;

  return sub_100626B60(a1);
}

unint64_t sub_10062700C(uint64_t a1)
{
  result = sub_100627034();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100627034()
{
  result = qword_1009872D8;
  if (!qword_1009872D8)
  {
    type metadata accessor for SDAirDropDiscoveredNearFieldDevice(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009872D8);
  }

  return result;
}

uint64_t sub_10062708C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100627110(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for SFAirDropSend.Transfer.State();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[11] = swift_task_alloc();
  sub_10028088C(&qword_10097B1B0, &unk_10080DD40);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for CancellationError();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropSend.Failure();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropSend.Transfer();
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2[32] = static AirDropActor.shared;
  v9 = swift_task_alloc();
  v2[33] = v9;
  *v9 = v2;
  v9[1] = sub_1006274E0;

  return sub_1005435A0(0, 0xF000000000000000);
}

uint64_t sub_1006274E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v5 = sub_100627B78;
  }

  else
  {
    v5 = sub_10062760C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10062760C()
{
  v1 = v0[34];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[36] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_1006276E8;
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[27];

  return static SFSecurityScopedURL.withAccess<A>(to:body:)(v6, v5, &unk_10080DD58, v3, v7);
}

uint64_t sub_1006276E8()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = sub_100628050;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_10062781C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10062781C()
{
  (*(v0[28] + 32))(v0[6], v0[31], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100627930()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_100627A40, v1, 0);
}

uint64_t sub_100627A40()
{
  v1 = v0[40];
  v2 = v0[26];
  v3 = v0[23];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100627B78()
{
  v1 = v0[35];
  v0[5] = v1;
  v0[39] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v3 = v0[21];
    v2 = v0[22];
    v4 = v0[20];
    (*(v0[24] + 104))(v0[26], enum case for SFAirDropSend.Failure.cancelled(_:), v0[23]);
    (*(v3 + 8))(v2, v4);
  }

  else
  {

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v33 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[26];
  v23 = v0[19];
  v35 = v0[18];
  v36 = v0[17];
  v31 = v0[13];
  v24 = v0[12];
  v28 = v0[11];
  v29 = v0[14];
  v34 = v0[10];
  v37 = v0[9];
  v38 = v0[8];
  v9 = v0[7];
  v39 = v0[6];
  v10 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v11 = *(v7 + 16);
  v30 = v9;
  v11(v5, v9 + v10, v8);
  SFAirDropSend.Transfer.id.getter();
  v12 = *(v7 + 8);
  v12(v5, v8);
  v11(v6, v9 + v10, v8);
  SFAirDropSend.Transfer.startDate.getter();
  v12(v6, v8);
  SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
  v32 = *(v25 + 16);
  v32(v24, v27, v26);
  v13 = enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:);
  v14 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v24, v13, v14);
  (*(v15 + 56))(v24, 0, 1, v14);
  SFAirDropSend.Transfer.Metrics.result.setter();
  static Date.now.getter();
  (*(v29 + 56))(v28, 0, 1, v31);
  SFAirDropSend.Transfer.Metrics.endDate.setter();
  (*(v25 + 104))(v33, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v26);
  LOBYTE(v13) = static SFAirDropSend.Failure.== infix(_:_:)();
  v16 = *(v25 + 8);
  v0[40] = v16;
  v0[41] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v33, v26);
  v17 = *(v30 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
  ObjectType = swift_getObjectType();
  if (v13)
  {
    v19 = 5;
  }

  else
  {
    v19 = 4;
  }

  (*(v17 + 16))(v19, ObjectType, v17);
  v20 = *(sub_10028088C(&unk_100986210, &unk_1008042C0) + 48);
  (*(v35 + 16))(v34, v23, v36);
  v32(&v34[v20], v27, v26);
  (*(v37 + 104))(v34, enum case for SFAirDropSend.Transfer.State.transferFailed(_:), v38);
  sub_100335364(v34, v39);
  (*(v37 + 8))(v34, v38);
  v21 = swift_task_alloc();
  v0[42] = v21;
  *v21 = v0;
  v21[1] = sub_100627930;

  return sub_100334168();
}

uint64_t sub_100628050()
{

  v1 = v0[38];
  v0[5] = v1;
  v0[39] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v3 = v0[21];
    v2 = v0[22];
    v4 = v0[20];
    (*(v0[24] + 104))(v0[26], enum case for SFAirDropSend.Failure.cancelled(_:), v0[23]);
    (*(v3 + 8))(v2, v4);
  }

  else
  {

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v33 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[26];
  v23 = v0[19];
  v35 = v0[18];
  v36 = v0[17];
  v31 = v0[13];
  v24 = v0[12];
  v28 = v0[11];
  v29 = v0[14];
  v34 = v0[10];
  v37 = v0[9];
  v38 = v0[8];
  v9 = v0[7];
  v39 = v0[6];
  v10 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v11 = *(v7 + 16);
  v30 = v9;
  v11(v5, v9 + v10, v8);
  SFAirDropSend.Transfer.id.getter();
  v12 = *(v7 + 8);
  v12(v5, v8);
  v11(v6, v9 + v10, v8);
  SFAirDropSend.Transfer.startDate.getter();
  v12(v6, v8);
  SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
  v32 = *(v25 + 16);
  v32(v24, v27, v26);
  v13 = enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:);
  v14 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v24, v13, v14);
  (*(v15 + 56))(v24, 0, 1, v14);
  SFAirDropSend.Transfer.Metrics.result.setter();
  static Date.now.getter();
  (*(v29 + 56))(v28, 0, 1, v31);
  SFAirDropSend.Transfer.Metrics.endDate.setter();
  (*(v25 + 104))(v33, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v26);
  LOBYTE(v13) = static SFAirDropSend.Failure.== infix(_:_:)();
  v16 = *(v25 + 8);
  v0[40] = v16;
  v0[41] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v33, v26);
  v17 = *(v30 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
  ObjectType = swift_getObjectType();
  if (v13)
  {
    v19 = 5;
  }

  else
  {
    v19 = 4;
  }

  (*(v17 + 16))(v19, ObjectType, v17);
  v20 = *(sub_10028088C(&unk_100986210, &unk_1008042C0) + 48);
  (*(v35 + 16))(v34, v23, v36);
  v32(&v34[v20], v27, v26);
  (*(v37 + 104))(v34, enum case for SFAirDropSend.Transfer.State.transferFailed(_:), v38);
  sub_100335364(v34, v39);
  (*(v37 + 8))(v34, v38);
  v21 = swift_task_alloc();
  v0[42] = v21;
  *v21 = v0;
  v21[1] = sub_100627930;

  return sub_100334168();
}

uint64_t sub_10062853C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100005C04;

  return sub_1006285F4(a1, a2, a4);
}

uint64_t sub_1006285F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v4[15] = swift_task_alloc();
  sub_10028088C(&qword_10097B1B0, &unk_10080DD40);
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for SFAirDrop.TransferIdentifier();
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v4[25] = swift_task_alloc();
  type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v4[26] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v4[30] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropSend.Transfer.State();
  v4[31] = v8;
  v4[32] = *(v8 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  sub_10028088C(&qword_10097B2B0, &unk_100808F70);
  v4[35] = swift_task_alloc();
  v9 = sub_10028088C(&qword_10097B2B8, &qword_1007FE670);
  v4[36] = v9;
  v4[37] = *(v9 - 8);
  v4[38] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v4[39] = v10;
  v4[40] = *(v10 - 8);
  v4[41] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDropSend.Transfer();
  v4[42] = v11;
  v12 = *(v11 - 8);
  v4[43] = v12;
  v4[44] = *(v12 + 64);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDrop.DeclineAction();
  v4[48] = v13;
  v4[49] = *(v13 - 8);
  v4[50] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDrop.Progress();
  v4[51] = v14;
  v4[52] = *(v14 - 8);
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v15 = sub_10028088C(&qword_1009768F8, &unk_1008092B0);
  v4[55] = v15;
  v4[56] = *(v15 - 8);
  v4[57] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDropSend.Request();
  v4[58] = v16;
  v4[59] = *(v16 - 8);
  v4[60] = swift_task_alloc();
  v4[61] = _s10AskRequestVMa(0);
  v4[62] = swift_task_alloc();
  sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v4[63] = swift_task_alloc();
  v17 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v4[64] = v17;
  v4[65] = *(v17 - 8);
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v18 = static AirDropActor.shared;
  v4[69] = static AirDropActor.shared;

  return _swift_task_switch(sub_100628D14, v18, 0);
}

uint64_t sub_100628D14()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];

  CurrentValueSubject.value.getter();

  sub_1002FB3B4(v0[8], v3);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100005508(v0[63], &qword_1009763E0, &qword_1007F95D0);
LABEL_10:
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing classroom endpoint or sendable urls", v18, 2u);
    }

    v19 = type metadata accessor for SFAirDropSend.Failure();
    sub_10062D080(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for SFAirDropSend.Failure.badRequest(_:), v19);
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }

  v4 = v0[68];
  v5 = v0[67];
  sub_10000ECA8(v0[63], v4, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1002940CC(v4, v5);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v15 = v0[67];
    sub_10062D020(v0[68], type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10062D020(v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
    goto LABEL_10;
  }

  v6 = v0[12];
  v7 = *v0[67];
  v0[70] = v7;
  if (!*(v6 + 16))
  {
    sub_10062D020(v0[68], type metadata accessor for SDAirDropDiscoveredEndpoint);

    goto LABEL_10;
  }

  v8 = v0[13];
  *(v0[14] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_urls) = v6;

  type metadata accessor for SDAirDropContentHandlerUtilities();
  v0[71] = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;

  v9 = SFAirDropSend.Request.requestSource.getter();
  v11 = v10;
  v0[72] = v10;
  v12 = swift_task_alloc();
  v0[73] = v12;
  *v12 = v0;
  v12[1] = sub_100629208;
  v13 = v0[68];

  return sub_1003CEFE4(v8, v9, v11, v13);
}

uint64_t sub_100629208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[74] = a1;
  v6[75] = a2;
  v6[76] = a3;
  v6[77] = v3;

  v7 = v5[69];

  if (v3)
  {
    v8 = sub_10062AB54;
  }

  else
  {
    v8 = sub_100629364;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100629364()
{
  if (v0[74])
  {
    v1 = v0[76];
    sub_1003C42B8(v0[74], v0[75], v1);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = v0[71];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[58];
  v6 = v0[13];
  v7 = v0[14];
  swift_beginAccess();
  sub_1004037BC(v1);
  swift_endAccess();
  (*(v4 + 16))(v3, v7 + v2, v5);
  v8 = sub_10032B99C();
  v10 = v9;
  v11 = *(v7 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus);

  v12 = swift_task_alloc();
  v0[78] = v12;
  *v12 = v0;
  v12[1] = sub_100629514;
  v13 = v0[75];
  v14 = v0[74];
  v15 = v0[62];
  v16 = v0[60];

  return sub_1005A1C54(v15, v16, v8, v10, v11, v6, v14, v13);
}

uint64_t sub_100629514()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 552);
  if (v0)
  {
    v4 = sub_10062AD44;
  }

  else
  {
    v4 = sub_100629640;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100629640()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 112);
  type metadata accessor for URL();
  v3 = v1;
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (*(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_bundleIdentifier + 8))
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  if (*(*(v0 + 496) + *(*(v0 + 488) + 56) + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v7 = *(v0 + 560);
  v8 = [v7 operationToSendItems:v4.super.isa fromBundleIdentifier:v5 description:0 previewImageData:isa];
  *(v0 + 640) = v8;

  if (v8)
  {
    v9 = *(v0 + 432);
    v10 = *(v0 + 408);
    v11 = *(v0 + 416);
    v12 = *(v0 + 344);
    v42 = *(v0 + 368);
    v13 = *(v0 + 328);
    v38 = *(v0 + 336);
    v39 = *(v0 + 376);
    v40 = *(v0 + 320);
    v41 = *(v0 + 312);
    v14 = *(v0 + 112);
    (*(v11 + 104))(v9, enum case for SFAirDrop.Progress.notStarted(_:), v10);
    *(swift_allocObject() + 16) = v14;
    v15 = v14;
    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    withProgressTask<A, B>(_:initialProgress:operation:)();

    v16 = *(v11 + 8);
    *(v0 + 648) = v16;
    *(v0 + 656) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v9, v10);
    [v8 addTarget:v15 selector:"operationStartedWithOperation:" forOperationEvents:1];
    [v8 addTarget:v15 selector:"operationMadeProgressWithOperation:" forOperationEvents:8];
    [v8 addTarget:v15 selector:"operationEndedWithOperation:" forOperationEvents:6];
    [*&v15[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendOperationQueue] addOperation:v8];
    v17 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    *(v0 + 664) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    swift_beginAccess();
    v18 = *(v12 + 16);
    *(v0 + 672) = v18;
    *(v0 + 680) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v39, &v15[v17], v38);
    *v13 = 0x662E657261757173;
    v13[1] = 0xEB000000006C6C69;
    (*(v40 + 104))(v13, enum case for SFAirDrop.ButtonConfiguration.symbol(_:), v41);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18(v42, v39, v38);
    v20 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    (*(v12 + 32))(v21 + v20, v42, v38);

    SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
    v22 = *(v12 + 8);
    *(v0 + 688) = v22;
    *(v0 + 696) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v39, v38);

    SFProgressTask.makeAsyncIterator()();
    v23 = sub_10062D080(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    *(v0 + 704) = v23;
    *(v0 + 744) = enum case for SFAirDropSend.Transfer.State.transferring(_:);
    v24 = *(v0 + 552);
    v25 = swift_task_alloc();
    *(v0 + 712) = v25;
    *v25 = v0;
    v25[1] = sub_100629E5C;
    v26 = *(v0 + 280);
    v27 = *(v0 + 288);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v26, v24, v23, v27, v0 + 72);
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to start catalyst send", v30, 2u);
    }

    v31 = *(v0 + 560);
    v32 = *(v0 + 544);
    v33 = *(v0 + 496);

    v34 = type metadata accessor for SFAirDropSend.Failure();
    sub_10062D080(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, enum case for SFAirDropSend.Failure.badRequest(_:), v34);
    swift_willThrow();

    sub_10062D020(v32, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10062D020(v33, _s10AskRequestVMa);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_100629E5C()
{
  v2 = *v1;

  v3 = *(v2 + 552);
  if (v0)
  {
    v4 = sub_10062AF34;
  }

  else
  {
    v4 = sub_100629F70;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100629F70()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 280);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    v4 = swift_task_alloc();
    *(v0 + 720) = v4;
    *v4 = v0;
    v4[1] = sub_10062A3C8;
    v5 = *(v0 + 440);
    v6 = (v0 + 80);

    return SFProgressTask.finalValue.getter(v6, v5);
  }

  v7 = *(v0 + 544);
  v8 = *(v0 + 528);
  (*(v2 + 32))(*(v0 + 424), v3, v1);
  sub_1002940CC(v7, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v0 + 528);
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v11 = *(v0 + 208);
      sub_10000ECA8(v10, v11, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v47 = *v11;
      v46 = v11[1];

      v17 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      v12 = *(v0 + 232);
      v11 = *(v0 + 240);
      v14 = *(v0 + 216);
      v13 = *(v0 + 224);
      v15 = sub_10000ECA8(v10, v11, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      sub_10032C0AC(v15);
      v47 = UUID.uuidString.getter();
      v46 = v16;
      (*(v13 + 8))(v12, v14);
      v17 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v11 = *(v0 + 200);
    sub_10000ECA8(v10, v11, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    v47 = UUID.uuidString.getter();
    v46 = v18;
    v17 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
LABEL_11:
    sub_10062D020(v11, v17);
    goto LABEL_14;
  }

  v19 = *v10;
  v6 = [*v10 identifier];
  if (!v6)
  {
    __break(1u);
    return SFProgressTask.finalValue.getter(v6, v5);
  }

  v20 = v6;
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v21;

LABEL_14:
  v42 = *(v0 + 744);
  v44 = *(v0 + 688);
  v45 = *(v0 + 648);
  v22 = *(v0 + 416);
  v23 = *(v0 + 424);
  v24 = *(v0 + 408);
  v25 = *(v0 + 392);
  v39 = *(v0 + 384);
  v40 = *(v0 + 400);
  v43 = *(v0 + 336);
  v26 = *(v0 + 272);
  v27 = *(v0 + 248);
  v28 = *(v0 + 256);
  v41 = *(v0 + 360);
  v29 = sub_10028088C(&qword_10097B2C8, &qword_1007FE680);
  v30 = v29[12];
  v31 = (v26 + v29[16]);
  v32 = v29[20];
  *v26 = v47;
  *(v26 + 8) = v46;
  (*(v22 + 16))(v26 + v30, v23, v24);
  *v31 = 0;
  v31[1] = 0;
  (*(v25 + 16))(v26 + v32, v40, v39);
  (*(v28 + 104))(v26, v42, v27);
  sub_100335364(v26, v41);
  (*(v28 + 8))(v26, v27);
  v44(v41, v43);
  v45(v23, v24);
  v33 = *(v0 + 704);
  v34 = *(v0 + 552);
  v35 = swift_task_alloc();
  *(v0 + 712) = v35;
  *v35 = v0;
  v35[1] = sub_100629E5C;
  v36 = *(v0 + 280);
  v37 = *(v0 + 288);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v36, v34, v33, v37, v0 + 72);
}

uint64_t sub_10062A3C8()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);
    v4 = sub_10062B1B4;
  }

  else
  {
    v5 = *(v2 + 552);

    v4 = sub_10062A4F0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10062A4F0()
{
  v1 = v0[86];
  v2 = v0[84];
  v13 = v0[83];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[42];
  v20 = v0[33];
  v23 = v0[32];
  v24 = v0[31];
  v21 = v0[21];
  v14 = v0[23];
  v18 = v0[17];
  v19 = v0[22];
  v15 = v0[16];
  v16 = v0[15];
  v17 = v0[18];
  v6 = v0[14];
  v22 = v0[11];
  v2(v3, v6 + v13, v5);
  SFAirDropSend.Transfer.id.getter();
  v1(v3, v5);
  v2(v4, v6 + v13, v5);
  SFAirDropSend.Transfer.startDate.getter();
  v1(v4, v5);
  SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
  v7 = enum case for SFAirDropSend.Transfer.Metrics.TransferResult.success(_:);
  v8 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v15, v7, v8);
  (*(v9 + 56))(v15, 0, 1, v8);
  SFAirDropSend.Transfer.Metrics.result.setter();
  static Date.now.getter();
  (*(v17 + 56))(v16, 0, 1, v18);
  SFAirDropSend.Transfer.Metrics.endDate.setter();
  v10 = &v20[*(sub_10028088C(&qword_10097E9D0, &unk_1007FC200) + 48)];
  (*(v19 + 16))(v20, v14, v21);
  *v10 = 0;
  *(v10 + 1) = 0;
  (*(v23 + 104))(v20, enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:), v24);
  sub_100335364(v20, v22);
  (*(v23 + 8))(v20, v24);
  v11 = swift_task_alloc();
  v0[92] = v11;
  *v11 = v0;
  v11[1] = sub_10062A7D0;

  return sub_100334168();
}

uint64_t sub_10062A7D0()
{
  v1 = *(*v0 + 552);

  return _swift_task_switch(sub_10062A8E0, v1, 0);
}

uint64_t sub_10062A8E0()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  v3 = *(v0 + 448);
  v13 = *(v0 + 456);
  v14 = *(v0 + 496);
  v12 = *(v0 + 440);
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  v6 = *(v0 + 384);
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  v9 = *(v0 + 168);

  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v13, v12);
  sub_10062D020(v2, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10062D020(v14, _s10AskRequestVMa);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10062AB54()
{
  v1 = *(v0 + 544);

  sub_10062D020(v1, type metadata accessor for SDAirDropDiscoveredEndpoint);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10062AD44()
{
  v1 = *(v0 + 544);

  sub_10062D020(v1, type metadata accessor for SDAirDropDiscoveredEndpoint);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10062AF34()
{
  v1 = *(v0 + 560);
  v13 = *(v0 + 496);
  v14 = *(v0 + 544);
  v2 = *(v0 + 448);
  v12 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  v6 = *(v0 + 384);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);
  v9 = *(v0 + 288);

  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v12, v3);
  sub_10062D020(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10062D020(v13, _s10AskRequestVMa);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10062B1B4()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  v3 = *(v0 + 496);
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);
  v6 = *(v0 + 440);
  v8 = *(v0 + 392);
  v7 = *(v0 + 400);
  v9 = *(v0 + 384);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  sub_10062D020(v2, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10062D020(v3, _s10AskRequestVMa);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10062B40C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_10028088C(&qword_100976928, &qword_1007F98A8);
  v2[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_10062B4E0, v3, 0);
}

uint64_t sub_10062B4E0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
  swift_beginAccess();
  sub_10062D0C8(v1, v2 + v6);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10062B60C(void *a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = type metadata accessor for SFAirDrop.Progress();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v19 = v2;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Classroom send progress", v14, 2u);
    v2 = v19;
  }

  v15 = [a1 totalUnitCount];
  v16 = [a1 completedUnitCount];
  *v11 = 0;
  *(v11 + 1) = v15;
  v11[16] = 0;
  *(v11 + 3) = v16;
  *(v11 + 4) = 0;
  (*(v9 + 104))(v11, enum case for SFAirDrop.Progress.transferring(_:), v8);
  v17 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
  swift_beginAccess();
  if ((*(v5 + 48))(v2 + v17, 1, v4))
  {
    (*(v9 + 8))(v11, v8);
    return swift_endAccess();
  }

  else
  {
    (*(v5 + 16))(v7, v2 + v17, v4);
    swift_endAccess();
    SFProgressContinuation.yield(_:)();
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }
}

void sub_10062B920(void *a1)
{
  v3 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = *(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_urls);
  if (!v7)
  {
LABEL_4:
    v19 = [a1 error];
    sub_10062BBC4(v19);
    v10 = v19;

    return;
  }

  v8 = [a1 error];
  if (v8)
  {
    v9 = v8;

    goto LABEL_4;
  }

  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Classroom send succeeded", v14, 2u);
  }

  v15 = *(v11 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
  ObjectType = swift_getObjectType();
  (*(v15 + 16))(2, ObjectType, v15);
  v17 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
  swift_beginAccess();
  if (!(*(v4 + 48))(v11 + v17, 1, v3))
  {
    (*(v4 + 16))(v6, v11 + v17, v3);
    v20 = v7;
    SFProgressContinuation.finish(with:)();
    (*(v4 + 8))(v6, v3);
  }
}

void sub_10062BBC4(void *a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Classroom send failed", v10, 2u);
  }

  if (a1 && (v28[1] = a1, swift_errorRetain(), sub_10028088C(&unk_10097A930, &unk_1007F9050), sub_1004F42D4(), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v28[0];
    v12 = [v28[0] code];
    v13 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 16);
    v16 = (v5 + 48);
    if (v12 == 18)
    {
      v15(5, ObjectType, v13);
      v23 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
      swift_beginAccess();
      if (!(*v16)(v2 + v23, 1, v4))
      {
        (*(v5 + 16))(v7, v2 + v23, v4);
        v24 = type metadata accessor for SFAirDropSend.Failure();
        sub_10062D080(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
        swift_allocError();
        (*(*(v24 - 8) + 104))(v25, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v24);
        goto LABEL_13;
      }
    }

    else if (v12 == 404)
    {
      v15(4, ObjectType, v13);
      v17 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
      swift_beginAccess();
      if (!(*v16)(v2 + v17, 1, v4))
      {
        (*(v5 + 16))(v7, v2 + v17, v4);
        type metadata accessor for CancellationError();
        sub_10062D080(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
        swift_allocError();
        CancellationError.init()();
LABEL_13:
        SFProgressContinuation.fail(with:)();

        goto LABEL_14;
      }
    }

    else
    {
      v15(4, ObjectType, v13);
      v26 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
      swift_beginAccess();
      if (!(*v16)(v2 + v26, 1, v4))
      {
        (*(v5 + 16))(v7, v2 + v26, v4);
        v27 = v11;
        SFProgressContinuation.fail(with:)();

        (*(v5 + 8))(v7, v4);
        return;
      }
    }
  }

  else
  {
    v18 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
    v19 = swift_getObjectType();
    (*(v18 + 16))(4, v19, v18);
    v20 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
    swift_beginAccess();
    if (!(*(v5 + 48))(v2 + v20, 1, v4))
    {
      (*(v5 + 16))(v7, v2 + v20, v4);
      v21 = type metadata accessor for SFAirDropSend.Failure();
      sub_10062D080(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, enum case for SFAirDropSend.Failure.badResponse(_:), v21);
      SFProgressContinuation.fail(with:)();
LABEL_14:
      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_10062C204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10062C224, 0, 0);
}

uint64_t sub_10062C224()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10062C2BC, v0, 0);
}

uint64_t sub_10062C2BC()
{
  sub_10062B60C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10062C33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10062C35C, 0, 0);
}

uint64_t sub_10062C35C()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10062C3F4, v0, 0);
}

uint64_t sub_10062C3F4()
{
  sub_10062B920(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10062C474(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a3;
  v13 = a3;
  v14 = a1;
  sub_1002B3098(0, 0, v10, a5, v12);
}

void *sub_10062C580(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SFAirDropSend.Transfer();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(Strong + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendOperationQueue);

    [v15 cancelAllOperations];
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    (*(v10 + 16))(v12, result + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log, v9);

    (*(v6 + 16))(v8, a2, v5);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = v9;
      v21 = v20;
      v31 = v20;
      v32 = swift_slowAlloc();
      v37 = v32;
      *v21 = 136315138;
      v22 = v34;
      SFAirDropSend.Transfer.id.getter();
      sub_10062D080(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v23 = v36;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v19;
      v26 = v25;
      (*(v35 + 8))(v22, v23);
      (*(v6 + 8))(v8, v5);
      v27 = sub_10000C4E4(v24, v26, &v37);

      v28 = v31;
      *(v31 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v30, "Transfer %s was cancelled.", v28, 0xCu);
      sub_10000C60C(v32);

      return (*(v10 + 8))(v12, v33);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_10062C9AC()
{
  sub_100005508(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation, &qword_100976928, &qword_1007F98A8);
}

uint64_t _s15ClassroomRunnerCMa_0(uint64_t a1)
{
  result = qword_1009873C0;
  if (!qword_1009873C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10062CAF4(uint64_t a1)
{
  sub_10062CBA8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10062CBA8(uint64_t a1)
{
  if (!qword_1009873D0)
  {
    sub_100280938(&qword_1009764E8, &qword_1007F9790);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1009873D0);
    }
  }
}

uint64_t sub_10062CC0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_10062C33C(a1, v4, v5, v7, v6);
}

uint64_t sub_10062CCCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10062C204(a1, v4, v5, v7, v6);
}

uint64_t sub_10062CD8C(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting classroom send", v5, 2u);
  }

  v6 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
  ObjectType = swift_getObjectType();
  return (*(v6 + 16))(1, ObjectType, v6);
}

uint64_t sub_10062CE6C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005C00;

  return sub_10062853C(a1, a2, v7, v6);
}

uint64_t sub_10062CF20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_10062B40C(a1, v4);
}

void *sub_10062CFBC()
{
  v1 = *(type metadata accessor for SFAirDropSend.Transfer() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10062C580(v2, v3);
}

uint64_t sub_10062D020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10062D080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10062D0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976928, &qword_1007F98A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062D138@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NWInterface.InterfaceSubtype();
  v81 = *(v2 - 8);
  v82 = v2;
  __chkstk_darwin(v2);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NWInterface.InterfaceType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&qword_1009787B0, &qword_1007FB9A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v77 - v10;
  v12 = type metadata accessor for NWPath();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWConnection.currentPath.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100005508(v11, &qword_1009787B0, &qword_1007FB9A0);
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_1009873E0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = a1;
    if (os_log_type_enabled(v17, v18))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Connection does not have a current path", v20, 2u);
      v19 = a1;
    }

    goto LABEL_7;
  }

  v79 = v13;
  v80 = a1;
  v22 = *(v13 + 32);
  v78 = v12;
  v22(v15, v11, v12);
  v23 = *(v6 + 104);
  v23(v8, enum case for NWInterface.InterfaceType.cellular(_:), v5);
  v24 = NWPath.usesInterfaceType(_:)();
  v25 = *(v6 + 8);
  v25(v8, v5);
  if (v24)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_1009873E0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v79;
    v19 = v80;
    if (v29)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Current path is using a cellular interface type", v31, 2u);
    }

    (*(v30 + 8))(v15, v78);
    v21 = &enum case for SFNWInterfaceType.cellular(_:);
    goto LABEL_14;
  }

  v23(v8, enum case for NWInterface.InterfaceType.wiredEthernet(_:), v5);
  v35 = NWPath.usesInterfaceType(_:)();
  v25(v8, v5);
  if (v35)
  {
    v36 = NWPath.isDirect.getter();
    v37 = v79;
    v19 = v80;
    if (v36)
    {
      if (qword_100973B80 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_10000C4AC(v38, qword_1009873E0);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Current path is using a direct wired interface type", v41, 2u);
      }

      (*(v37 + 8))(v15, v78);
      v21 = &enum case for SFNWInterfaceType.directWired(_:);
    }

    else
    {
      if (qword_100973B80 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_10000C4AC(v54, qword_1009873E0);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Current path is using a wired interface type", v57, 2u);
      }

      (*(v37 + 8))(v15, v78);
      v21 = &enum case for SFNWInterfaceType.wired(_:);
    }

    goto LABEL_14;
  }

  v23(v8, enum case for NWInterface.InterfaceType.wifi(_:), v5);
  v42 = NWPath.usesInterfaceType(_:)();
  v25(v8, v5);
  if ((v42 & 1) == 0)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_10000C4AC(v58, qword_1009873E0);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v79;
    v19 = v80;
    if (!v61)
    {
      goto LABEL_39;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "Current path is using an unknown interface subtype";
    goto LABEL_38;
  }

  v44 = v81;
  v43 = v82;
  v45 = *(v81 + 104);
  v45(v4, enum case for NWInterface.InterfaceSubtype.wifiAWDL(_:), v82);
  v46 = NWPath.usesInterfaceSubtype(_:)();
  v47 = *(v44 + 8);
  v47(v4, v43);
  if (v46)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000C4AC(v48, qword_1009873E0);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v79;
    v19 = v80;
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Current path is using an AWDL interface subtype", v53, 2u);
    }

    (*(v52 + 8))(v15, v78);
    v21 = &enum case for SFNWInterfaceType.awdl(_:);
    goto LABEL_14;
  }

  v45(v4, enum case for NWInterface.InterfaceSubtype.wifiInfrastructure(_:), v43);
  v65 = NWPath.usesInterfaceSubtype(_:)();
  v47(v4, v43);
  if ((v65 & 1) == 0)
  {
    v62 = v79;
    v19 = v80;
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000C4AC(v72, qword_1009873E0);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v59, v60))
    {
      goto LABEL_39;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "Current path is using an unknown WiFi interface subtype";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v59, v60, v64, v63, 2u);

LABEL_39:

    (*(v62 + 8))(v15, v78);
LABEL_7:
    v21 = &enum case for SFNWInterfaceType.other(_:);
    goto LABEL_14;
  }

  v66 = NWPath.isDirect.getter();
  v67 = v79;
  v19 = v80;
  if (v66)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_10000C4AC(v68, qword_1009873E0);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Current path is using a local WiFi interface subtype", v71, 2u);
    }

    (*(v67 + 8))(v15, v78);
    v21 = &enum case for SFNWInterfaceType.localWiFi(_:);
  }

  else
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_10000C4AC(v73, qword_1009873E0);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Current path is using a WiFi interface subtype", v76, 2u);
    }

    (*(v67 + 8))(v15, v78);
    v21 = &enum case for SFNWInterfaceType.wifi(_:);
  }

LABEL_14:
  v32 = *v21;
  v33 = type metadata accessor for SFNWInterfaceType();
  return (*(*(v33 - 8) + 104))(v19, v32, v33);
}

uint64_t sub_10062DCB4()
{
  v0 = swift_slowAlloc();
  *v0 = 0;
  v0[1] = 0;
  sub_10032BCF4();
  nw_endpoint_set_agent_identifier();
  swift_unknownObjectRelease();
}

void sub_10062DD18(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (a2 && a4 && a6)
  {
    _StringGuts.grow(_:)(19);

    v26[0] = 0x70706F7264726961;
    v26[1] = 0xEB000000003A6F72;
    v12._countAndFlagsBits = a3;
    v12._object = a4;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 58;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = a5;
    v14._object = a6;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_1009873E0);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_10000C4E4(0x70706F7264726961, 0xEB000000003A6F72, v26);
      _os_log_impl(&_mh_execute_header, v18, v19, "Setting Internet fallback endpoint with alias: %s", v20, 0xCu);
      sub_10000C60C(v21);
    }

    String.utf8CString.getter();

    nw_endpoint_create_application_service_with_alias();

    NWConnection.nw.getter();
    nw_connection_set_internet_fallback_endpoint();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_1009873E0);
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v23, "Cannot set Internet fallback endpoint", v24, 2u);
    }
  }
}

uint64_t sub_10062E05C(NSObject *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a6;
  v43 = a7;
  v41 = a4;
  v44 = a1;
  v45 = a2;
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NWInterface.InterfaceSubtype();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v7, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      type metadata accessor for NWProtocolTCP.Options();
      swift_allocObject();
      v40 = NWProtocolTCP.Options.init()();
      dispatch thunk of NWProtocolTCP.Options.enableFastOpen.setter();
      type metadata accessor for NWProtocolTLS.Options();
      swift_allocObject();
      NWProtocolTLS.Options.init()();
      v24 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
      sec_protocol_options_set_peer_authentication_required(v24, 0);
      swift_unknownObjectRelease();
      v25 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
      v51 = v41;
      v52 = a5;
      aBlock = _NSConcreteStackBlock;
      v48 = 1107296256;
      v49 = sub_10062FDCC;
      v50 = &unk_1008EC238;
      v26 = _Block_copy(&aBlock);

      v27 = v44;
      sec_protocol_options_set_verify_block(v25, v26, v44);
      _Block_release(v26);
      swift_unknownObjectRelease();
      v28 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
      v51 = v42;
      v52 = v43;
      aBlock = _NSConcreteStackBlock;
      v48 = 1107296256;
      v49 = sub_1003CB76C;
      v50 = &unk_1008EC260;
      v29 = _Block_copy(&aBlock);

      sec_protocol_options_set_challenge_block(v28, v29, v27);
      _Block_release(v29);
      swift_unknownObjectRelease();
      dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
      sec_protocol_options_set_nw_protocol_joining_context();
      swift_unknownObjectRelease();
      type metadata accessor for NWParameters();

      v20 = NWParameters.__allocating_init(tls:tcp:)();
      (*(v46 + 104))(v15, enum case for NWInterface.InterfaceSubtype.wifiAWDL(_:), v13);
      NWParameters.requiredInterfaceSubtype.setter();
      NWParameters.allowLocalEndpointReuse.setter();
      NWParameters.includePeerToPeer.setter();
      NWParameters.preferNoProxies.setter();
      options = nw_http_messaging_create_options();
      nw_http1_set_idle_timeout();
      v31 = NWParameters.nw.getter();
      v32 = nw_parameters_copy_default_protocol_stack(v31);
      swift_unknownObjectRelease();
      nw_protocol_stack_prepend_application_protocol(v32, options);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      NWParameters.nw.getter();
      nw_parameters_set_server_mode();
      swift_unknownObjectRelease();
      NWParameters.nw.getter();
      AirDropID.getter();
      String.utf8CString.getter();

      nw_parameters_set_account_id();
      swift_unknownObjectRelease();

      v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      v20 = sub_100636E0C(a3 & 1, 0);
      v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

    v22 = v21;
    v23 = v18;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1006384F0(v18, v12);
    v20 = sub_100636E0C(a3 & 1, *&v12[*(v10 + 24)]);
    v22 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v23 = v12;
LABEL_8:
    sub_1002F96B0(v23, v22);
    return v20;
  }

  sub_1002F96B0(v18, type metadata accessor for SDAirDropDiscoveredEndpoint);
  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000C4AC(v33, qword_1009873E0);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Classroom not applicable for SDNWParameters", v36, 2u);
  }

  v37 = type metadata accessor for SFAirDropSend.Failure();
  sub_100638428(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  v20 = swift_allocError();
  (*(*(v37 - 8) + 104))(v38, enum case for SFAirDropSend.Failure.badRequest(_:), v37);
  swift_willThrow();
  return v20;
}

void __swiftcall IPv6Address.copy_sockaddr_in6()(sockaddr_in6 *__return_ptr retstr)
{
  v1 = sub_10028088C(&qword_1009787A8, &unk_1007FB990);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = IPv6Address.rawValue.getter();
  v6 = v4;
  v7 = v5;
  v8 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    if (v4 > v4 >> 32)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v14 = __DataStorage._bytes.getter();
    if (!v14)
    {
LABEL_27:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_28;
    }

    v15 = v14;
    v16 = __DataStorage._offset.getter();
    if (__OFSUB__(v6, v16))
    {
      goto LABEL_24;
    }

    v17 = v6 - v16 + v15;
    __DataStorage._length.getter();
    if (!v17)
    {
LABEL_28:
      __break(1u);
      return;
    }

LABEL_13:
    sub_100026AC0(v6, v7);
    goto LABEL_15;
  }

  if (v8 == 2)
  {
    v9 = *(v4 + 16);
    v10 = __DataStorage._bytes.getter();
    if (!v10)
    {
LABEL_25:
      __DataStorage._length.getter();
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_23;
    }

    v13 = v9 - v12 + v11;
    __DataStorage._length.getter();
    if (!v13)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

LABEL_14:
  sub_100026AC0(v4, v5);
LABEL_15:
  IPv6Address.interface.getter();
  v18 = type metadata accessor for NWInterface();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v3, 1, v18) == 1)
  {
    sub_100005508(v3, &qword_1009787A8, &unk_1007FB990);
    return;
  }

  v20 = NWInterface.index.getter();
  (*(v19 + 8))(v3, v18);
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v20))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

SecTrustRef sub_10062E930(uint64_t a1)
{
  v1 = NWConnection.nw.getter();
  v2 = nw_protocol_copy_tls_definition();
  v3 = nw_connection_copy_protocol_metadata(v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v3)
  {
    nw_tls_copy_sec_protocol_metadata(v3);
    v4 = sec_protocol_metadata_copy_sec_trust();
    swift_unknownObjectRelease();
    if (v4)
    {
      v5 = sec_trust_copy_ref(v4);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v5;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_10062E9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v44 = sub_10028088C(&qword_100987400, &qword_10080DDD0);
  __chkstk_darwin(v44);
  v45 = &v41 - v7;
  v8 = type metadata accessor for SHA256();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA256Digest();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin(v10);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v16 - 8);
  v18 = &v41 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  v51 = a3;
  sub_100443CC4(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {

    sub_100005508(v18, &unk_100976120, &qword_1007F9260);
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);

    v23._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v23);

    (*(v20 + 8))(v22, v19);
  }

  static String.Encoding.utf8.getter();
  v24 = String.data(using:allowLossyConversion:)();
  v26 = v25;

  (*(v13 + 8))(v15, v12);
  if (v26 >> 60 == 15)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_1009873E0);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to create combined UUID string", v30, 2u);
    }

    return UUID.init()();
  }

  else
  {
    sub_100638428(&unk_100983280, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v32 = v41;
    v33 = v43;
    dispatch thunk of HashFunction.init()();
    sub_100294008(v24, v26);
    sub_100635718(v24, v26, v32);
    sub_10028BCC0(v24, v26);
    v34 = v46;
    dispatch thunk of HashFunction.finalize()();
    (*(v42 + 8))(v32, v33);
    v36 = v47;
    v35 = v48;
    v37 = v45;
    (*(v47 + 16))(v45, v34, v48);
    *(v37 + *(v44 + 36)) = 16;
    v38 = sub_100635BB8(v37);
    sub_100005508(v37, &qword_100987400, &qword_10080DDD0);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1002D64BC(v38);
      v38 = result;
    }

    v39 = *(v38 + 2);
    if (v39 < 7)
    {
      __break(1u);
    }

    else
    {
      v38[38] = v38[38] & 0xF | 0x50;
      if (v39 >= 9)
      {
        v38[40] = v38[40] & 0x3F | 0x80;
        v40 = [objc_allocWithZone(NSUUID) initWithUUIDBytes:v38 + 32];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028BCC0(v24, v26);
        return (*(v36 + 8))(v34, v35);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10062F040@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v3 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  NWEndpoint.endpointUUID()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v16 = v10;
  v17 = *(v7 + 8);
  v17(v16, v6);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v18 = v12;
  sub_10062E9D8(v5, v13, v15, v12);

  sub_100005508(v5, &unk_100976120, &qword_1007F9260);
  application_service = nw_endpoint_create_application_service();
  if (!NWEndpoint.nw.getter())
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  device_id = nw_endpoint_get_device_id();
  swift_unknownObjectRelease();
  if (device_id)
  {
    nw_endpoint_set_device_id();
  }

  if (!NWEndpoint.nw.getter())
  {
    goto LABEL_18;
  }

  device_name = nw_endpoint_get_device_name();
  swift_unknownObjectRelease();
  if (device_name)
  {
    nw_endpoint_set_device_name();
  }

  if (!NWEndpoint.nw.getter())
  {
    goto LABEL_19;
  }

  device_model = nw_endpoint_get_device_model();
  swift_unknownObjectRelease();
  if (device_model)
  {
    nw_endpoint_set_device_model();
  }

  if (!NWEndpoint.nw.getter())
  {
    goto LABEL_20;
  }

  contact_id = nw_endpoint_get_contact_id();
  swift_unknownObjectRelease();
  if (contact_id)
  {
    nw_endpoint_set_contact_id();
  }

  v24 = NWEndpoint.nw.getter();
  if (!v24)
  {
LABEL_21:
    __break(1u);
  }

  v25 = nw_endpoint_copy_txt_record(v24);
  swift_unknownObjectRelease();
  if (v25)
  {
    nw_endpoint_set_txt_record();
    swift_unknownObjectRelease();
  }

  v26 = v30;
  *v30 = application_service;
  v27 = enum case for NWEndpoint.opaque(_:);
  v28 = type metadata accessor for NWEndpoint();
  (*(*(v28 - 8) + 104))(v26, v27, v28);
  return (v17)(v18, v6);
}

uint64_t sub_10062F3D4@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v35 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SFAirDrop.TXTRecord();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v40 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for NWEndpoint();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v32 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropReceive.AskRequest.senderID.getter();
  UUID.init(uuidString:)();

  v18 = *(v15 + 48);
  v19 = v18(v13, 1, v14);
  v37 = v1;
  if (v19 == 1)
  {
    SFAirDropReceive.AskRequest.id.getter();
    v20 = SFAirDrop.TransferIdentifier.stringValue.getter();
    v22 = v21;
    (*(v32 + 8))(v7, v36);
    (*(v15 + 56))(v11, 1, 1, v14);
    sub_10062E9D8(v11, v20, v22, v17);

    sub_100005508(v11, &unk_100976120, &qword_1007F9260);
    v23 = v15;
    if (v18(v13, 1, v14) != 1)
    {
      sub_100005508(v13, &unk_100976120, &qword_1007F9260);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v23 = v15;
  }

  v36 = v17;
  application_service = nw_endpoint_create_application_service();
  v26 = v38;
  v25 = v39;
  *v38 = application_service;
  v27 = v41;
  (*(v25 + 104))(v26, enum case for NWEndpoint.opaque(_:), v41);
  v28 = NWEndpoint.nw.getter();
  v29 = v40;
  if (v28)
  {
    if (SFAirDropReceive.AskRequest.senderIsMe.getter())
    {
      (*(v33 + 104))(v34, enum case for SFAirDrop.DeviceRelationship.sameAccount(_:), v35);
      SFAirDrop.TXTRecord.init(deviceRelationship:)();
      SFAirDrop.TXTRecord.addToEndpoint(_:)();
      SFAirDropReceive.AskRequest.senderComputerName.getter();
      String.utf8CString.getter();

      nw_endpoint_set_device_name();

      SFAirDropReceive.AskRequest.senderModelName.getter();
      String.utf8CString.getter();

      nw_endpoint_set_device_model();
    }

    else
    {
      v32 = v23;
      SFAirDropReceive.AskRequest.contactIdentifier.getter();
      if (v30)
      {
        (*(v33 + 104))(v34, enum case for SFAirDrop.DeviceRelationship.contact(_:), v35);
        SFAirDrop.TXTRecord.init(deviceRelationship:)();
        SFAirDrop.TXTRecord.addToEndpoint(_:)();
        String.utf8CString.getter();

        nw_endpoint_set_contact_id();
      }

      else
      {
        (*(v33 + 104))(v34, enum case for SFAirDrop.DeviceRelationship.stranger(_:), v35);
        SFAirDrop.TXTRecord.init(deviceRelationship:)();
        SFAirDrop.TXTRecord.addToEndpoint(_:)();
        SFAirDropReceive.AskRequest.senderComputerName.getter();
        String.utf8CString.getter();

        nw_endpoint_set_device_name();
      }

      v23 = v32;
    }

    swift_unknownObjectRelease();
    (*(v42 + 8))(v29, v43);

    (*(v25 + 32))(v44, v26, v27);
    return (*(v23 + 8))(v36, v14);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10062FAF4()
{
  v1 = type metadata accessor for NWEndpoint();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!NWEndpoint.nw.getter())
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_1009873E0);
    (*(v2 + 16))(v4, v0, v1);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = NWEndpoint.debugDescription.getter();
      v18 = v17;
      (*(v2 + 8))(v4, v1);
      v19 = sub_10000C4E4(v16, v18, &v22);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Could not convert endpoint %s to nwEndpoint!", v14, 0xCu);
      sub_10000C60C(v15);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    return 0;
  }

  contact_id = nw_endpoint_get_contact_id();
  device_model = nw_endpoint_get_device_model();
  device_name = nw_endpoint_get_device_name();
  if (contact_id)
  {
    String.init(cString:)();
    contact_id = v8;
  }

  if (device_model)
  {
    String.init(cString:)();
    device_model = v9;
  }

  if (device_name)
  {
    String.init(cString:)();
    device_name = v10;
  }

  swift_unknownObjectRelease();
  if (!contact_id)
  {
    if (device_model)
    {

      goto LABEL_19;
    }

    if (device_name)
    {
      goto LABEL_19;
    }

    return 0;
  }

LABEL_19:

  return 1;
}

double sub_10062FDCC(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6(a2, a3, sub_1004B2790, v8);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

unint64_t sub_10062FEA4()
{
  v45 = type metadata accessor for NWTXTRecord();
  v0 = *(v45 - 8);
  __chkstk_darwin(v45);
  v2 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NWBrowser.Result.Metadata();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&qword_100987520, &qword_10080DE20);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - v8;
  v10 = type metadata accessor for NWTXTRecord.Entry();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v46 = &v44 - v15;
  NWBrowser.Result.metadata.getter();
  v16 = (*(v4 + 88))(v6, v3);
  if (v16 == enum case for NWBrowser.Result.Metadata.bonjour(_:))
  {
    (*(v4 + 96))(v6, v3);
    v17 = v45;
    (*(v0 + 32))(v2, v6, v45);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    NWTXTRecord.getEntry(for:)();

    (*(v0 + 8))(v2, v17);
    v18 = v11;
  }

  else
  {
    v19 = v16;
    v20 = enum case for NWBrowser.Result.Metadata.none(_:);
    (*(v11 + 56))(v9, 1, 1, v10);
    v18 = v11;
    if (v19 != v20)
    {
      (*(v4 + 8))(v6, v3);
    }
  }

  if ((*(v18 + 48))(v9, 1, v10) == 1)
  {
    sub_100005508(v9, &qword_100987520, &qword_10080DE20);
    return 0;
  }

  v21 = v46;
  (*(v18 + 32))(v46, v9, v10);
  (*(v18 + 16))(v14, v21, v10);
  if ((*(v18 + 88))(v14, v10) != enum case for NWTXTRecord.Entry.string(_:))
  {
    v32 = *(v18 + 8);
    v32(v21, v10);
    v32(v14, v10);
    return 0;
  }

  (*(v18 + 96))(v14, v10);
  result = *v14;
  v23 = v14[1];
  v24 = HIBYTE(v23) & 0xF;
  v25 = *v14 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v26 = *v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    (*(v18 + 8))(v21, v10);

    return 0;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {
    v48 = 0;
    v28 = sub_1003304C8();
    v42 = v43;
    goto LABEL_73;
  }

  if ((v23 & 0x2000000000000000) != 0)
  {
    v47[0] = *v14;
    v47[1] = v23 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v24)
      {
        if (--v24)
        {
          v28 = 0;
          v37 = v47 + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              break;
            }

            if (!is_mul_ok(v28, 0xAuLL))
            {
              break;
            }

            v31 = __CFADD__(10 * v28, v38);
            v28 = 10 * v28 + v38;
            if (v31)
            {
              break;
            }

            ++v37;
            if (!--v24)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

LABEL_82:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v24)
      {
        v28 = 0;
        v40 = v47;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            break;
          }

          if (!is_mul_ok(v28, 0xAuLL))
          {
            break;
          }

          v31 = __CFADD__(10 * v28, v41);
          v28 = 10 * v28 + v41;
          if (v31)
          {
            break;
          }

          ++v40;
          if (!--v24)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v24)
    {
      if (--v24)
      {
        v28 = 0;
        v33 = v47 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          if (!is_mul_ok(v28, 0xAuLL))
          {
            break;
          }

          v31 = 10 * v28 >= v34;
          v28 = 10 * v28 - v34;
          if (!v31)
          {
            break;
          }

          ++v33;
          if (!--v24)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v27 = *result;
  if (v27 == 43)
  {
    if (v25 < 1)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v24 = v25 - 1;
    if (v25 != 1)
    {
      v28 = 0;
      if (result)
      {
        v35 = (result + 1);
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            goto LABEL_71;
          }

          if (!is_mul_ok(v28, 0xAuLL))
          {
            goto LABEL_71;
          }

          v31 = __CFADD__(10 * v28, v36);
          v28 = 10 * v28 + v36;
          if (v31)
          {
            goto LABEL_71;
          }

          ++v35;
          if (!--v24)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_63;
    }

LABEL_71:
    v28 = 0;
    LOBYTE(v24) = 1;
    goto LABEL_72;
  }

  if (v27 != 45)
  {
    if (v25)
    {
      v28 = 0;
      if (result)
      {
        while (1)
        {
          v39 = *result - 48;
          if (v39 > 9)
          {
            goto LABEL_71;
          }

          if (!is_mul_ok(v28, 0xAuLL))
          {
            goto LABEL_71;
          }

          v31 = __CFADD__(10 * v28, v39);
          v28 = 10 * v28 + v39;
          if (v31)
          {
            goto LABEL_71;
          }

          ++result;
          if (!--v25)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v25 < 1)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = v25 - 1;
  if (v25 == 1)
  {
    goto LABEL_71;
  }

  v28 = 0;
  if (result)
  {
    v29 = (result + 1);
    while (1)
    {
      v30 = *v29 - 48;
      if (v30 > 9)
      {
        goto LABEL_71;
      }

      if (!is_mul_ok(v28, 0xAuLL))
      {
        goto LABEL_71;
      }

      v31 = 10 * v28 >= v30;
      v28 = 10 * v28 - v30;
      if (!v31)
      {
        goto LABEL_71;
      }

      ++v29;
      if (!--v24)
      {
        goto LABEL_72;
      }
    }
  }

LABEL_63:
  LOBYTE(v24) = 0;
LABEL_72:
  v48 = v24;
  v42 = v24;
LABEL_73:
  (*(v18 + 8))(v21, v10);

  if (v42)
  {
    return 0;
  }

  return v28;
}

uint64_t sub_1006305DC()
{
  v0 = type metadata accessor for NWInterface();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NWBrowser.Result.interfaces.getter();
  v5 = result;
  v6 = 0;
  v12 = *(result + 16);
  v7 = (v1 + 8);
  while (1)
  {
    v9 = v6;
    if (v12 == v6)
    {
      goto LABEL_8;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    (*(v1 + 16))(v3, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6, v0);
    if (NWInterface.name.getter() == 0x306C647761 && v10 == 0xE500000000000000)
    {

      (*v7)(v3, v0);
LABEL_8:

      return v12 != v9;
    }

    ++v6;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v7)(v3, v0);
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006307B0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009873E0);
  v1 = sub_10000C4AC(v0, qword_1009873E0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100630930@<X0>(uint64_t a1@<X8>)
{
  String.utf8CString.getter();
  v2 = nw_interface_create_with_name();

  if (v2)
  {
    swift_unknownObjectRelease();
    String.utf8CString.getter();
    v3 = nw_interface_create_with_name();

    if (v3)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (IsAppleInternalBuild())
  {
    String.utf8CString.getter();
    v4 = nw_interface_create_with_name();

    if (v4)
    {
      swift_unknownObjectRelease();
      String.utf8CString.getter();
      v5 = nw_interface_create_with_name();

      if (v5)
      {
        goto LABEL_13;
      }

      __break(1u);
    }
  }

  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_1009873E0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to initialize nw_interface, defaulting to loopback", v9, 2u);
  }

  String.utf8CString.getter();
  v10 = nw_interface_create_with_name();

  if (!v10)
  {
    __break(1u);
    return result;
  }

LABEL_13:
  NWInterface.init(_:)();
  v12 = type metadata accessor for NWInterface();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, 0, 1, v12);
}

void sub_100630B74(NSObject *a1, _BYTE *a2, void (*a3)(NSObject *, uint64_t))
{
  if (nw_protocol_options_is_quic(a1) && (*a2 & 1) == 0)
  {
    v6 = nw_quic_copy_sec_protocol_options(a1);
    sub_10039D0AC();
    v7 = static NSUserDefaults.airdrop.getter();
    v8 = SFAirDropUserDefaults.finalALPN.getter();

    if (v8)
    {
      sec_protocol_options_clear_tls_application_protocols();
    }

    sec_protocol_options_add_tls_application_protocol(v6, "h3");
    type metadata accessor for SFAirDropUserDefaults();
    v9 = static SFAirDropUserDefaults.shared.getter();
    v10 = SFAirDropUserDefaults.quicIdleTimeout.getter();

    nw_quic_set_idle_timeout(a1, v10);
    a3(a1, 1);
    swift_unknownObjectRelease();
    *a2 = 1;
  }
}

Swift::Int sub_100630C74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10080E0D8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100630CFC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10080E0D8[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100630D48@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100638250(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100630DAC()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 8;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_10028088C(&qword_100987528, &qword_10080DE38);
  *v3 = v0;
  v3[1] = sub_100630EB8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000014, 0x800000010079A1F0, sub_100638718, v2, v4);
}

uint64_t sub_100630EB8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100631168;
  }

  else
  {

    v2 = sub_100630FD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100630FD4()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    v2 = type metadata accessor for SFAirDropSend.Failure();
    sub_100638428(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for SFAirDropSend.Failure.badResponse(_:), v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[2];
    Data.withUnsafeBytes<A, B>(_:)();
    sub_10028BCC0(v6, v1);
    v7 = v0[5];
    v8 = v0[1];

    return v8(v7);
  }
}

uint64_t sub_100631168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006311CC(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return _swift_task_switch(sub_1006311F0, 0, 0);
}

uint64_t sub_1006311F0()
{
  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 128) = sub_10000C4AC(v1, qword_1009873E0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting data stream, expecting %ld", v5, 0xCu);
  }

  *(v0 + 88) = xmmword_1007FAD30;
  v6 = *(v0 + 120);
  if (*(v0 + 104) >= *(v0 + 112))
  {
    v7 = *(v0 + 112);
  }

  else
  {
    v7 = *(v0 + 104);
  }

  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  v10 = sub_10028088C(&qword_100987528, &qword_10080DE38);
  *v9 = v0;
  v9[1] = sub_1006313D8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 64, 0, 0, 0xD000000000000014, 0x800000010079A1F0, sub_100638348, v8, v10);
}

uint64_t sub_1006313D8()
{

  if (v0)
  {

    v1 = sub_1006319D0;
  }

  else
  {

    v1 = sub_100631520;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100631520(uint64_t a1)
{
  v52 = v1;
  v2 = v1[8];
  v3 = v1[9];
  if (v3 >> 60 == 15)
  {
    goto LABEL_20;
  }

  sub_100294008(v1[8], v1[9]);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_10028BCC0(v2, v3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v51 = v7;
    *v6 = 136315138;
    sub_100294008(v2, v3);
    v8 = Data.description.getter();
    v10 = v9;
    sub_10028BCC0(v2, v3);
    v11 = sub_10000C4E4(v8, v10, &v51);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received %s bytes", v6, 0xCu);
    sub_10000C60C(v7);
  }

  Data.append(_:)();
  v12 = sub_10028BCC0(v2, v3);
  v20 = v1[11];
  v21 = v1[12];
  v22 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    if (!v22)
    {
      v23 = BYTE6(v21);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v22 == 2)
  {
    v25 = *(v20 + 16);
    v24 = *(v20 + 24);
    v26 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (!v26)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(v20), v20))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v23 = HIDWORD(v20) - v20;
LABEL_13:
    v27 = v1[13];
    if (v23 < v27)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          v26 = __OFSUB__(HIDWORD(v20), v20);
          LODWORD(v20) = HIDWORD(v20) - v20;
          if (v26)
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v20 = v20;
        }

        else
        {
          v44 = v20 + 16;
          v42 = *(v20 + 16);
          v43 = *(v44 + 8);
          v26 = __OFSUB__(v43, v42);
          v20 = v43 - v42;
          if (v26)
          {
LABEL_37:
            __break(1u);
            return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
          }
        }
      }

      else
      {
        v20 = BYTE6(v21);
      }

      goto LABEL_27;
    }

    goto LABEL_20;
  }

  v27 = v1[13];
  if (v27 > 0)
  {
    v20 = 0;
LABEL_27:
    v26 = __OFSUB__(v27, v20);
    v45 = v27 - v20;
    if (!v26)
    {
      v46 = v1[15];
      if (v45 >= v1[14])
      {
        v47 = v1[14];
      }

      else
      {
        v47 = v45;
      }

      v48 = swift_task_alloc();
      v1[17] = v48;
      *(v48 + 16) = v46;
      *(v48 + 24) = v47;
      v49 = swift_task_alloc();
      v1[18] = v49;
      v19 = sub_10028088C(&qword_100987528, &qword_10080DE38);
      *v49 = v1;
      v49[1] = sub_1006313D8;
      v17 = sub_100638348;
      v16 = 0x800000010079A1F0;
      v12 = (v1 + 8);
      v13 = 0;
      v14 = 0;
      v15 = 0xD000000000000014;
      v18 = v48;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_20:
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v50 = v1[13];
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v51 = v31;
    *v30 = 136315394;
    swift_beginAccess();
    v32 = v1[11];
    v33 = v1[12];
    sub_100294008(v32, v33);
    v34 = Data.description.getter();
    v36 = v35;
    sub_100026AC0(v32, v33);
    v37 = sub_10000C4E4(v34, v36, &v51);

    *(v30 + 4) = v37;
    *(v30 + 12) = 2048;
    *(v30 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v28, v29, "Received %s bytes of total %ld", v30, 0x16u);
    sub_10000C60C(v31);
  }

  swift_beginAccess();
  v39 = v1[11];
  v38 = v1[12];
  sub_100294008(v39, v38);
  sub_100026AC0(v39, v38);
  v40 = v1[1];

  return v40(v39, v38);
}

uint64_t sub_1006319D0(uint64_t a1)
{
  v18 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    swift_beginAccess();
    v7 = v1[11];
    v8 = v1[12];
    sub_100294008(v7, v8);
    v9 = Data.description.getter();
    v11 = v10;
    sub_100026AC0(v7, v8);
    v12 = sub_10000C4E4(v9, v11, &v17);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received %s bytes of total %ld", v5, 0x16u);
    sub_10000C60C(v6);
  }

  swift_beginAccess();
  v14 = v1[11];
  v13 = v1[12];
  sub_100294008(v14, v13);
  sub_100026AC0(v14, v13);
  v15 = v1[1];

  return v15(v14, v13);
}

void sub_100631B9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_10028088C(&unk_100987530, &qword_10080DE40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  v9 = NWConnection.nw.getter();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    v10 = v9;
    (*(v6 + 16))(v8, a1, v5);
    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = swift_allocObject();
    (*(v6 + 32))(v12 + v11, v8, v5);
    aBlock[4] = sub_100638350;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100631EC8;
    aBlock[3] = &unk_1008EC1C0;
    v13 = _Block_copy(aBlock);

    nw_connection_receive(v10, a3, a3, v13);
    _Block_release(v13);
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

void sub_100631D74(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    v4 = swift_unknownObjectRetain();
    v5 = nw_error_copy_cf_error(v4);
    type metadata accessor for CFError(0);
    sub_100638428(&unk_100987420, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    swift_allocError();
    *v6 = v5;
    sub_10028088C(&unk_100987530, &qword_10080DE40);
    CheckedContinuation.resume(throwing:)();
    swift_unknownObjectRelease();
  }

  else
  {
    if (a1)
    {
      v7 = a1;
      swift_dynamicCast();
    }

    sub_10028088C(&unk_100987530, &qword_10080DE40);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_100631EC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9(a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_100631F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;

  return _swift_task_switch(sub_10063200C, 0, 0);
}

uint64_t sub_10063200C()
{
  v1 = *(v0 + 32);
  v2 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(v1);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
    v3 = 0;
    goto LABEL_11;
  }

  v4 = *(*(v0 + 24) + 16);
  v5 = *(*(v0 + 24) + 24);
  v6 = __OFSUB__(v5, v4);
  v3 = v5 - v4;
  if (v6)
  {
    __break(1u);
LABEL_8:
    v7 = *(v0 + 24);
    v8 = *(v0 + 28);
    v6 = __OFSUB__(v8, v7);
    LODWORD(v3) = v8 - v7;
    if (v6)
    {
      __break(1u);
    }

    v3 = v3;
  }

LABEL_11:
  v9 = *(v0 + 48);
  *(v0 + 16) = v3;
  v10 = sub_1005698E0(v0 + 16, v0 + 24);
  v12 = v11;
  *(v0 + 56) = v10;
  *(v0 + 64) = v11;
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = v9;
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_1006321AC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v14, 0, 0, 0xD000000000000016, 0x800000010079A210, sub_100638470, v13, &type metadata for () + 8);
}

uint64_t sub_1006321AC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100632898;
  }

  else
  {

    v2 = sub_1006322FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006322FC()
{
  v43 = v2;
  v4 = *(v2 + 32);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_21;
    }

    v6 = *(*(v2 + 24) + 16);
    v7 = *(*(v2 + 24) + 24);
    v8 = __OFSUB__(v7, v6);
    v9 = v7 - v6;
    if (!v8)
    {
      if (v9 < 1)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v5)
  {
    v10 = *(v2 + 24);
    v11 = *(v2 + 28);
    v8 = __OFSUB__(v11, v10);
    v12 = v11 - v10;
    if (!v8)
    {
      if (v12 >= 1)
      {
        goto LABEL_11;
      }

LABEL_21:
      sub_100026AC0(*(v2 + 56), *(v2 + 64));
      v26 = *(v2 + 8);

      return v26();
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_27;
  }

  if (!BYTE6(v4))
  {
    goto LABEL_21;
  }

LABEL_11:
  *(v2 + 96) = swift_slowAlloc();
  v13 = objc_allocWithZone(NSInputStream);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithData:isa];
  *(v2 + 104) = v15;

  [v15 open];
  v3 = &selRef_finishedEventForRecordID_withResults_;
  if (![v15 hasBytesAvailable] || (v16 = objc_msgSend(*(v2 + 104), "read:maxLength:", *(v2 + 96), *(v2 + 40)), v16 < 1))
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_1009873E0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Finished sending stream", v24, 2u);
    }

    v25 = *(v2 + 104);

    [v25 close];

    goto LABEL_21;
  }

  v17 = v16;
  v18 = *(v2 + 96);
  if (v16 <= 0xE)
  {
    *(v2 + 166) = 0;
    *(v2 + 160) = 0;
    *(v2 + 174) = v16;
    memcpy((v2 + 160), v18, v16);
    v0 = *(v2 + 160);
    v1 = *(v2 + 168) | ((*(v2 + 172) | (*(v2 + 174) << 16)) << 32);
  }

  else
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v19 = __DataStorage.init(bytes:length:)();
    v20 = v19;
    if (v17 >= 0x7FFFFFFF)
    {
      type metadata accessor for Data.RangeReference();
      v0 = swift_allocObject();
      *(v0 + 16) = 0;
      *(v0 + 24) = v17;
      v1 = v20 | 0x8000000000000000;
    }

    else
    {
      v0 = v17 << 32;
      v1 = v19 | 0x4000000000000000;
    }
  }

  *(v2 + 120) = v0;
  *(v2 + 128) = v1;
  *(v2 + 112) = v1;
  if (qword_100973B80 != -1)
  {
    goto LABEL_34;
  }

LABEL_27:
  v28 = type metadata accessor for Logger();
  sub_10000C4AC(v28, qword_1009873E0);
  sub_100294008(v0, v1);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  sub_100026AC0(v0, v1);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42 = v32;
    *v31 = 136315138;
    sub_100294008(v0, v1);
    v33 = Data.description.getter();
    v35 = v34;
    sub_100026AC0(v0, v1);
    v36 = sub_10000C4E4(v33, v35, &v42);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "Sending data chunk %s", v31, 0xCu);
    sub_10000C60C(v32);
  }

  v37 = *(v2 + 104);
  v38 = *(v2 + 48);
  sub_100294008(v0, v1);
  v39 = [v37 v3[279]] ^ 1;
  v40 = swift_task_alloc();
  *(v2 + 136) = v40;
  *(v40 + 16) = v0;
  *(v40 + 24) = v1;
  *(v40 + 32) = v39;
  *(v40 + 40) = v38;
  v41 = swift_task_alloc();
  *(v2 + 144) = v41;
  *v41 = v2;
  v41[1] = sub_100632930;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v41, 0, 0, 0xD000000000000016, 0x800000010079A210, sub_1006386D8, v40, &type metadata for () + 8);
}

uint64_t sub_100632898()
{

  sub_100026AC0(v0[7], v0[8]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100632930()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100632F80;
  }

  else
  {

    v2 = sub_100632A80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100632A80()
{
  v34 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  sub_100026AC0(v1, v2);
  sub_100026AC0(v1, v2);
  if (([v3 hasBytesAvailable] & 1) != 0 && (v4 = *(v0 + 112), v5 = objc_msgSend(*(v0 + 104), "read:maxLength:", *(v0 + 96), *(v0 + 40)), v5 > 0))
  {
    v6 = v5;
    v7 = *(v0 + 96);
    if (v5 <= 0xE)
    {
      *(v0 + 166) = 0;
      *(v0 + 160) = 0;
      *(v0 + 174) = v5;
      memcpy((v0 + 160), v7, v5);
      v10 = *(v0 + 160);
      v4 = v4 & 0xF00000000000000 | *(v0 + 168) | ((*(v0 + 172) | (*(v0 + 174) << 16)) << 32);
      v11 = v4;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      v9 = v8;
      if (v6 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v10 = swift_allocObject();
        *(v10 + 16) = 0;
        *(v10 + 24) = v6;
        v11 = v9 | 0x8000000000000000;
      }

      else
      {
        v10 = v6 << 32;
        v11 = v8 | 0x4000000000000000;
      }
    }

    *(v0 + 120) = v10;
    *(v0 + 128) = v11;
    *(v0 + 112) = v4;
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_1009873E0);
    sub_100294008(v10, v11);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    sub_100026AC0(v10, v11);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      sub_100294008(v10, v11);
      v24 = Data.description.getter();
      v26 = v25;
      sub_100026AC0(v10, v11);
      v27 = sub_10000C4E4(v24, v26, &v33);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Sending data chunk %s", v22, 0xCu);
      sub_10000C60C(v23);
    }

    v28 = *(v0 + 104);
    v29 = *(v0 + 48);
    sub_100294008(v10, v11);
    v30 = [v28 hasBytesAvailable] ^ 1;
    v31 = swift_task_alloc();
    *(v0 + 136) = v31;
    *(v31 + 16) = v10;
    *(v31 + 24) = v11;
    *(v31 + 32) = v30;
    *(v31 + 40) = v29;
    v32 = swift_task_alloc();
    *(v0 + 144) = v32;
    *v32 = v0;
    v32[1] = sub_100632930;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v32, 0, 0, 0xD000000000000016, 0x800000010079A210, sub_1006386D8, v31, &type metadata for () + 8);
  }

  else
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_1009873E0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Finished sending stream", v15, 2u);
    }

    v16 = *(v0 + 104);

    [v16 close];

    sub_100026AC0(*(v0 + 56), *(v0 + 64));
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100632F80()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[13];
  sub_100026AC0(v2, v1);

  sub_100026AC0(v2, v1);

  sub_100026AC0(v0[7], v0[8]);
  v4 = v0[1];

  return v4();
}

void sub_100633050(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v6) = a4;
  v32 = sub_10028088C(&qword_1009755D8, &qword_1007F8968);
  v10 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v27 - v11;
  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_1009873E0);
  sub_1002A9924(a2, a3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  sub_10028BCC0(a2, a3);
  if (os_log_type_enabled(v13, v14))
  {
    v27 = a5;
    v30 = a2;
    v29 = v6;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315394;
    v28 = a1;
    if (a3 >> 60 == 15)
    {
      v6 = 0x800000010079A230;
      v17 = 0xD000000000000015;
    }

    else
    {
      v17 = Data.description.getter();
      v6 = v18;
    }

    v19 = sub_10000C4E4(v17, v6, aBlock);

    *(v15 + 4) = v19;
    *(v15 + 12) = 1024;
    LOBYTE(v6) = v29;
    *(v15 + 14) = v29 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "Calling send %s - done: %{BOOL}d", v15, 0x12u);
    sub_10000C60C(v16);

    a1 = v28;
    a2 = v30;
  }

  else
  {
  }

  v20 = NWConnection.nw.getter();
  if (a3 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_1006333EC(a2, a3);
  }

  v23 = v31;
  v22 = v32;
  (*(v10 + 16))(v31, a1, v32);
  v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25 = swift_allocObject();
  (*(v10 + 32))(v25 + v24, v23, v22);
  aBlock[4] = sub_100638710;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100531428;
  aBlock[3] = &unk_1008EC210;
  v26 = _Block_copy(aBlock);

  nw_connection_send(v20, v21, _nw_content_context_default_message, v6 & 1, v26);
  _Block_release(v26);
  swift_unknownObjectRelease();
}

uint64_t sub_1006333EC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchData.Deallocator();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = LongHash.init(storage:);
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EBEC8;
  v13 = _Block_copy(aBlock);
  *v11 = 0;
  v11[1] = v13;
  (*(v9 + 104))(v11, enum case for DispatchData.Deallocator.custom(_:), v8);
  sub_100294008(a1, a2);

  v17 = v11;
  sub_1006358F8(sub_100635E20, v16, a1, a2);
  v14 = DispatchData._bridgeToObjectiveC()();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return v14;
}

void sub_100633654(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5, char a6)
{
  v11 = sub_10028088C(&qword_1009755D8, &qword_1007F8968);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = aBlock - v13;
  v15 = NWConnection.nw.getter();
  if (a4 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_1006333EC(a3, a4);
  }

  (*(v12 + 16))(v14, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v14, v11);
  aBlock[4] = sub_100635E1C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100531428;
  aBlock[3] = &unk_1008EBE78;
  v19 = _Block_copy(aBlock);

  nw_connection_send(v15, v16, a5, a6 & 1, v19);
  _Block_release(v19);
  swift_unknownObjectRelease();
}

void sub_100633858(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = swift_unknownObjectRetain();
    v3 = nw_error_copy_cf_error(v2);
    type metadata accessor for CFError(0);
    sub_100638428(&unk_100987420, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    swift_allocError();
    *v4 = v3;
    sub_10028088C(&qword_1009755D8, &qword_1007F8968);
    CheckedContinuation.resume(throwing:)();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10028088C(&qword_1009755D8, &qword_1007F8968);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100633940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 112) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_10063396C, 0, 0);
}

uint64_t sub_10063396C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, char *a8)
{
  if (qword_100973B80 != -1)
  {
    a1 = swift_once();
  }

  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = v10 >> 62;
  *(v8 + 56) = 0;
  if ((v10 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_12;
    }

    v14 = *(v9 + 16);
    v13 = *(v9 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(v10);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(v9), v9))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = HIDWORD(v9) - v9;
LABEL_12:
  v15 = *(v8 + 40);
  *(v8 + 64) = v12;
  v16 = v15;
  if (v12 > v15)
  {
    goto LABEL_23;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      v16 = BYTE6(v10);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v11 != 2)
  {
    v16 = 0;
    goto LABEL_23;
  }

  v18 = v9 + 16;
  v9 = *(v9 + 16);
  v17 = *(v18 + 8);
  v16 = v17 - v9;
  if (__OFSUB__(v17, v9))
  {
    __break(1u);
LABEL_20:
    v19 = __OFSUB__(HIDWORD(v9), v9);
    v20 = HIDWORD(v9) - v9;
    if (v19)
    {
LABEL_31:
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v16 = v20;
  }

LABEL_23:
  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_1009873E0);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v22, v23, "Sending %ld bytes", v24, 0xCu);
  }

  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = v12 <= v15;
  v26 = *(v8 + 48);
  v27 = *(v8 + 112);
  v28 = *(v8 + 16);
  v29 = Data._Representation.subscript.getter();
  v31 = v30;
  *(v8 + 72) = v29;
  *(v8 + 80) = v30;
  v32 = v25 & v27;
  v33 = swift_task_alloc();
  *(v8 + 88) = v33;
  *(v33 + 16) = v26;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = v28;
  *(v33 + 48) = v32;
  a1 = swift_task_alloc();
  *(v8 + 96) = a1;
  *a1 = v8;
  a1[1] = sub_100633C1C;
  a6 = sub_10030C62C;
  a5 = 0x800000010078B5E0;
  a8 = &type metadata for () + 8;
  a2 = 0;
  a3 = 0;
  a4 = 0xD000000000000029;
  a7 = v33;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100633C1C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100634054;
  }

  else
  {

    v2 = sub_100633D38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100633D38()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = sub_100026AC0(*(v0 + 72), *(v0 + 80));
  if (v1 > v2)
  {
    v11 = *(v0 + 56);
    v12 = *(v0 + 40);
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      __break(1u);
      goto LABEL_39;
    }

    *(v0 + 56) = v13;
    v14 = *(v0 + 32);
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        v16 = 0;
        goto LABEL_16;
      }

      v19 = *(*(v0 + 24) + 16);
      v20 = *(*(v0 + 24) + 24);
      v21 = __OFSUB__(v20, v19);
      v16 = v20 - v19;
      if (!v21)
      {
LABEL_16:
        v24 = v16 - v13;
        if (!__OFSUB__(v16, v13))
        {
          *(v0 + 64) = v24;
          if (v24 > v12)
          {
            v25 = v13 + v12;
            if (!__OFADD__(v13, v12))
            {
              goto LABEL_31;
            }

            __break(1u);
          }

          else if (v15 <= 1)
          {
            if (!v15)
            {
              v25 = BYTE6(v14);
LABEL_31:
              v31 = type metadata accessor for Logger();
              sub_10000C4AC(v31, qword_1009873E0);
              v32 = Logger.logObject.getter();
              v33 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v32, v33))
              {
                v3 = swift_slowAlloc();
                *v3 = 134217984;
                if (__OFSUB__(v25, v13))
                {
LABEL_41:
                  __break(1u);
                  goto LABEL_42;
                }

                *(v3 + 4) = v25 - v13;
                _os_log_impl(&_mh_execute_header, v32, v33, "Sending %ld bytes", v3, 0xCu);
              }

              if (v25 >= v13)
              {
                v34 = v24 <= v12;
                v35 = *(v0 + 48);
                v36 = *(v0 + 112);
                v37 = *(v0 + 16);
                v38 = Data._Representation.subscript.getter();
                v40 = v39;
                *(v0 + 72) = v38;
                *(v0 + 80) = v39;
                v41 = swift_task_alloc();
                *(v0 + 88) = v41;
                *(v41 + 16) = v35;
                *(v41 + 24) = v38;
                *(v41 + 32) = v40;
                *(v41 + 40) = v37;
                *(v41 + 48) = v34 & v36;
                v3 = swift_task_alloc();
                *(v0 + 96) = v3;
                *v3 = v0;
                *(v3 + 8) = sub_100633C1C;
                v8 = sub_10030C62C;
                v7 = 0x800000010078B5E0;
                v10 = &type metadata for () + 8;
                v4 = 0;
                v5 = 0;
                v6 = 0xD000000000000029;
                v9 = v41;

                return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
              }

LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            goto LABEL_28;
          }

          if (v15 != 2)
          {
            v25 = 0;
            goto LABEL_31;
          }

          v26 = *(*(v0 + 24) + 16);
          v27 = *(*(v0 + 24) + 24);
          v25 = v27 - v26;
          if (!__OFSUB__(v27, v26))
          {
            goto LABEL_31;
          }

          __break(1u);
LABEL_28:
          v28 = *(v0 + 24);
          v29 = *(v0 + 28);
          v21 = __OFSUB__(v29, v28);
          v30 = v29 - v28;
          if (v21)
          {
LABEL_43:
            __break(1u);
            return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
          }

          v25 = v30;
          goto LABEL_31;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v16 = BYTE6(v14);
      goto LABEL_16;
    }

    v22 = *(v0 + 24);
    v23 = *(v0 + 28);
    v21 = __OFSUB__(v23, v22);
    LODWORD(v16) = v23 - v22;
    if (v21)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v16 = v16;
    goto LABEL_16;
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100634054()
{
  sub_100026AC0(v0[9], v0[10]);

  v1 = v0[1];

  return v1();
}

double sub_1006340C4(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100987430, qword_10080DDD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = NWConnection.nw.getter();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_100635E3C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100631EC8;
  aBlock[3] = &unk_1008EBF18;
  v9 = _Block_copy(aBlock);

  nw_connection_receive_message(v6, v9);
  _Block_release(v9);
  swift_unknownObjectRelease();
  return result;
}

void sub_10063427C(void *a1, NSObject *a2, char a3, NSObject *a4)
{
  if (!a2)
  {
    v9 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, enum case for SFAirDropReceive.Failure.badRequest(_:), v9);
    aBlock = v10;
    sub_10028088C(&qword_100987430, qword_10080DDD8);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (a4)
  {
    swift_unknownObjectRetain();
    v5 = swift_unknownObjectRetain();
    v6 = nw_error_copy_cf_error(v5);
    type metadata accessor for CFError(0);
    sub_100638428(&unk_100987420, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    v7 = swift_allocError();
    *v8 = v6;
    aBlock = v7;
    sub_10028088C(&qword_100987430, qword_10080DDD8);
    CheckedContinuation.resume(throwing:)();
    swift_unknownObjectRelease();
LABEL_18:
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRetain();
  v14 = nw_protocol_copy_http_definition();
  v15 = nw_content_context_copy_protocol_metadata(a2, v14);
  swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_17:
    v27 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, enum case for SFAirDropReceive.Failure.badRequest(_:), v27);
    aBlock = v28;
    sub_10028088C(&qword_100987430, qword_10080DDD8);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_18;
  }

  if (!nw_http_metadata_copy_request())
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v39 = 0;
  v40 = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = &v39;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100635E64;
  *(v17 + 24) = v16;
  v37 = sub_100635E80;
  v38 = v17;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100634828;
  v36 = &unk_1008EBF90;
  v18 = _Block_copy(&aBlock);

  nw_http_request_access_path();
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v19 = v40;
    if (v40)
    {
      v20 = a1;
      v21 = v39;
      if (v20)
      {
        v22 = v20;

        v23 = v22;
        v24 = swift_dynamicCast();
        if (v24)
        {
          v25 = aBlock;
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
          v26 = v34;
        }

        else
        {
          v26 = 0xC000000000000000;
        }
      }

      else
      {

        v25 = 0;
        v26 = 0xC000000000000000;
      }

      aBlock = v21;
      v34 = v19;
      v35 = v25;
      v36 = v26;
      v37 = v15;
      LOBYTE(v38) = a3 & 1;

      sub_100294008(v25, v26);
      swift_unknownObjectRetain();
      sub_10028088C(&qword_100987430, qword_10080DDD8);
      CheckedContinuation.resume(returning:)();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_100026AC0(v25, v26);
    }

    else
    {
      v30 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      v31 = swift_allocError();
      (*(*(v30 - 8) + 104))(v32, enum case for SFAirDropReceive.Failure.badRequest(_:), v30);
      aBlock = v31;
      sub_10028088C(&qword_100987430, qword_10080DDD8);
      CheckedContinuation.resume(throwing:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void sub_100634854(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_10028088C(&qword_100987430, qword_10080DDD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  v9 = NWConnection.nw.getter();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    v10 = v9;
    (*(v6 + 16))(v8, a1, v5);
    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = swift_allocObject();
    (*(v6 + 32))(v12 + v11, v8, v5);
    aBlock[4] = sub_100635EA8;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100631EC8;
    aBlock[3] = &unk_1008EBFE0;
    v13 = _Block_copy(aBlock);

    nw_connection_receive(v10, 0, a3, v13);
    _Block_release(v13);
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

void sub_100634A2C(void *a1, NSObject *a2, char a3, NSObject *a4)
{
  if (!a2)
  {
    v9 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, enum case for SFAirDropReceive.Failure.badRequest(_:), v9);
    aBlock = v10;
    sub_10028088C(&qword_100987430, qword_10080DDD8);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (a4)
  {
    swift_unknownObjectRetain();
    v5 = swift_unknownObjectRetain();
    v6 = nw_error_copy_cf_error(v5);
    type metadata accessor for CFError(0);
    sub_100638428(&unk_100987420, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    v7 = swift_allocError();
    *v8 = v6;
    aBlock = v7;
    sub_10028088C(&qword_100987430, qword_10080DDD8);
    CheckedContinuation.resume(throwing:)();
    swift_unknownObjectRelease();
LABEL_18:
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRetain();
  v13 = nw_protocol_copy_http_definition();
  v14 = nw_content_context_copy_protocol_metadata(a2, v13);
  swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_17:
    v27 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, enum case for SFAirDropReceive.Failure.badRequest(_:), v27);
    aBlock = v28;
    sub_10028088C(&qword_100987430, qword_10080DDD8);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_18;
  }

  if (!nw_http_metadata_copy_request())
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v40 = 0;
  v41 = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = &v40;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100638720;
  *(v16 + 24) = v15;
  v38 = sub_100638714;
  v39 = v16;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100634828;
  v37 = &unk_1008EC058;
  v17 = _Block_copy(&aBlock);

  nw_http_request_access_path();
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v18 = v41;
    if (v41)
    {
      v19 = v40;

      v20 = sub_100635024(v19, v18);
      v22 = v21;
      v23 = 0xC000000000000000;
      if (a1)
      {
        v24 = a1;
        v25 = swift_dynamicCast();
        if (v25)
        {
          v26 = aBlock;
        }

        else
        {
          v26 = 0;
        }

        if (v25)
        {
          v23 = v35;
        }
      }

      else
      {
        v26 = 0;
      }

      aBlock = v20;
      v35 = v22;
      v36 = v26;
      v37 = v23;
      v38 = v14;
      LOBYTE(v39) = a3 & 1;

      sub_100294008(v26, v23);
      swift_unknownObjectRetain();
      sub_10028088C(&qword_100987430, qword_10080DDD8);
      CheckedContinuation.resume(returning:)();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_100026AC0(v26, v23);
    }

    else
    {
      v30 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      v31 = swift_allocError();
      (*(*(v30 - 8) + 104))(v32, enum case for SFAirDropReceive.Failure.badRequest(_:), v30);
      aBlock = v31;
      sub_10028088C(&qword_100987430, qword_10080DDD8);
      CheckedContinuation.resume(throwing:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100634FDC(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    *a2 = String.init(cString:)();
    a2[1] = v3;
  }

  return result;
}

uint64_t sub_100635024(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v2 = String.init(cString:)();
  }

  else
  {
    _StringGuts._slowWithCString<A>(_:)();

    return v4;
  }

  return v2;
}

double sub_1006350D8(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100987518, &unk_10080DE10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = NWConnection.nw.getter();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_100638228;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100631EC8;
  aBlock[3] = &unk_1008EC170;
  v9 = _Block_copy(aBlock);

  nw_connection_receive_message(v6, v9);
  _Block_release(v9);
  swift_unknownObjectRelease();
  return result;
}

double sub_100635290(void *a1, NSObject *a2, uint64_t a3, NSObject *a4)
{
  if (!a2)
  {
    v8 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for SFAirDropReceive.Failure.badRequest(_:), v8);
    sub_10028088C(&qword_100987518, &unk_10080DE10);
    CheckedContinuation.resume(throwing:)();
    return result;
  }

  if (a4)
  {
    swift_unknownObjectRetain();
    v5 = swift_unknownObjectRetain();
    v6 = nw_error_copy_cf_error(v5);
    type metadata accessor for CFError(0);
    sub_100638428(&unk_100987420, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    swift_allocError();
    *v7 = v6;
    sub_10028088C(&qword_100987518, &unk_10080DE10);
    CheckedContinuation.resume(throwing:)();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    v12 = nw_protocol_copy_http_definition();
    v13 = nw_content_context_copy_protocol_metadata(a2, v12);
    swift_unknownObjectRelease();
    if (v13)
    {
      if (nw_http_metadata_copy_response())
      {
        status_code = nw_http_response_get_status_code();
        sub_100638250(status_code);
        v15 = 0xC000000000000000;
        if (a1)
        {
          v16 = a1;
          v17 = swift_dynamicCast();
          if (v17)
          {
            a1 = v20;
          }

          else
          {
            a1 = 0;
          }

          if (v17)
          {
            v15 = v21;
          }
        }

        sub_100294008(a1, v15);
        sub_10028088C(&qword_100987518, &unk_10080DE10);
        CheckedContinuation.resume(returning:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_100026AC0(a1, v15);
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    v18 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, enum case for SFAirDropReceive.Failure.badRequest(_:), v18);
    sub_10028088C(&qword_100987518, &unk_10080DE10);
    CheckedContinuation.resume(throwing:)();
  }

LABEL_16:
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1006355FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchData.Deallocator();
  __chkstk_darwin(v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  return DispatchData.init(bytesNoCopy:deallocator:)();
}

uint64_t sub_1006356E8@<X0>(uint64_t *a2@<X8>)
{
  result = String.init(cString:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100635718(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_100638428(&unk_100983280, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100635A30(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_100635A30(v5, v6);
  }

  type metadata accessor for SHA256();
  sub_100638428(&unk_100983280, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1006358F8(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_100635B10(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_100635B10(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_100635A30(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100638428(&unk_100983280, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100635B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

char *sub_100635BB8(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  __chkstk_darwin(v2);
  (*(v4 + 16))(v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_100638428(&qword_100987408, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  dispatch thunk of Sequence.makeIterator()();
  result = sub_10028088C(&qword_100987400, &qword_10080DDD0);
  v6 = *(a1 + *(result + 9));
  v7 = v26[0];
  v8 = _swiftEmptyArrayStorage;
  v9 = 0;
  if (v6)
  {
    v10 = v26[1];
    v11 = &_swiftEmptyArrayStorage[4];
    do
    {
      v12 = *(v7 + 16);
      if (v10 == v12)
      {
        break;
      }

      if (v10 >= v12)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v13 = *(v7 + v10 + 32);
      if (!v9)
      {
        v14 = *(v8 + 3);
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        sub_10028088C(&unk_100987410, &unk_1007FB010);
        v17 = swift_allocObject();
        v18 = 2 * j__malloc_size(v17) - 64;
        *(v17 + 2) = v16;
        *(v17 + 3) = v18;
        v19 = v17 + 32;
        v20 = *(v8 + 3) >> 1;
        if (*(v8 + 2))
        {
          v21 = v8 + 32;
          if (v17 != v8 || v19 >= &v21[v20])
          {
            memmove(v17 + 32, v21, v20);
          }

          *(v8 + 2) = 0;
        }

        v11 = &v19[v20];
        v9 = (v18 >> 1) - v20;

        v8 = v17;
      }

      v22 = __OFSUB__(v9--, 1);
      if (v22)
      {
        goto LABEL_23;
      }

      *v11++ = v13;
      ++v10;
      --v6;
    }

    while (v6);
  }

  v23 = *(v8 + 3);
  if (v23 < 2)
  {
    return v8;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v9);
  v25 = v24 - v9;
  if (!v22)
  {
    *(v8 + 2) = v25;
    return v8;
  }

LABEL_25:
  __break(1u);
  return result;
}

int64_t sub_100635ED0(int64_t a1, int64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 32;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v7 += 8;
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  if (v6)
  {
    sub_10028088C(&qword_100987510, &qword_1007F83C8);
    v11 = swift_allocObject();
    result = j__malloc_size(v11);
    v13 = result - 32;
    if (result < 32)
    {
      v13 = result - 25;
    }

    v14 = v13 >> 3;
    v11[2] = v6;
    v11[3] = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    while (1)
    {
      v17 = v5 <= a2;
      if (a3 > 0)
      {
        v17 = v5 >= a2;
      }

      if (v17)
      {
        break;
      }

      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
      }

      *v15++ = v5;
      v5 = v18;
      if (!--v6)
      {
        v5 = v18;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage[3];

  v15 = &_swiftEmptyArrayStorage[4];
  v16 = v19 >> 1;
LABEL_22:
  v20 = v5 <= a2;
  if (a3 > 0)
  {
    v20 = v5 >= a2;
  }

  if (!v20)
  {
    v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v22 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v22 = v21;
        if (!v16)
        {
          goto LABEL_31;
        }

        v22 = v21;
      }

      else if (!v16)
      {
LABEL_31:
        v23 = v11[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_53;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        sub_10028088C(&qword_100987510, &qword_1007F83C8);
        v26 = swift_allocObject();
        v27 = j__malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = v11[3] >> 1;
        if (v11[2])
        {
          v32 = v11 + 4;
          if (v26 != v11 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v11[2] = 0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
        v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      v10 = __OFSUB__(v16--, 1);
      if (v10)
      {
        goto LABEL_52;
      }

      *v15++ = v5;
      v33 = v22 <= a2;
      if (a3 > 0)
      {
        v33 = v22 >= a2;
      }

      v5 = v22;
    }

    while (!v33);
  }

  v34 = v11[3];
  if (v34 < 2)
  {
    return v11;
  }

  v35 = v34 >> 1;
  v10 = __OFSUB__(v35, v16);
  v36 = v35 - v16;
  if (!v10)
  {
    v11[2] = v36;
    return v11;
  }

LABEL_54:
  __break(1u);
  return result;
}