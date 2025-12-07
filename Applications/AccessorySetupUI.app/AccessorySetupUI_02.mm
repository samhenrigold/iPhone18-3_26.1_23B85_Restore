id sub_100028E4C()
{
  v1 = v0;
  if (qword_10007EC20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F440);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Bluetooth Setup View", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController);
  if (v6)
  {
    v7 = v6;
    v8 = sub_100027788();
    [v7 pushViewController:v8 animated:1];
  }

  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  result = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (result)
  {

    return [result pickerStartedBridging];
  }

  return result;
}

void sub_10002903C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  LODWORD(v3) = (*(v3 + 8))(ObjectType, v3);
  swift_unknownObjectRelease();
  if (v3 != 4)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
  v6 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v9 = *(v1 + v5);
  if (!v9)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v10 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
  v11 = *&v9[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
  v12 = v9;
  if (v11)
  {
    [v11 invalidateWithReason:6];
    v11 = *&v9[v10];
  }

  *&v9[v10] = 0;

  sub_1000268F0("Showing App Scan Error View", sub_100027ADC);
}

id sub_100029190(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType] = 6;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController] = 0;
  v4 = &v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter];
  *v4 = 0;
  v4[1] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_rootController] = 0;
  v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_didEnterPostPairingFlow] = 0;
  v6.receiver = v2;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

void sub_100029328()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    if (v5(ObjectType, v3) == 9 || v5(ObjectType, v3) == 11 || v5(ObjectType, v3) == 16)
    {
      v6 = 0;
    }

    else
    {
      type metadata accessor for ASError(0);
      sub_1000299A0(_swiftEmptyArrayStorage);
      sub_10002A4E0(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);
      _BridgedStoredNSError.init(_:userInfo:)();
      v6 = v19;
    }

    if (v5(ObjectType, v3) == 6 || v5(ObjectType, v3) == 8 || v5(ObjectType, v3) == 7)
    {
      v7 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
      if (!v7)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v8 = v7;
      sub_10001B4D4(0, 0, 0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for ASError(0);
    sub_1000299A0(_swiftEmptyArrayStorage);
    sub_10002A4E0(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);
    _BridgedStoredNSError.init(_:userInfo:)();
    v6 = v19;
  }

  v9 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  if (!v10)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
  v12 = *&v10[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
  v13 = v10;
  if (v12)
  {
    [v12 invalidateWithReason:10];
    v12 = *&v10[v11];
  }

  *&v10[v11] = 0;

  v14 = *(v1 + v9);
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v14;
  sub_1000189D4(10, 0);

  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  sub_100043324(v6);
  v16 = v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    v18 = swift_getObjectType();
    (*(v17 + 8))(v18, v17);
    swift_unknownObjectRelease();
  }
}

uint64_t getEnumTagSinglePayload for ASUIFlowType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASUIFlowType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100029854(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100029878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000298D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_10002994C()
{
  result = qword_10007F520;
  if (!qword_10007F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F520);
  }

  return result;
}

unint64_t sub_1000299A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009894(&unk_100080210, &qword_10005C898);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002A078(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10001F768(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100022E1C(&v15, (v3[7] + 32 * result));
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

void sub_100029AB0(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView];
  if (!swift_unknownObjectWeakLoadStrong() || (v4 = *(v3 + 1), v5 = swift_getObjectType(), LODWORD(v4) = (*(v4 + 8))(v5, v4), swift_unknownObjectRelease(), v4 != 14))
  {
    if (!swift_unknownObjectWeakLoadStrong() || (v6 = *(v3 + 1), ObjectType = swift_getObjectType(), LODWORD(v6) = (*(v6 + 8))(ObjectType, v6), swift_unknownObjectRelease(), v6 != 11))
    {
      if (v1[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType] != 3)
      {
        sub_1000268F0("Showing Connection Error View", sub_1000278A4);
        v23 = *(a1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
        if (!v23)
        {
          __break(1u);
          return;
        }

        v24 = [v23 allowPairing];
        v25 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
        if (v24)
        {
          if (v25)
          {
            v26 = &v25[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
            v27 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
            if (v27)
            {
              v28 = v25;
              [v27 invalidateWithReason:1];
LABEL_30:
              v27 = *v26;
LABEL_33:
              *v26 = 0;

              goto LABEL_35;
            }

            goto LABEL_32;
          }
        }

        else if (v25)
        {
          v26 = &v25[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
          v27 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
          if (v27)
          {
            v28 = v25;
            [v27 invalidateWithReason:2];
            goto LABEL_30;
          }

LABEL_32:
          v28 = v25;
          goto LABEL_33;
        }

LABEL_35:
        if (qword_10007EC50 != -1)
        {
          swift_once();
        }

        v40 = qword_1000814E8;
        type metadata accessor for ASError(0);
        sub_1000299A0(_swiftEmptyArrayStorage);
        sub_10002A4E0(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);
        _BridgedStoredNSError.init(_:userInfo:)();
        v41 = *(v40 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
        if (v41)
        {
          swift_unknownObjectRetain();
          v42 = _convertErrorToNSError(_:)();
          [v41 pickerSetupFailed:v42];

          swift_unknownObjectRelease();
        }

        return;
      }
    }
  }

  if (!swift_unknownObjectWeakLoadStrong() || (v8 = *(v3 + 1), v9 = swift_getObjectType(), LODWORD(v8) = (*(v8 + 8))(v9, v8), swift_unknownObjectRelease(), v8 != 15))
  {
    if (!swift_unknownObjectWeakLoadStrong() || (v10 = *(v3 + 1), v11 = swift_getObjectType(), LODWORD(v10) = (*(v10 + 8))(v11, v10), swift_unknownObjectRelease(), v10 != 11))
    {
      if (v1[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType] == 3)
      {
        sub_1000268F0("Showing Upgrade Error View", sub_1000279C0);
        v12 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
        if (v12)
        {
          v13 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
          v14 = *&v12[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
          v15 = v12;
          if (v14)
          {
            [v14 invalidateWithReason:1];
            v14 = *&v12[v13];
          }

          *&v12[v13] = 0;
        }

        goto LABEL_35;
      }
    }
  }

  if (qword_10007EC20 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000032F0(v16, qword_10007F440);
  v17 = v1;
  oslog = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v44 = v20;
    *v19 = 136315138;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v3 + 1);
      v22 = swift_getObjectType();
      (*(v21 + 8))(v22, v21);
      swift_unknownObjectRelease();
    }

    sub_100009894(&unk_10007F530, &qword_10005C890);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    v32 = sub_10003FFF4(v29, v30, &v44);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v19 + 4) = v32;
    _os_log_impl(&_mh_execute_header, oslog, v18, "ignoring error event from DA, UI is already in the state of %s", v19, 0xCu);
    sub_100009AB0(v20);
  }

  else
  {
  }
}

uint64_t sub_10002A078(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009894(&unk_10007F540, &unk_10005C8A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10002A0E8()
{
  if (!*(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter))
  {
    __break(1u);
    goto LABEL_9;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v2 = Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
  v3 = swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v3)
  {
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(ObjectType, v4);
    sub_10004B788(v6, v7);
    (*(v4 + 72))(v7, ObjectType, v4);
    swift_unknownObjectRelease();
    sub_10002A024(v7);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10002A210()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
  if (swift_unknownObjectWeakLoadStrong() && (v2 = *(v1 + 8), v3 = swift_getObjectType(), LODWORD(v2) = (*(v2 + 8))(v3, v2), result = swift_unknownObjectRelease(), v2 == 4) || (result = swift_unknownObjectWeakLoadStrong()) != 0 && (v5 = *(v1 + 8), v6 = swift_getObjectType(), LODWORD(v5) = (*(v5 + 8))(v6, v5), result = swift_unknownObjectRelease(), v5 == 16))
  {
    if (*(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter))
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v7 = result + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
        Strong = swift_unknownObjectWeakLoadStrong();
        v9 = *(v7 + 8);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (Strong)
        {
          ObjectType = swift_getObjectType();
          v11 = (*(v9 + 8))(ObjectType, v9);
          sub_10004B788(v11, v12);
          (*(v9 + 72))(v12, ObjectType, v9);
          swift_unknownObjectRelease();
          sub_10002A024(v12);
          return swift_unknownObjectRelease();
        }

        else
        {

          return swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002A3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009894(&qword_10007F2C0, &qword_10005C5C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002A43C()
{
  result = qword_10007F550;
  if (!qword_10007F550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007F550);
  }

  return result;
}

uint64_t sub_10002A488()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A4C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002A4E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002A528()
{
  result = qword_10007F288;
  if (!qword_10007F288)
  {
    sub_10001F924(&unk_10007F560, &qword_10005C590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F288);
  }

  return result;
}

uint64_t sub_10002A58C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10002A5CC()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v8[4] = sub_10002AA38;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10001BE14;
  v8[3] = &unk_100072788;
  v5 = _Block_copy(v8);
  v6 = [objc_opt_self() actionWithTitle:v4 style:1 handler:v5];

  _Block_release(v5);

  v7 = [v0 addAction:v6];
}

void sub_10002A76C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      sub_100042694(v6, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

__n128 sub_10002A990@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_routingContext + 48);
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_routingContext + 32);
  v11 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_routingContext + 64);
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_routingContext + 16);
  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_routingContext);
  v9 = v4;
  sub_10000A4E8(&v8, v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002AA00(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10002AA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10002AA58(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setTitle:v3];

  v4 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v4];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10002B838;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BE14;
  aBlock[3] = &unk_100072840;
  v7 = _Block_copy(aBlock);
  v8 = [objc_opt_self() actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  v9 = String._bridgeToObjectiveC()();
  [v1 setBottomTrayTitle:v9];

  aBlock[0] = *(a1 + 120);
  v10 = OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_device;
  v11 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_device];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_device] = aBlock[0];
  sub_1000253C8(aBlock, v70, &qword_10007F3D8, &qword_10005C9D0);

  v12 = [objc_allocWithZone(PRXTextField) init];
  v13 = OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField;
  v14 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField] = v12;
  v15 = v12;

  [v15 addTarget:v1 action:"textFieldDidChange" forControlEvents:0x20000];
  v16 = *&v1[v13];
  if (!v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemFontOfSize:18.0 weight:UIFontWeightMedium];
  [v18 setFont:v19];

  v20 = *&v1[v13];
  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = *&v1[v13];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 secondarySystemBackgroundColor];
  [v23 setBackgroundColor:v24];

  v25 = *&v1[v13];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = *&v1[v10];
  if (!v26)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = *(v26 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8);
  v28 = v25;
  if (v27)
  {

    v29 = String._bridgeToObjectiveC()();
    v27, v30, v31, v32, v33, v34, v35, v36;
  }

  else
  {
    v29 = 0;
  }

  [v25 setPlaceholder:v29];

  v37 = [v1 contentView];
  if (!*&v1[v13])
  {
    goto LABEL_21;
  }

  v38 = v37;
  [v37 addSubview:?];

  v39 = [v1 contentView];
  v40 = [v39 mainContentGuide];

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10005C450;
  v42 = *&v1[v13];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v43 = [v42 topAnchor];
  v44 = [v40 topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v41 + 32) = v45;
  v46 = *&v1[v13];
  if (!v46)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v47 = [v46 centerXAnchor];
  v48 = [v40 centerXAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v41 + 40) = v49;
  v50 = *&v1[v13];
  if (!v50)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v51 = [v50 bottomAnchor];
  v52 = [v40 bottomAnchor];
  v53 = [v51 constraintLessThanOrEqualToAnchor:v52];

  *(v41 + 48) = v53;
  v54 = *&v1[v13];
  if (!v54)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v55 = [v54 heightAnchor];
  v56 = [v55 constraintEqualToConstant:62.0];

  *(v41 + 56) = v56;
  v57 = *&v1[v13];
  if (v57)
  {
    v58 = objc_opt_self();
    v59 = [v57 widthAnchor];
    v60 = [v40 widthAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v41 + 64) = v61;
    sub_10000A5E8();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v41, v63, v64, v65, v66, v67, v68, v69;
    [v58 activateConstraints:isa];

    return;
  }

LABEL_26:
  __break(1u);
}

void sub_10002B0F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10002B14C();
  }
}

id sub_10002B14C()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField;
  result = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField);
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [result resignFirstResponder];
  v8 = v1 + OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_routingContext;
  swift_beginAccess();
  v9 = *(v8 + 48);
  v49[2] = *(v8 + 32);
  v49[3] = v9;
  v50 = *(v8 + 64);
  v10 = *(v8 + 16);
  v49[0] = *v8;
  v49[1] = v10;
  *v8 = 257;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  sub_10000A634(v49);
  if (*(v8 + 16) == 1)
  {
    goto LABEL_6;
  }

  *v8 = 1;
  result = *(v1 + v6);
  if (!result)
  {
    goto LABEL_15;
  }

  result = [result text];
  if (!result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = result;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v48[1] = v12;
  v48[2] = v14;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10002B858();
  v15 = StringProtocol.trimmingCharacters(in:)();
  v17 = v16;
  (*(v3 + 8))(v5, v2);
  v14, v18, v19, v20, v21, v22, v23, v24;
  v25 = *(v8 + 16);
  *(v8 + 8) = v15;
  *(v8 + 16) = v17;
  v25, v26, v27, v28, v29, v30, v31, v32;
LABEL_6:
  swift_endAccess();
  result = swift_beginAccess();
  if (*(v8 + 16) == 1)
  {
    goto LABEL_11;
  }

  v33 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_device);
  if (!v33)
  {
    goto LABEL_17;
  }

  v34 = *&v33[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  if (!v34)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = v33;
  result = [v34 identifier];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v36 = result;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = *(v8 + 48);
  *(v8 + 40) = v37;
  *(v8 + 48) = v39;
  v40, v41, v42, v43, v44, v45, v46, v47;
LABEL_11:
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000426C4(v1, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10002B464()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField;
  v7 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField);
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = [v7 text];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v48[0] = v10;
  v48[1] = v12;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10002B858();
  v13 = StringProtocol.trimmingCharacters(in:)();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  v23 = (v15 >> 56) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v23 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v12, v16, v17, v18, v19, v20, v21, v22;
    v15, v24, v25, v26, v27, v28, v29, v30;
    return;
  }

  v31 = *(v1 + v6);
  if (!v31)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v32 = v31;
  v15, v33, v34, v35, v36, v37, v38, v39;
  v12, v40, v41, v42, v43, v44, v45, v46;
  v47 = String._bridgeToObjectiveC()();
  [v32 setText:v47];
}

__n128 sub_10002B76C@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_1000253C8(&v9, &v8, &unk_10007F570, &unk_10005C510);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002B800(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10002B840(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002B858()
{
  result = qword_10007F618;
  if (!qword_10007F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F618);
  }

  return result;
}

id sub_10002B8AC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_type] = 9;
  v5 = &v2[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_routingContext];
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 2) = 1;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_router + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_textField] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_device] = 0;
  v2[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_updatingSSID] = 0;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithContentView:", a1);
}

uint64_t getEnumTagSinglePayload for ASUIViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASUIViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002BAC8()
{
  result = qword_10007F620;
  if (!qword_10007F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F620);
  }

  return result;
}

