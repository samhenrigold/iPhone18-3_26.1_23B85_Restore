double sub_10002117C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_allocWithZone(HMDeviceConfigurations) init];
    [v7 setEnableHearingProtection:1];
    *(swift_allocObject() + 16) = v6;

    v8 = v6;
    HeadphoneProxFeatureManager.updateRecord(configs:deviceAddress:usecase:completion:)();
  }

  return result;
}

uint64_t sub_1000212A0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000BAF88();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000212F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for HeadphoneYodelHearingProtectionViewController(uint64_t a1)
{
  result = qword_10011D3B0;
  if (!qword_10011D3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000214A4(uint64_t a1)
{
  sub_10000E064(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100021574()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000215AC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000215F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100021640(void *a1, void *a2)
{
  if (a1)
  {
  }
}

BOOL sub_1000216E8(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4, const char *a5)
{
  v8 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 && (String.uppercased()(), type metadata accessor for HeadphoneProxFeatureManager(), static HeadphoneProxFeatureManager.shared.getter(), (*(v9 + 104))(v11, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v8), v13 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)(), v15 = v14, , , (*(v9 + 8))(v11, v8), v13))
  {
    if ([v15 *a3] == 2)
    {
      v16 = [v13 *a4];

      return v16 == 2;
    }
  }

  else
  {
    if (qword_10011C608 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A570(v18, qword_100122FF0);
    v13 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v13, v19, a5, v20, 2u);
    }
  }

  return 0;
}

void sub_100021944()
{
  if (qword_10011C700 != -1)
  {
    swift_once();
  }

  v0 = qword_1001231A0;
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v3 = [v2 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (!v3)
  {
    goto LABEL_9;
  }
}

void sub_100021A68()
{
  if (qword_10011C700 != -1)
  {
    swift_once();
  }

  v0 = qword_1001231A0;
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v3 = [v2 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (!v3)
  {
    goto LABEL_9;
  }
}

void sub_100021B8C()
{
  if (qword_10011C700 != -1)
  {
    swift_once();
  }

  v0 = qword_1001231A0;
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v3 = [v2 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (!v3)
  {
    goto LABEL_9;
  }
}

uint64_t sub_100021CB0(uint64_t a1, unint64_t a2)
{
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v4 = dispatch thunk of HeadphoneProxFeatureManager.connectedDevices.getter();

  if (*(v4 + 16) && (v5 = sub_1000CD118(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    v8 = [v7 listeningModeOffAllowed] == 1 || objc_msgSend(v7, "listeningModeOffAllowed") == 0;
    v16 = [v7 listeningMode];
    v17 = [v7 listeningModeConfigs];
    if (qword_10011C608 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A570(v18, qword_100122FF0);
    v19 = v7;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v32 = v8;
      v22 = v17;
      v23 = v16;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      v26 = [v19 debugDescription];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_100078978(v27, v29, &v33);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "shouldPromptUserSwitchListeningMode: device %s", v24, 0xCu);
      sub_10000EA94(v25);

      v16 = v23;
      v17 = v22;
      v8 = v32;
    }

    v31 = [v19 hideOffListeningModeCapability];
    v14 = v31 == 2;
    if (v31 == 2 && !v8)
    {
      v14 = (v16 == 1) | v17;
    }
  }

  else
  {

    if (qword_10011C608 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A570(v9, qword_100122FF0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100078978(a1, a2, &v33);
      _os_log_impl(&_mh_execute_header, v10, v11, "shouldPromptUserSwitchListeningMode: Invalid address %s", v12, 0xCu);
      sub_10000EA94(v13);
    }

    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_100022064()
{

  return _swift_deallocObject(v0, 24, 7);
}

BOOL sub_1000220A4()
{
  v0 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 && (String.uppercased()(), type metadata accessor for HeadphoneProxFeatureManager(), static HeadphoneProxFeatureManager.shared.getter(), (*(v1 + 104))(v3, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v0), v5 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)(), v7 = v6, , , (*(v1 + 8))(v3, v0), v5))
  {
    if ([v5 hearingProtectionCapability] == 2)
    {
      v8 = [v5 hearingAidCapability];

      return v8 == 2;
    }
  }

  else
  {
    if (qword_10011C608 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A570(v10, qword_100122FF0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "HeadphoneProxFeatureService: showHearingProtection: depdencies not meet return false", v13, 2u);
    }
  }

  return 0;
}

unint64_t sub_1000222FC()
{
  result = qword_10011D7C0;
  if (!qword_10011D7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011D7C0);
  }

  return result;
}

uint64_t sub_100022348()
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  if (*(v0 + v3 + 8))
  {
  }

  if (*(v5 + 112))
  {
  }

  v6 = v1[12];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v5 + v1[16]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100022640(*v9, v10);
  }

  v11 = v1[38];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v5 + v1[45];
  v15 = *(v14 + 8);
  if (v15 != 255)
  {
    sub_10001C2AC(*v14, v15 & 1);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

double sub_100022640(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100022694(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadphoneModel(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);

  return sub_10001F790(a1, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_100022750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[1] = type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v8 = enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:);
  v37[0] = *(v5 + 104);
  (v37[0])(v7, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v4);
  v37[2] = a1;
  v38 = a2;
  v9 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
  v11 = v10;

  v12 = *(v5 + 8);
  v12(v7, v4);
  if (v9)
  {

    v13 = [v11 hearingProtectionRegionStatus];
    v14 = v13 == 2;
  }

  else
  {
    v14 = 0;
  }

  static HeadphoneProxFeatureManager.shared.getter();
  (v37[0])(v7, v8, v4);
  v15 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
  v17 = v16;

  v12(v7, v4);
  if (v15 && (v15, v18 = [v17 hearingProtectionPPECapability], v17, v18 == 1))
  {
    v19 = "Localizable-Yodel";
    v20 = "ARING_PROTECTION_TITLE";
    if (!v14)
    {
      static HeadphoneProxFeatureManager.shared.getter();
      (v37[0])(v7, v8, v4);
      v21 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
      v23 = v22;

      v12(v7, v4);
      if (!v21)
      {
        goto LABEL_13;
      }

      v24 = [v23 hearingProtectionPPERegionStatus];
      if (v24 != 2)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (!v14)
    {
LABEL_13:
      v25 = 0xD000000000000019;
      v19 = "Off mode config switch";
      v20 = "YODEL_WHATS_NEW_LSR_TITLE";
      v38 = 0xD00000000000001CLL;
      goto LABEL_14;
    }

    v19 = "Localizable-Yodel";
    v20 = "ARING_PROTECTION_TITLE";
  }

  v38 = 0xD000000000000029;
  v25 = 0xD000000000000026;
LABEL_14:
  v26 = objc_opt_self();
  v27 = [v26 mainBundle];
  v39._object = 0xE000000000000000;
  v28._object = (v19 | 0x8000000000000000);
  v29.value._object = 0x80000001000DC8A0;
  v28._countAndFlagsBits = v25;
  v29.value._countAndFlagsBits = 0xD000000000000011;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v39)._countAndFlagsBits;

  v32 = [v26 mainBundle];
  v40._object = 0xE000000000000000;
  v33._object = (v20 | 0x8000000000000000);
  v34.value._object = 0x80000001000DC8A0;
  v33._countAndFlagsBits = v38;
  v34.value._countAndFlagsBits = 0xD000000000000011;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v40);

  return countAndFlagsBits;
}

void sub_100022B38(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  type metadata accessor for HeadphoneProxFeatureManager();
  swift_unknownObjectRetain();
  static HeadphoneProxFeatureManager.shared.getter();
  v13 = dispatch thunk of HeadphoneProxFeatureManager.connectedDevices.getter();

  if (*(v13 + 16) && (v14 = sub_1000CD118(a2, a3), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);

    if (sub_100021CB0(a2, a3))
    {
      v17 = [a4 hearingProtectionRegionStatus];
      v18 = v17 == 2;
      if (v17 == 2)
      {
        v19 = -85;
      }

      else
      {
        v19 = -83;
      }

      if (v18)
      {
        v20 = -84;
      }

      else
      {
        v20 = -82;
      }

      sub_100033A5C(v19);
      sub_100033A5C(v20);
      v49 = v16;
      v21 = String._bridgeToObjectiveC()();

      v22 = String._bridgeToObjectiveC()();

      v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

      v24 = v23;
      sub_100033A5C(175);
      v25 = swift_allocObject();
      v25[2] = a2;
      v25[3] = a3;
      v25[4] = sub_100023270;
      v25[5] = v12;

      v26 = String._bridgeToObjectiveC()();

      v55 = sub_10002329C;
      v56 = v25;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v53 = sub_10000C034;
      v54 = &unk_1001041A0;
      v27 = _Block_copy(&aBlock);

      v28 = objc_opt_self();
      v29 = [v28 actionWithTitle:v26 style:0 handler:v27];
      _Block_release(v27);

      [v24 addAction:v29];
      sub_100033A5C(176);
      v30 = swift_allocObject();
      v30[2] = a2;
      v30[3] = a3;
      v30[4] = sub_100023270;
      v30[5] = v12;

      v31 = String._bridgeToObjectiveC()();

      v55 = sub_1000232E8;
      v56 = v30;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v53 = sub_10000C034;
      v54 = &unk_1001041F0;
      v32 = _Block_copy(&aBlock);

      v33 = [v28 actionWithTitle:v31 style:0 handler:v32];
      _Block_release(v32);

      [v24 addAction:v33];
      [a1 presentViewController:v24 animated:1 completion:0];
    }

    else
    {
      if (qword_10011C608 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000A570(v39, qword_100122FF0);
      v50 = v16;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        aBlock = v43;
        *v42 = 136315138;
        v44 = [v50 debugDescription];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_100078978(v45, v47, &aBlock);

        *(v42 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v40, v41, "showOffModeSwitchAlert: dont need to alert %s", v42, 0xCu);
        sub_10000EA94(v43);
      }

      if (a5)
      {
        sub_1000B7214();
      }
    }
  }

  else
  {

    if (qword_10011C608 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000A570(v34, qword_100122FF0);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100078978(a2, a3, &aBlock);
      _os_log_impl(&_mh_execute_header, v35, v36, "showOffModeSwitchAlert: Invalid address %s", v37, 0xCu);
      sub_10000EA94(v38);
    }

    if (a5)
    {
      sub_1000B7214();
    }
  }
}

uint64_t sub_100023238()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023270()
{
  if (*(v0 + 16))
  {
    return sub_1000B7214();
  }

  return result;
}

uint64_t sub_1000232A8()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_1000232F4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_featureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v1[v5] = static HeadphoneProxFeatureManager.shared.getter();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___imageView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___topAsset] = 0;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_model;
  v7 = type metadata accessor for HeadphoneModel(0);
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_type] = 34;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithContentView:", a1);
}

uint64_t sub_10002341C()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D3C0);
  v1 = sub_10000A570(v0, qword_10011D3C0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000234E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v4 = __chkstk_darwin(v3 - 8);
  v311 = &v298 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v312 = &v298 - v7;
  __chkstk_darwin(v6);
  v9 = &v298 - v8;
  v10 = type metadata accessor for URL();
  v313 = *(v10 - 8);
  v314 = v10;
  v11 = __chkstk_darwin(v10);
  *&v318 = &v298 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v315 = &v298 - v13;
  v14 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v14 - 8);
  v16 = &v298 - v15;
  v17 = type metadata accessor for HeadphoneViewModel(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v298 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324.receiver = v1;
  v324.super_class = ObjectType;
  objc_msgSendSuper2(&v324, "viewDidLoad");
  v21 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_viewModel;
  swift_beginAccess();
  v319 = v1;
  sub_10000E88C(&v1[v21], v16, &qword_10011F2E0, &unk_1000D8580);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000E950(v16, &qword_10011F2E0, &unk_1000D8580);
    goto LABEL_7;
  }

  sub_1000260D0(v16, v20);
  v22 = &v20[*(v17 + 56)];
  v23 = *(v22 + 13);
  v321[12] = *(v22 + 12);
  v322 = v23;
  v323 = *(v22 + 14);
  v24 = *(v22 + 9);
  v321[8] = *(v22 + 8);
  v321[9] = v24;
  v25 = *(v22 + 11);
  v321[10] = *(v22 + 10);
  v321[11] = v25;
  v26 = *(v22 + 5);
  v321[4] = *(v22 + 4);
  v321[5] = v26;
  v27 = *(v22 + 7);
  v321[6] = *(v22 + 6);
  v321[7] = v27;
  v28 = *(v22 + 1);
  v321[0] = *v22;
  v321[1] = v28;
  v29 = *(v22 + 3);
  v321[2] = *(v22 + 2);
  v321[3] = v29;
  v30 = v20;
  if (sub_100026134(v321) == 1)
  {
LABEL_6:
    sub_10002614C(v30, type metadata accessor for HeadphoneViewModel);
LABEL_7:
    if (qword_10011C610 == -1)
    {
LABEL_8:
      v36 = type metadata accessor for Logger();
      sub_10000A570(v36, qword_10011D3C0);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "No view model present", v39, 2u);
      }

      return;
    }

LABEL_43:
    swift_once();
    goto LABEL_8;
  }

  v31 = *(v17 + 44);
  sub_10000E88C(v30 + v31, v9, &qword_10011CCF0, qword_1000D61B0);
  v32 = type metadata accessor for HeadphoneAssets(0);
  v33 = *(v32 - 1);
  v34 = *(v33 + 48);
  v35 = (v33 + 48);
  if (v34(v9, 1, v32) == 1)
  {
    sub_10000E950(v9, &qword_10011CCF0, qword_1000D61B0);
    goto LABEL_6;
  }

  v301 = v31;
  v306 = v35;
  v309 = v34;
  v310 = v32;
  v298 = v17;
  v41 = v313;
  v40 = v314;
  v42 = v318;
  (*(v313 + 16))(v318, v9, v314);
  sub_10002614C(v9, type metadata accessor for HeadphoneAssets);
  (*(v41 + 32))(v315, v42, v40);
  v43 = v319;
  [v319 setDismissalType:1];
  v44 = String._bridgeToObjectiveC()();
  [v43 setTitle:v44];

  v305 = v30;
  v45 = String._bridgeToObjectiveC()();
  [v43 setSubtitle:v45];

  v308 = sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  inited = swift_initStackObject();
  v318 = xmmword_1000D5C90;
  *(inited + 16) = xmmword_1000D5C90;
  v47 = *&v43[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftLabel];
  *(inited + 32) = v47;
  v317 = (inited + 32);
  v48 = *&v43[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightLabel];
  *(inited + 40) = v48;
  v49 = *&v43[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseLabel];
  *(inited + 48) = v49;
  v307 = v47;
  v304 = v48;
  v302 = v49;
  v50 = 0;
  do
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v50 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v51 = *(inited + 8 * v50 + 32);
    }

    v52 = v51;
    ++v50;
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v52 setAdjustsFontForContentSizeCategory:1];
    v53 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v52 setFont:v53];

    v54 = [objc_opt_self() labelColor];
    [v52 setTextColor:v54];

    [v52 setNumberOfLines:0];
    v55 = [v319 contentView];
    [v55 addSubview:v52];
  }

  while (v50 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  v56 = swift_initStackObject();
  *(v56 + 16) = v318;
  v57 = v319;
  v58 = *&v319[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftGenerationLabel];
  *(v56 + 32) = v58;
  v300 = (v56 + 32);
  v59 = *&v57[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightGenerationLabel];
  *(v56 + 40) = v59;
  v60 = *&v57[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseGenerationLabel];
  *(v56 + 48) = v60;
  v316 = v58;
  v317 = v59;
  v303 = v60;
  v61 = 0;
  do
  {
    if ((v56 & 0xC000000000000001) != 0)
    {
      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v61 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v62 = *(v56 + 8 * v61 + 32);
    }

    v63 = v62;
    ++v61;
    [v62 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v63 setAdjustsFontForContentSizeCategory:1];
    v64 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v63 setFont:v64];

    v65 = [objc_opt_self() secondaryLabelColor];
    [v63 setTextColor:v65];

    [v63 setNumberOfLines:0];
    v66 = [v319 contentView];
    [v66 addSubview:v63];
  }

  while (v61 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100033A5C(28);
  v67 = String._bridgeToObjectiveC()();

  v68 = v307;
  [v307 setText:v67];

  [v68 setTextAlignment:2];
  [v316 setTextAlignment:2];
  sub_100033A5C(29);
  v69 = String._bridgeToObjectiveC()();

  v70 = v304;
  [v304 setText:v69];

  [v70 setTextAlignment:0];
  [v317 setTextAlignment:0];
  sub_100033A5C(30);
  v71 = String._bridgeToObjectiveC()();

  v72 = v302;
  [v302 setText:v71];

  [v72 setTextAlignment:1];
  [v303 setTextAlignment:1];
  URL.path.getter();
  v73 = String.count.getter();

  if (v73 < 1)
  {
    v76 = v311;
    sub_10000E88C(v305 + v301, v311, &qword_10011CCF0, qword_1000D61B0);
    v77 = v310;
    if (v309(v76, 1, v310) == 1)
    {
      sub_10000E950(v76, &qword_10011CCF0, qword_1000D61B0);
LABEL_55:
      v82 = 0;
LABEL_56:
      v83 = [objc_allocWithZone(UIImageView) initWithImage:v82];
      goto LABEL_57;
    }

    v78 = *&v76[v77[8]];

    sub_10002614C(v76, type metadata accessor for HeadphoneAssets);
    if (!(v78 >> 62))
    {
      if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_54:

        goto LABEL_55;
      }

LABEL_37:
      if ((v78 & 0xC000000000000001) != 0)
      {
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v81 = *(v78 + 32);
      }

      v82 = v81;

      goto LABEL_56;
    }

LABEL_53:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_54;
    }

    goto LABEL_37;
  }

  v74 = v312;
  sub_10000E88C(v305 + v301, v312, &qword_10011CCF0, qword_1000D61B0);
  v75 = v310;
  if (v309(v74, 1, v310) == 1)
  {
    sub_10000E950(v74, &qword_10011CCF0, qword_1000D61B0);
    goto LABEL_46;
  }

  v78 = *&v74[v75[8]];

  sub_10002614C(v74, type metadata accessor for HeadphoneAssets);
  if (v78 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_45;
    }

LABEL_31:
    if ((v78 & 0xC000000000000001) != 0)
    {
      v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_34;
    }

    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v79 = *(v78 + 32);
LABEL_34:
      v80 = v79;

      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_45:

LABEL_46:
  v80 = 0;
LABEL_47:
  v83 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:v80];

  v84 = [objc_opt_self() currentTraitCollection];
  v85 = [v84 userInterfaceStyle];

  if (v85 == 2)
  {
    v86 = 1;
  }

  else
  {
    v86 = 2;
  }

  URL._bridgeToObjectiveC()(1);
  v82 = v87;
  [v83 updateViewForAssetType:v86 adjustmentsURL:v87];
