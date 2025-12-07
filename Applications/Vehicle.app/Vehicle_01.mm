void sub_100017AD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100018D58();
  }
}

uint64_t sub_100017B24()
{
  v0 = sub_100011ACC();
  if (v1)
  {
    v2 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v2 = v0 & 0xFFFFFFFFFFFFLL;
    }

    if (v2)
    {
      sub_100017C1C(v0, v1);
    }
  }

  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_100017C1C(uint64_t a1, unint64_t a2)
{
  v87 = a1;
  v4 = type metadata accessor for CAFUICellSelectionAction();
  v84 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = (v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (v80 - v8);
  v10 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v80 - v14;
  v16 = type metadata accessor for CAFUISettingsCache();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v86 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_vsRootViewController;
  v20 = *(v2 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_vsRootViewController);
  if (!v20)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_16;
  }

  v21 = v20;
  v85 = v2;
  v22 = v21;
  CAFUITileViewController.settingsCache.getter();

  v2 = v85;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_16:
    sub_10000B6D0(v15, &qword_100037BD0, &qword_100023C80);
LABEL_18:
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v39 = (v2 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier);
    goto LABEL_21;
  }

  (*(v17 + 32))(v86, v15, v16);
  v23 = *(v2 + v19);
  if (!v23 || (v24 = v23, v25 = CAFUITileViewController.requestContentManager.getter(), v24, !v25))
  {
    (*(v17 + 8))(v86, v16);
    v2 = v85;
    goto LABEL_18;
  }

  v26 = CAFUISettingsCache.settings.getter();
  if (v26 >> 62)
  {
    v83 = v25;
    v79 = _CocoaArrayWrapper.endIndex.getter();
    v25 = v83;

    if (v79)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v27)
  {
LABEL_67:
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();

    (*(v17 + 8))(v86, v16);
    v39 = (v85 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier);
LABEL_21:
    *v39 = v87;
    v39[1] = a2;
  }

LABEL_7:
  v28 = CAFUISettingsCache.settingsByIdentifiers.getter();
  if (!*(v28 + 16) || (v29 = sub_10001A73C(v87, a2), (v30 & 1) == 0))
  {

    v41 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v42 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v88 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_10001A194(v87, a2, &v88);
      _os_log_impl(&_mh_execute_header, v42, v41, "No known setting with identifier %s.", v43, 0xCu);
      sub_10000458C(v44);
    }

    goto LABEL_63;
  }

  v83 = v25;
  v31 = *(*(v28 + 56) + 8 * v29);

  swift_getObjectType();
  v32 = swift_conformsToProtocol2();
  if (v32)
  {
    v33 = v31 == 0;
  }

  else
  {
    v33 = 1;
  }

  v82 = v31;
  if (!v33)
  {
    v34 = v32;
    ObjectType = swift_getObjectType();
    v80[1] = *(v34 + 8);
    v81 = ObjectType;
    v36 = v31;
    dispatch thunk of CAFListContentRepresentable.cellSelected()();

    v37 = v84;
    if ((v84)[11](v9, v4) == enum case for CAFUICellSelectionAction.push(_:))
    {
      (v37)[12](v9, v4);
      v38 = *v9;
LABEL_33:
      v50 = v82;
LABEL_51:
      v65 = v38;
      v66 = [v50 userVisibleLabel];
      if (!v66)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = String._bridgeToObjectiveC()();
      }

      [v65 setTitle:v66];

      v67 = [v65 navigationItem];
      v68 = objc_allocWithZone(UIBarButtonItem);
      v69 = v85;
      v70 = [v68 initWithBarButtonSystemItem:24 target:v85 action:"dismissSettingsModal"];
      [v67 setLeftBarButtonItem:v70];

      v71 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v65];
      v72 = *(v69 + v19);
      if (v72)
      {
        [v72 presentViewController:v71 animated:1 completion:0];
      }

      else
      {
      }

      goto LABEL_64;
    }

    (v37)[1](v9, v4);
    v31 = v82;
  }

  swift_getObjectType();
  v45 = swift_conformsToProtocol2();
  if (v45)
  {
    v46 = v31 == 0;
  }

  else
  {
    v46 = 1;
  }

  if (!v46)
  {
    v47 = v45;
    swift_getObjectType();
    v81 = *(v47 + 8);
    v48 = v31;
    dispatch thunk of CAFListContentRepresentable.cellSelected()();

    v49 = v84;
    if ((v84)[11](v7, v4) == enum case for CAFUICellSelectionAction.push(_:))
    {
      (v49)[12](v7, v4);
      v38 = *v7;
      goto LABEL_33;
    }

    (v49)[1](v7, v4);
    v31 = v82;
  }

  v51 = CAFUISettingsCache.visibleChildren(of:)();
  v50 = v31;
  if (v51 >> 62)
  {
    v52 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v52)
  {
    v53 = v31;
LABEL_39:
    v54 = v53;
    v55 = CAFUISettingsCache.sections(for:)();

    goto LABEL_44;
  }

  v56 = CAFUISettingsCache.childToParentIdentifiers.getter();
  if (*(v56 + 16))
  {
    v57 = sub_10001A73C(v87, a2);
    if (v58)
    {
      v59 = *(*(v56 + 56) + 8 * v57);

      v53 = v59;
      goto LABEL_39;
    }
  }

  [v31 category];
  v55 = CAFUISettingsCache.categorySettings(for:)();
  v54 = 0;
LABEL_44:
  if (*(v55 + 16))
  {
    v60 = [*(v85 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_carSessionStatus) currentSession];
    if (v60)
    {
      v81 = v60;
      v84 = v54;
      v61 = static os_log_type_t.debug.getter();
      if (qword_100037840 != -1)
      {
        swift_once();
      }

      v62 = qword_100039188;
      if (os_log_type_enabled(qword_100039188, v61))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v88 = v64;
        *v63 = 136315138;
        *(v63 + 4) = sub_10001A194(v87, a2, &v88);
        _os_log_impl(&_mh_execute_header, v62, v61, "Launching modal settings presentation for setting %s", v63, 0xCu);
        sub_10000458C(v64);

        v50 = v82;
      }

      (*(v17 + 16))(v13, v86, v16);
      (*(v17 + 56))(v13, 0, 1, v16);
      objc_allocWithZone(type metadata accessor for CAFUITileViewController());

      v38 = CAFUITileViewController.init(carSession:prominentCategories:listItems:settingsSections:settingsCache:assetManager:requestContentManager:preventVolumeNotification:)();

      goto LABEL_51;
    }

    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  else
  {

    v73 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v74 = qword_100039188;
    if (!os_log_type_enabled(qword_100039188, v73))
    {

      goto LABEL_64;
    }

    v75 = swift_slowAlloc();
    v76 = v54;
    v77 = swift_slowAlloc();
    v88 = v77;
    *v75 = 136315138;
    *(v75 + 4) = sub_10001A194(v87, a2, &v88);
    _os_log_impl(&_mh_execute_header, v74, v73, "No settings sections with setting %s", v75, 0xCu);
    sub_10000458C(v77);
  }