void sub_10002BB1C(uint64_t a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  [v2 setTitle:v4];

  v5 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v5];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();
  v90 = sub_10002C57C;
  v91 = v6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v88 = sub_10001BE14;
  v89 = &unk_100072988;
  v8 = _Block_copy(&aBlock);
  v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];

  _Block_release(v8);

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10005C520;
  v11 = *(a1 + 120);
  v92 = v11;
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v10;
  *(v10 + 32) = v11;
  aBlock = *(a1 + 160);
  v13 = *(&aBlock + 1);
  if (!*(&aBlock + 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = aBlock;
  sub_1000253C8(&v92, v86, &qword_10007F3D8, &qword_10005C9D0);
  sub_1000253C8(&aBlock, v86, &qword_10007F668, &qword_10005C9D8);
  if (qword_10007EBF0 != -1)
  {
    swift_once();
  }

  v85 = v9;
  v15 = type metadata accessor for Logger();
  sub_1000032F0(v15, qword_10007EF70);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v12, v18, v19, v20, v21, v22, v23, v24;
  if (os_log_type_enabled(v16, v17))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v86[0] = v26;
    *v25 = 136315138;
    type metadata accessor for ASUIDevice();
    v27 = Array.description.getter();
    v29 = v28;
    v30 = sub_10003FFF4(v27, v28, v86);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v16, v17, "init ASUIProductCarouselView with devices %s", v25, 0xCu);
    sub_100009AB0(v26);
  }

  v38 = [objc_allocWithZone(type metadata accessor for ASUIProductCarouselView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v39 = *&v38[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
  *&v38[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices] = v12;
  v40 = v38;
  v39, v41, v42, v43, v44, v45, v46, v47;
  v48 = &v40[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName];
  v49 = *&v40[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName + 8];
  *v48 = v14;
  *(v48 + 1) = v13;
  v49, v50, v51, v52, v53, v54, v55, v56;
  v40[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle] = 0;
  v40[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName] = 0;
  sub_100005CD4();

  v57 = v40;
  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  v58 = [v2 contentView];
  [v58 addSubview:v57];

  v59 = [v2 contentView];
  v60 = [v59 mainContentGuide];

  v61 = objc_opt_self();
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10005C4D0;
  v63 = [v57 topAnchor];
  v64 = [v60 topAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v62 + 32) = v65;
  v66 = [v57 bottomAnchor];
  v67 = [v60 bottomAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v62 + 40) = v68;
  v69 = [v57 leadingAnchor];
  v70 = [v2 contentView];
  v71 = [v70 leadingAnchor];

  v72 = [v69 constraintEqualToAnchor:v71];
  *(v62 + 48) = v72;
  v73 = [v57 trailingAnchor];

  v74 = [v2 contentView];
  v75 = [v74 trailingAnchor];

  v76 = [v73 constraintEqualToAnchor:v75];
  *(v62 + 56) = v76;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v62, v78, v79, v80, v81, v82, v83, v84;
  [v61 activateConstraints:isa];
}

void sub_10002C1CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10002C220();
  }
}

char *sub_10002C220()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 showActivityIndicatorWithStatus:v1];

  v2 = &v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIUpgradeViewController_routingContext];
  swift_beginAccess();
  v3 = *(v2 + 3);
  v6[2] = *(v2 + 2);
  v6[3] = v3;
  v7 = *(v2 + 8);
  v4 = *(v2 + 1);
  v6[0] = *v2;
  v6[1] = v4;
  *v2 = 257;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  sub_10000A634(v6);
  if (*(v2 + 2) != 1)
  {
    *v2 = 1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000426F4(v0, result);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_10002C4B0@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIUpgradeViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_1000253C8(&v9, &v8, &unk_10007F570, &unk_10005C510);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002C544(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10002C584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002C59C()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_10007F670);
  v1 = sub_1000032F0(v0, qword_10007F670);
  if (qword_10007EBE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_1000814A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_10002C6B4(void *a1, uint64_t *a2)
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

void *sub_10002C6E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10002C710@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_10002C7FC(_TtC16AccessorySetupUI17ASUIServerManager *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10002FB84(a1);
  a1, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

void sub_10002C83C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  byte_1000814E0 = v1;
}

uint64_t sub_10002C880(uint64_t result)
{
  if (!result)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      v3 = *(v1 + 32);

      v2(v4);
      result = sub_100002E6C(v2, v3);
    }

    *(v1 + 56) = 0;
    return result;
  }

  *(v1 + 56) = result;
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  if (*(v1 + 80))
  {
    *(v1 + 56) = result & 0xFFFFFFFFFFFFFFFELL;
    if ((result & 0xFFFFFFFFFFFFFFFELL) == 0)
    {
LABEL_16:
      v7 = *(v1 + 24);
      if (v7)
      {
        v8 = *(v1 + 32);

        v7(v9);

        return sub_100002E6C(v7, v8);
      }

      return result;
    }

LABEL_5:
    if ((result & 2) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  v5 = result;
  sub_10002C994();
  result = v5;
  if ((v5 & 2) == 0)
  {
    return result;
  }

LABEL_12:
  if (*(v1 + 81))
  {
    v6 = *(v1 + 56);
    if ((v6 & 2) != 0)
    {
      v6 &= ~2uLL;
      *(v1 + 56) = v6;
    }

    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {

    return sub_10002D57C();
  }

  return result;
}

void sub_10002C994()
{
  v1 = v0;
  if (qword_10007EC28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F670);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Configuring CBController", v5, 2u);
  }

  v6 = *(v1 + 64);
  v15 = sub_10002FD40;
  v16 = v1;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000102BC;
  v14 = &unk_100072AF0;
  v7 = _Block_copy(&v11);
  swift_retain_n();

  [v6 setBluetoothStateChangedHandler:v7];
  _Block_release(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10002FD38;
  *(v8 + 24) = v1;
  v15 = sub_10002FD80;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000102BC;
  v14 = &unk_100072B40;
  v9 = _Block_copy(&v11);

  [v6 setInterruptionHandler:v9];
  _Block_release(v9);
  v15 = sub_10002FD88;
  v16 = v1;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100018ABC;
  v14 = &unk_100072B68;
  v10 = _Block_copy(&v11);

  [v6 activateWithCompletion:v10];
  _Block_release(v10);
}

void sub_10002CC5C(uint64_t a1)
{
  v1 = *(a1 + 64);
  v3[4] = sub_10002FEA0;
  v3[5] = a1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100018ABC;
  v3[3] = &unk_100072B90;
  v2 = _Block_copy(v3);

  [v1 activateWithCompletion:v2];
  _Block_release(v2);
}

void sub_10002CD24(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10007EC28 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000032F0(v2, qword_10007F670);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Unable to activate CBController: %@", v4, 0xCu);
      sub_10002FCB0(v5);
    }

    else
    {
    }
  }

  else
  {
    *(a2 + 80) = 1;
    *(a2 + 84) = [*(a2 + 64) bluetoothState] == 5;
    v8 = *(a2 + 56);
    if (v8)
    {
      v8 &= ~1uLL;
      *(a2 + 56) = v8;
    }

    if (!v8)
    {
      v9 = *(a2 + 24);
      if (v9)
      {
        v10 = *(a2 + 32);

        v9(v11);
        sub_100002E6C(v9, v10);
        v12 = *(a2 + 24);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 32);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;

      sub_100002E6C(v12, v13);
    }
  }
}

void sub_10002CF64(uint64_t a1)
{
  v2 = *(a1 + 64);
  *(a1 + 84) = [v2 bluetoothState] == 5;
  if (qword_10007EC28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000032F0(v3, qword_10007F670);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    sub_10002FD90([v2 bluetoothState]);
    v8 = String.init(cString:)();
    v10 = v9;
    v11 = sub_10003FFF4(v8, v9, &v22);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "New Bluetooth State:  %s", v6, 0xCu);
    sub_100009AB0(v7);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    v20 = *(a1 + 48);
    v21 = *(a1 + 84);

    v19(v21, 1);

    sub_100002E6C(v19, v20);
  }
}

uint64_t sub_10002D148(uint64_t (*a1)(void))
{
  if (qword_10007EC28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F670);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection to CoreBluetooth interrupted - Re-activating", v5, 2u);
  }

  return a1();
}

void sub_10002D23C()
{
  if ((*(v0 + 82) & 1) == 0 && (*(v0 + 84) & 1) == 0)
  {
    v1 = v0;
    if (qword_10007EC28 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000032F0(v2, qword_10007F670);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Turning on Bluetooth", v5, 2u);
    }

    *(v1 + 82) = 1;
    v6 = *(v1 + 64);
    v8[4] = sub_10002FD30;
    v8[5] = v1;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100018ABC;
    v8[3] = &unk_100072AC8;
    v7 = _Block_copy(v8);

    [v6 setPowerState:5 completion:v7];
    _Block_release(v7);
  }
}

void sub_10002D3D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a2 + 82) = 0;
    swift_errorRetain();
    if (qword_10007EC28 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000032F0(v2, qword_10007F670);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Unable to turn on Bluetooth: %@", v4, 0xCu);
      sub_10002FCB0(v5);
    }

    else
    {
    }
  }
}

id sub_10002D57C()
{
  v1 = v0;
  if (qword_10007EC28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F670);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Configuring CWFInterface", v5, 2u);
  }

  v6 = *(v1 + 72);
  v19 = sub_10002FD20;
  v20 = v1;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10001BE14;
  v18 = &unk_100072A78;
  v7 = _Block_copy(&aBlock);

  [v6 setEventHandler:v7];
  _Block_release(v7);
  v19 = sub_10002FD28;
  v20 = v1;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1000102BC;
  v18 = &unk_100072AA0;
  v8 = _Block_copy(&aBlock);

  [v6 setInterruptionHandler:v8];
  _Block_release(v8);
  [v6 activate];
  sub_10002DC0C(&off_1000711C0);
  *(v1 + 81) = 1;
  result = [v6 powerOn];
  *(v1 + 86) = result;
  v10 = *(v1 + 56);
  if ((v10 & 2) != 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFDLL;
    *(v1 + 56) = v11;
    if (!v11)
    {
      v12 = *(v1 + 24);
      if (v12)
      {
        v13 = *(v1 + 32);

        v12(v14);
        return sub_100002E6C(v12, v13);
      }
    }
  }

  return result;
}

id sub_10002D924(void *a1, uint64_t a2)
{
  if (qword_10007EC28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000032F0(v4, qword_10007F670);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "CWFInterface event %@", v8, 0xCu);
    sub_10002FCB0(v9);
  }

  result = [v5 type];
  if (result == 1)
  {
    *(a2 + 83) = 0;
    result = [*(a2 + 72) powerOn];
    *(a2 + 86) = result;
    v12 = *(a2 + 56);
    if (v12)
    {
      if ((v12 & 2) == 0)
      {
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFDLL;
      *(a2 + 56) = v13;
      if (v13)
      {
        return result;
      }

      v14 = *(a2 + 24);
      if (!v14)
      {
        return result;
      }

      v15 = *(a2 + 32);

      v14(v16);
    }

    else
    {
      v14 = *(a2 + 40);
      if (!v14)
      {
        return result;
      }

      v15 = *(a2 + 48);
      v17 = result;

      (v14)(v17, 2);
    }

    return sub_100002E6C(v14, v15);
  }

  return result;
}

id sub_10002DB14(uint64_t a1)
{
  if (qword_10007EC28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F670);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection to CoreWiFi interrupted - Re-activating", v5, 2u);
  }

  v6 = *(a1 + 72);

  return [v6 activate];
}

void *sub_10002DC0C(void *result)
{
  v2 = result[2];
  if (v2)
  {
    v3 = result + 4;
    while (1)
    {
      v4 = *v3++;
      v6 = 0;
      if (![v1 startMonitoringEventType:v4 error:&v6])
      {
        break;
      }

      result = v6;
      if (!--v2)
      {
        return result;
      }
    }

    v5 = v6;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

double sub_10002DCD4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 83) & 1) == 0 && (*(v0 + 86) & 1) == 0)
  {
    *(v0 + 83) = 1;
    v13[1] = *(v0 + 16);
    v14 = v7;
    v11 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10002FBF4;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000102BC;
    aBlock[3] = &unk_100072A28;
    v13[0] = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v15 = _swiftEmptyArrayStorage;
    sub_10002FC14(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100009894(&unk_10007F560, &qword_10005C590);
    sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v12 = v13[0];
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v10, v14);
  }

  return result;
}

void sub_10002DFBC(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v33 = v4;
    if (qword_10007EC28 != -1)
    {
      swift_once();
    }

    v32 = v6;
    v11 = type metadata accessor for Logger();
    sub_1000032F0(v11, qword_10007F670);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Turning on Wi-Fi", v14, 2u);
    }

    v15 = *(v10 + 72);
    aBlock[0] = 0;
    v16 = [v15 setPower:1 error:aBlock];
    v17 = aBlock[0];
    if (v16)
    {
      *(v10 + 83) = 0;
      v18 = *(v10 + 72);
      v19 = v17;
      *(v10 + 86) = [v18 powerOn];
      sub_10002A43C();
      v31 = static OS_dispatch_queue.main.getter();
      v20 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_10002FD18;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000102BC;
      aBlock[3] = &unk_100072A50;
      v21 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v34 = _swiftEmptyArrayStorage;
      sub_10002FC14(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v30 = v5;
      sub_100009894(&unk_10007F560, &qword_10005C590);
      sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
      v22 = v33;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v23 = v31;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v21);

      (*(v2 + 8))(v22, v1);
      (*(v32 + 8))(v8, v30);
    }

    else
    {
      v24 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      *(v10 + 83) = 0;
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
        _os_log_impl(&_mh_execute_header, v25, v26, "Unable to turn on Wi-Fi: %@", v27, 0xCu);
        sub_10002FCB0(v28);
      }

      else
      {
      }
    }
  }
}

double sub_10002E518(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 56);
    if (v3)
    {
      if ((v3 & 2) != 0)
      {
        v4 = v3 & 0xFFFFFFFFFFFFFFFDLL;
        *(Strong + 56) = v4;
        if (!v4)
        {
          v5 = *(Strong + 24);
          if (v5)
          {
            v6 = *(Strong + 32);

            v5(v7);
            sub_100002E6C(v5, v6);
          }
        }
      }
    }

    else
    {
      v8 = *(Strong + 40);
      if (v8)
      {
        v9 = *(Strong + 48);
        v10 = *(Strong + 86);

        v8(v10, 2);
        sub_100002E6C(v8, v9);
      }
    }
  }

  return result;
}

