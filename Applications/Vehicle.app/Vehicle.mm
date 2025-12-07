int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AutoSettingsApplication();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for AppDelegate(0);
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

void type metadata accessor for CAFNotificationSeverity()
{
  if (!qword_100037848)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100037848);
    }
  }
}

unint64_t sub_100002038()
{
  result = qword_100037850;
  if (!qword_100037850)
  {
    type metadata accessor for CAFNotificationSeverity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037850);
  }

  return result;
}

Swift::Int sub_100002090()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100002104(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t type metadata accessor for VSNotificationDetailViewController(uint64_t a1)
{
  result = qword_100037A68;
  if (!qword_100037A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100002244()
{
  v1 = v0;
  v2 = [v0 historicalNotificationUserActions];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 historicalNotificationUserActions];

    sub_1000043C8(0, &unk_100037AC0, CAFHistoricalNotificationUserAction_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
LABEL_34:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v8 = &_swiftEmptyArrayStorage;
        v40 = v1;
        while (1)
        {
          v41 = v8;
          v9 = v7;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            v12 = [v10 userVisibleLabel];
            if (v12)
            {
              break;
            }

LABEL_7:

            ++v9;
            if (v7 == v6)
            {
              v1 = v40;
              v8 = v41;
              goto LABEL_36;
            }
          }

          v13 = v12;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1 = v15;

          v16 = HIBYTE(v1) & 0xF;
          if ((v1 & 0x2000000000000000) == 0)
          {
            v16 = v14 & 0xFFFFFFFFFFFFLL;
          }

          if (!v16)
          {
            break;
          }

          v17 = [v11 symbolName];
          if (v17)
          {
            v18 = v17;
            v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v20;
            v39 = v19;
          }

          else
          {
            v38 = 0;
            v39 = 0;
          }

          v21 = [v11 contentURLAction];
          if (v21)
          {
            v22 = v21;
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v23;
          }

          else
          {

            v37 = 0;
            v24 = 0xE000000000000000;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_100004020(0, *(v41 + 2) + 1, 1, v41);
          }

          v26 = *(v41 + 2);
          v25 = *(v41 + 3);
          if (v26 >= v25 >> 1)
          {
            v41 = sub_100004020((v25 > 1), v26 + 1, 1, v41);
          }

          *(v41 + 2) = v26 + 1;
          v27 = &v41[56 * v26];
          *(v27 + 4) = v14;
          *(v27 + 5) = v1;
          *(v27 + 6) = v39;
          *(v27 + 7) = v38;
          *(v27 + 8) = v37;
          *(v27 + 9) = v24;
          v8 = v41;
          v27[80] = 0;
          v1 = v40;
          if (v7 == v6)
          {
LABEL_36:

            goto LABEL_37;
          }
        }

        goto LABEL_7;
      }
    }

    v8 = &_swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_37:
  if ([v1 hasUserDismissible] && objc_msgSend(v1, "userDismissible"))
  {
    sub_100003FD8(&qword_100037AB8, &unk_100023C30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100023B50;
    v29 = [objc_opt_self() mainBundle];
    v42._object = 0xE000000000000000;
    v30.value._countAndFlagsBits = 0x747465536F747541;
    v30.value._object = 0xEC00000073676E69;
    v31._countAndFlagsBits = 0xD000000000000013;
    v31._object = 0x800000010002B270;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, v29, v32, v42);

    v33 = String.init(format:_:)();
    v35 = v34;

    *(inited + 32) = v33;
    *(inited + 40) = v35;
    *(inited + 48) = 0xD000000000000011;
    *(inited + 56) = 0x800000010002B290;
    *(inited + 64) = 0;
    *(inited + 72) = 0xE000000000000000;
    *(inited + 80) = 1;
    sub_100020848(inited);
  }

  return v8;
}

id sub_100002648()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for VSNotificationDetailViewController(0);
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v1 = [objc_opt_self() mainBundle];
  v16._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x747465536F747541;
  v2.value._object = 0xEC00000073676E69;
  v3._object = 0x800000010002B310;
  v3._countAndFlagsBits = 0xD000000000000013;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v16);

  String.init(format:_:)();

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = CAFUITableViewController.tableView.getter();
  type metadata accessor for VSNotificationActionTableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v8];

  v9 = CAFUITableViewController.tableView.getter();
  type metadata accessor for VSNotificationHeaderView(0);
  v10 = swift_getObjCClassFromMetadata();
  v11 = NSStringFromClass(v10);
  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  [v9 registerClass:v10 forHeaderFooterViewReuseIdentifier:v11];

  v12 = CAFUITableViewController.tableView.getter();
  [v12 setDelegate:v0];

  v13 = CAFUITableViewController.tableView.getter();
  [v13 setDataSource:v0];

  return [*&v0[qword_100037A40] registerObserver:v0];
}

void sub_100002888(void *a1)
{
  v1 = a1;
  sub_100002648();
}

void sub_100002910(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(id))
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for VSNotificationDetailViewController(0);
  v8 = *a4;
  v9 = v11.receiver;
  v10 = objc_msgSendSuper2(&v11, v8, a3);
  a5(v10);
}

uint64_t sub_1000029A0(void *a1)
{
  type metadata accessor for VSNotificationActionTableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = IndexPath.row.getter();
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v1 + qword_100037A50);
      if (v9 < *(v10 + 16))
      {
        v11 = v10 + 56 * v9;
        v12 = *(v11 + 40);
        v13 = *(v11 + 48);
        v14 = *(v11 + 72);
        v15 = *(v11 + 80);
        v16 = v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction;
        v17 = *(v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction);
        v18 = *(v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 8);
        v19 = *(v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 16);
        v20 = *(v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 24);
        v21 = *(v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 32);
        v22 = *(v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 40);
        v23 = *(v11 + 56);
        *v16 = *(v11 + 32);
        *(v16 + 8) = v12;
        *(v16 + 16) = v13;
        *(v16 + 24) = v23;
        *(v16 + 40) = v14;
        *(v16 + 48) = v15;

        sub_100004698(v17, v18, v19, v20, v21, v22);
        sub_10001F588();
        return v8;
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100002B80(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v12 = sub_1000029A0(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

double sub_100002C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 44.0;
}

id sub_100002D74(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_100004410(v4);

  return v6;
}

void sub_100002DD4(void *a1, os_log_type_t a2)
{
  v3 = v2;
  v6 = IndexPath.row.getter();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = qword_100037A50;
  v8 = *&v3[qword_100037A50];
  if (v6 >= *(v8 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v8 + 56 * v6 + 80) == 1)
  {
    a2 = static os_log_type_t.debug.getter();
    if (qword_100037840 == -1)
    {
LABEL_5:
      v9 = qword_100039188;
      if (os_log_type_enabled(qword_100039188, a2))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        v12 = *&v3[qword_100037A40];
        *(v10 + 4) = v12;
        *v11 = v12;
        v13 = v12;
        _os_log_impl(&_mh_execute_header, v9, a2, "Hiding notification %@", v10, 0xCu);
        sub_100004630(v11);
      }

      [*&v3[qword_100037A40] setHidden:1];
      goto LABEL_21;
    }

LABEL_26:
    swift_once();
    goto LABEL_5;
  }

  v14 = [v3 view];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v14 window];

  if (v16)
  {
    v17 = [v16 windowScene];

    if (v17)
    {
      v18 = IndexPath.row.getter();
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v19 = *&v3[v7];
        if (v18 < *(v19 + 16))
        {
          v20 = v19 + 56 * v18;
          v22 = *(v20 + 64);
          v21 = *(v20 + 72);
          type metadata accessor for CAFUIRequestContentManager();

          v23 = static CAFUIRequestContentManager.inputStreamIdentifier(from:)();
          v25 = v24;
          v26 = *&v3[qword_100037A40];
          v27 = IndexPath.row.getter();
          if ((v27 & 0x8000000000000000) == 0)
          {
            if (v27 <= 0xFF)
            {
              [v26 setUserAction:v27];
              v28 = HIBYTE(v21) & 0xF;
              if ((v21 & 0x2000000000000000) == 0)
              {
                v28 = v22 & 0xFFFFFFFFFFFFLL;
              }

              if (v28)
              {
                v29 = swift_allocObject();
                v29[2] = v22;
                v29[3] = v21;
                v29[4] = v23;
                v29[5] = v25;
                v29[6] = v3;

                v30 = v3;
                dispatch thunk of CAFUIRequestContentManager.open(contentURLString:in:completion:)();

                goto LABEL_21;
              }

              static os_log_type_t.debug.getter();
              if (qword_100037840 == -1)
              {
LABEL_20:
                os_log(_:dso:log:_:_:)();

                goto LABEL_21;
              }

LABEL_31:
              swift_once();
              goto LABEL_20;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_29;
    }
  }

LABEL_21:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];
}

void sub_1000031A8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v12 = static os_log_type_t.debug.getter();
  if (v11)
  {
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v13 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10001A194(a2, a3, &v20);
      _os_log_impl(&_mh_execute_header, v13, v12, "Opened url %s successfully", v14, 0xCu);
      sub_10000458C(v15);
    }

    if (a5)
    {
      v16 = (a6 + qword_100037A60);
      *v16 = a4;
      v16[1] = a5;

      sub_1000034E0();
    }
  }

  else
  {
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v17 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v12))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10001A194(a2, a3, &v20);
      _os_log_impl(&_mh_execute_header, v17, v12, "Opening url %s was not successful", v18, 0xCu);
      sub_10000458C(v19);
    }
  }
}

uint64_t sub_1000033E4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  sub_100002DD4(v10, v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_1000034E0()
{
  v1 = v0;
  v2 = type metadata accessor for CAFUIPunchthroughState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[qword_100037A60 + 8] && ((*(v3 + 104))(v5, enum case for CAFUIPunchthroughState.presented(_:), v2), v6 = CAFUIPunchthroughState.buttonForCurrentState(title:)(0), (*(v3 + 8))(v5, v2), v6))
  {
    [v6 addTarget:v1 action:"dismissPT" forControlEvents:64];
    v7 = [v1 navigationItem];
    v8 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v6];
    [v7 setRightBarButtonItem:v8];
  }

  else
  {
    v8 = [v1 navigationItem];
    [v8 setRightBarButtonItem:0];
  }
}

uint64_t sub_1000036A4(uint64_t a1)
{
  v2 = *&v1[qword_100037A60 + 8];
  if (v2)
  {
    v3 = *&v1[qword_100037A60];

    v4 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v5 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_10001A194(v3, v2, &v10);
      _os_log_impl(&_mh_execute_header, v5, v4, "Requesting dismissal of PT with identifier %s", v6, 0xCu);
      sub_10000458C(v7);
    }

    *(swift_allocObject() + 16) = v1;
    v8 = v1;
    dispatch thunk of CAFUIRequestContentManager.dismiss(identifier:completion:)();
  }

  else
  {
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }
}

void sub_1000038E4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  static os_log_type_t.debug.getter();
  if (v3)
  {
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v4 = (a2 + qword_100037A60);
    *v4 = 0;
    v4[1] = 0;

    sub_1000034E0();
  }

  else
  {
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }
}

void sub_100003A08(void *a1)
{
  v1 = a1;
  sub_1000036A4(v1);
}

uint64_t sub_100003A54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a1;
  *&v9[qword_100037A50] = sub_100002244();

  v10 = CAFUITableViewController.tableView.getter();
  [v10 reloadData];

  return (*(v6 + 8))(v8, v5);
}

void sub_100003B9C(void *a1)
{
  v2 = a1;
  *&v2[qword_100037A50] = sub_100002244();

  v1 = CAFUITableViewController.tableView.getter();
  [v1 reloadData];
}

void sub_100003C24(void *a1)
{
  v2 = a1;
  *&v2[qword_100037A50] = sub_100002244();

  v1 = CAFUITableViewController.tableView.getter();
  [v1 reloadData];
}

void sub_100003CAC(void *a1)
{
  v2 = a1;
  *&v2[qword_100037A50] = sub_100002244();

  v1 = CAFUITableViewController.tableView.getter();
  [v1 reloadData];
}

void sub_100003D34(_BYTE *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 && (a1[qword_100037A58] & 1) == 0)
  {
    a1[qword_100037A58] = 1;
    v6 = a1;
    v5 = [v6 navigationController];
  }
}

uint64_t sub_100003E00()
{
}

id sub_100003E64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VSNotificationDetailViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003E9C(uint64_t a1)
{
}