LABEL_57:

  v88 = v83;
  [v88 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v89) = 1148846080;
  [v88 setContentCompressionResistancePriority:0 forAxis:v89];
  v90 = v319;
  v91 = [v319 contentView];
  v306 = v88;
  [v91 addSubview:v88];

  v92 = swift_initStackObject();
  *(v92 + 16) = v318;
  v93 = *&v90[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftCircle];
  *(v92 + 32) = v93;
  v312 = (v92 + 32);
  v94 = *&v90[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightCircle];
  *(v92 + 40) = v94;
  v95 = *&v90[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseCircle];
  *(v92 + 48) = v95;
  v96 = (v92 & 0xC000000000000001);
  v97 = v92 & 0xFFFFFFFFFFFFFF8;
  v309 = v93;
  v310 = v94;
  v300 = v95;
  v98 = 0;
  v99 = &unk_100116000;
  do
  {
    if (v96)
    {
      v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v98 >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_98;
      }

      v100 = *(v92 + 8 * v98 + 32);
    }

    v101 = v100;
    ++v98;
    [v100 setTranslatesAutoresizingMaskIntoConstraints:0];
    v102 = [v101 layer];
    [v102 setCornerRadius:3.5];

    v103 = [objc_opt_self() systemGrayColor];
    [v101 setBackgroundColor:v103];

    v61 = [v319 contentView];
    [v61 addSubview:v101];
  }

  while (v98 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  v61 = swift_initStackObject();
  *(v61 + 16) = v318;
  v104 = v319;
  v105 = *&v319[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftArm];
  *(v61 + 32) = v105;
  v106 = *&v104[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightArm];
  *(v61 + 40) = v106;
  v107 = *&v104[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseArm];
  *(v61 + 48) = v107;
  v97 = v61 & 0xC000000000000001;
  v96 = (v61 & 0xFFFFFFFFFFFFFF8);
  v312 = v105;
  v311 = v106;
  v108 = v107;
  v299 = v108;
  if (v97)
  {
    goto LABEL_100;
  }

  if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_99;
  }

  v109 = v312;
  while (2)
  {
    v110 = v109;
    [v109 setTranslatesAutoresizingMaskIntoConstraints:{0, v298}];
    v111 = [objc_opt_self() v99[244]];
    [v110 setBackgroundColor:v111];

    v112 = [v319 contentView];
    [v112 addSubview:v110];

    if (!v97)
    {
      if (v96[2] >= 2uLL)
      {
        v113 = *(v61 + 40);
        goto LABEL_70;
      }

LABEL_99:
      __break(1u);
LABEL_100:
      v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      continue;
    }

    break;
  }

  v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_70:
  v114 = v113;
  [v113 setTranslatesAutoresizingMaskIntoConstraints:0];
  v115 = [objc_opt_self() v99[244]];
  [v114 setBackgroundColor:v115];

  v116 = [v319 contentView];
  [v116 addSubview:v114];

  if (v97)
  {
    v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v96[2] < 3uLL)
    {
      goto LABEL_99;
    }

    v117 = *(v61 + 48);
  }

  v118 = v117;
  [v117 setTranslatesAutoresizingMaskIntoConstraints:0];
  v119 = [objc_opt_self() v99[244]];
  [v118 setBackgroundColor:v119];

  v120 = [v319 contentView];
  [v120 addSubview:v118];

  swift_setDeallocating();
  swift_arrayDestroy();
  v99 = *(v305 + *(v298 + 17));
  v121 = v99[2];
  if (v121)
  {
    LODWORD(v301) = 0;
    v97 = 0;
    *&v318 = -v121;
    v122 = (v99 + 7);
    v298 = (v99 + 7);
LABEL_75:
    v123 = &v122[32 * v97++];
    while (v97 - 1 < v99[2])
    {
      v129 = *(v123 - 3);
      v128 = *(v123 - 2);
      v61 = *(v123 - 1);
      v130 = *v123;
      v131 = v61;

      v132 = String._bridgeToObjectiveC()();
      if (v130)
      {
        if (v130 != 1)
        {
          v96 = v303;
          [v303 setText:v132];

          if (v61)
          {
            [v96 setTextColor:v131];
            v96 = &unk_100116000;
            [v300 setBackgroundColor:v131];
            [v299 setBackgroundColor:v131];
          }

          v133 = v318 + v97;
          sub_1000261AC(v129, v128, v61, 2u);
          LODWORD(v301) = 1;
          v122 = v298;
          if (v133)
          {
            goto LABEL_75;
          }

          goto LABEL_93;
        }

        v96 = v317;
        [v317 setText:v132];

        if (v61)
        {
          [v96 setTextColor:v131];
          v96 = &unk_100116000;
          [v310 setBackgroundColor:v131];
          [v311 setBackgroundColor:v131];
          v124 = v129;
          v125 = v128;
          v126 = v61;
        }

        else
        {
          v124 = v129;
          v125 = v128;
          v126 = 0;
        }

        v127 = 1;
      }

      else
      {
        v96 = v316;
        [v316 setText:v132];

        if (v61)
        {
          [v96 setTextColor:v131];
          v96 = &unk_100116000;
          [v309 setBackgroundColor:v131];
          [v312 setBackgroundColor:v131];
          v124 = v129;
          v125 = v128;
          v126 = v61;
        }

        else
        {
          v124 = v129;
          v125 = v128;
          v126 = 0;
        }

        v127 = 0;
      }

      sub_1000261AC(v124, v125, v126, v127);
      ++v97;
      v123 += 32;
      if (v318 + v97 == 1)
      {
        goto LABEL_93;
      }
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  LODWORD(v301) = 0;
LABEL_93:
  v134 = [v319 contentView];
  v135 = [v134 mainContentGuide];

  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_1000D6890;
  v137 = v307;
  v138 = [v307 topAnchor];
  v139 = [v135 topAnchor];
  v140 = [v138 constraintGreaterThanOrEqualToAnchor:v139];

  *(v136 + 32) = v140;
  v141 = [v137 leftAnchor];
  v319 = v135;
  v142 = [v135 leftAnchor];
  v143 = [v141 constraintGreaterThanOrEqualToAnchor:v142];

  *(v136 + 40) = v143;
  v144 = v137;
  v145 = [v137 rightAnchor];
  v146 = [v312 leftAnchor];
  v147 = [v145 constraintEqualToAnchor:v146 constant:-10.0];

  *(v136 + 48) = v147;
  v148 = v316;
  v149 = [v316 trailingAnchor];
  v150 = [v144 trailingAnchor];
  v151 = [v149 constraintEqualToAnchor:v150];

  *(v136 + 56) = v151;
  v152 = [v148 leftAnchor];
  v153 = [v135 leftAnchor];
  v154 = [v152 constraintGreaterThanOrEqualToAnchor:v153];

  *(v136 + 64) = v154;
  v155 = [v148 topAnchor];
  v156 = [v144 bottomAnchor];
  v157 = [v155 constraintEqualToAnchor:v156];

  *(v136 + 72) = v157;
  v158 = [v148 bottomAnchor];
  v159 = [v306 topAnchor];
  v160 = [v158 constraintLessThanOrEqualToAnchor:v159 constant:-5.0];

  *(v136 + 80) = v160;
  v161 = v304;
  v162 = [v304 topAnchor];
  v163 = [v144 topAnchor];
  v164 = [v162 constraintEqualToAnchor:v163];

  *(v136 + 88) = v164;
  v165 = [v161 rightAnchor];
  v166 = v319;
  v167 = [v319 rightAnchor];
  v168 = [v165 constraintLessThanOrEqualToAnchor:v167];

  *(v136 + 96) = v168;
  v169 = [v161 leftAnchor];
  v170 = [v311 rightAnchor];
  v171 = [v169 constraintEqualToAnchor:v170 constant:10.0];

  *(v136 + 104) = v171;
  v172 = v317;
  v173 = [v317 leftAnchor];
  v174 = [v161 leftAnchor];
  v175 = [v173 constraintEqualToAnchor:v174];

  *(v136 + 112) = v175;
  v176 = [v172 rightAnchor];
  v177 = [v166 rightAnchor];
  v178 = [v176 constraintLessThanOrEqualToAnchor:v177];

  *(v136 + 120) = v178;
  v179 = [v172 topAnchor];
  v180 = [v161 bottomAnchor];
  v181 = [v179 constraintEqualToAnchor:v180];

  *(v136 + 128) = v181;
  v182 = [v172 bottomAnchor];
  v183 = v306;
  v184 = [v306 topAnchor];
  v185 = [v182 constraintLessThanOrEqualToAnchor:v184 constant:-5.0];

  *(v136 + 136) = v185;
  v186 = [v183 centerXAnchor];
  v187 = [v166 centerXAnchor];
  v188 = [v186 constraintEqualToAnchor:v187];

  *(v136 + 144) = v188;
  v189 = [v183 topAnchor];
  v190 = [v166 topAnchor];
  v191 = [v189 constraintGreaterThanOrEqualToAnchor:v190];

  *(v136 + 152) = v191;
  v192 = [v183 bottomAnchor];
  v193 = [v166 bottomAnchor];
  v194 = [v192 constraintEqualToAnchor:v193];

  *(v136 + 160) = v194;
  v195 = v309;
  v196 = [v309 widthAnchor];
  v197 = [v196 constraintEqualToConstant:7.0];

  *(v136 + 168) = v197;
  v198 = [v195 heightAnchor];
  v199 = [v195 widthAnchor];
  v200 = [v198 constraintEqualToAnchor:v199];

  *(v136 + 176) = v200;
  v201 = [v195 centerXAnchor];
  v202 = [v183 leftAnchor];
  v203 = *(&v322 + 1);
  v204 = v323;
  v205 = [v201 constraintEqualToAnchor:v202 constant:*(&v322 + 1)];

  *(v136 + 184) = v205;
  v206 = [v195 centerYAnchor];
  v207 = [v183 topAnchor];
  v208 = [v206 constraintEqualToAnchor:v207 constant:*&v204];

  *(v136 + 192) = v208;
  v209 = v312;
  v210 = [v312 topAnchor];
  v211 = [v307 centerYAnchor];
  v212 = [v210 constraintEqualToAnchor:v211];

  *(v136 + 200) = v212;
  v213 = [v209 bottomAnchor];
  v214 = [v195 centerYAnchor];
  v215 = [v213 constraintEqualToAnchor:v214];

  *(v136 + 208) = v215;
  v216 = [v209 centerXAnchor];
  v217 = [v195 centerXAnchor];
  v218 = [v216 constraintEqualToAnchor:v217];

  *(v136 + 216) = v218;
  v219 = [v209 widthAnchor];
  v220 = [v219 constraintEqualToConstant:1.0];

  *(v136 + 224) = v220;
  v221 = v310;
  v222 = [v310 widthAnchor];
  v223 = [v222 constraintEqualToConstant:7.0];

  *(v136 + 232) = v223;
  v224 = [v221 heightAnchor];
  v225 = [v221 widthAnchor];
  v226 = [v224 constraintEqualToAnchor:v225];

  *(v136 + 240) = v226;
  v227 = [v221 centerXAnchor];
  v228 = [v183 rightAnchor];

  v229 = [v227 constraintEqualToAnchor:v228 constant:-v203];
  *(v136 + 248) = v229;
  v230 = [v221 centerYAnchor];
  v231 = [v195 centerYAnchor];
  v232 = [v230 constraintEqualToAnchor:v231];

  *(v136 + 256) = v232;
  v233 = v311;
  v234 = [v311 topAnchor];
  v235 = [v304 centerYAnchor];
  v236 = [v234 constraintEqualToAnchor:v235];

  *(v136 + 264) = v236;
  v237 = [v233 bottomAnchor];
  v238 = [v221 centerYAnchor];
  v239 = [v237 constraintEqualToAnchor:v238];

  *(v136 + 272) = v239;
  v240 = [v233 centerXAnchor];
  v241 = [v221 centerXAnchor];
  v242 = [v240 constraintEqualToAnchor:v241];

  *(v136 + 280) = v242;
  v243 = [v233 widthAnchor];
  v244 = [v243 constraintEqualToConstant:1.0];

  *(v136 + 288) = v244;
  v320 = v136;
  if (v301)
  {
    v245 = swift_initStackObject();
    *(v245 + 16) = xmmword_1000D68A0;
    v246 = v302;
    v247 = [v302 topAnchor];
    v248 = v319;
    v249 = [v319 topAnchor];
    v250 = [v247 constraintEqualToAnchor:v249];

    *(v245 + 32) = v250;
    v251 = [v246 leadingAnchor];
    v252 = [v248 leadingAnchor];
    v253 = [v251 constraintEqualToAnchor:v252];

    *(v245 + 40) = v253;
    v254 = [v246 trailingAnchor];
    v255 = [v248 trailingAnchor];
    v256 = [v254 constraintEqualToAnchor:v255];

    *(v245 + 48) = v256;
    v257 = v303;
    v258 = [v303 trailingAnchor];
    v259 = [v246 trailingAnchor];
    v260 = [v258 constraintEqualToAnchor:v259];

    *(v245 + 56) = v260;
    v261 = [v257 leadingAnchor];
    v262 = [v246 leadingAnchor];
    v263 = [v261 constraintEqualToAnchor:v262];

    *(v245 + 64) = v263;
    v264 = [v257 topAnchor];
    v265 = [v246 bottomAnchor];
    v266 = [v264 constraintEqualToAnchor:v265];

    *(v245 + 72) = v266;
    v267 = [v257 bottomAnchor];
    v268 = [v307 topAnchor];
    v269 = [v267 constraintEqualToAnchor:v268 constant:-5.0];

    *(v245 + 80) = v269;
    v270 = v300;
    v271 = [v300 widthAnchor];
    v272 = [v271 constraintEqualToConstant:7.0];

    *(v245 + 88) = v272;
    v273 = [v270 heightAnchor];
    v274 = [v270 widthAnchor];
    v275 = [v273 constraintEqualToAnchor:v274];

    *(v245 + 96) = v275;
    v276 = [v270 centerXAnchor];
    v277 = v306;
    v278 = [v306 centerXAnchor];
    v279 = [v276 constraintEqualToAnchor:v278];

    *(v245 + 104) = v279;
    v280 = [v270 centerYAnchor];
    v281 = [v277 topAnchor];
    v282 = [v280 constraintEqualToAnchor:v281 constant:*(&v204 + 1)];

    *(v245 + 112) = v282;
    v283 = v299;
    v284 = [v299 topAnchor];
    v285 = [v257 bottomAnchor];
    v286 = [v284 constraintEqualToAnchor:v285 constant:5.0];

    *(v245 + 120) = v286;
    v287 = [v283 bottomAnchor];
    v288 = [v270 centerYAnchor];
    v289 = [v287 constraintEqualToAnchor:v288];

    *(v245 + 128) = v289;
    v290 = [v283 centerXAnchor];
    v291 = [v270 centerXAnchor];
    v292 = [v290 constraintEqualToAnchor:v291];

    *(v245 + 136) = v292;
    v293 = [v283 widthAnchor];
    v294 = [v293 constraintEqualToConstant:1.0];

    *(v245 + 144) = v294;
    sub_100009D2C(v245);
  }

  else
  {
    [v302 setHidden:1];
    [v303 setHidden:1];
    [v300 setHidden:1];
    [v299 setHidden:1];
  }

  v295 = v305;
  v296 = objc_opt_self();
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v296 activateConstraints:isa];

  (*(v313 + 8))(v315, v314);
  sub_10002614C(v295, type metadata accessor for HeadphoneViewModel);
}

uint64_t type metadata accessor for HeadphoneMismatchViewController(uint64_t a1)
{
  result = qword_10011D468;
  if (!qword_10011D468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025D7C(uint64_t a1)
{
  sub_100025E40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100025E40(uint64_t a1)
{
  if (!qword_10011D478)
  {
    type metadata accessor for HeadphoneViewModel(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10011D478);
    }
  }
}

id sub_100025EA8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_viewModel;
  v5 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightLabel;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseLabel;
  *&v1[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftGenerationLabel;
  *&v1[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightGenerationLabel;
  *&v1[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseGenerationLabel;
  *&v1[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftCircle;
  *&v1[v12] = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_leftArm;
  *&v1[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightCircle;
  *&v1[v14] = [objc_allocWithZone(UIView) init];
  v15 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_rightArm;
  *&v1[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseCircle;
  *&v1[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_caseArm;
  *&v1[v17] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_type] = 18;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "initWithContentView:", a1);
}

uint64_t sub_1000260D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026134(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10002614C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000261AC(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }
}

id sub_1000261F8()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() systemFontOfSize:12.0];
  [v0 setFont:v1];

  [v0 setNumberOfLines:0];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v2];

  return v0;
}

char *sub_1000262D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC20HeadphoneProxService7LEDView_label;
  v10 = [objc_allocWithZone(UILabel) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [objc_opt_self() systemFontOfSize:12.0];
  [v10 setFont:v11];

  [v10 setNumberOfLines:0];
  v12 = [objc_opt_self() secondaryLabelColor];
  [v10 setTextColor:v12];

  *&v4[v9] = v10;
  v13 = &v4[OBJC_IVAR____TtC20HeadphoneProxService7LEDView_textString];
  *v13 = a2;
  *(v13 + 1) = a3;
  *&v4[OBJC_IVAR____TtC20HeadphoneProxService7LEDView_animationView] = a1;

  v14 = a1;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = OBJC_IVAR____TtC20HeadphoneProxService7LEDView_label;
  v17 = *&v15[OBJC_IVAR____TtC20HeadphoneProxService7LEDView_label];
  v18 = String._bridgeToObjectiveC()();

  [v17 setText:v18];

  LODWORD(v19) = 1148846080;
  [*&v15[v16] setContentHuggingPriority:0 forAxis:v19];
  sub_1000264E4();

  return v15;
}

void sub_1000264E4()
{
  v1 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService7LEDView_label];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService7LEDView_animationView];
  [v0 addSubview:v2];
  v3 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000D6930;
  v5 = [v2 centerYAnchor];
  v6 = [v0 centerYAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v2 widthAnchor];
  v12 = [v11 constraintEqualToConstant:10.0];

  *(v4 + 48) = v12;
  v13 = [v2 heightAnchor];
  v14 = [v0 widthAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v4 + 56) = v15;
  v16 = [v1 leadingAnchor];
  v17 = [v2 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:4.0];

  *(v4 + 64) = v18;
  v19 = [v1 topAnchor];
  v20 = [v0 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v4 + 72) = v21;
  v22 = [v1 trailingAnchor];
  v23 = [v0 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v4 + 80) = v24;
  v25 = [v1 bottomAnchor];
  v26 = [v0 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v4 + 88) = v27;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

void sub_100026A8C()
{
  v167.receiver = v0;
  v167.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v167, "viewDidLoad");
  v166 = v0;
  [v0 setDismissalType:1];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass:ObjCClassFromMetadata];
  v4 = objc_allocWithZone(BSUICAPackageView);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 initWithPackageName:v6 inBundle:v5];

  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = v7;
  v9 = [v2 mainBundle];
  v168._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x44454752414843;
  v10._object = 0xE700000000000000;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v168._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v168);

  v14 = type metadata accessor for LEDView();
  v15 = objc_allocWithZone(v14);
  v162 = v8;
  v165 = sub_1000262D4(v8, v13._countAndFlagsBits, v13._object);
  v16 = objc_allocWithZone(BSUICAPackageView);
  v17 = v5;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 initWithPackageName:v18 inBundle:v17];

  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = v19;
  v21 = [v2 mainBundle];
  v169._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0x474E494752414843;
  v22._object = 0xE800000000000000;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v169._countAndFlagsBits = 0;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v169);

  v26 = objc_allocWithZone(v14);
  v159 = v20;
  v27 = sub_1000262D4(v20, v25._countAndFlagsBits, v25._object);
  LODWORD(v28) = 1148846080;
  [v27 setContentHuggingPriority:0 forAxis:v28];
  v29 = objc_allocWithZone(BSUICAPackageView);
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 initWithPackageName:v30 inBundle:v17];

  v161 = v17;
  if (!v31)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = v31;
  v33 = [v2 mainBundle];
  v170._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0x435F454752414843;
  v34._object = 0xEB00000000455341;
  v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v35.value._object = 0xEB00000000656C62;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v170._countAndFlagsBits = 0;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v170);

  v38 = objc_allocWithZone(v14);
  v158 = v32;
  v39 = sub_1000262D4(v32, v37._countAndFlagsBits, v37._object);
  v40 = [objc_allocWithZone(UIView) init];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = v165;
  [v40 addSubview:v41];
  [v40 addSubview:v27];
  v42 = v39;
  [v40 addSubview:v42];
  v165 = objc_opt_self();
  v160 = sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1000D6940;
  v44 = [v27 topAnchor];

  v45 = [v40 topAnchor];
  v46 = [v44 constraintGreaterThanOrEqualToAnchor:v45];

  *(v43 + 32) = v46;
  v47 = [v27 centerXAnchor];

  v48 = [v40 centerXAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v43 + 40) = v49;
  v50 = [v27 centerYAnchor];

  v51 = [v40 centerYAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v43 + 48) = v52;
  v53 = [v27 bottomAnchor];

  v54 = [v40 bottomAnchor];
  v55 = [v53 constraintLessThanOrEqualToAnchor:v54];

  *(v43 + 56) = v55;
  v56 = [v41 topAnchor];

  v57 = [v40 topAnchor];
  v58 = [v56 constraintGreaterThanOrEqualToAnchor:v57];

  *(v43 + 64) = v58;
  v59 = [v41 leadingAnchor];

  v60 = [v40 leadingAnchor];
  v61 = [v59 constraintGreaterThanOrEqualToAnchor:v60];

  *(v43 + 72) = v61;
  v62 = [v41 trailingAnchor];

  v63 = [v27 leadingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:-16.0];

  *(v43 + 80) = v64;
  v65 = [v41 centerYAnchor];

  v66 = [v40 centerYAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v43 + 88) = v67;
  v68 = [v41 bottomAnchor];
  v157 = v41;

  v69 = [v40 bottomAnchor];
  v70 = [v68 constraintLessThanOrEqualToAnchor:v69];

  *(v43 + 96) = v70;
  v71 = [v42 topAnchor];

  v72 = [v40 topAnchor];
  v73 = [v71 constraintGreaterThanOrEqualToAnchor:v72];

  *(v43 + 104) = v73;
  v74 = [v42 leadingAnchor];

  v75 = [v27 trailingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:16.0];

  *(v43 + 112) = v76;
  v77 = [v42 trailingAnchor];

  v78 = [v40 trailingAnchor];
  v79 = [v77 constraintLessThanOrEqualToAnchor:v78];

  *(v43 + 120) = v79;
  v80 = [v42 centerYAnchor];

  v81 = [v40 centerYAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v43 + 128) = v82;
  v83 = [v42 bottomAnchor];
  v156 = v42;

  v84 = [v40 bottomAnchor];
  v85 = [v83 constraintLessThanOrEqualToAnchor:v84];

  *(v43 + 136) = v85;
  v86 = sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v165 activateConstraints:isa];

  v88 = v166;
  v89 = [v166 view];
  if (!v89)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v90 = v89;
  v155 = v86;
  [v89 addSubview:v40];

  v91 = [v166 contentView];
  v164 = [v91 mainContentGuide];

  v92 = &v166[OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_contentProvider];
  swift_beginAccess();
  v93 = *(v92 + 3);
  if (!v93)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v94 = *(v92 + 4);
  v95 = sub_10000E7E4(v92, *(v92 + 3));
  v96 = *(v93 - 8);
  __chkstk_darwin(v95);
  v98 = &v151 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v96 + 16))(v98);
  v99 = (*(v94 + 8))(v93, v94);
  (*(v96 + 8))(v98, v93);
  v100 = objc_allocWithZone(UIImageView);
  v163 = v99;
  v101 = [v100 initWithImage:v99];
  [v101 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v101 setClipsToBounds:0];
  v102 = [objc_allocWithZone(CAShapeLayer) init];
  v103 = [objc_allocWithZone(UIBezierPath) init];
  [v101 bounds];
  v104 = CGRectGetWidth(v171) * 0.5;
  [v101 bounds];
  v105 = CGRectGetHeight(v172) * 0.5 + 10.0;
  [v101 bounds];
  v106 = CGRectGetHeight(v173) + 10.0;
  [v103 moveToPoint:{v104, v105}];
  [v103 addLineToPoint:{v104, v106}];
  v107 = [v103 CGPath];
  [v102 setPath:v107];

  sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  v108 = sub_1000A2978(0x37393739373923, 0xE700000000000000);
  if (!v108)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v109 = v108;
  v152 = v103;
  v154 = v27;
  v110 = [v108 CGColor];

  [v102 setStrokeColor:v110];
  [v102 setLineWidth:1.0];
  [v102 setLineCap:kCALineCapRound];
  v111 = [v101 layer];
  v153 = v102;
  [v111 addSublayer:v102];

  v112 = [v88 view];
  if (!v112)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v113 = v112;
  [v112 addSubview:v101];

  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1000D5260;
  v115 = [v101 topAnchor];
  v116 = v164;
  v117 = [v164 topAnchor];
  v118 = [v115 constraintGreaterThanOrEqualToAnchor:v117];

  *(v114 + 32) = v118;
  v119 = [v101 centerXAnchor];
  v120 = [v116 centerXAnchor];
  v121 = [v119 constraintEqualToAnchor:v120];

  *(v114 + 40) = v121;
  v122 = [v101 widthAnchor];
  v123 = v163;
  [v163 size];
  v124 = [v122 constraintEqualToConstant:?];

  *(v114 + 48) = v124;
  v125 = [v101 heightAnchor];
  [v123 size];
  v127 = [v125 constraintEqualToConstant:v126];

  *(v114 + 56) = v127;
  v128 = [v40 topAnchor];
  v129 = [v101 bottomAnchor];

  v130 = [v128 constraintEqualToAnchor:v129 constant:20.0];
  *(v114 + 64) = v130;
  v131 = [v40 bottomAnchor];
  v132 = [v116 bottomAnchor];
  v133 = [v131 constraintEqualToAnchor:v132];

  *(v114 + 72) = v133;
  v134 = [v40 centerXAnchor];
  v135 = [v116 centerXAnchor];
  v136 = [v134 constraintEqualToAnchor:v135 constant:-16.0];

  *(v114 + 80) = v136;
  v137 = [v40 leadingAnchor];
  v138 = v166;
  v139 = [v166 view];
  if (!v139)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v140 = v139;
  v141 = [v139 leadingAnchor];

  v142 = [v137 constraintGreaterThanOrEqualToAnchor:v141];
  *(v114 + 88) = v142;
  v143 = [v40 trailingAnchor];
  v144 = [v138 view];
  v145 = v161;
  v146 = v154;
  if (v144)
  {
    v147 = v144;
    v148 = [v144 trailingAnchor];

    v149 = [v143 constraintLessThanOrEqualToAnchor:v148];
    *(v114 + 96) = v149;
    v150 = Array._bridgeToObjectiveC()().super.isa;

    [v165 activateConstraints:v150];

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_100027DF4()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v22._object = 0xE000000000000000;
  v3._object = 0x80000001000DCBA0;
  v3._countAndFlagsBits = 0xD000000000000016;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v22);

  v6 = String._bridgeToObjectiveC()();

  [v0 setTitle:v6];

  v7 = [v1 mainBundle];
  v23._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v8._object = 0x80000001000DCBC0;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v23);

  v11 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v11];

  v12 = [v1 mainBundle];
  v24._object = 0xE000000000000000;
  v13._countAndFlagsBits = 1162760004;
  v13._object = 0xE400000000000000;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v24);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100028944;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C034;
  aBlock[3] = &unk_100104310;
  v18 = _Block_copy(aBlock);
  v19 = [objc_opt_self() actionWithTitle:v17 style:0 handler:v18];

  _Block_release(v18);

  v20 = [v0 addAction:v19];
}

void sub_1000280F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_flowController);
    if (v4)
    {
      v5 = v4;

      sub_1000AA9CC();
      v3 = v5;
    }
  }
}

