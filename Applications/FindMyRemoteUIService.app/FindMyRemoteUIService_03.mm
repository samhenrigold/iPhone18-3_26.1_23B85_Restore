uint64_t sub_100053564(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 11))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000535AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100053600()
{

  unsafeFromAsyncTask<A>(_:)();

  return v1;
}

double sub_100053658()
{

  unsafeFromAsyncTask<A>(_:)();

  return result;
}

double sub_1000536B0(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  swift_errorRetain();
  unsafeFromAsyncTask<A>(_:)();

  return result;
}

uint64_t sub_100053748(uint64_t a1)
{
  result = sub_1000537D0(&qword_100088E40, &unk_100065328);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005378C(uint64_t a1)
{
  result = sub_1000537D0(&qword_1000886C0, &unk_1000652F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000537D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AirTagDetectionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100053810()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053850(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001616C;

  return sub_1000533D4(a1, v5, v4);
}

uint64_t sub_1000538FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10003E518(a1, v1);
}

uint64_t sub_100053998(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_100053208(a1, v1);
}

double sub_100053A58(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  unsafeFromAsyncTask<A>(_:)();

  return result;
}

unint64_t sub_100053AF0(uint64_t a1)
{
  result = sub_100053B18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100053B18()
{
  result = qword_100088EF0;
  if (!qword_100088EF0)
  {
    type metadata accessor for AirTagCustomNameViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088EF0);
  }

  return result;
}

uint64_t sub_100053B6C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100053BAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000F540;

  return sub_10003E310(a1, v4, v5, v6);
}

uint64_t sub_100053C60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100053CA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100053D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003958(&qword_100087DB0, &qword_1000636B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100049430(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100004F1C(v11, &qword_100087DB0, &qword_1000636B0);
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

      sub_100004F1C(a3, &qword_100087DB0, &qword_1000636B0);

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

  sub_100004F1C(a3, &qword_100087DB0, &qword_1000636B0);
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

uint64_t sub_100053FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003958(&qword_100087DB0, &qword_1000636B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100049430(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100004F1C(v11, &qword_100087DB0, &qword_1000636B0);
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

      sub_100003958(&qword_1000884D0, &qword_100064510);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100004F1C(a3, &qword_100087DB0, &qword_1000636B0);

      return v22;
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

  sub_100004F1C(a3, &qword_100087DB0, &qword_1000636B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100003958(&qword_1000884D0, &qword_100064510);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000542F8()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_100088EF8);
  v1 = sub_1000054DC(v0, qword_100088EF8);
  if (qword_100086DB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000054DC(v0, qword_100088F10);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000543C0()
{
  if (!*(v0 + 32))
  {
    _StringGuts.grow(_:)(18);
    v2 = 0x8000000100061850;
    v1 = 0xD000000000000010;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    _StringGuts.grow(_:)(20);
    v1 = 0xD000000000000012;
    v2 = 0x8000000100061830;
LABEL_5:
    String.append(_:)(*&v1);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  if (*(v0 + 8) | *v0 | *(v0 + 16) | *(v0 + 24))
  {
    return 0x64656873696E6966;
  }

  else
  {
    return 0x7472617453746F6ELL;
  }
}

BOOL sub_100054500(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_100056F70(v5, v7);
}

void sub_1000545E4(uint64_t a1)
{
  v2 = v1;
  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_context) = a1;

  v4 = *(a1 + 24);
  if (!v4)
  {
    goto LABEL_11;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_10004ECB0(v23), (v6 & 1) == 0))
  {
    sub_100005488(v23);
    goto LABEL_11;
  }

  sub_100005514(*(v4 + 56) + 32 * v5, v24);
  sub_100005488(v23);
  sub_100003958(&qword_100087E60, &unk_1000639E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_100086DB0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000054DC(v16, qword_100088EF8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_16;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "We neither have user info or a valid value for SPRemoteUILostModeInfoKey.  Bailing";
    goto LABEL_15;
  }

  v7 = sub_100004F7C(v22);
  if (v8 == 1)
  {
    if (qword_100086DB0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000054DC(v11, qword_100088EF8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_16;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Lost mode dict is malformed and can't create lost mode info.  Bailing";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

LABEL_16:

    return;
  }

  v17 = (v2 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_lostModeInfo);
  v18 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_lostModeInfo);
  v19 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_lostModeInfo + 8);
  v20 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_lostModeInfo + 16);
  v21 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_lostModeInfo + 24);
  *v17 = v7;
  v17[1] = v8;
  v17[2] = v9;
  v17[3] = v10;
  sub_1000570F4(v18, v19, v20, v21);
}

uint64_t sub_100054864()
{
  v1 = (v0 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_lostModeInfo);
  v16 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_lostModeInfo + 8);
  if (v16 == 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = v0;
    v3 = *v1;
    v4 = v1[3];
    v5 = qword_100086DB0;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000054DC(v6, qword_100088EF8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Checking if device is unlocked", v9, 2u);
    }

    v10 = (*(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_dependencies))();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v10 & 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "isUnlocked = %{BOOL}d", v13, 8u);
    }

    if (v10)
    {
      v17 = v3;
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v17 = v3;
    }

    v18 = v16;
    v19 = v4;
    v20 = v14;
    sub_100054ACC(&v17);
  }

  return result;
}

void sub_100054ACC(int8x16_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_state];
  v5 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_state + 16];
  v65[0] = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_state];
  v65[1] = v5;
  v66 = v1[OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_state + 32];
  if (sub_100056F70(v65, a1))
  {
    if (qword_100086DB0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000054DC(v6, qword_100088EF8);
    v7 = v1;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v57 = v10;
      *v9 = 136315138;
      v11 = *(v4 + 1);
      aBlock = *v4;
      v59 = v11;
      LOBYTE(v60) = v4[32];
      sub_100057188(&aBlock, v63);
      v12 = sub_1000543C0();
      v14 = v13;
      sub_1000571C0(&aBlock);
      v15 = sub_10005B0A0(v12, v14, &v57);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Got a duplicate state %s so bailing", v9, 0xCu);
      sub_10000A5C4(v10);
    }

    else
    {
    }

    return;
  }

  if (qword_100086DB0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000054DC(v16, qword_100088EF8);
  v17 = v1;
  sub_100057188(a1, &aBlock);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  sub_1000571C0(a1);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v20 = 136315394;
    v21 = *(v4 + 1);
    v63[0] = *v4;
    v63[1] = v21;
    v64 = v4[32];
    sub_100057188(v63, &aBlock);
    v22 = sub_1000543C0();
    v24 = v23;
    sub_1000571C0(v63);
    v25 = sub_10005B0A0(v22, v24, &v57);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = sub_1000543C0();
    v28 = sub_10005B0A0(v26, v27, &v57);

    *(v20 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "Updating state from %s to state %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v29 = *v4;
  v30 = *(v4 + 1);
  v31 = *(v4 + 2);
  v32 = *(v4 + 3);
  v33 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v33;
  v34 = v4[32];
  v4[32] = a1[2].i8[0];
  sub_100057188(a1, &aBlock);
  sub_10005713C(v29, v30, v31, v32, v34);
  v36 = *a1;
  v35 = a1[1];
  if (!a1[2].i8[0])
  {
    v54 = *a1;
    *osloga = a1[1];
    v40 = type metadata accessor for FMLostDeviceCardViewController();
    v41 = objc_allocWithZone(v40);
    v42 = &v41[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_lostModeInfo];
    *v42 = v54;
    v42[1] = *osloga;
    v43 = objc_allocWithZone(UIImageView);

    v44 = [v43 init];
    *&v41[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_imageView] = v44;
    v62.receiver = v41;
    v62.super_class = v40;
    v37 = [(int8x16_t *)&v62 initWithContentView:0];
    sub_100003B90();
    sub_100003C8C();
    sub_100003FE8();
    [v37 setDismissalType:3];
    v45 = [objc_opt_self() mainBundle];
    v68._object = 0xE000000000000000;
    v46._object = 0x80000001000618F0;
    v46._countAndFlagsBits = 0xD000000000000017;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v68._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v68);

    v48 = swift_allocObject();
    *(v48 + 16) = v17;
    *(v48 + 24) = v54;
    *(v48 + 40) = *osloga;
    *(v48 + 56) = ObjectType;
    v17 = v17;

    v49 = String._bridgeToObjectiveC()();

    v60 = sub_100057238;
    v61 = v48;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v59 = sub_100047684;
    *(&v59 + 1) = &unk_10007BD50;
    v50 = _Block_copy(&aBlock);
    v51 = [objc_opt_self() actionWithTitle:v49 style:0 handler:v50];

    _Block_release(v50);

    v38 = OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController;
    v39 = *&v17[OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController];
    if (!v39)
    {
LABEL_21:
      v52 = [v17 presentProxCardFlowWithDelegate:v17 initialViewController:v37];
      v53 = *&v17[v38];
      *&v17[v38] = v52;

      return;
    }

LABEL_18:
    [v39 pushViewController:v37 animated:1];

    return;
  }

  if (a1[2].i8[0] == 1)
  {
    v37 = sub_100055B88(v36.i64[0], v36.i64[1], v35, *(&v35 + 1));
    v38 = OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController;
    v39 = *&v17[OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController];
    if (!v39)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v35 | v36.i64[0] | v36.i64[1] | *(&v35 + 1))
  {
    sub_100059F7C();
  }
}