uint64_t sub_10002E5F4()
{
  [*(v0 + 64) invalidate];
  [*(v0 + 72) invalidate];

  sub_100002E6C(*(v0 + 24), *(v0 + 32));
  sub_100002E6C(*(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t sub_10002E658()
{
  sub_10002E5F4();

  return _swift_deallocClassInstance(v0, 88, 7);
}

_BYTE *sub_10002E68C()
{
  v1 = v0;
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10002A43C();
  v14[0] = &OBJC_IVAR____TtC16AccessorySetupUI17ASUISystemMonitor_bluetoothRestricted;
  v14[1] = v7;
  static DispatchQoS.userInitiated.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_10002FC14(&qword_10007F8E8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100009894(&unk_1000804B0, &unk_10005D1B0);
  sub_10002FC5C(&qword_10007F8F0, &unk_1000804B0, &unk_10005D1B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v15);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = [objc_allocWithZone(CBController) init];
  *(v0 + 72) = [objc_allocWithZone(CWFInterface) initWithServiceType:1];
  *(v0 + 80) = 0;
  *(v0 + 84) = 0;
  v8 = objc_opt_self();
  result = [v8 sharedConnection];
  if (result)
  {
    v10 = result;
    v11 = [result isBluetoothModificationAllowed];

    v1[85] = v11;
    v1[86] = 0;
    result = [v8 sharedConnection];
    if (result)
    {
      v12 = result;
      v13 = [result isWiFiPowerModificationAllowed];

      v1[87] = v13;
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OptionSet<>.elements.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  swift_checkMetadataState();
  v6 = swift_allocBox();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = swift_allocBox();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v6;
  v8[6] = v7;
  type metadata accessor for AnyIterator();
  swift_getWitnessTable();
  return AnySequence.init<A>(_:)();
}

uint64_t sub_10002EBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;

  result = AnyIterator.init(_:)();
  *a6 = result;
  return result;
}

uint64_t sub_10002EC60@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a6;
  v66 = a5;
  v6 = *(*(*(a5 + 8) + 24) + 16);
  v65 = a4;
  v60 = *(a4 + 8);
  v67 = a3;
  swift_getAssociatedTypeWitness();
  v64 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v62 = &v56 - v7;
  v8 = swift_checkMetadataState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v57 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v58 = &v56 - v13;
  v14 = __chkstk_darwin(v12);
  v68 = &v56 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v56 - v20;
  __chkstk_darwin(v19);
  v23 = &v56 - v22;
  v24 = swift_projectBox();
  v25 = swift_projectBox();
  swift_beginAccess();
  v73 = v24;
  swift_beginAccess();
  v70 = v25;
  swift_beginAccess();
  v69 = (v9 + 8);
  v59 = v9;
  v26 = *(v9 + 16);
  v72 = v9 + 16;
  v71 = v26;
  v26(v23, v73, v8);
  while (1)
  {
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        v28 = dispatch thunk of BinaryInteger._lowWord.getter();
        v29 = *v69;
        (*v69)(v23, v8);
        if (!v28)
        {
          return (*(*(v67 - 8) + 56))(v61, 1, 1);
        }

        goto LABEL_21;
      }

LABEL_10:
      v74 = 0;
      sub_10002FE04();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *v69;
      (*v69)(v21, v8);
      v29(v23, v8);
      if (v32)
      {
        return (*(*(v67 - 8) + 56))(v61, 1, 1);
      }

      goto LABEL_21;
    }

    v30 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v31 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v30)
    {
      if (v31 > 64)
      {
        goto LABEL_10;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v36 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v29 = *v69;
      (*v69)(v21, v8);
      if (v36)
      {
        v37 = dispatch thunk of BinaryInteger._lowWord.getter();
        v29(v23, v8);
        if (!v37)
        {
          return (*(*(v67 - 8) + 56))(v61, 1, 1);
        }
      }

      else
      {
        v29(v23, v8);
      }
    }

    else
    {
      v33 = v18;
      v34 = v69;
      if (v31 >= 64)
      {
        v74 = 0;
        sub_10002FE04();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = *v34;
        (*v34)(v21, v8);
        v29(v23, v8);
        if (v38)
        {
          return (*(*(v67 - 8) + 56))(v61, 1, 1);
        }
      }

      else
      {
        v35 = dispatch thunk of BinaryInteger._lowWord.getter();
        v29 = *v34;
        (*v34)(v23, v8);
        if (!v35)
        {
          return (*(*(v67 - 8) + 56))(v61, 1, 1);
        }
      }

      v18 = v33;
    }

LABEL_21:
    v39 = v71;
    v71(v21, v73, v8);
    v40 = v68;
    v39(v68, v70, v8);
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v29(v40, v8);
    v29(v21, v8);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
      {
        goto LABEL_2;
      }

      goto LABEL_29;
    }

    v41 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v42 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v41)
    {
      break;
    }

    if (v42 >= 64)
    {
LABEL_2:
      v74 = 0;
      sub_10002FE04();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29(v21, v8);
      v29(v18, v8);
      if ((v27 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_3;
    }

LABEL_29:
    v44 = dispatch thunk of BinaryInteger._lowWord.getter();
    v29(v18, v8);
    if (v44)
    {
      goto LABEL_32;
    }

LABEL_3:
    sub_10002F678(v70, v67, v65, v66);
    v71(v23, v73, v8);
  }

  if (v42 > 64)
  {
    goto LABEL_2;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v43 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v29(v21, v8);
  if (v43)
  {
    goto LABEL_29;
  }

  v29(v18, v8);
LABEL_32:
  v46 = v73;
  swift_beginAccess();
  v47 = v68;
  v48 = v46;
  v49 = v71;
  v71(v68, v48, v8);
  v50 = v49;
  v51 = v70;
  swift_beginAccess();
  v52 = v57;
  v50(v57, v51, v8);
  v53 = v58;
  dispatch thunk of static BinaryInteger.~ prefix(_:)();
  v29(v52, v8);
  dispatch thunk of static BinaryInteger.& infix(_:_:)();
  v29(v53, v8);
  v29(v47, v8);
  v54 = v73;
  swift_beginAccess();
  (*(v59 + 40))(v54, v21, v8);
  swift_beginAccess();
  v71(v21, v51, v8);
  v55 = v67;
  dispatch thunk of RawRepresentable.init(rawValue:)();
  return sub_10002F678(v51, v55, v65, v66);
}

uint64_t sub_10002F678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = swift_checkMetadataState();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v18[-v12];
  __chkstk_darwin(v11);
  v15 = &v18[-v14];
  swift_beginAccess();
  (*(v7 + 16))(v13, a1, v6);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static FixedWidthInteger.&* infix(_:_:)();
  v16 = *(v7 + 8);
  v16(v10, v6);
  v16(v13, v6);
  swift_beginAccess();
  return (*(v7 + 40))(a1, v15, v6);
}

unint64_t sub_10002F94C()
{
  result = qword_10007F8C8;
  if (!qword_10007F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F8C8);
  }

  return result;
}

unint64_t sub_10002F9A4()
{
  result = qword_10007F8D0;
  if (!qword_10007F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F8D0);
  }

  return result;
}

unint64_t sub_10002F9FC()
{
  result = qword_10007F8D8;
  if (!qword_10007F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F8D8);
  }

  return result;
}

unint64_t sub_10002FA54()
{
  result = qword_10007F8E0;
  if (!qword_10007F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F8E0);
  }

  return result;
}