LABEL_63:

LABEL_64:
  (*(v17 + 8))(v86, v16);
  v78 = (v85 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier);
  *v78 = 0;
  v78[1] = 0;
}

void sub_100018914()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 delegate];

  if (!v9)
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
  v10 = v25;
  if (v25)
  {
    v11 = [v25 rootViewController];

    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {

        return;
      }

      v13 = v12;
      Date.init()();
      v14 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_lastBackgroundTime;
      swift_beginAccess();
      (*(v2 + 16))(v5, v0 + v14, v1);
      v15 = v0;
      Date.timeIntervalSince(_:)();
      v16 = v0;
      v18 = v17;
      v19 = *(v2 + 8);
      v19(v5, v1);
      v19(v7, v1);
      v20 = [*(v0 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager) currentCar];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 automakerNotificationHistory];

        if (v22)
        {
          v23 = sub_10000BE80();

          if (v23 >> 62)
          {
            v22 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v22 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v16 = v15;
        }
      }

      else
      {
        v22 = 0;
      }

      if (v18 >= 420.0)
      {
        static os_log_type_t.debug.getter();
        if (qword_100037840 == -1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v18 < 210.0 || *(v16 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_lastNotificationCount) == v22)
        {
          goto LABEL_19;
        }

        static os_log_type_t.debug.getter();
        if (qword_100037840 == -1)
        {
LABEL_18:
          os_log(_:dso:log:_:_:)();

LABEL_19:
          *(v16 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_lastNotificationCount) = v22;
          return;
        }
      }

      swift_once();
      goto LABEL_18;
    }
  }
}

void sub_100018D58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager) currentCar];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 automakerNotificationHistory];

    if (v3)
    {
      if ([v3 receivedAllValues])
      {
        v4 = sub_10000BE80();
        if (v4 >> 62)
        {
          v5 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        goto LABEL_9;
      }
    }
  }

  v5 = 0;
LABEL_9:
  v6 = [objc_opt_self() currentNotificationCenter];
  [v6 setBadgeCount:v5 withCompletionHandler:0];
}