uint64_t sub_1000551DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100003958(&qword_100087DC8, &unk_1000655F0);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v8;
  v5[14] = v7;

  return _swift_task_switch(sub_10005531C, v8, v7);
}

uint64_t sub_10005531C()
{
  v33 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1000046E4(v0[2], v0[3], v0[4], v0[5], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[7];

    sub_100004F1C(v4, &qword_100087DC8, &unk_1000655F0);
    if (qword_100086DB0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000054DC(v5, qword_100088EF8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No punch out URL to execute", v8, 2u);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[9] + 32))(v0[11], v0[7], v0[8]);
    if (qword_100086DB0 != -1)
    {
      swift_once();
    }

    v11 = v0[10];
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    v15 = type metadata accessor for Logger();
    v0[15] = sub_1000054DC(v15, qword_100088EF8);
    (*(v14 + 16))(v11, v12, v13);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[8];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      sub_100057648();
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v26 = *(v20 + 8);
      v26(v19, v21);
      v27 = sub_10005B0A0(v23, v25, &v32);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "Opening URL %{private,mask.hash}s", v22, 0x16u);
      sub_10000A5C4(v30);
    }

    else
    {

      v26 = *(v20 + 8);
      v26(v19, v21);
    }

    v0[16] = v26;
    v31 = (*(v0[6] + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_dependencies + 32) + **(v0[6] + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_dependencies + 32));
    v28 = swift_task_alloc();
    v0[17] = v28;
    *v28 = v0;
    v28[1] = sub_10005576C;
    v29 = v0[11];

    return v31(v29);
  }
}