uint64_t sub_10002FAA8()
{
  v0 = SCDynamicStoreCopyComputerName(0, 0);
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 model];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_10002FB84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10002FBBC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002FBFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002FC14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002FC5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001F924(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002FCB0(uint64_t a1)
{
  v2 = sub_100009894(&qword_10007F278, &unk_10005CD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002FD48()
{

  return _swift_deallocObject(v0, 32, 7);
}

const char *sub_10002FD90(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return "?";
  }

  else
  {
    return off_100072BE0[a1];
  }
}

uint64_t sub_10002FDB4()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10002FE04()
{
  result = qword_10007F8F8;
  if (!qword_10007F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F8F8);
  }

  return result;
}

void sub_10002FEA4(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setTitle:v3];

  v4 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v4];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = String._bridgeToObjectiveC()();
  v123 = sub_100031154;
  v124 = v5;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_10001BE14;
  v122 = &unk_100072CC8;
  v7 = _Block_copy(&aBlock);
  v8 = objc_opt_self();
  v9 = [v8 actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  [v9 setEnabled:0];
  v118 = v9;

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v11 = String._bridgeToObjectiveC()();
  v123 = sub_10003119C;
  v124 = v10;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_10001BE14;
  v122 = &unk_100072CF0;
  v12 = _Block_copy(&aBlock);
  v13 = [v8 actionWithTitle:v11 style:1 handler:v12];

  _Block_release(v12);

  v117 = v13;

  v14 = [objc_allocWithZone(PRXPasscodeEntryView) initWithNumberOfDigits:*&v1[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_numberOfDigits] useMonospacedFont:1 delegate:v1];
  v15 = OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_passkeyEntryView;
  v16 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_passkeyEntryView];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_passkeyEntryView] = v14;
  v17 = v14;

  [v17 addTarget:v1 action:"textDidChange:" forControlEvents:4096];
  v18 = *&v1[v15];
  if (!v18)
  {
    __break(1u);
    goto LABEL_35;
  }

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [v1 contentView];
  if (!*&v1[v15])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v20 = v19;
  [v19 addSubview:?];

  v28 = *(a1 + 120);
  if (!v28)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (*(v28 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) > 1u)
  {
    if (*(v28 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) == 2)
    {
      v29 = 0xEA00000000005041;
    }

    else
    {
      v29 = 0xE900000000000065;
    }
  }

  else
  {
    if (*(v28 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup))
    {
      0xE900000000000068, v21, v22, v23, v24, v25, v26, v27;
      goto LABEL_20;
    }

    v29 = 0xE400000000000000;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v29, v31, v32, v33, v34, v35, v36, v37;
  if ((v30 & 1) == 0)
  {
    if (*(v28 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) > 1u)
    {
      if (*(v28 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) != 2)
      {
        0xE900000000000065, v38, v39, v40, v41, v42, v43, v44;
        goto LABEL_20;
      }

      v45 = 0xEA00000000005041;
    }

    else
    {
      v45 = 0xE900000000000068;
      if (!*(v28 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup))
      {
        v45 = 0xE400000000000000;
      }
    }

    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v45, v47, v48, v49, v50, v51, v52, v53;
    if ((v46 & 1) == 0)
    {
      v54 = 0;
      goto LABEL_21;
    }
  }

LABEL_20:
  v55 = String._bridgeToObjectiveC()();
  v56 = [objc_opt_self() _systemImageNamed:v55];

  v54 = [objc_allocWithZone(UIImageView) initWithImage:v56];
  v57 = [objc_opt_self() systemBlueColor];
  [v54 setTintColor:v57];

  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
  v58 = [objc_opt_self() configurationWithPointSize:40.0];
  [v54 setPreferredSymbolConfiguration:v58];

  v59 = v54;
  v60 = [v1 contentView];
  [v60 addSubview:v59];

LABEL_21:
  v61 = [v1 contentView];
  v62 = [v61 mainContentGuide];

  if (v54)
  {
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_10005C450;
    v64 = v54;
    v65 = [v64 topAnchor];
    v66 = [v62 topAnchor];
    v67 = [v65 constraintGreaterThanOrEqualToAnchor:v66];

    *(v63 + 32) = v67;
    v68 = [v64 centerXAnchor];
    v69 = [v62 centerXAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];

    *(v63 + 40) = v70;
    v71 = *&v1[v15];
    if (v71)
    {
      v72 = [v71 topAnchor];
      v73 = [v64 bottomAnchor];

      v74 = [v72 constraintEqualToAnchor:v73 constant:28.0];
      *(v63 + 48) = v74;

      v75 = *&v1[v15];
      if (v75)
      {
        v76 = [v75 bottomAnchor];
        v77 = [v62 bottomAnchor];
        v78 = [v76 constraintLessThanOrEqualToAnchor:v77 constant:-32.0];

        *(v63 + 56) = v78;
        v79 = *&v1[v15];
        if (v79)
        {
          v80 = objc_opt_self();
          v81 = [v79 centerXAnchor];
          v82 = [v62 centerXAnchor];
          v83 = [v81 constraintEqualToAnchor:v82];

          *(v63 + 64) = v83;
          sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
          v84.super.isa = Array._bridgeToObjectiveC()().super.isa;
          v63, v85, v86, v87, v88, v89, v90, v91;
          [v80 activateConstraints:v84.super.isa];

LABEL_33:
          return;
        }

        goto LABEL_39;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_10005C4D0;
  v93 = *&v1[v15];
  if (!v93)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v94 = [v93 topAnchor];
  v95 = [v62 topAnchor];
  if (qword_10007EC18 != -1)
  {
    swift_once();
  }

  v96 = [v94 constraintGreaterThanOrEqualToAnchor:v95 constant:*&qword_1000814D8];

  *(v92 + 32) = v96;
  v97 = *&v1[v15];
  if (!v97)
  {
    goto LABEL_41;
  }

  v98 = [v97 bottomAnchor];
  v99 = [v62 bottomAnchor];
  v100 = [v98 constraintLessThanOrEqualToAnchor:v99 constant:-32.0];

  *(v92 + 40) = v100;
  v101 = *&v1[v15];
  if (!v101)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v102 = [v101 centerXAnchor];
  v103 = [v62 centerXAnchor];
  v104 = [v102 constraintEqualToAnchor:v103];

  *(v92 + 48) = v104;
  v105 = *&v1[v15];
  if (v105)
  {
    v106 = objc_opt_self();
    v107 = [v105 centerYAnchor];
    v108 = [v62 centerYAnchor];
    v109 = [v107 constraintEqualToAnchor:v108];

    *(v92 + 56) = v109;
    sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
    v84.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v92, v110, v111, v112, v113, v114, v115, v116;
    [v106 activateConstraints:v84.super.isa];
    goto LABEL_33;
  }

LABEL_43:
  __break(1u);
}

void *sub_100030A04()
{
  sub_10003B898();
  v1 = OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_passkeyEntryView;
  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_passkeyEntryView);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  [result resignFirstResponder];
  result = *(v0 + v1);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [result setEnabled:0];
  v3 = v0 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_routingContext;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v18[2] = *(v3 + 32);
  v18[3] = v4;
  v19 = *(v3 + 64);
  v5 = *(v3 + 16);
  v18[0] = *v3;
  v18[1] = v5;
  *v3 = 257;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  sub_10000A634(v18);
  if (*(v3 + 16) == 1)
  {
    goto LABEL_6;
  }

  *v3 = 1;
  result = *(v0 + v1);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = [result text];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = *(v3 + 32);
  *(v3 + 24) = v7;
  *(v3 + 32) = v9;
  v10, v11, v12, v13, v14, v15, v16, v17;
LABEL_6:
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042724(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100030B5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

char *sub_100030BB8()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 0;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042724(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100030CE4(void *a1)
{
  v2 = [a1 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = String.count.getter();
  v4, v6, v7, v8, v9, v10, v11, v12;
  v13 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_numberOfDigits];
  v14 = [v1 actions];
  sub_100009B48(0, &qword_10007F9B0, PRXAction_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = v15 >> 62;
  if (v5 >= v13)
  {
    if (!v23)
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_20:
        v15, v16, v17, v18, v19, v20, v21, v22;
        __break(1u);
        goto LABEL_21;
      }

LABEL_10:
      if ((v15 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_24:
          __break(1u);
          return;
        }

        v32 = *(v15 + 32);
      }

      v40 = v32;
      v15, v33, v34, v35, v36, v37, v38, v39;
      [v40 setEnabled:1];
      goto LABEL_14;
    }

LABEL_19:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  if (!v23)
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_18:
    v15, v16, v17, v18, v19, v20, v21, v22;
    __break(1u);
    goto LABEL_19;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_21:
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v24 = *(v15 + 32);
LABEL_7:
  v40 = v24;
  v15, v25, v26, v27, v28, v29, v30, v31;
  [v40 setEnabled:0];
LABEL_14:
}

__n128 sub_100031098@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003111C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100031184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000311D4(uint64_t a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  [v1 setTitle:v4];

  v5 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v5];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();
  v120 = sub_1000321B0;
  v121 = v6;
  aBlock = _NSConcreteStackBlock;
  v117 = 1107296256;
  v118 = sub_10001BE14;
  v119 = &unk_100072DA8;
  v8 = _Block_copy(&aBlock);
  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:0 handler:v8];

  _Block_release(v8);

  v115 = v10;

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v120 = sub_1000321F8;
  v121 = v11;
  aBlock = _NSConcreteStackBlock;
  v117 = 1107296256;
  v118 = sub_10001BE14;
  v119 = &unk_100072DD0;
  v13 = _Block_copy(&aBlock);
  v14 = [v9 actionWithTitle:v12 style:1 handler:v13];

  _Block_release(v13);

  v114 = v14;

  v22 = *(a1 + 120);
  if (!v22)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (*(v22 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) > 1u)
  {
    if (*(v22 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) == 2)
    {
      v23 = 0xEA00000000005041;
    }

    else
    {
      v23 = 0xE900000000000065;
    }

LABEL_9:
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v23, v25, v26, v27, v28, v29, v30, v31;
    if (v24)
    {
      goto LABEL_10;
    }

    if (*(v22 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) > 1u)
    {
      if (*(v22 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) != 2)
      {
        0xE900000000000065, v32, v33, v34, v35, v36, v37, v38;
LABEL_19:
        v39 = String._bridgeToObjectiveC()();
        p_ivars = &ASUIPresenter.ivars;
        goto LABEL_20;
      }

      v41 = 0xEA00000000005041;
    }

    else
    {
      v41 = 0xE900000000000068;
      if (!*(v22 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup))
      {
        v41 = 0xE400000000000000;
      }
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v41, v43, v44, v45, v46, v47, v48, v49;
    if ((v42 & 1) == 0)
    {
      v50 = 0;
      p_ivars = (&ASUIPresenter + 48);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (!*(v22 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup))
  {
    v23 = 0xE400000000000000;
    goto LABEL_9;
  }

  0xE900000000000068, v15, v16, v17, v18, v19, v20, v21;
LABEL_10:
  v39 = String._bridgeToObjectiveC()();
  p_ivars = (&ASUIPresenter + 48);
LABEL_20:
  v51 = [objc_opt_self() _systemImageNamed:v39];

  v50 = [objc_allocWithZone(UIImageView) initWithImage:v51];
  v52 = [objc_opt_self() systemBlueColor];
  [v50 setTintColor:v52];

  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  v53 = [objc_opt_self() configurationWithPointSize:40.0];
  [v50 setPreferredSymbolConfiguration:v53];

  v54 = v50;
  v55 = [v2 contentView];
  [v55 p_ivars[150]];

LABEL_21:
  v56 = [objc_allocWithZone(UILabel) init];
  if (!*(a1 + 144))
  {
LABEL_29:
    __break(1u);
    return;
  }

  v57 = v56;
  v58 = String._bridgeToObjectiveC()();
  [v57 setText:v58];

  v59 = [objc_opt_self() monospacedSystemFontOfSize:48.0 weight:UIFontWeightMedium];
  [v57 setFont:v59];

  v60 = v57;
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  v61 = [v2 contentView];
  [v61 p_ivars[150]];

  v62 = [v2 contentView];
  v63 = [v62 mainContentGuide];

  if (v50)
  {
    v113 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_10005CC90;
    v65 = v50;
    v66 = [v65 topAnchor];
    v67 = [v63 topAnchor];
    v68 = [v66 constraintGreaterThanOrEqualToAnchor:v67];

    *(v64 + 32) = v68;
    v69 = [v65 bottomAnchor];
    v70 = [v63 bottomAnchor];
    v71 = [v69 constraintLessThanOrEqualToAnchor:v70];

    *(v64 + 40) = v71;
    v72 = [v65 centerXAnchor];
    v73 = [v63 centerXAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    *(v64 + 48) = v74;
    v75 = [v60 topAnchor];
    v76 = [v65 bottomAnchor];

    v77 = [v75 constraintEqualToAnchor:v76 constant:28.0];
    *(v64 + 56) = v77;
    v78 = [v60 bottomAnchor];
    v79 = [v63 bottomAnchor];
    v80 = [v78 constraintEqualToAnchor:v79 constant:-32.0];

    *(v64 + 64) = v80;
    v81 = [v60 centerXAnchor];

    v82 = [v63 centerXAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    *(v64 + 72) = v83;
    sub_10000A5E8();
    v84.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v64, v85, v86, v87, v88, v89, v90, v91;
    [v113 activateConstraints:v84.super.isa];
  }

  else
  {
    v92 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_10005C4D0;
    v94 = [v60 topAnchor];
    v95 = [v63 topAnchor];
    if (qword_10007EC18 != -1)
    {
      swift_once();
    }

    v96 = [v94 constraintGreaterThanOrEqualToAnchor:v95 constant:*&qword_1000814D8];

    *(v93 + 32) = v96;
    v97 = [v60 bottomAnchor];
    v98 = [v63 bottomAnchor];
    v99 = [v97 constraintLessThanOrEqualToAnchor:v98 constant:-32.0];

    *(v93 + 40) = v99;
    v100 = [v60 centerXAnchor];
    v101 = [v63 centerXAnchor];
    v102 = [v100 constraintEqualToAnchor:v101];

    *(v93 + 48) = v102;
    v103 = [v60 centerYAnchor];

    v104 = [v63 centerYAnchor];
    v105 = [v103 constraintEqualToAnchor:v104];

    *(v93 + 56) = v105;
    sub_10000A5E8();
    v84.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v93, v106, v107, v108, v109, v110, v111, v112;
    [v92 activateConstraints:v84.super.isa];
  }
}

char *sub_100031D60()
{
  sub_10003B898();
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042754(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100031E2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

char *sub_100031E88()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 0;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042754(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_1000320F4@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100032178(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_1000321E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000323F4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ASUIDeviceOTANameTableViewCell();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100032460()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v0 setTitle:v2];

  v3 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v3];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();
  v48 = sub_100032E0C;
  v49 = v4;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10001BE14;
  v47 = &unk_100072E88;
  v6 = _Block_copy(&aBlock);
  v7 = objc_opt_self();
  v43 = [v7 actionWithTitle:v5 style:1 handler:v6];

  _Block_release(v6);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v48 = sub_100032E44;
  v49 = v8;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10001BE14;
  v47 = &unk_100072EB0;
  v10 = _Block_copy(&aBlock);
  v11 = [v7 actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  v14 = [objc_allocWithZone(UIImageView) initWithImage:v13];
  v15 = [objc_opt_self() systemBlueColor];
  [v14 setTintColor:v15];

  v16 = v14;
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [objc_opt_self() configurationWithPointSize:72.0];
  [v16 setPreferredSymbolConfiguration:v17];

  v18 = [v1 contentView];
  [v18 addSubview:v16];

  v19 = [v1 contentView];
  v20 = [v19 mainContentGuide];

  v21 = objc_opt_self();
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10005C4D0;
  v23 = [v16 topAnchor];
  v24 = [v20 topAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

  *(v22 + 32) = v25;
  v26 = [v16 bottomAnchor];
  v27 = [v20 bottomAnchor];
  v28 = [v26 constraintLessThanOrEqualToAnchor:v27];

  *(v22 + 40) = v28;
  v29 = [v16 centerXAnchor];
  v30 = [v20 centerXAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v22 + 48) = v31;
  v32 = [v16 centerYAnchor];

  v33 = [v20 centerYAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v22 + 56) = v34;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v22, v36, v37, v38, v39, v40, v41, v42;
  [v21 activateConstraints:isa];
}

void sub_100032A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100032AE4(v3);
  }
}

char *sub_100032AE4(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIAppScanConsentViewController_routingContext;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v7[2] = *(v3 + 32);
  v7[3] = v4;
  v8 = *(v3 + 64);
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  *v3 = 257;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  sub_10000A634(v7);
  if (*(v3 + 16) != 1)
  {
    *v3 = a1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042784(v1, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_100032D50@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIAppScanConsentViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100032DD4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100032E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100032E6C()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_10007FA70);
  v1 = sub_1000032F0(v0, qword_10007FA70);
  if (qword_10007EBD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_100081460);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000330D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100033140(void *a1, void *a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    if (qword_10007EC38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000032F0(v25, qword_10007FA70);
    v26 = a1;
    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = v29;
      *v28 = 136315138;
      swift_getObjectType();
      v30 = _typeName(_:qualified:)();
      v32 = v31;
      v33 = sub_10003FFF4(v30, v31, &v49);
      v32, v34, v35, v36, v37, v38, v39, v40;
      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, oslog, v27, "Cannot configure scene, expected a remote alert scene but got a scene of type: %s", v28, 0xCu);
      sub_100009AB0(v29);
    }

    goto LABEL_20;
  }

  v7 = v6;
  v8 = a1;
  v9 = [v7 configurationIdentifier];
  if (v9)
  {

    [v7 setOrientationChangedEventsDisabled:1];
    [v7 setAllowsMenuButtonDismissal:0];
    [v7 setDesiredHardwareButtonEvents:0];
    v10 = v8;
    v11 = sub_100002CF8(v7, a2);
    v12 = OBJC_IVAR____TtC16AccessorySetupUI24RemoteAlertSceneDelegate_window;
    v13 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI24RemoteAlertSceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC16AccessorySetupUI24RemoteAlertSceneDelegate_window) = v11;

    v14 = [objc_allocWithZone(type metadata accessor for ASUIRootViewController()) init];
    v15 = [v14 view];
    if (v15)
    {
      v16 = v15;
      sub_1000335E8();
      static Color.clear.getter();
      v17 = UIColor.init(_:)();
      [v16 setBackgroundColor:v17];

      v18 = [v14 view];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 layer];

        [v20 setAllowsHitTesting:0];
        v21 = *(v3 + v12);
        if (v21)
        {
          v22 = v21;
          [v22 setRootViewController:v14];
        }

        v23 = *(v3 + v12);
        if (v23)
        {
          [v23 makeKeyAndVisible];
          v24 = *(v3 + v12);
          if (v24)
          {
            [v24 setHidden:0];
          }
        }

        oslog = String._bridgeToObjectiveC()();
        [v7 setIdleTimerDisabled:1 forReason:oslog];

        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (qword_10007EC38 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_1000032F0(v41, qword_10007FA70);
  v42 = v8;
  oslog = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(oslog, v43))
  {

LABEL_20:
    v46 = oslog;
    goto LABEL_21;
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  *v44 = 138412290;
  *(v44 + 4) = v7;
  *v45 = v7;
  v47 = v42;
  _os_log_impl(&_mh_execute_header, oslog, v43, "Could not find configuration identifier on remote alert scene: %@", v44, 0xCu);
  sub_10002FCB0(v45);

  v46 = v47;
LABEL_21:
}

unint64_t sub_1000335E8()
{
  result = qword_10007FAC0;
  if (!qword_10007FAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007FAC0);
  }

  return result;
}

__n128 sub_1000337DC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIListViewController_routingContext + 48);
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIListViewController_routingContext + 32);
  v11 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIListViewController_routingContext + 64);
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIListViewController_routingContext + 16);
  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIListViewController_routingContext);
  v9 = v4;
  sub_10000A4E8(&v8, v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

void sub_10003384C()
{
  v1 = v0;
  sub_100009894(&qword_10007FC88, &qword_10005CDD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005CDA0;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_device;
  v4 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_device);
  if (!v4)
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = *&v4[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  if (!v5)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v6 = inited;
  v7 = v4;
  v8 = [v5 identifier];
  if (!v8)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v6 + 48) = v10;
  *(v6 + 56) = v12;
  *(v6 + 64) = 0x656D614E2041544FLL;
  *(v6 + 72) = 0xE800000000000000;
  v13 = *(v1 + v3);
  if (!v13)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_100035628();
  v17 = v16;

  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  *(v6 + 80) = v18;
  *(v6 + 88) = v19;
  strcpy((v6 + 96), "Technologies");
  *(v6 + 109) = 0;
  *(v6 + 110) = -5120;
  v20 = *(v1 + v3);
  if (!v20)
  {
    goto LABEL_41;
  }

  v21 = v20;
  v22 = sub_100036194();

  v30 = *&v22->router[8];
  if (v30)
  {
    v66 = v6;
    sub_100039810(0, v30, 0);
    v38 = 32;
    do
    {
      v39 = *(&v22->super.isa + v38);
      if (v39 == 2)
      {
        v40 = 0x74666F5369666977;
      }

      else
      {
        v40 = 0x7261774169666977;
      }

      if (v39 == 2)
      {
        v41 = 0xEA00000000005041;
      }

      else
      {
        v41 = 0xE900000000000065;
      }

      v42 = 0xE900000000000068;
      if (*(&v22->super.isa + v38))
      {
        v43 = 0x746F6F7465756C62;
      }

      else
      {
        v43 = 1701736302;
      }

      if (!*(&v22->super.isa + v38))
      {
        v42 = 0xE400000000000000;
      }

      if (*(&v22->super.isa + v38) <= 1u)
      {
        v44 = v43;
      }

      else
      {
        v44 = v40;
      }

      if (*(&v22->super.isa + v38) <= 1u)
      {
        v45 = v42;
      }

      else
      {
        v45 = v41;
      }

      v47 = *&_swiftEmptyArrayStorage.router[8];
      v46 = *&_swiftEmptyArrayStorage.router[16];
      if (v47 >= v46 >> 1)
      {
        sub_100039810((v46 > 1), v47 + 1, 1);
      }

      *&_swiftEmptyArrayStorage.router[8] = v47 + 1;
      v48 = &_swiftEmptyArrayStorage.super.isa + 2 * v47;
      v48[4] = v44;
      v48[5] = v45;
      ++v38;
      --v30;
    }

    while (v30);
    v22, v31, v32, v33, v34, v35, v36, v37;
    v6 = v66;
  }

  else
  {
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  v49 = Array.description.getter();
  v51 = v50;
  &_swiftEmptyArrayStorage, v50, v52, v53, v54, v55, v56, v57;
  v58._countAndFlagsBits = v49;
  v58._object = v51;
  String.append(_:)(v58);
  v51, v59, v60, v61, v62, v63, v64, v65;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0xE000000000000000;
  sub_100042D4C(v6);
  swift_setDeallocating();
  sub_100009894(&unk_10007FC90, &unk_10005CDE0);
  swift_arrayDestroy();
}

void sub_100033BB4()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for ASUIDeviceInfoPopoverViewController();
  objc_msgSendSuper2(&v27, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 systemWhiteColor];
  [v2 setBackgroundColor:v4];

  [v0 preferredContentSize];
  v6 = v5;
  v7 = [v0 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  v17 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, v6 + -20.0, CGRectGetHeight(v28)}];
  v18 = OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_tableView;
  v19 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_tableView];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_tableView] = v17;
  v20 = v17;

  [v20 setDelegate:v0];
  v21 = *&v0[v18];
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v21 setDataSource:v0];
  v22 = *&v0[v18];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v3 systemGroupedBackgroundColor];
  [v23 setBackgroundColor:v24];

  v25 = [v0 view];
  if (!v25)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*&v0[v18])
  {
    v26 = v25;
    [v25 addSubview:?];

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_100034090(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_device] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_tableView] = 0;
  v5 = &v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_idKey];
  *v5 = 0x696669746E656449;
  *(v5 + 1) = 0xEA00000000007265;
  v6 = &v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_otaKey];
  *v6 = 0x656D614E2041544FLL;
  *(v6 + 1) = 0xE800000000000000;
  v7 = &v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_typeKey];
  *v7 = 0x7954207465737341;
  *(v7 + 1) = 0xEA00000000006570;
  v8 = &v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_techKey];
  strcpy(&v3[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_techKey], "Technologies");
  v8[13] = 0;
  *(v8 + 7) = -5120;
  if (a2)
  {
    v10 = String._bridgeToObjectiveC()();
    a2, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    v10 = 0;
  }

  v20.receiver = v3;
  v20.super_class = type metadata accessor for ASUIDeviceInfoPopoverViewController();
  v18 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", v10, a3);

  return v18;
}

id sub_100034224(void *a1)
{
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_device] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_tableView] = 0;
  v3 = &v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_idKey];
  *v3 = 0x696669746E656449;
  *(v3 + 1) = 0xEA00000000007265;
  v4 = &v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_otaKey];
  *v4 = 0x656D614E2041544FLL;
  *(v4 + 1) = 0xE800000000000000;
  v5 = &v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_typeKey];
  *v5 = 0x7954207465737341;
  *(v5 + 1) = 0xEA00000000006570;
  v6 = &v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_techKey];
  strcpy(&v1[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_techKey], "Technologies");
  v6[13] = 0;
  *(v6 + 7) = -5120;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ASUIDeviceInfoPopoverViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100034360(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ASUIDeviceInfoPopoverViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100034454()
{
  v1 = type metadata accessor for UIListContentConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_idKey + 8);
  v30[0] = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_idKey);
  v30[1] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_otaKey + 8);
  v30[2] = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_otaKey);
  v30[3] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_techKey + 8);
  v30[4] = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_techKey);
  v30[5] = v7;

  result = IndexPath.row.getter();
  if (result > 2)
  {
    __break(1u);
  }

  else
  {
    v9 = &v30[2 * result];
    v10 = *v9;
    v11 = v9[1];

    swift_arrayDestroy();
    sub_10003384C();
    v20 = v19;
    if (*(v19 + 16))
    {
      sub_10001F768(v10, v11);
      if (v12)
      {
      }
    }

    v20, v12, v13, v14, v15, v16, v17, v18;
    v21 = [objc_allocWithZone(UITableViewCell) initWithStyle:1 reuseIdentifier:0];
    UITableViewCell.defaultContentConfiguration()();
    UIListContentConfiguration.text.setter();
    UIListContentConfiguration.secondaryText.setter();
    v22 = objc_opt_self();
    v23 = [v22 labelColor];
    v24 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v24(v29, 0);
    v25 = [v22 secondaryLabelColor];
    v26 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v26(v29, 0);
    v29[3] = v1;
    v29[4] = &protocol witness table for UIListContentConfiguration;
    v27 = sub_100034738(v29);
    (*(v2 + 16))(v27, v4, v1);
    UITableViewCell.contentConfiguration.setter();
    (*(v2 + 8))(v4, v1);
    return v21;
  }

  return result;
}