id sub_100018E74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsCarManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SettingsCarManager(uint64_t a1)
{
  result = qword_1000387A8;
  if (!qword_1000387A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100019010(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_10000AA44(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001932C(void *a1, char a2)
{
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
    v13 = v7;
    *v6 = 136315394;
    v8 = [a1 name];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10001A194(v9, v11, &v13);

    *(v6 + 4) = v12;
    *(v6 + 12) = 1024;
    *(v6 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v5, v4, "%s accessory updated receivedAllValues=%{BOOL}d", v6, 0x12u);
    sub_10000458C(v7);
  }

  sub_100016174();
}

void sub_100019520(uint64_t a1)
{
  v1 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for CAFUISettingsCache();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_settingsCache;
    swift_beginAccess();
    sub_10001B8C0(v3, v5 + v7);
    swift_endAccess();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    *&v8[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager] = 0;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_100016174();
  }
}

uint64_t sub_10001969C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100019748(void *a1)
{
  v3 = static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  v4 = qword_100039188;
  if (os_log_type_enabled(qword_100039188, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = a1;
    *v6 = a1;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v4, v3, "Configuration set for car %@", v5, 0xCu);
    sub_10000B6D0(v6, &unk_100037B00, qword_100024000);
  }

  v8 = [a1 automakerSettings];
  v9 = static os_log_type_t.debug.getter();
  if (v8)
  {
    v10 = v9;
    if (os_log_type_enabled(v4, v9))
    {
      v11 = v8;
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = [v11 receivedAllValues];

      _os_log_impl(&_mh_execute_header, v4, v10, "AutomakerSettings is available... receivedAllValues=%{BOOL}d", v12, 8u);
    }

    [v8 registerObserver:v1];
  }

  else
  {
    os_log(_:dso:log:_:_:)();
  }

  v13 = [a1 automakerNotificationHistory];
  v14 = static os_log_type_t.debug.getter();
  if (v13)
  {
    v15 = v14;
    if (os_log_type_enabled(v4, v14))
    {
      v16 = v13;
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = [v16 receivedAllValues];

      _os_log_impl(&_mh_execute_header, v4, v15, "NotificationHistory is available... receivedAllValues=%{BOOL}d", v17, 8u);
    }

    [v13 registerObserver:v1];
  }

  else
  {
    os_log(_:dso:log:_:_:)();
  }

  sub_100016174();
}

uint64_t sub_100019AB0(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &qword_100037AD8;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_10000BD80(&unk_1000388D0, v3, &unk_100024560, &protocol conformance descriptor for [A]);
      for (i = 0; i != v14; ++i)
      {
        sub_100003FD8(v3, &unk_100024560);
        v18 = v3;
        v19 = sub_10001D2B0(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_1000043C8(0, &unk_1000388C0, CAFRequestTemporaryContent_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100019DA8(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &qword_1000388F0;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_10000BD80(&qword_1000388F8, v3, &unk_100024580, &protocol conformance descriptor for [A]);
      for (i = 0; i != v14; ++i)
      {
        sub_100003FD8(v3, &unk_100024580);
        v18 = v3;
        v19 = sub_10001D330(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_1000043C8(0, &qword_1000388E8, CAFRequestContent_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10001A0A0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10001A120(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

unint64_t sub_10001A194(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001A260(v11, 0, 0, 1, a1, a2);
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
    sub_10001B930(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000458C(v11);
  return v7;
}

unint64_t sub_10001A260(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001A36C(a5, a6);
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

char *sub_10001A36C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001A3B8(a1, a2);
  sub_10001A4E8(&off_100031378);
  return v3;
}

char *sub_10001A3B8(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001A5D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001A5D4(v10, 0);
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

uint64_t sub_10001A4E8(uint64_t result)
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

  result = sub_10001A648(result, v11, 1, v3);
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

void *sub_10001A5D4(uint64_t a1, uint64_t a2)
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

  sub_100003FD8(&qword_1000387E0, &unk_1000244C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001A648(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003FD8(&qword_1000387E0, &unk_1000244C8);
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

unint64_t sub_10001A73C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10001A820(a1, a2, v4);
}

unint64_t sub_10001A7B4(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_10001A8D8(v1, v2);
}

unint64_t sub_10001A820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001A8D8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10001A948(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003FD8(&qword_100037F88, &qword_100024570);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10001A73C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001AA4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003FD8(&qword_1000388E0, &qword_100024578);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10001A73C(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10001AB50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100003FD8(&qword_100038230, &unk_100024130);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_10001A7B4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_10001A7B4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10001AC60(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100003FD8(&qword_100038868, &unk_100024540);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_10001B994(&qword_100038870, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_10001B994(&unk_100038878, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10001AEF4(void *a1, uint64_t a2)
{
  v4 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = [a1 audioSettings];
  if (v10 && (v11 = v10, v12 = [v10 equalizers], v11, v12) || (v13 = objc_msgSend(a1, "audioSettings"), v12 = objc_msgSend(v13, "soundDistribution"), v13, v12))
  {

    return 0;
  }

  sub_10001B9DC(a2, v9);
  v15 = type metadata accessor for CAFUISettingsCache();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v9, 1, v15) == 1)
  {
    v18 = v9;
LABEL_9:
    sub_10000B6D0(v18, &qword_100037BD0, &qword_100023C80);
    return 0;
  }

  v19 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
  v20 = *(v16 + 8);
  v20(v9, v15);
  if (v19 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21)
  {
    return 0;
  }

  sub_10001B9DC(a2, v7);
  if (v17(v7, 1, v15) == 1)
  {
    v18 = v7;
    goto LABEL_9;
  }

  v22 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
  v20(v7, v15);
  if (v22 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();

    if (v24)
    {
      return 0;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v23)
    {
      return 0;
    }
  }

  result = [a1 automakerNotificationHistory];
  if (result)
  {

    return 1;
  }

  return result;
}

void sub_10001B1E8(void *a1)
{
  v3 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  __chkstk_darwin(v3 - 8);
  v5 = v14 - v4;
  if (a1)
  {
    v6 = type metadata accessor for CAFUISettingsCache();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_settingsCache;
    swift_beginAccess();
    v8 = a1;
    sub_10001B8C0(v5, &v1[v7]);
    swift_endAccess();
    *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager] = 0;

    v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_fireRenderedAndFinalizedSignposts] = 1;
    v9 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v10 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = a1;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v10, v9, "Set current car %@", v11, 0xCu);
      sub_10000B6D0(v12, &unk_100037B00, qword_100024000);
    }

    [v8 registerObserver:v1];
    if ([v8 isConfigured])
    {
      [v1 carIsConfigured:v8];
    }
  }

  else if (*&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager])
  {
    memset(v14, 0, sizeof(v14));

    sub_1000080A0(v14);

    sub_10000B6D0(v14, &qword_1000387F0, &qword_100023CA0);
  }
}

void sub_10001B484(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 unregisterObserver:v1];

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_10001B564()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v11 = *(v3 - 8);
  v12 = v3;
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000043C8(0, &qword_1000387B8, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10001B8A0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001969C;
  aBlock[3] = &unk_100031600;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10001B994(&qword_1000387C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003FD8(&qword_1000387C8, &unk_1000244B8);
  sub_10000BD80(&unk_1000387D0, &qword_1000387C8, &unk_1000244B8, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v13 + 8))(v2, v0);
  (*(v11 + 8))(v5, v12);
}

uint64_t sub_10001B868()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B8A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001B8C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B930(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001B994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001B9DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10001BA4C(void *a1)
{
  v1 = a1;
  v2 = CAFUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1000316E0 table:@"Localizable"];

  return v3;
}

unint64_t sub_10001BAC0()
{
  result = qword_100038820;
  if (!qword_100038820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038820);
  }

  return result;
}

uint64_t sub_10001BB14(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000043C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t VSRootViewController.init(carSession:cafCar:assetManager:settingsCache:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v51 = a3;
  v9 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  v10 = __chkstk_darwin(v9 - 8);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v46 = &v45 - v13;
  v14 = __chkstk_darwin(v12);
  v45 = &v45 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v45 - v17;
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  v21 = qword_1000389C8;
  *(v4 + qword_1000389C8) = 0;
  type metadata accessor for CAFUIRequestContentManager();
  swift_allocObject();
  v47 = a1;
  v50 = CAFUIRequestContentManager.init(session:)();
  *(v4 + qword_1000389D0) = a2;
  *(v4 + v21) = 0;
  v49 = a2;

  sub_10001B9DC(a4, v20);
  v22 = type metadata accessor for CAFUISettingsCache();
  p_name = *(v22 - 8);
  v24 = p_name[6];
  if ((v24)(v20, 1, v22) != 1)
  {
    v26 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
    (p_name[1])(v20, v22);
    if (v26 >> 62)
    {
      goto LABEL_37;
    }

    v25 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

  sub_10001D3B8(v20);
  v25 = 0;
  while (1)
  {
    v27 = qword_1000389D8;
    *(v5 + qword_1000389D8) = v25;
    v52 = a4;
    sub_10001B9DC(a4, v18);
    if ((v24)(v18, 1, v22) == 1)
    {
      sub_10001D3B8(v18);
      *(v5 + qword_1000389E0) = 0;
    }

    else
    {
      v28 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
      v29 = p_name[1];
      (v29)(v18, v22);
      if (v28 >> 62)
      {
        v30 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v5 + qword_1000389E0) = v30;
      if (v30 >= 1)
      {
        v31 = v45;
        sub_10001B9DC(v52, v45);
        if ((v24)(v31, 1, v22) == 1)
        {
          sub_10001D3B8(v31);
        }

        else
        {
          CAFUISettingsCache.categorySettings(for:)();
          (v29)(v31, v22);
        }

LABEL_20:
        v32 = v52;
        goto LABEL_21;
      }
    }

    if (*(v5 + v27) < 1)
    {
      goto LABEL_20;
    }

    v32 = v52;
    v33 = v46;
    sub_10001B9DC(v52, v46);
    if ((v24)(v33, 1, v22) == 1)
    {
      sub_10001D3B8(v33);
    }

    else
    {
      CAFUISettingsCache.categorySettings(for:)();
      (p_name[1])(v33, v22);
    }

LABEL_21:
    v34 = v49;
    v22 = v50;
    v35 = v47;
    sub_10001B9DC(v32, v48);
    v36 = v35;

    v37 = CAFUITileViewController.init(carSession:prominentCategories:listItems:settingsSections:settingsCache:assetManager:requestContentManager:preventVolumeNotification:)();
    sub_10001C1F4();
    v38 = [v34 automakerNotificationHistory];
    if (!v38)
    {
      sub_10001D3B8(v32);

      return v37;
    }

    v18 = v38;
    v39 = [v38 historicalNotifications];
    if (!v39)
    {
      sub_10001D3B8(v32);

      return v37;
    }

    v40 = v39;
    sub_1000043C8(0, &qword_1000381E8, CAFHistoricalNotification_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = v36;
    if (v5 >> 62)
    {
      break;
    }

    v41 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v41)
    {
      goto LABEL_40;
    }

LABEL_25:
    v24 = 0;
    a4 = v5 & 0xFFFFFFFFFFFFFF8;
    p_name = &VSFullScreenActionAlertViewController.name;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v42 = *(v5 + 8 * v24 + 32);
      }

      v43 = v42;
      v22 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      [v42 registerObserver:v37];

      ++v24;
      if (v22 == v41)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v25 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  }

  v41 = _CocoaArrayWrapper.endIndex.getter();
  if (v41)
  {
    goto LABEL_25;
  }

LABEL_40:

  sub_10001D3B8(v52);
  return v37;
}

uint64_t sub_10001C1F4()
{
  v1 = v0;
  v2 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v35 = &_swiftEmptyArrayStorage;
  CAFUITileViewController.settingsCache.getter();
  v5 = type metadata accessor for CAFUISettingsCache();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_10001D3B8(v4);
  if (v6 == 1)
  {
    v7 = *(v1 + qword_1000389D0);
    v8 = [v7 audioSettings];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 equalizers];
      if ((v10 || (v10 = [v9 soundDistribution]) != 0) && (v10, CAFUITileViewController.createSoundItem(audioSettings:)()))
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v11 = v35;
      }

      else
      {
        v11 = &_swiftEmptyArrayStorage;
      }

      v16 = [v9 volumes];
      sub_1000043C8(0, &qword_100038A98, CAFVolume_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = CAFUITileViewController.createVolumeListItem(volumes:)();

      if (v17)
      {
        goto LABEL_24;
      }

LABEL_37:

      goto LABEL_38;
    }

    goto LABEL_21;
  }

  v12 = *(v1 + qword_1000389E0);
  v7 = *(v1 + qword_1000389D0);
  v13 = [v7 audioSettings];
  v9 = v13;
  if (v12 < 1)
  {
    if (v13)
    {
      v15 = [v13 equalizers];
      if ((v15 || (v15 = [v9 soundDistribution]) != 0) && (v15, CAFUITileViewController.createSoundItem(audioSettings:)()))
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v11 = v35;
      }

      else
      {
        v11 = &_swiftEmptyArrayStorage;
      }

      v18 = [v9 volumes];
      sub_1000043C8(0, &qword_100038A98, CAFVolume_ptr);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v19 >> 62)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v20)
      {
        goto LABEL_37;
      }

      v21 = [v9 volumes];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = CAFUITileViewController.createVolumeListItem(volumes:)();

      if (!v22)
      {
        goto LABEL_37;
      }

      if (*(v1 + qword_1000389D8) <= 0)
      {
        v23 = [v9 equalizers];
        if (!v23)
        {
          v23 = [v9 soundDistribution];
          if (!v23)
          {

            goto LABEL_37;
          }
        }
      }

LABEL_24:

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v11 = v35;
      goto LABEL_38;
    }

LABEL_21:
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v14 = CAFUITileViewController.createAudioListItem(audioSettings:)();

  if (!v14)
  {
    goto LABEL_21;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v11 = v35;
LABEL_38:
  v24 = CAFUITileViewController.requestContentManager.getter();
  if (v24)
  {
    v25 = v24;
    v26 = [v7 automakerNotificationHistory];
    if (v26 && ((v27 = v26, v28 = sub_10000BE80(), v27, v28 >> 62) ? (v29 = _CocoaArrayWrapper.endIndex.getter()) : (v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v29))
    {
      type metadata accessor for CAFUINotificationListItem(0);
      swift_allocObject();
      v30 = v7;

      v31 = sub_10001CC90(v30, v25);
      sub_100003FD8(&qword_100038A90, &unk_100024110);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1000240B0;
      *(v32 + 32) = v31;
      v34 = v32;
      sub_100020940(v11);
    }

    else
    {
    }
  }

  dispatch thunk of CAFUITileViewController.setListItems(_:)();
}

uint64_t sub_10001C834()
{
}

id VSRootViewController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:CARSessionLimitUserInterfacesChangedNotification];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for VSRootViewController(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001C8F4(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver:CARSessionLimitUserInterfacesChangedNotification];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for VSRootViewController(0);
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_10001C988(uint64_t a1)
{
}

Swift::Void __swiftcall VSRootViewController.viewDidLoad()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VSRootViewController(0);
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v5[3] = &type metadata for VehicleFeatures;
  v5[4] = sub_100011860();
  v1 = isFeatureEnabled(_:)();
  sub_10000458C(v5);
  if (v1)
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_opt_self() clearColor];
      [v3 setBackgroundColor:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10001CAA4(void *a1)
{
  v1 = a1;
  VSRootViewController.viewDidLoad()();
}

uint64_t sub_10001CAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  return (*(v5 + 8))(v7, v4);
}

void sub_10001CBFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _s7Vehicle20VSRootViewControllerC29historicalNotificationService_15didUpdateHiddenySo013CAFHistoricalF0C_SbtF_0();
}

uint64_t sub_10001CC90(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = a1;
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() systemImageNamed:v5];

  v7 = [objc_opt_self() mainBundle];
  v15._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0x4143494649544F4ELL;
  v8._object = 0xED0000534E4F4954;
  v9.value._countAndFlagsBits = 0x747465536F747541;
  v9.value._object = 0xEC00000073676E69;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v15);

  String.init(format:_:)();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a2;

  v13 = CAFUIDataListItem.init(symbol:text:secondaryText:badgeText:showChevron:enabled:settingsCategory:limitedUI:limitedUIImage:selectionAction:)();

  return v13;
}

uint64_t sub_10001CEA4@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v6 = Strong;
  v7 = [Strong automakerNotificationHistory];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = sub_10000BE80();
  if (v8 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();

    if (v15)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v9)
  {
LABEL_7:

LABEL_8:
    v14 = &enum case for CAFUICellSelectionAction.none(_:);
    goto LABEL_9;
  }

LABEL_5:
  v10 = objc_allocWithZone(type metadata accessor for VSNotificationHistoryViewController(0));
  v11 = qword_100038030;
  v12 = objc_allocWithZone(type metadata accessor for VSEmptyNotificationHistoryView());

  *&v10[v11] = [v12 init];
  v13 = qword_100038048;
  *&v10[v13] = sub_10001AB50(&_swiftEmptyArrayStorage);
  *&v10[qword_100038040] = a2;
  *&v10[qword_100038038] = v7;
  *a3 = CAFUITableViewController.init(style:)();
  v14 = &enum case for CAFUICellSelectionAction.push(_:);
LABEL_9:
  v16 = *v14;
  v17 = type metadata accessor for CAFUICellSelectionAction();
  return (*(*(v17 - 8) + 104))(a3, v16, v17);
}

BOOL sub_10001D048()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  result = 0;
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong automakerNotificationHistory];

    if (v2)
    {
      v3 = sub_10000BE80();
      v4 = v3 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        return 1;
      }
    }
  }

  return result;
}

void *sub_10001D0F4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [result automakerNotificationHistory];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10000BE80();
  if (v3 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();

    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v4)
  {
LABEL_9:

    return 0;
  }

LABEL_5:
  if (sub_10000BE80() >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = dispatch thunk of CustomStringConvertible.description.getter();

  return v5;
}

uint64_t sub_10001D260()
{
  v0 = CAFUIDataListItem.deinit();
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

void (*sub_10001D2B0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10001D7B4;
  }

  __break(1u);
  return result;
}

void (*sub_10001D330(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10001D3B0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D3B8(uint64_t a1)
{
  v2 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_10001D440(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10001D4C0;
  }

  __break(1u);
  return result;
}

id _s7Vehicle20VSRootViewControllerC29historicalNotificationService_15didUpdateHiddenySo013CAFHistoricalF0C_SbtF_0()
{
  v1 = v0;
  v2 = *&v0[qword_1000389D0];
  v3 = [v2 automakerNotificationHistory];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10000BE80();

    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = &v1[qword_1000389C8];
    result = *&v1[qword_1000389C8];
    if (result)
    {
      if (v6 > 0)
      {
        result = [v1 isViewLoaded];
        if (result)
        {

          return dispatch thunk of CAFUITileViewController.reloadListItem(item:)(0);
        }

        return result;
      }
    }

    else
    {
      if (v6 <= 0)
      {
        return result;
      }

      v9 = CAFUITileViewController.requestContentManager.getter();
      if (v9)
      {
        v10 = v9;
        type metadata accessor for CAFUINotificationListItem(0);
        swift_allocObject();
        *v7 = sub_10001CC90(v2, v10);
        goto LABEL_12;
      }
    }
  }

  else
  {
    v7 = &v0[qword_1000389C8];
    result = *&v0[qword_1000389C8];
    if (!result)
    {
      return result;
    }
  }

  *v7 = 0;
LABEL_12:

  return sub_10001C1F4();
}

uint64_t sub_10001D734()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D76C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D978()
{
  v1 = type metadata accessor for Calendar();
  v37 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = *(v0 + qword_100038AD0);
  if (!v15)
  {
    return 0;
  }

  v34 = v10;
  v35 = v5;
  v36 = v4;
  v38 = v15;
  v16 = [v38 timestamp];
  sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

  Measurement.value.getter();
  v18 = v17;
  v19 = *(v12 + 8);
  v19(v14, v11);
  if (v18 <= 0.0)
  {

    return 0;
  }

  v20 = [v38 timestamp];
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

  Measurement.value.getter();
  v19(v14, v11);
  v21 = v34;
  Date.init(timeIntervalSince1970:)();
  static Calendar.current.getter();
  LOBYTE(v20) = Calendar.isDateInToday(_:)();
  (*(v37 + 8))(v3, v1);
  if (v20)
  {
    v22 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
    [v22 setUnitsStyle:2];
    [v22 setDateTimeStyle:1];
    isa = Date._bridgeToObjectiveC()().super.isa;
    Date.init()();
    v24 = Date._bridgeToObjectiveC()().super.isa;
    v25 = v36;
    v26 = *(v35 + 8);
    v26(v8, v36);
    v27 = [v22 localizedStringForDate:isa relativeToDate:v24];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26(v21, v25);
  }

  else
  {
    v30 = [objc_allocWithZone(NSDateFormatter) init];
    [v30 setDateStyle:1];
    [v30 setTimeStyle:0];
    v31 = Date._bridgeToObjectiveC()().super.isa;
    v32 = [v30 stringFromDate:v31];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v35 + 8))(v21, v36);
  }

  return v28;
}