uint64_t sub_10005576C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1000559D0;
  }

  else
  {
    v5 = sub_1000558A8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000558A8()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[16];
  v5 = v0[11];
  v6 = v0[8];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully opened URL", v7, 2u);
  }

  v4(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000559D0()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[16];
  v5 = v0[11];
  v6 = v0[8];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Punch out failed with error %@", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v4(v5, v6);

  v10 = v0[1];

  return v10();
}

id sub_100055B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FMLostDeviceCardViewController();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_lostModeInfo];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v11 = objc_allocWithZone(UIImageView);

  v12 = [v11 init];
  *&v9[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_imageView] = v12;
  v24.receiver = v9;
  v24.super_class = v8;
  v13 = objc_msgSendSuper2(&v24, "initWithContentView:", 0);
  sub_100003B90();
  sub_100003C8C();
  sub_100003FE8();
  [v13 setDismissalType:3];
  v14 = [objc_opt_self() mainBundle];
  v25._object = 0xE000000000000000;
  v15._object = 0x8000000100061910;
  v15._countAndFlagsBits = 0xD00000000000001ELL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v25);

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;

  v19 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100057454;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047684;
  aBlock[3] = &unk_10007BE40;
  v20 = _Block_copy(aBlock);
  v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];

  _Block_release(v20);

  return v13;
}

void sub_100055E7C()
{
  sub_1000570F4(*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_lostModeInfo), *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_lostModeInfo + 8), *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_lostModeInfo + 16), *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_lostModeInfo + 24));

  v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_state);
  v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_state + 8);
  v3 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_state + 16);
  v4 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_state + 24);
  v5 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_state + 32);

  sub_10005713C(v1, v2, v3, v4, v5);
}

double sub_100055FC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_100003958(&qword_100087DB0, &qword_1000636B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  type metadata accessor for MainActor();

  v17 = a2;

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = a5;
  v19[8] = a6;
  v19[9] = a7;
  sub_100053D04(0, 0, v15, &unk_1000655A0, v19);

  return result;
}

uint64_t sub_100056130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v8[17] = type metadata accessor for MainActor();
  v8[18] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[19] = v10;
  v8[20] = v9;

  return _swift_task_switch(sub_1000561D8, v10, v9);
}

uint64_t sub_1000561D8()
{
  if (qword_100086DB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_1000054DC(v1, qword_100088EF8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to unlock device", v4, 2u);
  }

  v5 = v0[12];

  v8 = (*(v5 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_dependencies + 16) + **(v5 + OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_dependencies + 16));
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_100056390;

  return v8();
}

uint64_t sub_100056390(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 49) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 160);
  v6 = *(v3 + 152);
  if (v1)
  {
    v7 = sub_1000565DC;
  }

  else
  {
    v7 = sub_1000564D8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000564D8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 49);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Passcode isUnlocked = %{BOOL}d", v5, 8u);
  }

  v6 = *(v1 + 49);

  if (v6 == 1)
  {
    v7 = sub_100056744;
  }

  else
  {
    v7 = sub_1000568C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000565DC()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to request for unlock with error %@", v3, 0xCu);
    sub_100004F1C(v4, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100056744(uint64_t a1)
{
  *(v1 + 192) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000567D0, v3, v2);
}

uint64_t sub_1000567D0()
{
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);

  *(v0 + 72) = v4;
  *(v0 + 56) = v5;
  *(v0 + 88) = 1;
  sub_100054ACC((v0 + 56));
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_100056860, v1, v2);
}

uint64_t sub_100056860()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000568C0(uint64_t a1)
{
  *(v1 + 200) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005694C, v3, v2);
}

uint64_t sub_10005694C()
{
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);

  *(v0 + 32) = v4;
  *(v0 + 16) = v5;
  *(v0 + 48) = 0;
  sub_100054ACC((v0 + 16));
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_1000576B0, v1, v2);
}

double sub_1000569D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100003958(&qword_100087DB0, &qword_1000636B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  v16[7] = a5;
  v16[8] = a6;
  sub_100053FF4(0, 0, v13, &unk_1000655C8, v16);

  return result;
}

uint64_t sub_100056B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  type metadata accessor for MainActor();
  v8[11] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[12] = v10;
  v8[13] = v9;

  return _swift_task_switch(sub_100056BD4, v10, v9);
}

uint64_t sub_100056BD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_100056CE4;
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);

    return sub_1000551DC(v6, v5, v3, v4);
  }

  else
  {

    **(v0 + 40) = *(v0 + 112) == 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100056CE4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return _swift_task_switch(sub_100056E24, v4, v3);
}