uint64_t *sub_100034738(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_10003479C(uint64_t a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  [v2 setTitle:v4];

  v5 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v5];

  v6 = OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_restrictedCapabilities;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_restrictedCapabilities] = *(a1 + 200);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = String._bridgeToObjectiveC()();
  v61 = sub_1000350F8;
  v62 = v7;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_10001BE14;
  v60 = &unk_100072FD0;
  v9 = _Block_copy(&aBlock);
  v10 = objc_opt_self();
  v56 = [v10 actionWithTitle:v8 style:0 handler:v9];

  _Block_release(v9);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v61 = nullsub_1;
  v62 = v11;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_10001BE14;
  v60 = &unk_100072FF8;
  v13 = _Block_copy(&aBlock);
  v14 = [v10 actionWithTitle:v12 style:1 handler:v13];

  _Block_release(v13);

  v15 = *&v2[v6];
  v16 = 0xEF6873616C732E68;
  if ((v15 & 1) == 0)
  {
    v16 = 0xEA00000000006873;
  }

  if (v15 == 3)
  {
    v17 = 0xE600000000000000;
  }

  else
  {
    v17 = v16;
  }

  v18 = String._bridgeToObjectiveC()();
  v17, v19, v20, v21, v22, v23, v24, v25;
  v26 = [objc_opt_self() _systemImageNamed:v18];

  v27 = [objc_allocWithZone(UIImageView) initWithImage:v26];
  v28 = [objc_opt_self() systemBlueColor];
  [v27 setTintColor:v28];

  v29 = v27;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [objc_opt_self() configurationWithPointSize:72.0];
  [v29 setPreferredSymbolConfiguration:v30];

  v31 = [v2 contentView];
  [v31 addSubview:v29];

  v32 = [v2 contentView];
  v33 = [v32 mainContentGuide];

  v34 = objc_opt_self();
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10005C4D0;
  v36 = [v29 topAnchor];
  v37 = [v33 topAnchor];
  v38 = [v36 constraintGreaterThanOrEqualToAnchor:v37];

  *(v35 + 32) = v38;
  v39 = [v29 bottomAnchor];
  v40 = [v33 bottomAnchor];
  v41 = [v39 constraintLessThanOrEqualToAnchor:v40];

  *(v35 + 40) = v41;
  v42 = [v29 centerXAnchor];
  v43 = [v33 centerXAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v35 + 48) = v44;
  v45 = [v29 centerYAnchor];

  v46 = [v33 centerYAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v35 + 56) = v47;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v35, v49, v50, v51, v52, v53, v54, v55;
  [v34 activateConstraints:isa];
}

void sub_100034E30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      sub_1000405F8(v3, v4);
      swift_unknownObjectRelease();
    }
  }
}

__n128 sub_100035050@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_routingContext + 48);
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_routingContext + 32);
  v11 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_routingContext + 64);
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_routingContext + 16);
  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_routingContext);
  v9 = v4;
  sub_10000A4E8(&v8, v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000350C0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100035100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int sub_10003512C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE400000000000000;
  v3 = 0xEA00000000005041;
  if (v1 != 2)
  {
    v3 = 0xE900000000000065;
  }

  if (v1)
  {
    v2 = 0xE900000000000068;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

void sub_1000351F0(uint64_t a1)
{
  v2 = 0xE400000000000000;
  v3 = 0xEA00000000005041;
  if (*v1 != 2)
  {
    v3 = 0xE900000000000065;
  }

  if (*v1)
  {
    v2 = 0xE900000000000068;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_1000352A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE400000000000000;
  v3 = 0xEA00000000005041;
  if (v1 != 2)
  {
    v3 = 0xE900000000000065;
  }

  if (v1)
  {
    v2 = 0xE900000000000068;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_100035360@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100036B40(*a1);
  *a2 = result;
  return result;
}

void sub_100035390(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xEA00000000005041;
  v5 = 0x74666F5369666977;
  if (*v1 != 2)
  {
    v5 = 0x7261774169666977;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x746F6F7465756C62;
    v2 = 0xE900000000000068;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_100035410(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100036360();
  v4 = *&v3->router[8];
  v3, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
  v13 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  if (v4 < 2)
  {
    if (v13)
    {
      v49 = [v13 discoveryConfiguration];
      if (v49)
      {
        v50 = v49;
        v51 = [v49 associationIdentifier];

        if (v51)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v54._countAndFlagsBits = 43;
          v54._object = 0xE100000000000000;
          String.append(_:)(v54);
          v53, v55, v56, v57, v58, v59, v60, v61;
          v62 = v53;
          v63 = sub_100035628();
          if (v64)
          {
            v65 = v63;
          }

          else
          {
            v65 = 0;
          }

          if (v64)
          {
            v66 = v64;
          }

          else
          {
            v66 = 0xE000000000000000;
          }

          v67._countAndFlagsBits = v65;
          v67._object = v66;
          String.append(_:)(v67);
          v66, v68, v69, v70, v71, v72, v73, v74;
          v48 = v62;
          goto LABEL_18;
        }

        goto LABEL_24;
      }

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (!v13)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = [v13 discoveryConfiguration];
  if (!v14)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = v14;
  v16 = [v14 associationIdentifier];

  if (!v16)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v75 = v18;

  v19._countAndFlagsBits = 43;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v18, v20, v21, v22, v23, v24, v25, v26;
  v27 = *(v2 + v12);
  if (!v27)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = [v27 identifier];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);
    v75, v34, v35, v36, v37, v38, v39, v40;
    v48 = v32;
LABEL_18:
    v48, v41, v42, v43, v44, v45, v46, v47;
    return;
  }

LABEL_26:
  __break(1u);
}

void *sub_100035628()
{
  v1 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = [result bluetoothOTAName];
  if (v3)
  {
    goto LABEL_7;
  }

  result = *(v0 + v1);
  if (!result)
  {
    goto LABEL_11;
  }

  v3 = [result SSID];
  if (v3)
  {
    goto LABEL_7;
  }

  result = *(v0 + v1);
  if (result)
  {
    v3 = [result wifiAwareOTAName];
    if (!v3)
    {
      return 0;
    }

LABEL_7:
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1000356E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = [v1 appAccessInfoMap];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_100036BF4();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_appBundleID + 8);
  if (!v12)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (*(v4 + 16) && (v13 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_appBundleID), , v14 = sub_10001F768(v13, v12), v16 = v15, v12, v15, v17, v18, v19, v20, v21, v22, (v16 & 1) != 0))
  {
    v23 = *(*(v4 + 56) + 8 * v14);
    v4, v24, v25, v26, v27, v28, v29, v30;
    [v23 state];
  }

  else
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
  }
}

_TtC16AccessorySetupUI17ASUIServerManager *sub_1000357FC()
{
  v1 = sub_100009894(&qword_10007F2C0, &qword_10005C5C0);
  v2 = __chkstk_darwin(v1 - 8);
  v74 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v75 = (&v74 - v4);
  v12 = sub_100036194();
  v13 = *&v12->router[8];
  systemMonitor = v12->systemMonitor;
  while (1)
  {
    if (!v13)
    {
      v12, v5, v6, v7, v8, v9, v10, v11;
LABEL_15:
      v75 = _swiftEmptyArrayStorage;
      goto LABEL_19;
    }

    if (*systemMonitor > 1u)
    {
      if (*systemMonitor == 2)
      {
        v15 = 0xEA00000000005041;
      }

      else
      {
        v15 = 0xE900000000000065;
      }

      goto LABEL_5;
    }

    if (*systemMonitor)
    {
      break;
    }

    v15 = 0xE400000000000000;
LABEL_5:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v15, v17, v18, v19, v20, v21, v22, v23;
    ++systemMonitor;
    --v13;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  v12, v5, v6, v7, v8, v9, v10, v11;
  v12 = 0xE900000000000068;
LABEL_12:
  v12, v5, v6, v7, v8, v9, v10, v11;
  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  if (!result)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  v25 = [(ASUIServerManager *)result bluetoothIdentifier];
  if (v25)
  {
    v26 = v75;
    v27 = v25;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
    sub_100036B8C(v26);
    goto LABEL_15;
  }

  v29 = type metadata accessor for UUID();
  v30 = v75;
  (*(*(v29 - 8) + 56))(v75, 1, 1, v29);
  sub_100036B8C(v30);
  v35 = sub_10001F674(0, 1, 1, _swiftEmptyArrayStorage, v31, v32, v33, v34);
  v41 = *&v35->router[8];
  v40 = *&v35->router[16];
  if (v41 >= v40 >> 1)
  {
    v35 = sub_10001F674((v40 > 1), v41 + 1, 1, v35, v36, v37, v38, v39);
  }

  *&v35->router[8] = v41 + 1;
  v75 = v35;
  v35->systemMonitor[v41] = 1;
LABEL_19:
  v49 = sub_100036194();
  v50 = *&v49->router[8];
  v51 = v49->systemMonitor;
  while (2)
  {
    if (!v50)
    {
      v49, v42, v43, v44, v45, v46, v47, v48;
      return v75;
    }

    if (*v51 <= 1u)
    {
      if (*v51)
      {
        v52 = 0xE900000000000068;
      }

      else
      {
        v52 = 0xE400000000000000;
      }

LABEL_23:
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v52, v54, v55, v56, v57, v58, v59, v60;
      ++v51;
      --v50;
      if (v53)
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  if (*v51 == 2)
  {
    v52 = 0xEA00000000005041;
    goto LABEL_23;
  }

  v49, v42, v43, v44, v45, v46, v47, v48;
  v49 = 0xE900000000000065;
LABEL_30:
  v49, v42, v43, v44, v45, v46, v47, v48;
  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  v61 = v75;
  if (!result)
  {
    goto LABEL_40;
  }

  v62 = [(ASUIServerManager *)result wifiAwareDevicePairingID];
  if (v62)
  {
    v63 = v74;
    v64 = v62;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = type metadata accessor for UUID();
    (*(*(v65 - 8) + 56))(v63, 0, 1, v65);
    sub_100036B8C(v63);
  }

  else
  {
    v66 = type metadata accessor for UUID();
    v67 = v74;
    (*(*(v66 - 8) + 56))(v74, 1, 1, v66);
    sub_100036B8C(v67);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_10001F674(0, *&v61->router[8] + 1, 1, v61, v68, v69, v70, v71);
    }

    v73 = *&v61->router[8];
    v72 = *&v61->router[16];
    if (v73 >= v72 >> 1)
    {
      v61 = sub_10001F674((v72 > 1), v73 + 1, 1, v61, v68, v69, v70, v71);
    }

    *&v61->router[8] = v73 + 1;
    v61->systemMonitor[v73] = 3;
  }

  return v61;
}

_TtC16AccessorySetupUI17ASUIServerManager *sub_100035CC8()
{
  v1 = sub_100009894(&qword_10007F2C0, &qword_10005C5C0);
  v2 = __chkstk_darwin(v1 - 8);
  v74 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v75 = (&v74 - v4);
  v12 = sub_100036194();
  v13 = *&v12->router[8];
  systemMonitor = v12->systemMonitor;
  while (1)
  {
    if (!v13)
    {
      v12, v5, v6, v7, v8, v9, v10, v11;
LABEL_18:
      v75 = _swiftEmptyArrayStorage;
      goto LABEL_19;
    }

    if (*systemMonitor > 1u)
    {
      if (*systemMonitor == 2)
      {
        v15 = 0xEA00000000005041;
      }

      else
      {
        v15 = 0xE900000000000065;
      }

      goto LABEL_5;
    }

    if (*systemMonitor)
    {
      break;
    }

    v15 = 0xE400000000000000;
LABEL_5:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v15, v17, v18, v19, v20, v21, v22, v23;
    ++systemMonitor;
    --v13;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  v12, v5, v6, v7, v8, v9, v10, v11;
  v12 = 0xE900000000000068;
LABEL_12:
  v12, v5, v6, v7, v8, v9, v10, v11;
  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  if (!result)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  v25 = [(ASUIServerManager *)result bluetoothIdentifier];
  if (!v25)
  {
    v40 = type metadata accessor for UUID();
    v41 = v75;
    (*(*(v40 - 8) + 56))(v75, 1, 1, v40);
    sub_100036B8C(v41);
    goto LABEL_18;
  }

  v26 = v75;
  v27 = v25;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
  sub_100036B8C(v26);
  v33 = sub_10001F674(0, 1, 1, _swiftEmptyArrayStorage, v29, v30, v31, v32);
  v39 = *&v33->router[8];
  v38 = *&v33->router[16];
  if (v39 >= v38 >> 1)
  {
    v33 = sub_10001F674((v38 > 1), v39 + 1, 1, v33, v34, v35, v36, v37);
  }

  *&v33->router[8] = v39 + 1;
  v75 = v33;
  v33->systemMonitor[v39] = 1;
LABEL_19:
  v49 = sub_100036194();
  v50 = *&v49->router[8];
  v51 = v49->systemMonitor;
  while (2)
  {
    if (!v50)
    {
      v49, v42, v43, v44, v45, v46, v47, v48;
      return v75;
    }

    if (*v51 <= 1u)
    {
      if (*v51)
      {
        v52 = 0xE900000000000068;
      }

      else
      {
        v52 = 0xE400000000000000;
      }

LABEL_23:
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v52, v54, v55, v56, v57, v58, v59, v60;
      ++v51;
      --v50;
      if (v53)
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  if (*v51 == 2)
  {
    v52 = 0xEA00000000005041;
    goto LABEL_23;
  }

  v49, v42, v43, v44, v45, v46, v47, v48;
  v49 = 0xE900000000000065;
LABEL_30:
  v49, v42, v43, v44, v45, v46, v47, v48;
  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  v61 = v75;
  if (!result)
  {
    goto LABEL_40;
  }

  v62 = [(ASUIServerManager *)result wifiAwareDevicePairingID];
  if (v62)
  {
    v63 = v74;
    v64 = v62;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = type metadata accessor for UUID();
    (*(*(v65 - 8) + 56))(v63, 0, 1, v65);
    sub_100036B8C(v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_10001F674(0, *&v61->router[8] + 1, 1, v61, v66, v67, v68, v69);
    }

    v71 = *&v61->router[8];
    v70 = *&v61->router[16];
    if (v71 >= v70 >> 1)
    {
      v61 = sub_10001F674((v70 > 1), v71 + 1, 1, v61, v66, v67, v68, v69);
    }

    *&v61->router[8] = v71 + 1;
    v61->systemMonitor[v71] = 3;
  }

  else
  {
    v72 = type metadata accessor for UUID();
    v73 = v74;
    (*(*(v72 - 8) + 56))(v74, 1, 1, v72);
    sub_100036B8C(v73);
  }

  return v61;
}

_TtC16AccessorySetupUI17ASUIServerManager *sub_100036194()
{
  v1 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
  result = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  if (!result)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if ([(ASUIServerManager *)result requiresBluetoothSetup])
  {
    v11 = sub_10001F674(0, 1, 1, _swiftEmptyArrayStorage, v3, v4, v5, v6);
    v13 = *&v11->router[8];
    v12 = *&v11->router[16];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_10001F674((v12 > 1), v13 + 1, 1, v11, v7, v8, v9, v10);
    }

    *&v11->router[8] = v13 + 1;
    v11->systemMonitor[v13] = 1;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  result = *(v0 + v1);
  if (!result)
  {
    goto LABEL_23;
  }

  if ([(ASUIServerManager *)result requiresWiFiSoftAPSetup])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10001F674(0, *&v11->router[8] + 1, 1, v11, v14, v15, v16, v17);
    }

    v19 = *&v11->router[8];
    v18 = *&v11->router[16];
    if (v19 >= v18 >> 1)
    {
      v11 = sub_10001F674((v18 > 1), v19 + 1, 1, v11, v14, v15, v16, v17);
    }

    *&v11->router[8] = v19 + 1;
    v11->systemMonitor[v19] = 2;
  }

  result = *(v0 + v1);
  if (!result)
  {
    goto LABEL_24;
  }

  if ([(ASUIServerManager *)result requiresWiFiAwareSetup])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10001F674(0, *&v11->router[8] + 1, 1, v11, v20, v21, v22, v23);
    }

    v25 = *&v11->router[8];
    v24 = *&v11->router[16];
    if (v25 >= v24 >> 1)
    {
      v11 = sub_10001F674((v24 > 1), v25 + 1, 1, v11, v20, v21, v22, v23);
    }

    *&v11->router[8] = v25 + 1;
    v11->systemMonitor[v25] = 3;
  }

  return v11;
}

_TtC16AccessorySetupUI17ASUIServerManager *sub_100036360()
{
  v1 = sub_100036194();
  v9 = v1;
  v10 = *&v1->router[8];
  if (v10)
  {
    v11 = 0;
    systemMonitor = v1->systemMonitor;
    while (1)
    {
      if (v11 >= *&v9->router[8])
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (systemMonitor[v11] > 1u)
      {
        if (systemMonitor[v11] != 3)
        {
          0xEA00000000005041, v2, v3, v4, v5, v6, v7, v8;
LABEL_15:
          v0 = (v11 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_16;
        }

        v0 = 0xE900000000000065;
      }

      else if (systemMonitor[v11])
      {
        v0 = 0xE900000000000068;
      }

      else
      {
        v0 = 0xE400000000000000;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v0, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        goto LABEL_15;
      }

      if (v10 == ++v11)
      {
        v0 = *&v9->router[8];
        v11 = v0;
        goto LABEL_37;
      }
    }
  }

  v0 = 0;
  v11 = 0;
LABEL_37:
  while (__OFADD__(v0, v11 - v0))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    v9 = sub_100021604(v9, v2, v3, v4, v5, v6, v7, v8);
LABEL_16:
    v21 = *&v9->router[8];
    if (v21 - 1 != v11)
    {
      v22 = (v11 + 33);
      v23 = v9->systemMonitor;
      while (1)
      {
        v27 = v22 - 32;
        if ((v22 - 32) >= v21)
        {
          goto LABEL_46;
        }

        if (v22[v9] > 1u)
        {
          if (v22[v9] == 2)
          {
            0xEA00000000005041, v2, v3, v4, v5, v6, v7, v8;
            goto LABEL_20;
          }

          v0 = 0xE900000000000065;
        }

        else if (v22[v9])
        {
          v0 = 0xE900000000000068;
        }

        else
        {
          v0 = 0xE400000000000000;
        }

        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v0, v29, v30, v31, v32, v33, v34, v35;
        if ((v28 & 1) == 0)
        {
          if (v27 != v11)
          {
            if (v11 < 0)
            {
              goto LABEL_47;
            }

            v36 = *&v9->router[8];
            if (v11 >= v36)
            {
              goto LABEL_48;
            }

            if (v27 >= v36)
            {
              __break(1u);
LABEL_35:
              v0 = (v25 - 32);
              if ((v25 - 32) < v11)
              {
                goto LABEL_49;
              }

              if (v11 < 0)
              {
                goto LABEL_50;
              }

              goto LABEL_37;
            }

            v24 = v23[v11];
            v23[v11] = v22[v9];
            v22[v9] = v24;
          }

          ++v11;
        }

LABEL_20:
        v21 = *&v9->router[8];
        v25 = v22 + 1;
        v26 = v22 - 31;
        ++v22;
        if (v26 == v21)
        {
          goto LABEL_35;
        }
      }
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v11 > *&v9->router[16] >> 1)
  {
    if (v0 <= v11)
    {
      v42 = v11;
    }

    else
    {
      v42 = v0;
    }

    v9 = sub_10001F674(isUniquelyReferenced_nonNull_native, v42, 1, v9, v38, v39, v40, v41);
  }

  sub_100021884(v11, v0, 0);
  return v9;
}

unint64_t sub_1000366A0()
{
  v1 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  0xE000000000000000, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName);
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8);
  }

  v11._countAndFlagsBits = v10;
  v11._object = v1;
  String.append(_:)(v11);
  v1, v12, v13, v14, v15, v16, v17, v18;
  v19._countAndFlagsBits = 0x6369766544414420;
  v19._object = 0xEB00000000203A65;
  String.append(_:)(v19);
  v20 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
  sub_100009894(&qword_10007FD68, &unk_10005CF00);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  object = v21._object;
  String.append(_:)(v21);
  object, v23, v24, v25, v26, v27, v28, v29;
  return 0xD00000000000001ALL;
}

id sub_1000367E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ASUIDevice();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for ASUIDeviceTechnology(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASUIDeviceTechnology(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100036A10()
{
  result = qword_10007FD60;
  if (!qword_10007FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FD60);
  }

  return result;
}

id sub_100036A64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_allowsRename] = 0;
  v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_finishSetupInApp] = 0;
  v7 = &v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  *v7 = 0;
  v7[1] = 0;
  v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_needsBluetoothSetup] = 0;
  v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_supportsHID] = 0;
  v8 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice] = 0;
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologiesPendingSetup] = _swiftEmptyArrayStorage;
  v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] = 0;
  v9 = &v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_appBundleID];
  *v9 = 0;
  v9[1] = 0;
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image] = 0;
  *v7 = a1;
  v7[1] = a2;
  *&v5[v8] = a3;
  *v9 = a4;
  v9[1] = a5;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for ASUIDevice();
  v10 = a3;
  return objc_msgSendSuper2(&v12, "init");
}