void sub_10001DE24(void *a1)
{
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v2 = *&v1[qword_100038AC8];
  if (v2)
  {
    v3 = v2;
    [v1 setAccessoryType:0];
    v4 = v3;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v1 contentView];
    [v5 addSubview:v4];

    v6 = objc_opt_self();
    sub_100003FD8(&qword_100038A90, &unk_100024110);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100024610;
    v8 = [v4 topAnchor];
    v9 = [v1 contentView];
    v10 = [v9 topAnchor];

    v11 = [v8 constraintEqualToAnchor:v10];
    *(v7 + 32) = v11;
    v12 = [v4 trailingAnchor];
    v13 = [v1 contentView];
    v14 = [v13 trailingAnchor];

    v15 = [v12 constraintEqualToAnchor:v14 constant:-12.0];
    *(v7 + 40) = v15;
    v16 = [v4 bottomAnchor];

    v17 = [v1 contentView];
    v18 = [v17 bottomAnchor];

    v19 = [v16 constraintEqualToAnchor:v18];
    *(v7 + 48) = v19;
    sub_1000043C8(0, &qword_100038200, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 activateConstraints:isa];
  }
}

uint64_t sub_10001E114()
{
  v1 = v0;
  v2 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v62 - v4;
  v6 = sub_100003FD8(&qword_100038BE0, &unk_1000246D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  v9 = type metadata accessor for UIListContentConfiguration();
  v68 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + qword_100038AD0);
  if (v13)
  {
    v65 = v3;
    *&v66 = v2;
    v67 = result;
    v14 = v13;
    static UIListContentConfiguration.subtitleCell()();
    v15 = sub_1000043C8(0, &unk_1000381F0, UIFont_ptr);
    static UIFont.cafui_titleFont.getter();
    v16 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v16(v69, 0);
    v17 = [v14 userVisibleLabel];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UIListContentConfiguration.text.setter();
    v64 = v15;
    static UIFont.cafui_subtitleFont.getter();
    v18 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v18(v69, 0);
    v19 = objc_opt_self();
    v20 = [v19 secondaryLabelColor];
    v21 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v21(v69, 0);
    v22 = [v14 userVisibleDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UIListContentConfiguration.secondaryText.setter();
    v23 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
    v23(v69, 0);
    v24 = [objc_opt_self() configurationWithWeight:6];
    v25 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
    v25(v69, 0);
    static UIBackgroundConfiguration.clear()();
    v26 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
    UITableViewCell.backgroundConfiguration.setter();
    v27 = [v14 symbolName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v32 = [v14 symbolName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v33 = [v14 notificationSeverity];
    v63 = v19;
    if (v33 <= 2)
    {
      v34 = [v19 *(&off_1000316C8)[v33]];
    }

    v35 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.tintColor.setter();
    v35(v69, 0);
    v36 = String._bridgeToObjectiveC()();

    v37 = CAFUIImageForSymbolName();

    UIListContentConfiguration.image.setter();
    v38 = v67;
    v69[3] = v67;
    v69[4] = &protocol witness table for UIListContentConfiguration;
    v39 = sub_10000B798(v69);
    v40 = v68;
    (*(v68 + 16))(v39, v12, v38);
    UITableViewCell.contentConfiguration.setter();
    v41 = [v14 timestamp];
    sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v66;
    Measurement.value.getter();
    v44 = v43;
    (*(v65 + 8))(v5, v42);
    if (v44 <= 0.0)
    {
      v60 = *(v1 + qword_100038AC8);
      *(v1 + qword_100038AC8) = 0;
      sub_10001DE24(v60);
    }

    else
    {
      v69[0] = &_swiftEmptyArrayStorage;
      v45 = [objc_allocWithZone(UILabel) init];
      sub_10001D978();
      v46 = String._bridgeToObjectiveC()();

      [v45 setText:v46];

      v47 = [v63 secondaryLabelColor];
      [v45 setTextColor:v47];

      v48 = static UIFont.cafui_subtitleFont.getter();
      [v45 setFont:v48];

      v49 = v45;
      [v49 sizeToFit];
      sub_100003FD8(&qword_100038A90, &unk_100024110);
      inited = swift_initStackObject();
      v66 = xmmword_1000240B0;
      *(inited + 16) = xmmword_1000240B0;
      *(inited + 32) = v49;
      sub_100020958(inited, sub_100020C90);
      v51 = *(v1 + qword_100038AD8);
      *(v1 + qword_100038AD8) = v49;
      v52 = v49;

      v53 = *(sub_100002244() + 2);

      if (v53 || [v14 hasUserVisibleFullDescription])
      {
        v54 = sub_10001EA1C();
        v55 = *(v1 + qword_100038AE0);
        *(v1 + qword_100038AE0) = v54;
        v56 = v54;

        v57 = swift_initStackObject();
        *(v57 + 16) = v66;
        *(v57 + 32) = v56;
        sub_100020958(v57, sub_100020C90);
      }

      v58 = objc_allocWithZone(type metadata accessor for CAFUIStackView());
      v59 = CAFUIStackView.init(views:axis:minWidth:)();
      v60 = *(v1 + qword_100038AC8);
      *(v1 + qword_100038AC8) = v59;
      v61 = v59;
      sub_10001DE24(v60);
    }

    return (*(v40 + 8))(v12, v38);
  }

  return result;
}

id sub_10001E97C()
{
  v1 = *(v0 + qword_100038AD0);
  if (!v1 || (v2 = [v1 notificationSeverity], v2 > 2) || (result = objc_msgSend(objc_opt_self(), *(&off_1000316C8)[v2])) == 0)
  {
    v4 = [objc_opt_self() labelColor];

    return v4;
  }

  return result;
}

id sub_10001EA1C()
{
  v1 = qword_100038AE8;
  v2 = *(v0 + qword_100038AE8);
  if (v2)
  {
    v3 = *(v0 + qword_100038AE8);
  }

  else
  {
    v4 = sub_10001EA7C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10001EA7C()
{
  v0 = [objc_opt_self() boldSystemFontOfSize:13.0];
  v1 = [objc_opt_self() configurationWithFont:v0 scale:-1];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (v3)
  {
    v4 = [v3 imageWithRenderingMode:2];
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  v6 = objc_allocWithZone(UIColor);
  v10[4] = sub_100021018;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000207C8;
  v10[3] = &unk_1000316A0;
  v7 = _Block_copy(v10);
  v8 = [v6 initWithDynamicProvider:v7];
  _Block_release(v7);

  [v5 setTintColor:v8];

  return v5;
}

uint64_t sub_10001EC78(char a1, char a2)
{
  v3 = v2;
  v6 = sub_100003FD8(&qword_100038BC8, &qword_1000246B0);
  __chkstk_darwin(v6 - 8);
  v8 = aBlock - v7;
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for VSNotificationTableCell(0);
  v41.receiver = v3;
  v41.super_class = v13;
  objc_msgSendSuper2(&v41, "setHighlighted:animated:", a1 & 1, a2 & 1);
  UITableViewCell.contentConfiguration.getter();
  if (!v38)
  {
    sub_10000B6D0(aBlock, &qword_100038BD0, &qword_1000246B8);
    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_10000B6D0(v8, &qword_100038BC8, &qword_1000246B0);
  }

  sub_100003FD8(&qword_100038BD8, &unk_1000246C0);
  v14 = swift_dynamicCast();
  (*(v10 + 56))(v8, v14 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000B6D0(v8, &qword_100038BC8, &qword_1000246B0);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a1)
  {
    sub_1000043C8(0, &unk_100038460, UIColor_ptr);
    static UIColor.cafui_carSystemFocusLabel.getter();
    v15 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v15(aBlock, 0);
    v16 = [objc_opt_self() _carSystemFocusPrimaryColor];
    v17 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v17(aBlock, 0);
    v18 = *&v3[qword_100038AD8];
    if (v18)
    {
      v19 = v18;
      v20 = static UIColor.cafui_carSystemFocusLabel.getter();
      [v19 setTextColor:v20];
    }

    v21 = *&v3[qword_100038AE0];
    if (!v21)
    {
      goto LABEL_15;
    }

    v22 = v21;
    v23 = static UIColor.cafui_carSystemFocusLabel.getter();
  }

  else
  {
    v25 = objc_opt_self();
    v26 = [v25 labelColor];
    v27 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v27(aBlock, 0);
    v28 = [v25 secondaryLabelColor];
    v29 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v29(aBlock, 0);
    v30 = *&v3[qword_100038AD8];
    if (v30)
    {
      v31 = v30;
      v32 = [v25 secondaryLabelColor];
      [v31 setTextColor:v32];
    }

    v33 = *&v3[qword_100038AE0];
    if (!v33)
    {
      goto LABEL_15;
    }

    v34 = objc_allocWithZone(UIColor);
    v39 = sub_100021018;
    v40 = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000207C8;
    v38 = &unk_100031678;
    v35 = _Block_copy(aBlock);
    v22 = v33;
    v23 = [v34 initWithDynamicProvider:v35];
    _Block_release(v35);
  }

  [v22 setTintColor:v23];

LABEL_15:
  v38 = v9;
  v39 = &protocol witness table for UIListContentConfiguration;
  v36 = sub_10000B798(aBlock);
  (*(v10 + 16))(v36, v12, v9);
  UITableViewCell.contentConfiguration.setter();
  return (*(v10 + 8))(v12, v9);
}

id sub_10001F1E8(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemDarkGrayColor;
  if (v1 != 1)
  {
    v3 = &selRef_secondaryLabelColor;
  }

  v4 = [v2 *v3];

  return v4;
}

void sub_10001F254(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  sub_10001EC78(a3, a4);
}

id sub_10001F2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[qword_100038AC8] = 0;
  *&v3[qword_100038AD0] = 0;
  *&v3[qword_100038AD8] = 0;
  *&v3[qword_100038AE0] = 0;
  *&v3[qword_100038AE8] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for VSNotificationTableCell(0);
  v6 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:", a1, v5);

  return v6;
}

id sub_10001F374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10001F2B0(a3, a4, v6);
}

uint64_t sub_10001F3C0(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  *&v3[qword_100038AC8] = 0;
  *&v3[qword_100038AD0] = 0;
  *&v3[qword_100038AD8] = 0;
  *&v3[qword_100038AE0] = 0;
  *&v3[qword_100038AE8] = 0;
  return CAFUITableCell.init(reuseIdentifier:)();
}

void sub_10001F440()
{
  v1 = *(v0 + qword_100038AE8);
}

id sub_10001F4CC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10001F504(uint64_t a1)
{
  v2 = *(a1 + qword_100038AE8);
}

uint64_t sub_10001F588()
{
  v1 = type metadata accessor for UIListContentConfiguration();
  result = __chkstk_darwin(v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction];
  v7 = *&v0[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 8];
  if (v7)
  {
    v32 = result;
    v33 = v3;
    v34 = v0;
    v8 = *v6;
    v9 = *(v6 + 2);
    v10 = *(v6 + 3);
    v11 = *(v6 + 5);
    v30 = *(v6 + 4);
    v31 = v9;
    v12 = v6[48];

    static UIListContentConfiguration.cell()();
    v13 = [objc_opt_self() systemFontOfSize:16.0 weight:UIFontWeightMedium];
    v14 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v14(v35, 0);
    v15 = objc_opt_self();
    v16 = &selRef_systemRedColor;
    if ((v12 & 1) == 0)
    {
      v16 = &selRef_labelColor;
    }

    v17 = [v15 *v16];
    v18 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v18(v35, 0);

    UIListContentConfiguration.text.setter();
    if (v10)
    {

      v19 = v31;
      sub_100004698(v8, v7, v31, v10, v30, v11);
      v20 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v20 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        v21 = String._bridgeToObjectiveC()();

        v22 = CAFUIImageForSymbolName();

        v23 = [objc_allocWithZone(UIImageView) initWithImage:v22];
        v24 = objc_opt_self();
        v25 = &selRef_systemRedColor;
        if ((v12 & 1) == 0)
        {
          v25 = &selRef_labelColor;
        }

        v26 = [v24 *v25];
        [v23 setTintColor:v26];

        [v34 setAccessoryView:v23];
        goto LABEL_14;
      }
    }

    else
    {
      sub_100004698(v8, v7, v31, 0, v30, v11);
    }

    [v34 setAccessoryView:0];
LABEL_14:
    v27 = v32;
    v35[3] = v32;
    v35[4] = &protocol witness table for UIListContentConfiguration;
    v28 = sub_10000B798(v35);
    v29 = v33;
    (*(v33 + 16))(v28, v5, v27);
    UITableViewCell.contentConfiguration.setter();
    return (*(v29 + 8))(v5, v27);
  }

  return result;
}

uint64_t sub_10001F920(char a1, char a2)
{
  v3 = v2;
  v6 = sub_100003FD8(&qword_100038BC8, &qword_1000246B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v37[-1] - v7;
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for VSNotificationActionTableCell();
  v40.receiver = v3;
  v40.super_class = v13;
  objc_msgSendSuper2(&v40, "setHighlighted:animated:", a1 & 1, a2 & 1);
  UITableViewCell.contentConfiguration.getter();
  if (!v38)
  {
    sub_10000B6D0(v37, &qword_100038BD0, &qword_1000246B8);
    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_10000B6D0(v8, &qword_100038BC8, &qword_1000246B0);
  }

  sub_100003FD8(&qword_100038BD8, &unk_1000246C0);
  v14 = swift_dynamicCast();
  (*(v10 + 56))(v8, v14 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000B6D0(v8, &qword_100038BC8, &qword_1000246B0);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a1)
  {
    sub_1000043C8(0, &unk_100038460, UIColor_ptr);
    static UIColor.cafui_carSystemFocusLabel.getter();
    v15 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v15(v37, 0);
    v16 = [v3 accessoryView];
    if (v16)
    {
      v17 = v16;
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        v20 = static UIColor.cafui_carSystemFocusLabel.getter();
        [v19 setTintColor:{v20, v36}];
LABEL_17:

        v17 = v20;
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v36 = v12;
  v22 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction];
  v23 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 8];
  v24 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 16];
  v25 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 24];
  v27 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 32];
  v26 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 40];
  v28 = v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 48];
  if (v23)
  {
    sub_100020778(v22, *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 8], *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 16], *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 24], *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 32], *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 40]);
    sub_100004698(v22, v23, v24, v25, v27, v26);
    if (v28)
    {
      v29 = &selRef_systemRedColor;
      goto LABEL_14;
    }
  }

  else
  {
    sub_100020778(v22, 0, *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 16], *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 24], *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 32], *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 40]);
    sub_100004698(v22, 0, v24, v25, v27, v26);
  }

  v29 = &selRef_labelColor;