__n128 sub_100003F14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100003F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100003F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003FD8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_100004020(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003FD8(&qword_100037AB8, &unk_100023C30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000418C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100003FD8(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003FD8(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1000042C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003FD8(&qword_100038220, &qword_100024120);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1000043C8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100004410(void *a1)
{
  type metadata accessor for VSNotificationHeaderView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v4];

  if (v5)
  {
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(v1 + qword_100037A40);
      v8 = *(v6 + qword_100038B70);
      *(v6 + qword_100038B70) = v7;
      v9 = v6;
      v10 = v7;

      sub_100020088();
      return v9;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000454C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000458C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000045D8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100004630(uint64_t a1)
{
  v2 = sub_100003FD8(&unk_100037B00, qword_100024000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100004698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_100004700@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SettingsNotificationView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for NotificationModel();
  __chkstk_darwin(v6);
  (*(v8 + 16))(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  NotificationView.init(model:)();
  KeyPath = swift_getKeyPath();
  v10 = (a1 + *(sub_100003FD8(&qword_100037E80, &qword_100023E50) + 36));
  sub_100003FD8(&qword_100037E88, &qword_100023E58);
  static ActionConfiguration.defaultActionCenter.getter();
  *v10 = KeyPath;
  v11 = swift_getKeyPath();
  v12 = (a1 + *(sub_100003FD8(&qword_100037E90, &qword_100023E90) + 36));
  static ActionConfiguration.defaultAlertCenter.getter();
  *v12 = v11;
  v13 = swift_getKeyPath();
  v14 = (a1 + *(sub_100003FD8(&qword_100037E98, &qword_100023EC8) + 36));
  sub_100003FD8(&qword_100037EA0, &qword_100023ED0);
  static BannerConfiguration.defaultCenter.getter();
  *v14 = v13;
  v15 = swift_getKeyPath();
  v16 = (a1 + *(sub_100003FD8(&qword_100037EA8, &qword_100023F08) + 36));
  sub_100003FD8(&qword_100037EB0, &qword_100023F10);
  static NoticeConfiguration.defaultCenter.getter();
  *v16 = v15;
  v17 = swift_getKeyPath();
  v18 = (a1 + *(sub_100003FD8(&qword_100037EB8, &qword_100023F48) + 36));
  sub_100003FD8(&qword_100037EC0, &qword_100023F50);
  static FancyNotificationConfiguration.default.getter();
  *v18 = v17;
  v19 = swift_getKeyPath();
  v20 = a1 + *(sub_100003FD8(&qword_100037EC8, &qword_100023F88) + 36);
  *v20 = v19;
  *(v20 + 8) = 1;
  v21 = swift_getKeyPath();
  sub_10000B030(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_10000B180(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v24 = (a1 + *(sub_100003FD8(&qword_100037ED0, &qword_100023FC0) + 36));
  sub_100003FD8(&qword_100037ED8, &qword_100023FC8);
  result = SymbolImageProvider.init(_:)();
  *v24 = v21;
  return result;
}

uint64_t sub_100004AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (a5)(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100004B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v8 = type metadata accessor for SettingsNotificationView(0);
    return (*(a3 + *(v8 + 20)))(a1, a2);
  }

  else
  {
    v10 = sub_100003FD8(&qword_100037EE0, &qword_100023FD0);
    v11 = *(*(v10 - 8) + 56);

    return v11(a4, 1, 1, v10);
  }
}

uint64_t sub_100004C70()
{
  v0 = type metadata accessor for FancyNotificationConfiguration();
  v52 = *(v0 - 8);
  v53 = v0;
  __chkstk_darwin(v0);
  v51 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100003FD8(&qword_100037F98, &qword_100024020);
  __chkstk_darwin(v2 - 8);
  v4 = &v49 - v3;
  v5 = type metadata accessor for NotificationModel.MinimalNotificationModel();
  v64 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NoticeConfiguration();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BannerConfiguration();
  v62 = *(v10 - 8);
  v63 = v10;
  __chkstk_darwin(v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActionConfiguration();
  v60 = *(v13 - 8);
  v61 = v13;
  __chkstk_darwin(v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100003FD8(&qword_100037FA0, &qword_100024028);
  __chkstk_darwin(v50);
  v17 = &v49 - v16;
  v54 = type metadata accessor for NotificationModel.InferredNotificationModel();
  v59 = *(v54 - 8);
  __chkstk_darwin(v54);
  v58 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NotificationModel.Style();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  NotificationModel.style.getter();
  v23 = (*(v20 + 88))(v22, v19);
  if (v23 == enum case for NotificationModel.Style.minimal(_:))
  {
    (*(v20 + 96))(v22, v19);
    (*(v64 + 32))(v7, v22, v5);
    NotificationModel.MinimalNotificationModel.trailingButtonConfiguration.getter();
    v24 = type metadata accessor for NotificationModel.TrailingButtonConfiguration();
    v25 = (*(*(v24 - 8) + 48))(v4, 1, v24);
    sub_10000B6D0(v4, &qword_100037F98, &qword_100024020);
    v27 = v62;
    v26 = v63;
    if (v25 == 1 && (static BannerConfiguration.defaultCenter.getter(), v28 = BannerConfiguration.includeCloseButtonAffordance.getter(), (*(v27 + 8))(v12, v26), (v28 & 1) == 0))
    {
      v32 = v55;
      static NoticeConfiguration.defaultCenter.getter();
      v29 = NoticeConfiguration.maxNotificationSize.getter();
      (*(v56 + 8))(v32, v57);
    }

    else
    {
      static BannerConfiguration.defaultCenter.getter();
      v29 = BannerConfiguration.maxNotificationSize.getter();
      (*(v27 + 8))(v12, v26);
    }

    v33 = *(v64 + 8);
    v34 = v7;
    v35 = v5;
    goto LABEL_12;
  }

  if (v23 == enum case for NotificationModel.Style.modalAlert(_:))
  {
    (*(v20 + 96))(v22, v19);
    static ActionConfiguration.defaultAlertCenter.getter();
    v29 = ActionConfiguration.maxNotificationSize.getter();
    (*(v60 + 8))(v15, v61);
    v30 = type metadata accessor for NotificationModel.ModalAlertModel();
LABEL_9:
    (*(*(v30 - 8) + 8))(v22, v30);
    return v29;
  }

  if (v23 == enum case for NotificationModel.Style.fancyActions(_:))
  {
    (*(v20 + 96))(v22, v19);
    v31 = v51;
    static FancyNotificationConfiguration.default.getter();
    v29 = FancyNotificationConfiguration.maxNotificationSize.getter();
    (*(v52 + 8))(v31, v53);
    v30 = type metadata accessor for NotificationModel.FancyModel();
    goto LABEL_9;
  }

  if (v23 == enum case for NotificationModel.Style.inferred(_:))
  {
    (*(v20 + 96))(v22, v19);
    v37 = v58;
    v38 = v54;
    (*(v59 + 32))(v58, v22, v54);
    NotificationModel.InferredNotificationModel.buttonType.getter();
    v39 = type metadata accessor for NotificationModel.ButtonType();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v17, 1, v39) == 1)
    {
      static BannerConfiguration.defaultCenter.getter();
      v41 = BannerConfiguration.includeCloseButtonAffordance.getter();
      v42 = v63;
      v43 = *(v62 + 8);
      v43(v12, v63);
      if (v41)
      {
        static BannerConfiguration.defaultCenter.getter();
        v29 = BannerConfiguration.maxNotificationSize.getter();
        v43(v12, v42);
      }

      else
      {
        v48 = v55;
        static NoticeConfiguration.defaultCenter.getter();
        v29 = NoticeConfiguration.maxNotificationSize.getter();
        (*(v56 + 8))(v48, v57);
      }

      v34 = v58;
      v33 = *(v59 + 8);
      goto LABEL_25;
    }

    v44 = (*(v40 + 88))(v17, v39);
    if (v44 == enum case for NotificationModel.ButtonType.actions(_:))
    {
      (*(v40 + 8))(v17, v39);
      v45 = NotificationModel.InferredNotificationModel.blocking.getter();
      v46 = (v60 + 8);
      v47 = (v59 + 8);
      if (v45)
      {
        static ActionConfiguration.defaultAlertCenter.getter();
      }

      else
      {
        static ActionConfiguration.defaultActionCenter.getter();
      }

      v29 = ActionConfiguration.maxNotificationSize.getter();
      (*v46)(v15, v61);
      (*v47)(v37, v38);
      return v29;
    }

    if (v44 == enum case for NotificationModel.ButtonType.symbolButton(_:))
    {
      (*(v40 + 8))(v17, v39);
      static BannerConfiguration.defaultCenter.getter();
      v29 = BannerConfiguration.maxNotificationSize.getter();
      (*(v62 + 8))(v12, v63);
      v33 = *(v59 + 8);
      v34 = v37;
LABEL_25:
      v35 = v38;
LABEL_12:
      v33(v34, v35);
      return v29;
    }
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1000055F8(uint64_t a1)
{
  *(a1 + qword_100039160 + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10000566C()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationModel.FancyModel();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NotificationModel.MinimalNotificationModel();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NotificationModel.InferredNotificationModel();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationModel.Style();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v34 = &v34 - v15;
  __chkstk_darwin(v14);
  v17 = &v34 - v16;
  v18 = type metadata accessor for NotificationModel();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = qword_100039158;
  swift_beginAccess();
  (*(v19 + 16))(v21, v1 + v22, v18);
  NotificationModel.style.getter();
  (*(v19 + 8))(v21, v18);
  v23 = (*(v10 + 88))(v17, v9);
  if (v23 != enum case for NotificationModel.Style.minimal(_:))
  {
    if (v23 == enum case for NotificationModel.Style.modalAlert(_:))
    {
      (*(v10 + 16))(v13, v17, v9);
      (*(v10 + 96))(v13, v9);
      v27 = type metadata accessor for NotificationModel.ModalAlertModel();
      (*(*(v27 - 8) + 8))(v13, v27);
      return (*(v10 + 8))(v17, v9);
    }

    if (v23 == enum case for NotificationModel.Style.fancyActions(_:))
    {
      (*(v10 + 16))(v13, v17, v9);
      (*(v10 + 96))(v13, v9);
      v29 = v38;
      v28 = v39;
      v30 = v40;
      (*(v39 + 32))(v38, v13, v40);
      v31 = NotificationModel.FancyModel.dismissalHandler.getter();
    }

    else
    {
      if (v23 != enum case for NotificationModel.Style.inferred(_:))
      {
        return (*(v10 + 8))(v17, v9);
      }

      v33 = v34;
      (*(v10 + 16))(v34, v17, v9);
      (*(v10 + 96))(v33, v9);
      v29 = v35;
      v28 = v36;
      v30 = v37;
      (*(v36 + 32))(v35, v33, v37);
      if (NotificationModel.InferredNotificationModel.blocking.getter())
      {
        goto LABEL_8;
      }

      v31 = NotificationModel.InferredNotificationModel.dismissalHandler.getter();
    }

    v31();

LABEL_8:
    (*(v28 + 8))(v29, v30);
    return (*(v10 + 8))(v17, v9);
  }

  (*(v10 + 16))(v13, v17, v9);
  (*(v10 + 96))(v13, v9);
  v25 = v41;
  v24 = v42;
  (*(v41 + 32))(v6, v13, v42);
  v26 = NotificationModel.MinimalNotificationModel.dismissalHandler.getter();
  v26();

  (*(v25 + 8))(v6, v24);
  return (*(v10 + 8))(v17, v9);
}

Class sub_100005C44()
{
  v1 = v0;
  v2 = sub_100003FD8(&qword_100037F98, &qword_100024020);
  __chkstk_darwin(v2 - 8);
  v45 = &v39 - v3;
  v4 = type metadata accessor for NotificationModel.MinimalNotificationModel();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003FD8(&qword_100037FA0, &qword_100024028);
  __chkstk_darwin(v6 - 8);
  v41 = &v39 - v7;
  v8 = type metadata accessor for NotificationModel.InferredNotificationModel();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NotificationModel.Style();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v39 - v16;
  __chkstk_darwin(v15);
  v19 = &v39 - v18;
  v20 = type metadata accessor for NotificationModel();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = qword_100039158;
  swift_beginAccess();
  (*(v21 + 16))(v23, v1 + v24, v20);
  NotificationModel.style.getter();
  (*(v21 + 8))(v23, v20);
  v25 = (*(v11 + 88))(v19, v10);
  if (v25 == enum case for NotificationModel.Style.minimal(_:))
  {
    (*(v11 + 16))(v14, v19, v10);
    (*(v11 + 96))(v14, v10);
    v27 = v46;
    v26 = v47;
    v28 = v44;
    (*(v46 + 32))(v44, v14, v47);
    v29 = v45;
    NotificationModel.MinimalNotificationModel.trailingButtonConfiguration.getter();
    v30 = type metadata accessor for NotificationModel.TrailingButtonConfiguration();
    if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
    {
      sub_10000B6D0(v29, &qword_100037F98, &qword_100024020);
      sub_1000043C8(0, &qword_100037FA8, NSNumber_ptr);
      v31.super.super.isa = NSNumber.init(integerLiteral:)(8).super.super.isa;
      (*(v27 + 8))(v28, v26);
LABEL_7:
      (*(v11 + 8))(v19, v10);
      return v31.super.super.isa;
    }

    (*(v27 + 8))(v28, v26);
    v37 = &qword_100037F98;
    v38 = &qword_100024020;
LABEL_10:
    sub_10000B6D0(v29, v37, v38);
    goto LABEL_11;
  }

  if (v25 == enum case for NotificationModel.Style.inferred(_:))
  {
    (*(v11 + 16))(v17, v19, v10);
    (*(v11 + 96))(v17, v10);
    v33 = v42;
    v32 = v43;
    v34 = v40;
    (*(v42 + 32))(v40, v17, v43);
    v29 = v41;
    NotificationModel.InferredNotificationModel.buttonType.getter();
    v35 = type metadata accessor for NotificationModel.ButtonType();
    if ((*(*(v35 - 8) + 48))(v29, 1, v35) == 1)
    {
      sub_10000B6D0(v29, &qword_100037FA0, &qword_100024028);
      sub_1000043C8(0, &qword_100037FA8, NSNumber_ptr);
      v31.super.super.isa = NSNumber.init(integerLiteral:)(8).super.super.isa;
      (*(v33 + 8))(v34, v32);
      goto LABEL_7;
    }

    (*(v33 + 8))(v34, v32);
    v37 = &qword_100037FA0;
    v38 = &qword_100024028;
    goto LABEL_10;
  }

LABEL_11:
  (*(v11 + 8))(v19, v10);
  sub_1000043C8(0, &qword_100037FA8, NSNumber_ptr);
  return NSNumber.init(integerLiteral:)(60).super.super.isa;
}

uint64_t sub_1000062B8()
{

  v1 = qword_100039158;
  v2 = type metadata accessor for NotificationModel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + qword_100039160;

  return sub_10000B6A8(v3);
}

id sub_100006344(uint64_t a1)
{
  v2 = static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  v3 = qword_100039188;
  if (os_log_type_enabled(qword_100039188, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v6 = v1;
    v7 = [v6 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_10001A194(v8, v10, &v14);

    *(v4 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v2, "[NotificationManager] deallocating NotificationHostingController %s", v4, 0xCu);
    sub_10000458C(v5);
  }

  v12 = type metadata accessor for NotificationHostingController(0);
  v15.receiver = v1;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, "dealloc");
}

uint64_t sub_1000064EC(uint64_t a1)
{

  v2 = qword_100039158;
  v3 = type metadata accessor for NotificationModel();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = a1 + qword_100039160;

  return sub_10000B6A8(v4);
}

id sub_1000065DC()
{
  sub_10000B53C();
  if (v0)
  {
    v1 = String._bridgeToObjectiveC()();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_100006630(uint64_t a1)
{
  v2 = type metadata accessor for NotificationModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_100039158;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v6, v2);
  NotificationModel.id.getter();
  (*(v3 + 8))(v5, v2);
  v7 = String._bridgeToObjectiveC()();

  return v7;
}

double sub_100006770(void *a1)
{
  v1 = a1;
  sub_1000067B4();
  v3 = v2;

  return v3;
}

void sub_1000067B4()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsNotificationView(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  [v5 intrinsicContentSize];
  v8 = v7;

  if (fabs(v8) == INFINITY)
  {
    goto LABEL_5;
  }

  v9 = [v1 view];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  [v9 intrinsicContentSize];
  v12 = v11;

  if (fabs(v12) != INFINITY)
  {
    v16 = [v1 view];
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_5:
  static os_log_type_t.error.getter();
  sub_1000043C8(0, &qword_100037EE8, OS_os_log_ptr);
  v13 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  dispatch thunk of UIHostingController.rootView.getter();
  sub_100004C70();
  v15 = v14;
  sub_10000B64C(v4);
  if ((v15 & 1) == 0)
  {
    return;
  }

  v16 = [v1 view];
  if (v16)
  {
LABEL_10:
    v17 = v16;
    [v16 intrinsicContentSize];

    return;
  }

  __break(1u);
}

uint64_t sub_1000069D0(void *a1)
{
  v1 = a1;
  v2 = sub_100006A04();

  return v2 & 1;
}

uint64_t sub_100006A04()
{
  v1 = type metadata accessor for NotificationModel.InferredNotificationModel();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NotificationModel.Style();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v36 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = type metadata accessor for NotificationModel();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v35 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = qword_100039158;
  swift_beginAccess();
  v16 = *(v10 + 16);
  v37 = v0;
  v34 = v16;
  v16(v14, v0 + v15, v9);
  NotificationModel.style.getter();
  v17 = *(v10 + 8);
  v18 = v3;
  v17(v14, v9);
  v38 = v4;
  v19 = *(v4 + 88);
  if (v19(v8, v18) == enum case for NotificationModel.Style.modalAlert(_:))
  {
    (*(v38 + 96))(v8, v18);
    v20 = type metadata accessor for NotificationModel.ModalAlertModel();
    (*(*(v20 - 8) + 8))(v8, v20);
    v21 = 0;
  }

  else
  {
    v30 = *(v38 + 8);
    v30(v8, v18);
    v22 = v37 + v15;
    v23 = v35;
    v34(v35, v22, v9);
    v24 = v36;
    NotificationModel.style.getter();
    v17(v23, v9);
    if (v19(v24, v18) == enum case for NotificationModel.Style.inferred(_:))
    {
      (*(v38 + 96))(v24, v18);
      v26 = v31;
      v25 = v32;
      v27 = v33;
      (*(v32 + 32))(v31, v24, v33);
      v28 = NotificationModel.InferredNotificationModel.blocking.getter();
      (*(v25 + 8))(v26, v27);
      v21 = v28 ^ 1;
    }

    else
    {
      v30(v24, v18);
      v21 = 1;
    }
  }

  return v21 & 1;
}

uint64_t sub_100006E1C(uint64_t a1, uint64_t a2)
{
  v5 = static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  v6 = qword_100039188;
  if (os_log_type_enabled(qword_100039188, v5))
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v7 = 136315394;
    swift_unknownObjectRetain();
    sub_100003FD8(&qword_100037F90, &qword_100024018);
    v8 = String.init<A>(describing:)();
    v10 = sub_10001A194(v8, v9, &v19);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = v2;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = a2;
    v16 = v15;

    v17 = sub_10001A194(v13, v16, &v19);
    a2 = v14;

    *(v7 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v5, "[NotificationManager] presentable: %s did disappear. Self: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10000A13C(a1, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10000701C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = a1;
  sub_100006E1C(a3, a4);
  swift_unknownObjectRelease();
}

uint64_t AutoSettingsNotificationManager.__allocating_init(carManager:settingsCache:carSession:assetManager:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  AutoSettingsNotificationManager.init(carManager:settingsCache:carSession:assetManager:)(a1, a2, a3, a4);
  return v8;
}

void AutoSettingsNotificationManager.init(carManager:settingsCache:carSession:assetManager:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v58 = type metadata accessor for CAFNotificationSource.Destination();
  v55 = *(v58 - 8);
  __chkstk_darwin(v58);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Zone.ZoneRegion();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  __chkstk_darwin(v13 - 8);
  v15 = &v48 - v14;
  v57 = sub_100003FD8(&qword_100037BD8, &qword_100023C88);
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v52 = &v48 - v16;
  *(v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification) = 0;
  *(v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_cancellable) = 0;
  v17 = OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_assetManager;
  *(v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_assetManager) = 0;
  v5[2] = a1;
  v59 = a2;
  v18 = a2;
  v19 = a4;
  sub_10000B730(v18, v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_settingsCache, &qword_100037BD0, &qword_100023C80);
  type metadata accessor for CAFUIRequestContentManager();
  swift_allocObject();
  v20 = a1;
  v21 = a3;
  v5[4] = CAFUIRequestContentManager.init(session:)();
  type metadata accessor for CAFNotificationDataSources();
  swift_allocObject();
  v49 = v20;
  *(v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_dataSources) = CAFNotificationDataSources.init(displayID:carManager:)();
  *(v5 + v17) = v19;
  v56 = v19;

  v62 = 0;
  v63 = 0xE000000000000000;
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v60 = v24;
  v61 = v26;
  sub_100003FD8(&qword_100037C00, &qword_100023C90);
  v27 = Optional<A>.description.getter();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0x72656E6E61622ELL;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  v32 = String._bridgeToObjectiveC()();

  v33 = [objc_opt_self() bannerSourceForDestination:1 forRequesterIdentifier:v32];

  if (v33)
  {
    v5[3] = v33;
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_10000B730(v59, v15, &qword_100037BD0, &qword_100023C80);
    v34 = type metadata accessor for CAFUISettingsCache();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 48))(v15, 1, v34);
    v48 = v21;
    if (v36 == 1)
    {
      sub_10000B6D0(v15, &qword_100037BD0, &qword_100023C80);
    }

    else
    {
      CAFUISettingsCache.settingsByIdentifiers.getter();
      (*(v35 + 8))(v15, v34);
    }

    v37 = v50;
    v38 = v12;
    v39 = v53;
    (*(v50 + 104))(v12, enum case for Zone.ZoneRegion.zone1(_:), v53);
    v40 = v55;
    v41 = v51;
    v42 = v58;
    (*(v55 + 104))(v51, enum case for CAFNotificationSource.Destination.centerConsole(_:), v58);
    swift_allocObject();
    swift_weakInit();

    v43 = dispatch thunk of CAFNotificationDataSources.notificationSource(settingsByIdentifier:zoneRegion:destination:actionHandler:)();

    (*(v40 + 8))(v41, v42);
    (*(v37 + 8))(v38, v39);

    v62 = v43;
    type metadata accessor for CAFNotificationSource();
    sub_10000B26C(&qword_100037C08, &type metadata accessor for CAFNotificationSource, &protocol conformance descriptor for CAFNotificationSource);
    v44 = v52;
    CAFDataSourcePublisher.init(dataSource:)();
    sub_10000BD80(&qword_100037C10, &qword_100037BD8, &qword_100023C88, &protocol conformance descriptor for CAFDataSourcePublisher<A>);
    v45 = v57;
    v46 = Publisher.eraseToAnyPublisher()();
    (*(v54 + 8))(v44, v45);
    v62 = v46;
    swift_allocObject();
    swift_weakInit();

    sub_100003FD8(&qword_100037C18, &qword_100023C98);
    sub_10000BD80(&unk_100037C20, &qword_100037C18, &qword_100023C98, &protocol conformance descriptor for AnyPublisher<A, B>);
    v47 = Publisher<>.sink(receiveValue:)();

    sub_10000B6D0(v59, &qword_100037BD0, &qword_100023C80);

    *(v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_cancellable) = v47;
  }

  else
  {
    __break(1u);
  }
}

void sub_100007954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = [objc_opt_self() sharedApplication];
    v6 = [v5 delegate];

    if (v6)
    {
      type metadata accessor for AppDelegate(0);
      swift_dynamicCastClassUnconditional();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_unknownObjectRelease();
      if (v9 && (v7 = [v9 windowScene], v9, v7))
      {
        v8 = swift_allocObject();
        *(v8 + 16) = a1;
        *(v8 + 24) = a2;

        dispatch thunk of CAFUIRequestContentManager.open(contentURLString:in:completion:)();
      }

      else
      {
        static os_log_type_t.debug.getter();
        if (qword_100037840 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100007B8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = static os_log_type_t.debug.getter();
  if (v5)
  {
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v7 = qword_100039188;
    result = os_log_type_enabled(qword_100039188, v6);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10001A194(a2, a3, &v12);
      v11 = "[NotificationManager] Opened url %s successfully";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, v6, v11, v9, 0xCu);
      sub_10000458C(v10);
    }
  }

  else
  {
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v7 = qword_100039188;
    result = os_log_type_enabled(qword_100039188, v6);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10001A194(a2, a3, &v12);
      v11 = "[NotificationManager] Opening url %s was not successful";
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_100007D44(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003FD8(&qword_100037FB0, &qword_100024030);
  v4 = __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v11 = qword_100039188;
    sub_10000B730(a1, v8, &qword_100037FB0, &qword_100024030);
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v21 = v13;
      *v12 = 136315138;
      sub_10000B26C(&qword_100037F68, &type metadata accessor for NotificationModel, &protocol conformance descriptor for NotificationModel);
      v14 = Optional<A>.description.getter();
      v16 = v15;
      sub_10000B6D0(v8, &qword_100037FB0, &qword_100024030);
      v17 = sub_10001A194(v14, v16, &v21);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v10, "[NotificationManager] New notificationModel received %s", v12, 0xCu);
      sub_10000458C(v13);
    }

    else
    {
      sub_10000B6D0(v8, &qword_100037FB0, &qword_100024030);
    }

    sub_10000B730(a1, v6, &qword_100037FB0, &qword_100024030);
    v18 = type metadata accessor for NotificationModel();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v6, 1, v18) == 1)
    {
      sub_10000B6D0(v6, &qword_100037FB0, &qword_100024030);
      v21 = 0u;
      v22 = 0u;
    }

    else
    {
      *(&v22 + 1) = v18;
      v20 = sub_10000B798(&v21);
      (*(v19 + 32))(v20, v6, v18);
    }

    sub_1000080A0(&v21);

    return sub_10000B6D0(&v21, &qword_1000387F0, &qword_100023CA0);
  }

  return result;
}

void sub_1000080A0(uint64_t a1)
{
  v2 = v1;
  v95 = a1;
  v3 = type metadata accessor for SettingsNotificationView(0);
  __chkstk_darwin(v3);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003FD8(&qword_100037FB0, &qword_100024030);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = &v84 - v10;
  v11 = type metadata accessor for NotificationModel();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v84 - v17;
  v19 = __chkstk_darwin(v16);
  v89 = &v84 - v20;
  __chkstk_darwin(v19);
  v91 = &v84 - v21;
  v97 = objc_opt_self();
  v22 = [v97 sharedApplication];
  v23 = [v22 delegate];

  if (!v23)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v85 = v15;
  v88 = v18;
  v96 = type metadata accessor for AppDelegate(0);
  v24 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  v25 = v24;
  swift_unknownObjectRelease();
  if (v24)
  {
    v26 = sub_100014588();
  }

  else
  {
    v26 = 0;
  }

  v27 = [v97 sharedApplication];
  v28 = [v27 delegate];

  if (!v28)
  {
    goto LABEL_46;
  }

  v86 = v5;
  v87 = v3;
  v29 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  v30 = v29;
  swift_unknownObjectRelease();
  if (v29)
  {
    v31 = sub_100014AA0();
  }

  else
  {
    v31 = 0;
  }

  if (v26)
  {
    v32 = v26;
    v33 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v34 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v94 = v26;
      v90 = v11;
      v92 = v2;
      v37 = v36;
      v98[0] = v36;
      *v35 = 136315138;
      v38 = CAFRequestTemporaryContent.settingsDescription.getter();
      v40 = v12;
      v41 = v31;
      v42 = sub_10001A194(v38, v39, v98);

      *(v35 + 4) = v42;
      v31 = v41;
      v12 = v40;
      _os_log_impl(&_mh_execute_header, v34, v33, "[NotificationManager] updateNotification. requestContent: %s", v35, 0xCu);
      sub_10000458C(v37);
      v2 = v92;
      v11 = v90;
      v26 = v94;
    }
  }

  if (v31)
  {
    v43 = v31;
    v44 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v45 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v94 = v26;
      v90 = v11;
      v92 = v2;
      v48 = v47;
      v98[0] = v47;
      *v46 = 136315138;
      v49 = CAFRequestContent.settingsDescription.getter();
      v51 = v9;
      v52 = sub_10001A194(v49, v50, v98);

      *(v46 + 4) = v52;
      v9 = v51;
      _os_log_impl(&_mh_execute_header, v45, v44, "[NotificationManager] updateNotification. requestContent: %s", v46, 0xCu);
      sub_10000458C(v48);
      v2 = v92;
      v11 = v90;
      v26 = v94;
    }
  }

  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v53 = *(v2 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification);
  if (!v53)
  {
    sub_10000B730(v95, v98, &qword_1000387F0, &qword_100023CA0);
    if (v99)
    {
      v66 = swift_dynamicCast();
      (*(v12 + 7))(v9, v66 ^ 1u, 1, v11);
      if ((*(v12 + 6))(v9, 1, v11) != 1)
      {
        v74 = v85;
        (*(v12 + 4))(v85, v9, v11);
        static os_log_type_t.debug.getter();
        os_log(_:dso:log:_:_:)();
        sub_100008FA8(v74);

        (*(v12 + 1))(v74, v11);
        return;
      }
    }

    else
    {

      sub_10000B6D0(v98, &qword_1000387F0, &qword_100023CA0);
      (*(v12 + 7))(v9, 1, 1, v11);
    }

    sub_10000B6D0(v9, &qword_100037FB0, &qword_100024030);
    return;
  }

  sub_10000B730(v95, v98, &qword_1000387F0, &qword_100023CA0);
  v54 = v99;
  v55 = v53;
  if (!v54)
  {
    sub_10000B6D0(v98, &qword_1000387F0, &qword_100023CA0);
    v56 = v93;
    (*(v12 + 7))(v93, 1, 1, v11);
LABEL_33:
    sub_10000B6D0(v56, &qword_100037FB0, &qword_100024030);
    v67 = [v97 sharedApplication];
    v68 = [v67 delegate];

    if (v68)
    {
      v69 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
      v70 = v69;
      swift_unknownObjectRelease();
      if (v69)
      {
        v71 = sub_100014FB8();

        static os_log_type_t.debug.getter();
        os_log(_:dso:log:_:_:)();
        if (v71)
        {
          v72 = 0x616C7065526D656FLL;
          v73 = 0xEC000000676E6963;
        }

        else
        {
          v72 = 0x696D7369446D656FLL;
          v73 = 0xED0000676E697373;
        }

        sub_100009BF0(v55, v72, v73);

        return;
      }

LABEL_48:
      __break(1u);
      return;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v56 = v93;
  v57 = swift_dynamicCast();
  (*(v12 + 7))(v56, v57 ^ 1u, 1, v11);
  if ((*(v12 + 6))(v56, 1, v11) == 1)
  {
    goto LABEL_33;
  }

  v97 = v31;
  v94 = v26;
  v92 = v2;
  (*(v12 + 4))(v91, v56, v11);
  v95 = NotificationModel.id.getter();
  v58 = v12;
  v60 = v59;
  v61 = qword_100039158;
  swift_beginAccess();
  v62 = v89;
  v90 = *(v58 + 2);
  v90(v89, &v55[v61], v11);
  v63 = NotificationModel.id.getter();
  v65 = v64;
  v93 = v58;
  v96 = *(v58 + 1);
  v96(v62, v11);
  if (v95 == v63 && v60 == v65)
  {

LABEL_43:
    static os_log_type_t.debug.getter();
    os_log(_:dso:log:_:_:)();
    v76 = v88;
    v77 = v90;
    v78 = v91;
    v90(v88, v91, v11);
    swift_beginAccess();
    (*(v93 + 3))(&v55[v61], v76, v11);
    swift_endAccess();
    v79 = v86;
    v77(v86, &v55[v61], v11);
    v80 = *&v55[qword_100037C30 + 8];
    v81 = &v79[*(v87 + 20)];
    *v81 = *&v55[qword_100037C30];
    *(v81 + 1) = v80;

    dispatch thunk of UIHostingController.rootView.setter();

    v82 = v96;
    v96(v76, v11);
    v82(v78, v11);
    return;
  }

  v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v75)
  {
    goto LABEL_43;
  }

  static os_log_type_t.debug.getter();
  os_log(_:dso:log:_:_:)();
  sub_100009BF0(v55, 0x616C7065526D656FLL, 0xEC000000676E6963);
  v83 = v91;
  sub_100008FA8(v91);

  v96(v83, v11);
}

uint64_t CAFRequestTemporaryContent.settingsDescription.getter()
{
  _StringGuts.grow(_:)(60);
  v1._countAndFlagsBits = 0xD000000000000021;
  v1._object = 0x800000010002B460;
  String.append(_:)(v1);
  v2 = [v0 on];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._object = 0x800000010002B490;
  v7._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v7);
  v8 = [v0 temporaryContentURL];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  return 0;
}

uint64_t CAFRequestContent.settingsDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(63);
  v2._countAndFlagsBits = 0xD000000000000018;
  v2._object = 0x800000010002B4B0;
  String.append(_:)(v2);
  v3 = [v0 on];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._countAndFlagsBits = 0x6E65746E6F63202CLL;
  v8._object = 0xEE00203A4C525574;
  String.append(_:)(v8);
  v9 = [v0 contentURL];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._object = 0x800000010002B4D0;
  v14._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v14);
  v15 = [v1 userDismissible];
  v16 = v15 == 0;
  if (v15)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  v19 = v18;
  String.append(_:)(*&v17);

  return 0;
}

void sub_100008FA8(uint64_t a1)
{
  v70 = a1;
  v71 = type metadata accessor for NotificationModel();
  v69 = *(v71 - 8);
  v1 = __chkstk_darwin(v71);
  v67 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v5 = &v64 - v4;
  __chkstk_darwin(v3);
  v7 = &v64 - v6;
  v8 = objc_opt_self();
  v9 = [v8 sharedApplication];
  v10 = [v9 delegate];

  if (!v10)
  {
    __break(1u);
    goto LABEL_33;
  }

  type metadata accessor for AppDelegate(0);
  v11 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  v12 = v11;
  swift_unknownObjectRelease();
  if (v11)
  {
    v72 = sub_100014588();
  }

  else
  {
    v72 = 0;
  }

  v13 = [v8 sharedApplication];
  v14 = [v13 delegate];

  if (!v14)
  {
LABEL_33:
    __break(1u);
  }

  v15 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  v16 = v15;
  swift_unknownObjectRelease();
  if (v15)
  {
    v17 = sub_100014AA0();
  }

  else
  {
    v17 = 0;
  }

  if (!v72 || ([v72 on] & 1) == 0)
  {
    if (v17)
    {
      if ([v17 on])
      {
        goto LABEL_13;
      }
    }

    v39 = v72;

    return;
  }

LABEL_13:
  v66 = v17;
  v18 = *(v69 + 16);
  v18(v7, v70, v71);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = objc_allocWithZone(type metadata accessor for NotificationHostingController(0));
  sub_10000B2B4(v7, sub_10000B644, v19);
  v22 = v21;

  *&v22[qword_100039160 + 8] = &off_1000314E8;
  swift_unknownObjectWeakAssign();
  v23 = static os_log_type_t.error.getter();
  sub_1000043C8(0, &qword_100037EE8, OS_os_log_ptr);
  v24 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v24, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v24, v23, "[NotificationManager] Created new notification: %@", v25, 0xCu);
    sub_10000B6D0(v26, &unk_100037B00, qword_100024000);
  }

  [v22 preferredContentSize];
  if (fabs(v28) == INFINITY || ([v22 preferredContentSize], fabs(v29) == INFINITY))
  {
    v30 = static os_log_type_t.error.getter();
    v31 = v71;
    v18(v5, v70, v71);
    v32 = static OS_os_log.default.getter();
    if (!os_log_type_enabled(v32, v30))
    {

      (*(v69 + 8))(v5, v31);
      return;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v73 = v34;
    *v33 = 136315138;
    sub_10000B26C(&qword_100037F68, &type metadata accessor for NotificationModel, &protocol conformance descriptor for NotificationModel);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v69 + 8))(v5, v31);
    v38 = sub_10001A194(v35, v37, &v73);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v30, "[NotificationManager] Unable to post new notification with model %s - size contains an infinite dimension", v33, 0xCu);
    sub_10000458C(v34);

    goto LABEL_27;
  }

  v65 = v18;
  v40 = v68;
  v41 = *(v68 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification);
  *(v68 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification) = v22;
  v42 = v22;

  sub_100003FD8(&qword_100037F70, &qword_100023FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100023B50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v44;
  *(inited + 48) = sub_100005C44();
  v45 = sub_10001AA4C(inited);
  swift_setDeallocating();
  sub_10000B6D0(inited + 32, &unk_100037F78, &qword_100023FF8);
  v46 = *(v40 + 24);
  v47 = v42;
  sub_100009A10(v45);

  sub_100003FD8(&qword_100037F60, &qword_100023FE8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v73 = 0;
  LODWORD(v42) = [v46 postPresentable:v47 options:1 userInfo:isa error:&v73];

  v49 = v73;
  if (v42)
  {

LABEL_27:
    return;
  }

  v50 = v49;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v51 = static os_log_type_t.error.getter();
  v52 = v67;
  v53 = v71;
  v65(v67, v70, v71);
  v54 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v54, v51))
  {
    v55 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v55 = 136315394;
    sub_10000B26C(&qword_100037F68, &type metadata accessor for NotificationModel, &protocol conformance descriptor for NotificationModel);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v52;
    v59 = v58;
    (*(v69 + 8))(v57, v53);
    v60 = sub_10001A194(v56, v59, &v73);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2080;
    swift_getErrorValue();
    v61 = Error.localizedDescription.getter();
    v63 = sub_10001A194(v61, v62, &v73);

    *(v55 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v54, v51, "[NotificationManager] Unable to post new notification with model %s, error: %s", v55, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v69 + 8))(v52, v53);
  }
}

uint64_t sub_10000991C@<X0>(uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v6 = *(Strong + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_assetManager), , , v6))
  {
    CAUAssetLibraryManager.fetchCustomImage(named:)();
  }

  else
  {
    v8 = sub_100003FD8(&qword_100037EE0, &qword_100023FD0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }
}