unint64_t sub_100036B40(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000711E8, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100036B8C(uint64_t a1)
{
  v2 = sub_100009894(&qword_10007F2C0, &qword_10005C5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100036BF4()
{
  result = qword_10007F100;
  if (!qword_10007F100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007F100);
  }

  return result;
}

void sub_100036C40()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v8[4] = sub_100037154;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10001BE14;
  v8[3] = &unk_100073140;
  v5 = _Block_copy(v8);
  v6 = [objc_opt_self() actionWithTitle:v4 style:1 handler:v5];

  _Block_release(v5);

  v7 = [v0 addAction:v6];
}

void sub_100036DE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100036E34();
  }
}

char *sub_100036E34()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIAppScanErrorViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000427B4(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_100037098@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIAppScanErrorViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003711C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10003715C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100037174(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setTitle:v3];

  v4 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v4];

  v12 = *(a1 + 120);
  if (!v12)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (*(v12 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) > 1u)
  {
    if (*(v12 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) == 2)
    {
      v13 = 0xEA00000000005041;
    }

    else
    {
      v13 = 0xE900000000000065;
    }
  }

  else
  {
    if (*(v12 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup))
    {
      0xE900000000000068, v5, v6, v7, v8, v9, v10, v11;
      goto LABEL_18;
    }

    v13 = 0xE400000000000000;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v13, v15, v16, v17, v18, v19, v20, v21;
  if ((v14 & 1) == 0)
  {
    if (*(v12 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) > 1u)
    {
      if (*(v12 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup) != 2)
      {
        0xE900000000000065, v22, v23, v24, v25, v26, v27, v28;
        goto LABEL_18;
      }

      v29 = 0xEA00000000005041;
    }

    else
    {
      v29 = 0xE900000000000068;
      if (!*(v12 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup))
      {
        v29 = 0xE400000000000000;
      }
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v29, v31, v32, v33, v34, v35, v36, v37;
    if ((v30 & 1) == 0)
    {
      v38 = 0;
      p_ivars = (&ASUIPresenter + 48);
      goto LABEL_19;
    }
  }

LABEL_18:
  v40 = String._bridgeToObjectiveC()();
  p_ivars = &ASUIPresenter.ivars;
  v41 = [objc_opt_self() _systemImageNamed:v40];

  v38 = [objc_allocWithZone(UIImageView) initWithImage:v41];
  v42 = [objc_opt_self() systemBlueColor];
  [v38 setTintColor:v42];

  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  v43 = [objc_opt_self() configurationWithPointSize:40.0];
  [v38 setPreferredSymbolConfiguration:v43];

  v44 = v38;
  v45 = [v1 contentView];
  [v45 addSubview:v44];

LABEL_19:
  v46 = [objc_allocWithZone(UILabel) init];
  if (!*(a1 + 144))
  {
LABEL_29:
    __break(1u);
    return;
  }

  v47 = v46;
  v48 = String._bridgeToObjectiveC()();
  [v47 setText:v48];

  v49 = [objc_opt_self() monospacedSystemFontOfSize:48.0 weight:UIFontWeightMedium];
  [v47 setFont:v49];

  v50 = v47;
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  v51 = [v1 p_ivars[198]];
  [v51 addSubview:v50];

  v52 = [v1 p_ivars[198]];
  v103 = [v52 mainContentGuide];

  if (v38)
  {
    v102 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_10005CC90;
    v54 = v38;
    v55 = [v54 topAnchor];
    v56 = [v103 topAnchor];
    v57 = [v55 constraintGreaterThanOrEqualToAnchor:v56];

    *(v53 + 32) = v57;
    v58 = [v54 bottomAnchor];
    v59 = [v103 bottomAnchor];
    v60 = [v58 constraintLessThanOrEqualToAnchor:v59];

    *(v53 + 40) = v60;
    v61 = [v54 centerXAnchor];
    v62 = [v103 centerXAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    *(v53 + 48) = v63;
    v64 = [v50 topAnchor];
    v65 = [v54 bottomAnchor];

    v66 = [v64 constraintEqualToAnchor:v65 constant:28.0];
    *(v53 + 56) = v66;
    v67 = [v50 bottomAnchor];
    v68 = [v103 bottomAnchor];
    v69 = [v67 constraintEqualToAnchor:v68 constant:-32.0];

    *(v53 + 64) = v69;
    v70 = [v50 centerXAnchor];

    v71 = [v103 centerXAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    *(v53 + 72) = v72;
    sub_10000A5E8();
    v73.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v53, v74, v75, v76, v77, v78, v79, v80;
    [v102 activateConstraints:v73.super.isa];
  }

  else
  {
    v81 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_10005C4D0;
    v83 = [v50 topAnchor];
    v84 = [v103 topAnchor];
    if (qword_10007EC18 != -1)
    {
      swift_once();
    }

    v85 = [v83 constraintGreaterThanOrEqualToAnchor:v84 constant:*&qword_1000814D8];

    *(v82 + 32) = v85;
    v86 = [v50 bottomAnchor];
    v87 = [v103 bottomAnchor];
    v88 = [v86 constraintLessThanOrEqualToAnchor:v87 constant:-32.0];

    *(v82 + 40) = v88;
    v89 = [v50 centerXAnchor];
    v90 = [v103 centerXAnchor];
    v91 = [v89 constraintEqualToAnchor:v90];

    *(v82 + 48) = v91;
    v92 = [v50 centerYAnchor];

    v93 = [v103 centerYAnchor];
    v94 = [v92 constraintEqualToAnchor:v93];

    *(v82 + 56) = v94;
    sub_10000A5E8();
    v73.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v82, v95, v96, v97, v98, v99, v100, v101;
    [v81 activateConstraints:v73.super.isa];
  }
}

void sub_100037AE0(uint64_t a1, uint64_t a2)
{
  v19.receiver = v2;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  [v2 setDismissalType:1];
  v3 = &v2[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext];
  v4 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 48];
  v20[2] = *&v2[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 32];
  v20[3] = v4;
  v21 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 64];
  v5 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 16];
  v20[0] = *&v2[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext];
  v20[1] = v5;
  *v3 = 257;
  *(v3 + 24) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  sub_10000A634(v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_type] == 7 && (v7 = *(v3 + 3), v16 = *(v3 + 2), v17 = v7, v18 = *(v3 + 8), v8 = *(v3 + 1), v14 = *v3, v15 = v8, v8 != 1) && (v9 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession)) != 0)
    {
      v10 = *(&v15 + 1);
      v11 = v16;
      sub_10000A4E8(&v14, v13);
      v12 = v9;
      sub_10001B4D4(1, v10, v11);
      swift_unknownObjectRelease();
      sub_10000A634(&v14);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

__n128 sub_100037DC8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 48);
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 32);
  v11 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 64);
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext + 16);
  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_routingContext);
  v9 = v4;
  sub_10000A4E8(&v8, v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

id sub_100037F88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  exit(v4);
}

void sub_100038154()
{
  v1 = *(*&v0[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_device] + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image);
  if (v1)
  {
    v2 = *(*&v0[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_device] + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image);
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_defaultSymbolImage];
  }

  v3 = objc_allocWithZone(UIImageView);
  v4 = v1;
  v5 = [v3 initWithImage:v2];

  v6 = OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView;
  v7 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView] = v5;
  v8 = v5;

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *&v0[v6];
  if (!v9)
  {
    __break(1u);
    goto LABEL_26;
  }

  [v9 setContentMode:1];
  v10 = *&v0[v6];
  if (!v10)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = [v10 layer];
  [v11 setAllowsEdgeAntialiasing:1];

  v12 = *&v0[v6];
  if (!v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = [v12 layer];
  [v13 setShouldRasterize:1];

  v14 = *&v0[v6];
  if (!v14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = [v14 layer];
  v16 = [v0 traitCollection];
  [v16 displayScale];
  v18 = v17;

  [v15 setRasterizationScale:v18];
  v19 = objc_opt_self();
  v20 = [v19 configurationWithPointSize:4 weight:100.0];
  v21 = [objc_opt_self() systemBlueColor];
  v22 = [v19 configurationWithHierarchicalColor:v21];

  v23 = [v20 configurationByApplyingConfiguration:v22];
  v24 = *&v0[v6];
  if (!v24)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v24 setPreferredSymbolConfiguration:v23];
  if (!*&v0[v6])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v0 addSubview:?];
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10005C4D0;
  v26 = *&v0[v6];
  if (!v26)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = [v26 widthAnchor];
  v28 = *&v0[v6];
  if (!v28)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v29 = [v28 image];
  if (!v29)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = v29;
  [v29 size];
  v32 = v31;
  [v30 size];
  v34 = v33;

  v35 = 180.0;
  if (v32 / v34 <= 1.5)
  {
    v35 = v32 / v34 * 120.0;
  }

  v36 = [v27 constraintEqualToConstant:v35];

  *(v25 + 32) = v36;
  v37 = *&v0[v6];
  if (!v37)
  {
    goto LABEL_34;
  }

  v38 = [v37 heightAnchor];
  v39 = *&v0[v6];
  if (!v39)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v40 = [v39 image];
  if (!v40)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v41 = v40;
  [v40 size];
  v43 = v42;
  [v41 size];
  v45 = v44;

  v46 = 120.0;
  if (v43 / v45 > 1.5)
  {
    v46 = 180.0 / (v43 / v45);
  }

  v47 = [v38 constraintEqualToConstant:v46];

  *(v25 + 40) = v47;
  v48 = *&v0[v6];
  if (!v48)
  {
    goto LABEL_37;
  }

  v49 = [v48 centerXAnchor];
  v50 = [v0 centerXAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v25 + 48) = v51;
  v52 = *&v0[v6];
  if (!v52)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v53 = objc_opt_self();
  v54 = [v52 centerYAnchor];
  v55 = [v0 centerYAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v25 + 56) = v56;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v25, v57, v58, v59, v60, v61, v62, v63;
  [v53 activateConstraints:isa];
}