LABEL_14:
  v12 = v36;
  v30 = [objc_opt_self() *v29];
  v31 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v31(v37, 0);
  v32 = [v3 accessoryView];
  if (v32)
  {
    v17 = v32;
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v33;
      v20 = [objc_opt_self() *v29];
      [v34 setTintColor:{v20, v36}];
      goto LABEL_17;
    }

LABEL_18:
  }

LABEL_19:
  v38 = v9;
  v39 = &protocol witness table for UIListContentConfiguration;
  v35 = sub_10000B798(v37);
  (*(v10 + 16))(v35, v12, v9);
  UITableViewCell.contentConfiguration.setter();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100020088()
{
  v1 = sub_100003FD8(&qword_100038BE0, &unk_1000246D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v38[-1] - v2;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v38[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + qword_100038B70);
  if (v9)
  {
    v37 = v0;
    v10 = v9;
    static UIListContentConfiguration.subtitleCell()();
    sub_1000043C8(0, &unk_1000381F0, UIFont_ptr);
    v11 = static UIFont.cafui_titleFont.getter();
    v12 = [v11 fontDescriptor];
    v13 = [v12 fontDescriptorWithSymbolicTraits:2];

    if (v13)
    {
      [objc_opt_self() fontWithDescriptor:v13 size:0.0];
    }

    v14 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v14(v38, 0);
    v15 = [v10 userVisibleLabel];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UIListContentConfiguration.text.setter();
    static UIFont.cafui_subtitleFont.getter();
    v16 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v16(v38, 0);
    v17 = objc_opt_self();
    v18 = [v17 secondaryLabelColor];
    v19 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v19(v38, 0);
    v20 = [v10 userVisibleFullDescription];
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    UIListContentConfiguration.secondaryText.setter();
    v22 = [v10 symbolName];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      v27 = [v10 notificationSeverity];
      if (v27 <= 2)
      {
        v28 = [v17 *(&off_1000316C8)[v27]];
      }

      v29 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.tintColor.setter();
      v29(v38, 0);
      v30 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
      v30(v38, 0);
      v31 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle3 scale:3];
      v32 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
      v32(v38, 0);
      v33 = [v10 symbolName];
      if (!v33)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = String._bridgeToObjectiveC()();
      }

      v34 = CAFUIImageForSymbolName();
    }

    UIListContentConfiguration.image.setter();
    static UIBackgroundConfiguration.clear()();
    v35 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v35 - 8) + 56))(v3, 0, 1, v35);
    UITableViewHeaderFooterView.backgroundConfiguration.setter();
    v38[3] = v4;
    v38[4] = &protocol witness table for UIListContentConfiguration;
    v36 = sub_10000B798(v38);
    (*(v5 + 16))(v36, v8, v4);
    UITableViewHeaderFooterView.contentConfiguration.setter();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