uint64_t sub_10002816C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for Headphone_Manager();
  v8 = static Headphone_Manager.shared.getter();
  v9 = *(a4 + 152);
  if (v9)
  {
    *&v33[0] = *(a4 + 144);
    *(&v33[0] + 1) = v9;
    *&v30 = 58;
    *(&v30 + 1) = 0xE100000000000000;
    v29[0] = 45;
    v29[1] = 0xE100000000000000;
    sub_100008480();
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = dispatch thunk of Headphone_Manager.connectedHeadphones.getter();

  if (*(v13 + 16))
  {
    v14 = sub_1000CD118(v10, v12);
    v16 = v15;

    if (v16)
    {
      v17 = *(*(v13 + 56) + 8 * v14);

      HeadphoneDevice.featureContent.getter();
      if (v29[3])
      {
        sub_100008438(&qword_10011CB58, &qword_1000D85C0);
        sub_100008438(&qword_10011D520, &unk_1000D6A50);
        if (swift_dynamicCast())
        {
          if (*(&v31 + 1))
          {

            sub_10000E9B0(&v30, v33);
            sub_10000E9B0(v33, &v30);
            v18 = OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_contentProvider;
            swift_beginAccess();
            sub_10000EA2C(&v30, v5 + v18, &qword_10011D518, &unk_1000D6A40);
            swift_endAccess();
            sub_10000E390(a4, a1);
            return 1;
          }
        }

        else
        {
          v32 = 0;
          v30 = 0u;
          v31 = 0u;
        }
      }

      else
      {
        sub_10000E950(v29, &qword_10011CB48, &qword_1000D85B0);
        v30 = 0u;
        v31 = 0u;
        v32 = 0;
      }

      sub_10000E950(&v30, &qword_10011D518, &unk_1000D6A40);
      if (qword_10011C638 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000A570(v25, qword_100123040);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "ChargingCaseViewController: Headphone content is nil, exiting", v28, 2u);
      }

      if (*(v5 + OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_presenter))
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_100047C68();
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_30;
    }
  }

  else
  {
  }

  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000A570(v20, qword_100123040);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "ChargingCaseViewController: Headphone device is nil, exiting", v23, 2u);
  }

  if (*(v5 + OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_presenter) && swift_unknownObjectWeakLoadStrong())
  {
    sub_100047C68();
    swift_unknownObjectRelease();
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v24 = result;
    MobileGestalt_get_appleInternalInstallCapability();

LABEL_30:
    sub_10000E390(a4, a1);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ChargingCaseViewController(uint64_t a1)
{
  result = qword_10011D508;
  if (!qword_10011D508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100028768(uint64_t a1)
{
  sub_10000E064(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100028858(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_flowController);
  *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_flowController) = a1;
  return _objc_release_x1(a1, v2);
}

uint64_t sub_100028870(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService26ChargingCaseViewController_headphoneModel;
  swift_beginAccess();
  sub_10000EA2C(a1, v3 + v4, &qword_10011EBD0, &unk_1000D5EE0);
  return swift_endAccess();
}

uint64_t sub_10002890C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002894C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100028968()
{
  v1 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_9;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = [v3 leftAnchor];

  if (v5)
  {
    return v5;
  }

LABEL_9:
  v6 = [v0 leftAnchor];

  return v6;
}

unint64_t sub_100028A4C()
{
  v1 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
LABEL_3:
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (v3)
      {
        __break(1u);
      }

      else if ((v1 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v5 = *(v1 + 8 * result + 32);
          goto LABEL_8;
        }

        __break(1u);
        return result;
      }

      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
      v6 = v5;
      v7 = [v5 rightAnchor];

      if (v7)
      {
        return v7;
      }
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v8 = [v0 rightAnchor];

  return v8;
}

char *sub_100028B48(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v154 = a4;
  ObjectType = swift_getObjectType();
  v156 = type metadata accessor for BatteryIconStyle();
  v11 = *(v156 - 8);
  __chkstk_darwin(v156);
  v13 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadphoneBatteryInfo(0);
  __chkstk_darwin(v14);
  v16 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_stackView] = 0;
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_AXConstraints] = _swiftEmptyArrayStorage;
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_nonAXConstraints] = _swiftEmptyArrayStorage;
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews] = a1;
  v17 = a3;
  v6[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryType] = *(a3 + 9);
  if (a2 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v155 = a2;
  if (v18 >= 2)
  {
    v19 = v14;
LABEL_5:

    v20 = 0;
    a5 = 3;
LABEL_14:
    v22 = &off_10011D000;
    v23 = ObjectType;
    goto LABEL_15;
  }

  sub_100009C6C(a3, v16);
  v21 = v16[9];
  sub_100009CD0(v16);
  v19 = v14;
  if (v21 <= 1)
  {
    if (v21)
    {

      v20 = 0;
      a5 = 2;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v21 != 2)
  {
    if (v21 == 3)
    {
      goto LABEL_5;
    }

LABEL_11:

    v20 = 0;
    a5 = 1;
    goto LABEL_14;
  }

  v22 = &off_10011D000;
  v23 = ObjectType;
  v20 = v154;
LABEL_15:
  v153 = v17;
  v24 = *v17;
  v25 = *(v17 + 8);
  (*(v11 + 16))(v13, v17 + *(v19 + 28), v156);
  v26 = objc_allocWithZone(type metadata accessor for LabelledBatteryView());
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView] = sub_10003D578(v20, a5, v25, v13, v24);
  v158.receiver = v6;
  v158.super_class = v23;
  v27 = objc_msgSendSuper2(&v158, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v28 = objc_allocWithZone(UIStackView);
  sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
  v29 = v27;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v31 = [v28 initWithArrangedSubviews:isa];

  v32 = v22[168];
  v33 = *&v32[v29];
  *&v32[v29] = v31;
  v34 = v29;
  v35 = v31;

  v36 = v35;
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = *&v34[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView];
  v38 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView;
  v156 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView;
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = v34;
  ObjectType = v34;
  v40 = v39;
  [v40 addSubview:v36];
  [v40 addSubview:*&v34[v38]];
  v41 = [objc_allocWithZone(UILayoutGuide) init];
  v42 = [objc_allocWithZone(UILayoutGuide) init];
  [v40 addLayoutGuide:v41];
  [v40 addLayoutGuide:v42];
  v152 = sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1000D6A60;
  v154 = v41;
  v44 = [v41 topAnchor];
  v45 = [v40 topAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v43 + 32) = v46;
  v47 = [v36 topAnchor];
  v48 = [v41 bottomAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v43 + 40) = v49;
  v50 = [v36 leadingAnchor];
  v51 = [v40 leadingAnchor];

  v52 = [v50 constraintGreaterThanOrEqualToAnchor:v51];
  *(v43 + 48) = v52;
  v53 = [v36 trailingAnchor];
  v54 = [v40 trailingAnchor];

  v55 = [v53 constraintLessThanOrEqualToAnchor:v54];
  *(v43 + 56) = v55;
  v155 = v36;
  v56 = [v36 centerXAnchor];
  v57 = [v40 centerXAnchor];

  v58 = [v56 constraintEqualToAnchor:v57];
  *(v43 + 64) = v58;
  v59 = [v42 topAnchor];
  v60 = [v36 bottomAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v43 + 72) = v61;
  v63 = v156;
  v62 = ObjectType;
  v64 = [*(ObjectType + v156) topAnchor];
  v65 = [v42 bottomAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:20.0];

  *(v43 + 80) = v66;
  v67 = [*(v62 + v63) bottomAnchor];
  v68 = [v40 bottomAnchor];

  v69 = [v67 constraintEqualToAnchor:v68];
  *(v43 + 88) = v69;
  v70 = [*(v62 + v63) leadingAnchor];
  v71 = [v40 leadingAnchor];

  v72 = [v70 constraintGreaterThanOrEqualToAnchor:v71];
  *(v43 + 96) = v72;
  v73 = [*(v62 + v63) trailingAnchor];
  v74 = [v40 trailingAnchor];

  v75 = [v73 constraintLessThanOrEqualToAnchor:v74];
  *(v43 + 104) = v75;
  v76 = [*(v62 + v63) centerXAnchor];
  v77 = [v40 centerXAnchor];

  v78 = [v76 constraintEqualToAnchor:v77];
  *(v43 + 112) = v78;
  v79 = v154;
  v80 = [v154 heightAnchor];
  v81 = [v42 heightAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v43 + 120) = v82;
  *&v40[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_nonAXConstraints] = v43;
  v83 = v40;

  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1000D6A70;
  v85 = [v79 leadingAnchor];
  v86 = [v40 leadingAnchor];

  v87 = [v85 constraintEqualToAnchor:v86];
  *(v84 + 32) = v87;
  v88 = [v79 topAnchor];
  v89 = [v83 topAnchor];

  v90 = [v88 constraintEqualToAnchor:v89];
  *(v84 + 40) = v90;
  v91 = [v79 bottomAnchor];
  v92 = [v83 bottomAnchor];

  v93 = [v91 constraintEqualToAnchor:v92];
  *(v84 + 48) = v93;
  v94 = [v79 widthAnchor];
  v95 = [v42 widthAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];

  *(v84 + 56) = v96;
  v97 = [v79 heightAnchor];
  v98 = [v42 heightAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v84 + 64) = v99;
  v100 = [v42 topAnchor];
  v101 = [v83 topAnchor];

  v102 = [v100 constraintEqualToAnchor:v101];
  *(v84 + 72) = v102;
  v103 = [v42 bottomAnchor];
  v104 = [v83 bottomAnchor];

  v105 = [v103 constraintEqualToAnchor:v104];
  *(v84 + 80) = v105;
  v106 = [v42 leadingAnchor];
  v107 = [v79 trailingAnchor];
  v108 = [v106 constraintEqualToAnchor:v107];

  *(v84 + 88) = v108;
  v109 = [v42 trailingAnchor];
  v110 = [v83 trailingAnchor];

  v111 = [v109 constraintEqualToAnchor:v110];
  *(v84 + 96) = v111;
  v112 = v155;
  v113 = [v155 topAnchor];
  v114 = [v79 topAnchor];
  v115 = [v113 constraintGreaterThanOrEqualToAnchor:v114];

  *(v84 + 104) = v115;
  v116 = [v112 bottomAnchor];
  v117 = [v79 bottomAnchor];
  v118 = [v116 constraintLessThanOrEqualToAnchor:v117];

  *(v84 + 112) = v118;
  v119 = [v112 leadingAnchor];
  v120 = [v79 leadingAnchor];
  v121 = [v119 constraintGreaterThanOrEqualToAnchor:v120];

  *(v84 + 120) = v121;
  v122 = [v112 trailingAnchor];
  v123 = [v79 trailingAnchor];
  v124 = [v122 constraintLessThanOrEqualToAnchor:v123];

  *(v84 + 128) = v124;
  v125 = [v112 centerXAnchor];
  v126 = [v79 centerXAnchor];
  v127 = [v125 constraintEqualToAnchor:v126];

  *(v84 + 136) = v127;
  v128 = [v112 centerYAnchor];

  v129 = [v79 centerYAnchor];
  v130 = [v128 constraintEqualToAnchor:v129];

  *(v84 + 144) = v130;
  v132 = v156;
  v131 = ObjectType;
  v133 = [*(ObjectType + v156) topAnchor];
  v134 = [v42 topAnchor];
  v135 = [v133 constraintGreaterThanOrEqualToAnchor:v134];

  *(v84 + 152) = v135;
  v136 = [*(v131 + v132) bottomAnchor];
  v137 = [v42 bottomAnchor];
  v138 = [v136 constraintLessThanOrEqualToAnchor:v137];

  *(v84 + 160) = v138;
  v139 = [*(v131 + v132) leadingAnchor];
  v140 = [v42 leadingAnchor];
  v141 = [v139 constraintGreaterThanOrEqualToAnchor:v140];

  *(v84 + 168) = v141;
  v142 = [*(v131 + v132) trailingAnchor];
  v143 = [v42 trailingAnchor];
  v144 = [v142 constraintLessThanOrEqualToAnchor:v143];

  *(v84 + 176) = v144;
  v145 = [*(v131 + v132) centerXAnchor];
  v146 = [v42 centerXAnchor];
  v147 = [v145 constraintEqualToAnchor:v146];

  *(v84 + 184) = v147;
  v148 = [*(v131 + v132) centerYAnchor];
  v149 = [v42 centerYAnchor];
  v150 = [v148 constraintEqualToAnchor:v149];

  *(v84 + 192) = v150;
  *&v83[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_AXConstraints] = v84;

  sub_100029CBC();

  sub_100009CD0(v153);
  return v83;
}

void sub_100029CBC()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 preferredContentSizeCategory];

  UIContentSizeCategory.isAccessibilityCategory.getter();
  v2 = objc_opt_self();
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deactivateConstraints:isa];

  v4 = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:v4];
}

void sub_100029E98()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = objc_opt_self();
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = v3;
    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v4 currentTraitCollection];
      v9 = [v8 userInterfaceStyle];

      if (v9 == 2)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      URL._bridgeToObjectiveC()(1);
      v12 = v11;
      [v7 updateViewForAssetType:v10 adjustmentsURL:v11];
    }

    while (v2 != v5);
  }
}

void sub_100029FD0(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 preferredContentSizeCategory];
    v4 = UIContentSizeCategory.isAccessibilityCategory.getter();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [objc_opt_self() currentTraitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v5 == 2 || ((v8 ^ v5) & 1) != 0)
  {
    sub_100029CBC();
  }
}

id sub_10002A1FC()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_stackView);
  if (!v2 || (result = [v2 centerXAnchor]) == 0)
  {
    v4 = [v1 centerXAnchor];

    return v4;
  }

  return result;
}

char *sub_10002A38C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for HeadphoneBatteryInfo(0);
  result = __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v12 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
    return result;
  }

  v23 = v11;
  v24 = a3;
  v25 = a4;
  v26 = a2;
  v13 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(a1 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:v14];
    [v16 setContentMode:4];
    v17 = v16;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v13;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v12 != v13);
  a2 = v26;
  v18 = v27;
  a3 = v24;
  a4 = v25;
  v11 = v23;
LABEL_14:

  if (v18 >> 62)
  {
    sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);

    v19 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
    v19 = v18;
  }

  sub_100009C6C(a2, v11);
  v20 = objc_allocWithZone(type metadata accessor for HeadphoneImageBatteryView());
  v21 = sub_100028B48(v18, v19, v11, a3, a4);
  sub_100009CD0(a2);
  return v21;
}

void sub_10002A67C(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for HeadphoneViewModel(0) + 56));
  v3 = v2[13];
  v83[12] = v2[12];
  v83[13] = v3;
  v83[14] = v2[14];
  v4 = v2[9];
  v83[8] = v2[8];
  v83[9] = v4;
  v5 = v2[11];
  v83[10] = v2[10];
  v83[11] = v5;
  v6 = v2[5];
  v83[4] = v2[4];
  v83[5] = v6;
  v7 = v2[7];
  v83[6] = v2[6];
  v83[7] = v7;
  v8 = v2[1];
  v83[0] = *v2;
  v83[1] = v8;
  v9 = v2[3];
  v83[2] = v2[2];
  v83[3] = v9;
  if (sub_100026134(v83) != 1)
  {
    v10 = String._bridgeToObjectiveC()();
    [v1 setTitle:v10];

    v11 = String._bridgeToObjectiveC()();
    [v1 setSubtitle:v11];

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v13 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_10002B198;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C034;
    aBlock[3] = &unk_1001043D0;
    v14 = _Block_copy(aBlock);
    v15 = [objc_opt_self() actionWithTitle:v13 style:0 handler:v14];

    _Block_release(v14);

    v80 = v15;

    v16 = objc_opt_self();
    v17 = [v16 configurationWithPointSize:2 weight:88.0];
    v18 = objc_opt_self();
    v19 = [v18 systemBlueColor];
    v20 = [v16 configurationWithHierarchicalColor:v19];

    v78 = v17;
    v79 = v20;
    v21 = [v17 configurationByApplyingConfiguration:v20];
    v22 = sub_100005624();
    if (!v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = String._bridgeToObjectiveC()();
    }

    v23 = objc_opt_self();
    v77 = v21;
    v81 = [v23 systemImageNamed:v22 withConfiguration:v21];

    v24 = [objc_allocWithZone(UIImageView) initWithImage:v81];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v1 contentView];
    [v25 addSubview:v24];

    v26 = [v16 configurationWithPointSize:4 weight:34.0];
    v27 = [v18 systemGrayColor];
    v28 = [v16 configurationWithHierarchicalColor:v27];

    v75 = v28;
    v76 = v26;
    v29 = [v26 configurationByApplyingConfiguration:v28];
    v30 = String._bridgeToObjectiveC()();
    v31 = [v23 _systemImageNamed:v30 withConfiguration:v29];

    v74 = v29;
    v32 = [objc_allocWithZone(UIImageView) initWithImage:v31];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [v1 contentView];
    [v33 addSubview:v32];

    v73 = v31;
    v34 = [objc_allocWithZone(UIImageView) initWithImage:v31];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v1 contentView];
    [v35 addSubview:v34];

    if (v81)
    {
      v36 = v81;
      [v36 size];
      v38 = v37;
      [v36 size];
      v40 = v39;

      v41 = v38 / v40;
    }

    else
    {
      v41 = 1.0;
    }

    v42 = [v1 contentView];
    v43 = [v42 mainContentGuide];

    v72 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1000D5260;
    v45 = [v24 topAnchor];
    v46 = [v43 topAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];

    *(v44 + 32) = v47;
    v48 = [v24 bottomAnchor];
    v49 = [v43 bottomAnchor];
    v50 = [v48 constraintLessThanOrEqualToAnchor:v49];

    *(v44 + 40) = v50;
    v51 = [v24 centerXAnchor];
    v52 = [v43 centerXAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v44 + 48) = v53;
    v54 = [v24 heightAnchor];
    v55 = [v54 constraintEqualToConstant:110.0];

    *(v44 + 56) = v55;
    v56 = [v24 widthAnchor];
    v57 = [v24 heightAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 multiplier:v41];

    *(v44 + 64) = v58;
    v59 = [v32 centerYAnchor];
    v60 = [v24 centerYAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v44 + 72) = v61;
    v62 = [v32 trailingAnchor];

    v63 = [v24 leadingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];

    *(v44 + 80) = v64;
    v65 = [v34 centerYAnchor];
    v66 = [v24 centerYAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];

    *(v44 + 88) = v67;
    v68 = [v34 leadingAnchor];

    v69 = [v24 trailingAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];

    *(v44 + 96) = v70;
    sub_10000F5A0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v72 activateConstraints:isa];
  }
}