unint64_t sub_100009A10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003FD8(&qword_100037F88, &qword_100024570);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);

        v18 = v17;
        result = sub_10001A73C(v16, v15);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * result) = v18;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_100009BF0(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a3;
  v6 = type metadata accessor for NotificationModel();
  v46 = *(v6 - 8);
  __chkstk_darwin(v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.error.getter();
  v47 = sub_1000043C8(0, &qword_100037EE8, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v44 = v6;
    v11 = v10;
    v12 = swift_slowAlloc();
    v43 = v3;
    v13 = v12;
    v49[0] = v12;
    *v11 = 136315138;
    v14 = a1;
    v15 = [v14 description];
    v16 = a1;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_10001A194(v17, v19, v49);

    *(v11 + 4) = v20;
    a1 = v16;
    _os_log_impl(&_mh_execute_header, v9, v8, "[NotificationManager] active nil - revoking notification: %s", v11, 0xCu);
    sub_10000458C(v13);
    v4 = v43;

    v6 = v44;
  }

  v21 = *(v4 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification);
  *(v4 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification) = 0;

  v22 = *(v4 + 24);
  v23 = [a1 requestIdentifier];
  v24 = a1;
  v25 = String._bridgeToObjectiveC()();
  sub_10001A948(&_swiftEmptyArrayStorage);
  sub_100003FD8(&qword_100037F60, &qword_100023FE8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v49[0] = 0;
  v27 = [v22 revokePresentableWithRequestIdentifier:v23 reason:v25 animated:1 userInfo:isa error:v49];

  if (v27)
  {
    v28 = v49[0];
  }

  else
  {
    v29 = v49[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v30 = static os_log_type_t.error.getter();
    v31 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v32 = 136315394;
      v33 = qword_100039158;
      swift_beginAccess();
      v35 = v45;
      v34 = v46;
      (*(v46 + 16))(v45, &v24[v33], v6);
      sub_10000B26C(&qword_100037F68, &type metadata accessor for NotificationModel, &protocol conformance descriptor for NotificationModel);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v34 + 8))(v35, v6);
      v39 = sub_10001A194(v36, v38, &v50);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2080;
      swift_getErrorValue();
      v40 = Error.localizedDescription.getter();
      v42 = sub_10001A194(v40, v41, &v50);

      *(v32 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v31, v30, "[NotificationManager] Unable to revoke active notification with model %s, error: %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall AutoSettingsNotificationManager.invalidate()()
{
  memset(v0, 0, sizeof(v0));
  sub_1000080A0(v0);
  sub_10000B6D0(v0, &qword_1000387F0, &qword_100023CA0);
}

void sub_10000A13C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (!v7)
  {
    __break(1u);
    goto LABEL_30;
  }

  type metadata accessor for AppDelegate(0);
  v8 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  v9 = v8;
  swift_unknownObjectRelease();
  if (!v8)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v10 = sub_100014FB8();

  if (v10)
  {
    static os_log_type_t.debug.getter();
    sub_1000043C8(0, &qword_100037EE8, OS_os_log_ptr);
    log = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
LABEL_5:

    return;
  }

  if (!a1)
  {
    return;
  }

  type metadata accessor for NotificationHostingController(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification;
  v14 = *(v3 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification);
  swift_unknownObjectRetain();
  if (![v12 isEqual:v14])
  {
    v21 = static os_log_type_t.error.getter();
    sub_1000043C8(0, &qword_100037EE8, OS_os_log_ptr);
    log = static OS_os_log.default.getter();
    if (os_log_type_enabled(log, v21))
    {
      v22 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v22 = 136315394;
      swift_unknownObjectRetain();
      v23 = [v12 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      swift_unknownObjectRelease();

      v27 = sub_10001A194(v24, v26, &v44);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      sub_100003FD8(&qword_100037EF0, &unk_100023FD8);
      sub_10000B26C(&qword_100037EF8, type metadata accessor for NotificationHostingController, &protocol conformance descriptor for NSObject);
      v28 = Optional<A>.description.getter();
      v30 = sub_10001A194(v28, v29, &v44);

      *(v22 + 14) = v30;
      _os_log_impl(&_mh_execute_header, log, v21, "[NotificationManager] presentableNotification: %s is NOT EQUAL to activeNotification %s. Not calling dismissal handler.", v22, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = v15;
  if (!a2)
  {

LABEL_23:
    v32 = static os_log_type_t.debug.getter();
    sub_1000043C8(0, &qword_100037EE8, OS_os_log_ptr);
    v33 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136315138;
      swift_unknownObjectRetain();
      v36 = [v12 description];
      loga = v32;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
      swift_unknownObjectRelease();

      v40 = sub_10001A194(v37, v39, &v44);

      *(v34 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, loga, "[NotificationManager] dismissing presentable: %s", v34, 0xCu);
      sub_10000458C(v35);
    }

    v41 = *(v3 + v13);
    *(v3 + v13) = 0;

    sub_10000566C();
    goto LABEL_26;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
    swift_unknownObjectRelease();

    return;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:

  swift_unknownObjectRelease();
}

uint64_t AutoSettingsNotificationManager.deinit()
{

  sub_10000B6D0(v0 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_settingsCache, &qword_100037BD0, &qword_100023C80);

  return v0;
}

uint64_t AutoSettingsNotificationManager.__deallocating_deinit()
{
  AutoSettingsNotificationManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10000A7F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A834(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A8A4(uint64_t a1)
{
  result = type metadata accessor for NotificationModel();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10000A984(uint64_t a1)
{
  sub_10000AA44(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000AA44(uint64_t a1)
{
  if (!qword_100037CC0)
  {
    type metadata accessor for CAFUISettingsCache();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100037CC0);
    }
  }
}

uint64_t sub_10000AAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationModel();
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

uint64_t sub_10000AB80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NotificationModel();
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

uint64_t sub_10000AC58(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000AC90(uint64_t a1)
{
  result = type metadata accessor for NotificationModel();
  if (v2 <= 0x3F)
  {
    result = sub_10000AD14();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000AD14()
{
  result = qword_100037E50;
  if (!qword_100037E50)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100037E50);
  }

  return result;
}

uint64_t sub_10000AF74@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.canShowCloseButtonFocusEffect.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000B030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsNotificationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B094()
{
  v1 = *(type metadata accessor for SettingsNotificationView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for NotificationModel();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000B180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsNotificationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for SettingsNotificationView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_100004B74(a1, a2, v8, a3);
}

uint64_t sub_10000B26C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10000B2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v6 - 8);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SettingsNotificationView(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_100039160 + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = qword_100039158;
  v13 = type metadata accessor for NotificationModel();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = v3 + v12;
  v17 = v27;
  v15(v16, v27, v13);
  v18 = (v3 + qword_100037C30);
  *v18 = a2;
  v18[1] = a3;
  v15(v11, v17, v13);
  v19 = &v11[*(v9 + 28)];
  *v19 = a2;
  *(v19 + 1) = a3;
  swift_retain_n();
  v20 = UIHostingController.init(rootView:)();
  v21 = [v20 view];
  if (v21)
  {
    v22 = v21;
    [v21 setClipsToBounds:0];

    v23 = v20;
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();

    v24 = [v23 view];
    if (v24)
    {
      v25 = [objc_opt_self() clearColor];
      [v24 setBackgroundColor:v25];

      (*(v14 + 8))(v17, v13);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10000B53C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100003FD8(&qword_100037C00, &qword_100023C90);
  v2 = Optional<A>.description.getter();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x72656E6E61622ELL;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_10000B64C(uint64_t a1)
{
  v2 = type metadata accessor for SettingsNotificationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B6D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003FD8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000B730(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003FD8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_10000B798(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000B804()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000B848()
{
  result = qword_100037FB8;
  if (!qword_100037FB8)
  {
    sub_10000A834(&qword_100037ED0, &qword_100023FC0);
    sub_10000B900();
    sub_10000BD80(&qword_100038028, &qword_100037ED8, &qword_100023FC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FB8);
  }

  return result;
}

unint64_t sub_10000B900()
{
  result = qword_100037FC0;
  if (!qword_100037FC0)
  {
    sub_10000A834(&qword_100037EC8, &qword_100023F88);
    sub_10000B9B8();
    sub_10000BD80(&qword_100038018, &qword_100038020, &unk_100024080, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FC0);
  }

  return result;
}

unint64_t sub_10000B9B8()
{
  result = qword_100037FC8;
  if (!qword_100037FC8)
  {
    sub_10000A834(&qword_100037EB8, &qword_100023F48);
    sub_10000BA70();
    sub_10000BD80(&qword_100038010, &qword_100037EC0, &qword_100023F50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FC8);
  }

  return result;
}

unint64_t sub_10000BA70()
{
  result = qword_100037FD0;
  if (!qword_100037FD0)
  {
    sub_10000A834(&qword_100037EA8, &qword_100023F08);
    sub_10000BB28();
    sub_10000BD80(&qword_100038008, &qword_100037EB0, &qword_100023F10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FD0);
  }

  return result;
}

unint64_t sub_10000BB28()
{
  result = qword_100037FD8;
  if (!qword_100037FD8)
  {
    sub_10000A834(&qword_100037E98, &qword_100023EC8);
    sub_10000BBE0();
    sub_10000BD80(&qword_100038000, &qword_100037EA0, &qword_100023ED0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FD8);
  }

  return result;
}

unint64_t sub_10000BBE0()
{
  result = qword_100037FE0;
  if (!qword_100037FE0)
  {
    sub_10000A834(&qword_100037E90, &qword_100023E90);
    sub_10000BC98();
    sub_10000BD80(&qword_100037FF8, &qword_100037E88, &qword_100023E58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FE0);
  }

  return result;
}

unint64_t sub_10000BC98()
{
  result = qword_100037FE8;
  if (!qword_100037FE8)
  {
    sub_10000A834(&qword_100037E80, &qword_100023E50);
    sub_10000B26C(&qword_100037FF0, &type metadata accessor for NotificationView, &protocol conformance descriptor for NotificationView);
    sub_10000BD80(&qword_100037FF8, &qword_100037E88, &qword_100023E58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FE8);
  }

  return result;
}

uint64_t sub_10000BD80(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000A834(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for VSNotificationHistoryViewController(uint64_t a1)
{
  result = qword_100038050;
  if (!qword_100038050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void **sub_10000BE80()
{
  v1 = [v0 historicalNotifications];
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = v1;
    sub_1000043C8(0, &qword_1000381E8, CAFHistoricalNotification_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = &_swiftEmptyArrayStorage;
    if (v4 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v7 hidden])
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v2 = &v11;
          specialized ContiguousArray._endMutation()();
        }

        ++v6;
        if (v9 == i)
        {
          v2 = v11;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_15:
  }

  return v2;
}

void sub_10000C008()
{
  v1 = v0;
  v49.receiver = v0;
  v49.super_class = type metadata accessor for VSNotificationHistoryViewController(0);
  objc_msgSendSuper2(&v49, "viewDidLoad");
  v2 = [objc_opt_self() mainBundle];
  v50._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x4143494649544F4ELL;
  v3._object = 0xED0000534E4F4954;
  v4.value._countAndFlagsBits = 0x747465536F747541;
  v4.value._object = 0xEC00000073676E69;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v50);

  String.init(format:_:)();

  v6 = String._bridgeToObjectiveC()();

  [v1 setTitle:v6];

  v7 = CAFUITableViewController.tableView.getter();
  [v7 setDataSource:v1];

  v8 = CAFUITableViewController.tableView.getter();
  [v8 setDelegate:v1];

  v9 = CAFUITableViewController.tableView.getter();
  type metadata accessor for VSNotificationTableCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  static CAFUICellProtocol.reuseIdentifier.getter();
  v11 = String._bridgeToObjectiveC()();

  [v9 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v11];

  v12 = [*&v1[qword_100038038] historicalNotifications];
  if (v12)
  {
    v13 = v12;
    sub_1000043C8(0, &qword_1000381E8, CAFHistoricalNotification_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v14 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v16 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        [v17 registerObserver:v1];

        ++v16;
        if (v19 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  v20 = [v1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_23;
  }

  v21 = v20;
  v22 = *&v1[qword_100038030];
  [v20 addSubview:v22];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100003FD8(&qword_100038A90, &unk_100024110);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100024090;
  v24 = [v22 topAnchor];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v23 + 32) = v28;
  v29 = [v22 bottomAnchor];
  v30 = [v1 view];
  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = v30;
  v32 = [v30 safeAreaLayoutGuide];

  v33 = [v32 bottomAnchor];
  v34 = [v29 constraintEqualToAnchor:v33];

  *(v23 + 40) = v34;
  v35 = [v22 leadingAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = v36;
  v38 = [v36 safeAreaLayoutGuide];

  v39 = [v38 leadingAnchor];
  v40 = [v35 constraintEqualToAnchor:v39];

  *(v23 + 48) = v40;
  v41 = [v22 trailingAnchor];
  v42 = [v1 view];
  if (v42)
  {
    v43 = v42;
    v44 = objc_opt_self();
    v45 = [v43 safeAreaLayoutGuide];

    v46 = [v45 trailingAnchor];
    v47 = [v41 constraintEqualToAnchor:v46];

    *(v23 + 56) = v47;
    sub_1000043C8(0, &qword_100038200, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v44 activateConstraints:isa];

    sub_10000C668();
    return;
  }

LABEL_26:
  __break(1u);
}

void sub_10000C620(void *a1)
{
  v1 = a1;
  sub_10000C008();
}

void sub_10000C668()
{
  v1 = v0;
  v2 = sub_10000BE80();
  if (v2 >> 62)
  {
LABEL_38:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = CAFUITableViewController.tableView.getter();
  v5 = v4;
  if (!v3)
  {
    [v4 setHidden:1];

    v40 = *(v1 + qword_100038030);

    [v40 setHidden:0];
    return;
  }

  [v4 setHidden:0];

  [*(v1 + qword_100038030) setHidden:1];
  v6 = sub_10000BE80();
  v7 = sub_1000101D4(v6);

  v8 = qword_100038048;
  swift_beginAccess();
  v42 = v8;
  *(v1 + v8) = v7;

  v9 = 0;
  v10 = v7 + 8;
  v41 = v7;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v7[8];
  v14 = (v11 + 63) >> 6;
  while (1)
  {
    if (!v13)
    {
      while (1)
      {
        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v15 >= v14)
        {

          v39 = CAFUITableViewController.tableView.getter();
          [v39 reloadData];

          return;
        }

        v13 = v10[v15];
        ++v9;
        if (v13)
        {
          v9 = v15;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_14:
    v16 = __clz(__rbit64(v13)) | (v9 << 6);
    v43 = *(v41[6] + v16);
    v17 = *(v41[7] + 8 * v16);
    if (!(v17 >> 62))
    {
      v18 = (v17 & 0xFFFFFFFFFFFFFF8);

LABEL_16:

      goto LABEL_17;
    }

    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (!v32)
    {
      v18 = &_swiftEmptyArrayStorage;
      goto LABEL_16;
    }

    v33 = v1;
    v34 = v32;
    v18 = sub_10000DF48(v32, 0);
    swift_bridgeObjectRetain_n();
    sub_100020AF0(v18 + 32, v34, v17);
    v36 = v35;

    v37 = v36 == v34;
    v1 = v33;
    if (!v37)
    {
      break;
    }

LABEL_17:
    v44 = v18;
    sub_10000E3C8(&v44);

    v19 = v44;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v1 + v42);
    *(v1 + v42) = 0x8000000000000000;
    v22 = sub_10001A7B4(v43);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_36;
    }

    v28 = v23;
    if (v21[3] < v27)
    {
      sub_10000E138(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_10001A7B4(v43);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_39;
      }

LABEL_22:
      if (v28)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v38 = v22;
    sub_10000E580();
    v22 = v38;
    if (v28)
    {
LABEL_7:
      *(v21[7] + 8 * v22) = v19;

      goto LABEL_8;
    }

LABEL_23:
    v21[(v22 >> 6) + 8] |= 1 << v22;
    *(v21[6] + v22) = v43;
    *(v21[7] + 8 * v22) = v19;
    v30 = v21[2];
    v26 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v26)
    {
      goto LABEL_37;
    }

    v21[2] = v31;
LABEL_8:
    v13 &= v13 - 1;
    *(v1 + v42) = v21;
    swift_endAccess();
  }

  __break(1u);

  __break(1u);
LABEL_39:
  type metadata accessor for CAFNotificationSeverity();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10000CA80(unint64_t a1)
{
  v3 = qword_100038048;
  swift_beginAccess();
  v13 = v1;
  v4 = *(v1 + v3);
  v5 = v3;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = sub_10000DFD0(*(v4 + 16), 0);
    v12 = sub_1000100D0(&v14, v7 + 32, v6, v4);
    v8 = v14;
    swift_bridgeObjectRetain_n();
    sub_1000101CC(v8);
    if (v12 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = &_swiftEmptyArrayStorage;
LABEL_5:
  v14 = v7;
  sub_10000E444(&v14);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v14 + 2) <= a1)
  {
LABEL_13:
    __break(1u);

    __break(1u);
    return result;
  }

  v9 = v14[a1 + 32];

  if (*(*(v13 + v5) + 16) && (sub_10001A7B4(v9), (v10 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

void sub_10000CBF8(void *a1)
{
  v2 = v1;
  v4 = IndexPath.section.getter();
  v5 = sub_10000CA80(v4);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = IndexPath.row.getter();
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v6 + 8 * v7 + 32);
      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
  v9 = v8;

  v10 = *(sub_100002244() + 2);

  if (v10 || ([v9 hasUserVisibleFullDescription] & 1) != 0)
  {
    v11 = *&v2[qword_100038040];
    v12 = objc_allocWithZone(type metadata accessor for VSNotificationDetailViewController(0));
    v12[qword_100037A58] = 0;
    v13 = &v12[qword_100037A60];
    *v13 = 0;
    v13[1] = 0;
    *&v12[qword_100037A48] = v11;
    *&v12[qword_100037A40] = v9;
    swift_retain_n();
    isa = v9;
    *&v12[qword_100037A50] = sub_100002244();
    v9 = CAFUITableViewController.init(style:)();

    v14 = [v2 navigationController];
    if (v14)
    {
      v15 = v14;
      [v14 pushViewController:v9 animated:1];
    }
  }

  else
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectRowAtIndexPath:? animated:?];
  }
}

uint64_t sub_10000CDE8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  sub_10000CBF8(v10);

  return (*(v7 + 8))(v9, v6);
}

id sub_10000CEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_allocWithZone(UIView) init];
  }

  return v6;
}

double sub_10000CF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0.0;
  if (a4 > 0)
  {
    return 12.0;
  }

  return result;
}

uint64_t sub_10000CF50(uint64_t a1)
{
  v2 = qword_100038048;
  swift_beginAccess();
  return *(*(a1 + v2) + 16);
}

uint64_t sub_10000CF9C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a1;
  v6 = sub_10000CA80(a4);
  if (v6)
  {
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10000D01C(void *a1, void *a2)
{
  type metadata accessor for VSNotificationTableCell(0);
  static CAFUICellProtocol.reuseIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = IndexPath.section.getter();
    v10 = sub_10000CA80(v9);
    if (!v10)
    {
      _StringGuts.grow(_:)(24);

      type metadata accessor for IndexPath();
      sub_100010050();
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      goto LABEL_13;
    }

    v11 = v10;
    v6 = a2;
    v12 = IndexPath.row.getter();
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v11 + 8 * v12 + 32);
LABEL_7:
      v14 = v13;

      v15 = *(v8 + qword_100038AD0);
      *(v8 + qword_100038AD0) = v14;
      v16 = v14;

      sub_10001E114();
      return v8;
    }

    __break(1u);
  }

LABEL_13:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10000D268(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v12 = sub_10000D01C(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

void sub_10000D37C(void *a1)
{
  v1 = a1;
  sub_10000C668();
}

uint64_t sub_10000D3C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a1;
  sub_10000C668();

  return (*(v6 + 8))(v8, v5);
}

void sub_10000D4CC(void *a1)
{
  v1 = a1;
  sub_10000C668();
}

uint64_t sub_10000D548()
{
}

uint64_t sub_10000D5C4(uint64_t a1)
{
}

void sub_10000D694()
{
  v49.receiver = v0;
  v49.super_class = type metadata accessor for VSEmptyNotificationHistoryView();
  v46 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v48 = [objc_allocWithZone(UIImageView) initWithImage:v2];
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 setTextAlignment:1];
    sub_1000043C8(0, &unk_1000381F0, UIFont_ptr);
    v4 = static UIFont.cafui_preferredFont(for:weight:size:rounded:)();
    [v3 setFont:v4];

    v45 = v2;
    v5 = objc_opt_self();
    v6 = [v5 mainBundle];
    v50._object = 0xE000000000000000;
    v7._object = 0x800000010002BC40;
    v7._countAndFlagsBits = 0xD00000000000001ELL;
    v8.value._countAndFlagsBits = 0x747465536F747541;
    v8.value._object = 0xEC00000073676E69;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v50._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v50);

    String.init(format:_:)();

    v10 = String._bridgeToObjectiveC()();

    [v3 setText:v10];

    v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setTextAlignment:1];
    v12 = static UIFont.cafui_preferredFont(for:weight:size:rounded:)();
    [v11 setFont:v12];

    v13 = [v5 mainBundle];
    v51._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0xD000000000000023;
    v14._object = 0x800000010002BC60;
    v15.value._countAndFlagsBits = 0x747465536F747541;
    v15.value._object = 0xEC00000073676E69;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v51._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v51);

    String.init(format:_:)();

    v17 = String._bridgeToObjectiveC()();

    [v11 setText:v17];

    v18 = v46;
    [v18 addSubview:v48];
    [v18 addSubview:v3];
    [v18 addSubview:v11];
    v47 = objc_opt_self();
    sub_100003FD8(&qword_100038A90, &unk_100024110);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000240A0;
    v20 = [v48 centerYAnchor];
    v21 = [v18 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v19 + 32) = v22;
    v23 = [v48 centerXAnchor];
    v24 = [v18 centerXAnchor];

    v25 = [v23 constraintEqualToAnchor:v24];
    *(v19 + 40) = v25;
    v26 = [v3 topAnchor];
    v27 = [v48 bottomAnchor];

    v28 = [v26 constraintEqualToAnchor:v27];
    *(v19 + 48) = v28;
    v29 = [v3 leadingAnchor];
    v30 = [v18 leadingAnchor];

    v31 = [v29 constraintEqualToAnchor:v30];
    *(v19 + 56) = v31;
    v32 = [v3 trailingAnchor];
    v33 = [v18 trailingAnchor];

    v34 = [v32 constraintEqualToAnchor:v33];
    *(v19 + 64) = v34;
    v35 = [v11 topAnchor];
    v36 = [v3 bottomAnchor];

    v37 = [v35 constraintEqualToAnchor:v36];
    *(v19 + 72) = v37;
    v38 = [v11 leadingAnchor];
    v39 = [v18 leadingAnchor];

    v40 = [v38 constraintEqualToAnchor:v39];
    *(v19 + 80) = v40;
    v41 = [v11 trailingAnchor];

    v42 = [v18 trailingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    *(v19 + 88) = v43;
    sub_1000043C8(0, &qword_100038200, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v47 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

id sub_10000DEEC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_10000DF48(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100003FD8(&qword_100038A90, &unk_100024110);
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

void *sub_10000DFD0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100003FD8(&qword_100038228, &qword_100024128);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000E044(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003FD8(&qword_100038228, &qword_100024128);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

Swift::Int sub_10000E138(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003FD8(&qword_100038230, &unk_100024130);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10000E3C8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000100A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10000E6DC(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_10000E444(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000100BC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v14 >= v11)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for CAFNotificationSeverity();
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10000F368(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void *sub_10000E580()
{
  v1 = v0;
  sub_100003FD8(&qword_100038230, &unk_100024130);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_10000E6DC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000043C8(0, &qword_1000381E8, CAFHistoricalNotification_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10000EA64(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10000E7F0(0, v2, 1, a1);
  }
}

void sub_10000E7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v8 = __chkstk_darwin(v34);
  v36 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v35 = &v28 - v11;
  v29 = a2;
  if (a3 != a2)
  {
    v12 = *a4;
    v33 = v10 + 8;
    v37 = v12;
    v13 = v12 + 8 * a3 - 8;
    v14 = a1 - a3;
    v15 = (v10 + 8);
LABEL_5:
    v31 = v13;
    v32 = a3;
    v16 = *(v37 + 8 * a3);
    v30 = v14;
    while (1)
    {
      v17 = *v13;
      v18 = v16;
      v38 = v18;
      v19 = v17;
      v20 = [v18 timestamp];
      sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
      v21 = v35;
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [v19 timestamp];
      v23 = v36;
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10001042C();
      v24 = v34;
      LOBYTE(v18) = dispatch thunk of static Comparable.< infix(_:_:)();
      v25 = *v15;
      (*v15)(v23, v24);
      v25(v21, v24);

      if ((v18 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v13 = v31 + 8;
        v14 = v30 - 1;
        if (v32 + 1 == v29)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v26 = *v13;
      v16 = *(v13 + 8);
      *v13 = v16;
      *(v13 + 8) = v26;
      v13 -= 8;
      if (__CFADD__(v14++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10000EA64(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v117 = a1;
  v127 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v7 = __chkstk_darwin(v127);
  v129 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v128 = &v115 - v10;
  v11 = a3[1];
  v119 = a3;
  if (v11 < 1)
  {
    v13 = &_swiftEmptyArrayStorage;
LABEL_87:
    v4 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    a4 = v13;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v108 = a4;
    }

    else
    {
LABEL_120:
      v108 = sub_10001003C(a4);
    }

    v131 = v108;
    v109 = *(v108 + 2);
    if (v109 >= 2)
    {
      while (*a3)
      {
        a4 = v109 - 1;
        v110 = *&v108[16 * v109];
        v111 = v108;
        v112 = *&v108[16 * v109 + 24];
        v113 = v124;
        sub_10000F8B4((*a3 + 8 * v110), (*a3 + 8 * *&v108[16 * v109 + 16]), (*a3 + 8 * v112), v4);
        v124 = v113;
        if (v113)
        {
          goto LABEL_98;
        }

        if (v112 < v110)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_10001003C(v111);
        }

        if (v109 - 2 >= *(v111 + 2))
        {
          goto LABEL_114;
        }

        v114 = &v111[16 * v109];
        *v114 = v110;
        *(v114 + 1) = v112;
        v131 = v111;
        sub_10000FFB0(a4);
        v108 = v131;
        v109 = *(v131 + 2);
        a3 = v119;
        if (v109 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v12 = 0;
  v13 = &_swiftEmptyArrayStorage;
  v126 = (v9 + 8);
  v116 = a4;
  while (1)
  {
    v14 = v12++;
    if (v12 < v11)
    {
      v125 = v11;
      v115 = v13;
      v15 = *a3;
      v16 = *(*a3 + 8 * v12);
      v118 = v14;
      v120 = 8 * v14;
      v17 = (v15 + 8 * v14);
      v19 = *v17;
      v18 = v17 + 2;
      v20 = v16;
      v21 = v19;
      v22 = [v20 timestamp];
      v23 = sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
      v4 = v128;
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = [v21 timestamp];
      v25 = v129;
      v123 = v23;
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = sub_10001042C();
      v27 = v127;
      v122 = v26;
      LODWORD(v130) = dispatch thunk of static Comparable.< infix(_:_:)();
      v28 = *v126;
      (*v126)(v25, v27);
      v121 = v28;
      (v28)(v4, v27);

      v29 = v118 + 2;
      while (1)
      {
        v12 = v125;
        if (v125 == v29)
        {
          break;
        }

        v30 = *(v18 - 1);
        v31 = *v18;
        v4 = v30;
        v32 = [v31 timestamp];
        v33 = v128;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = [v4 timestamp];
        v35 = v129;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = v127;
        v37 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v38 = v121;
        (v121)(v35, v36);
        v38(v33, v36);

        ++v29;
        ++v18;
        if ((v130 & 1) != v37)
        {
          v12 = v29 - 1;
          break;
        }
      }

      v14 = v118;
      a3 = v119;
      v13 = v115;
      a4 = v116;
      v39 = v120;
      if (v130)
      {
        if (v12 < v118)
        {
          goto LABEL_117;
        }

        if (v118 < v12)
        {
          v40 = 8 * v12 - 8;
          v41 = v12;
          v42 = v118;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            ++v42;
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }
    }

    v45 = a3[1];
    if (v12 < v45)
    {
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_116;
      }

      if (v12 - v14 < a4)
      {
        v46 = v14 + a4;
        if (__OFADD__(v14, a4))
        {
          goto LABEL_118;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v14)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v12 != v46)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v12 < v14)
    {
      goto LABEL_115;
    }

    v61 = v13;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v13 = v61;
    }

    else
    {
      v13 = sub_1000042C0(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v13 + 2);
    v62 = *(v13 + 3);
    v63 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v13 = sub_1000042C0((v62 > 1), a4 + 1, 1, v13);
    }

    *(v13 + 2) = v63;
    v64 = &v13[16 * a4];
    *(v64 + 4) = v14;
    *(v64 + 5) = v12;
    v65 = *v117;
    if (!*v117)
    {
      goto LABEL_125;
    }

    if (a4)
    {
      while (1)
      {
        v4 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v66 = *(v13 + 4);
          v67 = *(v13 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_55:
          if (v69)
          {
            goto LABEL_104;
          }

          v82 = &v13[16 * v63];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_107;
          }

          v88 = &v13[16 * v4 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_111;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v4 = v63 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v92 = &v13[16 * v63];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_69:
        if (v87)
        {
          goto LABEL_106;
        }

        v95 = &v13[16 * v4];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_109;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v4 - 1;
        if (v4 - 1 >= v63)
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
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
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
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v103 = v13;
        v104 = *&v13[16 * a4 + 32];
        v105 = *&v13[16 * v4 + 40];
        v106 = v124;
        sub_10000F8B4((*a3 + 8 * v104), (*a3 + 8 * *&v13[16 * v4 + 32]), (*a3 + 8 * v105), v65);
        v124 = v106;
        if (v106)
        {
          goto LABEL_98;
        }

        if (v105 < v104)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_10001003C(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_101;
        }

        v107 = &v103[16 * a4];
        *(v107 + 4) = v104;
        *(v107 + 5) = v105;
        v131 = v103;
        sub_10000FFB0(v4);
        v13 = v131;
        v63 = *(v131 + 2);
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v13[16 * v63 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_102;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_103;
      }

      v77 = &v13[16 * v63];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_105;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_108;
      }

      if (v81 >= v73)
      {
        v99 = &v13[16 * v4 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_112;
        }

        if (v68 < v102)
        {
          v4 = v63 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v11 = a3[1];
    a4 = v116;
    if (v12 >= v11)
    {
      goto LABEL_87;
    }
  }

  v115 = v13;
  v125 = *a3;
  v47 = v125 + 8 * v12 - 8;
  v118 = v14;
  v48 = (v14 - v12);
  v120 = v46;
LABEL_28:
  v122 = v47;
  v123 = v12;
  v49 = *(v125 + 8 * v12);
  v121 = v48;
  v50 = v47;
  while (1)
  {
    v51 = *v50;
    v52 = v49;
    v130 = v52;
    v53 = v51;
    v54 = [v52 timestamp];
    sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
    v55 = v128;
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = [v53 timestamp];
    v57 = v129;
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10001042C();
    v58 = v127;
    a4 = dispatch thunk of static Comparable.< infix(_:_:)();
    v4 = *v126;
    (*v126)(v57, v58);
    (v4)(v55, v58);

    if ((a4 & 1) == 0)
    {
LABEL_27:
      v12 = v123 + 1;
      v47 = v122 + 8;
      v48 = v121 - 1;
      if (v123 + 1 != v120)
      {
        goto LABEL_28;
      }

      v12 = v120;
      v14 = v118;
      a3 = v119;
      v13 = v115;
      goto LABEL_35;
    }

    if (!v125)
    {
      break;
    }

    v59 = *v50;
    v49 = *(v50 + 8);
    *v50 = v49;
    *(v50 + 8) = v59;
    v50 -= 8;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_10000F368(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10001003C(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_10000FDC4((*a3 + *v77), (*a3 + *v79), (*a3 + v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + v7);
      v11 = *(*a3 + v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + v17);
            *(v20 + v17) = *(v20 + v16);
            *(v20 + v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000042C0(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1000042C0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = (v8 + 4);
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
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
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
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
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_10000FDC4((*a3 + *v70), (*a3 + *v72), (*a3 + v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = (*a3 + v7);
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *(v26 - 1);
    if (v27 >= v24)
    {
LABEL_29:
      ++v7;
      ++v22;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v27;
    *--v26 = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10000F8B4(void **a1, void **a2, void **a3, void **a4)
{
  v55 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v8 = *(v55 - 8);
  v9 = __chkstk_darwin(v55);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v48 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v59 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v50 = (v8 + 8);
      v58 = a4;
      v54 = a1;
LABEL_27:
      v49 = a2;
      v30 = a2 - 1;
      v31 = a3 - 1;
      v32 = v59;
      v51 = a2 - 1;
      do
      {
        v33 = v31;
        v34 = v31 + 1;
        v35 = *--v32;
        v36 = *v30;
        v37 = v35;
        v53 = v37;
        v38 = v36;
        v52 = v38;
        v39 = [v37 timestamp];
        sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
        v40 = v56;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = [v38 timestamp];
        v42 = v57;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10001042C();
        v43 = v55;
        LOBYTE(v41) = dispatch thunk of static Comparable.< infix(_:_:)();
        v44 = *v50;
        (*v50)(v42, v43);
        v44(v40, v43);

        if (v41)
        {
          v45 = v54;
          a3 = v33;
          v46 = v51;
          if (v34 != v49)
          {
            *v33 = *v51;
          }

          a4 = v58;
          if (v59 <= v58 || (a2 = v46, v46 <= v45))
          {
            a2 = v46;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v34 != v59)
        {
          *v33 = *v32;
        }

        v31 = v33 - 1;
        v59 = v32;
        v30 = v51;
      }

      while (v32 > v58);
      v59 = v32;
      a4 = v58;
      a2 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v59 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v16 = a2;
      v52 = (v8 + 8);
      v53 = a3;
      while (1)
      {
        v58 = a4;
        v54 = a1;
        v17 = *a4;
        v18 = *v16;
        v19 = v17;
        v20 = [v18 timestamp];
        sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
        v21 = v56;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = [v19 timestamp];
        v23 = v57;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10001042C();
        v24 = v55;
        v25 = dispatch thunk of static Comparable.< infix(_:_:)();
        v26 = *v52;
        (*v52)(v23, v24);
        v26(v21, v24);

        if ((v25 & 1) == 0)
        {
          break;
        }

        v27 = v16;
        v28 = v54;
        v29 = v54 == v16++;
        a4 = v58;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v59 || v16 >= v53)
        {
          goto LABEL_20;
        }
      }

      v27 = v58;
      a4 = v58 + 1;
      v28 = v54;
      if (v54 == v58)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_38:
  if (a2 != a4 || a2 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v59 - a4));
  }

  return 1;
}

uint64_t sub_10000FDC4(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v19 < v18)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (*v4 >= v11)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_10000FFB0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10001003C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_100010050()
{
  result = qword_100038218;
  if (!qword_100038218)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038218);
  }

  return result;
}

void *sub_1000100D0(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1000101D4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

LABEL_23:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v8 = [v5 notificationSeverity];
    v9 = sub_10001A7B4(v8);
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      goto LABEL_21;
    }

    v15 = v10;
    if (_swiftEmptyDictionarySingleton[3] < v14)
    {
      sub_10000E138(v14, 1);
      v9 = sub_10001A7B4(v8);
      if ((v15 & 1) != (v16 & 1))
      {
        break;
      }
    }

    if (v15)
    {
      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v9);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      v17 = v9;
      sub_100003FD8(&qword_100038A90, &unk_100024110);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1000240B0;
      *(v18 + 32) = v6;
      _swiftEmptyDictionarySingleton[(v17 >> 6) + 8] |= 1 << v17;
      *(_swiftEmptyDictionarySingleton[6] + v17) = v8;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v17) = v18;
      v19 = _swiftEmptyDictionarySingleton[2];
      v13 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v13)
      {
        goto LABEL_22;
      }

      _swiftEmptyDictionarySingleton[2] = v20;
    }

    if (v7 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  type metadata accessor for CAFNotificationSeverity();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10001042C()
{
  result = qword_100038238;
  if (!qword_100038238)
  {
    sub_10000A834(&unk_100037AF0, qword_100023C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038238);
  }

  return result;
}

id sub_1000106C4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SettingsWindowSceneDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10001071C(void *a1, void *a2, void *a3)
{
  CAFSignpostEmit_Scene();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = a1;
  v9 = [a2 role];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {

LABEL_8:
      static os_log_type_t.debug.getter();
      if (qword_100037840 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      return;
    }
  }

  v35 = v8;
  v16 = [v7 _FBSScene];
  v17 = [v16 settings];

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v18 = [objc_opt_self() sharedApplication];
    v19 = [v18 delegate];

    if (v19)
    {
      type metadata accessor for AppDelegate(0);
      v20 = swift_dynamicCastClassUnconditional();
      static os_log_type_t.debug.getter();
      if (qword_100037840 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v21 = [objc_allocWithZone(UIWindow) initWithWindowScene:v7];
      [v21 setAutoresizesSubviews:1];
      [v21 setAutoresizingMask:18];
      [v21 makeKeyAndVisible];
      [v21 setHidden:0];
      v36[3] = &type metadata for VehicleFeatures;
      v36[4] = sub_100011860();
      v22 = isFeatureEnabled(_:)();
      sub_10000458C(v36);
      if (v22)
      {
        v23 = [objc_opt_self() clearColor];
      }

      else
      {
        sub_1000043C8(0, &unk_100038460, UIColor_ptr);
        v23 = static UIColor.cafui_tableBackground.getter();
      }

      v31 = v23;
      [v21 setBackgroundColor:v23];

      swift_getKeyPath();
      swift_getKeyPath();
      v36[0] = v21;
      v32 = v20;
      static Published.subscript.setter();
      swift_unknownObjectRelease();
LABEL_27:

      return;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v24 = [v7 _FBSScene];
  v25 = [v24 settings];

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();

  v27 = [objc_opt_self() sharedApplication];
  v28 = [v27 delegate];

  if (v26)
  {
    if (v28)
    {
      type metadata accessor for AppDelegate(0);
      swift_dynamicCastClassUnconditional();
      static os_log_type_t.debug.getter();
      if (qword_100037840 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v29 = [objc_allocWithZone(UIWindow) initWithWindowScene:v7];
      swift_getKeyPath();
      swift_getKeyPath();
      v36[0] = v29;
      v30 = v29;
      static Published.subscript.setter();

      goto LABEL_27;
    }

    goto LABEL_33;
  }

  if (!v28)
  {
LABEL_34:
    __break(1u);
    return;
  }

  type metadata accessor for AppDelegate(0);
  swift_dynamicCastClassUnconditional();
  v33 = [a3 URLContexts];
  sub_1000043C8(0, &qword_100038470, UIOpenURLContext_ptr);
  sub_100011798();
  v34 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000125D4(v7, v34);
  swift_unknownObjectRelease();
}

void sub_100010DBC(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v13 = a1;
    v4 = [v3 _FBSScene];
    v5 = [v4 settings];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v6 = [objc_opt_self() sharedApplication];
      v7 = [v6 delegate];

      if (v7)
      {
        type metadata accessor for AppDelegate(0);
        swift_dynamicCastClassUnconditional();
        sub_100012AF0();
LABEL_15:
        swift_unknownObjectRelease();

        return;
      }

      __break(1u);
    }

    else
    {

      v8 = [v3 _FBSScene];
      v9 = [v8 settings];

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();

      v11 = [objc_opt_self() sharedApplication];
      v12 = [v11 delegate];

      if (!v10)
      {
        if (v12)
        {
          type metadata accessor for AppDelegate(0);
          swift_dynamicCastClassUnconditional();
          sub_100012AD0();
          goto LABEL_15;
        }

LABEL_20:
        __break(1u);
        return;
      }

      if (v12)
      {
        type metadata accessor for AppDelegate(0);
        swift_dynamicCastClassUnconditional();
        sub_100012B10();
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
}

void sub_1000110A8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v29 - v8;
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = sub_1000123B4(a1);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v3 + 32))(v11, v9, v2);
    v15 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v16 = qword_100039188;
    (*(v3 + 16))(v6, v11, v2);
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315138;
      sub_100011800();
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v29 = v3;
      v22 = *(v3 + 8);
      v22(v6, v2);
      v23 = sub_10001A194(v19, v21, &v30);

      *(v17 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v15, "AutoSettings received settings URL %s", v17, 0xCu);
      sub_10000458C(v18);

      v24 = v22;
    }

    else
    {
      v24 = *(v3 + 8);
      v24(v6, v2);
    }

    v25 = [objc_opt_self() sharedApplication];
    v26 = [v25 delegate];

    if (v26)
    {
      type metadata accessor for AppDelegate(0);
      v27 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
      v28 = v27;
      swift_unknownObjectRelease();
      if (v27)
      {
        sub_100017B24();

        v24(v11, v2);
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

void sub_100011428(void *a1)
{
  v1 = [a1 session];
  v2 = [v1 role];

  CAFSignpostEmit_SceneWillEnterForeground();
  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  type metadata accessor for AppDelegate(0);
  v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_100018914();
  swift_unknownObjectRelease();
}

unint64_t sub_100011798()
{
  result = qword_1000382D0;
  if (!qword_1000382D0)
  {
    sub_1000043C8(255, &qword_100038470, UIOpenURLContext_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000382D0);
  }

  return result;
}

unint64_t sub_100011800()
{
  result = qword_1000382D8;
  if (!qword_1000382D8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000382D8);
  }

  return result;
}

unint64_t sub_100011860()
{
  result = qword_1000382E0;
  if (!qword_1000382E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000382E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VehicleFeatures(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for VehicleFeatures(_WORD *result, int a2, int a3)
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

unint64_t sub_1000119B0()
{
  result = qword_100038350;
  if (!qword_100038350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038350);
  }

  return result;
}

uint64_t sub_100011A04()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100012368();
  result = OS_os_log.init(subsystem:category:)();
  qword_100039188 = result;
  return result;
}

uint64_t sub_100011ACC()
{
  v53 = type metadata accessor for URL();
  v1 = *(v53 - 8);
  v2 = __chkstk_darwin(v53);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v51 = &v46 - v5;
  v6 = type metadata accessor for URLQueryItem();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v46 - v11;
  v12 = sub_100003FD8(&qword_1000388B0, &unk_100024298);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = type metadata accessor for URLComponents();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v0;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100012300(v14);
    LOBYTE(v19) = static os_log_type_t.debug.getter();
    if (qword_100037840 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_24;
  }

  v47 = v1;
  (*(v16 + 32))(v18, v14, v15);
  v28 = URLComponents.queryItems.getter();
  v29 = v53;
  v48 = v18;
  v49 = v16;
  if (!v28)
  {
LABEL_14:
    v34 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v35 = qword_100039188;
    v36 = v47;
    v37 = v51;
    (*(v47 + 16))(v51, v52, v29);
    if (os_log_type_enabled(v35, v34))
    {
      v38 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v38 = 136315394;
      sub_100011800();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v36 + 8))(v37, v29);
      v42 = sub_10001A194(v39, v41, &v55);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_10001A194(0x696669746E656469, 0xEA00000000007265, &v55);
      _os_log_impl(&_mh_execute_header, v35, v34, "URL %s doesn't seem to have a %s query parameter.", v38, 0x16u);
      swift_arrayDestroy();

      (*(v49 + 8))(v48, v15);
    }

    else
    {
      (*(v36 + 8))(v37, v29);
      (*(v49 + 8))(v18, v15);
    }

    return 0;
  }

  v1 = v28;
  v46 = v15;
  v54 = *(v28 + 16);
  if (!v54)
  {
LABEL_13:

    v29 = v53;
    v15 = v46;
    v18 = v48;
    goto LABEL_14;
  }

  v30 = 0;
  v19 = 0x696669746E656469;
  v4 = (v7 + 8);
  while (v30 < *(v1 + 16))
  {
    (*(v7 + 16))(v10, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30, v6);
    if (URLQueryItem.name.getter() == v19 && v31 == 0xEA00000000007265)
    {

LABEL_22:

      v44 = v50;
      (*(v7 + 32))(v50, v10, v6);
      v45 = URLQueryItem.value.getter();
      (*(v7 + 8))(v44, v6);
      (*(v49 + 8))(v48, v46);
      return v45;
    }

    v32 = v19;
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_22;
    }

    ++v30;
    (*v4)(v10, v6);
    v19 = v32;
    if (v54 == v30)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_3:
  v20 = qword_100039188;
  v21 = v53;
  (*(v1 + 16))(v4, v52, v53);
  if (os_log_type_enabled(v20, v19))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v55 = v23;
    *v22 = 136315138;
    sub_100011800();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v1 + 8))(v4, v21);
    v27 = sub_10001A194(v24, v26, &v55);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v19, "Couldn't parse URL components out of %s", v22, 0xCu);
    sub_10000458C(v23);
  }

  else
  {
    (*(v1 + 8))(v4, v21);
  }

  return 0;
}

Swift::Int sub_10001222C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100012298(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100012300(uint64_t a1)
{
  v2 = sub_100003FD8(&qword_1000388B0, &unk_100024298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100012368()
{
  result = qword_100037EE8;
  if (!qword_100037EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100037EE8);
  }

  return result;
}

uint64_t sub_1000123B4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000139F0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000139F0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10001329C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000139F0(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_10001250C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

void sub_1000125D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v37 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v38[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v38[-1] - v11;
  __chkstk_darwin(v10);
  v14 = &v38[-1] - v13;
  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  v15 = qword_100039188;
  os_log(_:dso:log:_:_:)();
  v16 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
  [v16 setAutoresizesSubviews:1];
  [v16 setAutoresizingMask:18];
  [v16 makeKeyAndVisible];
  [v16 setHidden:0];
  v38[3] = &type metadata for VehicleFeatures;
  v38[4] = sub_100011860();
  v17 = isFeatureEnabled(_:)();
  sub_10000458C(v38);
  if (v17)
  {
    v18 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_1000043C8(0, &unk_100038460, UIColor_ptr);
    v18 = static UIColor.cafui_tableBackground.getter();
  }

  v19 = v18;
  [v16 setBackgroundColor:{v18, v37}];

  swift_getKeyPath();
  swift_getKeyPath();
  v38[0] = v16;
  v20 = v3;
  static Published.subscript.setter();
  if (a2)
  {
    v21 = sub_1000123B4(a2);
    if (v21)
    {
      v22 = v21;
      v23 = [v21 URL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v37;
      (*(v37 + 32))(v14, v12, v6);
      (*(v24 + 16))(v9, v14, v6);
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v38[0] = v27;
        *v26 = 136315138;
        sub_100011800();
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        v31 = *(v24 + 8);
        v31(v9, v6);
        v32 = sub_10001A194(v28, v30, v38);

        *(v26 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v15, v25, "AutoSettings received settings URL %s", v26, 0xCu);
        sub_10000458C(v27);
      }

      else
      {
        v31 = *(v24 + 8);
        v31(v9, v6);
      }

      v33 = [objc_opt_self() sharedApplication];
      v34 = [v33 delegate];

      if (v34)
      {
        type metadata accessor for AppDelegate(0);
        v35 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
        v36 = v35;
        swift_unknownObjectRelease();
        if (v35)
        {
          sub_100017B24();

          v31(v14, v6);
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
}

uint64_t sub_100012B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7)
  {
    [v7 setHidden:1];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return static Published.subscript.setter();
}

id sub_100012C6C()
{
  v1 = sub_100003FD8(&qword_100038478, &unk_1000243D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - v3;
  *&v0[OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager] = 0;
  v5 = OBJC_IVAR____TtC7Vehicle11AppDelegate__carWindow;
  v13 = 0;
  sub_100003FD8(&qword_100038420, &unk_1000242D0);
  Published.init(initialValue:)();
  v6 = *(v2 + 32);
  v6(&v0[v5], v4, v1);
  v7 = OBJC_IVAR____TtC7Vehicle11AppDelegate__clusterWindow;
  v13 = 0;
  Published.init(initialValue:)();
  v6(&v0[v7], v4, v1);
  v8 = OBJC_IVAR____TtC7Vehicle11AppDelegate__notificationWindow;
  v13 = 0;
  Published.init(initialValue:)();
  v6(&v0[v8], v4, v1);
  v9 = type metadata accessor for AppDelegate(0);
  v12.receiver = v0;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t type metadata accessor for AppDelegate(uint64_t a1)
{
  result = qword_100038408;
  if (!qword_100038408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012F80(uint64_t a1)
{
  sub_100013020(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100013020(uint64_t a1)
{
  if (!qword_100038418)
  {
    sub_10000A834(&qword_100038420, &unk_1000242D0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100038418);
    }
  }
}

id sub_100013104(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10001319C@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_10001322C(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v9 = v7;
  return static Published.subscript.setter();
}

void sub_10001329C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000043C8(0, &qword_100038470, UIOpenURLContext_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000043C8(0, &qword_100038470, UIOpenURLContext_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_1000134C0()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  type metadata accessor for AppDelegate(0);
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (v23)
  {
    v3 = [v23 windowScene];
    if (!v3)
    {
LABEL_13:

      goto LABEL_16;
    }

    v4 = v3;
    v5 = [v3 windows];

    sub_1000043C8(0, &unk_100038450, UIWindow_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_37;
        }

        v7 = *(v6 + 32);
      }

      v8 = v7;

      v9 = [v23 windowScene];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 activationState];

        if (!v11)
        {
          return;
        }
      }

      else
      {
      }

      goto LABEL_13;
    }
  }

LABEL_16:
  v12 = [v0 sharedApplication];
  v13 = [v12 delegate];

  if (!v13)
  {
LABEL_40:
    __break(1u);
    return;
  }

  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  v0 = v23;
  if (!v23)
  {
    goto LABEL_31;
  }

  v14 = [v23 windowScene];
  if (!v14)
  {

    goto LABEL_31;
  }

  v15 = v14;
  v16 = [v14 windows];

  sub_1000043C8(0, &unk_100038450, UIWindow_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_30;
  }

LABEL_21:
  if ((v17 & 0xC000000000000001) == 0)
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v17 + 32);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_37:
  v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
  v19 = v18;

  v20 = [v0 windowScene];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 activationState];

    if (!v22)
    {
      return;
    }
  }

  else
  {
  }

LABEL_31:
  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  [objc_allocWithZone(UIWindow) init];
}

uint64_t sub_1000139F0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

objc_class *sub_1000139FC()
{
  v1 = OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController____lazy_storage___cancelButton;
  v2 = *(v0 + OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController____lazy_storage___cancelButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController____lazy_storage___cancelButton);
  }

  else
  {
    v4 = v0;
    sub_1000043C8(0, &qword_1000384C8, UIButton_ptr);
    v5._countAndFlagsBits = 0x4C45434E4143;
    v5._object = 0xE600000000000000;
    isa = UIButton.init(alertButtonTitle:)(v5).super.super.super.super.isa;
    [(objc_class *)isa addTarget:v4 action:"cancelButtonTapped" forControlEvents:64];
    v7 = *(v4 + v1);
    *(v4 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100013AE8()
{
  v1 = v0;
  v51.receiver = v0;
  v51.super_class = type metadata accessor for VSFullScreenActionAlertViewController();
  objc_msgSendSuper2(&v51, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  sub_1000043C8(0, &unk_100038460, UIColor_ptr);
  v4 = static UIColor.cafui_tableBackground.getter();
  [v3 setBackgroundColor:v4];

  sub_1000043C8(0, &qword_1000384D0, UIStackView_ptr);
  sub_100003FD8(&qword_100038A90, &unk_100024110);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000240B0;
  *(v5 + 32) = sub_1000139FC();
  v6 = UIStackView.init(axis:spacing:arrangedSubviews:)();
  [v6 setDistribution:1];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = v6;
  [v8 addSubview:v9];

  if (*&v1[OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_action])
  {
    sub_1000043C8(0, &qword_1000384C8, UIButton_ptr);
    v10._countAndFlagsBits = 0x484354495753;
    v10._object = 0xE600000000000000;
    isa = UIButton.init(alertButtonTitle:)(v10).super.super.super.super.isa;
    [(objc_class *)isa addTarget:v1 action:"primaryAction" forControlEvents:64];
    [v9 addArrangedSubview:isa];
  }

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000243E0;
  v13 = *&v1[OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_titleLabel];
  v14 = *&v1[OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_messageLabel];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  v15 = v13;
  v16 = v14;

  v17 = UIStackView.init(axis:spacing:arrangedSubviews:)();
  v18 = [v1 view];
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v20 = v17;
  [v19 addSubview:v20];

  v21 = [v1 view];
  if (v21)
  {
    v22 = v21;

    v23 = [v22 safeAreaLayoutGuide];

    v50 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000240A0;
    v25 = [v20 topAnchor];

    v26 = [v23 topAnchor];
    [v23 layoutFrame];
    v27 = [v25 constraintEqualToAnchor:v26 constant:CGRectGetHeight(v52) * 0.05];

    *(v24 + 32) = v27;
    v28 = [v20 bottomAnchor];

    v29 = [v9 topAnchor];
    v30 = [v28 constraintLessThanOrEqualToAnchor:v29 constant:30.0];

    *(v24 + 40) = v30;
    v31 = [v20 leadingAnchor];

    v32 = [v23 leadingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:12.0];

    *(v24 + 48) = v33;
    v34 = [v20 trailingAnchor];

    v35 = [v23 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:-12.0];

    *(v24 + 56) = v36;
    v37 = [v9 bottomAnchor];

    v38 = [v23 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:-24.0];

    *(v24 + 64) = v39;
    v40 = [v9 leadingAnchor];

    v41 = [v23 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:12.0];

    *(v24 + 72) = v42;
    v43 = [v9 trailingAnchor];

    v44 = [v23 trailingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:-12.0];

    *(v24 + 80) = v45;
    v46 = [v9 centerXAnchor];

    v47 = [v23 centerXAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v24 + 88) = v48;
    sub_1000043C8(0, &qword_100038200, NSLayoutConstraint_ptr);
    v49 = Array._bridgeToObjectiveC()().super.isa;

    [v50 activateConstraints:v49];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_10001429C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VSFullScreenActionAlertViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100014364(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setFont:a1];
  [v4 setTextAlignment:1];
  v5 = [objc_opt_self() labelColor];
  [v4 setTextColor:v5];

  [v4 setNumberOfLines:a2];
  return v4;
}

void sub_100014454()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_titleLabel;
  v3 = objc_opt_self();
  v4 = [v3 boldSystemFontOfSize:28.0];
  sub_1000043C8(0, &qword_1000384D8, UILabel_ptr);
  v5 = sub_100014364(v4, 1);

  *(v0 + v2) = v5;
  v6 = OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_messageLabel;
  v7 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  v8 = sub_100014364(v7, 3);

  *(v1 + v6) = v8;
  *(v1 + OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController____lazy_storage___cancelButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100014578(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_100014588()
{
  v47 = type metadata accessor for Zone.ZoneRegion();
  v1 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [*(v0 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager) currentCar];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 automakerRequestContent];

  sub_1000043C8(0, &qword_1000388B8, CAFAutomakerRequestContent_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
LABEL_22:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v42 = v1;
    if (v7)
    {
LABEL_4:
      v1 = 0;
      v8 = &_swiftEmptyArrayStorage;
      do
      {
        v9 = v1;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v10 = *(v6 + 8 * v9 + 32);
          }

          v11 = v10;
          v1 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          v12 = [v10 requestTemporaryContents];
          if (v12)
          {
            break;
          }

          ++v9;
          if (v1 == v7)
          {
            goto LABEL_24;
          }
        }

        v13 = v12;
        sub_1000043C8(0, &unk_1000388C0, CAFRequestTemporaryContent_ptr);
        v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100004144(0, v8[2] + 1, 1, v8);
        }

        v16 = v8[2];
        v15 = v8[3];
        if (v16 >= v15 >> 1)
        {
          v8 = sub_100004144((v15 > 1), v16 + 1, 1, v8);
        }

        v8[2] = v16 + 1;
        v8[v16 + 4] = v14;
      }

      while (v1 != v7);
      goto LABEL_24;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = v1;
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_24:

  v17 = sub_100019AB0(v8);

  if (v17 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = 0;
    v49 = v17 & 0xC000000000000001;
    v48 = v17 & 0xFFFFFFFFFFFFFF8;
    v44 = enum case for Zone.ZoneRegion.zone1(_:);
    v20 = (v42 + 13);
    ++v42;
    v43 = v20;
    v45 = v17;
    while (1)
    {
      if (v49)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v48 + 16))
        {
          goto LABEL_46;
        }

        v22 = *(v17 + 8 * v19 + 32);
      }

      v23 = v22;
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v25 = [v22 displayPanelIdentifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (v26 == 0x445F7265746E6543 && v28 == 0xEE0079616C707369)
      {
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v31 = [v23 displayZoneIdentifier];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = v46;
      v36 = v47;
      (*v43)(v46, v44, v47);
      v37 = Zone.ZoneRegion.rawValue.getter();
      v39 = v38;
      (*v42)(v35, v36);
      if (v32 == v37 && v34 == v39)
      {

        return v23;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = v45;
      if (v21)
      {

        return v23;
      }

LABEL_28:

      ++v19;
      if (v24 == i)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_48:

  return 0;
}

void *sub_100014AA0()
{
  v47 = type metadata accessor for Zone.ZoneRegion();
  v1 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [*(v0 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager) currentCar];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 automakerRequestContent];

  sub_1000043C8(0, &qword_1000388B8, CAFAutomakerRequestContent_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
LABEL_22:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v42 = v1;
    if (v7)
    {
LABEL_4:
      v1 = 0;
      v8 = &_swiftEmptyArrayStorage;
      do
      {
        v9 = v1;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v10 = *(v6 + 8 * v9 + 32);
          }

          v11 = v10;
          v1 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          v12 = [v10 requestContents];
          if (v12)
          {
            break;
          }

          ++v9;
          if (v1 == v7)
          {
            goto LABEL_24;
          }
        }

        v13 = v12;
        sub_1000043C8(0, &qword_1000388E8, CAFRequestContent_ptr);
        v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100004168(0, v8[2] + 1, 1, v8);
        }

        v16 = v8[2];
        v15 = v8[3];
        if (v16 >= v15 >> 1)
        {
          v8 = sub_100004168((v15 > 1), v16 + 1, 1, v8);
        }

        v8[2] = v16 + 1;
        v8[v16 + 4] = v14;
      }

      while (v1 != v7);
      goto LABEL_24;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = v1;
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_24:

  v17 = sub_100019DA8(v8);

  if (v17 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = 0;
    v49 = v17 & 0xC000000000000001;
    v48 = v17 & 0xFFFFFFFFFFFFFF8;
    v44 = enum case for Zone.ZoneRegion.zone1(_:);
    v20 = (v42 + 13);
    ++v42;
    v43 = v20;
    v45 = v17;
    while (1)
    {
      if (v49)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v48 + 16))
        {
          goto LABEL_46;
        }

        v22 = *(v17 + 8 * v19 + 32);
      }

      v23 = v22;
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v25 = [v22 displayPanelIdentifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (v26 == 0x445F7265746E6543 && v28 == 0xEE0079616C707369)
      {
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v31 = [v23 displayZoneIdentifier];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = v46;
      v36 = v47;
      (*v43)(v46, v44, v47);
      v37 = Zone.ZoneRegion.rawValue.getter();
      v39 = v38;
      (*v42)(v35, v36);
      if (v32 == v37 && v34 == v39)
      {

        return v23;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = v45;
      if (v21)
      {

        return v23;
      }

LABEL_28:

      ++v19;
      if (v24 == i)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_48:

  return 0;
}

uint64_t sub_100014FB8()
{
  v0 = type metadata accessor for URLQueryItem();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v40 = &v35 - v5;
  v6 = sub_100003FD8(&qword_1000388B0, &unk_100024298);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for CAUFeatureConfiguration();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (v16)
  {
    CAUAssetLibrary.featureConfiguration()();

    (*(v10 + 32))(v15, v13, v9);
    v17 = sub_100014588();
    if (v17)
    {
      v37 = v9;
      v18 = v17;
      v19 = [v17 temporaryContentURL];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URLComponents.init(string:)();

      v20 = type metadata accessor for URLComponents();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v8, 1, v20) == 1)
      {
        (*(v10 + 8))(v15, v37);
        sub_10000B6D0(v8, &qword_1000388B0, &unk_100024298);
      }

      else
      {
        v22 = URLComponents.queryItems.getter();
        result = (*(v21 + 8))(v8, v20);
        if (v22)
        {
          v36 = v10;
          v38 = *(v22 + 16);
          if (v38)
          {
            v24 = 0;
            v25 = 0x696669746E656469;
            v39 = v1 + 16;
            while (1)
            {
              if (v24 >= *(v22 + 16))
              {
                __break(1u);
                return result;
              }

              (*(v1 + 16))(v4, v22 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v24, v0);
              if (URLQueryItem.name.getter() == v25 && v26 == 0xEA00000000007265)
              {
                break;
              }

              v27 = v25;
              v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v28)
              {
                goto LABEL_17;
              }

              ++v24;
              result = (*(v1 + 8))(v4, v0);
              v25 = v27;
              if (v38 == v24)
              {
                goto LABEL_14;
              }
            }

LABEL_17:

            v29 = v40;
            (*(v1 + 32))(v40, v4, v0);
            v16 = URLQueryItem.value.getter();
            v31 = v30;
            (*(v1 + 8))(v29, v0);
            v33 = v36;
            v32 = v37;
            if (v31)
            {
              v34._countAndFlagsBits = v16;
              v34._object = v31;
              LOBYTE(v16) = CAUFeatureConfiguration.doesSupport(_:)(v34);

              (*(v33 + 8))(v15, v32);
              return v16 & 1;
            }

            (*(v36 + 8))(v15, v37);
          }

          else
          {
LABEL_14:

            (*(v36 + 8))(v15, v37);
          }
        }

        else
        {
          (*(v10 + 8))(v15, v37);
        }
      }
    }

    else
    {
      (*(v10 + 8))(v15, v9);
    }

    LOBYTE(v16) = 0;
  }

  return v16 & 1;
}

void sub_1000154E4()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
    __break(1u);
    return;
  }

  type metadata accessor for AppDelegate(0);
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (v7)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible);
    v4 = [v7 rootViewController];
    v5 = v4;
    if (v3 == 1)
    {
      if (!v4)
      {
LABEL_7:
        static os_log_type_t.debug.getter();
        if (qword_100037840 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        v6 = [objc_allocWithZone(type metadata accessor for CAFUILoadingViewController()) init];
        [v7 setRootViewController:v6];

        goto LABEL_15;
      }

      type metadata accessor for CAFUILoadingViewController();
      if (!swift_dynamicCastClass())
      {

        goto LABEL_7;
      }
    }

    else
    {
      if (!v4)
      {
LABEL_15:
        v5 = v7;
LABEL_17:

        return;
      }

      type metadata accessor for CAFUILoadingViewController();
      if (swift_dynamicCastClass())
      {

        static os_log_type_t.debug.getter();
        if (qword_100037840 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        [v7 setRootViewController:0];
        goto LABEL_15;
      }
    }

    goto LABEL_17;
  }
}

void sub_10001577C()
{
  v1 = v0;
  v2 = sub_100003FD8(&qword_100038800, &qword_100024528);
  __chkstk_darwin(v2 - 8);
  v4 = v53 - v3;
  v5 = sub_100003FD8(&qword_100038888, &qword_100024550);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v53 - v7;
  v9 = sub_100003FD8(&unk_100038890, &qword_100024558);
  v10 = *(v9 - 8);
  v65 = v9;
  v66 = v10;
  v11 = __chkstk_darwin(v9);
  v62 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v53 - v13;
  v15 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager;
  *&v1[v15] = [objc_allocWithZone(CAFCarManager) init];
  v16 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_assetManager;
  type metadata accessor for CAUAssetLibraryManager();
  swift_allocObject();
  *&v1[v16] = CAUAssetLibraryManager.init()();
  v17 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_subscribers;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v52 = sub_10001AC60(&_swiftEmptyArrayStorage);
    }

    else
    {
      v52 = &_swiftEmptySetSingleton;
    }

    *&v1[v17] = v52;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v18 = sub_10001AC60(&_swiftEmptyArrayStorage);
    }

    else
    {
      v18 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
    *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_subscribers] = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationHistorysubscribers] = v18;
  *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_vsRootViewController] = 0;
  Date.init()();
  *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_lastNotificationCount] = 0;
  v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_fireRenderedAndFinalizedSignposts] = 1;
  *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager] = 0;
  v19 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_settingsCache;
  v20 = type metadata accessor for CAFUISettingsCache();
  (*(*(v20 - 8) + 56))(&v1[v19], 1, 1, v20);
  v21 = &v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier];
  *v21 = 0;
  v21[1] = 0;
  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  v64 = v6;
  os_log(_:dso:log:_:_:)();
  v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible] = 1;
  v22 = [objc_allocWithZone(CARSessionStatus) init];
  *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_carSessionStatus] = v22;
  v23 = type metadata accessor for SettingsCarManager(0);
  v68.receiver = v1;
  v68.super_class = v23;
  v24 = objc_msgSendSuper2(&v68, "init");
  v25 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager;
  v26 = *&v24[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager];
  v27 = v24;
  [v26 registerObserver:v27];
  v28 = *&v24[v25];
  v29 = [v28 currentCar];
  [v27 carManager:v28 didUpdateCurrentCar:v29];

  v30 = *&v27[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_carSessionStatus];
  [v30 addSessionObserver:v27];

  v63 = objc_opt_self();
  v31 = [v63 sharedApplication];
  v32 = [v31 delegate];

  if (v32)
  {
    v61 = type metadata accessor for AppDelegate(0);
    swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v60 = sub_100003FD8(&qword_100038478, &unk_1000243D0);
    Published.projectedValue.getter();
    swift_endAccess();
    swift_unknownObjectRelease();
    v59 = objc_opt_self();
    v33 = [v59 mainRunLoop];
    v67 = v33;
    v34 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v35 = *(v34 - 8);
    v36 = *(v35 + 56);
    v54 = v34;
    v57 = v35 + 56;
    v58 = v36;
    (v36)(v4, 1, 1);
    v37 = sub_1000043C8(0, &qword_100038840, NSRunLoop_ptr);
    v38 = v4;
    v39 = sub_10000BD80(&qword_1000388A0, &qword_100038888, &qword_100024550, &protocol conformance descriptor for Published<A>.Publisher);
    v40 = sub_10001BB14(&qword_100038850, &qword_100038840, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
    v55 = v39;
    v56 = v37;
    v53[2] = v40;
    Publisher.receive<A>(on:options:)();
    sub_10000B6D0(v38, &qword_100038800, &qword_100024528);

    v64 = *(v64 + 8);
    (v64)(v8, v5);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = sub_10000BD80(&qword_1000388A8, &unk_100038890, &qword_100024558, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v42 = v27;
    v43 = v65;
    v53[1] = v41;
    Publisher<>.sink(receiveValue:)();

    v44 = v5;
    v45 = v38;
    v46 = *(v66 + 8);
    v66 += 8;
    v53[0] = v46;
    v46(v14, v43);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v47 = [v63 sharedApplication];
    v48 = [v47 delegate];

    if (v48)
    {
      swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      Published.projectedValue.getter();
      swift_endAccess();
      swift_unknownObjectRelease();
      v49 = [v59 mainRunLoop];
      v67 = v49;
      v58(v38, 1, 1, v54);
      v50 = v62;
      Publisher.receive<A>(on:options:)();
      sub_10000B6D0(v45, &qword_100038800, &qword_100024528);

      (v64)(v8, v44);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      v51 = v65;
      Publisher<>.sink(receiveValue:)();

      (v53[0])(v50, v51);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      sub_100016174();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000160FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100016174();
  }
}

void sub_100016174()
{
  v1 = v0;
  v2 = sub_100003FD8(&qword_1000387F8, &qword_100024520);
  __chkstk_darwin(v2 - 8);
  v4 = &v144 - v3;
  v5 = sub_100003FD8(&qword_100038800, &qword_100024528);
  __chkstk_darwin(v5 - 8);
  v7 = &v144 - v6;
  v160 = sub_100003FD8(&qword_100038808, &qword_100024530);
  v156 = *(v160 - 8);
  __chkstk_darwin(v160);
  v159 = &v144 - v8;
  v9 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  v10 = __chkstk_darwin(v9 - 8);
  v157 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v144 - v13;
  __chkstk_darwin(v12);
  v16 = &v144 - v15;
  sub_100018D58();
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = sub_10001AC60(&_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = &_swiftEmptySetSingleton;
  }

  v18 = &v0[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationHistorysubscribers];
  swift_beginAccess();
  *v18 = v17;

  v19 = [*(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_carSessionStatus) currentSession];
  if (!v19)
  {
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      goto LABEL_50;
    }

    goto LABEL_28;
  }

  v152 = v4;
  v158 = v19;
  v154 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager);
  v20 = [v154 currentCar];
  if (!v20)
  {
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible) = 1;
    sub_1000154E4();

    return;
  }

  v21 = v20;
  v22 = [v20 isConfigured];
  v153 = v21;
  if (!v22)
  {
    v36 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v37 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v36))
    {
      v38 = v21;
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      v40 = [v38 accessories];
      type metadata accessor for UUID();
      sub_1000043C8(0, &qword_100038810, CAFAccessory_ptr);
      sub_10001B994(&qword_100038818, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = *(v41 + 16);

      *(v39 + 4) = v42;

      v21 = v153;
      _os_log_impl(&_mh_execute_header, v37, v36, "Waiting for car configuration to be set... accessory count=%ld", v39, 0xCu);
    }

    *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible) = 1;
    sub_1000154E4();

    return;
  }

  v23 = [v21 automakerSettings];
  if (!v23)
  {
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
LABEL_55:
    v50 = [v21 automakerNotificationHistory];
    if (v50)
    {
      v51 = v50;
      if (![v50 receivedAllValues])
      {
        v14 = v51;
        LOBYTE(v51) = static os_log_type_t.debug.getter();
        if (qword_100037840 == -1)
        {
LABEL_69:
          v63 = qword_100039188;
          if (os_log_type_enabled(qword_100039188, v51))
          {
            v64 = v14;
            v65 = swift_slowAlloc();
            *v65 = 67109120;
            *(v65 + 4) = [v64 receivedAllValues];

            _os_log_impl(&_mh_execute_header, v63, v51, "Waiting for automakerNotificationHistory to receive all values current... receivedAllValues=%{BOOL}d", v65, 8u);
            v21 = v153;
          }

          *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible) = 1;
          sub_1000154E4();

          return;
        }

LABEL_74:
        swift_once();
        goto LABEL_69;
      }

      v144 = v51;
      v52 = [v51 historicalNotifications];
      if (v52)
      {
        v53 = v52;
        v149 = sub_1000043C8(0, &qword_1000381E8, CAFHistoricalNotification_ptr);
        v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v151 = v54;
        v150 = v18;
        if (v54 >> 62)
        {
          v51 = _CocoaArrayWrapper.endIndex.getter();
          if (v51)
          {
LABEL_60:
            v55 = 0;
            v148 = v151 & 0xC000000000000001;
            v147 = v151 & 0xFFFFFFFFFFFFFF8;
            v145 = v156 + 8;
            v146 = v51;
            while (1)
            {
              if (v148)
              {
                v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v55 >= *(v147 + 16))
                {
                  goto LABEL_73;
                }

                v56 = *(v151 + 8 * v55 + 32);
              }

              v57 = v56;
              if (__OFADD__(v55, 1))
              {
                break;
              }

              v156 = (v55 + 1);
              sub_10001BB14(&qword_100038830, &qword_1000381E8, CAFHistoricalNotification_ptr, &protocol conformance descriptor for CAFHistoricalNotification);
              v155 = v57;
              v58 = CAFObserved<>.observable.getter();
              v59 = dispatch thunk of CAFHistoricalNotificationObservable.$hidden.getter();

              v166 = v59;
              v14 = [objc_opt_self() mainRunLoop];
              v165 = v14;
              v60 = type metadata accessor for NSRunLoop.SchedulerOptions();
              (*(*(v60 - 8) + 56))(v7, 1, 1, v60);
              sub_100003FD8(&qword_100038838, &qword_100024538);
              sub_1000043C8(0, &qword_100038840, NSRunLoop_ptr);
              v21 = v1;
              sub_10000BD80(&qword_100038848, &qword_100038838, &qword_100024538, &protocol conformance descriptor for AnyPublisher<A, B>);
              sub_10001BB14(&qword_100038850, &qword_100038840, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
              v61 = v159;
              Publisher.receive<A>(on:options:)();
              sub_10000B6D0(v7, &qword_100038800, &qword_100024528);

              swift_allocObject();
              swift_unknownObjectWeakInit();
              sub_10000BD80(&qword_100038858, &qword_100038808, &qword_100024530, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
              v62 = v160;
              Publisher<>.sink(receiveValue:)();

              (*v145)(v61, v62);
              swift_beginAccess();
              v51 = v146;
              AnyCancellable.store(in:)();
              swift_endAccess();

              ++v55;
              if (v156 == v51)
              {
                goto LABEL_76;
              }
            }

            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }
        }

        else
        {
          v51 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v51)
          {
            goto LABEL_60;
          }
        }

LABEL_76:
      }
    }

    v66 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager;
    if (!*(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager))
    {
      v67 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_settingsCache;
      swift_beginAccess();
      v68 = v157;
      sub_10001B9DC(v1 + v67, v157);
      v69 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_assetManager);
      type metadata accessor for AutoSettingsNotificationManager(0);
      swift_allocObject();
      v70 = v154;
      v71 = v158;

      AutoSettingsNotificationManager.init(carManager:settingsCache:carSession:assetManager:)(v70, v68, v71, v69);
      *(v1 + v66) = v72;
    }

    v73 = [objc_opt_self() sharedApplication];
    v74 = [v73 delegate];

    if (!v74)
    {
      __break(1u);
      return;
    }

    type metadata accessor for AppDelegate(0);
    swift_dynamicCastClassUnconditional();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_unknownObjectRelease();
    v75 = v165;
    if (!v165)
    {
      static os_log_type_t.debug.getter();
      v79 = v153;
      if (qword_100037840 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();

      return;
    }

    v76 = [v165 rootViewController];
    v77 = v153;
    if (v76)
    {
      v78 = v76;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        return;
      }
    }

    *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible) = 0;
    sub_1000154E4();
    v80 = [v77 automakerSettings];
    if (v80)
    {
      v81 = v80;
      [v80 unregisterObserver:v1];
    }

    v82 = [v77 automakerNotificationHistory];
    if (v82)
    {
      v83 = v82;
      v84 = sub_10000BE80();

      if (v84 >> 62)
      {
        v85 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v85 = 0;
    }

    *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_lastNotificationCount) = v85;
    v86 = [v75 rootViewController];
    if (v86)
    {

      static os_log_type_t.debug.getter();
      if (qword_100037840 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();

      return;
    }

    v87 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_settingsCache;
    swift_beginAccess();
    v88 = v157;
    sub_10001B9DC(v1 + v87, v157);
    v89 = sub_10001AEF4(v77, v88);
    sub_10000B6D0(v88, &qword_100037BD0, &qword_100023C80);
    if (v89)
    {
      v90 = [v77 automakerNotificationHistory];
      if (v90)
      {
        v91 = v90;
        type metadata accessor for CAFUIRequestContentManager();
        swift_allocObject();
        v92 = v158;
        v93 = CAFUIRequestContentManager.init(session:)();
        v94 = objc_allocWithZone(type metadata accessor for VSNotificationHistoryViewController(0));
        v95 = qword_100038030;
        v96 = objc_allocWithZone(type metadata accessor for VSEmptyNotificationHistoryView());
        v97 = v91;
        *&v94[v95] = [v96 init];
        v98 = qword_100038048;
        *&v94[v98] = sub_10001AB50(&_swiftEmptyArrayStorage);
        *&v94[qword_100038040] = v93;
        *&v94[qword_100038038] = v97;
        v99 = CAFUITableViewController.init(style:)();
        v100 = [v99 navigationItem];
        [v100 setHidesBackButton:1 animated:0];

LABEL_121:
        v140 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v99];

        [v140 setDelegate:v1];
        [v75 setRootViewController:v140];
        v141 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier + 8);
        if (v141)
        {
          v142 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier);

          sub_100017C1C(v142, v141);
        }

        return;
      }
    }

    v101 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v102 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v101))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v103 = 138412290;
      v105 = v153;
      *(v103 + 4) = v153;
      *v104 = v105;
      v106 = v105;
      _os_log_impl(&_mh_execute_header, v102, v101, "Connecting to car main scene for %@", v103, 0xCu);
      sub_10000B6D0(v104, &unk_100037B00, qword_100024000);
    }

    v107 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_assetManager);
    v108 = v1 + v87;
    v109 = v157;
    sub_10001B9DC(v108, v157);
    v110 = objc_allocWithZone(type metadata accessor for VSRootViewController(0));
    v111 = v158;
    v112 = v153;

    v113 = VSRootViewController.init(carSession:cafCar:assetManager:settingsCache:)(v111, v112, v107, v109);
    v114 = String._bridgeToObjectiveC()();
    v115 = sub_10001BA4C(v114);

    v116 = v115;
    if (!v115)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = String._bridgeToObjectiveC()();
    }

    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v118;
    v120 = [v112 vehicleResources];
    if (v120 && (v121 = v120, v122 = [v120 vehicleInformation], v121, v122))
    {
      v123 = [v122 vehicleUserVisibleLabel];

      v124 = v123;
      if (!v123)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v124 = String._bridgeToObjectiveC()();
      }

      v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v126;
      v128 = HIBYTE(v126) & 0xF;
      if ((v126 & 0x2000000000000000) == 0)
      {
        v128 = v125 & 0xFFFFFFFFFFFFLL;
      }

      if (v128)
      {
        v129 = v125;

        v163 = v129;
        v164 = v127;
        v161 = v117;
        v162 = v119;
        v130 = type metadata accessor for Locale();
        v131 = v152;
        (*(*(v130 - 8) + 56))(v152, 1, 1, v130);
        sub_10001BAC0();
        StringProtocol.range<A>(of:options:range:locale:)();
        v133 = v132;
        sub_10000B6D0(v131, &qword_1000387F8, &qword_100024520);
        if (v133)
        {

          v163 = 32;
          v164 = 0xE100000000000000;
          v134 = v113;
          v135._countAndFlagsBits = v117;
          v135._object = v119;
          String.append(_:)(v135);

          v136 = v163;
          v137 = v164;
          v163 = v129;
          v164 = v127;

          v138._countAndFlagsBits = v136;
          v138._object = v137;
          String.append(_:)(v138);

          v116 = String._bridgeToObjectiveC()();
        }

        else
        {

          v143 = v113;

          v116 = v124;
        }

        goto LABEL_120;
      }
    }

    else
    {
    }

    v139 = v113;
LABEL_120:
    [v113 setTitle:v116];

    v100 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_vsRootViewController);
    *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_vsRootViewController) = v113;
    v99 = v113;
    goto LABEL_121;
  }

  v151 = v23;
  if (![v23 receivedAllValues])
  {
    v43 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v44 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v43))
    {
      v45 = v151;
      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = [v45 receivedAllValues];

      _os_log_impl(&_mh_execute_header, v44, v43, "Waiting for automakerSettings to receive all values current... receivedAllValues=%{BOOL}d", v46, 8u);
      v21 = v153;
    }

    *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible) = 1;
    sub_1000154E4();

    return;
  }

  v24 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_settingsCache;
  swift_beginAccess();
  v149 = v24;
  sub_10001B9DC(v1 + v24, v16);
  v25 = type metadata accessor for CAFUISettingsCache();
  v147 = *(v25 - 8);
  v26 = *(v147 + 48);
  v148 = v25;
  if (v26(v16, 1) != 1)
  {

    sub_10000B6D0(v16, &qword_100037BD0, &qword_100023C80);
    goto LABEL_55;
  }

  v150 = v18;
  sub_10000B6D0(v16, &qword_100037BD0, &qword_100023C80);
  v27 = CAFAutomakerSettings.allSettings.getter();
  v28 = v27;
  v166 = &_swiftEmptyArrayStorage;
  if (v27 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (v29)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

  v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
LABEL_52:

    v47 = [v151 settingsSections];
    if (v47)
    {
      v48 = v47;
      sub_1000043C8(0, &qword_100038860, CAFSettingsSection_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v18 = v150;
    CAFUISettingsCache.init(settings:sections:)();

    (*(v147 + 56))(v14, 0, 1, v148);
    v49 = v149;
    swift_beginAccess();
    sub_10001B8C0(v14, v1 + v49);
    swift_endAccess();
    goto LABEL_55;
  }

LABEL_11:
  v145 = v7;
  v146 = v1;
  v1 = 0;
  v155 = (v28 & 0xC000000000000001);
  while (1)
  {
    if (v155)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v30 = *(v28 + 8 * v1 + 32);
    }

    v31 = v30;
    v32 = (v1 + 1);
    if (__OFADD__(v1, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_23;
    }

    v33 = [v31 prominenceInfo];
    if (!v33)
    {
      goto LABEL_23;
    }

    v34 = v33;
    [v33 prominenceLevel];
    if ((CAFSettingProminenceLevel.hasAppHomeTile.getter() & 1) != 0 || ([v34 prominenceLevel], (CAFSettingProminenceLevel.hasHomescreen.getter() & 1) == 0))
    {

LABEL_23:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_24;
    }

    v35 = [v31 hidden];

    if ((v35 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_24:
    ++v1;
    if (v32 == v29)
    {
      v1 = v146;
      v7 = v145;
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  swift_once();
LABEL_28:
  os_log(_:dso:log:_:_:)();
  *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible) = 1;
  sub_1000154E4();
}