uint64_t sub_100056E24()
{

  **(v0 + 40) = *(v0 + 112) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100056EA8(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_100056EC4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_100056EF0()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_100088F10);
  sub_1000054DC(v0, qword_100088F10);
  return Logger.init(subsystem:category:)();
}

BOOL sub_100056F70(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  if (!v7)
  {
    if (a2[2].i8[0])
    {
      return 0;
    }

    v11 = a2->i64[1];
    v9 = a2[1].i64[0];
    v10 = a2[1].i64[1];
    if (v4)
    {
      if (!v11 || (v3 != a2->i64[0] || v4 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (v6)
    {
      return v10 && (v5 == v9 && v6 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    return !v10;
  }

  if (v7 != 1)
  {
    if (v5 | v4 | v3 | v6)
    {
      if (a2[2].i8[0] == 2 && a2->i64[0] == 1 && !(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]))
      {
        return 1;
      }
    }

    else if (a2[2].i8[0] == 2)
    {
      v12 = vorrq_s8(*a2, a2[1]);
      if (!*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
      {
        return 1;
      }
    }

    return 0;
  }

  if (a2[2].i8[0] != 1)
  {
    return 0;
  }

  v8 = a2->i64[1];
  v9 = a2[1].i64[0];
  v10 = a2[1].i64[1];
  if (v4)
  {
    if (!v8 || (v3 != a2->i64[0] || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (!v6)
  {
    return !v10;
  }

  return v10 && (v5 == v9 && v6 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
}

void sub_1000570F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_10005713C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }
}

uint64_t sub_1000571F0()
{

  return _swift_deallocObject(v0, 64, 7);
}

double sub_100057248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100057260()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000572B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000F540;

  return sub_100056130(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10005739C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000573D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005740C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100057464()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000574B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001616C;

  return sub_100056B34(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100057590(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F540;

  return sub_1000489A8(a1, v4);
}

unint64_t sub_100057648()
{
  result = qword_100088F68;
  if (!qword_100088F68)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088F68);
  }

  return result;
}

uint64_t sub_1000576B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006C6C657370;
  v3 = 0x556579656B776168;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x676E6972696170;
    }

    else
    {
      v5 = 0x6572617774666F73;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEE00657461647055;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x65646F4D74736F6CLL;
    }

    else
    {
      v5 = 0x556579656B776168;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xED00006C6C657370;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E6972696170;
  if (a2 != 2)
  {
    v8 = 0x6572617774666F73;
    v7 = 0xEE00657461647055;
  }

  if (a2)
  {
    v3 = 0x65646F4D74736F6CLL;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
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

uint64_t sub_10005781C()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100003958(&qword_100088598, &qword_100065790);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100059D2C(v5);
    return 0;
  }
}

id sub_100057908(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC21FindMyRemoteUIService36FMRemoteUIAlertServiceViewController_contentViewController];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC21FindMyRemoteUIService36FMRemoteUIAlertServiceViewController_context] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v21.receiver = v3;
  v21.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", v8, a3);

  v10 = qword_100086DC0;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000054DC(v12, qword_100088F70);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_10005B0A0(0xD000000000000015, 0x800000010005FE40, &v20);
    *(v15 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&unk_1000890A0, &qword_100065798);
    v16 = String.init<A>(describing:)();
    v18 = sub_10005B0A0(v16, v17, &v20);

    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  return v11;
}

id sub_100057BA0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC21FindMyRemoteUIService36FMRemoteUIAlertServiceViewController_contentViewController];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService36FMRemoteUIAlertServiceViewController_context] = 0;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v18, "initWithCoder:", a1);
  if (v5)
  {
    v6 = qword_100086DC0;
    v7 = v5;
    v8 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000054DC(v9, qword_100088F70);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_10005B0A0(0x646F632874696E69, 0xEC000000293A7265, &v17);
      *(v12 + 12) = 2080;
      swift_getObjectType();
      sub_100003958(&unk_1000890A0, &qword_100065798);
      v13 = String.init<A>(describing:)();
      v15 = sub_10005B0A0(v13, v14, &v17);

      *(v12 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    return v7;
  }

  else
  {

    return 0;
  }
}

id sub_100057DE4()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_100088F70);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&unk_1000890A0, &qword_100065798);
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_100058028(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  if (qword_100086DC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000054DC(v8, qword_100088F70);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "configure(with context:, completion:) being called", v11, 2u);
  }

  if ([v4 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43[0] = v41;
  v43[1] = v42;
  if (*(&v42 + 1))
  {
    sub_100003958(&qword_100088598, &qword_100065790);
    if (swift_dynamicCast())
    {
      [v40 setAllowsAlertStacking:1];
      if (a1)
      {
        v12 = a1;
        v13 = sub_10005781C();
        type metadata accessor for FMRemoteUIAlertServiceConfigurationContext();
        swift_allocObject();
        v14 = v4;
        v15 = sub_100058F14(v12, v4, v13);
        if (v15)
        {
          v16 = v15;
          *&v14[OBJC_IVAR____TtC21FindMyRemoteUIService36FMRemoteUIAlertServiceViewController_context] = v15;

          if (*(v16 + 16) > 1u)
          {
            if (*(v16 + 16) == 2)
            {
              type metadata accessor for PairingContentViewModel();
              swift_allocObject();
              v24 = sub_100016E94();
              v25 = objc_allocWithZone(type metadata accessor for PairingContentViewController());
              v26 = sub_100048BB0(v24);

LABEL_28:
              swift_getObjectType();
              *&v43[0] = v26;
              v35 = v26;
              sub_10005AB04();
              v36 = &v14[OBJC_IVAR____TtC21FindMyRemoteUIService36FMRemoteUIAlertServiceViewController_contentViewController];
              v37 = *&v14[OBJC_IVAR____TtC21FindMyRemoteUIService36FMRemoteUIAlertServiceViewController_contentViewController];
              *v36 = v35;
              *(v36 + 1) = &off_10007BFC0;

              sub_100058554();
              if (a2)
              {
                a2();
              }

              swift_unknownObjectRelease();

              return;
            }

            type metadata accessor for SoftwareUpdateViewModel();
            v32 = swift_allocObject();
            updated = type metadata accessor for SoftwareUpdateViewController();
            v34 = objc_allocWithZone(updated);
            *&v34[OBJC_IVAR____TtC21FindMyRemoteUIService28SoftwareUpdateViewController_viewModel] = v32;
            v17 = objc_msgSendSuper2(&v39, "initWithNibName:bundle:", 0, 0, a3, v38.receiver, v38.super_class, v34, updated);
          }

          else if (*(v16 + 16))
          {
            v27 = type metadata accessor for FMLostModeAlertContentViewController();
            v28 = objc_allocWithZone(v27);
            v29 = &v28[OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_lostModeInfo];
            *v29 = xmmword_100062C80;
            *(v29 + 2) = 0;
            *(v29 + 3) = 0;
            v30 = &v28[OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_state];
            *v30 = 0u;
            *(v30 + 1) = 0u;
            v30[32] = 2;
            v31 = &v28[OBJC_IVAR____TtC21FindMyRemoteUIService36FMLostModeAlertContentViewController_dependencies];
            *v31 = sub_1000031D0;
            v31[1] = 0;
            v31[2] = &unk_100062408;
            v31[3] = 0;
            v31[4] = &unk_100062400;
            v31[5] = 0;
            v17 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", 0, 0, a3, v28, v27, v39.receiver, v39.super_class);
          }

          else
          {
            type metadata accessor for FMRemoteUIHawkeyeUpsellContentViewController();
            v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          }

          v26 = v17;
          goto LABEL_28;
        }

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "Unable to create a context", v23, 2u);
        }

        if (a2)
        {
          a2();
          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  else
  {
    sub_100059D2C(v43);
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "No remote view controller proxy", v20, 2u);
  }
}

void sub_100058554()
{
  if ([v0 isViewLoaded])
  {
    v1 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService36FMRemoteUIAlertServiceViewController_contentViewController];
    if (v1)
    {
      v2 = v1;
      v3 = [v0 childViewControllers];
      sub_100059C40();
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = v2;
      __chkstk_darwin(v5);
      v23[2] = &v24;
      v6 = v2;
      LOBYTE(v3) = sub_10005982C(sub_100059C8C, v23, v4);

      if (v3)
      {
LABEL_9:

        return;
      }

      v7 = [v0 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 view];
        if (v9)
        {
          v10 = v9;
          [v8 addSubview:v9];

          v11 = [v6 view];
          if (v11)
          {
            v12 = v11;
            v13 = [v0 view];
            if (v13)
            {
              v14 = v13;
              [v13 bounds];
              v16 = v15;
              v18 = v17;
              v20 = v19;
              v22 = v21;

              [v12 setFrame:{v16, v18, v20, v22}];
              [v0 addChildViewController:v6];
              [v6 didMoveToParentViewController:v0];
              goto LABEL_9;
            }

LABEL_14:
            __break(1u);
            return;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_13;
    }
  }
}

void sub_100058964()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService36FMRemoteUIAlertServiceViewController_contentViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame:{v7, v9, v11, v13}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Int sub_100058ADC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100058BB8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100058C80(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100058D58@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100059BF4(*a1);
  *a2 = result;
  return result;
}

void sub_100058D88(uint64_t *a1@<X8>)
{
  v2 = 0xED00006C6C657370;
  v3 = 0x556579656B776168;
  v4 = 0xE700000000000000;
  v5 = 0x676E6972696170;
  if (*v1 != 2)
  {
    v5 = 0x6572617774666F73;
    v4 = 0xEE00657461647055;
  }

  if (*v1)
  {
    v3 = 0x65646F4D74736F6CLL;
    v2 = 0xE800000000000000;
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

uint64_t sub_100058E4C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  sub_100005570(v8, a2);
  v9 = sub_1000054DC(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = sub_1000054DC(v8, a4);
  v11 = *(*(v8 - 8) + 16);

  return v11(v9, v10, v8);
}

void *sub_100058F14(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = v3 + 40;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8 = [a1 userInfo];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v11 = sub_10004ECB0(v41), (v12 & 1) == 0))
  {

    sub_100005488(v41);
LABEL_10:
    v42 = 0u;
    v43 = 0u;
    goto LABEL_11;
  }

  sub_100005514(*(v10 + 56) + 32 * v11, &v42);
  sub_100005488(v41);

  if (!*(&v43 + 1))
  {
LABEL_11:
    sub_100059D2C(&v42);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_100086DC8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000054DC(v16, qword_100088F88);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "No alert type as string specified", v19, 2u);
    }

    goto LABEL_16;
  }

  v14 = v41[0];
  v13 = v41[1];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v14 || v15 != v13)
  {
    v21 = v13;
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      goto LABEL_20;
    }

    if (v14 == 0x2D6579656B776168 && v13 == 0xEE006C6C65737075 || (v26 = v14, v27 = v21, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v22 = 0;
      goto LABEL_21;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v26 && v28 == v21)
    {

LABEL_33:

      v22 = 2;
      goto LABEL_21;
    }

    v40 = v26;
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_33;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v40 && v30 == v21)
    {

LABEL_38:

      v22 = 3;
      goto LABEL_21;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_38;
    }

    if (qword_100086DC8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000054DC(v32, qword_100088F88);

    v17 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v38 = v33;
    if (os_log_type_enabled(v17, v33))
    {
      log = v17;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41[0] = v35;
      *v34 = 136315138;
      v36 = sub_10005B0A0(v40, v27, v41);

      *(v34 + 4) = v36;
      _os_log_impl(&_mh_execute_header, log, v38, "Alert type is not supported %s", v34, 0xCu);
      sub_10000A5C4(v35);

      goto LABEL_17;
    }

LABEL_16:

LABEL_17:
    swift_unknownObjectRelease();

    swift_unknownObjectWeakDestroy();
    sub_100036D08(v7);
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_20:

  v22 = 1;
LABEL_21:
  *(v4 + 16) = v22;
  v23 = [a1 userInfo];
  if (v23)
  {
    v24 = v23;
    v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v25 = 0;
  }

  *(v4 + 24) = v25;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_100059518()
{

  swift_unknownObjectWeakDestroy();
  sub_100036D08(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for FMRemoteUIAlertServiceConfigurationContext.ServiceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMRemoteUIAlertServiceConfigurationContext.ServiceType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000596D8()
{
  result = qword_100089090;
  if (!qword_100089090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089090);
  }

  return result;
}

uint64_t sub_10005972C()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_10008C050);
  sub_1000054DC(v0, qword_10008C050);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000597AC()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_10008C068);
  sub_1000054DC(v0, qword_10008C068);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005982C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_100059954(void (*a1)(void))
{
  if (qword_100086DC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_100088F70);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10005B0A0(0xD000000000000026, 0x8000000100061AC0, &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s being called", v5, 0xCu);
    sub_10000A5C4(v6);
  }

  if (a1)
  {
    a1();
  }
}

unint64_t sub_100059BF4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000794E8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100059C40()
{
  result = qword_100089098;
  if (!qword_100089098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100089098);
  }

  return result;
}