void sub_10002B02C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000B7214();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10002B160()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B1A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10002B1B8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_10002B1FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002B244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10002B3C0@<Q0>(uint64_t a1@<X8>)
{
  v78[0].n128_u8[0] = 1;
  v65.n128_u8[0] = 1;
  v15[240] = 0;

  v31 = xmmword_1000D6B50;
  v32 = xmmword_1000D6B60;
  v33 = xmmword_1000D6B70;
  v34.n128_u8[0] = 0;
  v35.n128_u64[0] = 0;
  v34.n128_u64[1] = 0;
  v35.n128_u8[8] = 1;
  v36 = 0uLL;
  v37[0] = 1;
  *&v37[8] = xmmword_1000D6B80;
  *&v37[24] = 0;
  v38[0] = 0;
  *&v38[8] = xmmword_1000D6B90;
  *&v38[24] = xmmword_1000D6B90;
  strcpy(&v38[40], "airpods");
  v39 = 0xE700000000000000;
  v40 = 0xD000000000000019;
  v41 = 0x80000001000DCF40;
  __asm { FMOV            V5.2D, #24.0 }

  v42 = _Q5;
  __asm { FMOV            V6.2D, #25.0 }

  v43 = _Q6;
  v44 = 0;
  v45[0] = xmmword_1000D6B50;
  v45[1] = xmmword_1000D6B60;
  v45[2] = xmmword_1000D6B70;
  v46 = 0;
  v48 = 0;
  v47 = 0;
  v49 = 1;
  v51 = 0;
  v50 = 0;
  v52 = 1;
  v53 = xmmword_1000D6B80;
  v54 = 0;
  v55 = 0;
  v56 = xmmword_1000D6B90;
  v57 = xmmword_1000D6B90;
  v58 = 0x73646F70726961;
  v59 = 0xE700000000000000;
  v60 = 0xD000000000000019;
  v61 = 0x80000001000DCF40;
  v62 = _Q5;
  v63 = _Q6;
  v64 = 0;
  sub_10000A304(&v31, v78);
  sub_10000A360(v45);
  v27 = *v38;
  v28 = *&v38[16];
  v29 = *&v38[32];
  v30 = v39;
  v23 = v35;
  v24 = v36;
  v25 = *v37;
  v26 = *&v37[16];
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v16 = v42;
  v17 = v43;
  v18 = v44;

  v73 = v27;
  v74 = v28;
  v75 = v29;
  v69 = v23;
  v70 = v24;
  v71 = v25;
  v72 = v26;
  v65 = v19;
  v66 = v20;
  v67 = v21;
  v68 = v22;
  *&v77[8] = v16;
  *&v77[24] = v17;
  v78[8] = v27;
  v78[9] = v28;
  v78[10] = v29;
  v78[4] = v23;
  v78[5] = v24;
  v78[6] = v25;
  v78[7] = v26;
  v78[0] = v19;
  v78[1] = v20;
  v78[2] = v21;
  v78[3] = v22;
  *v77 = 0x80000001000DCF60;
  *&v77[40] = v18;
  *&v76 = v30;
  *(&v76 + 1) = 0xD000000000000022;
  v79 = v30;
  v80 = 0xD000000000000022;
  v82 = v16;
  v83 = v17;
  v81 = 0x80000001000DCF60;
  v84 = v18;
  sub_10000A304(&v65, v15);
  sub_10000A360(v78);
  v8 = *&v77[16];
  *(a1 + 192) = *v77;
  *(a1 + 208) = v8;
  *(a1 + 224) = *&v77[32];
  v9 = v74;
  *(a1 + 128) = v73;
  *(a1 + 144) = v9;
  v10 = v76;
  *(a1 + 160) = v75;
  *(a1 + 176) = v10;
  v11 = v70;
  *(a1 + 64) = v69;
  *(a1 + 80) = v11;
  v12 = v72;
  *(a1 + 96) = v71;
  *(a1 + 112) = v12;
  v13 = v66;
  *a1 = v65;
  *(a1 + 16) = v13;
  result = v68;
  *(a1 + 32) = v67;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002B6D0@<Q0>(uint64_t a1@<X8>)
{
  v14[256] = 0;
  v14[248] = 0;

  v15 = xmmword_1000D6BA0;
  *&v16 = 0x4067400000000000;
  *(&v16 + 1) = 0x4051954FDF3B645ALL;
  v17 = xmmword_1000D6BB0;
  v18[0] = 0;
  *&v18[8] = xmmword_1000D6BC0;
  v18[24] = 0;
  v19 = 0uLL;
  v20[0] = 1;
  *&v20[8] = xmmword_1000D6BD0;
  *&v20[24] = 0;
  v21[0] = 0;
  *&v21[8] = xmmword_1000D6B90;
  *&v21[24] = xmmword_1000D6B90;
  *&v21[40] = 0xD000000000000020;
  *&v22 = 0x80000001000DCFC0;
  *(&v22 + 1) = 0xD000000000000032;
  *v23 = 0x80000001000DCFF0;
  __asm { FMOV            V5.2D, #23.0 }

  *&v23[8] = _Q5;
  *&v23[24] = 0;
  v24 = 0uLL;
  v25 = xmmword_1000D6BA0;
  v26 = 0x4067400000000000;
  v27 = 0x4051954FDF3B645ALL;
  v28 = xmmword_1000D6BB0;
  v29 = 0;
  v30 = xmmword_1000D6BC0;
  v31 = 0;
  v33 = 0;
  v32 = 0;
  v34 = 1;
  v35 = xmmword_1000D6BD0;
  v36 = 0;
  v37 = 0;
  v38 = xmmword_1000D6B90;
  v39 = xmmword_1000D6B90;
  v40 = 0xD000000000000020;
  v41 = 0x80000001000DCFC0;
  v42 = 0xD000000000000032;
  v43 = 0x80000001000DCFF0;
  v44 = _Q5;
  v46 = 0;
  v45 = 0;
  v47 = 0;
  sub_10000A304(&v15, v14);
  sub_10000A360(&v25);
  v7 = *&v23[16];
  *(a1 + 192) = *v23;
  *(a1 + 208) = v7;
  *(a1 + 224) = v24;
  v8 = *&v21[16];
  *(a1 + 128) = *v21;
  *(a1 + 144) = v8;
  v9 = v22;
  *(a1 + 160) = *&v21[32];
  *(a1 + 176) = v9;
  v10 = v19;
  *(a1 + 64) = *&v18[16];
  *(a1 + 80) = v10;
  v11 = *&v20[16];
  *(a1 + 96) = *v20;
  *(a1 + 112) = v11;
  v12 = v16;
  *a1 = v15;
  *(a1 + 16) = v12;
  result = *v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002B8A8@<Q0>(uint64_t a1@<X8>)
{
  v14[256] = 0;
  v14[248] = 0;

  v15 = xmmword_1000D6BE0;
  v16 = xmmword_1000D6BF0;
  v17 = xmmword_1000D6C00;
  v18[0] = 0;
  *&v18[8] = xmmword_1000D6C10;
  v18[24] = 0;
  v19 = 0uLL;
  v20[0] = 1;
  *&v20[8] = xmmword_1000D6C20;
  *&v20[24] = 0;
  v21[0] = 0;
  *&v21[8] = xmmword_1000D6C30;
  *&v21[24] = xmmword_1000D6B90;
  strcpy(&v21[40], "airpods.gen3");
  v21[53] = 0;
  *&v21[54] = -5120;
  *&v21[56] = 0xD000000000000027;
  *v22 = 0x80000001000DD030;
  __asm { FMOV            V7.2D, #28.0 }

  *&v22[8] = _Q7;
  *&v22[24] = 0;
  v23 = 0uLL;
  v24[0] = xmmword_1000D6BE0;
  v24[1] = xmmword_1000D6BF0;
  v24[2] = xmmword_1000D6C00;
  v25 = 0;
  v26 = xmmword_1000D6C10;
  v27 = 0;
  v29 = 0;
  v28 = 0;
  v30 = 1;
  v31 = xmmword_1000D6C20;
  v32 = 0;
  v33 = 0;
  v34 = xmmword_1000D6C30;
  v35 = xmmword_1000D6B90;
  strcpy(v36, "airpods.gen3");
  HIBYTE(v36[6]) = 0;
  v36[7] = -5120;
  v37 = 0xD000000000000027;
  v38 = 0x80000001000DD030;
  v39 = _Q7;
  v41 = 0;
  v40 = 0;
  v42 = 0;
  sub_10000A304(&v15, v14);
  sub_10000A360(v24);
  v7 = *&v22[16];
  *(a1 + 192) = *v22;
  *(a1 + 208) = v7;
  *(a1 + 224) = v23;
  v8 = *&v21[16];
  *(a1 + 128) = *v21;
  *(a1 + 144) = v8;
  v9 = *&v21[48];
  *(a1 + 160) = *&v21[32];
  *(a1 + 176) = v9;
  v10 = v19;
  *(a1 + 64) = *&v18[16];
  *(a1 + 80) = v10;
  v11 = *&v20[16];
  *(a1 + 96) = *v20;
  *(a1 + 112) = v11;
  v12 = v16;
  *a1 = v15;
  *(a1 + 16) = v12;
  result = *v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002BA70@<Q0>(uint64_t a1@<X8>)
{
  v14[256] = 0;
  v14[248] = 0;

  v15 = xmmword_1000D6BE0;
  v16 = xmmword_1000D6C40;
  v17 = xmmword_1000D6C00;
  v18[0] = 0;
  *&v18[8] = xmmword_1000D6C10;
  v18[24] = 0;
  v19 = 0uLL;
  v20[0] = 1;
  *&v20[8] = xmmword_1000D6C50;
  *&v20[24] = 0;
  v21[0] = 0;
  *&v21[8] = xmmword_1000D6C30;
  *&v21[24] = xmmword_1000D6B90;
  strcpy(&v21[40], "airpods.gen3");
  v21[53] = 0;
  *&v21[54] = -5120;
  *&v21[56] = 0xD000000000000027;
  *v22 = 0x80000001000DD030;
  __asm { FMOV            V7.2D, #28.0 }

  *&v22[8] = _Q7;
  *&v22[24] = xmmword_1000D6C60;
  *&v22[40] = 0x401C000000000000;
  v23[0] = xmmword_1000D6BE0;
  v23[1] = xmmword_1000D6C40;
  v23[2] = xmmword_1000D6C00;
  v24 = 0;
  v25 = xmmword_1000D6C10;
  v26 = 0;
  v28 = 0;
  v27 = 0;
  v29 = 1;
  v30 = xmmword_1000D6C50;
  v31 = 0;
  v32 = 0;
  v33 = xmmword_1000D6C30;
  v34 = xmmword_1000D6B90;
  strcpy(v35, "airpods.gen3");
  HIBYTE(v35[6]) = 0;
  v35[7] = -5120;
  v36 = 0xD000000000000027;
  v37 = 0x80000001000DD030;
  v38 = _Q7;
  v39 = xmmword_1000D6C60;
  v40 = 0x401C000000000000;
  sub_10000A304(&v15, v14);
  sub_10000A360(v23);
  v7 = *&v22[16];
  *(a1 + 192) = *v22;
  *(a1 + 208) = v7;
  *(a1 + 224) = *&v22[32];
  v8 = *&v21[16];
  *(a1 + 128) = *v21;
  *(a1 + 144) = v8;
  v9 = *&v21[48];
  *(a1 + 160) = *&v21[32];
  *(a1 + 176) = v9;
  v10 = v19;
  *(a1 + 64) = *&v18[16];
  *(a1 + 80) = v10;
  v11 = *&v20[16];
  *(a1 + 96) = *v20;
  *(a1 + 112) = v11;
  v12 = v16;
  *a1 = v15;
  *(a1 + 16) = v12;
  result = *v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002BC40@<Q0>(uint64_t a1@<X8>)
{
  v14[256] = 0;
  v14[248] = 0;

  v15 = xmmword_1000D6C70;
  v16 = xmmword_1000D6C80;
  v17 = xmmword_1000D6BB0;
  v18[0] = 0;
  *&v18[8] = xmmword_1000D6BC0;
  v18[24] = 0;
  v19 = 0uLL;
  v20[0] = 1;
  *&v20[8] = xmmword_1000D6C90;
  *&v20[24] = 0;
  v21[0] = 0;
  *&v21[8] = xmmword_1000D6B90;
  *&v21[24] = xmmword_1000D6B90;
  strcpy(&v21[40], "beats.fit.pro");
  *&v21[54] = -4864;
  *&v21[56] = 0xD00000000000001FLL;
  *v22 = 0x80000001000DD060;
  __asm { FMOV            V6.2D, #23.0 }

  *&v22[8] = _Q6;
  *&v22[24] = 0;
  v23 = 0uLL;
  v24[0] = xmmword_1000D6C70;
  v24[1] = xmmword_1000D6C80;
  v24[2] = xmmword_1000D6BB0;
  v25 = 0;
  v26 = xmmword_1000D6BC0;
  v27 = 0;
  v29 = 0;
  v28 = 0;
  v30 = 1;
  v31 = xmmword_1000D6C90;
  v32 = 0;
  v33 = 0;
  v34 = xmmword_1000D6B90;
  v35 = xmmword_1000D6B90;
  strcpy(v36, "beats.fit.pro");
  v36[7] = -4864;
  v37 = 0xD00000000000001FLL;
  v38 = 0x80000001000DD060;
  v39 = _Q6;
  v41 = 0;
  v40 = 0;
  v42 = 0;
  sub_10000A304(&v15, v14);
  sub_10000A360(v24);
  v7 = *&v22[16];
  *(a1 + 192) = *v22;
  *(a1 + 208) = v7;
  *(a1 + 224) = v23;
  v8 = *&v21[16];
  *(a1 + 128) = *v21;
  *(a1 + 144) = v8;
  v9 = *&v21[48];
  *(a1 + 160) = *&v21[32];
  *(a1 + 176) = v9;
  v10 = v19;
  *(a1 + 64) = *&v18[16];
  *(a1 + 80) = v10;
  v11 = *&v20[16];
  *(a1 + 96) = *v20;
  *(a1 + 112) = v11;
  v12 = v16;
  *a1 = v15;
  *(a1 + 16) = v12;
  result = *v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002BE04@<Q0>(uint64_t a1@<X8>)
{
  v16[256] = 0;
  v16[248] = 0;

  v17 = v14;
  v18 = xmmword_1000D6CA0;
  v19 = xmmword_1000D6CB0;
  v20[0] = 0;
  *&v20[8] = xmmword_1000D6CC0;
  v20[24] = 0;
  v21 = 0uLL;
  v22[0] = 1;
  *&v22[8] = xmmword_1000D6CD0;
  *&v22[24] = 0;
  v23[0] = 0;
  *&v23[8] = v15;
  *&v23[24] = xmmword_1000D6B90;
  strcpy(&v23[40], "airpodspro");
  v23[51] = 0;
  *&v23[52] = -369098752;
  *&v23[56] = 0xD000000000000025;
  *v24 = 0x80000001000DCF90;
  __asm { FMOV            V5.2D, #21.0 }

  *&v24[8] = _Q5;
  *&v24[24] = xmmword_1000D6CE0;
  *&v24[40] = 0x4024000000000000;
  v25[0] = v14;
  v25[1] = xmmword_1000D6CA0;
  v25[2] = xmmword_1000D6CB0;
  v26 = 0;
  v27 = xmmword_1000D6CC0;
  v28 = 0;
  v30 = 0;
  v29 = 0;
  v31 = 1;
  v32 = xmmword_1000D6CD0;
  v33 = 0;
  v34 = 0;
  v35 = v15;
  v36 = xmmword_1000D6B90;
  v37 = 0x7073646F70726961;
  v38 = 0xEA00000000006F72;
  v39 = 0xD000000000000025;
  v40 = 0x80000001000DCF90;
  v41 = _Q5;
  v42 = xmmword_1000D6CE0;
  v43 = 0x4024000000000000;
  sub_10000A304(&v17, v16);
  sub_10000A360(v25);
  v7 = *&v24[16];
  *(a1 + 192) = *v24;
  *(a1 + 208) = v7;
  *(a1 + 224) = *&v24[32];
  v8 = *&v23[16];
  *(a1 + 128) = *v23;
  *(a1 + 144) = v8;
  v9 = *&v23[48];
  *(a1 + 160) = *&v23[32];
  *(a1 + 176) = v9;
  v10 = v21;
  *(a1 + 64) = *&v20[16];
  *(a1 + 80) = v10;
  v11 = *&v22[16];
  *(a1 + 96) = *v22;
  *(a1 + 112) = v11;
  v12 = v18;
  *a1 = v17;
  *(a1 + 16) = v12;
  result = *v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002BFCC@<Q0>(uint64_t a1@<X8>)
{
  v14[256] = 0;
  v14[248] = 0;
  v14[240] = 0;

  v15 = xmmword_1000D6CF0;
  v16 = xmmword_1000D6D00;
  v17 = xmmword_1000D6CB0;
  v18[0] = 0;
  *&v18[8] = xmmword_1000D6D10;
  v18[24] = 0;
  v19 = xmmword_1000D6D20;
  v20[0] = 0;
  *&v20[8] = xmmword_1000D6CD0;
  *&v20[24] = 0;
  v21[0] = 0;
  *&v21[8] = xmmword_1000D6D30;
  *&v21[24] = xmmword_1000D6B90;
  strcpy(&v21[40], "airpodspro");
  v21[51] = 0;
  *&v21[52] = -369098752;
  *&v21[56] = 0xD000000000000025;
  *v22 = 0x80000001000DCF90;
  __asm { FMOV            V16.2D, #21.0 }

  *&v22[8] = _Q16;
  *&v22[24] = xmmword_1000D6CE0;
  *&v22[40] = 0x4024000000000000;
  v23[0] = xmmword_1000D6CF0;
  v23[1] = xmmword_1000D6D00;
  v23[2] = xmmword_1000D6CB0;
  v24 = 0;
  v25 = xmmword_1000D6D10;
  v26 = 0;
  v27 = xmmword_1000D6D20;
  v28 = 0;
  v29 = xmmword_1000D6CD0;
  v30 = 0;
  v31 = 0;
  v32 = xmmword_1000D6D30;
  v33 = xmmword_1000D6B90;
  v34 = 0x7073646F70726961;
  v35 = 0xEA00000000006F72;
  v36 = 0xD000000000000025;
  v37 = 0x80000001000DCF90;
  v38 = _Q16;
  v39 = xmmword_1000D6CE0;
  v40 = 0x4024000000000000;
  sub_10000A304(&v15, v14);
  sub_10000A360(v23);
  v7 = *&v22[16];
  *(a1 + 192) = *v22;
  *(a1 + 208) = v7;
  *(a1 + 224) = *&v22[32];
  v8 = *&v21[16];
  *(a1 + 128) = *v21;
  *(a1 + 144) = v8;
  v9 = *&v21[48];
  *(a1 + 160) = *&v21[32];
  *(a1 + 176) = v9;
  v10 = v19;
  *(a1 + 64) = *&v18[16];
  *(a1 + 80) = v10;
  v11 = *&v20[16];
  *(a1 + 96) = *v20;
  *(a1 + 112) = v11;
  v12 = v16;
  *a1 = v15;
  *(a1 + 16) = v12;
  result = *v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002C1A4@<Q0>(uint64_t a1@<X8>)
{
  v9[256] = 0;
  v9[248] = 0;

  v10 = xmmword_1000D6D40;
  v11 = xmmword_1000D6D50;
  v12 = xmmword_1000D6D60;
  v13[0] = 0;
  *&v13[8] = xmmword_1000D6CC0;
  v13[24] = 0;
  v14 = 0uLL;
  v15[0] = 1;
  *&v15[8] = xmmword_1000D6D70;
  *&v15[24] = 0;
  v16[0] = 0;
  *&v16[8] = xmmword_1000D6B90;
  *&v16[24] = xmmword_1000D6B90;
  *&v16[40] = 0xD000000000000010;
  *&v17 = 0x80000001000DCE60;
  *(&v17 + 1) = 0xD000000000000022;
  *v18 = 0x80000001000DCE80;
  *&v18[8] = xmmword_1000D6D80;
  *&v18[24] = 0;
  v19 = 0uLL;
  v20[0] = xmmword_1000D6D40;
  v20[1] = xmmword_1000D6D50;
  v20[2] = xmmword_1000D6D60;
  v21 = 0;
  v22 = xmmword_1000D6CC0;
  v23 = 0;
  v25 = 0;
  v24 = 0;
  v26 = 1;
  v27 = xmmword_1000D6D70;
  v28 = 0;
  v29 = 0;
  v30 = xmmword_1000D6B90;
  v31 = xmmword_1000D6B90;
  v32 = 0xD000000000000010;
  v33 = 0x80000001000DCE60;
  v34 = 0xD000000000000022;
  v35 = 0x80000001000DCE80;
  v36 = xmmword_1000D6D80;
  v38 = 0;
  v37 = 0;
  v39 = 0;
  sub_10000A304(&v10, v9);
  sub_10000A360(v20);
  v2 = *&v18[16];
  *(a1 + 192) = *v18;
  *(a1 + 208) = v2;
  *(a1 + 224) = v19;
  v3 = *&v16[16];
  *(a1 + 128) = *v16;
  *(a1 + 144) = v3;
  v4 = v17;
  *(a1 + 160) = *&v16[32];
  *(a1 + 176) = v4;
  v5 = v14;
  *(a1 + 64) = *&v13[16];
  *(a1 + 80) = v5;
  v6 = *&v15[16];
  *(a1 + 96) = *v15;
  *(a1 + 112) = v6;
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = *v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002C360@<Q0>(uint64_t a1@<X8>)
{
  v9[256] = 0;
  v9[248] = 0;

  v10 = xmmword_1000D6D40;
  v11 = xmmword_1000D6D50;
  v12 = xmmword_1000D6D60;
  v13[0] = 0;
  *&v13[8] = xmmword_1000D6CC0;
  v13[24] = 0;
  v14 = 0uLL;
  v15[0] = 1;
  *&v15[8] = xmmword_1000D6D70;
  *&v15[24] = 0;
  v16[0] = 0;
  *&v16[8] = xmmword_1000D6B90;
  *&v16[24] = xmmword_1000D6B90;
  *&v16[40] = 0xD000000000000010;
  *&v17 = 0x80000001000DCE40;
  *(&v17 + 1) = 0xD000000000000010;
  *v18 = 0x80000001000DCE40;
  *&v18[8] = xmmword_1000D6D80;
  *&v18[24] = 0;
  v19 = 0uLL;
  v20[0] = xmmword_1000D6D40;
  v20[1] = xmmword_1000D6D50;
  v20[2] = xmmword_1000D6D60;
  v21 = 0;
  v22 = xmmword_1000D6CC0;
  v23 = 0;
  v25 = 0;
  v24 = 0;
  v26 = 1;
  v27 = xmmword_1000D6D70;
  v28 = 0;
  v29 = 0;
  v30 = xmmword_1000D6B90;
  v31 = xmmword_1000D6B90;
  v32 = 0xD000000000000010;
  v33 = 0x80000001000DCE40;
  v34 = 0xD000000000000010;
  v35 = 0x80000001000DCE40;
  v36 = xmmword_1000D6D80;
  v38 = 0;
  v37 = 0;
  v39 = 0;
  sub_10000A304(&v10, v9);
  sub_10000A360(v20);
  v2 = *&v18[16];
  *(a1 + 192) = *v18;
  *(a1 + 208) = v2;
  *(a1 + 224) = v19;
  v3 = *&v16[16];
  *(a1 + 128) = *v16;
  *(a1 + 144) = v3;
  v4 = v17;
  *(a1 + 160) = *&v16[32];
  *(a1 + 176) = v4;
  v5 = v14;
  *(a1 + 64) = *&v13[16];
  *(a1 + 80) = v5;
  v6 = *&v15[16];
  *(a1 + 96) = *v15;
  *(a1 + 112) = v6;
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = *v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10002C508@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v115 = 1;
  v113 = 1;
  v111 = 1;
  memset(v149, 0, 48);
  v149[48] = 1;
  v151 = 0;
  v150 = 0;
  v152 = 1;
  v154 = 0;
  v153 = 0;
  v155 = 1;
  v157 = 0;
  v156 = 0;
  v159 = 0;
  v158 = 0;
  v160 = xmmword_1000D6B90;
  v161 = xmmword_1000D6B90;
  v162 = 0x6E6F687064616568;
  v163 = 0xEA00000000007365;
  v164 = 0xD000000000000011;
  v165 = 0x80000001000DCE20;
  v168 = 0;
  v167 = 0u;
  v166 = 0u;
  sub_10000A360(v149);
  v3 = objc_opt_self();
  v4 = [v3 beatsSoloPro];
  v5 = [v4 productID];

  if (v5 == a1)
  {
    LOBYTE(v100) = 1;

    v116 = xmmword_1000D6F00;
    v117 = xmmword_1000D6F10;
    v118 = 0uLL;
    v119 = 1;
    v121 = 0uLL;
    v122 = 1;
    v124 = 0uLL;
    v125 = 1;
    v128 = 0;
    v127 = 0uLL;
    v129 = 0;
    v131 = xmmword_1000D6B90;
    v132 = xmmword_1000D6B90;
    v133 = 0xD000000000000010;
    v134 = 0x80000001000DCE40;
    v135 = 0xD000000000000011;
    v136 = 0x80000001000DCE20;
    v139 = 0;
    v138 = 0u;
    v137 = 0u;
    v140 = xmmword_1000D6F00;
    v141 = xmmword_1000D6F10;
    v142 = 0uLL;
    v143.n128_u8[0] = 1;
    *&v144 = 0;
    v143.n128_u64[1] = 0;
    BYTE8(v144) = 1;
    v145 = 0uLL;
    v146[0] = 1;
    memset(&v146[8], 0, 24);
    v147[0] = 0;
    *&v147[8] = xmmword_1000D6B90;
    *&v147[24] = xmmword_1000D6B90;
    *&v147[40] = 0xD000000000000010;
    *&v147[48] = 0x80000001000DCE40;
    *&v147[56] = 0xD000000000000011;
    *v148 = 0x80000001000DCE20;
    memset(&v148[8], 0, 40);
    sub_10000A304(&v116, &v100);
    sub_10000A360(&v140);
    v6 = v116;
    v7 = v117;
    v8 = v118;
    v9 = v119;
    v114[0] = *v120;
    *(v114 + 3) = *&v120[3];
    v10 = v121;
    v11 = v122;
    v112[0] = *v123;
    *(v112 + 3) = *&v123[3];
    v12 = v124;
    v13 = v125;
    *(v110 + 3) = *&v126[3];
    v110[0] = *v126;
    v14 = v127;
    v15 = v128;
    v16 = v129;
    *(v109 + 3) = *&v130[3];
    v109[0] = *v130;
    v17 = v131;
    v18 = v132;
    v19 = v133;
    v20 = v134;
    v21 = v135;
    v22 = v136;
    v23 = v137;
    v24 = v138;
    v25 = v139;
LABEL_12:
    v34 = a2;
    goto LABEL_13;
  }

  v26 = [v3 airPods];
  v27 = [v26 productID];

  if (v27 != a1)
  {
    v35 = [v3 airPodsSecondGeneration];
    v36 = [v35 productID];

    if (v36 == a1)
    {
      sub_10002B3C0(&v116);
LABEL_11:
      v6 = v116;
      v7 = v117;
      v8 = v118;
      v9 = v119;
      v114[0] = *v120;
      *(v114 + 3) = *&v120[3];
      v10 = v121;
      v11 = v122;
      v112[0] = *v123;
      *(v112 + 3) = *&v123[3];
      v12 = v124;
      v13 = v125;
      *(v110 + 3) = *&v126[3];
      v110[0] = *v126;
      v14 = v127;
      v15 = v128;
      v16 = v129;
      *(v109 + 3) = *&v130[3];
      v109[0] = *v130;
      v17 = v131;
      v18 = v132;
      v19 = v133;
      v20 = v134;
      v21 = v135;
      v22 = v136;
      v23 = v137;
      v24 = v138;
      v25 = v139;
      goto LABEL_12;
    }

    v37 = [v3 airPodsPro];
    v38 = [v37 productID];

    if (v38 == a1)
    {
LABEL_10:
      sub_10002BE04(&v116);
      goto LABEL_11;
    }

    v46 = [v3 beatsX];
    v47 = [v46 productID];

    if (v47 == a1)
    {
      LOBYTE(v140) = 1;
      LOBYTE(v116) = 1;
      LOBYTE(v100) = 1;

      v48 = xmmword_1000D6ED0;
      v49 = xmmword_1000D6EE0;
LABEL_17:
      v116 = v48;
      v117 = v49;
      v118 = 0uLL;
      v119 = 1;
      v121 = 0uLL;
      v122 = 1;
      v124 = 0uLL;
      v125 = 1;
      v128 = 0;
      v127 = 0uLL;
      v129 = 0;
      v131 = xmmword_1000D6B90;
      v132 = xmmword_1000D6B90;
      v133 = 0x61652E7374616562;
      v134 = 0xEF73656E6F687072;
      v135 = 0xD000000000000011;
      v136 = 0x80000001000DCE20;
      v139 = 0;
      v50 = 0uLL;
      v138 = 0u;
      v137 = 0u;
      v140 = v48;
      v141 = v49;
      v142 = 0uLL;
      v143.n128_u8[0] = 1;
      *&v144 = 0;
      v143.n128_u64[1] = 0;
      BYTE8(v144) = 1;
      v145 = 0uLL;
      v146[0] = 1;
      memset(&v146[8], 0, 24);
      v147[0] = 0;
      *&v147[8] = xmmword_1000D6B90;
      *&v147[24] = xmmword_1000D6B90;
      *&v147[40] = 0x61652E7374616562;
      *&v147[48] = 0xEF73656E6F687072;
LABEL_27:
      *&v147[56] = 0xD000000000000011;
      *v148 = 0x80000001000DCE20;
      *&v148[8] = v50;
      *&v148[24] = v50;
LABEL_28:
      *&v148[40] = 0;
LABEL_29:
      sub_10000A304(&v116, &v100);
      sub_10000A360(&v140);
      v6 = v116;
      v7 = v117;
      v8 = v118;
      v9 = v119;
      v114[0] = *v120;
      *(v114 + 3) = *&v120[3];
      v10 = v121;
      v11 = v122;
      v112[0] = *v123;
      *(v112 + 3) = *&v123[3];
      v12 = v124;
      v13 = v125;
      *(v110 + 3) = *&v126[3];
      v110[0] = *v126;
      v14 = v127;
      v15 = v128;
      v16 = v129;
      *(v109 + 3) = *&v130[3];
      v109[0] = *v130;
      v17 = v131;
      v18 = v132;
      v19 = v133;
      v20 = v134;
      v21 = v135;
      v22 = v136;
      v23 = v137;
      v24 = v138;
      goto LABEL_6;
    }

    v51 = [v3 powerBeats3];
    v52 = [v51 productID];

    if (v52 == a1)
    {
      LOBYTE(v100) = 1;

      v53 = 0x80000001000DCF20;
      v116 = xmmword_1000D6EC0;
      v117 = xmmword_1000D6DF0;
      v118 = 0uLL;
      v119 = 1;
      v121 = 0uLL;
      v122 = 1;
      v124 = 0uLL;
      v125 = 1;
      v128 = 0;
      v127 = 0uLL;
      v129 = 0;
      v131 = xmmword_1000D6B90;
      v132 = xmmword_1000D6B90;
      v133 = 0xD000000000000011;
      v134 = 0x80000001000DCF20;
      v135 = 0xD000000000000011;
      v136 = 0x80000001000DCE20;
      v139 = 0;
      v50 = 0uLL;
      v138 = 0u;
      v137 = 0u;
      v140 = xmmword_1000D6EC0;
      v141 = xmmword_1000D6DF0;
      v142 = 0uLL;
      v143.n128_u8[0] = 1;
      *&v144 = 0;
      v143.n128_u64[1] = 0;
      BYTE8(v144) = 1;
      v145 = 0uLL;
      v146[0] = 1;
      memset(&v146[8], 0, 24);
      v147[0] = 0;
      *&v147[8] = xmmword_1000D6B90;
      *&v147[24] = xmmword_1000D6B90;
      *&v147[40] = 0xD000000000000011;
LABEL_26:
      *&v147[48] = v53;
      goto LABEL_27;
    }

    v54 = [v3 beatsSolo];
    v55 = [v54 productID];

    if (v55 == a1)
    {
      LOBYTE(v140) = 1;
      LOBYTE(v116) = 1;
      LOBYTE(v100) = 1;

      v56 = xmmword_1000D6EA0;
      v57 = xmmword_1000D6EB0;
LABEL_24:
      v60 = "beats.headphones";
LABEL_25:
      v53 = (v60 - 32) | 0x8000000000000000;
      v116 = v56;
      v117 = v57;
      v118 = 0uLL;
      v119 = 1;
      v121 = 0uLL;
      v122 = 1;
      v124 = 0uLL;
      v125 = 1;
      v128 = 0;
      v127 = 0uLL;
      v129 = 0;
      v131 = xmmword_1000D6B90;
      v132 = xmmword_1000D6B90;
      v133 = 0xD000000000000010;
      v134 = v53;
      v135 = 0xD000000000000011;
      v136 = 0x80000001000DCE20;
      v139 = 0;
      v50 = 0uLL;
      v138 = 0u;
      v137 = 0u;
      v140 = v56;
      v141 = v57;
      v142 = 0uLL;
      v143.n128_u8[0] = 1;
      *&v144 = 0;
      v143.n128_u64[1] = 0;
      BYTE8(v144) = 1;
      v145 = 0uLL;
      v146[0] = 1;
      memset(&v146[8], 0, 24);
      v147[0] = 0;
      *&v147[8] = xmmword_1000D6B90;
      *&v147[24] = xmmword_1000D6B90;
      *&v147[40] = 0xD000000000000010;
      goto LABEL_26;
    }

    v58 = [v3 beatsStudio];
    v59 = [v58 productID];

    if (v59 == a1)
    {
      LOBYTE(v140) = 1;
      LOBYTE(v116) = 1;
      LOBYTE(v100) = 1;

      v56 = xmmword_1000D6E80;
      v57 = xmmword_1000D6E90;
      goto LABEL_24;
    }

    v61 = [v3 powerBeatsPro];
    v62 = [v61 productID];

    if (v62 == a1)
    {

      v116 = xmmword_1000D6E40;
      v117 = xmmword_1000D6E50;
      v118 = xmmword_1000D6E60;
      v119 = 0;
      v121 = 0uLL;
      v122 = 1;
      v124 = 0uLL;
      v125 = 1;
      v127 = xmmword_1000D6E70;
      v128 = 0;
      v129 = 0;
      v131 = xmmword_1000D6B90;
      v132 = xmmword_1000D6B90;
      v133 = 0xD000000000000013;
      v134 = 0x80000001000DCED0;
      v135 = 0xD000000000000025;
      v136 = 0x80000001000DCEF0;
      __asm { FMOV            V4.2D, #11.0 }

      v137 = _Q4;
      v138 = 0uLL;
      v139 = 0;
      v140 = xmmword_1000D6E40;
      v141 = xmmword_1000D6E50;
      v142 = xmmword_1000D6E60;
      v143.n128_u8[0] = 0;
      *&v144 = 0;
      v143.n128_u64[1] = 0;
      BYTE8(v144) = 1;
      v145 = 0uLL;
      v146[0] = 1;
      *&v146[8] = xmmword_1000D6E70;
      *&v146[24] = 0;
      v147[0] = 0;
      *&v147[8] = xmmword_1000D6B90;
      *&v147[24] = xmmword_1000D6B90;
      *&v147[40] = 0xD000000000000013;
      *&v147[48] = 0x80000001000DCED0;
      *&v147[56] = 0xD000000000000025;
      *v148 = 0x80000001000DCEF0;
      *&v148[8] = _Q4;
      *&v148[32] = 0;
      *&v148[24] = 0;
      goto LABEL_28;
    }

    if (a1 == 8221)
    {
      sub_10002B6D0(&v116);
      goto LABEL_11;
    }

    v64 = [v3 powerBeats4];
    v65 = [v64 productID];

    if (v65 == a1)
    {
      LOBYTE(v140) = 1;
      LOBYTE(v116) = 1;
      LOBYTE(v100) = 1;

      v56 = xmmword_1000D6E20;
      v57 = xmmword_1000D6E30;
      v60 = "beats.powerbeats";
      goto LABEL_25;
    }

    v66 = [v3 airPodsMax];
    v67 = [v66 productID];

    if (v67 == a1 || (v68 = [v3 airPodsMax], v69 = objc_msgSend(v68, "altProductID"), v68, v69 == a1))
    {
      LOBYTE(v100) = 1;

      v116 = xmmword_1000D6E00;
      v117 = 0u;
      v118 = 0u;
      v119 = 1;
      v121 = 0uLL;
      v122 = 1;
      v124 = 0uLL;
      v125 = 1;
      v127 = 0uLL;
      v128 = 0x4059000000000000;
      v129 = 1;
      v131 = xmmword_1000D6E10;
      v132 = xmmword_1000D6E10;
      v133 = 0x6D73646F70726961;
      v134 = 0xEA00000000007861;
      v135 = 0xD000000000000011;
      v136 = 0x80000001000DCE20;
      v139 = 0;
      v138 = 0u;
      v137 = 0u;
      v141 = 0u;
      v142 = 0u;
      v140 = xmmword_1000D6E00;
      v143.n128_u8[0] = 1;
      *&v144 = 0;
      v143.n128_u64[1] = 0;
      BYTE8(v144) = 1;
      v145 = 0uLL;
      v146[0] = 1;
      *&v146[16] = 0;
      *&v146[8] = 0;
      *&v146[24] = 0x4059000000000000;
      v147[0] = 1;
      *&v147[8] = xmmword_1000D6E10;
      *&v147[24] = xmmword_1000D6E10;
      strcpy(&v147[40], "airpodsmax");
      v147[51] = 0;
      *&v147[52] = -369098752;
      *&v147[56] = 0xD000000000000011;
      *v148 = 0x80000001000DCE20;
      memset(&v148[8], 0, 40);
      goto LABEL_29;
    }

    v70 = [v3 beatsFlex];
    v71 = [v70 productID];

    if (v71 == a1)
    {
      LOBYTE(v140) = 1;
      LOBYTE(v116) = 1;
      LOBYTE(v100) = 1;

      v48 = xmmword_1000D6DE0;
      v49 = xmmword_1000D6DF0;
      goto LABEL_17;
    }

    v72 = [v3 b688];
    v73 = [v72 productID];

    if (v73 == a1)
    {
      sub_10002B8A8(&v116);
      goto LABEL_11;
    }

    if (a1 > 8221)
    {
      if (a1 == 8222)
      {
        goto LABEL_49;
      }

      v74 = 8224;
    }

    else
    {
      if (a1 == 8217)
      {
        goto LABEL_49;
      }

      v74 = 8219;
    }

    if (a1 != v74)
    {
      v75 = [v3 b507];
      v76 = [v75 productID];

      if (v76 == a1)
      {

        v116 = xmmword_1000D6D40;
        v117 = xmmword_1000D6D50;
        v118 = xmmword_1000D6DD0;
        v119 = 0;
        v121 = 0uLL;
        v122 = 1;
        v124 = 0uLL;
        v125 = 1;
        v127 = xmmword_1000D6D70;
        v128 = 0;
        v129 = 0;
        v131 = xmmword_1000D6B90;
        v132 = xmmword_1000D6B90;
        v133 = 0xD000000000000010;
        v134 = 0x80000001000DCE60;
        v135 = 0xD000000000000022;
        v136 = 0x80000001000DCE80;
        v137 = xmmword_1000D6D80;
        v138 = 0uLL;
        v139 = 0;
        v140 = xmmword_1000D6D40;
        v141 = xmmword_1000D6D50;
        v142 = xmmword_1000D6DD0;
        v143.n128_u8[0] = 0;
        *&v144 = 0;
        v143.n128_u64[1] = 0;
        BYTE8(v144) = 1;
        v145 = 0uLL;
        v146[0] = 1;
        *&v146[8] = xmmword_1000D6D70;
        *&v146[24] = 0;
        v147[0] = 0;
        *&v147[8] = xmmword_1000D6B90;
        *&v147[24] = xmmword_1000D6B90;
        *&v147[40] = 0xD000000000000010;
        *&v147[48] = 0x80000001000DCE60;
        *&v147[56] = 0xD000000000000022;
        *v148 = 0x80000001000DCE80;
        *&v148[8] = xmmword_1000D6D80;
        *&v148[32] = 0;
        *&v148[24] = 0;
      }

      else
      {
        v77 = [v3 b494];
        v78 = [v77 productID];

        if (v78 == a1 || (v79 = [v3 b494b], v80 = objc_msgSend(v79, "productID"), v79, v80 == a1))
        {
          sub_10002BC40(&v116);
          goto LABEL_11;
        }

        v81 = [v3 b698];
        v82 = [v81 productID];

        if (v82 == a1)
        {
          goto LABEL_10;
        }

        v83 = [v3 b698];
        v84 = [v83 altProductID];

        if (v84 == a1)
        {
          goto LABEL_10;
        }

        v85 = [v3 b788];
        v86 = [v85 productID];

        if (v86 == a1 || (v87 = [v3 b788], v88 = objc_msgSend(v87, "altProductID"), v87, v88 == a1))
        {
          sub_10002BFCC(&v116);
          goto LABEL_11;
        }

        v89 = [v3 b607];
        v90 = [v89 productID];

        if (v90 == a1)
        {
          sub_10002C1A4(&v116);
          goto LABEL_11;
        }

        v91 = [v3 b453];
        v92 = [v91 productID];

        if (v92 != a1)
        {
          v93 = [v3 b465];
          v94 = [v93 productID];

          if (v94 != a1)
          {
            v95 = [v3 b463];
            v96 = [v95 productID];

            if (v96 == a1)
            {
              sub_10002C360(&v116);
              goto LABEL_11;
            }

            v97 = [v3 b487];
            v98 = [v97 productID];

            if (v98 != a1)
            {
              sub_10001309C(&v140);
              v34 = a2;
              goto LABEL_14;
            }
          }
        }

        LOBYTE(v100) = 1;

        v116 = xmmword_1000D6D90;
        v117 = xmmword_1000D6DA0;
        v118 = 0uLL;
        v119 = 1;
        v121 = 0uLL;
        v122 = 1;
        v124 = 0uLL;
        v125 = 1;
        v128 = 0;
        v127 = 0uLL;
        v129 = 0;
        v131 = xmmword_1000D6B90;
        v132 = xmmword_1000D6B90;
        v133 = 0xD000000000000010;
        v134 = 0x80000001000DCE40;
        v135 = 0xD000000000000011;
        v136 = 0x80000001000DCE20;
        v139 = 0;
        v138 = 0u;
        v137 = 0u;
        v140 = xmmword_1000D6D90;
        v141 = xmmword_1000D6DA0;
        v142 = 0uLL;
        v143.n128_u8[0] = 1;
        *&v144 = 0;
        v143.n128_u64[1] = 0;
        BYTE8(v144) = 1;
        v145 = 0uLL;
        v146[0] = 1;
        memset(&v146[8], 0, 24);
        v147[0] = 0;
        *&v147[8] = xmmword_1000D6B90;
        *&v147[24] = xmmword_1000D6B90;
        *&v147[40] = 0xD000000000000010;
        *&v147[48] = 0x80000001000DCE40;
        *&v147[56] = 0xD000000000000011;
        *v148 = 0x80000001000DCE20;
        memset(&v148[8], 0, 32);
      }

      *&v148[40] = 0;
      sub_10000A304(&v116, &v100);
      sub_10000A360(&v140);
      v6 = v116;
      v7 = v117;
      v8 = v118;
      v9 = v119;
      v114[0] = *v120;
      *(v114 + 3) = *&v120[3];
      v10 = v121;
      v11 = v122;
      v112[0] = *v123;
      *(v112 + 3) = *&v123[3];
      v12 = v124;
      v13 = v125;
      *(v110 + 3) = *&v126[3];
      v110[0] = *v126;
      v14 = v127;
      v15 = v128;
      v16 = v129;
      *(v109 + 3) = *&v130[3];
      v109[0] = *v130;
      goto LABEL_5;
    }

LABEL_49:
    sub_10002BA70(&v116);
    goto LABEL_11;
  }

  v116 = xmmword_1000D6B50;
  v117 = xmmword_1000D6B60;
  v118 = xmmword_1000D6B70;
  v119 = 0;
  v121 = 0uLL;
  v122 = 1;
  v124 = 0uLL;
  v125 = 1;
  v127 = xmmword_1000D6B80;
  v128 = 0;
  v129 = 0;
  v131 = xmmword_1000D6B90;
  v132 = xmmword_1000D6B90;
  v133 = 0x73646F70726961;
  v134 = 0xE700000000000000;
  v135 = 0xD000000000000019;
  v136 = 0x80000001000DCF40;
  __asm { FMOV            V4.2D, #24.0 }

  v137 = _Q4;
  __asm { FMOV            V5.2D, #25.0 }

  v138 = _Q5;
  v139 = 0;
  v140 = xmmword_1000D6B50;
  v141 = xmmword_1000D6B60;
  v142 = xmmword_1000D6B70;
  v143.n128_u8[0] = 0;
  *&v144 = 0;
  v143.n128_u64[1] = 0;
  BYTE8(v144) = 1;
  v145 = 0uLL;
  v146[0] = 1;
  *&v146[8] = xmmword_1000D6B80;
  *&v146[24] = 0;
  v147[0] = 0;
  *&v147[8] = xmmword_1000D6B90;
  *&v147[24] = xmmword_1000D6B90;
  strcpy(&v147[40], "airpods");
  *&v147[48] = 0xE700000000000000;
  *&v147[56] = 0xD000000000000019;
  *v148 = 0x80000001000DCF40;
  *&v148[8] = _Q4;
  *&v148[24] = _Q5;
  *&v148[40] = 0;
  sub_10000A304(&v116, &v100);
  sub_10000A360(&v140);
  v6 = v116;
  v7 = v117;
  v8 = v118;
  v9 = v119;
  v114[0] = *v120;
  *(v114 + 3) = *&v120[3];
  v10 = v121;
  v11 = v122;
  v112[0] = *v123;
  *(v112 + 3) = *&v123[3];
  v12 = v124;
  v13 = v125;
  *(v110 + 3) = *&v126[3];
  v110[0] = *v126;
  v14 = v127;
  v15 = v128;
  v16 = v129;
  v109[0] = *v130;
  *(v109 + 3) = *&v130[3];
LABEL_5:
  v17 = v131;
  v18 = v132;
  v19 = v133;
  v20 = v134;
  v21 = v135;
  v22 = v136;
  v23 = v137;
  v24 = v138;
LABEL_6:
  v25 = v139;
  v34 = a2;
LABEL_13:
  v100 = v6;
  v101 = v7;
  v102 = v8;
  v103[0] = v9;
  *&v103[1] = v114[0];
  *&v103[4] = *(v114 + 3);
  *&v103[8] = v10;
  v103[24] = v11;
  *&v103[25] = v112[0];
  *&v103[28] = *(v112 + 3);
  v104 = v12;
  v105[0] = v13;
  *&v105[4] = *(v110 + 3);
  *&v105[1] = v110[0];
  *&v105[8] = v14;
  *&v105[24] = v15;
  v106[0] = v16;
  *&v106[4] = *(v109 + 3);
  *&v106[1] = v109[0];
  *&v106[8] = v17;
  *&v106[24] = v18;
  *&v106[40] = v19;
  *&v107 = v20;
  *(&v107 + 1) = v21;
  *v108 = v22;
  *&v108[8] = v23;
  *&v108[24] = v24;
  *&v108[40] = v25;
  nullsub_1();
  *v148 = *v108;
  *&v148[16] = *&v108[16];
  *&v148[32] = *&v108[32];
  *v147 = *v106;
  *&v147[16] = *&v106[16];
  *&v147[32] = *&v106[32];
  *&v147[48] = v107;
  v144 = *&v103[16];
  v145 = v104;
  *v146 = *v105;
  *&v146[16] = *&v105[16];
  v140 = v100;
  v141 = v101;
  v142 = v102;
  v143 = *v103;
LABEL_14:
  v39 = *&v148[16];
  *(v34 + 192) = *v148;
  *(v34 + 208) = v39;
  *(v34 + 224) = *&v148[32];
  v40 = *&v147[16];
  *(v34 + 128) = *v147;
  *(v34 + 144) = v40;
  v41 = *&v147[48];
  *(v34 + 160) = *&v147[32];
  *(v34 + 176) = v41;
  v42 = v145;
  *(v34 + 64) = v144;
  *(v34 + 80) = v42;
  v43 = *&v146[16];
  *(v34 + 96) = *v146;
  *(v34 + 112) = v43;
  v44 = v141;
  *v34 = v140;
  *(v34 + 16) = v44;
  result = v143;
  *(v34 + 32) = v142;
  *(v34 + 48) = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for HeadphoneLayoutMetrics.Mismatch(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneBatteryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneBatteryType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002DD10()
{
  result = qword_10011D5E8;
  if (!qword_10011D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D5E8);
  }

  return result;
}

void sub_10002DD64(uint64_t a1)
{
  sub_100053298(a1);
  if (*&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_connectAction])
  {

    [v1 removeAction:?];
  }
}

uint64_t type metadata accessor for USBHeadphoneConnectingViewController(uint64_t a1)
{
  result = qword_10011D618;
  if (!qword_10011D618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002DE88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

id sub_10002DF0C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10002DE88;
  v6[3] = &unk_100104658;
  v4 = _Block_copy(v6);

  [v3 setAccessoryAttached:v4];
  _Block_release(v4);
  return [v3 start];
}

id sub_10002DFD4()
{
  v1 = *v0;
  [*v0 setAccessoryAttached:0];

  return [v1 stop];
}

uint64_t sub_10002E024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002E03C()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D628);
  v1 = sub_10000A570(v0, qword_10011D628);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10002E104()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v2 - 8);
  v4 = v53 - v3;
  v5 = type metadata accessor for HeadphoneModel(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v53 - v10;
  v57.receiver = v0;
  v57.super_class = ObjectType;
  objc_msgSendSuper2(&v57, "viewDidLoad");
  [v0 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_beginAccess();
    sub_10000E88C(v13 + 16, v55, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v14 = v56;
    if (v56)
    {
      v15 = sub_10000E7E4(v55, v56);
      v53[1] = v53;
      v54 = v11;
      v16 = *(v14 - 8);
      __chkstk_darwin(v15);
      v18 = (v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v18);
      sub_10000E950(v55, &qword_10011FBC0, &unk_1000D5EF0);
      v19 = *v18;
      v20 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v19 + v20, v9);
      (*(v16 + 8))(v18, v14);
      v11 = v54;
      sub_10000E828(v9, v4);
      (*(v6 + 56))(v4, 0, 1, v5);
      goto LABEL_6;
    }

    sub_10000E950(v55, &qword_10011FBC0, &unk_1000D5EF0);
  }

  v21 = OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_headphoneModel;
  swift_beginAccess();
  sub_10000E88C(v0 + v21, v4, &qword_10011EBD0, &unk_1000D5EE0);
LABEL_6:
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000E950(v4, &qword_10011EBD0, &unk_1000D5EE0);
    if (qword_10011C618 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A570(v22, qword_10011D628);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Pause Media: Headphone Model is nil, exiting", v25, 2u);
    }
  }

  else
  {
    sub_10000E828(v4, v11);
    v26 = [objc_opt_self() configurationWithPointSize:4 weight:56.0];
    v27 = String._bridgeToObjectiveC()();
    v28 = [objc_opt_self() _systemImageNamed:v27 withConfiguration:v26];

    if (v28)
    {

      v29 = [objc_allocWithZone(UIImageView) initWithImage:v28];
      v30 = v29;
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v31 = [v0 contentView];
      [v31 addSubview:v30];

      v32 = [v0 contentView];
      v33 = [v32 mainContentGuide];

      v34 = objc_opt_self();
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1000D6000;
      v36 = [v30 topAnchor];
      v37 = [v33 topAnchor];
      v38 = [v36 constraintGreaterThanOrEqualToAnchor:v37];

      *(v35 + 32) = v38;
      v39 = [v30 bottomAnchor];
      v40 = [v33 bottomAnchor];
      v41 = [v39 constraintLessThanOrEqualToAnchor:v40];

      *(v35 + 40) = v41;
      v42 = [v30 centerYAnchor];
      v43 = [v33 centerYAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];

      *(v35 + 48) = v44;
      v45 = [v30 centerXAnchor];

      v46 = [v33 centerXAnchor];
      v47 = [v45 constraintEqualToAnchor:v46];

      *(v35 + 56) = v47;
      sub_10000F5A0();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v34 activateConstraints:isa];

      sub_100008438(&unk_1001200F0, &unk_1000D5F10);
      v49 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1000D5250;
      (*(v50 + 104))(v52 + v51, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.pauseMediaOnSleep(_:), v49);

      dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

      sub_10000E8F4(v11);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10002EA58()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v17 = sub_10002F6E4;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100104738;
  v5 = _Block_copy(&v13);
  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v17 = sub_10002F72C;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100104760;
  v10 = _Block_copy(&v13);
  v11 = [v6 actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  v12 = [v0 addAction:v11];
}

void sub_10002ED10()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_flowController);
  if (v1)
  {
    v2 = qword_10011C618;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_10011D628);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Requested Turn On for Pause Media on Sleep", v7, 2u);
    }

    sub_10000E88C(v3 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_interActor, v12, &qword_10011FBC0, &unk_1000D5EF0);
    if (v13)
    {
      v8 = *sub_10000E7E4(v12, v13) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v10 = *(v8 + 144);
      v9 = *(v8 + 152);

      v11.value._countAndFlagsBits = v10;
      v11.value._object = v9;
      HeadphoneProxFeatureManager.setPauseMediaOnSleepConfig(deviceAddress:enabled:)(v11, 1);

      sub_10000EA94(v12);
    }

    else
    {
      sub_10000E950(v12, &qword_10011FBC0, &unk_1000D5EF0);
    }

    sub_1000AA094(0, 0);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000B8CF0();

    swift_unknownObjectRelease();
  }
}

void sub_10002EF24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_10002EF80()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_flowController);
  if (v1)
  {
    v2 = qword_10011C618;
    v7 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_10011D628);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Requested Not Now for Pause Media on Sleep", v6, 2u);
    }

    sub_1000AA094(0, 1);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000B8FF0();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10002F0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeadphoneViewModel(0);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  v5 = v4[11];
  v6 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v7 = (a2 + v4[13]);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = (a2 + v4[14]);
  sub_10001309C(v27);
  v9 = v27[13];
  v8[12] = v27[12];
  v8[13] = v9;
  v8[14] = v27[14];
  v10 = v27[9];
  v8[8] = v27[8];
  v8[9] = v10;
  v11 = v27[11];
  v8[10] = v27[10];
  v8[11] = v11;
  v12 = v27[5];
  v8[4] = v27[4];
  v8[5] = v12;
  v13 = v27[7];
  v8[6] = v27[6];
  v8[7] = v13;
  v14 = v27[1];
  *v8 = v27[0];
  v8[1] = v14;
  v15 = v27[3];
  v8[2] = v27[2];
  v8[3] = v15;
  *(a2 + v4[15]) = 0;
  *(a2 + v4[16]) = 0;
  *(a2 + v4[17]) = _swiftEmptyArrayStorage;
  *(a2 + v4[18]) = _swiftEmptyArrayStorage;
  v16 = (a2 + v4[19]);
  v16[5] = 0u;
  v16[6] = 0u;
  v16[3] = 0u;
  v16[4] = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  *v16 = 0u;
  v17 = (a2 + v4[20]);
  *v17 = 0;
  v17[1] = 0;
  *(a2 + v4[21]) = 0;
  *(a2 + v4[22]) = 0;
  *(a2 + v4[23]) = 0;
  *(a2 + v4[24]) = 0;
  *a2 = sub_100033A5C(110);
  *(a2 + 8) = v18;
  *(a2 + 16) = sub_100033A5C(111);
  *(a2 + 24) = v19;
  v20 = type metadata accessor for HeadphoneModel(0);
  if (sub_10001E474(*(a1 + *(v20 + 136))))
  {
    v21 = sub_100033A5C(112);
    v23 = v22;

    *(a2 + 16) = v21;
    *(a2 + 24) = v23;
  }

  *(a2 + 32) = sub_100033A5C(113);
  *(a2 + 40) = v24;
  result = sub_100033A5C(114);
  *(a2 + 48) = result;
  *(a2 + 56) = v26;
  return result;
}

uint64_t type metadata accessor for HeadphonePauseMediaOnSleepViewController(uint64_t a1)
{
  result = qword_10011D688;
  if (!qword_10011D688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002F4B0(uint64_t a1)
{
  sub_10000E064(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10002F57C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v8.value._countAndFlagsBits = a2;
  v8.value._object = a3;
  LOBYTE(a3) = HeadphoneProxFeatureManager.shouldShowPauseMediaOnSleepCard(deviceAddress:)(v8);

  sub_10000E390(a4, a1);
  return a3 & 1;
}

uint64_t sub_10002F5F4(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_flowController);
  *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_flowController) = a1;
  return _objc_release_x1(a1, v2);
}

uint64_t sub_10002F60C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_headphoneModel;
  swift_beginAccess();
  sub_100013144(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_10002F6AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F714(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10002F764()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  [v0 setDismissalType:1];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() imageNamed:v2];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v1 contentView];
  [v5 addSubview:v4];

  v6 = [v1 contentView];
  v7 = [v6 mainContentGuide];

  [v4 frame];
  Height = CGRectGetHeight(v26);
  [v4 frame];
  Width = CGRectGetWidth(v27);
  v10 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000D5240;
  v12 = [v7 heightAnchor];
  v13 = [v12 constraintGreaterThanOrEqualToConstant:Height];

  *(v11 + 32) = v13;
  v14 = [v4 heightAnchor];
  v15 = [v14 constraintEqualToConstant:Height];

  *(v11 + 40) = v15;
  v16 = [v4 widthAnchor];
  v17 = [v16 constraintEqualToConstant:Width];

  *(v11 + 48) = v17;
  v18 = [v4 centerXAnchor];
  v19 = [v7 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v11 + 56) = v20;
  v21 = [v4 centerYAnchor];

  v22 = [v7 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v11 + 64) = v23;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 activateConstraints:isa];
}

void sub_10002FB40()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v8[4] = sub_1000302D0;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000C034;
  v8[3] = &unk_1001047F0;
  v5 = _Block_copy(v8);
  v6 = [objc_opt_self() actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  v7 = [v0 addAction:v6];
}

void sub_10002FCE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000BB0EC();
      swift_unknownObjectRelease();
    }
  }
}

void sub_10002FD54(int a1@<W0>, uint64_t a2@<X8>)
{
  HIDWORD(v40) = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  v7 = type metadata accessor for HeadphoneViewModel(0);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  v8 = v7[11];
  v9 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v10 = (a2 + v7[13]);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = (a2 + v7[14]);
  sub_10001309C(v42);
  v12 = v42[13];
  v11[12] = v42[12];
  v11[13] = v12;
  v11[14] = v42[14];
  v13 = v42[9];
  v11[8] = v42[8];
  v11[9] = v13;
  v14 = v42[11];
  v11[10] = v42[10];
  v11[11] = v14;
  v15 = v42[5];
  v11[4] = v42[4];
  v11[5] = v15;
  v16 = v42[7];
  v11[6] = v42[6];
  v11[7] = v16;
  v17 = v42[1];
  *v11 = v42[0];
  v11[1] = v17;
  v18 = v42[3];
  v11[2] = v42[2];
  v11[3] = v18;
  *(a2 + v7[15]) = 0;
  *(a2 + v7[16]) = 0;
  *(a2 + v7[17]) = _swiftEmptyArrayStorage;
  *(a2 + v7[18]) = _swiftEmptyArrayStorage;
  v19 = (a2 + v7[19]);
  v19[5] = 0u;
  v19[6] = 0u;
  v19[3] = 0u;
  v19[4] = 0u;
  v19[1] = 0u;
  v19[2] = 0u;
  *v19 = 0u;
  v20 = (a2 + v7[20]);
  *v20 = 0;
  v20[1] = 0;
  *(a2 + v7[21]) = 0;
  *(a2 + v7[22]) = 0;
  *(a2 + v7[23]) = 0;
  *(a2 + v7[24]) = 0;
  v21 = objc_opt_self();
  v22 = [v21 mainBundle];
  v43._object = 0xE000000000000000;
  v23._object = 0x80000001000DD190;
  v23._countAndFlagsBits = 0xD000000000000013;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v43);

  *a2 = v26;
  v27 = sub_10001E474(SHIDWORD(v40));
  if (v27)
  {
    v28 = 0x7374616542;
  }

  else
  {
    v28 = 0x2073646F50726941;
  }

  if (v27)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xEB000000006F7250;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0xD000000000000017;
  v30._object = 0x80000001000DD1B0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
  v31._countAndFlagsBits = v28;
  v31._object = v29;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v31);

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
  String.LocalizationValue.init(stringInterpolation:)();
  v33 = [v21 mainBundle];
  static Locale.current.getter();
  *(a2 + 16) = String.init(localized:table:bundle:locale:comment:)();
  *(a2 + 24) = v34;
  v35 = [v21 mainBundle];
  v44._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD00000000000001CLL;
  v36._object = 0x80000001000DD1D0;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v44);

  *(a2 + 32) = v39;
}

uint64_t sub_100030298()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000302D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000302F0(char *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v55 = a1;
  v54 = type metadata accessor for URL();
  v20 = *(v54 - 8);
  __chkstk_darwin(v54);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_player;
  *&v10[v23] = [objc_allocWithZone(AVPlayer) initWithPlayerItem:0];
  v24 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_playerLayer;
  v25 = [objc_opt_self() playerLayerWithPlayer:0];
  [v25 setOpacity:0.0];
  *&v10[v24] = v25;
  v26 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_videoPlayer;
  v27 = [objc_allocWithZone(AVQueuePlayer) init];
  [v27 setMuted:1];
  [v27 setAllowsExternalPlayback:0];
  *&v10[v26] = v27;
  v28 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_url;
  v29 = *(v20 + 16);
  v30 = a1;
  v31 = v54;
  v29(&v10[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_url], v30, v54);
  v32 = &v10[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_desiredBounds];
  *v32 = a6;
  v32[1] = a7;
  v32[2] = a8;
  v32[3] = a9;
  v33 = *&v10[v24];
  [v33 setPlayer:v27];

  v34 = *&v10[v26];
  v29(v22, &v10[v28], v31);
  v35 = objc_allocWithZone(AVPlayerItem);
  v36 = v34;
  URL._bridgeToObjectiveC()(v37);
  v39 = v38;
  v40 = [v35 initWithURL:v38];

  v41 = *(v20 + 8);
  v41(v22, v31);
  v42 = [objc_opt_self() playerLooperWithPlayer:v36 templateItem:v40];

  *&v10[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_playerLooper] = v42;
  v43 = type metadata accessor for ProxMovieLoopPlayer(0);
  v62.receiver = v10;
  v62.super_class = v43;
  v44 = objc_msgSendSuper2(&v62, "initWithFrame:", a2, a3, a4, a5);
  v45 = *&v44[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_videoPlayer];
  epoch = kCMTimeZero.epoch;
  v47 = v44;
  aBlock = kCMTimeZero.value;
  v57 = *&kCMTimeZero.timescale;
  v58 = epoch;
  [v45 seekToTime:&aBlock];
  v48 = [v47 layer];
  [v48 addSublayer:*&v47[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_playerLayer]];

  v49 = objc_opt_self();
  v50 = swift_allocObject();
  *(v50 + 16) = v47;
  v60 = sub_100030BD8;
  v61 = v50;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_100019340;
  v59 = &unk_100104840;
  v51 = _Block_copy(&aBlock);
  v52 = v47;

  [v49 animateWithDuration:v51 animations:0.15];
  _Block_release(v51);
  sub_100030C10();

  v41(v55, v31);
  return v52;
}

id sub_10003078C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ProxMovieLoopPlayer(0);
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_playerLayer;
  [*&v0[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_playerLayer] setBounds:{*&v0[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_desiredBounds], *&v0[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_desiredBounds + 8], *&v0[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_desiredBounds + 16], *&v0[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_desiredBounds + 24]}];
  v2 = [v0 layer];
  [v2 setMasksToBounds:0];

  v3 = [v0 layer];
  [v3 setCornerRadius:0.0];

  v4 = *&v0[v1];
  v5 = [v0 layer];
  [v5 bounds];

  v6 = [v0 layer];
  [v6 bounds];

  nullsub_1();
  [v4 setPosition:?];

  return [*&v0[v1] setVideoGravity:AVLayerVideoGravityResizeAspectFill];
}

id sub_1000309B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProxMovieLoopPlayer(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProxMovieLoopPlayer(uint64_t a1)
{
  result = qword_10011D728;
  if (!qword_10011D728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100030AF0(uint64_t a1)
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

uint64_t sub_100030BA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030BF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100030C10()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v15 = 0;
  v2 = [v1 setCategory:AVAudioSessionCategoryAmbient mode:AVAudioSessionModeDefault options:1 error:&v15];

  v3 = v15;
  if (v2 && (v4 = v15, v5 = [v0 sharedInstance], v15 = 0, v6 = objc_msgSend(v5, "setActive:withOptions:error:", 1, 0, &v15), v5, v3 = v15, v6))
  {

    v7 = v3;
  }

  else
  {
    v8 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10011C638 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A570(v9, qword_100123040);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to set audio session category: %@", v12, 0xCu);
      sub_100030EA8(v13);
    }

    else
    {
    }
  }
}

uint64_t sub_100030EA8(uint64_t a1)
{
  v2 = sub_100008438(&unk_10011D820, &qword_1000D7280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100030F10()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_player;
  *(v0 + v1) = [objc_allocWithZone(AVPlayer) initWithPlayerItem:0];
  v2 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_playerLayer;
  v3 = [objc_opt_self() playerLayerWithPlayer:0];
  [v3 setOpacity:0.0];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_videoPlayer;
  v5 = [objc_allocWithZone(AVQueuePlayer) init];
  [v5 setMuted:1];
  [v5 setAllowsExternalPlayback:0];

  *(v0 + v4) = v5;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100031038()
{
  result = qword_10011D738;
  if (!qword_10011D738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011D738);
  }

  return result;
}

uint64_t sub_100031084()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D740);
  v1 = sub_10000A570(v0, qword_10011D740);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100031174(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1000311C0()
{
  v0 = type metadata accessor for BatteryIconStyle();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  *v6 = 1120403456;
  *(v6 + 2) = 1;
  v7 = enum case for BatteryIconStyle.BatteryChargeType.DEOC(_:);
  v8 = type metadata accessor for BatteryIconStyle.BatteryChargeType();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  (*(v1 + 104))(v6, enum case for BatteryIconStyle.charging(_:), v0);
  (*(v1 + 16))(v4, v6, v0);
  v9 = objc_allocWithZone(type metadata accessor for ModernBatteryIcon());
  v10 = ModernBatteryIcon.init(_:darkMode:)();
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  result = (*(v1 + 8))(v6, v0);
  qword_10011D758 = v10;
  return result;
}

double sub_100031388()
{
  v1 = v0;
  v2 = sub_100008438(&qword_10011D7B0, &qword_1000D72F0);
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v44 = &v42 - v3;
  v4 = sub_100008438(&qword_10011D7B8, &qword_1000D72F8);
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = &v42 - v5;
  [v0 setModalInPresentation:1];
  v6 = [objc_opt_self() boldButton];
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v52._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = 0x80000001000DD4E0;
  v10.value._object = 0x80000001000DBB60;
  v10.value._countAndFlagsBits = 0xD000000000000010;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v52);

  v12 = String._bridgeToObjectiveC()();

  [v6 setTitle:v12 forState:0];

  sub_1000084D4(0, &qword_10011D7C0, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v6 addAction:v13 forControlEvents:64];

  v14 = [v1 buttonTray];
  v43 = v6;
  [v14 addButton:v6];

  type metadata accessor for HeadphoneProxFeatureManager();
  v15 = static HeadphoneProxFeatureManager.shared.getter();
  v16 = String.uppercased()();
  v17 = [objc_opt_self() linkButton];
  v18 = [v7 mainBundle];
  v53._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000025;
  v19._object = 0x80000001000DD500;
  v20.value._object = 0x80000001000DBB60;
  v20.value._countAndFlagsBits = 0xD000000000000010;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v53);

  v22 = String._bridgeToObjectiveC()();

  [v17 setTitle:v22 forState:0];

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v16;

  v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v17 addAction:v25 forControlEvents:64];

  v50 = v15;
  if (*(dispatch thunk of HeadphoneProxFeatureManager.connectedDevices.getter() + 16))
  {
    sub_1000CD118(v16._countAndFlagsBits, v16._object);
    v27 = v26;

    if (v27)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v28 = HeadphoneProxFeatureManager.syncFetchAudioAADevice(_:)();
  if (v28)
  {

LABEL_7:
    v29 = [v1 buttonTray];
    [v29 addButton:v17];
  }

  type metadata accessor for Headphone_Manager();
  v30 = static Headphone_Manager.shared.getter();
  v31 = v44;
  dispatch thunk of Headphone_Manager.$connectedHeadphones.getter();

  v32 = v46;
  v33 = Published.Publisher.didSet.getter();
  (*(v45 + 8))(v31, v32);
  v51 = v33;
  sub_100008438(&qword_10011D7C8, &qword_1000D7300);
  sub_10001C3D8(&qword_10011D7D0, &qword_10011D7C8, &qword_1000D7300, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100032CF8();
  v34 = v47;
  Publisher<>.removeDuplicates()();

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v16;
  v37 = v43;
  *(v36 + 40) = v43;
  *(v36 + 48) = v17;
  sub_10001C3D8(&unk_10011D7F0, &qword_10011D7B8, &qword_1000D72F8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v38 = v37;
  v39 = v17;
  v40 = v49;
  Publisher<>.sink(receiveValue:)();

  (*(v48 + 8))(v34, v40);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

void sub_100031AC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_presenter);
    v4 = Strong;
    swift_unknownObjectRetain();

    if (v3)
    {
      v5 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (v5)
      {
        sub_100047C68();
        swift_unknownObjectRelease();
      }
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_presenter);
    v8 = v6;
    swift_unknownObjectRetain();

    if (v7)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectRelease();
        if (v10)
        {
          sub_1000A0430();
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_100031BE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  __chkstk_darwin(v6 - 8);
  v8 = &v41[-v7];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v42[0] = 0;
    v42[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(104);
    v15._object = 0x80000001000DD530;
    v15._countAndFlagsBits = 0xD000000000000066;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a3;
    v16._object = a4;
    String.append(_:)(v16);
    URL.init(string:)();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_10000E950(v8, &qword_10011CF08, &unk_1000D7310);
      if (qword_10011C620 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000A570(v17, qword_10011D740);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "obcUpSell: deep link failed!", v20, 2u);
      }

      goto LABEL_12;
    }

    (*(v10 + 32))(v12, v8, v9);
    sub_100008438(&qword_10011D810, &unk_1000D7D20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D66A0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v22;
    *(inited + 48) = 1;
    *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 64) = v23;
    *(inited + 72) = 1;
    v24 = sub_1000A3764(inited);
    swift_setDeallocating();
    sub_100008438(&qword_10011D818, qword_1000D7320);
    swift_arrayDestroy();
    v25 = [objc_opt_self() defaultWorkspace];
    if (!v25)
    {
      (*(v10 + 8))(v12, v9);

      goto LABEL_12;
    }

    v27 = v25;
    URL._bridgeToObjectiveC()(v26);
    v29 = v28;
    sub_100047958(v24);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v42[0] = 0;
    v31 = [v27 openSensitiveURL:v29 withOptions:isa error:v42];

    if (v31)
    {
      v32 = *(v10 + 8);
      v33 = v42[0];
      v32(v12, v9);
LABEL_12:

      return;
    }

    v34 = v42[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10011C620 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000A570(v35, qword_10011D740);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = _convertErrorToNSError(_:)();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "HeadphoneOptimizedBatteryCharingViewController: Failed to open URL with LaunchServices: %@", v38, 0xCu);
      sub_10000E950(v39, &unk_10011D820, &qword_1000D7280);
    }

    else
    {
    }

    (*(v10 + 8))(v12, v9);
  }
}

void sub_1000321C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    type metadata accessor for Headphone_Manager();
    v10 = static Headphone_Manager.shared.getter();
    v36 = sub_100008480();
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v13 = v12;
    v14 = dispatch thunk of Headphone_Manager.connectedHeadphones.getter();

    if (*(v14 + 16))
    {
      sub_1000CD118(v11, v13);
      v16 = v15;
    }

    else
    {

      v16 = 0;
    }

    v17 = v9;
    v18 = [v17 buttonTray:&type metadata for String];
    v19 = [v18 allButtons];

    sub_1000084D4(0, &unk_10011D800, OBTrayButton_ptr);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      if (v21 != 1)
      {

        if (v21 == 2)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v21 == 1)
      {
        v23 = v17;
LABEL_29:

LABEL_30:
        return;
      }

      if (v21 != 2)
      {

LABEL_25:
        if (qword_10011C620 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000A570(v33, qword_10011D740);
        v23 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v23, v34, "Should never reach here!", v35, 2u);
        }

        goto LABEL_29;
      }
    }

    if (qword_10011C620 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A570(v22, qword_10011D740);
    v23 = v17;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v37 = a6;
      v26 = swift_slowAlloc();
      *v26 = 67109376;
      *(v26 + 4) = v16 & 1;
      *(v26 + 8) = 2048;
      v27 = [v23 buttonTray];
      v28 = [v27 allButtons];

      v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if (v29 >> 62)
      {
        v30 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a6 = v37;

      *(v26 + 10) = v30;

      _os_log_impl(&_mh_execute_header, v24, v25, "HeadphoneOptimizedBatteryCharingViewController connection changed, connected:%{BOOL}d buttons: %ld", v26, 0x12u);
    }

    else
    {

      v24 = v23;
    }

    v31 = [v23 buttonTray];
    [v31 removeAllButtons];

    v32 = [v23 buttonTray];
    [v32 addButton:a5];

    if (v16)
    {
      v17 = [v23 buttonTray];

      [v17 addButton:a6];
    }

    else
    {
      v17 = v23;
    }

    goto LABEL_29;
  }
}