void sub_1000386E4(void *a1)
{
  [v1 bounds];
  [a1 convertRect:v1 fromCoordinateSpace:?];
  x = v23.origin.x;
  Width = CGRectGetWidth(v23);
  if (Width == 0.0)
  {
    return;
  }

  if (Width < 0.0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView;
  v6 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = Width;
  [v6 center];
  v9 = *&v1[v5];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v8;
  v11 = [v9 image];
  if (!v11)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  v13 = (x + v7 + x + v7) / (v7 + v7) + -1.0;
  [v11 size];
  v15 = v14;
  [v12 size];
  v17 = v16;

  v18 = 90.0;
  if (v15 / v17 <= 1.5)
  {
    v18 = v15 / v17 * 120.0 * 0.5;
  }

  CGAffineTransformMakeTranslation(&v22, -(v13 * (v10 - v18 + 40.0)), 0.0);
  v19 = *&v1[v5];
  if (!v19)
  {
    goto LABEL_18;
  }

  [v19 setTransform:&v22];
  v20 = *&v1[v5];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v21 = 1.0 - fabs(v13);
  if (v21 <= 0.3)
  {
    v21 = 0.3;
  }

  [v20 setAlpha:v21];
}

id sub_1000388D4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ASUIProductPageView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000389DC(void *a1)
{
  v3 = [a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    swift_beginAccess();
    v8 = v1[20];
    v9 = v1[21];
    v10 = v1[22];

    sub_100038BF8(v5, v7, v8, v9, v10);
    v12 = v11;

    if (!v12)
    {
      swift_beginAccess();
      v56 = a1;
      sub_100038CF0(a1, v5, v7, v62, v57, v58, v59, v60, v61);
      swift_endAccess();
LABEL_11:
      sub_100039044();
      return;
    }

    v13 = [v12 bluetoothAdvertisementData];
    if (v13)
    {
      v21 = v13;
      v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [a1 bluetoothAdvertisementData];
      if (v23)
      {
        v31 = v23;
        v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = *(v22 + 16);
        v22, v34, v35, v36, v37, v38, v39, v40;
        v41 = *(v32 + 16);
        v32, v42, v43, v44, v45, v46, v47, v48;
        if (v33 < v41)
        {
          swift_beginAccess();
          v49 = a1;
          sub_100038CF0(a1, v5, v7, v55, v50, v51, v52, v53, v54);
          swift_endAccess();
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        v22, v24, v25, v26, v27, v28, v29, v30;
      }
    }

    v7, v14, v15, v16, v17, v18, v19, v20;
    goto LABEL_10;
  }
}

void sub_100038BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 16);
  if (a3)
  {

    v11 = sub_10003A820(a1, a2, a4 + 32, v9, (a3 + 16), a3 + 32);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

LABEL_4:
      if (v11 < *(a5 + 16))
      {
        v14 = *(a5 + 8 * v11 + 32);
        return;
      }

      goto LABEL_16;
    }
  }

  else if (v9)
  {
    v11 = 0;
    for (i = (a4 + 40); ; i += 2)
    {
      v16 = *(i - 1) == a1 && *i == a2;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        return;
      }
    }

    goto LABEL_4;
  }
}