uint64_t sub_100059CE4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059D2C(uint64_t a1)
{
  v2 = sub_100003958(&qword_100088590, &qword_1000647D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100059D9C()
{
  if (qword_100086DE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_1000890B0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_10005B0A0(0x2870756E61656C63, 0xE900000000000029, &v9);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v2;
    *v5 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, oslog, v3, "%s %@", v4, 0x16u);
    sub_10004D270(v5);

    sub_10000A5C4(v6);
  }
}

double sub_100059F38(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_context) = a1;

  return result;
}

void sub_100059F7C()
{
  if (qword_100086DE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_1000890B0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10005B0A0(0x467373696D736964, 0xED00002928776F6CLL, v12);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s %@", v5, 0x16u);
    sub_10004D270(v6);

    sub_10000A5C4(v7);
  }

  v9 = *&v2[OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController];
  if (v9)
  {
    v12[4] = sub_10005B648;
    v12[5] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100041D88;
    v12[3] = &unk_10007BFD0;
    v10 = _Block_copy(v12);
    v11 = v9;

    [v11 dismissViewControllerAnimated:1 completion:v10];
    _Block_release(v10);
  }
}

uint64_t sub_10005A1BC()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_1000890B0);
  v1 = sub_1000054DC(v0, qword_1000890B0);
  if (qword_100086DE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000054DC(v0, qword_10008C080);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10005A2E0(char a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for FMRemoteUIPRXFlowContentViewController();
  result = objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  v5 = OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_isViewAppeared;
  if ((*(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_isViewAppeared) & 1) == 0)
  {
    if (qword_100086DE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000054DC(v6, qword_1000890B0);
    v7 = v2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v10 = 136315394;
      *(v10 + 4) = sub_10005B0A0(0xD000000000000011, 0x8000000100061C40, &v14);
      *(v10 + 12) = 2112;
      *(v10 + 14) = v7;
      *v11 = v7;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s %@", v10, 0x16u);
      sub_10004D270(v11);

      sub_10000A5C4(v12);
    }

    *(v2 + v5) = 1;
    return (*((swift_isaMask & *v7) + 0xA8))();
  }

  return result;
}

void sub_10005A538(char a1)
{
  v20.receiver = v1;
  v20.super_class = type metadata accessor for FMRemoteUIPRXFlowContentViewController();
  objc_msgSendSuper2(&v20, "viewDidDisappear:", a1 & 1);
  if (qword_100086DE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_1000890B0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_10005B0A0(0xD000000000000014, 0x8000000100061C20, &v19);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = v4;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s %@", v7, 0x16u);
    sub_10004D270(v8);

    sub_10000A5C4(v9);
  }

  (*((swift_isaMask & *v4) + 0xC8))();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
  }

  v14 = *(v4 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController);
  *(v4 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController) = 0;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Prox card flow dismissed. Requesting host to invalidate.", v17, 2u);
  }

  if (*(v4 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_context))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong invalidate];
      swift_unknownObjectRelease();
    }
  }

  *(v4 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_isViewAppeared) = 0;
}