id sub_100032740()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneOptimizedBatteryCharingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100032818()
{
  if (qword_10011C628 != -1)
  {
    swift_once();
  }

  v1 = qword_10011D758;

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:{0.0, 0.0, 60.0, 60.0}];
}

void sub_100032894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_presenter];
  *v6 = 0;
  *(v6 + 1) = 0;
  v2[OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_type] = 37;
  v7 = OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v2[v7] = static HeadphoneProxFeatureManager.shared.getter();
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_listeners] = &_swiftEmptySetSingleton;
  v8 = &v2[OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_btAddress];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = [objc_opt_self() mainBundle];
  v12 = "";
  if (v10 == 1)
  {
    v12 = "csImageRendererContext8";
    v13 = 0xD000000000000026;
  }

  else
  {
    v13 = 0xD000000000000028;
  }

  v29._object = 0xE000000000000000;
  v14 = v12 | 0x8000000000000000;
  v15.value._object = 0x80000001000DBB60;
  v15.value._countAndFlagsBits = 0xD000000000000010;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v13, v15, v11, v16, v29);

  v17 = [objc_opt_self() mainBundle];
  v30._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v18._object = 0x80000001000DD3A0;
  v19.value._object = 0x80000001000DBB60;
  v19.value._countAndFlagsBits = 0xD000000000000010;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v30);

  v21 = String._bridgeToObjectiveC()();

  v22 = String._bridgeToObjectiveC()();

  v23 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:{0.0, 0.0, 60.0, 60.0}];
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100032818;
  *(v24 + 24) = 0;
  aBlock[4] = sub_100032C2C;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031174;
  aBlock[3] = &unk_1001048D0;
  v25 = _Block_copy(aBlock);

  v26 = [v23 imageWithActions:v25];

  _Block_release(v25);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    v27.receiver = v3;
    v27.super_class = type metadata accessor for HeadphoneOptimizedBatteryCharingViewController();
    objc_msgSendSuper2(&v27, "initWithTitle:detailText:icon:contentLayout:", v21, v22, v26, 3);
  }
}