char *sub_100020610(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&a1[qword_100038B70] = 0;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
    *&a1[qword_100038B70] = 0;
  }

  v7.receiver = a1;
  v7.super_class = type metadata accessor for VSNotificationHeaderView(0);
  v5 = objc_msgSendSuper2(&v7, "initWithReuseIdentifier:", v4);

  return v5;
}

char *sub_1000206AC(char *a1, uint64_t a2, void *a3)
{
  *&a1[qword_100038B70] = 0;
  v7.receiver = a1;
  v7.super_class = type metadata accessor for VSNotificationHeaderView(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

void sub_100020778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

id sub_1000207C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_100020830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_100020848(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100004020(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100020958(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100020A50(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100020A50(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_100020AF0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100020FC0(&qword_100038C08, &qword_100038C00, &qword_1000246E8);
          for (i = 0; i != v6; ++i)
          {
            sub_100003FD8(&qword_100038C00, &qword_1000246E8);
            v9 = sub_10001D2B0(v13, i, a3);
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
        sub_1000043C8(0, &qword_1000381E8, CAFHistoricalNotification_ptr);
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

uint64_t sub_100020C90(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100020FC0(&qword_100038BF8, &qword_100038BF0, &qword_1000246E0);
          for (i = 0; i != v6; ++i)
          {
            sub_100003FD8(&qword_100038BF0, &qword_1000246E0);
            v9 = sub_10001D2B0(v13, i, a3);
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
        sub_1000043C8(0, &qword_100038BE8, UIView_ptr);
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

uint64_t sub_100020E30(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100020FC0(&qword_100038C18, &qword_100038C10, &unk_1000246F0);
          for (i = 0; i != v6; ++i)
          {
            sub_100003FD8(&qword_100038C10, &unk_1000246F0);
            v9 = sub_10001D440(v13, i, a3);
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
        type metadata accessor for CAFUIDataListItem();
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

uint64_t sub_100020FC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_100021020()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for VSClusterViewController();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v1 = [objc_allocWithZone(UILabel) init];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = [objc_opt_self() labelColor];
  [v1 setTextColor:v3];

  [v1 setTextAlignment:1];
  [v1 setNumberOfLines:2];
  v4 = [objc_opt_self() systemFontOfSize:24.0];
  [v1 setFont:v4];

  v5 = v1;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v6;
  [v6 addSubview:v5];

  sub_100003FD8(&qword_100038A90, &unk_100024110);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000243E0;
  v9 = [v5 centerXAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  v12 = [v10 centerXAnchor];

  v13 = [v9 constraintEqualToAnchor:v12];
  *(v8 + 32) = v13;
  v14 = [v5 centerYAnchor];

  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    v17 = objc_opt_self();
    v18 = [v16 centerYAnchor];

    v19 = [v14 constraintEqualToAnchor:v18];
    *(v8 + 40) = v19;
    sub_1000214F4();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v17 activateConstraints:isa];

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_10002149C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VSClusterViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000214F4()
{
  result = qword_100038200;
  if (!qword_100038200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100038200);
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

UIButton_optional __swiftcall CAFUIPunchthroughState.buttonForCurrentState(title:)(Swift::String_optional title)
{
  v1 = CAFUIPunchthroughState.buttonForCurrentState(title:)(title.value._countAndFlagsBits, title.value._object);
  result.value.super.super.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}