id sub_10005A8AC(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_context] = 0;
  *&v3[OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController] = 0;
  v3[OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_isViewAppeared] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for FMRemoteUIPRXFlowContentViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_10005A9B0(void *a1)
{
  *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_context] = 0;
  *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController] = 0;
  v1[OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_isViewAppeared] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FMRemoteUIPRXFlowContentViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10005AA60(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMRemoteUIPRXFlowContentViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10005AB58()
{
  if (qword_100086DE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_1000890B0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10005B0A0(0xD000000000000018, 0x8000000100061B80, &v23);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s %@", v5, 0x16u);
    sub_10004D270(v6);

    sub_10000A5C4(v7);
  }

  if (*(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_context))
  {
    v9 = *((swift_isaMask & *v2) + 0xC8);

    v9(v10);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
    }

    v14 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController);
    *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController) = 0;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Prox card flow dismissed. Requesting host to invalidate.", v17, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong invalidate];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v20, "Trying to dismiss PRX flow with a nil context. This is not possible.", v21, 2u);
    }
  }

  return result;
}

uint64_t sub_10005AF9C()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_10008C080);
  sub_1000054DC(v0, qword_10008C080);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005B044(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10005B0A0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10005B0A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10005B16C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100005514(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000A5C4(v11);
  return v7;
}

unint64_t sub_10005B16C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10005B278(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10005B278(uint64_t a1, unint64_t a2)
{
  v3 = sub_10005B2C4(a1, a2);
  sub_10005B3F4(&off_1000792E8);
  return v3;
}

void *sub_10005B2C4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10005B4E0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10005B4E0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10005B3F4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10005B554(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10005B4E0(uint64_t a1, uint64_t a2)
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

  sub_100003958(&unk_100089170, qword_100065800);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10005B554(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003958(&unk_100089170, qword_100065800);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_10005B654(const char *a1)
{
  if (qword_100086DE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_1000890B0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

double sub_10005B744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10005B75C()
{
  ObjectType = swift_getObjectType();
  v0 = [objc_allocWithZone(PRXIconContentViewController) init];
  [v0 setDismissalType:3];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 mainBundle];
  v4._countAndFlagsBits = 0xD000000000000026;
  v48._object = 0xE000000000000000;
  v4._object = 0x8000000100061CB0;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v48);

  v6 = String._bridgeToObjectiveC()();

  [v2 setTitle:v6];

  v7 = [v1 mainBundle];
  v49._object = 0xE000000000000000;
  v8._object = 0x8000000100061CE0;
  v8._countAndFlagsBits = 0xD000000000000029;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v49);

  v10 = String._bridgeToObjectiveC()();

  [v2 setBodyText:v10];

  v11 = sub_10000F16C();
  if (v11)
  {
    v12 = v11;
    sub_100003958(&unk_1000873B0, &unk_100062B10);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100062620;
    *(v13 + 32) = v12;
    sub_10005C184();
    v14 = v12;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setImages:isa];
  }

  v16 = [v1 mainBundle];
  v50._object = 0xE000000000000000;
  v17._object = 0x8000000100061D10;
  v17._countAndFlagsBits = 0xD000000000000029;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v50);

  v19 = [v1 mainBundle];
  v20._countAndFlagsBits = 0xD000000000000027;
  v51._object = 0xE000000000000000;
  v20._object = 0x8000000100061D40;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v51);

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = ObjectType;
  v24 = v2;

  v25 = String._bridgeToObjectiveC()();

  v46 = sub_10005C15C;
  v47 = v23;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100047684;
  v45 = &unk_10007C048;
  v26 = _Block_copy(&aBlock);
  v27 = objc_opt_self();
  v28 = [v27 actionWithTitle:v25 style:0 handler:v26];

  _Block_release(v26);

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = String._bridgeToObjectiveC()();

  v46 = sub_10005C17C;
  v47 = v29;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100047684;
  v45 = &unk_10007C070;
  v31 = _Block_copy(&aBlock);
  v32 = [v27 actionWithTitle:v30 style:1 handler:v31];

  v33 = v31;
  v34 = v28;
  _Block_release(v33);

  v35 = OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController;
  v36 = *&v41[OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController];
  if (v36)
  {
    [v36 pushViewController:v24 animated:1];
  }

  else
  {
    v37 = v24;
    v38 = [v41 presentProxCardFlowWithDelegate:v41 initialViewController:v37];
    v39 = *&v41[v35];
    *&v41[v35] = v38;

    v32 = v39;
  }
}