uint64_t sub_100032C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100032C6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032CAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100032CF8()
{
  result = qword_10011D7D8;
  if (!qword_10011D7D8)
  {
    sub_10000A408(&qword_10011D7E0, &qword_1000D7308);
    sub_100032D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D7D8);
  }

  return result;
}

unint64_t sub_100032D7C()
{
  result = qword_10011D7E8;
  if (!qword_10011D7E8)
  {
    type metadata accessor for HeadphoneDevice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D7E8);
  }

  return result;
}

uint64_t sub_100032DD4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100032E34()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D830);
  v1 = sub_10000A570(v0, qword_10011D830);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100032EFC(uint64_t a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = v41 - v8;
  __chkstk_darwin(v7);
  v11 = v41 - v10;
  sub_1000B34D8(a1);
  v12 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_secondaryAction;
  if (*&v1[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_secondaryAction])
  {
    [v1 removeAction:?];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    sub_1000145EC(v14 + 16, aBlock);
    swift_unknownObjectRelease();
    v15 = v45;
    if (v45)
    {
      v16 = sub_10000E7E4(aBlock, v45);
      v41[1] = v41;
      v17 = *(v15 - 1);
      v43 = v12;
      v18 = v17;
      __chkstk_darwin(v16);
      v42 = v4;
      v20 = (v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v20);
      sub_10001465C(aBlock);
      v41[0] = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = v11;
      v22 = *v20;
      v23 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v22 + v23, v9);
      (*(v18 + 8))(v20, v15);
      sub_10000E828(v9, v21);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = v21;
      v26 = v21;
      v27 = v41[0];
      sub_10000E390(v25, v41[0]);
      v28 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v29 = (v5 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
      v30 = swift_allocObject();
      sub_10000E828(v27, v30 + v28);
      *(v30 + v29) = v24;

      v31 = String._bridgeToObjectiveC()();
      v46 = sub_1000338B0;
      v47 = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000C034;
      v45 = &unk_1001049C0;
      v32 = _Block_copy(aBlock);
      v33 = [objc_opt_self() actionWithTitle:v31 style:1 handler:v32];

      _Block_release(v32);

      v34 = *&v1[v43];
      *&v1[v43] = v33;
      v35 = v33;

      v36 = [v1 addAction:v35];
      sub_10000E8F4(v26);
      return;
    }

    sub_10001465C(aBlock);
  }

  if (qword_10011C630 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000A570(v37, qword_10011D830);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "HeadphoneNotYoursViewController: Headphone Model is nil, exiting", v40, 2u);
  }
}