void sub_100038CF0(void *a1, const char *a2, _TtC16AccessorySetupUI17ASUIServerManager *a3, __n128 a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v11 = a2;
  v13 = *v9;
  v14 = v9[1];
  v15 = *(v14 + 16);
  if (*v9)
  {

    v16 = sub_10003A820(v11, a3, v14 + 32, v15, (v13 + 16), v13 + 32);
    v18 = v17;
    v15 = v19;

    if ((v18 & 1) == 0)
    {
      a3, a2, a3, a5, a6, a7, a8, a9;
      if (!a1)
      {
        goto LABEL_26;
      }

LABEL_20:
      v32 = v9[2];
      v30 = v9 + 2;
      v31 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v30 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_100039A80(v31);
        *v30 = v31;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v16 < *(v31 + 16))
      {
        v34 = v31 + 8 * v16;
        v35 = *(v34 + 32);
        *(v34 + 32) = a1;

        specialized ContiguousArray._endMutation()();
        return;
      }

      __break(1u);
      return;
    }
  }

  else if (v15)
  {
    v16 = 0;
    v20 = (v14 + 40);
    while (1)
    {
      a2 = *v20;
      v21 = *(v20 - 1) == v11 && a2 == a3;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v16;
      v20 += 2;
      if (v15 == v16)
      {
        v15 = 0;
        goto LABEL_14;
      }
    }

    a3, a2, a3, a5, a6, a7, a8, a9;
    if (!a1)
    {
      v15 = 0;
LABEL_26:
      sub_100039CA0(v16, v15);
      v36, v36, v37, v38, v39, v40, v41, v42;
      v29 = sub_100039E08(v16);
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_14:
  if (a1)
  {
    sub_100039B28(v11, a3, v15);
    a3, v22, v23, v24, v25, v26, v27, v28;
    v43 = a1;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v29 = v43;
LABEL_27:

    return;
  }

  a3, a2, a3, a5, a6, a7, a8, a9;
}

id sub_100038F14(void *a1)
{
  v2 = v1;
  v4 = sub_100038988(v30);
  if (*v5)
  {
    result = [a1 identifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    sub_10003A96C(v8, v10);
    v12 = v11;
    v10, v11, v13, v14, v15, v16, v17, v18;
    v12, v19, v20, v21, v22, v23, v24, v25;
    (v4)(v30, 0);
  }

  else
  {
    (v4)(v30, 0);
  }

  result = swift_beginAccess();
  v26 = v2[23];
  if (v26)
  {
    v27 = v2[28];
    if (v27)
    {
      v28 = v2[29];
      v29 = *(v26 + 16) != 0;

      v27(v29);
      return sub_100002E6C(v27, v28);
    }
  }

  return result;
}

void sub_100039044()
{
  v1 = v0[26];
  if (v1)
  {
    v2 = v0;
    v3 = v0[27];
    v78 = _swiftEmptyArrayStorage;
    v74 = v3;

    swift_beginAccess();
    if (v0[25] >= 1)
    {
      while (1)
      {
        v4 = v2[16];
        if (!*(v4 + 16))
        {
          goto LABEL_26;
        }

        v5 = v2[15];
        if (!*(v5 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v8 = *(v5 + 32);
        v7 = v5 + 32;
        v6 = v8;
        v10 = (v7 + 8);
        v9 = *(v7 + 8);
        v11 = *(v4 + 32);
        swift_beginAccess();
        v12 = v2[14];
        v13 = *(v7 - 16);
        if (!v12)
        {
          break;
        }

        swift_bridgeObjectRetain_n();
        v14 = v11;

        v15 = sub_10003A820(v6, v9, v7, v13, (v12 + 16), v12 + 32);
        v17 = v16;
        v19 = v18;

        if ((v17 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_19:
        swift_endAccess();
        swift_beginAccess();

        v30 = v11;
        sub_100038CF0(v11, v6, v9, v36, v31, v32, v33, v34, v35);
        swift_endAccess();
        v37 = v2[25];
        v38 = __OFSUB__(v37, 1);
        v39 = v37 - 1;
        if (v38)
        {
          goto LABEL_33;
        }

        v2[25] = v39;
        v47 = sub_100038988(v75);
        if (*v40)
        {
          sub_10003B260(v76, v6, v9);
          v48 = v77;
        }

        else
        {
          v48 = v9;
        }

        v48, v40, v41, v42, v43, v44, v45, v46;
        (v47)(v75, 0);
        v49 = v30;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9, v50, v51, v52, v53, v54, v55, v56;
        if (v2[25] <= 0)
        {
          goto LABEL_26;
        }
      }

      if (!v13)
      {
LABEL_16:
        swift_bridgeObjectRetain_n();
        v21 = v11;
        goto LABEL_19;
      }

      v15 = 0;
      while (1)
      {
        v20 = *(v10 - 1) == v6 && *v10 == v9;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v15;
        v10 += 2;
        if (v13 == v15)
        {
          goto LABEL_16;
        }
      }

      swift_bridgeObjectRetain_n();
      v22 = v11;
      v19 = 0;
LABEL_18:
      sub_100039CA0(v15, v19);
      v23, v23, v24, v25, v26, v27, v28, v29;

      goto LABEL_19;
    }

LABEL_26:
    swift_beginAccess();
    v57 = v2[17];
    v58 = v2[18];
    v59 = v2[19];

    sub_100039428(v57, v58, v59);
    v2[17] = 0;
    v2[18] = _swiftEmptyArrayStorage;
    v2[19] = _swiftEmptyArrayStorage;

    v60 = v78;
    v1(v78);
    v60, v61, v62, v63, v64, v65, v66, v67;
    swift_beginAccess();
    v68 = v2[23];
    if (v68 && (v69 = v2[28]) != 0)
    {
      v70 = v2[29];
      v71 = *(v68 + 16) != 0;

      v69(v71);
      sub_100002E6C(v1, v74);
      v72 = v69;
      v73 = v70;
    }

    else
    {
      v72 = v1;
      v73 = v74;
    }

    sub_100002E6C(v72, v73);
  }
}

void sub_100039428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(a3 + 16);
  if (!(*v3 >> 62))
  {
    if (!__OFADD__(*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10), v9))
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__OFADD__(_CocoaArrayWrapper.endIndex.getter(), v9))
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_100020AD8();
  v4 = *v3;
  v5 = *v3 & 0xFFFFFFFFFFFFFF8;
  v10 = *(v5 + 0x10);
  v11 = (*(v5 + 0x18) >> 1) - v10;
  v12 = sub_10003B6B0(&v30, v5 + 8 * v10 + 32, v11, a1, a2, a3);
  if (v12 < v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v12 >= 1)
  {
    v13 = *(v5 + 16);
    v14 = __OFADD__(v13, v12);
    v15 = v13 + v12;
    if (v14)
    {
      __break(1u);
LABEL_26:
      *(v29 + 16) = v9;
      goto LABEL_8;
    }

    *(v5 + 16) = v15;
  }

  if (v12 != v11)
  {
LABEL_8:

    *v3 = v4;
    return;
  }

LABEL_13:
  v16 = v31;
  v17 = *(v31 + 16);
  if (v32 == v17)
  {
    goto LABEL_8;
  }

  if (v32 < v17)
  {
    v18 = *(v5 + 16);
    v19 = v32 + 1;
    v20 = *(v31 + 32 + 8 * v32);
    v21 = v20;
    v22 = v20;
    while (1)
    {
LABEL_17:
      if (v18 + 1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = v22;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v28;
      }

      v4 = *v3;
      v23 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      v24 = v23 - v18;
      if (v23 > v18)
      {
        break;
      }

      *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v18;
    }

    v29 = *v3 & 0xFFFFFFFFFFFFFF8;
    v25 = (v29 + 8 * v18 + 32);
    v9 = v18 + 1;
    while (1)
    {
      *v25 = v22;
      v26 = *(v16 + 16);
      if (v19 == v26)
      {
        goto LABEL_26;
      }

      if (v19 >= v26)
      {
        __break(1u);
        break;
      }

      v27 = v19 + 1;
      v22 = *(v16 + 32 + 8 * v19);
      ++v25;
      ++v9;
      ++v19;
      if (!--v24)
      {
        v18 = v23;
        v19 = v27;
        *(v29 + 16) = v23;
        goto LABEL_17;
      }
    }
  }

  __break(1u);
}

uint64_t sub_100039630()
{

  *(v0 + 184), v1, v2, v3, v4, v5, v6, v7;
  sub_100002E6C(*(v0 + 208), *(v0 + 216));
  sub_100002E6C(*(v0 + 224), *(v0 + 232));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100039700()
{
  swift_defaultActor_initialize();
  v1 = sub_100039A94(_swiftEmptyArrayStorage);
  *(v0 + 112) = 0;
  *(v0 + 120) = _swiftEmptyArrayStorage;
  *(v0 + 128) = v1;
  v2 = sub_100039A94(_swiftEmptyArrayStorage);
  *(v0 + 136) = 0;
  *(v0 + 144) = _swiftEmptyArrayStorage;
  *(v0 + 152) = v2;
  v3 = sub_100039A94(_swiftEmptyArrayStorage);
  *(v0 + 160) = 0;
  *(v0 + 168) = _swiftEmptyArrayStorage;
  *(v0 + 176) = v3;
  *(v0 + 184) = xmmword_10005CFB0;
  *(v0 + 200) = 3;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  return v0;
}

void *sub_100039788(uint64_t a1, uint64_t a2)
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

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_100039810(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100039850(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100039830(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003995C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100039850(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009894(&qword_10007F2A8, &qword_10005D050);
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

char *sub_10003995C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009894(&qword_1000800A0, &qword_10005D058);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100039A94(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v2 = a1;
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:
    v2, v4, v5, v6, v7, v8, v9, v10;
    return _swiftEmptyArrayStorage;
  }

  v11 = v3;
  v12 = sub_100039788(v3, 0);
  v13 = sub_10003B530((v12 + 4), v11, v2);
  v2 = v14;
  v13, v15, v14, v16, v17, v18, v19, v20;
  result = v12;
  if (v2 != v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_100039B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100039810(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_100039810((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  if (*v4)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v12)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v15 = *v4;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v16 = _HashTable.copy()();

        *v4 = v16;
        v15 = v16;
      }

      if (v15)
      {
        _HashTable.UnsafeHandle.subscript.setter();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return;
  }

  sub_100039F1C();
}

void sub_100039CA0(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_100039E94(a1);
    return;
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_16:
    sub_100039E94(a1);
    sub_100039F1C();
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = _HashTable.copy()();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    sub_100039FBC(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_10003A1B4(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_100039E08(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_100039A80(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    specialized ContiguousArray._endMutation()();
    return v8;
  }

  return result;
}

char *sub_100039E94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100039A6C(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_100039F1C()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = static _HashTable.scale(forCapacity:)();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_10003A620(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
}

void sub_100039FBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v23 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v23)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    while (1)
    {
      v8 = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(a4 + 8);
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 16 * v8 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v12 = Hasher._finalize()();
      v11, v13, v14, v15, v16, v17, v18, v19;
      v20 = 1 << *a2;
      if (__OFSUB__(v20, 1))
      {
        goto LABEL_19;
      }

      v21 = (v20 - 1) & v12;
      if (v6 >= v7)
      {
        break;
      }

      if (v21 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      _HashTable.BucketIterator.currentValue.getter();
      v6 = a1;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_3:
      _HashTable.BucketIterator.advance()();
    }

    if (v21 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v21)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  _HashTable.UnsafeHandle.subscript.setter();
}

void sub_10003A1B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v10 = *(a3 + 16);
    if (a1 < (v10 - v6) / 2)
    {
      if (static _HashTable.maximumCapacity(forScale:)() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v10 < a1)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v11 = a3;

        if (a1)
        {
          v12 = 0;
          while (1)
          {
            v13 = *(v11 + 32 + 16 * v12 + 8);
            Hasher.init(_seed:)();

            String.hash(into:)();
            Hasher._finalize()();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v14 = _HashTable.BucketIterator.currentValue.getter();
                if ((v15 & 1) == 0 && v14 == v12)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFADD__(v12, v6))
            {
              goto LABEL_55;
            }

            ++v12;
            _HashTable.BucketIterator.currentValue.setter();
            v13, v16, v17, v18, v19, v20, v21, v22;
            if (v12 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v28 = _HashTable.BucketIterator.currentValue.getter();
      if ((v29 & 1) != 0 || v28 >= a1)
      {
LABEL_33:
        _HashTable.BucketIterator.advance()();
LABEL_18:
        v23 = a4[1];
        if (__OFSUB__(v23 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v24 = 1 << *a4;
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (v25)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v27 = (v26 & (((v23 >> 6) - v6) >> 63)) + (v23 >> 6) - v6;
        if (v27 < v26)
        {
          v26 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v27 - v26) << 6);
        return;
      }

      if (!__OFADD__(v28, v6))
      {
        _HashTable.BucketIterator.currentValue.setter();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v30 = _HashTable.BucketIterator.currentValue.getter();
      if ((v31 & 1) == 0 && v30 >= v5)
      {
        if (__OFSUB__(v30, v6))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    v5 = a2;
    if (__OFSUB__(v10, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((v10 - a2) >= static _HashTable.maximumCapacity(forScale:)() / 3)
    {
      goto LABEL_39;
    }

    if (v10 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return;
    }

    if (v10 != v5)
    {
      do
      {
        v39 = *(a3 + 32 + 16 * v5 + 8);
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v40 = _HashTable.BucketIterator.currentValue.getter();
            if ((v41 & 1) == 0 && v40 == v5)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        _HashTable.BucketIterator.currentValue.setter();
        v39, v32, v33, v34, v35, v36, v37, v38;
      }

      while (++v5 != v10);
    }
  }
}

uint64_t sub_10003A620(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = _HashTable.init(scale:reservedScale:)();
    sub_10003A6A0(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

Swift::Int sub_10003A6F0(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v16 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(v16 + 16 * v6 + 8);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        v7, v9, v10, v11, v12, v13, v14, v15;
        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_10003A820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_10003A96C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10003AAA8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10003B09C(v8);
  *v2 = v16;
  return v12;
}

void sub_10003AAA8()
{
  v1 = v0;
  sub_100009894(&qword_100080098, &qword_10005D048);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_10003AC04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100009894(&qword_100080098, &qword_10005D048);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
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
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_10003AE3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100009894(&qword_100080098, &qword_10005D048);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
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
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10003B09C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v11 = Hasher._finalize()();
        v10, v12, v13, v14, v15, v16, v17, v18;
        v19 = v11 & v7;
        if (v2 >= v9)
        {
          if (v19 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v19)
        {
LABEL_11:
          v20 = *(v3 + 48);
          v21 = (v20 + 16 * v2);
          v22 = (v20 + 16 * v6);
          if (v2 != v6 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }
}

uint64_t sub_10003B260(void *a1, uint64_t a2, _TtC16AccessorySetupUI17ASUIServerManager *a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *v18 == a2 && v19 == a3;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v19, v9, v10, v11, v12, v13, v14;
    v23 = (*(v7 + 48) + 16 * v16);
    v24 = v23[1];
    *a1 = *v23;
    a1[1] = v24;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;

    sub_10003B3B0(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_10003B3B0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10003AE3C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10003AAA8();
      goto LABEL_16;
    }

    sub_10003AC04(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10003B530(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10003B7E0();
          for (i = 0; i != v6; ++i)
          {
            sub_100009894(&qword_1000800A8, &unk_10005D060);
            v9 = sub_10002157C(v13, i, a3);
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
        sub_10003B794();
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

void *sub_10003B6B0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a6 + 16);
    if (v6)
    {
      v8 = a4;
      v9 = result;
      v10 = a5;
      v11 = 0;
      v12 = a6;
      v13 = a6 + 32;
      v14 = a3;
      v15 = a3 - 1;
      while (1)
      {
        v16 = *(v13 + 8 * v11);
        *(a2 + 8 * v11) = v16;
        if (v15 == v11)
        {
          break;
        }

        v17 = v16;
        if (v6 == ++v11)
        {
          a3 = v6;
          a6 = v12;
          a5 = v10;
          result = v9;
          a4 = v8;
          goto LABEL_12;
        }
      }

      v18 = v16;
      a6 = v12;
      a5 = v10;
      result = v9;
      a4 = v8;
      a3 = v14;
    }

    else
    {
      a3 = 0;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_10003B794()
{
  result = qword_100080420;
  if (!qword_100080420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100080420);
  }

  return result;
}

unint64_t sub_10003B7E0()
{
  result = qword_1000800B0;
  if (!qword_1000800B0)
  {
    sub_10001F924(&qword_1000800A8, &unk_10005D060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000800B0);
  }

  return result;
}

double sub_10003B844(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_10003B898()
{
  v3 = v0;
  p_ivars = &ASUIPresenter.ivars;
  v5 = [(SEL *)v0 bottomTray];
  v6 = [v5 actionButtons];

  sub_100009B48(0, &unk_1000801E8, PRXButton_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_55:
    v7, v8, v9, v10, v11, v12, v13, v14;
    __break(1u);
    goto LABEL_56;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_55;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_56:
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v15 = *(v7 + 32);
LABEL_6:
  v23 = v15;
  v7, v16, v17, v18, v19, v20, v21, v22;
  v24 = String._bridgeToObjectiveC()();
  [v23 setTitle:v24 forState:0];

  v25 = [(SEL *)v3 bottomTray];
  v26 = [v25 actionButtons];

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_58:
    v7, v27, v28, v29, v30, v31, v32, v33;
    __break(1u);
    goto LABEL_59;
  }

LABEL_8:
  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_60:
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v34 = *(v7 + 32);
LABEL_11:
  v42 = v34;
  v7, v35, v36, v37, v38, v39, v40, v41;
  [v42 setEnabled:0];

  v43 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v7 = objc_opt_self();
  v44 = [v7 systemGrayColor];
  [v43 setColor:v44];

  v168 = v43;
  [v168 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v168 startAnimating];
  v45 = [(SEL *)v3 bottomTray];
  v46 = [v45 actionButtons];

  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_62:
    v26, v47, v48, v49, v50, v51, v52, v53;
    __break(1u);
    goto LABEL_63;
  }

LABEL_13:
  if ((v26 & 0xC000000000000001) != 0)
  {
LABEL_64:
    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v54 = *(v26 + 32);
LABEL_16:
  v62 = v54;
  v26, v55, v56, v57, v58, v59, v60, v61;
  [v62 addSubview:v168];

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10005C420;
  v1 = &ASUIPresenter.ivars;
  v46 = [v168 centerXAnchor];
  v63 = [(SEL *)v3 bottomTray];
  v64 = [v63 actionButtons];

  p_ivars = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!(p_ivars >> 62))
  {
    if (*((p_ivars & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_66:
    p_ivars, v65, v66, v67, v68, v69, v70, v71;
    __break(1u);
    goto LABEL_67;
  }

LABEL_18:
  if ((p_ivars & 0xC000000000000001) != 0)
  {
LABEL_68:
    v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_21;
  }

  if (!*((p_ivars & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v72 = *(p_ivars + 32);
LABEL_21:
  v80 = v72;
  p_ivars, v73, v74, v75, v76, v77, v78, v79;
  v81 = [v80 v1[175]];

  v82 = [v46 constraintEqualToAnchor:v81];
  *(v26 + 32) = v82;
  v2 = &ASUIPresenter.ivars;
  v46 = [v168 centerYAnchor];

  v83 = [(SEL *)v3 bottomTray];
  v84 = [v83 actionButtons];

  p_ivars = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!(p_ivars >> 62))
  {
    v92 = *((p_ivars & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v92)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

  v92 = _CocoaArrayWrapper.endIndex.getter();
  if (!v92)
  {
LABEL_70:
    p_ivars, v85, v86, v87, v88, v89, v90, v91;
    __break(1u);
    goto LABEL_71;
  }

LABEL_23:
  if ((p_ivars & 0xC000000000000001) != 0)
  {
LABEL_72:
    v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_26;
  }

  if (!*((p_ivars & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_75;
  }

  v93 = *(p_ivars + 32);
LABEL_26:
  v101 = v93;
  p_ivars, v94, v95, v96, v97, v98, v99, v100;
  v102 = objc_opt_self();
  v103 = [v101 v2[320]];

  v104 = [v46 constraintEqualToAnchor:v103];
  *(v26 + 40) = v104;
  sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v26, v106, v107, v108, v109, v110, v111, v112;
  [v102 activateConstraints:isa];

  p_ivars = &ASUIPresenter.ivars;
  v113 = v3;
  v114 = [(SEL *)v3 bottomTray];
  v3 = &ASUIPresenter.ivars;
  v115 = [v114 actionButtons];

  v116 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v124 = v116;
  if (v116 >> 62)
  {
    v166 = v116;
    v125 = _CocoaArrayWrapper.endIndex.getter();
    v124 = v166;
  }

  else
  {
    v125 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v124, v117, v118, v119, v120, v121, v122, v123;
  if (v125 >= 2)
  {
    v26 = [(SEL *)v113 bottomTray];
    v126 = [(SEL *)v113 bottomTray];
    v127 = [v126 actionButtons];

    v128 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v128;
    if (!(v128 >> 62))
    {
      v136 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_31;
    }

LABEL_75:
    v167 = v92;
    v136 = _CocoaArrayWrapper.endIndex.getter();
    v92 = v167;
LABEL_31:
    v92, v129, v130, v131, v132, v133, v134, v135;
    if (v136 < 1)
    {
      __break(1u);
    }

    else
    {
      v137 = [v26 v3[401]];

      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      p_ivars = v26 >> 62;
      if (!(v26 >> 62))
      {
        v138 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v139 = &ASUIPresenter.ivars;
        if (!v138)
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        if (v138 >= v136)
        {
LABEL_35:
          if ((v26 & 0xC000000000000001) != 0)
          {

            if (v136 != 1)
            {
              v147 = 1;
              do
              {
                v148 = v147 + 1;
                _ArrayBuffer._typeCheckSlowPath(_:)(v147);
                v147 = v148;
              }

              while (v136 != v148);
            }
          }

          else
          {
          }

          v26, v140, v141, v142, v143, v144, v145, v146;
          if (p_ivars)
          {
            _CocoaArrayWrapper.subscript.getter();
            v149 = v153;
            v150 = v154;
            v156 = v155;
            v26, v153, v154, v155, v157, v158, v159, v160;
            v156 = v156 >> 1;
            v152 = v156 - v150;
            v151 = v156 <= v150;
            if (v156 == v150)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v149 = (v26 & 0xFFFFFFFFFFFFFF8) + 32;
            v150 = 1;
            v152 = v136 - 1;
            v151 = v136 <= 1;
            if (v136 == 1)
            {
              goto LABEL_51;
            }
          }

          if (!v151)
          {
            v161 = (v149 + 8 * v150);
            do
            {
              v162 = *v161++;
              v163 = v162;
              [v163 setEnabled:0];
              v164 = v163;
              v165 = [v7 v139[409]];
              [v164 setTintColor:v165];

              --v152;
            }

            while (v152);
LABEL_51:

            swift_unknownObjectRelease();
            return;
          }

          goto LABEL_81;
        }

LABEL_79:
        __break(1u);
        goto LABEL_80;
      }
    }

    v139 = (&ASUIPresenter + 48);
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
LABEL_82:
      __break(1u);
      return;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v136)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }
}

double sub_10003C1EC()
{
  result = PRXMainContentMargin + 14.0;
  *&qword_1000800C0 = PRXMainContentMargin + 14.0;
  return result;
}

void sub_10003C20C()
{
  v1 = [objc_allocWithZone(PRXLabel) initWithStyle:0];
  v2 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel;
  v3 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel] = v1;
  v4 = v1;

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *&v0[v2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_28;
  }

  [v5 setAlpha:0.0];
  v6 = *&v0[v2];
  if (!v6)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  [v7 setText:v8];

  v9 = [v0 contentView];
  if (!*&v0[v2])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = v9;
  [v9 addSubview:?];

  v11 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  v12 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel;
  v13 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel] = v11;
  v14 = v11;

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = *&v0[v12];
  if (!v15)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v15 setAlpha:0.0];
  v16 = *&v0[v12];
  if (!v16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v16 setNumberOfLines:0];
  v17 = *&v0[v12];
  if (!v17)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = v17;
  v19 = String._bridgeToObjectiveC()();
  [v18 setText:v19];

  v20 = [v0 contentView];
  if (!*&v0[v12])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v21 = v20;
  [v20 addSubview:?];

  v22 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  v23 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySpinner;
  v24 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySpinner];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySpinner] = v22;
  v25 = v22;

  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = *&v0[v23];
  if (!v26)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v26 startAnimating];
  v27 = [v0 contentView];
  if (!*&v0[v23])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = v27;
  [v27 addSubview:?];

  v29 = [v0 contentView];
  v30 = [v29 mainContentGuide];

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10005D070;
  v32 = *&v0[v2];
  if (!v32)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v33 = [v32 topAnchor];
  v34 = [v30 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v31 + 32) = v35;
  v36 = *&v0[v2];
  if (!v36)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v37 = [v36 centerXAnchor];
  v38 = [v30 centerXAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v31 + 40) = v39;
  v40 = *&v0[v2];
  if (!v40)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v41 = [v40 widthAnchor];
  v42 = [v30 widthAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:-96.0];

  *(v31 + 48) = v43;
  v44 = *&v0[v12];
  if (!v44)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v45 = [v44 topAnchor];
  v46 = *&v0[v2];
  if (!v46)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v47 = [v46 bottomAnchor];
  if (qword_10007EC08 != -1)
  {
    swift_once();
  }

  v48 = [v45 constraintEqualToAnchor:v47 constant:*&qword_1000814C8];

  *(v31 + 56) = v48;
  v49 = *&v0[v12];
  if (!v49)
  {
    goto LABEL_41;
  }

  v50 = [v49 centerXAnchor];
  v51 = [v30 centerXAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v31 + 64) = v52;
  v53 = *&v0[v12];
  if (!v53)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v54 = [v53 widthAnchor];
  v55 = [v30 widthAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v31 + 72) = v56;
  v57 = *&v0[v23];
  if (!v57)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v58 = [v57 topAnchor];
  v59 = *&v0[v12];
  if (!v59)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v60 = [v59 bottomAnchor];
  if (qword_10007EC40 != -1)
  {
    swift_once();
  }

  v61 = [v58 constraintGreaterThanOrEqualToAnchor:v60 constant:*&qword_1000800C0];

  *(v31 + 80) = v61;
  v62 = *&v0[v23];
  if (!v62)
  {
    goto LABEL_45;
  }

  v63 = [v62 bottomAnchor];
  v64 = [v30 bottomAnchor];
  v65 = [v63 constraintLessThanOrEqualToAnchor:v64];

  *(v31 + 88) = v65;
  v66 = *&v0[v23];
  if (!v66)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v67 = [v66 centerXAnchor];
  v68 = [v30 centerXAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v31 + 96) = v69;
  v70 = *&v0[v23];
  if (v70)
  {
    v71 = objc_opt_self();
    v72 = [v70 centerYAnchor];
    v73 = [v30 centerYAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    *(v31 + 104) = v74;
    sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v31, v76, v77, v78, v79, v80, v81, v82;
    [v71 activateConstraints:isa];

    v83 = objc_opt_self();
    v84 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v87[4] = sub_100042A00;
    v87[5] = v84;
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 1107296256;
    v87[2] = sub_100022FBC;
    v87[3] = &unk_1000735D0;
    v85 = _Block_copy(v87);

    v86 = [v83 scheduledTimerWithTimeInterval:0 repeats:v85 block:0.7];
    _Block_release(v85);

    return;
  }

LABEL_47:
  __break(1u);
}