void sub_10005BD2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100003958(&qword_100087DC8, &unk_1000655F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = [objc_opt_self() defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    URL.init(string:)();
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      __break(1u);
      return;
    }

    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    (*(v8 + 8))(v4, v7);
    sub_10004EF78(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 openSensitiveURL:v11 withOptions:isa];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10005BF14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_10005C090(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMRemoteUIHawkeyeUpsellContentViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10005C0EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C124()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10005C164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10005C184()
{
  result = qword_1000891A8;
  if (!qword_1000891A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000891A8);
  }

  return result;
}

uint64_t sub_10005C1D8()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_10008C098);
  sub_1000054DC(v0, qword_10008C098);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005C258()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_1000891B0);
  v1 = sub_1000054DC(v0, qword_1000891B0);
  if (qword_100086DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000054DC(v0, qword_10008C098);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10005C320()
{
  if (qword_100086DF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_1000891B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching account picture", v4, 2u);
  }

  v5 = *(v0 + 24);
  if (v5)
  {
    v6 = [v5 aa_primaryAppleAccount];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(AAUIProfilePictureStore) initWithAppleAccount:v6 grandSlamAccount:0 accountStore:v5];
      if (v8)
      {
        v9 = v8;
        v10 = v7;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412290;
          *(v13 + 4) = v10;
          *v14 = v7;
          v15 = v10;
          _os_log_impl(&_mh_execute_header, v11, v12, "Received picture store for %@", v13, 0xCu);
          sub_10004D270(v14);
        }

        v16 = [v9 profilePictureForAccountOwner];
        return v16;
      }
    }
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Account has no picture associated with it", v20, 2u);
  }

  return 0;
}