void sub_1000333D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for HeadphoneModel(0);
  if (*(a2 + *(v4 + 136)) == 8223 && *(a2 + *(v4 + 188)) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();

      if (v7)
      {
        sub_1000B626C();
LABEL_9:
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = swift_unknownObjectWeakLoadStrong();

      if (v10)
      {
        sub_1000B90EC(0);
        goto LABEL_9;
      }
    }
  }
}

uint64_t type metadata accessor for USBHeadphoneNotYoursViewController(uint64_t a1)
{
  result = qword_10011D870;
  if (!qword_10011D870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000335A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000335D8()
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 8))
  {
  }

  if (*(v5 + 112))
  {
  }

  v6 = v1[12];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v5 + v1[16]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100022640(*v9, v10);
  }

  v11 = v1[38];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v5 + v1[45];
  v15 = *(v14 + 8);
  if (v15 != 255)
  {
    sub_10001C2AC(*v14, v15 & 1);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_1000338B0(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadphoneModel(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000333D4(a1, v1 + v4, v5);
}

uint64_t sub_10003394C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100033964()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_100123040);
  sub_10000A570(v0, qword_100123040);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000339E0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_100123058);
  sub_10000A570(v0, qword_100123058);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100033A5C(char a1)
{
  v3 = sub_100035388(a1);
  v4 = v2;
  if (v3 != 0xD00000000000001BLL || 0x80000001000DD610 != v2)
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      goto LABEL_5;
    }

    if (v3 != 0xD00000000000001ELL || 0x80000001000DD630 != v4)
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_5;
      }

      if (v3 != 0xD000000000000023 || 0x80000001000DD650 != v4)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_5;
        }

        if (v3 != 0xD000000000000013 || 0x80000001000DD680 != v4)
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_5;
          }

          if (v3 != 0xD000000000000016 || 0x80000001000DD6A0 != v4)
          {
            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v19)
            {
              goto LABEL_5;
            }

            if (v3 != 0xD000000000000019 || 0x80000001000DD6C0 != v4)
            {
              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v20)
              {
                goto LABEL_5;
              }

              if (v3 != 0xD00000000000001CLL || 0x80000001000DD6E0 != v4)
              {
                v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v21)
                {
                  goto LABEL_5;
                }

                if (v3 == 0x4C4C41435F444E45 && v4 == 0xEE00454C5449545FLL)
                {
                  goto LABEL_30;
                }

                v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v22)
                {
                  goto LABEL_32;
                }

                if (v3 == 0xD000000000000011 && 0x80000001000DD700 == v4)
                {
                  goto LABEL_30;
                }

                v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v23)
                {
                  goto LABEL_32;
                }

                if (v3 == 0xD000000000000020 && 0x80000001000DD720 == v4)
                {
                  goto LABEL_30;
                }

                v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v24)
                {
                  goto LABEL_32;
                }

                if (v3 == 0xD000000000000021 && 0x80000001000DD750 == v4)
                {
LABEL_30:

LABEL_32:
                  v7 = [objc_opt_self() mainBundle];
                  v84 = 0xE000000000000000;
                  v9 = 0x80000001000DD900;
                  v10 = v3;
                  v11 = v4;
                  v8 = 0xD000000000000013;
                  goto LABEL_9;
                }

                v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v25)
                {
                  goto LABEL_32;
                }

                if (v3 != 0x4C41435F4554554DLL || v4 != 0xEF454C5449545F4CLL)
                {
                  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v26)
                  {
LABEL_48:
                    v6 = "Localizable-AdaptiveControls";
                    v27 = [objc_opt_self() mainBundle];
LABEL_49:
                    v7 = v27;
                    v8 = 0xD000000000000014;
                    goto LABEL_6;
                  }

                  if (v3 != 0xD000000000000012 || 0x80000001000DD780 != v4)
                  {
                    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v28)
                    {
                      goto LABEL_48;
                    }

                    if (v3 != 0xD00000000000001BLL || 0x80000001000DD7A0 != v4)
                    {
                      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v29)
                      {
                        goto LABEL_48;
                      }

                      if (v3 != 0xD00000000000001BLL || 0x80000001000DD7C0 != v4)
                      {
                        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v30)
                        {
                          goto LABEL_48;
                        }

                        if (v3 != 0xD00000000000001BLL || 0x80000001000DD7E0 != v4)
                        {
                          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v31)
                          {
                            goto LABEL_48;
                          }

                          if (v3 != 0xD00000000000001BLL || 0x80000001000DD800 != v4)
                          {
                            v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v32)
                            {
                              goto LABEL_48;
                            }

                            if (v3 != 0xD000000000000012 || 0x80000001000DD820 != v4)
                            {
                              v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v33)
                              {
                                goto LABEL_48;
                              }

                              if (v3 != 0x4C41435F4554554DLL || v4 != 0xEE00454E4F445F4CLL)
                              {
                                v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v34)
                                {
                                  goto LABEL_48;
                                }

                                if (v3 == 0xD000000000000017 && 0x80000001000DD840 == v4)
                                {

LABEL_129:
                                  v6 = "Localizable-HeadGestures";
                                  v54 = [objc_opt_self() mainBundle];
LABEL_130:
                                  v7 = v54;
                                  v84 = 0xE000000000000000;
                                  v8 = 0xD00000000000001CLL;
                                  goto LABEL_7;
                                }

                                v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v35)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD00000000000001ALL && v4 == 0x80000001000DE970)
                                {
                                  goto LABEL_75;
                                }

                                v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v36)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000019 && v4 == 0x80000001000DE950)
                                {
                                  goto LABEL_75;
                                }

                                v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v37)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000020 && v4 == 0x80000001000DE920)
                                {
                                  goto LABEL_75;
                                }

                                v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v38)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000023 && v4 == 0x80000001000DE8F0)
                                {
                                  goto LABEL_75;
                                }

                                v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v39)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000023 && v4 == 0x80000001000DE8C0)
                                {
                                  goto LABEL_75;
                                }

                                v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v40)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000026 && v4 == 0x80000001000DE890)
                                {
                                  goto LABEL_75;
                                }

                                v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v41)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD00000000000002ELL && v4 == 0x80000001000DE860)
                                {
                                  goto LABEL_75;
                                }

                                v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v42)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000031 && v4 == 0x80000001000DE820)
                                {
                                  goto LABEL_75;
                                }

                                v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v43)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD00000000000002ALL && v4 == 0x80000001000DE7F0)
                                {
                                  goto LABEL_75;
                                }

                                v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v44)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD00000000000002DLL && v4 == 0x80000001000DE7C0)
                                {
                                  goto LABEL_75;
                                }

                                v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v45)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD00000000000002CLL && v4 == 0x80000001000DE790)
                                {
                                  goto LABEL_75;
                                }

                                v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v46)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000030 && v4 == 0x80000001000DE750)
                                {
                                  goto LABEL_75;
                                }

                                v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v47)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000033 && v4 == 0x80000001000DE710)
                                {
                                  goto LABEL_75;
                                }

                                v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v48)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000032 && v4 == 0x80000001000DE6D0)
                                {
                                  goto LABEL_75;
                                }

                                v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v49)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000033 && v4 == 0x80000001000DE690)
                                {
                                  goto LABEL_75;
                                }

                                v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v50)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000036 && v4 == 0x80000001000DE650)
                                {
                                  goto LABEL_75;
                                }

                                v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v51)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD00000000000003ELL && v4 == 0x80000001000DE610)
                                {
                                  goto LABEL_75;
                                }

                                v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v52)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000035 && v4 == 0x80000001000DE5D0)
                                {
LABEL_75:

                                  goto LABEL_129;
                                }

                                v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v53)
                                {
                                  goto LABEL_129;
                                }

                                if (v3 == 0xD000000000000017 && v4 == 0x80000001000DE5B0)
                                {
                                  goto LABEL_139;
                                }

                                v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v55)
                                {
                                  goto LABEL_141;
                                }

                                if (v3 == 0xD000000000000012 && v4 == 0x80000001000DE590)
                                {
                                  goto LABEL_139;
                                }

                                v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v56)
                                {
LABEL_141:
                                  v6 = "REMOTE_CAMERA_WHATS_NEW_TITLE";
                                  v27 = [objc_opt_self() mainBundle];
                                  goto LABEL_49;
                                }

                                if (v3 == 0xD00000000000001CLL && v4 == 0x80000001000DE570)
                                {
LABEL_139:

                                  goto LABEL_141;
                                }

                                v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v57)
                                {
                                  goto LABEL_141;
                                }

                                if (v3 == 0xD00000000000001BLL && v4 == 0x80000001000DE550)
                                {
                                  goto LABEL_156;
                                }

                                v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v58)
                                {
                                  goto LABEL_158;
                                }

                                if (v3 == 0xD000000000000019 && v4 == 0x80000001000DE530)
                                {
                                  goto LABEL_156;
                                }

                                v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v59)
                                {
                                  goto LABEL_158;
                                }

                                if (v3 == 0xD000000000000016 && v4 == 0x80000001000DE510)
                                {
                                  goto LABEL_156;
                                }

                                v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v60)
                                {
                                  goto LABEL_158;
                                }

                                if (v3 == 0xD000000000000015 && v4 == 0x80000001000DE4F0)
                                {
                                  goto LABEL_156;
                                }

                                v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v61)
                                {
LABEL_158:
                                  v6 = "Localizable-PauseMediaOnSleep";
                                  v7 = [objc_opt_self() mainBundle];
                                  v8 = 0xD000000000000018;
                                  goto LABEL_6;
                                }

                                if (v3 == 0xD000000000000015 && v4 == 0x80000001000DE4D0)
                                {
LABEL_156:

                                  goto LABEL_158;
                                }

                                v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v62)
                                {
                                  goto LABEL_158;
                                }

                                if (v3 == 0xD000000000000016 && v4 == 0x80000001000DE4B0)
                                {
                                  goto LABEL_200;
                                }

                                v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v63)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD000000000000019 && v4 == 0x80000001000DE490)
                                {
                                  goto LABEL_200;
                                }

                                v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v64)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD000000000000017 && v4 == 0x80000001000DE470)
                                {
                                  goto LABEL_200;
                                }

                                v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v65)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD000000000000018 && v4 == 0x80000001000DE450)
                                {
                                  goto LABEL_200;
                                }

                                v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v66)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD000000000000033 && v4 == 0x80000001000DE410)
                                {
                                  goto LABEL_200;
                                }

                                v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v67)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD00000000000002ELL && v4 == 0x80000001000DE3E0)
                                {
                                  goto LABEL_200;
                                }

                                v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v68)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD000000000000025 && v4 == 0x80000001000DE3B0)
                                {
                                  goto LABEL_200;
                                }

                                v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v69)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD000000000000028 && v4 == 0x80000001000DE380)
                                {
                                  goto LABEL_200;
                                }

                                v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v70)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD000000000000028 && v4 == 0x80000001000DE350)
                                {
                                  goto LABEL_200;
                                }

                                v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v71)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD000000000000025 && v4 == 0x80000001000DE2F0)
                                {
                                  goto LABEL_200;
                                }

                                v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v72)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD000000000000028 && v4 == 0x80000001000DE2C0)
                                {
                                  goto LABEL_200;
                                }

                                v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v73)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD000000000000028 && v4 == 0x80000001000DE290)
                                {
                                  goto LABEL_200;
                                }

                                v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v74)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD000000000000027 && v4 == 0x80000001000DE260)
                                {
                                  goto LABEL_200;
                                }

                                v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v75)
                                {
LABEL_202:
                                  v7 = [objc_opt_self() mainBundle];
                                  v84 = 0xE000000000000000;
                                  v9 = 0x80000001000DBE70;
                                  v10 = v3;
                                  v11 = v4;
                                  v8 = 0xD00000000000001BLL;
                                  goto LABEL_9;
                                }

                                if (v3 == 0xD000000000000024 && v4 == 0x80000001000DE320)
                                {
LABEL_200:

                                  goto LABEL_202;
                                }

                                v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v76)
                                {
                                  goto LABEL_202;
                                }

                                if (v3 == 0xD00000000000001ALL && v4 == 0x80000001000DE240)
                                {
                                  goto LABEL_217;
                                }

                                v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v77)
                                {
                                  goto LABEL_219;
                                }

                                if (v3 == 0xD000000000000025 && v4 == 0x80000001000DE210)
                                {
                                  goto LABEL_217;
                                }

                                v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v78)
                                {
                                  goto LABEL_219;
                                }

                                if (v3 == 0xD000000000000023 && v4 == 0x80000001000DE1E0)
                                {
                                  goto LABEL_217;
                                }

                                v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v79)
                                {
                                  goto LABEL_219;
                                }

                                if (v3 == 0xD00000000000001CLL && v4 == 0x80000001000DE1C0)
                                {
                                  goto LABEL_217;
                                }

                                v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v80)
                                {
LABEL_219:
                                  v6 = "Localizable-HeartRateMonitor";
                                  v7 = [objc_opt_self() mainBundle];
                                  v84 = 0xE000000000000000;
                                  v8 = 0xD00000000000001DLL;
                                  goto LABEL_7;
                                }

                                if (v3 == 0xD00000000000001CLL && v4 == 0x80000001000DE1A0)
                                {
LABEL_217:

                                  goto LABEL_219;
                                }

                                v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v81)
                                {
                                  goto LABEL_219;
                                }

                                if (v3 == 0xD000000000000013 && v4 == 0x80000001000DD190)
                                {
                                  goto LABEL_225;
                                }

                                v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if ((v82 & 1) == 0)
                                {
                                  if (v3 == 0xD00000000000001CLL && v4 == 0x80000001000DD1D0)
                                  {
LABEL_225:

                                    goto LABEL_227;
                                  }

                                  v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                  if ((v83 & 1) == 0)
                                  {
                                    if (a1 - 145 < 0x20)
                                    {
                                      v7 = [objc_opt_self() mainBundle];
                                      v84 = 0xE000000000000000;
                                      v9 = 0x80000001000DC8A0;
                                      v10 = v3;
                                      v11 = v4;
                                      v8 = 0xD000000000000011;
                                      goto LABEL_9;
                                    }

                                    if (a1 - 129 > 0xF)
                                    {
                                      v7 = [objc_opt_self() mainBundle];
                                      v84 = 0xE000000000000000;
                                      v8 = 0x617A696C61636F4CLL;
                                      v9 = 0xEB00000000656C62;
                                      goto LABEL_8;
                                    }

                                    v6 = "ADAPTIVE_CONTROLS_TITLE";
                                    v54 = [objc_opt_self() mainBundle];
                                    goto LABEL_130;
                                  }
                                }

LABEL_227:
                                v6 = "TUTORIAL_POSITION_TITLE";
                                v7 = [objc_opt_self() mainBundle];
                                v8 = 0xD000000000000010;
                                goto LABEL_6;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                goto LABEL_48;
              }
            }
          }
        }
      }
    }
  }

LABEL_5:
  v6 = "Localizable-EndCall";
  v7 = [objc_opt_self() mainBundle];
  v8 = 0xD000000000000017;
LABEL_6:
  v84 = 0xE000000000000000;
LABEL_7:
  v9 = v6 | 0x8000000000000000;
LABEL_8:
  v10 = v3;
  v11 = v4;
LABEL_9:
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, *&v8, v7, v12, *(&v84 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_100035388(char a1)
{
  result = 0x45554E49544E4F43;
  switch(a1)
  {
    case 1:
      result = 0x574F4E5F544F4ELL;
      break;
    case 2:
      result = 1162760004;
      break;
    case 3:
      result = 1346980691;
      break;
    case 4:
      result = 0x4C5F50555F544553;
      break;
    case 5:
      result = 0x494147415F595254;
      break;
    case 6:
      result = 0x5455425F444C4F48;
      break;
    case 7:
      result = 0x455341435F504154;
      break;
    case 8:
      result = 0x5443454E4E4F43;
      break;
    case 9:
    case 10:
    case 32:
    case 48:
    case 57:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0x53444F50524941;
      break;
    case 13:
    case 34:
    case 44:
    case 90:
    case 113:
    case 114:
    case 119:
    case 122:
    case -122:
    case -78:
      result = 0xD00000000000001CLL;
      break;
    case 14:
    case 123:
    case -125:
    case -102:
    case -87:
      result = 0xD00000000000001FLL;
      break;
    case 15:
    case 79:
    case -91:
      result = 0xD00000000000002DLL;
      break;
    case 16:
    case 19:
    case 59:
    case -117:
    case -100:
    case -80:
      result = 0xD000000000000021;
      break;
    case 17:
    case 105:
    case -124:
    case -94:
    case -86:
      result = 0xD000000000000024;
      break;
    case 18:
    case 109:
    case -96:
    case -93:
    case -81:
      result = 0xD000000000000027;
      break;
    case 20:
    case 46:
    case 81:
      result = 0xD000000000000030;
      break;
    case 21:
      result = 0x45434E554F4E4E41;
      break;
    case 22:
    case 26:
    case 93:
    case 96:
    case 121:
      result = 0xD000000000000016;
      break;
    case 23:
    case 120:
    case -111:
    case -79:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0x4E5255545F43424FLL;
      break;
    case 25:
      result = 0x4542414C5F43424FLL;
      break;
    case 27:
    case 71:
    case 92:
    case 97:
    case 118:
    case -123:
      result = 0xD000000000000019;
      break;
    case 28:
      result = 0x5249415F5446454CLL;
      break;
    case 29:
      result = 0x49415F5448474952;
      break;
    case 30:
      result = 0x474E494752414843;
      break;
    case 31:
      result = 0xD000000000000010;
      break;
    case 33:
      result = 0x43415F4F49445541;
      break;
    case 35:
      result = 0x55415F4552414853;
      break;
    case 36:
      result = 0x524148535F574F4ELL;
      break;
    case 37:
    case -112:
      result = 0xD000000000000014;
      break;
    case 38:
      result = 0x454E4E4F43534944;
      break;
    case 39:
      result = 0x454E4E4F43534944;
      break;
    case 40:
      result = 0x495443454E4E4F43;
      break;
    case 41:
    case 124:
    case -118:
    case -84:
      result = 0xD00000000000001DLL;
      break;
    case 42:
    case 94:
    case 95:
    case 125:
    case -113:
      result = 0xD000000000000015;
      break;
    case 43:
    case 54:
    case 116:
    case -101:
      result = 0xD00000000000001ELL;
      break;
    case 45:
    case 55:
    case -89:
      result = 0xD000000000000022;
      break;
    case 47:
    case -109:
    case -104:
    case -82:
      result = 0xD000000000000029;
      break;
    case 49:
      result = 0xD00000000000001BLL;
      break;
    case 50:
    case 99:
    case 127:
    case -127:
    case -90:
      result = 0xD000000000000018;
      break;
    case 51:
    case 69:
    case 88:
    case 98:
    case 126:
      result = 0xD000000000000017;
      break;
    case 52:
    case 70:
    case 110:
    case -128:
    case -119:
    case -114:
    case -103:
    case -85:
      result = 0xD00000000000001ALL;
      break;
    case 53:
      result = 0xD00000000000001BLL;
      break;
    case 56:
      result = 0x4C4C41435F444E45;
      break;
    case 58:
    case 72:
    case -121:
    case -108:
    case -99:
    case -88:
      result = 0xD000000000000020;
      break;
    case 60:
    case 68:
      result = 0x4C41435F4554554DLL;
      break;
    case 61:
    case 67:
    case 89:
      result = 0xD000000000000012;
      break;
    case 62:
      result = 0xD00000000000001BLL;
      break;
    case 63:
      result = 0xD00000000000001BLL;
      break;
    case 64:
      result = 0xD00000000000001BLL;
      break;
    case 65:
      result = 0xD00000000000001BLL;
      break;
    case 66:
      result = 0xD00000000000001BLL;
      break;
    case 73:
    case 74:
    case 112:
    case 117:
    case -98:
      result = 0xD000000000000023;
      break;
    case 75:
    case -116:
    case -110:
    case -105:
    case -83:
      result = 0xD000000000000026;
      break;
    case 76:
    case 101:
      result = 0xD00000000000002ELL;
      break;
    case 77:
      result = 0xD000000000000031;
      break;
    case 78:
    case -107:
    case -95:
      result = 0xD00000000000002ALL;
      break;
    case 80:
      result = 0xD00000000000002CLL;
      break;
    case 82:
    case 84:
    case 100:
      result = 0xD000000000000033;
      break;
    case 83:
      result = 0xD000000000000032;
      break;
    case 85:
      result = 0xD000000000000036;
      break;
    case 86:
      result = 0xD00000000000003ELL;
      break;
    case 87:
      result = 0xD000000000000035;
      break;
    case 91:
      result = 0xD00000000000001BLL;
      break;
    case 102:
    case 106:
    case 111:
    case -120:
      result = 0xD000000000000025;
      break;
    case 103:
    case 104:
    case 107:
    case 108:
    case -106:
    case -97:
      result = 0xD000000000000028;
      break;
    case 115:
      result = 0xD00000000000001BLL;
      break;
    case -126:
      result = 0xD00000000000001BLL;
      break;
    case -115:
      result = 0xD00000000000001BLL;
      break;
    case -92:
      result = 0xD00000000000003BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000363D4(uint64_t a1, uint64_t a2)
{
  v3 = SFDeviceClassCodeGet();
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      v8 = a1;
      if (v3 == 2)
      {

        v6 = 1330661727;
      }

      else
      {

        v6 = 1095780703;
      }

      v4 = v6 & 0xFFFF0000FFFFFFFFLL | 0x4400000000;
      v5 = 0xE500000000000000;
      goto LABEL_10;
    }

    if (v3 == 1)
    {
      v8 = a1;

      v4 = 0x454E4F4850495FLL;
      v5 = 0xE700000000000000;
LABEL_10:
      String.append(_:)(*&v4);
      return v8;
    }
  }

  return a1;
}

uint64_t sub_1000364D8(uint64_t a1, char a2)
{
  v4 = sub_100035388(a2);
  v5 = v3;
  if (v4 == 0xD000000000000013 && 0x80000001000DECA0 == v3)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
LABEL_9:
      v19 = [objc_opt_self() mainBundle];
      v27._object = 0xE000000000000000;
      v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v20.value._object = 0xEB00000000656C62;
      v21._countAndFlagsBits = v4;
      v21._object = v5;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v27._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v27);

      countAndFlagsBits = String.init(format:arguments:)();

      return countAndFlagsBits;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  sub_10000E9C8(a1 + 32, &v24);
  sub_100008438(&unk_10011D880, &qword_1000D7378);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v24 = 0xD000000000000010;
  v25 = 0x80000001000DEEB0;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v9 = v24;
  v8 = v25;
  v10 = String.init(format:arguments:)();
  v12 = v11;

  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() bundleWithIdentifier:v13];

  if (v14)
  {
    v26._object = 0xE000000000000000;
    v15._countAndFlagsBits = v10;
    v15._object = v12;
    v16.value._countAndFlagsBits = v9;
    v16.value._object = v8;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v26)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000367D4()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D890);
  v1 = sub_10000A570(v0, qword_10011D890);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10003689C(void *a1)
{
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_marketingController] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_type] = 17;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_marketingItem] = a1;
  v3 = objc_allocWithZone(PRXCardContentView);
  v4 = a1;
  v5 = [v3 init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for HeadphoneMarketingUpsellViewController();
  v6 = objc_msgSendSuper2(&v9, "initWithContentView:", v5);

  v7 = v6;
  sub_1000369E0();

  return v7;
}