void sub_10005C5B4(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_100086DF8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_1000891B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching account details", v7, 2u);
  }

  v8 = sub_10005CA80();
  if (!v8)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v15 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v25 = 0;
LABEL_29:
    *a1 = v22;
    *(a1 + 8) = v23;
    *(a1 + 16) = v25;
    *(a1 + 24) = v24;
    *(a1 + 32) = v15;
    *(a1 + 40) = v19;
    *(a1 + 48) = v20;
    *(a1 + 56) = v21;
    return;
  }

  v9 = v8;
  v10 = *(v2 + 16);
  v11 = [v10 securityLevelForAccount:v8];
  v12 = [v9 aa_formattedUsername];
  if (!v12)
  {
    __break(1u);
    goto LABEL_31;
  }

  v13 = v12;
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if ([v10 phoneAsAppleIDForAccount:v9])
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Account is MAKO", v18, 2u);
    }

    v19 = 0;
    v20 = 0;
    v21 = 1;
    goto LABEL_25;
  }

  v26 = [v10 additionalInfoForAccount:v9];
  if (v26)
  {
    v27 = v26;
    v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v28 + 16) || (v29 = sub_10004EBA4(0x6D754E656E6F6870, 0xEC00000073726562), (v30 & 1) == 0))
    {
LABEL_21:

      goto LABEL_22;
    }

    sub_100005514(*(v28 + 56) + 32 * v29, v46);

    sub_100003958(&qword_100089290, "h-");
    if (swift_dynamicCast())
    {
      if (*(v44 + 16))
      {
        v31 = *(v44 + 32);

        if (*(v31 + 16))
        {
          v32 = sub_10004EBA4(0x6D754E656E6F6870, 0xEB00000000726562);
          if (v33)
          {
            sub_100005514(*(v31 + 56) + 32 * v32, v46);

            if (swift_dynamicCast())
            {
              v19 = v44;
              v20 = v45;
              v21 = 2;
              goto LABEL_25;
            }

            goto LABEL_22;
          }
        }
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Account has no phone number associated", v36, 2u);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_25:

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Received account details.", v39, 2u);
  }

  v40 = [v9 aa_firstName];
  if (v40)
  {
    v41 = v40;
    v25 = v11 == 4;

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v42;

    v24 = v43;
    goto LABEL_29;
  }

LABEL_31:
  __break(1u);
}

id sub_10005CA80()
{
  if (qword_100086DF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_1000891B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching AuthKit account", v4, 2u);
  }

  v5 = *(v0 + 24);
  if (v5)
  {
    v6 = [v5 aa_primaryAppleAccount];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 aa_altDSID];
      if (v8)
      {
        v9 = v8;
        v10 = [*(v0 + 16) authKitAccountWithAltDSID:v8];

        result = v10;
        if (v10)
        {
          return result;
        }
      }

      else
      {
      }
    }
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "AuthKit account not found.", v14, 2u);
  }

  return 0;
}

uint64_t sub_10005CC4C()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

_BYTE **sub_10005CCB0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_10005CCC0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t unsafeFromAsyncTask<A>(_:)()
{
  return unsafeFromAsyncTask<A>(_:)();
}

{
  return unsafeFromAsyncTask<A>(_:)();
}