void sub_1000369E0()
{
  v1 = v0;
  type metadata accessor for AMSMarketingOffersClient();
  *(swift_initStackObject() + 16) = 0;
  v2 = sub_10009C3A4();
  swift_setDeallocating();
  swift_unknownObjectRelease();
  v3 = [objc_allocWithZone(AMSUIMarketingItemViewController) initWithMarketingItem:*(v0 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_marketingItem) bag:v2];
  [v3 setDelegate:v1];
  [v3 setAnonymousMetrics:1];
  v4 = [objc_opt_self() ams_sharedAccountStore];
  v5 = [v4 ams_activeiTunesAccount];

  [v3 setAccount:v5];
  if (qword_10011C648 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011D890);
  v7 = v3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    v12 = [v7 metricsOverlay];
    if (v12)
    {
      v13 = v12;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100008438(&qword_10011D958, qword_1000D73F0);
    v14 = String.init<A>(reflecting:)();
    v16 = sub_100078978(v14, v15, aBlock);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "HeadphoneMarketingUpsellViewController: Creating AMSUIMarketingItemViewController with metrics= %s", v10, 0xCu);
    sub_10000EA94(v11);
  }

  v17 = [v7 preload];
  aBlock[4] = sub_100036D54;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100036FC0;
  aBlock[3] = &unk_100104A28;
  v18 = _Block_copy(aBlock);
  [v17 addFinishBlock:v18];
  swift_unknownObjectRelease();
  _Block_release(v18);

  v19 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_marketingController);
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_marketingController) = v7;
}

void sub_100036D54(char a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_10011C648 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_10011D890);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v8 = String.init<A>(describing:)();
      v10 = sub_100078978(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "HeadphoneMarketingUpsellViewController: view controller preload error: %s", v6, 0xCu);
      sub_10000EA94(v7);
    }

    else
    {
    }
  }

  if (qword_10011C648 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A570(v11, qword_10011D890);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "HeadphoneMarketingUpsellViewController: view controller preload complete: %{BOOL}d", v14, 8u);
  }
}

void sub_100036FC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100037038()
{
  v1 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_marketingController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    [v0 addChildViewController:v2];
    v36 = v3;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [v0 contentView];
    [v4 addSubview:v36];

    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v7 = [v0 contentView];
    [v7 cardStyle];

    v8 = [v0 traitCollection];
    [v8 prx_cardSizeClass];

    PRXCardPreferredSize();
    if (v6 == 1)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 * 1.1;
    }

    v11 = [v0 contentView];
    v12 = [v11 mainContentGuide];

    v13 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000D5C80;
    v15 = [v0 contentView];
    v16 = [v15 heightAnchor];

    v17 = [v16 constraintEqualToConstant:v10];
    *(v14 + 32) = v17;
    v18 = [v36 heightAnchor];
    v19 = [v18 constraintEqualToConstant:v10];

    *(v14 + 40) = v19;
    v20 = [v36 topAnchor];
    v21 = [v12 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v14 + 48) = v22;
    v23 = [v36 leadingAnchor];
    v24 = [v12 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    *(v14 + 56) = v25;
    v26 = [v36 trailingAnchor];
    v27 = [v12 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    *(v14 + 64) = v28;
    v29 = [v36 bottomAnchor];

    v30 = [v12 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v14 + 72) = v31;
    sub_10000F5A0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 activateConstraints:isa];

    [v2 didMoveToParentViewController:v0];
  }

  else
  {
    if (qword_10011C648 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000A570(v33, qword_10011D890);
    v36 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v36, v34, "HeadphoneMarketingUpsellViewController: Marketing controller was not initilized properly", v35, 2u);
    }
  }
}

id sub_100037594(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HeadphoneMarketingUpsellViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100037658(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a3;
  swift_errorRetain();
  sub_100008438(&qword_10011D950, &unk_1000D88C0);
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  if (qword_10011C648 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A570(v9, qword_10011D890);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136315394;

    sub_100008438(&qword_10011D958, qword_1000D73F0);
    v13 = String.init<A>(reflecting:)();
    v15 = sub_100078978(v13, v14, &v20);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = sub_100078978(v6, v8, &v20);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "HeadphoneMarketingUpsellViewController: delegate didResolveWith called %s with error:%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  [a1 willMoveToParentViewController:0];
  v17 = [a1 view];
  [v17 removeFromSuperview];

  v18 = [v4 presentingViewController];
  [v18 removeFromParentViewController];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000B736C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000379B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000379CC()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D980);
  v1 = sub_10000A570(v0, qword_10011D980);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100037A94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeadphoneModel(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v116 - v11;
  v133.receiver = v1;
  v133.super_class = ObjectType;
  objc_msgSendSuper2(&v133, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    sub_1000145EC(v14 + 16, &v130);
    swift_unknownObjectRelease();
    v15 = v132;
    if (v132)
    {
      v16 = sub_10000E7E4(&v130, v132);
      v17 = *(v15 - 8);
      __chkstk_darwin(v16);
      v128 = v4;
      v19 = (&v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v19);
      sub_10001465C(&v130);
      v20 = *v19;
      v129 = v3;
      v21 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v22 = v20 + v21;
      v23 = v129;
      sub_10000E390(v22, v10);
      v24 = v19;
      v25 = v128;
      (*(v17 + 8))(v24, v15);
      sub_10000E828(v10, v12);
      type metadata accessor for HeadphoneProxFeatureManager();
      static HeadphoneProxFeatureManager.shared.getter();
      v26 = *(v12 + 18);
      v27 = *(v12 + 19);
      v28 = *(v25 + 104);
      v125 = enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:);
      v126 = v25 + 104;
      v124 = v28;
      v28(v6);
      v29 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
      v31 = v30;

      (*(v25 + 8))(v6, v23);
      if (v29)
      {
        v120 = v31;
        v121 = v29;
        v32 = sub_1000220A4();
        v127 = v27;
        if (v32)
        {
          sub_100021B8C();
          v34 = v33;
          v35 = [objc_allocWithZone(UIImageView) initWithImage:v33];
          v36 = [objc_opt_self() systemBlueColor];
          [v35 setTintColor:v36];

          v37 = v35;
          [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v37 setContentMode:1];

          v38 = sub_100022750(v26, v27);
          v40 = v39;

          sub_100022750(v26, v27);
          v42 = v41;
          v44 = v43;

          v45 = v42;
          v27 = v127;
          sub_100092F4C(v37, v38, v40, v45, v44);
        }

        v46 = sub_1000216CC(v26, v27);
        v123 = v26;
        if (v46)
        {
          v47 = [objc_opt_self() currentDevice];
          v48 = [v47 userInterfaceIdiom];

          v49 = 1145131081;
          if (!v48)
          {
            v49 = 0x454E4F485049;
          }

          v119 = v49;
          v50 = 0xE400000000000000;
          if (!v48)
          {
            v50 = 0xE600000000000000;
          }

          v118 = v50;
          v122 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_builder];
          sub_100021944();
          v52 = v51;
          v53 = [objc_allocWithZone(UIImageView) initWithImage:v51];
          v54 = [objc_opt_self() systemBlueColor];
          [v53 setTintColor:v54];

          v55 = v53;
          [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v55 setContentMode:1];

          v56 = objc_opt_self();
          v57 = [v56 mainBundle];
          v134._object = 0xE000000000000000;
          v58._countAndFlagsBits = 0xD000000000000020;
          v58._object = 0x80000001000DDE20;
          v23 = v129;
          v59.value._object = 0x80000001000DC8A0;
          v59.value._countAndFlagsBits = 0xD000000000000011;
          v60._countAndFlagsBits = 0;
          v60._object = 0xE000000000000000;
          v134._countAndFlagsBits = 0;
          v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v134);
          countAndFlagsBits = v61._countAndFlagsBits;

          v130 = 0;
          v131 = 0xE000000000000000;
          _StringGuts.grow(_:)(38);

          v130 = 0xD000000000000024;
          v131 = 0x80000001000DF160;
          v62._countAndFlagsBits = v119;
          v62._object = v118;
          String.append(_:)(v62);

          v63 = v130;
          v64 = v131;
          v65 = [v56 mainBundle];
          v135._object = 0xE000000000000000;
          v66.value._object = 0x80000001000DC8A0;
          v67._countAndFlagsBits = v63;
          v67._object = v64;
          v66.value._countAndFlagsBits = 0xD000000000000011;
          v68._countAndFlagsBits = 0;
          v68._object = 0xE000000000000000;
          v135._countAndFlagsBits = 0;
          v69 = NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v66, v65, v68, v135);
          v27 = v127;

          sub_100092F4C(v55, countAndFlagsBits, v61._object, v69._countAndFlagsBits, v69._object);

          v26 = v123;
        }

        v122 = v12;
        if (sub_1000216B0(v26, v27))
        {
          v119 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_builder];
          sub_100021A68();
          v71 = v70;
          v72 = [objc_allocWithZone(UIImageView) initWithImage:v70];
          v73 = [objc_opt_self() systemBlueColor];
          [v72 setTintColor:v73];

          v74 = v72;
          [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v74 setContentMode:1];

          v75 = objc_opt_self();
          v76 = [v75 mainBundle];
          v136._object = 0xE000000000000000;
          v77._countAndFlagsBits = 0xD000000000000026;
          v77._object = 0x80000001000DDD90;
          v78.value._object = 0x80000001000DC8A0;
          v78.value._countAndFlagsBits = 0xD000000000000011;
          v79._countAndFlagsBits = 0;
          v79._object = 0xE000000000000000;
          v136._countAndFlagsBits = 0;
          v80 = NSLocalizedString(_:tableName:bundle:value:comment:)(v77, v78, v76, v79, v136);

          v81 = [v75 mainBundle];
          v137._object = 0xE000000000000000;
          v82._countAndFlagsBits = 0xD000000000000034;
          v82._object = 0x80000001000DF120;
          v23 = v129;
          v83.value._object = 0x80000001000DC8A0;
          v83.value._countAndFlagsBits = 0xD000000000000011;
          v84._countAndFlagsBits = 0;
          v84._object = 0xE000000000000000;
          v137._countAndFlagsBits = 0;
          v85 = NSLocalizedString(_:tableName:bundle:value:comment:)(v82, v83, v81, v84, v137);

          sub_100092F4C(v74, v80._countAndFlagsBits, v80._object, v85._countAndFlagsBits, v85._object);
        }

        v86 = sub_100092C00();
        v87 = [v1 contentView];
        v88 = v86;
        [v87 addSubview:v88];

        v89 = [v1 contentView];
        v90 = [v89 mainContentGuide];

        v129 = objc_opt_self();
        sub_100008438(&unk_10011D960, &qword_1000D5CF0);
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_1000D6000;
        v92 = [v88 topAnchor];

        v93 = [v90 topAnchor];
        v94 = [v92 constraintEqualToAnchor:v93];

        *(v91 + 32) = v94;
        v95 = [v88 bottomAnchor];

        v96 = [v90 bottomAnchor];
        v97 = [v95 constraintLessThanOrEqualToAnchor:v96];

        *(v91 + 40) = v97;
        v98 = [v88 leadingAnchor];

        v99 = [v90 leadingAnchor];
        v100 = [v98 constraintEqualToAnchor:v99];

        *(v91 + 48) = v100;
        v101 = [v88 trailingAnchor];

        v102 = [v90 trailingAnchor];
        v103 = [v101 constraintEqualToAnchor:v102];

        *(v91 + 56) = v103;
        sub_10000F5A0();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v129 activateConstraints:isa];

        sub_100008438(&unk_1001200F0, &unk_1000D5F10);
        v105 = (*(v128 + 80) + 32) & ~*(v128 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1000D5250;
        v124(v106 + v105, v125, v23);

        dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

        v107 = v122;
      }

      else
      {
        if (qword_10011C650 != -1)
        {
          swift_once();
        }

        v112 = type metadata accessor for Logger();
        sub_10000A570(v112, qword_10011D980);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          _os_log_impl(&_mh_execute_header, v113, v114, "Yodel: HeadphoneYodelFeaturesViewController Payload is nil, exiting", v115, 2u);
        }

        v107 = v12;
      }

      sub_10000E8F4(v107);
      return;
    }

    sub_10001465C(&v130);
  }

  if (qword_10011C650 != -1)
  {
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  sub_10000A570(v108, qword_10011D980);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&_mh_execute_header, v109, v110, "Yodel: HeadphoneYodelFeaturesViewController Headphone Model is nil, exiting", v111, 2u);
  }
}

void sub_100038940(uint64_t *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &aBlock - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    sub_1000145EC(v10 + 16, &aBlock);
    swift_unknownObjectRelease();
    v11 = v41;
    if (v41)
    {
      v12 = sub_10000E7E4(&aBlock, v41);
      v13 = *(v11 - 1);
      __chkstk_darwin(v12);
      v15 = (&aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v15);
      sub_10001465C(&aBlock);
      v16 = *v15;
      v17 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v16 + v17, v6);
      (*(v13 + 8))(v15, v11);
      sub_10000E828(v6, v8);
      sub_100038F14(a1);
      v18 = String._bridgeToObjectiveC()();

      [v1 setTitle:v18];

      v19 = &off_1000D5000;
      if (sub_1000216CC(*(v8 + 18), *(v8 + 19)))
      {
        v20 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v21 = String._bridgeToObjectiveC()();
        v42 = sub_1000396C8;
        v43 = v20;
        aBlock = _NSConcreteStackBlock;
        v39 = 1107296256;
        v40 = sub_10000C034;
        v41 = &unk_100104AE0;
        v22 = _Block_copy(&aBlock);
        v23 = [objc_opt_self() actionWithTitle:v21 style:0 handler:v22];

        _Block_release(v22);

        v24 = [v1 addAction:v23];

        v19 = &off_1000D5000;
      }

      else
      {
        v29 = [objc_opt_self() mainBundle];
        v44._object = 0xE000000000000000;
        v30._countAndFlagsBits = 0xD000000000000016;
        v30._object = 0x80000001000DF0C0;
        v31.value._object = 0x80000001000DC8A0;
        v31.value._countAndFlagsBits = 0xD000000000000011;
        v32._countAndFlagsBits = 0;
        v32._object = 0xE000000000000000;
        v44._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v44);
      }

      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v34 = String._bridgeToObjectiveC()();

      v42 = sub_1000396A8;
      v43 = v33;
      aBlock = _NSConcreteStackBlock;
      v39 = *(v19 + 78);
      v40 = sub_10000C034;
      v41 = &unk_100104AB8;
      v35 = _Block_copy(&aBlock);
      v36 = [objc_opt_self() actionWithTitle:v34 style:1 handler:v35];

      _Block_release(v35);

      v37 = [v1 addAction:v36];

      sub_10000E8F4(v8);
      return;
    }

    sub_10001465C(&aBlock);
  }

  if (qword_10011C650 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000A570(v25, qword_10011D980);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Yodel: HeadphoneYodelFeaturesViewController Headphone Model is nil, exiting", v28, 2u);
  }
}

uint64_t sub_100038F14(uint64_t *a1)
{
  v2 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeadphoneModel(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v42 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v13 = Strong;
  swift_beginAccess();
  sub_1000145EC(v13 + 16, v45);
  swift_unknownObjectRelease();
  v14 = v46;
  if (!v46)
  {
    sub_10001465C(v45);
LABEL_8:
    if (qword_10011C650 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000A570(v29, qword_10011D980);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Yodel: title(_ viewModel Headphone Model is nil, exiting with default", v32, 2u);
    }

    countAndFlagsBits = *a1;
    goto LABEL_13;
  }

  v43 = a1;
  v15 = sub_10000E7E4(v45, v46);
  v44 = &v42;
  v16 = *(v14 - 8);
  __chkstk_darwin(v15);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v18);
  sub_10001465C(v45);
  v19 = *v18;
  v20 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  sub_10000E390(v19 + v20, v9);
  (*(v16 + 8))(v18, v14);
  sub_10000E828(v9, v11);
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v21 = *(v11 + 18);
  v22 = *(v11 + 19);
  (*(v3 + 104))(v5, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v2);
  v23 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
  v25 = v24;

  (*(v3 + 8))(v5, v2);
  if (!v23)
  {
    sub_1000216B0(v21, v22);
    goto LABEL_15;
  }

  v26 = [v25 hearingProtectionRegionStatus];
  v27 = sub_1000216B0(v21, v22);
  if (v26 != 2)
  {
LABEL_15:
    v33 = "YODEL_FEATURE_CONTINUE";
    v34 = [objc_opt_self() mainBundle];
    v41 = 0xE000000000000000;
    v35 = 0xD000000000000017;
LABEL_16:
    v36 = v33 | 0x8000000000000000;
    v37.value._object = 0x80000001000DC8A0;
    v37.value._countAndFlagsBits = 0xD000000000000011;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v39 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v35, v37, v34, v38, *(&v41 - 1))._countAndFlagsBits;

    sub_10000E8F4(v11);
    return countAndFlagsBits;
  }

  if (!v27)
  {
    v33 = "YODEL_FEATURE_LSR_TITLE";
    v34 = [objc_opt_self() mainBundle];
    v41 = 0xE000000000000000;
    v35 = 0xD000000000000013;
    goto LABEL_16;
  }

  sub_10000E8F4(v11);
  countAndFlagsBits = *v43;
LABEL_13:

  return countAndFlagsBits;
}

void sub_100039410(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000CE398();
      swift_unknownObjectRelease();
    }
  }
}

void sub_100039484(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000B5D54(0);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100039670()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000396B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000396D8()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D9E0);
  v1 = sub_10000A570(v0, qword_10011D9E0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000397A0()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___imageView);
  }

  else
  {
    sub_100039800();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100039800()
{
  if (qword_10011C6F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100123198;
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {
    v3 = [objc_allocWithZone(UIImageView) initWithImage:v2];
    v4 = [objc_opt_self() systemBlueColor];
    [v3 setTintColor:v4];

    v5 = v3;
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setContentMode:1];
  }

  else
  {
    __break(1u);
  }
}

id sub_100039954()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___topAsset;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___topAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___topAsset);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = sub_1000397A0();
    [v4 addSubview:v5];

    [*(v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___imageView) pinToOther:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:180.0];

    [v7 setActive:1];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_100039A80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v3 - 8);
  v24 = &v22 - v4;
  v25.receiver = v1;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "viewDidLoad");
  [v1 setDismissalType:1];
  v5 = [v1 contentView];
  v6 = sub_100039954();
  [v5 addSubview:v6];

  v7 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___topAsset];
  v8 = [v1 contentView];
  v9 = [v8 mainContentGuide];

  [v7 pinToOtherWithLayoutGuide:v9];
  v10 = &v1[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_model];
  swift_beginAccess();
  v11 = type metadata accessor for HeadphoneModel(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v22 = v12 + 48;
  v23 = v13;
  result = v13(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100008438(&unk_1001200F0, &unk_1000D5F10);
    v15 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000D5250;
    (*(v16 + 104))(v18 + v17, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v15);

    dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

    v19 = v24;
    sub_10000E88C(v10, v24, &qword_10011EBD0, &unk_1000D5EE0);
    result = v23(v19, 1, v11);
    if (result != 1)
    {
      type metadata accessor for HeadphoneYodelHearingProtectionViewController(0);
      v20 = &v1[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_presenter];
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10001F218(v1, v19, Strong, *(v20 + 1));
      swift_unknownObjectRelease();
      return sub_10000E8F4(v19);
    }
  }

  __break(1u);
  return result;
}

void sub_100039ECC()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  v9 = type metadata accessor for HeadphoneModel(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v62 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    sub_10000E88C(v17 + 16, &aBlock, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v18 = v74;
    if (v74)
    {
      v66 = v5;
      v67 = v3;
      v68 = v2;
      v19 = sub_10000E7E4(&aBlock, v74);
      v69 = v9;
      v70 = v15;
      v20 = *(v18 - 1);
      __chkstk_darwin(v19);
      v22 = (&v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v20 + 16))(v22);
      sub_10000E950(&aBlock, &qword_10011FBC0, &unk_1000D5EF0);
      v23 = *v22;
      v24 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v23 + v24, v13);
      (*(v20 + 8))(v22, v18);
      v25 = v70;
      sub_10000E828(v13, v70);
      sub_10000E390(v25, v8);
      v26 = v10;
      v27 = v69;
      (*(v10 + 56))(v8, 0, 1, v69);
      v28 = v1 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_model;
      swift_beginAccess();
      sub_100013144(v8, v28);
      swift_endAccess();
      sub_10003A7E4();
      v29 = String._bridgeToObjectiveC()();

      [v1 setTitle:v29];

      sub_10003AA58();
      v30 = String._bridgeToObjectiveC()();

      [v1 setSubtitle:v30];

      v63 = objc_opt_self();
      v31 = [v63 mainBundle];
      v77._object = 0xE000000000000000;
      v32._countAndFlagsBits = 0xD000000000000018;
      v32._object = 0x80000001000DF1F0;
      v64 = "YODEL_WHATS_NEW_LSR_SUBTITLE";
      v33.value._object = 0x80000001000DC8A0;
      v33.value._countAndFlagsBits = 0xD000000000000011;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v77._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v77);

      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v36 = String._bridgeToObjectiveC()();

      v75 = sub_10003B170;
      v76 = v35;
      aBlock = _NSConcreteStackBlock;
      v72 = 1107296256;
      v73 = sub_10000C034;
      v74 = &unk_100104B70;
      v37 = _Block_copy(&aBlock);
      v38 = objc_opt_self();
      v65 = [v38 actionWithTitle:v36 style:0 handler:v37];

      _Block_release(v37);

      type metadata accessor for HeadphoneProxFeatureManager();
      static HeadphoneProxFeatureManager.shared.getter();
      if ((*(v26 + 48))(v28, 1, v27) == 1)
      {
        __break(1u);
      }

      else
      {
        v40 = v66;
        v39 = v67;
        v41 = v68;
        (*(v67 + 104))(v66, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v68);

        v42 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
        v44 = v43;

        (*(v39 + 8))(v40, v41);
        if (v42 && (v42, v45 = [v44 hearingProtectionRegionStatus], v44, v45 == 2))
        {
          v46 = "SWITCH_MODE_SKIP_BUTTON";
          v47 = 0xD000000000000023;
        }

        else
        {
          v46 = "YODEL_SWITCH_MODE_BUTTON";
          v47 = 0xD000000000000027;
        }

        v48 = [v63 mainBundle];
        v78._object = 0xE000000000000000;
        v49._object = (v46 | 0x8000000000000000);
        v50.value._object = (v64 | 0x8000000000000000);
        v49._countAndFlagsBits = v47;
        v50.value._countAndFlagsBits = 0xD000000000000011;
        v51._countAndFlagsBits = 0;
        v51._object = 0xE000000000000000;
        v78._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v50, v48, v51, v78);

        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v53 = String._bridgeToObjectiveC()();

        v75 = sub_10003B190;
        v76 = v52;
        aBlock = _NSConcreteStackBlock;
        v72 = 1107296256;
        v73 = sub_10000C034;
        v74 = &unk_100104B98;
        v54 = _Block_copy(&aBlock);
        v55 = [v38 actionWithTitle:v53 style:1 handler:v54];

        _Block_release(v54);

        v56 = v65;

        v57 = [v1 addAction:v55];
        sub_10000E8F4(v70);
      }

      return;
    }

    sub_10000E950(&aBlock, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C658 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_10000A570(v58, qword_10011D9E0);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Hearing Protection: Headphone Model is nil, exiting", v61, 2u);
  }
}

uint64_t sub_10003A7E4()
{
  v1 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v5 = v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_model;
  swift_beginAccess();
  v6 = type metadata accessor for HeadphoneModel(0);
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 104))(v4, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v1);

    v8 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
    v10 = v9;

    (*(v2 + 8))(v4, v1);
    if (v8 && (v8, v11 = [v10 hearingProtectionRegionStatus], v10, v11 == 2))
    {
      v12 = "YODEL_LSR_SWITCH_MODE_TITLE";
      v13 = 0xD000000000000017;
    }

    else
    {
      v12 = "YODEL_SWITCH_MODE_SUBTITLE";
      v13 = 0xD00000000000001BLL;
    }

    v14 = [objc_opt_self() mainBundle];
    v20._object = 0xE000000000000000;
    v15._object = (v12 | 0x8000000000000000);
    v16.value._object = 0x80000001000DC8A0;
    v15._countAndFlagsBits = v13;
    v16.value._countAndFlagsBits = 0xD000000000000011;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v20)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  return result;
}