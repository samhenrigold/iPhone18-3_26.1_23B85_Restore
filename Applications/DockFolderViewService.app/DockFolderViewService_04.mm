void sub_100056B60(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v89 = a2;
  v90 = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100093CD0, v91);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100037B98(a1, a2, v91);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s identifier: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v9, v6);
  v14 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v15 = *(v3 + v14);
  if (v15 >> 62)
  {
LABEL_34:
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v88 = v3;

  if (!v16)
  {
LABEL_29:

    return;
  }

  v17 = 0;
  v3 = v15 & 0xC000000000000001;
  while (!v3)
  {
    if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v18 = *(v15 + 8 * v17 + 32);
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_20;
    }

LABEL_11:
    v6 = v18;
    v21 = [v6 restorationIdentifier];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v19 = v89;
      if (v23 == v90 && v25 == v89)
      {
        goto LABEL_21;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        v28 = v89;
        goto LABEL_22;
      }
    }

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_29;
    }
  }

  v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v20 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  v28 = v19;

LABEL_22:

  [v6 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController;
  v38 = v88;
  v39 = *(v88 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
  if (!v39)
  {
    __break(1u);
    goto LABEL_36;
  }

  v40 = [v39 view];
  [v6 convertRect:v40 toView:{v30, v32, v34, v36}];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v49 = *(v38 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
  if (!v49)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v50 = v49;
  [v50 bounds];
  v55 = *(v38 + v37);
  if (v55)
  {
    v56 = v51;
    v57 = v52;
    v58 = v53;
    v59 = v54;
    v60 = 0xE900000000000064;
    v87 = 0x6564644165746164;
    v61 = 7233894;
    v62 = [v55 view];
    [v50 convertRect:v62 toView:{v56, v57, v58, v59}];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;

    v71 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
    swift_beginAccess();
    v72 = *(v38 + v71);
    if (*(v72 + 16))
    {

      v73 = sub_100037A68(v90, v28);
      if (v74)
      {
        v75 = *(*(v72 + 56) + 8 * v73);

        v76 = [*(v75 + 24) identifier];
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v77;

        v78 = [*(v75 + 16) identifier];
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        v81 = *(v75 + 32);
        v28 = v89;

        v82 = *(v38 + v37);
        if (!v82)
        {
LABEL_28:

          goto LABEL_29;
        }

        goto LABEL_32;
      }
    }

    v80 = 0xE300000000000000;
    v81 = 1;
    v82 = *(v38 + v37);
    if (!v82)
    {
      goto LABEL_28;
    }

LABEL_32:
    v83 = *(v38 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationEnabled);

    v84 = v82;
    v85 = v28;
    v86 = v84;
    sub_10004E9A0(v90, v85, v87, v60, v81, v61, v80, v83, v42, v44, v46, v48, v64, v66, v68, v70, v84, v90, v85);

    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_100057174(char a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100093CD0, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100037B98(a2, a3, &v15);
    *(v12 + 22) = 1024;
    *(v12 + 24) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s folder presentation completed for identifier: %s success: %{BOOL}d", v12, 0x1Cu);
    swift_arrayDestroy();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_10005736C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = a1;
  v94 = a2;
  v5 = type metadata accessor for URL();
  v91 = *(v5 - 8);
  v92 = v5;
  __chkstk_darwin(v5);
  v90 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v89 = a3;
  if (v8 >> 62)
  {
LABEL_38:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v88 = v3;

  if (!v9)
  {
LABEL_19:

    return;
  }

  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_38;
      }

      v11 = *(v8 + 8 * v10 + 32);
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_18;
      }
    }

    v12 = v11;
    v13 = [v12 restorationIdentifier];
    if (v13)
    {
      break;
    }

LABEL_5:

    ++v10;
    if (v3 == v9)
    {
      goto LABEL_19;
    }
  }

  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 != v93 || v17 != v94)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_21;
    }

    goto LABEL_5;
  }

LABEL_21:

  [v12 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController;
  v29 = v88;
  v30 = *(v88 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
  v31 = v89;
  if (!v30)
  {
    goto LABEL_42;
  }

  v32 = [v30 view];
  [v12 convertRect:v32 toView:{v21, v23, v25, v27}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = *(v29 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
  if (v41)
  {
    v42 = v41;
    [v42 bounds];
    v47 = *(v29 + v28);
    if (v47)
    {
      v48 = v43;
      v49 = v44;
      v50 = v45;
      v51 = v46;
      v52 = [v47 view];
      [v42 convertRect:v52 toView:{v48, v49, v50, v51}];
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;

      v61 = *(v29 + v28);
      if (!v61)
      {
        goto LABEL_41;
      }

      v62 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
      swift_beginAccess();
      v63 = *(v61 + v62);
      if (*(v63 + 16))
      {
        v64 = v29;

        v65 = sub_100037A68(v93, v94);
        if (v66)
        {
          v67 = *(*(v63 + 56) + 8 * v65);

          if (v67)
          {
            v68 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
            swift_beginAccess();
            (*(v91 + 16))(v90, &v67[v68], v92);
            v69 = [*(v31 + 16) identifier];
            v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v72 = v71;

            if (v70 == 7233894 && v72 == 0xE300000000000000)
            {

              goto LABEL_32;
            }

            v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v73)
            {
LABEL_32:
              v74 = *(v31 + 32);
              v75 = *(v64 + v28);
              if (v75)
              {
                goto LABEL_33;
              }

LABEL_35:

              v86 = v90;
            }

            else
            {
              v74 = *(v31 + 32) ^ 1;
              v75 = *(v64 + v28);
              if (!v75)
              {
                goto LABEL_35;
              }

LABEL_33:
              v76 = *(v31 + 24);
              v77 = v75;
              v78 = [v76 identifier];
              v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v81 = v80;

              v82 = [*(v31 + 16) identifier];
              v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v85 = v84;

              v86 = v90;
              sub_100044594(v93, v94, v90, v79, v81, v74 & 1, v83, v85, v34, v36, v38, v40, v54, v56, v58, v60);
            }

            (*(v91 + 8))(v86, v92);
            return;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
LABEL_43:
    __break(1u);
  }

  __break(1u);
}

void sub_10005790C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v40 = v5;
  if (v8)
  {
    v9 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100037B98(0xD000000000000014, 0x8000000100093CB0, v42);
    *(v9 + 12) = 2080;
    v41 = *&v40[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window];
    v10 = v41;
    sub_10000589C(&qword_1000BCA88, &unk_100090FB8);
    v11 = String.init<A>(describing:)();
    v13 = sub_100037B98(v11, v12, v42);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s frame object: %s", v9, 0x16u);
    swift_arrayDestroy();

    v5 = v40;
  }

  (*(v2 + 8))(v4, v1);
  v14 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v15 = *&v5[v14];
  if (v15 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = _swiftEmptyArrayStorage;
    if (i)
    {
      break;
    }

LABEL_17:
    v29 = v17[2];
    v30 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
    v31 = v40;
    swift_beginAccess();
    if (!v29)
    {
LABEL_23:

      return;
    }

    v32 = 0;
    v33 = v17 + 5;
    while (v32 < v17[2])
    {
      v34 = *&v31[v30];
      if (!*(v34 + 16))
      {
        goto LABEL_25;
      }

      v35 = *(v33 - 1);
      v15 = *v33;

      v36 = sub_100037A68(v35, v15);
      if ((v37 & 1) == 0)
      {
        goto LABEL_26;
      }

      ++v32;
      v38 = *(*(v34 + 56) + 8 * v36);

      v31 = v40;
      sub_10005736C(v35, v15, v38);

      v33 += 2;
      if (v29 == v32)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v41 = _swiftEmptyArrayStorage;

  v18 = &v41;
  sub_10000F718(0, i & ~(i >> 63), 0);
  if (i < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = 0;
    v17 = v41;
    while (1)
    {
      v20 = (v15 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v15 + 8 * v19 + 32);
      v18 = v20;
      v21 = [v18 restorationIdentifier];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      if (!v25)
      {
        goto LABEL_30;
      }

      v41 = v17;
      v27 = v17[2];
      v26 = v17[3];
      if (v27 >= v26 >> 1)
      {
        sub_10000F718((v26 > 1), v27 + 1, 1);
        v17 = v41;
      }

      ++v19;
      v17[2] = v27 + 1;
      v28 = &v17[2 * v27];
      v28[4] = v23;
      v28[5] = v25;
      if (i == v19)
      {

        goto LABEL_17;
      }
    }
  }

LABEL_30:
  __break(1u);
}

void sub_100057D4C(char *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController;
  v9 = *&v1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController];
  if (!v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = [v9 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  [v10 frame];
  v13 = v12;

  v14 = *&v1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v14 frame];
  v16 = *&v1[v8];
  if (!v16)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v13 * 0.5 - v15 * 0.5;
  v18 = [v16 view];
  [a1 translationInView:v18];
  v20 = v19;

  if (v20 >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v20 + 0.0;
  }

  static Logger.UI.getter();
  a1 = v1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  p_cache = &OBJC_METACLASS____TtC21DockFolderViewService20DockFolderDataSource.cache;
  if (!os_log_type_enabled(v22, v23))
  {

    (*(v4 + 8))(v7, v3);
LABEL_12:
    v31 = *(p_cache[284] + a1);
    if (v31)
    {
      [v31 setConstant:v21];
      return;
    }

    goto LABEL_18;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v33 = v26;
  *v25 = 136316162;
  *(v25 + 4) = sub_100037B98(0x75747365476E6170, 0xEE00293A5F286572, &v33);
  *(v25 + 12) = 2048;
  v27 = *&a1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_dockCenterXAnchor];
  if (v27)
  {
    v28 = v27;

    [v28 constant];
    v30 = v29;

    *(v25 + 14) = v30;
    *(v25 + 22) = 2048;
    *(v25 + 24) = 0;
    *(v25 + 32) = 2048;
    *(v25 + 34) = v17;
    *(v25 + 42) = 2048;
    *(v25 + 44) = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s dockCenterXAnchor.constant: %f xCenter: %f maxXConstant: %f xConstant: %f", v25, 0x34u);
    sub_1000064E0(v26);

    (*(v4 + 8))(v7, v3);
    p_cache = (&OBJC_METACLASS____TtC21DockFolderViewService20DockFolderDataSource + 16);
    goto LABEL_12;
  }

LABEL_19:

  __break(1u);
}

void sub_1000580E4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider;
  v5 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider);
  if (v5 && (sub_10001A2A8(0, &qword_1000BCA80, UISlider_ptr), v6 = a1, v7 = v5, v8 = static NSObject.== infix(_:_:)(), v7, v6, (v8 & 1) != 0) || (v9 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_bounceSlider)) != 0 && (sub_10001A2A8(0, &qword_1000BCA80, UISlider_ptr), v10 = a1, v11 = v9, v12 = static NSObject.== infix(_:_:)(), v11, v10, (v12 & 1) != 0))
  {
    v13 = *(v2 + v4);
    if (!v13)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    [v13 value];
    v15 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_bounceSlider);
    if (!v15)
    {
LABEL_31:
      __break(1u);
      return;
    }

    v16 = v14;
    [v15 value];
    v18 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
    if (v18)
    {
      v19 = v16;
      v20 = v17;
      v21 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
      swift_beginAccess();
      v22 = 0;
      v23 = *(v18 + v21);
      v24 = *(v23 + 64);
      v25 = 1 << *(v23 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & v24;
      if ((v26 & v24) != 0)
      {
        do
        {
          v28 = v22;
LABEL_16:
          v29 = *(*(v23 + 56) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
          v27 &= v27 - 1;
          v30 = v29 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_gridViewAnimationSpecOverride;
          *v30 = v19;
          *(v30 + 8) = v20;
          *(v30 + 16) = xmmword_100090F20;
          *(v30 + 32) = 0x3FC999999999999ALL;
          *(v30 + 40) = v19;
          *(v30 + 48) = v20;
          *(v30 + 56) = xmmword_100090F20;
          *(v30 + 72) = 0x3FC999999999999ALL;
          *(v30 + 80) = 0;
        }

        while (v27);
      }

      while (1)
      {
        v28 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v28 >= ((v25 + 63) >> 6))
        {
          return;
        }

        v27 = *(v23 + 64 + 8 * v28);
        ++v22;
        if (v27)
        {
          v22 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
    v31 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_scrollSlider);
    if (v31 && (sub_10001A2A8(0, &qword_1000BCA80, UISlider_ptr), v32 = a1, v33 = v31, v34 = static NSObject.== infix(_:_:)(), v33, v32, (v34 & 1) != 0))
    {
      [v32 value];
      v36 = v35;

      sub_1000584C0(v36);
    }

    else
    {
      v37 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSizeSlider);
      if (v37)
      {
        sub_10001A2A8(0, &qword_1000BCA80, UISlider_ptr);
        v38 = a1;
        v39 = v37;
        v40 = static NSObject.== infix(_:_:)();

        if (v40)
        {
          [v38 value];
          v42 = v41;

          sub_100058880(v42);
        }
      }
    }
  }
}

CGAffineTransform *sub_1000584C0(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v12 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconView;
  result = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconView);
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = 0.0;
  t1.ty = 0.0;
  [(CGAffineTransform *)result setTransform:&t1, v9];
  result = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconPlaygroundContainerView);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [(CGAffineTransform *)result frame];
  v14 = CGRectGetHeight(v36) * a1;
  static Logger.UI.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218496;
    *(v17 + 4) = a1;
    *(v17 + 12) = 2048;
    *(v17 + 14) = a1;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "Slider value changed: %f, yProgress: %f yPosition: %f", v17, 0x20u);
  }

  v18 = *(v5 + 8);
  v18(v11, v4);
  v19 = sub_10005679C();
  v20 = 0.5;
  if (a1 >= 0.5)
  {
    *&v20 = a1;
    [*(v19 + 16) _solveForInput:v20];
  }

  HIDWORD(v21) = 1072273817;
  if (a1 >= 0.8)
  {
    *&v21 = a1;
    [*(*(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate____lazy_storage___easingFunctions) + 16) _solveForInput:v21];
  }

  v22 = sub_100085C24(1, v14, 2775.0);
  v24 = v23;
  static Logger.UI.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = v24;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v25, v26, "rotation: %f, translationX: %f", v27, 0x16u);
  }

  v18(v7, v4);
  CGAffineTransformMakeTranslation(&t1, v22, -v14);
  v31 = *&t1.c;
  v32 = *&t1.a;
  tx = t1.tx;
  ty = t1.ty;
  result = CGAffineTransformMakeRotation(&t1, v24);
  v30 = *(v2 + v12);
  if (v30)
  {
    *&t2.a = v32;
    *&t2.c = v31;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v33, &t1, &t2);
    t1 = v33;
    return [v30 setTransform:&t1];
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100058880(double a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 67.0)
  {
    v7 = 40.0;
  }

  else
  {
    v7 = 68.0;
  }

  if (v7 != *(v1 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSize))
  {
    *(v1 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSize) = v7;
    v73 = _swiftEmptyArrayStorage;
    v8 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
    swift_beginAccess();
    v71 = v1;
    v9 = *(v1 + v8);
    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_7:
        v63 = v8;
        v67 = v10;
        if (v10 < 1)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v68 = (v4 + 8);
        v69 = v9 & 0xC000000000000001;

        v11 = 0;
        p_type = (&stru_1000B6FF0 + 16);
        *&v13 = 136315138;
        v64 = v13;
        v14 = v67;
        v65 = v6;
        v66 = v3;
        do
        {
          if (v69)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v15 = *(v9 + 8 * v11 + 32);
          }

          v16 = v15;
          isa = [v16 constraints];
          if (!isa)
          {
            sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            isa = Array._bridgeToObjectiveC()().super.isa;
          }

          [v16 removeConstraints:isa];

          v18 = [v16 widthAnchor];
          v19 = [v18 p_type[391]];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v14 = v67;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v20 = [v16 heightAnchor];

          v21 = [v20 p_type[391]];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v14 = v67;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v22 = v73;
          static Logger.UI.getter();
          v23 = v16;
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v72[0] = v27;
            *v26 = v64;
            v28 = [v23 constraints];
            v70 = v22;
            v29 = v28;
            sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
            v30 = v9;
            static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v31 = Array.description.getter();
            v33 = v32;

            v34 = v31;
            v9 = v30;
            v35 = sub_100037B98(v34, v33, v72);
            v22 = v70;
            v6 = v65;

            *(v26 + 4) = v35;
            v14 = v67;
            _os_log_impl(&_mh_execute_header, v24, v25, "Constraints %s", v26, 0xCu);
            sub_1000064E0(v27);

            v3 = v66;
          }

          else
          {
          }

          (*v68)(v6, v3);
          ++v11;
          p_type = &stru_1000B6FF0.type;
        }

        while (v14 != v11);

        v8 = v63;
LABEL_25:
        v36 = objc_opt_self();
        sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
        v37 = Array._bridgeToObjectiveC()().super.isa;
        [v36 activateConstraints:v37];

        v38 = v71;
        v39 = *(v71 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
        if (!v39)
        {
LABEL_56:
          __break(1u);
          return;
        }

        [v39 updateConstraints];
        v40 = *(v38 + v8);
        if (v40 >> 62)
        {
          goto LABEL_51;
        }

        for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v42 = _swiftEmptyArrayStorage;
          v70 = v22;
          if (i)
          {
            break;
          }

LABEL_40:
          v53 = v42[2];
          v22 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
          v54 = v71;
          swift_beginAccess();
          if (!v53)
          {
LABEL_46:

            return;
          }

          v55 = 0;
          v56 = v42 + 5;
          while (v55 < v42[2])
          {
            v57 = *(v22 + v54);
            if (!*(v57 + 16))
            {
              goto LABEL_49;
            }

            v40 = *(v56 - 1);
            v58 = *v56;

            v59 = sub_100037A68(v40, v58);
            if ((v60 & 1) == 0)
            {
              goto LABEL_50;
            }

            ++v55;
            v61 = *(*(v57 + 56) + 8 * v59);

            v54 = v71;
            sub_10005736C(v40, v58, v61);

            v56 += 2;
            if (v53 == v55)
            {
              goto LABEL_46;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          ;
        }

        v72[0] = _swiftEmptyArrayStorage;

        v1 = v72;
        sub_10000F718(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          goto LABEL_53;
        }

        v43 = 0;
        v42 = v72[0];
        while (1)
        {
          v44 = (v40 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v40 + 8 * v43 + 32);
          v1 = v44;
          v45 = [v1 restorationIdentifier];
          if (!v45)
          {
            break;
          }

          v46 = v45;
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;

          if (!v49)
          {
            goto LABEL_55;
          }

          v72[0] = v42;
          v51 = v42[2];
          v50 = v42[3];
          if (v51 >= v50 >> 1)
          {
            sub_10000F718((v50 > 1), v51 + 1, 1);
            v42 = v72[0];
          }

          ++v43;
          v42[2] = v51 + 1;
          v52 = &v42[2 * v51];
          v52[4] = v47;
          v52[5] = v49;
          if (i == v43)
          {

            goto LABEL_40;
          }
        }

LABEL_54:

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v22 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }
}

void sub_10005900C(_BYTE *a1, __n128 a2)
{
  a1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isRunningAnimationStressTest] = 1;
  if (qword_1000BB708 != -1)
  {
    swift_once();
  }

  v3 = *&a1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController];
  if (v3)
  {
    v5 = qword_1000BF128;
    v4 = qword_1000BF130;
    v6 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
    swift_beginAccess();
    v7 = *&a1[v6];
    if (*(v7 + 16))
    {

      v8 = v3;

      v9 = sub_100037A68(v5, v4);
      if (v10)
      {
        v11 = *(*(v7 + 56) + 8 * v9);

        v12 = *&a1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider];
        if (v12)
        {
          [v12 value];
          v14 = (v13 * 0.5);
          v15 = objc_opt_self();
          v16 = swift_allocObject();
          v16[2] = a1;
          v16[3] = v5;
          v16[4] = v4;
          v16[5] = v8;
          v16[6] = v11;
          aBlock[4] = sub_100062134;
          aBlock[5] = v16;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100059EB4;
          aBlock[3] = &unk_1000AF930;
          v17 = _Block_copy(aBlock);
          v18 = v8;

          v19 = a1;

          v20 = [v15 scheduledTimerWithTimeInterval:1 repeats:v17 block:v14];

          _Block_release(v17);
          v21 = *&v19[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer];
          *&v19[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer] = v20;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }
}

void sub_100059260(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v94 = a3;
  v95 = a4;
  v10 = type metadata accessor for Logger();
  __chkstk_darwin(v10);
  v93 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestCount;
  v15 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestCount);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

  *(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestCount) = v17;
  if (v17 >= 12)
  {
LABEL_21:
    *(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isRunningAnimationStressTest) = 0;
    v30 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer;
    [*(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer) invalidate];
    v31 = *(a2 + v30);
    *(a2 + v30) = 0;

    *(a2 + v14) = 0;
    return;
  }

  v89 = v12;
  v90 = v11;
  v92 = a5;
  v18 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v6 = *(a2 + v18);
  v88 = a6;
  if (v6 >> 62)
  {
    goto LABEL_33;
  }

  v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v91 = a2;

  if (!v19)
  {
LABEL_34:

    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  a2 = 0;
  v14 = v6 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v21 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      if (a2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v20 = *(v6 + 8 * a2 + 32);
      v21 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_20;
      }
    }

    v22 = v20;
    v23 = [v22 restorationIdentifier];
    if (!v23)
    {
      goto LABEL_7;
    }

    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v25 == v94 && v27 == v95)
    {
      break;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_23;
    }

LABEL_7:

    ++a2;
    if (v21 == v19)
    {
      goto LABEL_34;
    }
  }

LABEL_23:

  [v22 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = v92;
  v41 = [v92 view];
  [v22 convertRect:v41 toView:{v33, v35, v37, v39}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v50 = v91;
  v51 = *(v91 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
  if (!v51)
  {
    goto LABEL_35;
  }

  v52 = v51;
  [v52 bounds];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = [v40 view];
  [v52 convertRect:v61 toView:{v54, v56, v58, v60}];
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;

  v70 = v93;
  static Logger.UI.getter();
  v71 = v50;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v96 = v75;
    *v74 = 136315394;
    *(v74 + 4) = sub_100037B98(0xD000000000000014, 0x8000000100093DA0, &v96);
    *(v74 + 12) = 1024;
    *(v74 + 14) = v71[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestIsOpen];

    _os_log_impl(&_mh_execute_header, v72, v73, "%s stress test timer tick. animationStressTestIsOpen %{BOOL}d", v74, 0x12u);
    sub_1000064E0(v75);

    v40 = v92;
  }

  else
  {
  }

  (*(v89 + 8))(v70, v90);
  if (v71[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestIsOpen] == 1)
  {
    v71[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestIsOpen] = 0;
    v76 = v95;

    sub_100050E40(v94, v76, 1, v40, v94, v76, v43, v45, v47, v49, v63, v65, v67, v69);
  }

  else
  {
    v71[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestIsOpen] = 1;
    v77 = v88;
    v78 = [*(v88 + 24) identifier];
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v82 = [*(v77 + 16) identifier];
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    LODWORD(v82) = *(v77 + 32);
    v86 = v95;

    sub_1000500C8(v94, v86, v79, v81, v82, v83, v85, 1, v43, v45, v47, v49, v63, v65, v67, v69, v40, v94, v86);
  }
}

uint64_t sub_100059860(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD000000000000014, 0x8000000100093DA0, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100037B98(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s folder close presentation completed for identifier: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100059A44(char a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_100037B98(0xD000000000000014, 0x8000000100093DA0, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100037B98(a2, a3, &v15);
    *(v12 + 22) = 1024;
    *(v12 + 24) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s folder open presentation completed for identifier: %s success: %{BOOL}d", v12, 0x1Cu);
    swift_arrayDestroy();
  }

  return (*(v7 + 8))(v9, v6);
}

id sub_100059C3C()
{
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSize] = 0x4051000000000000;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView] = 0;
  v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isOpened] = 0;
  v1 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
  *&v0[v1] = sub_10007B7D8(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconTapTimer] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconPlaygroundContainerView] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconView] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_scrollSlider] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationOptionsContainerView] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_bounceSlider] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationsEnabledSwitch] = 0;
  v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationEnabled] = 1;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_rtlSwitch] = 0;
  v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_useRTLLayout] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSizeSlider] = 0;
  v2 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_recentsList;
  *&v0[v2] = [objc_opt_self() sharedList];
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_frameObserver] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_dockCenterXAnchor] = 0;
  v3 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_headerView;
  v4 = [objc_allocWithZone(type metadata accessor for DOCSBFolderCollectionHeaderViewBannerStyle()) initWithFrame:{0.0, 0.0, 608.0, 60.0}];
  v5 = &v4[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_actionTitle];
  *v5 = 0xD000000000000077;
  *(v5 + 1) = 0x8000000100093DE0;

  *&v0[v3] = v4;
  v6 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_headerContainerView;
  *&v0[v6] = [objc_allocWithZone(UIView) init];
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate____lazy_storage___easingFunctions] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_currentAnimationID] = 0;
  v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconViewIsOpen] = 0;
  v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isRunningAnimationStressTest] = 0;
  v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestIsOpen] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestCount] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestRepeatCount] = 12;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AppDebugSceneDelegate();
  return objc_msgSendSuper2(&v8, "init");
}

void sub_100059EB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100059F58(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

Class sub_10005A140(int a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v3 = result;
    v4 = [(objc_class *)result restorationIdentifier];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = sub_10005A1E8(v6, v8);

      return v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

Class sub_10005A1E8(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = [v3 supportedSortOrders];
  type metadata accessor for DOCSBFolderSortOrder();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v3 supportedDisplayModes];
  type metadata accessor for DOCSBFolderDisplayMode();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v95 = v2;
  v8 = *&v2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController];
  if (v8)
  {
    v9 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
    swift_beginAccess();
    v10 = *(v8 + v9);
    if (*(v10 + 16))
    {

      v11 = sub_100037A68(a1, a2);
      if (v12)
      {
        v13 = *(*(v10 + 56) + 8 * v11);

        v14 = v13[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
        if (v5 >> 62)
        {
          v15 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v93 = v7;
        v86 = v13;
        v85 = v14;
        if (v15)
        {
          aBlock[0] = _swiftEmptyArrayStorage;
          result = specialized ContiguousArray.reserveCapacity(_:)();
          if (v15 < 0)
          {
            __break(1u);
LABEL_51:
            __break(1u);
            return result;
          }

          v89 = objc_opt_self();
          v17 = 0;
          v87 = v5 & 0xC000000000000001;
          sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
          v91 = v5;
          do
          {
            if (v87)
            {
              v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v25 = *(v5 + 8 * v17 + 32);
            }

            v26 = v25;

            v27 = [v26 symbolName];
            if (!v27)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = String._bridgeToObjectiveC()();
            }

            ++v17;
            v18 = [v89 systemImageNamed:v27];

            v19 = [v26 localizedName];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v20 = swift_allocObject();
            v20[2] = v26;
            v20[3] = v95;
            v20[4] = a1;
            v20[5] = a2;
            v21 = v18;
            v22 = v26;
            v23 = v95;

            v78._rawValue = 0;
            v83 = sub_100060084;
            v84 = v20;
            v82 = 0;
            v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            [v24 setSubtitle:{0, 0}];

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v5 = v91;
          }

          while (v15 != v17);

          v29 = aBlock[0];
          v7 = v93;
          if (!(aBlock[0] >> 62))
          {
            goto LABEL_19;
          }
        }

        else
        {

          v29 = _swiftEmptyArrayStorage;
          if (!(_swiftEmptyArrayStorage >> 62))
          {
LABEL_19:

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
            v30 = v29;
            goto LABEL_20;
          }
        }

        sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);

        v30 = _bridgeCocoaArray<A>(_:)();

LABEL_20:

        sub_10001A2A8(0, &unk_1000BC480, UIMenu_ptr);
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        v100.value.super.isa = 0;
        v100.is_nil = 0;
        v88.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, 0, v100, 1, 0xFFFFFFFFFFFFFFFFLL, v30, v78).super.super.isa;
        if (v7 >> 62)
        {
          v32 = _CocoaArrayWrapper.endIndex.getter();
          if (v32)
          {
LABEL_22:
            aBlock[0] = _swiftEmptyArrayStorage;
            result = specialized ContiguousArray.reserveCapacity(_:)();
            if ((v32 & 0x8000000000000000) == 0)
            {
              v92 = objc_opt_self();
              v33 = 0;
              v90 = (v7 & 0xC000000000000001);
              sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
              if (v85)
              {
                v34 = 7233894;
              }

              else
              {
                v34 = 1684632167;
              }

              if (v85)
              {
                v35 = 0xE300000000000000;
              }

              else
              {
                v35 = 0xE400000000000000;
              }

              do
              {
                if (v90)
                {
                  v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v40 = *(v7 + 8 * v33 + 32);
                }

                v41 = v40;
                v42 = [v40 identifier];
                v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v45 = v44;

                if (v34 == v43 && v35 == v45)
                {

                  v48 = 1;
                }

                else
                {
                  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v48 = v47 & 1;
                }

                v49 = [v41 symbolName];
                if (!v49)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v49 = String._bridgeToObjectiveC()();
                }

                ++v33;
                v36 = [v92 systemImageNamed:v49];

                v37 = [v41 localizedName];
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                v38 = swift_allocObject();
                v38[2] = v41;
                v38[3] = v95;
                v38[4] = a1;
                v38[5] = a2;
                v39 = v95;

                preferredElementSize = UIMenuElementSizeSmall;
                v79.super.super.isa = 0;
                v83 = sub_1000600B0;
                v84 = v38;
                v82 = v48;
                UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v7 = v93;
              }

              while (v32 != v33);

              v50 = aBlock[0];
              if (!(aBlock[0] >> 62))
              {
                goto LABEL_42;
              }

              goto LABEL_49;
            }

            goto LABEL_51;
          }
        }

        else
        {
          v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v32)
          {
            goto LABEL_22;
          }
        }

        v50 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_42:

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
          v51 = v50;
LABEL_43:

          v52._countAndFlagsBits = 0;
          v52._object = 0xE000000000000000;
          v101.value.super.isa = 0;
          v101.is_nil = 0;
          isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v52, 0, v101, 1, 0xFFFFFFFFFFFFFFFFLL, v51, v79.super.super.isa).super.super.isa;
          v53 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_100060114;
          aBlock[5] = v53;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10005C0E4;
          aBlock[3] = &unk_1000AF778;
          v54 = _Block_copy(aBlock);
          v55 = objc_opt_self();

          v56 = [v55 elementWithProvider:v54];
          _Block_release(v54);

          sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_10008F940;
          *(v57 + 32) = v56;
          v58 = v56;
          v59._countAndFlagsBits = 0;
          v59._object = 0xE000000000000000;
          v102.value.super.isa = 0;
          v102.is_nil = 0;
          v60 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v59, 0, v102, 1, 0xFFFFFFFFFFFFFFFFLL, v57, v80).super.super.isa;
          sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
          v61 = String._bridgeToObjectiveC()();
          v62 = [objc_opt_self() imageNamed:v61];

          v63 = swift_allocObject();
          v63[2] = v95;
          v63[3] = a1;
          v63[4] = a2;
          v64 = v95;

          v65 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          v66 = swift_allocObject();
          *(v66 + 16) = xmmword_10008F940;
          *(v66 + 32) = v65;
          v67 = v65;
          v68._countAndFlagsBits = 0;
          v68._object = 0xE000000000000000;
          v103.value.super.isa = 0;
          v103.is_nil = 0;
          v69 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v68, 0, v103, 1, 0xFFFFFFFFFFFFFFFFLL, v66, 0).super.super.isa;
          v70 = swift_allocObject();
          *(v70 + 16) = xmmword_10008F920;
          *(v70 + 32) = v88;
          *(v70 + 40) = isa;
          *(v70 + 48) = v60;
          *(v70 + 56) = v69;
          v71 = v88.super.super.isa;
          v72 = isa;
          v73 = v60;
          v74 = v69;
          v75._countAndFlagsBits = 0;
          v75._object = 0xE000000000000000;
          v104.value.super.isa = 0;
          v104.is_nil = 0;
          v76 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v75, 0, v104, 1, 0xFFFFFFFFFFFFFFFFLL, v70, v81).super.super.isa;

          return v76;
        }

LABEL_49:
        sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);

        v51 = _bridgeCocoaArray<A>(_:)();

        goto LABEL_43;
      }
    }
  }

  sub_10001A2A8(0, &unk_1000BC480, UIMenu_ptr);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v99.value.super.isa = 0;
  v99.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v28, 0, v99, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v78).super.super.isa;
}

double sub_10005AE40()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100093B20, v20);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_1000064E0(v9);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v11 = *&v1[v10];
  if (v11 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v19 = v14;
      sub_10005D35C(&v19, v1);

      ++v13;
      if (v16 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return result;
}

double sub_10005B0FC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v12 = a1;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v36 = a3;
  v37 = a2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v35 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v8;
    v38[0] = v19;
    *v17 = 136315650;
    *(v17 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093C90, v38);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v12;
    *v18 = v12;
    *(v17 + 22) = 2080;
    v20 = v12;
    *(v17 + 24) = sub_100037B98(a2, a3, v38);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s order: %@ identifier: %s", v17, 0x20u);
    sub_100006390(v18, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v4 = v35;

    (*(v9 + 8))(v11, v34);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v21 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
  swift_beginAccess();
  v23 = *(v4 + v21);
  if (*(v23 + 16))
  {

    v25 = v36;
    v24 = v37;
    v26 = sub_100037A68(v37, v36);
    if (v27)
    {
      v28 = *(*(v23 + 56) + 8 * v26);

      sub_10001A2A8(0, &unk_1000BCA70, NSObject_ptr);
      v29 = *(v28 + 24);
      v30 = static NSObject.== infix(_:_:)();

      if (v30)
      {
        *(v28 + 32) = (*(v28 + 32) & 1) == 0;
      }

      else
      {
        v31 = *(v28 + 24);
        *(v28 + 24) = v12;
        v32 = v12;
      }

      sub_10005736C(v24, v25, v28);
    }

    else
    {
    }
  }

  return result;
}

double sub_10005B448(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v12 = a1;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v32 = a2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v31 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v8;
    v33[0] = v19;
    *v17 = 136315650;
    *(v17 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100093C60, v33);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v12;
    *v18 = v12;
    *(v17 + 22) = 2080;
    v20 = v12;
    *(v17 + 24) = sub_100037B98(a2, a3, v33);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s mode: %@ identifier: %s", v17, 0x20u);
    sub_100006390(v18, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v4 = v31;

    (*(v9 + 8))(v11, v30);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v21 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
  swift_beginAccess();
  v23 = *(v4 + v21);
  if (*(v23 + 16))
  {

    v24 = v32;
    v25 = sub_100037A68(v32, a3);
    if (v26)
    {
      v27 = *(*(v23 + 56) + 8 * v25);

      v28 = *(v27 + 16);
      *(v27 + 16) = v12;
      v29 = v12;

      sub_10005736C(v24, a3, v27);
    }

    else
    {
    }
  }

  return result;
}

void sub_10005B744(void (*a1)(void *), uint64_t a2, uint64_t a3, __n128 a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_recentsList);
    v9 = String._bridgeToObjectiveC()();
    v10 = swift_allocObject();
    v10[2] = v7;
    v10[3] = 0xD000000000000016;
    v10[4] = 0x80000001000928F0;
    v10[5] = a1;
    v10[6] = a2;
    aBlock[4] = sub_100060210;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005C070;
    aBlock[3] = &unk_1000AF818;
    v11 = _Block_copy(aBlock);
    v12 = v7;

    [v8 recentsForBundleIdentifier:v9 maxCount:5 completion:v11];
    _Block_release(v11);
  }

  else
  {
    a1(_swiftEmptyArrayStorage);
  }
}

void sub_10005B8D4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void, __n128), __n128 a6)
{
  v9 = a1;
  if (a1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v10 < 0)
    {
      __break(1u);
      return;
    }

    sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
    v11 = 0;
    v26 = v9 & 0xC000000000000001;
    v27 = objc_opt_self();
    v12 = v9;
    do
    {
      if (v26)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      ++v11;
      v15 = [v13 name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = String._bridgeToObjectiveC()();
      v17 = [v27 systemImageNamed:v16];

      v18 = swift_allocObject();
      v18[2] = v14;
      v18[3] = a2;
      v18[4] = a3;
      v18[5] = a4;
      v19 = a2;

      v21 = 0;
      v22 = 0;
      v24 = sub_100060270;
      v25 = v18;
      v23 = 0;
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 = v12;
    }

    while (v10 != v11);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);

    v20 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
    v20 = _swiftEmptyArrayStorage;
  }

  (a5)(v20);
}

void sub_10005BBB4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a2;
  v13[4] = sub_1000602C4;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10005BF38;
  v13[3] = &unk_1000AF890;
  v10 = _Block_copy(v13);
  v11 = a3;

  v12 = a2;

  [v12 fetchURL:v10];
  _Block_release(v10);
}

void sub_10005BCB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005FF58(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100006390(v11, &unk_1000BCA20, &qword_100090BC0);
    sub_10000589C(&unk_1000BCA60, &qword_1000905C8);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10008F930;
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v24 = 0xD00000000000001BLL;
    v25 = 0x8000000100093C20;
    v17 = [a5 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22 = v24;
    v23 = v25;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = v22;
    *(v16 + 40) = v23;
    print(_:separator:terminator:)();
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_100061CF8(v15, a3, a4);
    (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_10005BF38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  v7(v6);

  return sub_100006390(v6, &unk_1000BCA20, &qword_100090BC0);
}

double sub_10005C070(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for DOCSBRecentItem();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);

  return result;
}

double sub_10005C0E4(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1000601C0, v4);

  return result;
}

void sub_10005C178(uint64_t a1, uint64_t a2)
{
  sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

double sub_10005C1F4(void (*a1)(char *, char *), unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100093B70, &v18);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100037B98(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s identifier: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v9, v6);
  v14 = *&v3[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController];
  if (v14)
  {

    v15 = v3;
    v16 = v14;
    sub_100051A0C(a1, a2, v16, v15, a1, a2);
  }

  return result;
}

void sub_10005C430(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100093AC0, &v12);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100037B98(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s identifier: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v7, v4);
  sub_100056B60(a1, a2);
}

double sub_10005C628(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100037B98(0xD00000000000002CLL, 0x8000000100093AF0, &v13);
    *(v7 + 12) = 2080;
    v8 = Array.description.getter();
    v10 = sub_100037B98(v8, v9, &v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s dismissing identifiers: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  (*(v2 + 8))(v4, v1);
  return sub_10005AE40();
}

void sub_10005C82C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v44 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  static Logger.UI.getter();

  sub_100041D18(a5, a6);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  sub_100041D80(a5, a6);
  v19 = os_log_type_enabled(v17, v18);
  v46 = a4;
  v47 = a3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v41 = v12;
    v21 = v20;
    v22 = swift_slowAlloc();
    v45 = a6;
    v49 = v22;
    *v21 = 136315906;
    *(v21 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100093A50, &v49);
    v42 = v11;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_100037B98(v44, a2, &v49);
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_100037B98(a3, a4, &v49);
    *(v21 + 32) = 2080;
    v23 = Data.description.getter();
    v25 = sub_100037B98(v23, v24, &v49);

    *(v21 + 34) = v25;
    v11 = v42;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s contextID: %s folderID: %s imageData: %s", v21, 0x2Au);
    swift_arrayDestroy();

    v12 = v41;
  }

  v26 = *(v12 + 8);
  v26(v16, v11);
  v27 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v29 = [v27 initWithData:isa];

  if (v29)
  {
    v30 = swift_allocObject();
    v31 = v47;
    v32 = v48;
    v30[2] = v48;
    v30[3] = v31;
    v30[4] = v46;
    v30[5] = v29;

    v33 = v32;
    v34 = v29;
    DOCRunInMainThread(_:)();
  }

  else
  {
    v35 = v43;
    static Logger.UI.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100093A50, &v49);
      _os_log_impl(&_mh_execute_header, v36, v37, "%s ERROR image was nil", v38, 0xCu);
      sub_1000064E0(v39);
    }

    v26(v35, v11);
  }
}

void sub_10005CC74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = a4;
  v43 = a2;
  v44 = a3;
  v5 = type metadata accessor for Logger();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v8 = *(a1 + v7);
  if (v8 >> 62)
  {
LABEL_27:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
LABEL_18:

    return;
  }

  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v14 = [v11 restorationIdentifier];
    if (!v14)
    {
      goto LABEL_5;
    }

    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v16 == v43 && v18 == v44)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_20;
    }

LABEL_5:

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_18;
    }
  }

LABEL_20:

  v21 = v42;
  static Logger.UI.getter();
  v22 = v12;
  v23 = v39;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    *v26 = 136315650;
    *(v26 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100093A50, &v45);
    *(v26 + 12) = 2080;
    v27 = v22;
    v28 = [v27 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_100037B98(v29, v31, &v45);

    *(v26 + 14) = v32;
    *(v26 + 22) = 2080;
    v33 = v23;
    v34 = [v33 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_100037B98(v35, v37, &v45);

    *(v26 + 24) = v38;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s updating faux icon view: %s with image: %s", v26, 0x20u);
    swift_arrayDestroy();

    (*(v40 + 8))(v42, v41);
  }

  else
  {

    (*(v40 + 8))(v21, v41);
  }

  [v22 setImage:v23];
}

double sub_10005D070(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v25 = a3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v17 = a4;
    static Logger.UI.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100093B70, &v26);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_100037B98(v17, a5, &v26);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s FAILED identifier: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_100041D18(a1, a2);
    UUID.init()();
    v22 = UUID.uuidString.getter();
    v24 = v23;
    (*(v14 + 8))(v16, v13);
    sub_10005C82C(v22, v24, a4, a5, a1, a2);
    sub_100041D6C(a1, a2);
  }

  return result;
}

void sub_10005D35C(id *a1, _BYTE *a2)
{
  v69 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [*a1 restorationIdentifier];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  static Logger.UI.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v68 = v12;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v66 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v67 = v14;
    v70 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100093B20, &v70);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_100037B98(v12, v67, &v70);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s dismissing identifier: %s", v19, 0x16u);
    swift_arrayDestroy();
    v14 = v67;
  }

  (*(v5 + 8))(v8, v4);
  [v9 bounds];
  v25 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController;
  v26 = v69;
  v27 = *&v69[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController];
  if (!v27)
  {
    __break(1u);
    goto LABEL_12;
  }

  v28 = v21;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = [v27 view];
  [v9 convertRect:v32 toView:{v28, v29, v30, v31}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = *&v26[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView];
  if (!v41)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v42 = v26;
  v43 = v41;
  [v43 bounds];
  v48 = *&v42[v25];
  if (!v48)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v49 = v44;
  v50 = v45;
  v51 = v46;
  v52 = v47;
  v53 = [v48 view];
  [v43 convertRect:v53 toView:{v49, v50, v51, v52}];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  v62 = *&v42[v25];
  if (v62)
  {
    v63 = v42[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationEnabled];
    v64 = v42;
    v65 = v62;
    sub_10004E3F0(v68, v14, v63, v65, v64, v34, v36, v38, v40, v55, v57, v59, v61);
  }
}

double sub_10005D744(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v52 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Notification.userInfo.getter();
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  *&v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v56 + 1) = v13;
  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v14 = sub_10004E030(&v54), (v15 & 1) == 0))
  {

    sub_1000519B8(&v54);
LABEL_12:
    v56 = 0u;
    v57 = 0u;
    goto LABEL_13;
  }

  sub_100041480(*(v12 + 56) + 32 * v14, &v56);
  sub_1000519B8(&v54);

  if (!*(&v57 + 1))
  {
LABEL_13:
    sub_100006390(&v56, &qword_1000BCA30, &unk_100090E80);
    v51 = 0;
    v53 = 0;
    goto LABEL_14;
  }

  v16 = swift_dynamicCast();
  v17 = v54;
  if (!v16)
  {
    v17 = 0;
  }

  v51 = v17;
  if (v16)
  {
    v18 = v55;
  }

  else
  {
    v18 = 0;
  }

  v53 = v18;
LABEL_14:
  v19 = Notification.userInfo.getter();
  if (!v19)
  {
LABEL_24:
    v56 = 0u;
    v57 = 0u;
    goto LABEL_25;
  }

  v20 = v19;
  *&v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v56 + 1) = v21;
  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v22 = sub_10004E030(&v54), (v23 & 1) == 0))
  {

    sub_1000519B8(&v54);
    goto LABEL_24;
  }

  sub_100041480(*(v20 + 56) + 32 * v22, &v56);
  sub_1000519B8(&v54);

  if (!*(&v57 + 1))
  {
LABEL_25:
    sub_100006390(&v56, &qword_1000BCA30, &unk_100090E80);
    v50 = 0;
    v26 = 0;
    goto LABEL_26;
  }

  v24 = swift_dynamicCast();
  v25 = v54;
  if (!v24)
  {
    v25 = 0;
  }

  v50 = v25;
  if (v24)
  {
    v26 = v55;
  }

  else
  {
    v26 = 0;
  }

LABEL_26:
  static Logger.UI.getter();
  (*(v5 + 16))(v7, a1, v4);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v27, v28))
  {

    (*(v5 + 8))(v7, v4);
    (*(v52 + 8))(v10, v8);
    v44 = v53;
    if (!v53)
    {
      return result;
    }

    goto LABEL_30;
  }

  v29 = swift_slowAlloc();
  v49 = v2;
  v30 = v29;
  v47 = swift_slowAlloc();
  v48 = v8;
  *&v56 = v47;
  *v30 = 136315906;
  *(v30 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100093B50, &v56);
  *(v30 + 12) = 2080;
  sub_10005FFD8(&unk_1000BCA38, &type metadata accessor for Notification, &protocol conformance descriptor for Notification);
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v46 = v10;
  v32 = v52;
  v34 = v33;
  (*(v5 + 8))(v7, v4);
  v35 = sub_100037B98(v31, v34, &v56);

  *(v30 + 14) = v35;
  *(v30 + 22) = 2080;
  v36 = v50;
  v54 = v50;
  v55 = v26;

  sub_10000589C(&qword_1000BBCF0, "0T");
  v37 = String.init<A>(describing:)();
  v39 = sub_100037B98(v37, v38, &v56);

  *(v30 + 24) = v39;
  *(v30 + 32) = 2080;
  v54 = v36;
  v55 = v26;
  v40 = String.init<A>(describing:)();
  v42 = sub_100037B98(v40, v41, &v56);

  *(v30 + 34) = v42;
  _os_log_impl(&_mh_execute_header, v27, v28, "%s notification: %s url: %s identifier: %s", v30, 0x2Au);
  swift_arrayDestroy();

  (*(v32 + 8))(v46, v48);
  v44 = v53;
  if (v53)
  {
LABEL_30:
    sub_10005C1F4(v51, v44);
  }

  return result;
}

id sub_10005DE20(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_10005DE70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_10005DF00(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10001A430(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v5 = v2 + 32;
  v25[0] = v2 + 32;
  v25[1] = v4;
  v6 = _minimumMergeRunLength(_:)(v4);
  if (v6 >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = v5;
      do
      {
        v13 = *(v5 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = (v13 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
          v17 = *v16;
          v18 = v16[1];
          v19 = (*v15 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
          if (v17 == *v19 && v18 == v19[1])
          {
            break;
          }

          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v21 = *v15;
          v13 = v15[1];
          *v15 = v13;
          v15[1] = v21;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v7 = v6;
    v8 = (v4 >> 1);
    if (v4 >= 2)
    {
      type metadata accessor for DOCSBFolderPresentationController(0);
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v24[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
    v24[1] = v8;
    sub_10005E094(v24, v26, v25, v7);
    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

void sub_10005E094(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_152;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v9 = *a3;
      v10 = (*(*a3 + 8 * v8) + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
      v11 = *v10;
      v12 = v10[1];
      v13 = (*(*a3 + 8 * v6) + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
      v14 = v11 == *v13 && v12 == v13[1];
      if (v14)
      {
        v4 = 0;
      }

      else
      {
        v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v8 = v6 + 2;
      if (v6 + 2 < v5)
      {
        v15 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier;
        v16 = (v9 + 8 * v6 + 16);
        do
        {
          v17 = (*v16 + v15);
          v18 = *v17;
          v19 = v17[1];
          v20 = (*(v16 - 1) + v15);
          if (v18 == *v20 && v19 == v20[1])
          {
            if (v4)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if ((v4 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
            {
              goto LABEL_22;
            }

            v15 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier;
          }

          ++v8;
          ++v16;
        }

        while (v5 != v8);
        v8 = v5;
      }

LABEL_22:
      if (v4)
      {
LABEL_23:
        if (v8 < v6)
        {
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        if (v6 < v8)
        {
          v22 = 8 * v8 - 8;
          v23 = 8 * v6;
          v24 = v8;
          v25 = v6;
          do
          {
            if (v25 != --v24)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_187;
              }

              v26 = *(v27 + v23);
              *(v27 + v23) = *(v27 + v22);
              *(v27 + v22) = v26;
            }

            ++v25;
            v22 -= 8;
            v23 += 8;
          }

          while (v25 < v24);
        }
      }
    }

    v28 = a3[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v6))
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          v7 = sub_10000F704(v7);
LABEL_154:
          v109 = *(v7 + 2);
          if (v109 < 2)
          {
LABEL_162:

            return;
          }

          while (*a3)
          {
            v110 = *&v7[16 * v109];
            v111 = *&v7[16 * v109 + 24];
            sub_10005E8E0((*a3 + 8 * v110), (*a3 + 8 * *&v7[16 * v109 + 16]), (*a3 + 8 * v111), v4);
            if (v115)
            {
              goto LABEL_162;
            }

            if (v111 < v110)
            {
              goto LABEL_178;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_10000F704(v7);
            }

            if (v109 - 2 >= *(v7 + 2))
            {
              goto LABEL_179;
            }

            v112 = &v7[16 * v109];
            *v112 = v110;
            *(v112 + 1) = v111;
            sub_10000F678(v109 - 1);
            v109 = *(v7 + 2);
            if (v109 <= 1)
            {
              goto LABEL_162;
            }
          }

LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

        if (v6 + a4 >= v28)
        {
          v29 = a3[1];
        }

        else
        {
          v29 = v6 + a4;
        }

        if (v29 < v6)
        {
          goto LABEL_183;
        }

        if (v8 != v29)
        {
          v30 = *a3;
          v31 = *a3 + 8 * v8 - 8;
          v4 = v6 - v8;
          do
          {
            v32 = *(v30 + 8 * v8);
            v33 = v4;
            v34 = v31;
            do
            {
              v35 = (v32 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
              v36 = *v35;
              v37 = v35[1];
              v38 = (*v34 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
              v39 = v36 == *v38 && v37 == v38[1];
              if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                break;
              }

              if (!v30)
              {
                goto LABEL_184;
              }

              v40 = *v34;
              v32 = v34[1];
              *v34 = v32;
              v34[1] = v40;
              --v34;
            }

            while (!__CFADD__(v33++, 1));
            ++v8;
            v31 += 8;
            --v4;
          }

          while (v8 != v29);
          v8 = v29;
        }
      }
    }

    if (v8 < v6)
    {
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v116 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10000D8A0(0, *(v7 + 2) + 1, 1, v7);
    }

    v43 = *(v7 + 2);
    v42 = *(v7 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      v7 = sub_10000D8A0((v42 > 1), v43 + 1, 1, v7);
    }

    *(v7 + 2) = v44;
    v45 = &v7[16 * v43];
    *(v45 + 4) = v6;
    *(v45 + 5) = v116;
    if (!*a1)
    {
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (!v43)
    {
      goto LABEL_3;
    }

    __dst = *a1;
    do
    {
      v46 = v44 - 1;
      if (v44 >= 4)
      {
        v51 = &v7[16 * v44 + 32];
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_166;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_167;
        }

        v58 = &v7[16 * v44];
        v60 = *v58;
        v59 = *(v58 + 1);
        v57 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v57)
        {
          goto LABEL_169;
        }

        v57 = __OFADD__(v49, v61);
        v62 = v49 + v61;
        if (v57)
        {
          goto LABEL_172;
        }

        if (v62 >= v54)
        {
          v80 = &v7[16 * v46 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v57 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v57)
          {
            goto LABEL_176;
          }

          if (v49 < v83)
          {
            v46 = v44 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

      if (v44 == 3)
      {
        v47 = *(v7 + 4);
        v48 = *(v7 + 5);
        v57 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        v50 = v57;
LABEL_74:
        if (v50)
        {
          goto LABEL_168;
        }

        v63 = &v7[16 * v44];
        v65 = *v63;
        v64 = *(v63 + 1);
        v66 = __OFSUB__(v64, v65);
        v67 = v64 - v65;
        v68 = v66;
        if (v66)
        {
          goto LABEL_171;
        }

        v69 = &v7[16 * v46 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v57 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v57)
        {
          goto LABEL_174;
        }

        if (__OFADD__(v67, v72))
        {
          goto LABEL_175;
        }

        if (v67 + v72 >= v49)
        {
          if (v49 < v72)
          {
            v46 = v44 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_88;
      }

      v73 = &v7[16 * v44];
      v75 = *v73;
      v74 = *(v73 + 1);
      v57 = __OFSUB__(v74, v75);
      v67 = v74 - v75;
      v68 = v57;
LABEL_88:
      if (v68)
      {
        goto LABEL_170;
      }

      v76 = &v7[16 * v46];
      v78 = *(v76 + 4);
      v77 = *(v76 + 5);
      v57 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v57)
      {
        goto LABEL_173;
      }

      if (v79 < v67)
      {
        break;
      }

LABEL_95:
      if (v46 - 1 >= v44)
      {
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      v84 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v123 = v7;
      v119 = v46 - 1;
      v120 = v46;
      v85 = *&v7[16 * v46 + 32];
      v86 = *&v7[16 * v46 + 40];
      v121 = *&v7[16 * v46 + 16];
      v122 = v86;
      v87 = (v84 + 8 * v121);
      v88 = 8 * v85;
      v7 = (v84 + 8 * v85);
      v89 = 8 * v86;
      v90 = (v84 + 8 * v86);
      v91 = 8 * v85 - 8 * v121;
      v92 = 8 * v86 - 8 * v85;
      if (v91 >= v92)
      {
        if (v7 != __dst || v90 <= __dst)
        {
          memmove(__dst, (v84 + 8 * v85), 8 * v86 - 8 * v85);
        }

        v93 = &__dst[v92];
        if (v92 >= 1 && v88 > 8 * v121)
        {
          v95 = v121;
          while (1)
          {
            v4 = (v7 - 8);
            v90 -= 8;
            v102 = v93;
            while (1)
            {
              v103 = *(v102 - 1);
              v102 -= 8;
              v104 = *(v103 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);
              v105 = (*v4 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
              v106 = *(v103 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier) == *v105 && v104 == v105[1];
              if (!v106 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              if (v90 + 8 != v93)
              {
                *v90 = *v102;
              }

              v90 -= 8;
              v93 = v102;
              if (v102 <= __dst)
              {
                v93 = v102;
                v94 = __dst;
                v4 = v7;
                goto LABEL_141;
              }
            }

            if (v90 + 8 != v7)
            {
              *v90 = *v4;
            }

            if (v93 <= __dst)
            {
              v94 = __dst;
              goto LABEL_141;
            }

            v94 = __dst;
            v7 -= 8;
            if (v87 >= v4)
            {
              goto LABEL_141;
            }
          }
        }

        v94 = __dst;
        v4 = v7;
        goto LABEL_139;
      }

      if (v87 != __dst || v7 <= __dst)
      {
        memmove(__dst, (v84 + 8 * v121), 8 * v85 - 8 * v121);
      }

      v93 = &__dst[v91];
      if (v91 < 1 || v89 <= v88)
      {
        v94 = __dst;
        v4 = v87;
LABEL_139:
        v95 = v121;
        goto LABEL_141;
      }

      v94 = __dst;
      v95 = v121;
      do
      {
        v96 = (*v7 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
        v97 = *v96;
        v98 = v96[1];
        v99 = (*v94 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
        v100 = v97 == *v99 && v98 == v99[1];
        if (!v100 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v101 = v7;
          v14 = v87 == v7;
          v7 += 8;
          if (v14)
          {
            goto LABEL_114;
          }

LABEL_113:
          *v87 = *v101;
          goto LABEL_114;
        }

        v101 = v94;
        v14 = v87 == v94;
        v94 += 8;
        if (!v14)
        {
          goto LABEL_113;
        }

LABEL_114:
        v87 += 8;
      }

      while (v94 < v93 && v7 < v90);
      v4 = v87;
LABEL_141:
      if (v4 != v94 || v4 >= &v94[(v93 - v94 + (v93 - v94 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v4, v94, 8 * ((v93 - v94) / 8));
      }

      v107 = v123;
      if (v122 < v95)
      {
        goto LABEL_164;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_10000F704(v123);
      }

      if (v120 > *(v107 + 2))
      {
        goto LABEL_165;
      }

      v108 = &v107[16 * v119];
      *(v108 + 4) = v95;
      *(v108 + 5) = v122;
      sub_10000F678(v120);
      v7 = v107;
      v44 = *(v107 + 2);
    }

    while (v44 > 1);
LABEL_3:
    v6 = v116;
    v5 = a3[1];
    if (v116 < v5)
    {
      continue;
    }

    break;
  }

LABEL_152:
  v4 = *a1;
  if (*a1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_154;
    }

    goto LABEL_185;
  }

LABEL_190:
  __break(1u);
}

uint64_t sub_10005E8E0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_29:
      v21 = v6 - 8;
      v5 -= 8;
      v22 = v14;
      do
      {
        v23 = *(v22 - 1);
        v22 -= 8;
        v24 = *(v23 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);
        v25 = (*v21 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
        v26 = *(v23 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier) == *v25 && v24 == v25[1];
        if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v5 + 8 != v6)
          {
            *v5 = *v21;
          }

          if (v14 <= v4 || (v6 -= 8, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
      }

      while (v22 > v4);
      v14 = v22;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = (*v6 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*v4 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
        v19 = v16 == *v18 && v17 == v18[1];
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        v20 = v6;
        v19 = v7 == v6;
        v6 += 8;
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v20 = v4;
      v19 = v7 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = *v20;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
  }

LABEL_44:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

void sub_10005EB48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000589C(&unk_1000BCAD0, &unk_100091020);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10005EDEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000589C(&qword_1000BCAC0, &qword_100091010);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10005F094(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100037A68(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10005EB48(v16, a4 & 1);
      v11 = sub_100037A68(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10005F388();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_10005F20C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100037A68(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10005EDEC(v16, a4 & 1);
      v11 = sub_100037A68(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10005F4F4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_10005F388()
{
  v1 = v0;
  sub_10000589C(&unk_1000BCAD0, &unk_100091020);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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
}

void sub_10005F4F4()
{
  v1 = v0;
  sub_10000589C(&qword_1000BCAC0, &qword_100091010);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
}

uint64_t sub_10005F664(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v28 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  (*(v9 + 16))(v11, a5, v8);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v12;
    v18 = v17;
    v24 = swift_slowAlloc();
    v29 = v24;
    *v18 = 136315906;
    *(v18 + 4) = sub_100037B98(0xD00000000000002DLL, 0x8000000100093A90, &v29);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100037B98(v26, a2, &v29);
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_100037B98(v27, a4, &v29);
    *(v18 + 32) = 2080;
    sub_10005FFD8(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    v22 = sub_100037B98(v19, v21, &v29);

    *(v18 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s contextID: %s folderID: %s contextID: %s", v18, 0x2Au);
    swift_arrayDestroy();

    return (*(v28 + 8))(v14, v25);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    return (*(v28 + 8))(v14, v12);
  }
}

uint64_t sub_10005F9D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v28 = a1;
  v29 = a3;
  v30 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v30);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  sub_10005FF58(a5, v12);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v14;
    v20 = v19;
    v31 = swift_slowAlloc();
    *v20 = 136315906;
    *(v20 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100093A10, &v31);
    v26 = v13;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_100037B98(v28, a2, &v31);
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_100037B98(v29, a4, &v31);
    *(v20 + 32) = 2080;
    sub_10005FF58(v12, v9);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_100006390(v12, &unk_1000BCA20, &qword_100090BC0);
    v24 = sub_100037B98(v21, v23, &v31);

    *(v20 + 34) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s contextID: %s folderID: %s url: %s", v20, 0x2Au);
    swift_arrayDestroy();

    return (*(v27 + 8))(v16, v26);
  }

  else
  {

    sub_100006390(v12, &unk_1000BCA20, &qword_100090BC0);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_10005FD0C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v20 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v21 = a5;
    v23 = v18;
    *v17 = 136315906;
    *(v17 + 4) = sub_100037B98(0xD000000000000046, 0x80000001000939C0, &v23);
    v22 = v10;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_100037B98(v20, a2, &v23);
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_100037B98(a3, a4, &v23);
    *(v17 + 32) = 1024;
    *(v17 + 34) = v21 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s contextID: %s folderID: %s animationExpanded: %{BOOL}d", v17, 0x26u);
    swift_arrayDestroy();

    return (*(v11 + 8))(v13, v22);
  }

  else
  {

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10005FF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005FFD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100060020()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100060068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000600DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006011C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100060188()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000601C8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100060228()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006027C()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1000602D0()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  v5 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v5 format:{0.0, 0.0, v2, v4}];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100062288;
  *(v8 + 24) = v7;
  v10[4] = sub_10000634C;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100074FCC;
  v10[3] = &unk_1000AF9F8;
  v9 = _Block_copy(v10);

  [v6 imageWithActions:v9];

  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

void sub_1000604C4(uint64_t a1, uint64_t a2, char a3, char *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setOn:a3 & 1];
  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [objc_allocWithZone(UILabel) init];
  v15 = [objc_opt_self() labelColor];
  [v14 setTextColor:v15];

  v16 = String._bridgeToObjectiveC()();
  [v14 setText:v16];

  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10008F960;
  *(v17 + 32) = v14;
  *(v17 + 40) = v13;
  v18 = objc_allocWithZone(UIStackView);
  sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  v19 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v18 initWithArrangedSubviews:isa];

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = *&a4[*a6];
  *&a4[*a6] = v13;
  v23 = v13;

  sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  v25 = a4;
  v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v23 addAction:v26 forControlEvents:{4096, 0, 0, 0, a8, v24}];

  v28 = v21;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_1000607BC(void *a1)
{
  v2 = v1;
  v4 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v4 - 8);
  v125 = &v112 - v5;
  v124 = type metadata accessor for URL();
  v6 = *(v124 - 8);
  __chkstk_darwin(v124);
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v112 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v128 = &v112 - v17;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v120 = v13;
    v122 = v11;
    v121 = v8;
    v20 = objc_allocWithZone(UIViewController);
    v123 = a1;
    v21 = [v20 init];
    v22 = [objc_allocWithZone(UIWindow) initWithWindowScene:v19];
    v23 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window;
    v24 = *&v2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window];
    *&v2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window] = v22;
    v25 = v22;

    v26 = v21;
    v127 = v25;
    [v25 setRootViewController:v26];
    type metadata accessor for DOCSBSceneRootViewController();
    v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v28 = *&v2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController];
    v119 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController;
    *&v2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController] = v27;
    v116 = v27;
    v29 = v27;

    v30 = v26;
    *&v29[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate + 8] = &off_1000AF628;
    swift_unknownObjectWeakAssign();
    v31 = v29;
    [v30 addChildViewController:v31];
    v32 = [v31 view];
    if (v32)
    {
      v33 = v32;
      v115 = v23;
      v34 = [v30 view];
      if (v34)
      {
        v35 = v34;
        p_type = &stru_1000B6FF0.type;
        [v34 bounds];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;

        [v33 setFrame:{v38, v40, v42, v44}];
        v45 = [v30 view];
        if (v45)
        {
          v46 = v45;
          v117 = v12;
          v118 = v6;
          v47 = [v31 view];

          if (v47)
          {
            [v46 addSubview:v47];

            [v31 didMoveToParentViewController:v30];
            v126 = v30;

            v48 = v128;
            static Logger.Application.getter();
            v49 = v123;
            v50 = v31;
            v51 = v2;
            v52 = Logger.logObject.getter();
            v53 = static os_log_type_t.debug.getter();

            v123 = v49;
            if (os_log_type_enabled(v52, v53))
            {
              v114 = v50;
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v129[0] = v113;
              *v54 = 136316162;
              *(v54 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100093F30, v129);
              *(v54 + 12) = 2080;
              v56 = [v19 session];
              v57 = [v56 persistentIdentifier];

              v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v60 = v59;

              v61 = sub_100037B98(v58, v60, v129);

              *(v54 + 14) = v61;
              *(v54 + 22) = 2112;
              *(v54 + 24) = v19;
              *v55 = v19;
              *(v54 + 32) = 2112;
              v62 = *&v2[v115];
              if (!v62)
              {
LABEL_30:

                __break(1u);
                return;
              }

              v63 = v123;
              v64 = v62;
              v50 = v114;

              *(v54 + 34) = v64;
              *(v54 + 42) = 2112;
              *(v54 + 44) = v50;
              v65 = v116;
              v55[1] = v62;
              v55[2] = v65;
              v66 = v50;
              _os_log_impl(&_mh_execute_header, v52, v53, "%s: sceneIdentifier: %s scene: %@, window: %@, doc vc: %@", v54, 0x34u);
              sub_10000589C(&qword_1000BC328, &qword_100090AD0);
              swift_arrayDestroy();

              swift_arrayDestroy();

              (*(v120 + 8))(v128, v117);
              v67 = v121;
              p_type = (&stru_1000B6FF0 + 16);
            }

            else
            {

              (*(v120 + 8))(v48, v117);
              v67 = v121;
            }

            [v127 makeKeyAndVisible];
            v76 = v126;
            v77 = [v126 view];
            v78 = v118;
            if (v77)
            {
              v79 = v77;
              [v77 p_type[352]];
              v81 = v80;
              v83 = v82;
              v85 = v84;
              v87 = v86;

              v88 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame:{v81, v83, v85, v87}];
              [v88 setUserInteractionEnabled:0];
              [v88 setAutoresizingMask:18];
              v89 = [v76 view];
              if (v89)
              {
                v90 = v89;
                [v89 insertSubview:v88 atIndex:0];

                sub_1000546F8(v50);
                [*&v51[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_recentsList] startObserving];
                v91 = *&v2[v119];
                if (!v91)
                {
LABEL_22:
                  v109 = v127;
                  v129[0] = v127;
                  swift_getKeyPath();
                  swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v110 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

                  v111 = *&v51[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_frameObserver];
                  *&v51[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_frameObserver] = v110;

                  return;
                }

                v128 = v88;
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v92 = v91;
                URL.init(fileURLWithPath:)();

                URL.init(fileURLWithPath:)();
                v93 = [objc_opt_self() defaultManager];
                v94 = String._bridgeToObjectiveC()();
                [v93 fileExistsAtPath:v94 isDirectory:0];

                v95 = v124;
                v96 = v125;
                (*(v78 + 16))(v125, v67, v124);
                (*(v78 + 56))(v96, 0, 1, v95);
                sub_10000589C(&qword_1000BBDC0, &qword_100090E90);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_100090DF0;
                if (qword_1000BB700 != -1)
                {
                  swift_once();
                }

                v98 = v50;
                v99 = qword_1000BF120;
                *(inited + 32) = qword_1000BF118;
                *(inited + 40) = v99;
                v100 = qword_1000BB708;

                if (v100 != -1)
                {
                  swift_once();
                }

                v101 = qword_1000BF130;
                *(inited + 48) = qword_1000BF128;
                *(inited + 56) = v101;
                __chkstk_darwin(v101);
                v102 = v125;
                v103 = v122;
                *(&v112 - 6) = v125;
                *(&v112 - 5) = v103;
                *(&v112 - 4) = v67;
                *(&v112 - 3) = v92;
                *(&v112 - 2) = v51;

                sub_100064DDC(sub_100062254, (&v112 - 8), inited);
                swift_setDeallocating();
                swift_arrayDestroy();
                sub_100006390(v102, &unk_1000BCA20, &qword_100090BC0);
                v104 = *&v51[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView];
                if (v104)
                {
                  v105 = v104;
                  sub_100054C40(v105, v106);

                  v50 = v98;
                  sub_1000550A8(v98);

                  v107 = *(v78 + 8);
                  v108 = v124;
                  v107(v67, v124);
                  v107(v103, v108);
                  v88 = v128;
                  goto LABEL_22;
                }

                goto LABEL_29;
              }

LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  static Logger.Application.getter();
  v68 = a1;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v129[0] = v72;
    *v71 = 136315138;
    swift_getObjectType();
    v73 = _typeName(_:qualified:)();
    v75 = sub_100037B98(v73, v74, v129);

    *(v71 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v69, v70, "Denying creation of browser window / scene.  Unexpected scene type received: %s)", v71, 0xCu);
    sub_1000064E0(v72);
  }

  (*(v13 + 8))(v15, v12);
}

uint64_t sub_100061428(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD000000000000018, 0x8000000100093EC0, &v19);
    *(v10 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100037B98(v13, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s scene: %s", v10, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v5, v18);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_10006165C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100093EA0, &v19);
    *(v10 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100037B98(v13, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s scene: %s", v10, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v5, v18);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100061890(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD00000000000001CLL, 0x8000000100093E80, &v19);
    *(v10 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100037B98(v13, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s scene: %s", v10, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v5, v18);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100061AC4(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093E60, &v19);
    *(v10 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100037B98(v13, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s scene: %s", v10, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v5, v18);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100061CF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  (*(v6 + 16))(v8, a1, v5);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = a3;
    v16 = v15;
    v25 = swift_slowAlloc();
    v27 = v25;
    *v16 = 136315650;
    *(v16 + 4) = sub_100037B98(0xD00000000000001ALL, 0x8000000100093C40, &v27);
    *(v16 + 12) = 2080;
    sub_10005FFD8(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v9;
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = sub_100037B98(v17, v19, &v27);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100037B98(v26, v24, &v27);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s url: %s preferredApp: %s", v16, 0x20u);
    swift_arrayDestroy();

    return (*(v10 + 8))(v12, v23);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t *sub_100062040(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000620A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000620E4()
{

  return _swift_deallocObject(v0, 56, 7);
}

id sub_10006218C()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_headerContainerView) setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  v2 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_headerView);

  return [v2 layoutIfNeeded];
}

id sub_1000621FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

void sub_100062320(void *a1)
{
  v2 = v1;
  v4 = sub_10000589C(&qword_1000BCBF8, &unk_100091060);
  __chkstk_darwin(v4 - 8);
  v6 = &v26[-v5];
  v7 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26[-v8];
  if (*(v2 + OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_title + 8))
  {

    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_subtitle + 8))
  {

    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  v14 = OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_url;
  swift_beginAccess();
  sub_100042774(v2 + v14, v9, &unk_1000BCA20, &qword_100090BC0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v18 = 0;
  if ((*(v16 + 48))(v9, 1, v15) != 1)
  {
    URL._bridgeToObjectiveC()(v17);
    v18 = v19;
    (*(v16 + 8))(v9, v15);
  }

  v20 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v18 forKey:v20];
  swift_unknownObjectRelease();

  v21 = OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_uuid;
  swift_beginAccess();
  sub_100042774(v2 + v21, v6, &qword_1000BCBF8, &unk_100091060);
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  isa = 0;
  if ((*(v23 + 48))(v6, 1, v22) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v23 + 8))(v6, v22);
  }

  v25 = String._bridgeToObjectiveC()();
  [a1 encodeObject:isa forKey:v25];
  swift_unknownObjectRelease();
}

id sub_100062768()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewModelCodingTest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ViewModelCodingTest(uint64_t a1)
{
  result = qword_1000BCBD8;
  if (!qword_1000BCBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006287C(uint64_t a1)
{
  sub_100062988(319, &qword_1000BCBE8, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    sub_100062988(319, &qword_1000BCBF0, &type metadata accessor for UUID);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100062988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1000629DC(void *a1)
{
  v3 = sub_10000589C(&qword_1000BCBF8, &unk_100091060);
  __chkstk_darwin(v3 - 8);
  v41 = &v36 - v4;
  v5 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = &v1[OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_title];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v1[OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_subtitle];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_url;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v37 = *(v12 + 56);
  v36 = v12 + 56;
  v37(&v1[v10], 1, 1, v11);
  v13 = OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_uuid;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v39 = *(v15 + 56);
  v40 = v13;
  v38 = v15 + 56;
  v39(&v1[v13], 1, 1, v14);
  v16 = String._bridgeToObjectiveC()();
  v17 = [a1 decodeObjectForKey:v16];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (*(&v46 + 1))
  {
    sub_10001A344(&v47, v49);
    swift_dynamicCast();
    v18 = v42;
    v19 = v43;
  }

  else
  {
    sub_100006390(&v47, &qword_1000BCA30, &unk_100090E80);
    v18 = 0;
    v19 = 0;
  }

  *v8 = v18;
  *(v8 + 1) = v19;

  v20 = String._bridgeToObjectiveC()();
  v21 = [a1 decodeObjectForKey:v20];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v22 = v41;
  v47 = v45;
  v48 = v46;
  if (*(&v46 + 1))
  {
    sub_10001A344(&v47, v49);
    swift_dynamicCast();
    v23 = v42;
    v24 = v43;
  }

  else
  {
    sub_100006390(&v47, &qword_1000BCA30, &unk_100090E80);
    v23 = 0;
    v24 = 0;
  }

  *v9 = v23;
  *(v9 + 1) = v24;

  v25 = String._bridgeToObjectiveC()();
  v26 = [a1 decodeObjectForKey:v25];

  if (v26)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (*(&v46 + 1))
  {
    sub_10001A344(&v47, v49);
    swift_dynamicCast();
    v27 = v7;
    v28 = 0;
  }

  else
  {
    sub_100006390(&v47, &qword_1000BCA30, &unk_100090E80);
    v27 = v7;
    v28 = 1;
  }

  v37(v27, v28, 1, v11);
  swift_beginAccess();
  sub_100062F8C(v7, &v1[v10], &unk_1000BCA20, &qword_100090BC0);
  swift_endAccess();
  v29 = String._bridgeToObjectiveC()();
  v30 = [a1 decodeObjectForKey:v29];

  if (v30)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (*(&v46 + 1))
  {
    sub_10001A344(&v47, v49);
    swift_dynamicCast();
    v31 = v22;
    v32 = 0;
  }

  else
  {
    sub_100006390(&v47, &qword_1000BCA30, &unk_100090E80);
    v31 = v22;
    v32 = 1;
  }

  v39(v31, v32, 1, v14);
  v33 = v40;
  swift_beginAccess();
  sub_100062F8C(v22, &v1[v33], &qword_1000BCBF8, &unk_100091060);
  swift_endAccess();
  v34 = type metadata accessor for ViewModelCodingTest(0);
  v44.receiver = v1;
  v44.super_class = v34;
  return objc_msgSendSuper2(&v44, "init");
}

uint64_t sub_100062F8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000589C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100062FF4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "layoutSubviews", v5);
  if (v1[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_usesMaterialBackgroundView] == 1)
  {
    v8 = *&v1[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView];
    if (v8)
    {
      v9 = v8;
      [v1 bounds];
      [v9 setFrame:?];
    }
  }

  static Logger.UI.getter();
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v3;
    v23 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100094230, &v23);
    *(v13 + 12) = 2080;
    v15 = v10;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_100037B98(v17, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s self: %s", v13, 0x16u);
    swift_arrayDestroy();

    return (*(v4 + 8))(v7, v22);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

BOOL sub_100063294()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(item:section:)();
  v6 = [v1 indexPathsForVisibleItems];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v6) = sub_100063A64(v5, v7);

  if ((v6 & 1) != 0 && (isa = IndexPath._bridgeToObjectiveC()().super.isa, v9 = [v1 cellForItemAtIndexPath:isa], isa, v9))
  {
    [v1 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v9 frame];
    v23.x = v18;
    v23.y = v19;
    v24.origin.x = v11;
    v24.origin.y = v13;
    v24.size.width = v15;
    v24.size.height = v17;
    v20 = CGRectContainsPoint(v24, v23);
  }

  else
  {
    v20 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return v20;
}

id sub_100063450()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "contentOffset");
}

id sub_100063488(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 contentSize];
  v10 = v9;
  static Logger.UI.getter();
  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    HIDWORD(v27) = v13;
    v15 = v14;
    v28 = swift_slowAlloc();
    v34 = v28;
    *v15 = 136315906;
    *(v15 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100094360, &v34);
    v29 = v4;
    v30 = 0;
    *(v15 + 12) = 2080;
    v31 = 0;
    v32 = v10;
    v33 = 0x3FF0000000000000;
    type metadata accessor for CGRect(0);
    v16 = String.init<A>(describing:)();
    v18 = sub_100037B98(v16, v17, &v34);

    *(v15 + 14) = v18;
    *(v15 + 22) = 1024;
    *(v15 + 24) = a1 & 1;
    *(v15 + 28) = 2080;
    v19 = v11;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = a1;
    v24 = v23;

    v25 = sub_100037B98(v21, v24, &v34);
    a1 = v22;

    *(v15 + 30) = v25;
    _os_log_impl(&_mh_execute_header, v12, BYTE4(v27), "%s bottomFrame: %s, animated: %{BOOL}d self: %s", v15, 0x26u);
    swift_arrayDestroy();

    (*(v5 + 8))(v8, v29);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return [v11 scrollRectToVisible:a1 & 1 animated:{0.0, 0.0, v10, 1.0}];
}

id sub_100063768(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 contentSize];
  v10 = v9 + -1.0;
  [v2 contentSize];
  v12 = v11;
  static Logger.UI.getter();
  v13 = v2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v4;
    v17 = v16;
    v31 = swift_slowAlloc();
    v37 = v31;
    *v17 = 136315906;
    *(v17 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100094340, &v37);
    HIDWORD(v30) = v15;
    *(v17 + 12) = 2080;
    v33 = 0;
    v34 = v10;
    v35 = v12;
    v36 = 0x3FF0000000000000;
    type metadata accessor for CGRect(0);
    v18 = String.init<A>(describing:)();
    v20 = sub_100037B98(v18, v19, &v37);

    *(v17 + 14) = v20;
    *(v17 + 22) = 1024;
    *(v17 + 24) = a1 & 1;
    *(v17 + 28) = 2080;
    v21 = v13;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v13;
    v25 = a1;
    v27 = v26;

    v28 = sub_100037B98(v23, v27, &v37);
    a1 = v25;
    v13 = v24;

    *(v17 + 30) = v28;
    _os_log_impl(&_mh_execute_header, v14, BYTE4(v30), "%s bottomFrame: %s, animated: %{BOOL}d self: %s", v17, 0x26u);
    swift_arrayDestroy();

    (*(v5 + 8))(v8, v32);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return [v13 scrollRectToVisible:a1 & 1 animated:{0.0, v10, v12, 1.0}];
}

BOOL sub_100063A64(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for IndexPath();
    ++v2;
    sub_100064D54();
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

id sub_100063B3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v1;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "contentOffset", v5);
  v9 = v8;
  [v1 contentSize];
  v11 = v10;
  [v1 frame];
  v12 = v11 - CGRectGetHeight(v27);
  result = [v1 contentInset];
  v15 = v12 + v14;
  v16 = v12 + v14 + -2.0;
  v17 = v12 + v14 + 2.0;
  if (v16 > v17)
  {
    __break(1u);
    return result;
  }

  if (v16 <= v9)
  {
    v18 = v9 <= v17;
    if (v9 == v15)
    {
      goto LABEL_4;
    }

LABEL_6:
    v19 = v18;
    goto LABEL_7;
  }

  v18 = 0;
  if (v9 != v15)
  {
    goto LABEL_6;
  }

LABEL_4:
  v19 = 1;
LABEL_7:
  static Logger.UI.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136316418;
    *(v22 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100094320, &v25);
    *(v22 + 12) = 1024;
    *(v22 + 14) = v9 == v15;
    *(v22 + 18) = 1024;
    *(v22 + 20) = v18;
    *(v22 + 24) = 2048;
    *(v22 + 26) = v15;
    *(v22 + 34) = 2048;
    *(v22 + 36) = v9;
    *(v22 + 44) = 2048;
    *(v22 + 46) = v12;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s isAtBottom: %{BOOL}d, isWithinRange: %{BOOL}d scrollToBottomPoint: %f, contentOffsetY: %f contentSizeMinusFrame: %f", v22, 0x36u);
    sub_1000064E0(v23);
  }

  (*(v4 + 8))(v7, v3);
  return v19;
}

void sub_100063F30(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView;
  v4 = *&v1[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView];
  if (a1)
  {
    if (!v4)
    {
LABEL_6:

      [a1 removeFromSuperview];
      return;
    }

    v5 = a1;
    v13 = *&v1[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView];
    type metadata accessor for FolderCollectionView();
    v6 = v13;
    v7 = v5;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return;
    }

    v4 = *&v2[v3];
    if (!v4)
    {
      a1 = v7;
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    return;
  }

  v14 = v4;
  if (v2[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_usesMaterialBackgroundView] == 1 && (v9 = *&v2[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_materialBackgroundView]) != 0)
  {
    v10 = v4;
    v11 = [v9 contentView];
    [v11 addSubview:v10];
  }

  else
  {
    v12 = v4;
  }

  [v2 addSubview:v14];
}

id sub_100064178(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC21DockFolderViewService20FolderCollectionView_itemsPinnedToBottomCount] = 0;
  type metadata accessor for DOCSBFolderCollectionViewLayout();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    type metadata accessor for DOCSBFolderFanCollectionViewLayout();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = a1;
    v17 = [v14 isKindOfClass:ObjCClassFromMetadata];
    v6[OBJC_IVAR____TtC21DockFolderViewService20FolderCollectionView__displayMode] = v17;
    v33.receiver = v6;
    v33.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v33, "initWithFrame:collectionViewLayout:", v14, a2, a3, a4, a5);
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 clearColor];
    [v20 setBackgroundColor:v21];

    [v20 setShowsHorizontalScrollIndicator:0];
    [v20 setShowsVerticalScrollIndicator:0];

    v22 = [v20 layer];
    if (*(v20 + OBJC_IVAR____TtC21DockFolderViewService20FolderCollectionView__displayMode) == 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    [v22 setHitTestsAsOpaque:v23 & 1];

    v24 = v20;
    [v24 setDelegate:v24];
    swift_unknownObjectWeakAssign();

    sub_10000589C(&unk_1000BCCF0, "zT");
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10008F930;
    *(v25 + 32) = type metadata accessor for UITraitLayoutDirection();
    *(v25 + 40) = &protocol witness table for UITraitLayoutDirection;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return v24;
  }

  else
  {
    _StringGuts.grow(_:)(99);
    v27._object = 0x8000000100094290;
    v27._countAndFlagsBits = 0xD000000000000061;
    String.append(_:)(v27);
    v28 = [a1 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1000644F4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_100037B98(0xD00000000000001ALL, 0x8000000100094300, &v14);
    *(v8 + 12) = 2048;
    v10 = [v5 traitCollection];
    v11 = [v10 layoutDirection];

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s layoutDirectionDidChange: %ld", v8, 0x16u);
    sub_1000064E0(v9);
  }

  else
  {
  }

  (*(v2 + 8))(v4, v1);
  v12 = [v5 collectionViewLayout];
  [v12 invalidateLayout];
}

id sub_100064928(uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v27 - v18;
  v20 = *a1;
  v28 = *a2;
  v29 = a3;
  result = [a3 indexPathForCell:{v20, v17}];
  if (result)
  {
    v22 = result;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v7 + 32);
    v23(v19, v15, v6);
    result = [v29 indexPathForCell:v28];
    if (result)
    {
      v24 = result;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v23(v12, v9, v6);
      v25 = IndexPath.compare(_:)();
      v26 = *(v7 + 8);
      v26(v12, v6);
      v26(v19, v6);
      return (v25 == -1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100064B4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100037B98(0x74696E696564, 0xE600000000000000, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_1000064E0(v10);
  }

  (*(v4 + 8))(v6, v3);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "dealloc");
}

unint64_t sub_100064D54()
{
  result = qword_1000BCCE8;
  if (!qword_1000BCCE8)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BCCE8);
  }

  return result;
}

void sub_100064DDC(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      (a1)(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_100064E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000589C(&qword_1000BCE60, &unk_100090AE0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100042774(a3, v25 - v10, &qword_1000BCE60, &unk_100090AE0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006390(v11, &qword_1000BCE60, &unk_100090AE0);
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

      sub_100006390(a3, &qword_1000BCE60, &unk_100090AE0);

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

  sub_100006390(a3, &qword_1000BCE60, &unk_100090AE0);
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

void sub_100065170(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

double sub_100065568(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100093AC0, &v17);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100037B98(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s identifier: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v9, v6);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;

  v14 = v3;
  DOCRunInMainThread(_:)();

  return result;
}

void sub_1000657A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  static Logger.UI.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v36 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v37 = v5;
    v15 = v14;
    v39 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100037B98(0xD00000000000002CLL, 0x8000000100093AF0, &v39);
    *(v15 + 12) = 2080;
    v16 = Array.description.getter();
    v18 = sub_100037B98(v16, v17, &v39);
    v4 = v36;

    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s dismissing identifiers: %s", v15, 0x16u);
    swift_arrayDestroy();

    v5 = v37;
  }

  v38 = *(v5 + 8);
  v38(v10, v4);
  v20 = *(a1 + 16);
  if (v20)
  {
    v37 = v5 + 8;
    v35 = "@48@0:8@16@24@32@40";
    v21 = (a1 + 40);
    *&v19 = 136315394;
    v34 = v19;
    v22 = &unk_1000AFC98;
    v33 = v7;
    do
    {
      v26 = *(v21 - 1);
      v25 = *v21;

      static Logger.UI.getter();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = v2;
        v30 = v22;
        v31 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v31 = v34;
        *(v31 + 4) = sub_100037B98(0xD00000000000001DLL, v35 | 0x8000000000000000, &v39);
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_100037B98(v26, v25, &v39);
        _os_log_impl(&_mh_execute_header, v27, v28, "%s identifier: %s", v31, 0x16u);
        swift_arrayDestroy();
        v4 = v36;

        v22 = v30;
        v2 = v29;
        v7 = v33;
      }

      v38(v7, v4);
      v23 = swift_allocObject();
      v23[2] = v2;
      v23[3] = v26;
      v23[4] = v25;

      v24 = v2;
      DOCRunInMainThread(_:)();

      v21 += 2;
      --v20;
    }

    while (v20);
  }
}

double sub_100065BB8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094460, &v17);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100037B98(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s identifier: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v9, v6);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;

  v14 = v3;
  DOCRunInMainThread(_:)();

  return result;
}

void sub_100065DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  if (v4)
  {
    v6 = [v4 windowScene];
    if (v6)
    {
      v13 = v6;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = objc_allocWithZone(SBUISFloatingDockFileStackPresentationContext);
        v10 = String._bridgeToObjectiveC()();
        v11 = [v9 initWithContextIdentifier:v10];

        [v11 setRequest:a4];
        [v8 requestUpdateContentForFloatingDockRemoteContentSceneWithContext:v11];

        v12 = v11;
      }

      else
      {
        v12 = v13;
      }
    }
  }
}

double sub_100065F1C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v24 = a1;
    v25 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_100037B98(0xD000000000000032, 0x80000001000945C0, &v25);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_100037B98(v24, a2, &v25);
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_100037B98(a3, a4, &v25);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s contextID: %s folderID: %s", v17, 0x20u);
    swift_arrayDestroy();
    a1 = v24;

    (*(v11 + 8))(v13, v23);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;

  v20 = v5;
  DOCRunInMainThread(_:)();

  return result;
}

void sub_1000661B0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  if (v7)
  {
    v8 = [v7 windowScene];
    if (v8)
    {
      v37 = v8;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = objc_allocWithZone(SBUISFloatingDockFileStackActionContext);
        v12 = String._bridgeToObjectiveC()();
        v13 = String._bridgeToObjectiveC()();
        v14 = [v11 initWithUUID:v12 iconIdentifier:v13 actionType:1000];

        static Logger.UI.getter();
        v15 = v14;
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          aBlock[0] = v36;
          *v18 = 136315394;
          *(v18 + 4) = sub_100037B98(0xD000000000000032, 0x80000001000945C0, aBlock);
          *(v18 + 12) = 2080;
          v19 = v10;
          v20 = v15;
          v21 = [v20 description];
          v35 = v3;
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          HIDWORD(v34) = v17;
          v24 = v23;
          v26 = v25;

          v10 = v19;
          v27 = sub_100037B98(v24, v26, aBlock);

          *(v18 + 14) = v27;
          _os_log_impl(&_mh_execute_header, v16, BYTE4(v34), "%s calling back to host with requestActionForFloatingDockRemoteContentScene: using context: %s", v18, 0x16u);
          swift_arrayDestroy();

          (*(v35 + 8))(v6, v2);
        }

        else
        {

          (*(v3 + 8))(v6, v2);
        }

        v29 = swift_allocObject();
        *(v29 + 16) = v15;
        v30 = objc_allocWithZone(SBUISFloatingDockRemoteContentAction);
        aBlock[4] = sub_100074B88;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100072100;
        aBlock[3] = &unk_1000AFEE0;
        v31 = _Block_copy(aBlock);
        v32 = v15;
        v33 = [v30 initWithContext:v32 handler:v31];
        _Block_release(v31);

        [v10 requestActionForFloatingDockRemoteContentScene:v33];
      }

      else
      {
        v28 = v37;
      }
    }
  }
}

void sub_1000665D8(char a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    static Logger.UI.getter();
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v11 = 136315394;
      *(v11 + 4) = sub_100037B98(0xD000000000000032, 0x80000001000945C0, &v19);
      *(v11 + 12) = 2080;
      v12 = v8;
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_100037B98(v14, v16, &v19);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s remote content action failed! Using context: %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v7, v4);
  }
}

double sub_1000667FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a1;
  v50 = a3;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = v12;
  v48 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for Logger();
  v46 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v44 = *(v11 + 16);
  v45 = v11 + 16;
  v44(v15, a5, v10);

  v43 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v42 = v20;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = a5;
    v22 = v21;
    v51 = swift_slowAlloc();
    *v22 = 136315906;
    *(v22 + 4) = sub_100037B98(0xD00000000000002DLL, 0x8000000100093A90, &v51);
    v40 = v19;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100037B98(v49, a2, &v51);
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_100037B98(v50, a4, &v51);
    *(v22 + 32) = 2080;
    sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v16;
    v24 = a2;
    v25 = a4;
    v26 = v6;
    v28 = v27;
    (*(v11 + 8))(v15, v10);
    v29 = sub_100037B98(v23, v28, &v51);
    v6 = v26;
    a4 = v25;
    a2 = v24;

    *(v22 + 34) = v29;
    v30 = v40;
    _os_log_impl(&_mh_execute_header, v40, v42, "%s contextID: %s folderID: %s url: %s", v22, 0x2Au);
    swift_arrayDestroy();

    a5 = v41;

    (*(v46 + 8))(v43, v39);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
    (*(v46 + 8))(v43, v16);
  }

  v31 = v48;
  v44(v48, a5, v10);
  v32 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v33 = swift_allocObject();
  v35 = v49;
  v34 = v50;
  *(v33 + 2) = v6;
  *(v33 + 3) = v35;
  *(v33 + 4) = a2;
  *(v33 + 5) = v34;
  *(v33 + 6) = a4;
  (*(v11 + 32))(&v33[v32], v31, v10);

  v36 = v6;
  DOCRunInMainThread(_:)();

  return result;
}

void sub_100066C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v30 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  if (v12)
  {
    v13 = [v12 windowScene];
    if (v13)
    {
      v31 = v13;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        v16 = type metadata accessor for URL();
        v17 = *(v16 - 8);
        (*(v17 + 16))(v11, a6, v16);
        (*(v17 + 56))(v11, 0, 1, v16);
        v18 = String._bridgeToObjectiveC()();
        v19 = String._bridgeToObjectiveC()();
        v21 = 0;
        if ((*(v17 + 48))(v11, 1, v16) != 1)
        {
          URL._bridgeToObjectiveC()(v20);
          v21 = v22;
          (*(v17 + 8))(v11, v16);
        }

        v23 = [objc_allocWithZone(SBUISFloatingDockFileStackActionContext) initWithUUID:v18 iconIdentifier:v19 actionType:1001 toIconURL:v21];

        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        v25 = objc_allocWithZone(SBUISFloatingDockRemoteContentAction);
        aBlock[4] = sub_1000725F4;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100072100;
        aBlock[3] = &unk_1000AFC38;
        v26 = _Block_copy(aBlock);
        v27 = v23;
        v28 = [v25 initWithContext:v27 handler:v26];
        _Block_release(v26);

        [v15 requestActionForFloatingDockRemoteContentScene:v28];
      }

      else
      {
        v29 = v31;
      }
    }
  }
}

void sub_100066FC0(char a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    static Logger.UI.getter();
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v11 = 136315394;
      *(v11 + 4) = sub_100037B98(0xD00000000000002DLL, 0x8000000100093A90, &v19);
      *(v11 + 12) = 2080;
      v12 = v8;
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_100037B98(v14, v16, &v19);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s remote content action failed! Using context: %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v7, v4);
  }
}

double sub_1000671E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v33 = a1;
  v34 = a3;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  sub_100041D18(a5, a6);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  sub_100041D80(a5, a6);
  v32 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v7;
    v19 = v18;
    v28 = swift_slowAlloc();
    v35 = v28;
    *v19 = 136315906;
    *(v19 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100093A50, &v35);
    v29 = v12;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_100037B98(v33, a2, &v35);
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_100037B98(v34, a4, &v35);
    *(v19 + 32) = 2080;
    v20 = Data.description.getter();
    v30 = a4;
    v22 = sub_100037B98(v20, v21, &v35);

    *(v19 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v16, v32, "%s contextID: %s folderID: %s imageData: %s", v19, 0x2Au);
    swift_arrayDestroy();

    v7 = v31;

    (*(v13 + 8))(v15, v29);
    a4 = v30;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v23 = swift_allocObject();
  v25 = v33;
  v24 = v34;
  v23[2] = v7;
  v23[3] = v25;
  v23[4] = a2;
  v23[5] = v24;
  v23[6] = a4;
  v23[7] = a5;
  v23[8] = a6;

  sub_100041D18(a5, a6);
  v26 = v7;
  DOCRunInMainThread(_:)();

  return result;
}

void sub_100067500(uint64_t a1)
{
  v2 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v26 - v4;
  v6 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  if (v6)
  {
    v7 = [v6 windowScene];
    if (v7)
    {
      v27 = v7;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = type metadata accessor for URL();
        v11 = *(v10 - 8);
        (*(v11 + 56))(v5, 1, 1, v10);
        v12 = String._bridgeToObjectiveC()();
        v13 = String._bridgeToObjectiveC()();
        v15 = 0;
        if ((*(v11 + 48))(v5, 1, v10) != 1)
        {
          URL._bridgeToObjectiveC()(v14);
          v15 = v16;
          (*(v11 + 8))(v5, v10);
        }

        v17 = objc_allocWithZone(SBUISFloatingDockFileStackActionContext);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v19 = [v17 initWithUUID:v12 iconIdentifier:v13 actionType:1002 toIconURL:v15 thumbnail:isa];

        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        v21 = objc_allocWithZone(SBUISFloatingDockRemoteContentAction);
        aBlock[4] = sub_100072464;
        aBlock[5] = v20;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100072100;
        aBlock[3] = &unk_1000AFBC0;
        v22 = _Block_copy(aBlock);
        v23 = v19;
        v24 = [v21 initWithContext:v23 handler:v22];
        _Block_release(v22);

        [v9 requestActionForFloatingDockRemoteContentScene:v24];
      }

      else
      {
        v25 = v27;
      }
    }
  }
}

uint64_t sub_100067848(int a1, void *a2)
{
  LODWORD(v3) = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v37[-v9];
  if ((v3 & 1) == 0)
  {
    v41 = v4;
    static Logger.UI.getter();
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v38 = v13;
      v15 = v14;
      v39 = swift_slowAlloc();
      v42 = v39;
      *v15 = 136315394;
      *(v15 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100093A50, &v42);
      *(v15 + 12) = 2080;
      v16 = v11;
      v17 = [v16 description];
      v40 = v3;
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v7;
      v21 = v5;
      v23 = v22;

      v3 = sub_100037B98(v19, v23, &v42);
      v5 = v21;
      v7 = v20;

      *(v15 + 14) = v3;
      LOBYTE(v3) = v40;
      _os_log_impl(&_mh_execute_header, v12, v38, "%s remote content action failed!: Using context: %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    v4 = v41;
    (*(v5 + 8))(v10, v41);
  }

  static Logger.UI.getter();
  v24 = a2;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v27 = 136315650;
    *(v27 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100093A50, &v42);
    *(v27 + 12) = 1024;
    *(v27 + 14) = v3 & 1;
    *(v27 + 18) = 2080;
    v28 = v24;
    v41 = v7;
    v29 = v5;
    v30 = v28;
    v31 = [v28 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_100037B98(v32, v34, &v42);

    *(v27 + 20) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s remote content action result: %{BOOL}d using context: %s", v27, 0x1Cu);
    swift_arrayDestroy();

    return (*(v29 + 8))(v41, v4);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_100067C54(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v35 = a3;
  v31 = a1;
  v32 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v32);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for Logger();
  v33 = *(v15 - 8);
  v34 = v15;
  __chkstk_darwin(v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  sub_100042774(a5, v14, &unk_1000BCA20, &qword_100090BC0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v20 = 136315906;
    *(v20 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100093A10, &v36);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_100037B98(v31, a2, &v36);
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_100037B98(v35, a4, &v36);
    *(v20 + 32) = 2080;
    v31 = v6;
    sub_100042774(v14, v11, &unk_1000BCA20, &qword_100090BC0);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_100006390(v14, &unk_1000BCA20, &qword_100090BC0);
    v24 = sub_100037B98(v21, v23, &v36);

    *(v20 + 34) = v24;
    v6 = v31;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s contextID: %s folderID: %s url: %s", v20, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100006390(v14, &unk_1000BCA20, &qword_100090BC0);
  }

  (*(v33 + 8))(v17, v34);
  v25 = swift_allocObject();
  v26 = v35;
  v25[2] = v6;
  v25[3] = v26;
  v25[4] = a4;

  v27 = v6;
  DOCRunInMainThread(_:)();

  return result;
}

uint64_t sub_100067FEC(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100065BB8(a2, a3);
  sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_1000723D0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D508;
  aBlock[3] = &unk_1000AFB20;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000725AC(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000589C(&unk_1000BCE30, &unk_100090E70);
  sub_1000518F8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

void sub_1000682D4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  if (v7)
  {
    v8 = [v7 windowScene];
    if (v8)
    {
      v32 = v8;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = objc_allocWithZone(SBUISFloatingDockFileStackPresentationContext);
        v12 = String._bridgeToObjectiveC()();
        v13 = [v11 initWithFileStackIconIdentifier:v12 request:203];

        static Logger.UI.getter();
        v14 = v13;
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v30 = v16;
          v18 = v17;
          v31 = swift_slowAlloc();
          v33 = v31;
          *v18 = 136315394;
          *(v18 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100093A10, &v33);
          *(v18 + 12) = 2080;
          v19 = v14;
          v20 = [v19 description];
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v15;
          v22 = v10;
          v24 = v23;

          v25 = sub_100037B98(v21, v24, &v33);
          v10 = v22;

          *(v18 + 14) = v25;
          v26 = v29;
          _os_log_impl(&_mh_execute_header, v29, v30, "%s sending iconRemovedFromClient using context: %s", v18, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v3 + 8))(v6, v2);
        [v10 requestUpdateContentForFloatingDockRemoteContentSceneWithContext:v14];
      }

      else
      {
        v27 = v32;
      }
    }
  }
}

double sub_1000685FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v7) = a5;
  v23 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = v7;
    v7 = v17;
    v18 = swift_slowAlloc();
    v22 = v11;
    v25 = v18;
    *v7 = 136315906;
    *(v7 + 4) = sub_100037B98(0xD000000000000046, 0x80000001000939C0, &v25);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100037B98(v23, a2, &v25);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_100037B98(a3, a4, &v25);
    *(v7 + 32) = 1024;
    *(v7 + 34) = v24 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s contextID: %s folderID: %s animationExpanded: %{BOOL}d", v7, 0x26u);
    swift_arrayDestroy();

    LOBYTE(v7) = v24;

    (*(v12 + 8))(v14, v22);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = v7 & 1;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;

  v20 = v6;
  DOCRunInMainThread(_:)();

  return result;
}

uint64_t sub_1000688A8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = v19;
  *(v15 + 40) = a4;
  aBlock[4] = sub_100072398;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D508;
  aBlock[3] = &unk_1000AFAA8;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000725AC(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000589C(&unk_1000BCE30, &unk_100090E70);
  sub_1000518F8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v20);
}

void sub_100068B8C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  if (v9)
  {
    v10 = [v9 windowScene];
    if (v10)
    {
      v36 = v10;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        if (a2)
        {
          if (qword_1000BB718 != -1)
          {
            swift_once();
          }

          v13 = &qword_1000BF158;
        }

        else
        {
          if (qword_1000BB720 != -1)
          {
            swift_once();
          }

          v13 = &qword_1000BF160;
        }

        v15 = *v13;
        v16 = objc_allocWithZone(SBUISFloatingDockFileStackPresentationContext);
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 initWithFileStackIconIdentifier:v17 request:v15];

        static Logger.UI.getter();
        v19 = v18;
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v33 = v21;
          v23 = v22;
          v34 = swift_slowAlloc();
          v37 = v34;
          *v23 = 136315394;
          *(v23 + 4) = sub_100037B98(0xD000000000000046, 0x80000001000939C0, &v37);
          *(v23 + 12) = 2080;
          v24 = v19;
          v25 = [v24 description];
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v12;
          v27 = v26;
          v28 = v5;
          v30 = v29;

          v31 = sub_100037B98(v27, v30, &v37);

          *(v23 + 14) = v31;
          v12 = v35;
          _os_log_impl(&_mh_execute_header, v20, v33, "%s sending iconRemovedFromClient using context: %s", v23, 0x16u);
          swift_arrayDestroy();

          (*(v28 + 8))(v8, v4);
        }

        else
        {

          (*(v5 + 8))(v8, v4);
        }

        [v12 requestUpdateContentForFloatingDockRemoteContentSceneWithContext:v19];
      }

      else
      {
        v14 = v36;
      }
    }
  }
}

void sub_100068F60(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v288 = type metadata accessor for DispatchWorkItemFlags();
  v287 = *(v288 - 8);
  __chkstk_darwin(v288);
  v285 = &v277[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v286 = type metadata accessor for DispatchQoS();
  v284 = *(v286 - 8);
  __chkstk_darwin(v286);
  v283 = &v277[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v294 = type metadata accessor for URL();
  v293 = *(v294 - 1);
  __chkstk_darwin(v294);
  v291 = &v277[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v297 = &v277[-v12];
  v13 = type metadata accessor for Logger();
  v301 = *(v13 - 1);
  __chkstk_darwin(v13);
  v290 = &v277[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v295 = &v277[-v16];
  __chkstk_darwin(v17);
  v292 = &v277[-v18];
  __chkstk_darwin(v19);
  v296 = &v277[-v20];
  __chkstk_darwin(v21);
  v23 = &v277[-v22];
  static Logger.UI.getter();
  v24 = a2;
  v25 = a1;
  v26 = a3;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = os_log_type_enabled(v27, v28);
  v30 = &selRef_setItemSize_;
  v299 = v4;
  v300 = v13;
  v298 = v25;
  if (v29)
  {
    v31 = swift_slowAlloc();
    v282 = swift_slowAlloc();
    v289 = swift_slowAlloc();
    aBlock = v289;
    *v31 = 136316162;
    *(v31 + 4) = sub_100037B98(0xD00000000000003BLL, 0x8000000100094640, &aBlock);
    *(v31 + 12) = 2080;
    v32 = v25;
    v33 = [v32 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_100037B98(v34, v36, &aBlock);

    *(v31 + 14) = v37;
    *(v31 + 22) = 2080;
    v308[0] = [v24 request];
    type metadata accessor for SBUISFloatingDockFileStackRequest(0);
    v38 = String.init<A>(describing:)();
    v40 = sub_100037B98(v38, v39, &aBlock);

    *(v31 + 24) = v40;
    *(v31 + 32) = 2080;
    v41 = v24;
    v42 = [v41 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = v43;
    v13 = v300;
    v47 = sub_100037B98(v46, v45, &aBlock);
    v25 = v298;

    *(v31 + 34) = v47;
    v30 = &selRef_setItemSize_;
    *(v31 + 42) = 2112;
    *(v31 + 44) = v26;
    v48 = v282;
    *v282 = v26;
    v49 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s scene: %s request: %s withContext: %s withAnimationSettings: %@", v31, 0x34u);
    sub_100006390(v48, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v4 = v299;
  }

  v50 = *(v301 + 8);
  v50(v23, v13);
  [v24 dockFrame];
  sub_10006AF40(v4, v24);
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = [v24 v30[158]];
  if (v59 == 100)
  {
    goto LABEL_7;
  }

  if (qword_1000BB728 != -1)
  {
    v275 = v59;
    swift_once();
    v59 = v275;
  }

  if (qword_1000BF168 == v59)
  {
LABEL_7:
    v295 = 0xE900000000000064;
    v291 = 0x6564644165746164;
    v289 = [v24 v30[158]];
    v60 = OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController;
    v61 = *&v4[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController];
    if (!v61)
    {
      goto LABEL_26;
    }

    v282 = v50;
    v62 = v61;
    v63 = [v24 iconIdentifier];
    v290 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = [v24 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = [v24 sortingBy];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    if (v68 == 1702125924 && v70 == 0xE400000000000000)
    {

      v71 = 0x6564644165746164;
      v72 = 0xE900000000000064;
    }

    else
    {
      v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v71 = 0x6564644165746164;
      v72 = 0xE900000000000064;
      if ((v91 & 1) == 0)
      {
        v92 = [v24 sortingBy];
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v93;
      }
    }

    v94 = [v24 displayMode];
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    if (v95 == 7233894 && v97 == 0xE300000000000000)
    {
    }

    else
    {
      v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v98 & 1) == 0)
      {
        v99 = [v24 sortingOrderAscending] ^ 1;
        goto LABEL_25;
      }
    }

    v99 = [v24 sortingOrderAscending];
LABEL_25:
    v100 = [v24 displayMode];
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    [v24 anchorFrame];
    v104 = v297;
    sub_100044594(v290, v65, v297, v71, v72, v99, v101, v103, v105, v106, v107, v108, *&v52, v54, v56, v58);

    v293[1](v104, v294);
    v4 = v299;
    v13 = v300;
    v50 = v282;
    v25 = v298;
LABEL_26:
    sub_10006B0C0(v24);
    v109 = *&v4[v60];
    if (!v109)
    {
      return;
    }

    v293 = v109;
    v110 = [v24 iconIdentifier];
    v290 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v297 = v111;

    v112 = [v24 sortingBy];
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    if (v113 == 1702125924 && v115 == 0xE400000000000000)
    {
    }

    else
    {
      v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v116 & 1) == 0)
      {
        v117 = [v24 sortingBy];
        v291 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v295 = v118;
      }
    }

    v119 = [v24 displayMode];
    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;

    if (v120 == 7233894 && v122 == 0xE300000000000000)
    {
      v123 = v25;
    }

    else
    {
      v123 = v25;
      v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v124 & 1) == 0)
      {
        LODWORD(v282) = [v24 sortingOrderAscending] ^ 1;
LABEL_38:
        v125 = v295;
        v126 = v296;
        v127 = [v24 displayMode];
        v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v130 = v129;

        [v24 anchorFrame];
        v132 = v131;
        v134 = v133;
        v136 = v135;
        v138 = v137;
        v139 = swift_allocObject();
        v139[2] = v123;
        v139[3] = v24;
        v281 = v139;
        v139[4] = v4;
        v140 = v24;
        v141 = v123;
        v142 = v130;
        v143 = v141;
        v144 = v4;
        v298 = v140;
        v280 = v143;
        v299 = v144;
        static Logger.UI.getter();
        v145 = v297;

        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.debug.getter();
        v294 = v142;

        v148 = os_log_type_enabled(v146, v147);
        v279 = v128;
        if (v148)
        {
          v278 = v289 == 100;
          v149 = swift_slowAlloc();
          v308[0] = swift_slowAlloc();
          *v149 = 136316930;
          *(v149 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, v308);
          *(v149 + 12) = 2080;
          *(v149 + 14) = sub_100037B98(v290, v297, v308);
          *(v149 + 22) = 2080;
          *(v149 + 24) = sub_100037B98(v291, v125, v308);
          *(v149 + 32) = 2080;
          if (v282)
          {
            v150 = 1702195828;
          }

          else
          {
            v150 = 0x65736C6166;
          }

          if (v282)
          {
            v151 = 0xE400000000000000;
          }

          else
          {
            v151 = 0xE500000000000000;
          }

          v152 = sub_100037B98(v150, v151, v308);

          *(v149 + 34) = v152;
          *(v149 + 42) = 2080;
          *(v149 + 44) = sub_100037B98(v128, v294, v308);
          *(v149 + 52) = 2080;
          aBlock = v132;
          v303 = *&v134;
          v304 = v136;
          v305 = v138;
          type metadata accessor for CGRect(0);
          v153 = String.init<A>(describing:)();
          v155 = sub_100037B98(v153, v154, v308);

          *(v149 + 54) = v155;
          v156 = v293;
          *(v149 + 62) = 2080;
          aBlock = v52;
          v303 = *&v54;
          v304 = v56;
          v305 = v58;
          v157 = String.init<A>(describing:)();
          v159 = sub_100037B98(v157, v158, v308);

          *(v149 + 64) = v159;
          v13 = v300;
          v125 = v295;
          *(v149 + 72) = 1024;
          *(v149 + 74) = v278;
          _os_log_impl(&_mh_execute_header, v146, v147, "%s identifier: %s sortOrder: %s isAscending: %s displayMode: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d", v149, 0x4Eu);
          swift_arrayDestroy();
          v145 = v297;

          v50 = *(v301 + 8);
          v50(v296, v13);
          v160 = v292;
        }

        else
        {

          v50(v126, v13);
          v160 = v292;
          v156 = v293;
        }

        sub_100043D20(1);
        v161 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
        swift_beginAccess();
        v162 = *(v156 + v161);
        if (*(v162 + 16))
        {

          v163 = sub_100037A68(v290, v145);
          if (v164)
          {
            v165 = v289 == 100;
            v166 = *(*(v162 + 56) + 8 * v163);

            sub_10001ECB8(*&v132, v134, v136, v138, *&v52, v54, v56, v58);
            v167 = swift_allocObject();
            v168 = v279;
            v169 = v294;
            *(v167 + 16) = v279;
            *(v167 + 24) = v169;
            *(v167 + 32) = v291;
            *(v167 + 40) = v125;
            *(v167 + 48) = v282;
            *(v167 + 56) = v132;
            *(v167 + 64) = v134;
            *(v167 + 72) = v136;
            *(v167 + 80) = v138;
            *(v167 + 88) = v166;
            *(v167 + 96) = v52;
            *(v167 + 104) = v54;
            *(v167 + 112) = v56;
            *(v167 + 120) = v58;
            LODWORD(v301) = v165;
            *(v167 + 128) = v165;
            v170 = v281;
            *(v167 + 136) = sub_100074E34;
            *(v167 + 144) = v170;
            v171 = *&v166[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
            if (v171 && (v172 = *(*(v171 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection)) != 0)
            {

              v300 = v166;

              v173 = v172;

              v174 = dispatch thunk of DOCNodeCollection.observedNode.getter();

              if (v174)
              {
                v175 = [objc_opt_self() sharedManager];
                v176 = swift_allocObject();
                v177 = v297;
                *(v176 + 2) = v290;
                *(v176 + 3) = v177;
                *(v176 + 4) = v132;
                v176[5] = v134;
                v176[6] = v136;
                v176[7] = v138;
                *(v176 + 8) = sub_10005218C;
                *(v176 + 9) = v167;
                *(v176 + 10) = sub_100074E34;
                *(v176 + 11) = v170;
                v306 = sub_100052280;
                v307 = v176;
                aBlock = _NSConcreteStackBlock;
                v303 = 1107296256;
                v304 = COERCE_DOUBLE(sub_100065170);
                v305 = COERCE_DOUBLE(&unk_1000B00C0);
                v178 = _Block_copy(&aBlock);
                swift_unknownObjectRetain();

                [v175 authenticateLocationWithNoUI:v174 checkFilesApp:1 completion:v178];

                _Block_release(v178);

                swift_unknownObjectRelease_n();
                return;
              }
            }

            else
            {

              v186 = v166;
            }

            v187 = v294;

            v188._countAndFlagsBits = v168;
            v188._object = v187;
            v189 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, v188);

            v190 = v189 != 0;

            v311._countAndFlagsBits = v291;
            v311._object = v125;
            v191 = sub_10003C434(v311);
            if (v191 == 6)
            {
              v192 = 2;
            }

            else
            {
              v192 = v191;
            }

            if (!sub_10001E8B0(v190 | (v192 << 8), v282, v136, v138))
            {
              v223 = v289 == 100;
              v224 = swift_allocObject();
              *(v224 + 16) = sub_100074E34;
              *(v224 + 24) = v170;

              sub_100020E78(v223, sub_100074E90, v224, *&v132, v134, v136, v138, *&v52, v54, v56, v58);

              v185 = v293;
              goto LABEL_58;
            }

            v193 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
            v194 = *&v166[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
            if (v194)
            {
              [v194 reloadData];
              v195 = *&v166[v193];
              if (v195)
              {
                [v195 layoutIfNeeded];
              }
            }

            sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
            v196 = static OS_dispatch_queue.main.getter();
            v197 = swift_allocObject();
            *(v197 + 16) = v166;
            *(v197 + 24) = v132;
            *(v197 + 32) = v134;
            *(v197 + 40) = v136;
            *(v197 + 48) = v138;
            *(v197 + 56) = v52;
            *(v197 + 64) = v54;
            *(v197 + 72) = v56;
            *(v197 + 80) = v58;
            *(v197 + 88) = v301;
            *(v197 + 96) = sub_100074E34;
            *(v197 + 104) = v170;
            v306 = sub_100052218;
            v307 = v197;
            aBlock = _NSConcreteStackBlock;
            v303 = 1107296256;
            v304 = COERCE_DOUBLE(sub_10000D508);
            v305 = COERCE_DOUBLE(&unk_1000B0070);
            v198 = _Block_copy(&aBlock);
            v199 = v166;

            v200 = v283;
            static DispatchQoS.unspecified.getter();
            aBlock = _swiftEmptyArrayStorage;
            sub_1000725AC(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_10000589C(&unk_1000BCE30, &unk_100090E70);
            sub_1000518F8();
            v201 = v285;
            v202 = v288;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v198);

            (*(v287 + 8))(v201, v202);
            (*(v284 + 8))(v200, v286);

LABEL_57:
            v185 = v293;
LABEL_58:

LABEL_59:

            return;
          }
        }

        static Logger.UI.getter();

        v179 = Logger.logObject.getter();
        v180 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v179, v180))
        {
          v181 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v181 = 136315394;
          *(v181 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, &aBlock);
          *(v181 + 12) = 2080;
          *(v181 + 14) = sub_100037B98(v290, v145, &aBlock);
          _os_log_impl(&_mh_execute_header, v179, v180, "%s no folderController for identifier: %s", v181, 0x16u);
          swift_arrayDestroy();
        }

        v50(v160, v13);
        v182 = v280;
        v184 = v298;
        v183 = v299;
        sub_10006BEDC(0, v280, v298, v299);

        goto LABEL_57;
      }
    }

    LODWORD(v282) = [v24 sortingOrderAscending];
    goto LABEL_38;
  }

  if (v59 == 101)
  {
    goto LABEL_15;
  }

  if (qword_1000BB730 != -1)
  {
    v276 = v59;
    swift_once();
    v59 = v276;
  }

  if (qword_1000BF170 == v59)
  {
LABEL_15:
    v73 = [v24 v30[158]];
    v74 = *&v4[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController];
    if (v74)
    {
      v75 = v73 == 101;
      v76 = v74;
      v77 = [v24 iconIdentifier];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      [v24 anchorFrame];
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v88 = v87;
      v89 = v24;
      v90 = v25;
      sub_10005137C(v78, v80, v75, v76, v90, v89, v82, v84, v86, v88, *&v52, v54, v56, v58);
    }

    return;
  }

  if (v59 > 199)
  {
    if ((v59 - 200) < 4 || v59 == 300)
    {
      v203 = v295;
      static Logger.UI.getter();
      v204 = v24;
      v205 = v25;
      v206 = Logger.logObject.getter();
      v207 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v208 = 136315650;
        *(v208 + 4) = sub_100037B98(0xD00000000000003BLL, 0x8000000100094640, &aBlock);
        *(v208 + 12) = 2080;
        v209 = v205;
        v210 = [v209 description];
        v282 = v50;
        v211 = v210;
        v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v214 = v213;

        v215 = sub_100037B98(v212, v214, &aBlock);

        *(v208 + 14) = v215;
        *(v208 + 22) = 2080;
        v216 = v204;
        v217 = [v216 description];
        v218 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v220 = v219;

        v221 = sub_100037B98(v218, v220, &aBlock);

        *(v208 + 24) = v221;
        _os_log_impl(&_mh_execute_header, v206, v207, "%s scene: %s should never get here withContext: %s", v208, 0x20u);
        swift_arrayDestroy();

        v222 = &v310;
LABEL_74:
        v282(*(v222 - 32), v300);
        return;
      }

LABEL_83:

      v50(v203, v13);
      return;
    }

LABEL_81:
    v203 = v290;
    static Logger.UI.getter();
    v231 = v24;
    v232 = v25;
    v206 = Logger.logObject.getter();
    v233 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v206, v233))
    {
      v234 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v234 = 136315650;
      *(v234 + 4) = sub_100037B98(0xD00000000000003BLL, 0x8000000100094640, &aBlock);
      *(v234 + 12) = 2080;
      v235 = v232;
      v236 = [v235 description];
      v282 = v50;
      v237 = v236;
      v238 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v240 = v239;

      v241 = sub_100037B98(v238, v240, &aBlock);

      *(v234 + 14) = v241;
      *(v234 + 22) = 2080;
      v308[0] = [v231 request];
      type metadata accessor for SBUISFloatingDockFileStackRequest(0);
      v242 = String.init<A>(describing:)();
      v244 = sub_100037B98(v242, v243, &aBlock);

      *(v234 + 24) = v244;
      _os_log_impl(&_mh_execute_header, v206, v233, "%s scene: %s unknown request type: %s", v234, 0x20u);
      swift_arrayDestroy();

      v222 = &v309;
      goto LABEL_74;
    }

    goto LABEL_83;
  }

  if (v59 == 102)
  {
    v245 = [v24 url];
    v246 = v291;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v247 = *&v4[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController];
    if (!v247)
    {
LABEL_97:
      sub_10006B0C0(v24);
      v293[1](v246, v294);
      return;
    }

    v248 = 0xE900000000000064;
    v249 = 0x6564644165746164;
    v250 = v247;
    v251 = [v24 iconIdentifier];
    v301 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v253 = v252;

    v254 = [v24 sortingBy];
    v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v257 = v256;

    if (v255 == 1702125924 && v257 == 0xE400000000000000)
    {
    }

    else
    {
      v258 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v258 & 1) == 0)
      {
        v259 = [v24 sortingBy];
        v249 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v248 = v260;
      }
    }

    v261 = [v24 displayMode];
    v262 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v264 = v263;

    if (v262 == 7233894 && v264 == 0xE300000000000000)
    {

      v246 = v291;
    }

    else
    {
      v265 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v246 = v291;
      if ((v265 & 1) == 0)
      {
        v266 = [v24 sortingOrderAscending] ^ 1;
        goto LABEL_96;
      }
    }

    v266 = [v24 sortingOrderAscending];
LABEL_96:
    v267 = [v24 displayMode];
    v268 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v270 = v269;

    [v24 anchorFrame];
    sub_100044594(v301, v253, v246, v249, v248, v266, v268, v270, v271, v272, v273, v274, *&v52, v54, v56, v58);

    goto LABEL_97;
  }

  if (v59 != 103)
  {
    goto LABEL_81;
  }

  v225 = *&v4[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController];
  if (v225)
  {
    v226 = v225;
    v227 = [v24 iconIdentifier];
    v228 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v230 = v229;

    sub_10004568C(v228, v230);
    goto LABEL_59;
  }
}

void sub_10006AF40(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController);
  if (v2)
  {
    v4 = [v2 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 window];
      if (v6 && (v7 = v6, v8 = [v6 screen], v7, v8))
      {
        v9 = [v8 fixedCoordinateSpace];
        [a2 dockFrame];
        [v9 convertRect:objc_msgSend(v5 toCoordinateSpace:{"coordinateSpace"), v10, v11, v12, v13}];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_10006B0C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v151 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v146 = &v144 - v8;
  __chkstk_darwin(v9);
  v147 = &v144 - v10;
  __chkstk_darwin(v11);
  v13 = &v144 - v12;
  static Logger.UI.getter();
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v150 = v4;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v148 = v5;
    v19 = v18;
    v149 = swift_slowAlloc();
    v157[0] = v149;
    *v19 = 136315394;
    *(v19 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100094680, v157);
    *(v19 + 12) = 2080;
    v20 = v14;
    v21 = [v20 description];
    v22 = v2;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v14;
    v26 = v25;

    v27 = v23;
    v2 = v22;
    v28 = sub_100037B98(v27, v26, v157);
    v14 = v24;

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s context: %s", v19, 0x16u);
    swift_arrayDestroy();

    v4 = v150;
    v5 = v148;
  }

  v149 = *(v5 + 8);
  v149(v13, v4);
  v29 = OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController;
  v30 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController);
  if (v30)
  {
    v31 = v30;
    v32 = [v14 iconIdentifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
    swift_beginAccess();
    v37 = *&v31[v36];

    if (*(v37 + 16))
    {
      v38 = sub_100037A68(v33, v35);
      v40 = v39;

      if (v40)
      {
        v41 = *(*(v37 + 56) + 8 * v38);

        v42 = *&v41[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
        v148 = v5;
        if (v42)
        {
          objc_opt_self();
          v43 = swift_dynamicCastObjCClass();
          v44 = v147;
          if (v43)
          {
            v156 = v43;
            v45 = v42;
          }

          else
          {
            v156 = 0;
          }
        }

        else
        {
          v156 = 0;
          v44 = v147;
        }

        v70 = [v14 openIndicatorLayerRenderId];
        v144 = v2;
        v145 = v14;
        v151 = v41;
        if (v70 && (v153 = 0, v154 = 1, v71 = v70, static UInt64._conditionallyBridgeFromObjectiveC(_:result:)(), v71, (v154 & 1) == 0) && (v72 = v153, (v73 = [v14 openIndicatorContextId]) != 0) && (LODWORD(v153) = 0, BYTE4(v153) = 1, v74 = v73, static UInt32._conditionallyBridgeFromObjectiveC(_:result:)(), v74, (v153 & 0x100000000) == 0))
        {
          v134 = v153;
          v135 = v156;
          v136 = v156;
          v137 = v14;
          v138 = v136;
          v139 = sub_10006E310(v135, v72, v134, v137);

          v156 = v139;
          v95 = v150;
        }

        else
        {
          static Logger.UI.getter();
          v75 = v14;
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            *v78 = 136316162;
            *(v78 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100094680, &v153);
            *(v78 + 12) = 2080;
            swift_beginAccess();
            v152 = v156;
            v79 = v156;
            sub_10000589C(&qword_1000BCF08, &qword_1000911D0);
            v80 = String.init<A>(describing:)();
            v82 = sub_100037B98(v80, v81, &v153);

            *(v78 + 14) = v82;
            *(v78 + 22) = 2080;
            v152 = [v75 openIndicatorLayerRenderId];
            sub_10000589C(&qword_1000BCF00, &qword_1000911C8);
            v83 = String.init<A>(describing:)();
            v85 = sub_100037B98(v83, v84, &v153);

            *(v78 + 24) = v85;
            *(v78 + 32) = 2080;
            v152 = [v75 openIndicatorContextId];
            v86 = String.init<A>(describing:)();
            v88 = sub_100037B98(v86, v87, &v153);

            *(v78 + 34) = v88;
            *(v78 + 42) = 2080;
            v89 = [v75 iconIdentifier];
            v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v92 = v91;

            v93 = sub_100037B98(v90, v92, &v153);

            *(v78 + 44) = v93;
            _os_log_impl(&_mh_execute_header, v76, v77, "%s can not create or update existing portal view: %s because openIndicatorLayerRenderId: %s or openIndicatorContextId: %s are nil. Context: %s", v78, 0x34u);
            swift_arrayDestroy();
            v2 = v144;

            v41 = v151;

            v94 = v147;
          }

          else
          {

            v94 = v44;
          }

          v95 = v150;
          v149(v94, v150);
        }

        v96 = *&v41[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
        if (v96 && (objc_opt_self(), (v97 = swift_dynamicCastObjCClass()) != 0))
        {
          v155 = v97;
          v98 = v96;
        }

        else
        {
          v155 = 0;
        }

        v99 = [v145 sourceLayerRenderId];
        if (v99 && (v153 = 0, v154 = 1, v100 = v99, static UInt64._conditionallyBridgeFromObjectiveC(_:result:)(), v100, (v154 & 1) == 0) && (v101 = v153, (v102 = [v145 sourceContextId]) != 0) && (LODWORD(v153) = 0, BYTE4(v153) = 1, v103 = v102, static UInt32._conditionallyBridgeFromObjectiveC(_:result:)(), v103, (v153 & 0x100000000) == 0))
        {
          v140 = v153;
          v141 = v155;
          v142 = v155;
          v143 = sub_10006E310(v141, v101, v140, v145);

          v155 = v143;
          v124 = *(v2 + v29);
          if (v124)
          {
LABEL_38:
            v125 = v124;
            v126 = [v145 iconIdentifier];
            v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v129 = v128;

            swift_beginAccess();
            v130 = v156;
            swift_beginAccess();
            v131 = v155;
            v132 = v130;
            v133 = v131;
            sub_100045AE4(v127, v129, v130, v131);

LABEL_42:

            return;
          }
        }

        else
        {
          v104 = v146;
          static Logger.UI.getter();
          v105 = v145;
          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            *v108 = 136316162;
            *(v108 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100094680, &v153);
            *(v108 + 12) = 2080;
            swift_beginAccess();
            v152 = v155;
            v109 = v155;
            sub_10000589C(&qword_1000BCF08, &qword_1000911D0);
            v110 = String.init<A>(describing:)();
            v112 = sub_100037B98(v110, v111, &v153);

            *(v108 + 14) = v112;
            *(v108 + 22) = 2080;
            v152 = [v105 openIndicatorLayerRenderId];
            sub_10000589C(&qword_1000BCF00, &qword_1000911C8);
            v113 = String.init<A>(describing:)();
            v115 = sub_100037B98(v113, v114, &v153);

            *(v108 + 24) = v115;
            *(v108 + 32) = 2080;
            v152 = [v105 openIndicatorContextId];
            v116 = String.init<A>(describing:)();
            v118 = sub_100037B98(v116, v117, &v153);

            *(v108 + 34) = v118;
            *(v108 + 42) = 2080;
            v119 = [v105 iconIdentifier];
            v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v122 = v121;

            v123 = sub_100037B98(v120, v122, &v153);

            *(v108 + 44) = v123;
            _os_log_impl(&_mh_execute_header, v106, v107, "%s can not create or update existing portal view: %s because openIndicatorLayerRenderId: %s or openIndicatorContextId: %s are nil. Context: %s", v108, 0x34u);
            swift_arrayDestroy();

            v2 = v144;

            (*(v148 + 8))(v146, v150);
          }

          else
          {

            (*(v148 + 8))(v104, v95);
          }

          v41 = v151;
          v124 = *(v2 + v29);
          if (v124)
          {
            goto LABEL_38;
          }
        }

        v41 = v155;
        goto LABEL_42;
      }
    }

    else
    {
    }
  }

  v46 = v151;
  static Logger.UI.getter();
  v47 = v14;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *v50 = 136316162;
    *(v50 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100094680, &v153);
    *(v50 + 12) = 2080;
    v51 = v47;
    v52 = [v51 description];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = sub_100037B98(v53, v55, &v153);

    *(v50 + 14) = v56;
    *(v50 + 22) = 2080;
    v152 = [v51 openIndicatorLayerRenderId];
    sub_10000589C(&qword_1000BCF00, &qword_1000911C8);
    v57 = String.init<A>(describing:)();
    v59 = sub_100037B98(v57, v58, &v153);

    *(v50 + 24) = v59;
    *(v50 + 32) = 2080;
    v152 = [v51 openIndicatorContextId];
    v60 = String.init<A>(describing:)();
    v62 = sub_100037B98(v60, v61, &v153);

    *(v50 + 34) = v62;
    *(v50 + 42) = 2080;
    v63 = [v51 iconIdentifier];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v67 = sub_100037B98(v64, v66, &v153);

    *(v50 + 44) = v67;
    _os_log_impl(&_mh_execute_header, v48, v49, "%s can not find presentation controller for context: %s because openIndicatorLayerRenderId: %s or openIndicatorContextId: %s are nil. Context: %s", v50, 0x34u);
    swift_arrayDestroy();

    v69 = v150;
    v68 = v151;
  }

  else
  {

    v68 = v46;
    v69 = v4;
  }

  v149(v68, v69);
}

void sub_10006BEDC(char a1, void *a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v42 = a2;
    [v13 completeContextRequestUpdateFromHost:a3 withError:0];
    if (a1)
    {
      v14 = v42;
    }

    else
    {
      static Logger.UI.getter();
      v15 = v42;
      v16 = a3;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v42 = a4;
        v20 = v19;
        v40 = swift_slowAlloc();
        v43 = v40;
        *v20 = 136315650;
        *(v20 + 4) = sub_100037B98(0xD00000000000003BLL, 0x8000000100094640, &v43);
        *(v20 + 12) = 2080;
        v21 = v15;
        v22 = [v21 description];
        v39 = v9;
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v15;
        v26 = v25;

        v27 = sub_100037B98(v24, v26, &v43);

        *(v20 + 14) = v27;
        *(v20 + 22) = 2080;
        v28 = v16;
        v29 = [v28 description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v15 = v41;
        v33 = sub_100037B98(v30, v32, &v43);

        *(v20 + 24) = v33;
        _os_log_impl(&_mh_execute_header, v17, v18, "%s scene: %s failed to present folder withContext: %s", v20, 0x20u);
        swift_arrayDestroy();

        (*(v39 + 8))(v11, v8);
      }

      else
      {

        (*(v9 + 8))(v11, v8);
      }

      v34 = [v16 iconIdentifier];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      sub_100065BB8(v35, v37);
    }
  }
}

id sub_10006C26C(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result completeContextRequestUpdateFromHost:a2 withError:0];
  }

  return result;
}

uint64_t sub_10006C370(void *a1, void *a2)
{
  v177 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v177);
  v179 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v176 = &v174 - v6;
  v7 = type metadata accessor for URL();
  v189 = *(v7 - 8);
  __chkstk_darwin(v7);
  v174 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v174 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v181 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v184 = &v174 - v16;
  __chkstk_darwin(v17);
  v180 = &v174 - v18;
  __chkstk_darwin(v19);
  v21 = &v174 - v20;
  __chkstk_darwin(v22);
  v24 = &v174 - v23;
  static Logger.UI.getter();
  v25 = a2;
  v26 = a1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v182 = v28;
  v186 = v27;
  v29 = os_log_type_enabled(v27, v28);
  v30 = &selRef_setItemSize_;
  v185 = v13;
  v188 = v7;
  v175 = v21;
  v187 = v26;
  if (v29)
  {
    v31 = swift_slowAlloc();
    v191[0] = swift_slowAlloc();
    *v31 = 136315906;
    *(v31 + 4) = sub_100037B98(0xD000000000000035, 0x80000001000944E0, v191);
    *(v31 + 12) = 2080;
    v32 = v26;
    v33 = [v32 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v183 = v12;
    v35 = v34;
    v178 = v11;
    v37 = v36;

    v38 = sub_100037B98(v35, v37, v191);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2080;
    v190 = [v25 actionType];
    type metadata accessor for SBUISFloatingDockRemoteSceneActionType(0);
    v39 = String.init<A>(describing:)();
    v41 = sub_100037B98(v39, v40, v191);

    *(v31 + 24) = v41;
    *(v31 + 32) = 2080;
    v42 = v25;
    v43 = [v42 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = v44;
    v48 = v185;
    v49 = sub_100037B98(v47, v46, v191);
    v50 = v183;

    *(v31 + 34) = v49;
    v51 = v178;
    v52 = v186;
    _os_log_impl(&_mh_execute_header, v186, v182, "%s scene: %s actionType: %s actionContext: %s", v31, 0x2Au);
    swift_arrayDestroy();
    v30 = &selRef_setItemSize_;

    v53 = *(v48 + 8);
    (v53)(v24, v50);
  }

  else
  {

    v53 = *(v13 + 8);
    (v53)(v24, v12);
    v50 = v12;
    v51 = v11;
  }

  v54 = [v25 v30[141]];
  if ((v54 - 1000) < 3)
  {
    v55 = v50;
    v56 = v184;
    static Logger.UI.getter();
    v57 = v25;
    v58 = v187;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v191[0] = swift_slowAlloc();
      *v61 = 136315650;
      *(v61 + 4) = sub_100037B98(0xD000000000000035, 0x80000001000944E0, v191);
      v186 = v53;
      *(v61 + 12) = 2080;
      v62 = v58;
      v63 = [v62 description];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v183 = v55;
      v65 = v64;
      v67 = v66;

      v68 = sub_100037B98(v65, v67, v191);

      *(v61 + 14) = v68;
      *(v61 + 22) = 2080;
      v190 = [v57 actionType];
      type metadata accessor for SBUISFloatingDockRemoteSceneActionType(0);
      v69 = String.init<A>(describing:)();
      v71 = sub_100037B98(v69, v70, v191);

      *(v61 + 24) = v71;
      _os_log_impl(&_mh_execute_header, v59, v60, "%s scene: %s should never get here. actionContext: %s", v61, 0x20u);
      swift_arrayDestroy();

      v72 = v184;
LABEL_26:
      v116 = v183;
      return (v186)(v72, v116);
    }

LABEL_29:
    v118 = v56;
    v119 = v55;
    return (v53)(v118, v119);
  }

  v73 = v187;
  if (v54 == 1)
  {
    v88 = [v25 uuid];
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    v92 = [v25 iconIdentifier];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96 = [v25 iconURL];
    if (v96)
    {
      v97 = v179;
      v98 = v96;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v99 = v188;
      v100 = 0;
    }

    else
    {
      v100 = 1;
      v99 = v188;
      v97 = v179;
    }

    (*(v189 + 56))(v97, v100, 1, v99);
    sub_10006DDC0(v89, v91, v93, v95, v97);

    return sub_100006390(v97, &unk_1000BCA20, &qword_100090BC0);
  }

  if (v54)
  {
    v55 = v50;
    v56 = v181;
    static Logger.UI.getter();
    v101 = v25;
    v102 = v73;
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v191[0] = swift_slowAlloc();
      *v105 = 136315650;
      *(v105 + 4) = sub_100037B98(0xD000000000000035, 0x80000001000944E0, v191);
      v186 = v53;
      *(v105 + 12) = 2080;
      v106 = v102;
      v107 = [v106 description];
      v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v183 = v55;
      v109 = v108;
      v111 = v110;

      v112 = sub_100037B98(v109, v111, v191);

      *(v105 + 14) = v112;
      *(v105 + 22) = 2080;
      v190 = [v101 actionType];
      type metadata accessor for SBUISFloatingDockRemoteSceneActionType(0);
      v113 = String.init<A>(describing:)();
      v115 = sub_100037B98(v113, v114, v191);

      *(v105 + 24) = v115;
      _os_log_impl(&_mh_execute_header, v103, v104, "%s scene: %s unknown action context type: %s", v105, 0x20u);
      swift_arrayDestroy();

      v72 = v181;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v74 = [v25 fromSecurityURLWrappers];
  if (!v74)
  {
LABEL_40:
    v150 = v180;
    static Logger.UI.getter();
    v151 = v25;
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v152, v153))
    {
      v186 = v53;
      v154 = v50;
      v155 = swift_slowAlloc();
      v191[0] = swift_slowAlloc();
      *v155 = 136315906;
      *(v155 + 4) = sub_100037B98(0xD000000000000035, 0x80000001000944E0, v191);
      *(v155 + 12) = 2080;
      v190 = [v151 actionType];
      type metadata accessor for SBUISFloatingDockRemoteSceneActionType(0);
      v156 = String.init<A>(describing:)();
      v158 = sub_100037B98(v156, v157, v191);

      *(v155 + 14) = v158;
      *(v155 + 22) = 2080;
      v159 = [v151 fromSecurityURLWrappers];
      if (v159)
      {
        v160 = v159;
        sub_10001A2A8(0, &qword_1000BCE58, NSSecurityScopedURLWrapper_ptr);
        v161 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v161 = 0;
      }

      v190 = v161;
      sub_10000589C(&qword_1000BCE50, &unk_100091118);
      v162 = String.init<A>(describing:)();
      v164 = sub_100037B98(v162, v163, v191);

      *(v155 + 24) = v164;
      *(v155 + 32) = 2080;
      v165 = [v151 iconURL];
      if (v165)
      {
        v166 = v176;
        v167 = v165;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v168 = 0;
        v169 = v154;
        v170 = v180;
      }

      else
      {
        v168 = 1;
        v169 = v154;
        v170 = v180;
        v166 = v176;
      }

      (*(v189 + 56))(v166, v168, 1, v188);
      v171 = String.init<A>(describing:)();
      v173 = sub_100037B98(v171, v172, v191);

      *(v155 + 34) = v173;
      _os_log_impl(&_mh_execute_header, v152, v153, "%s action context type: %s but fromSecurityURLWrappers: %s or destinationURL: %s was nil.", v155, 0x2Au);
      swift_arrayDestroy();

      v72 = v170;
      v116 = v169;
      return (v186)(v72, v116);
    }

    v118 = v150;
    v119 = v50;
    return (v53)(v118, v119);
  }

  v75 = v74;
  sub_10001A2A8(0, &qword_1000BCE58, NSSecurityScopedURLWrapper_ptr);
  v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = [v25 iconURL];
  if (!v77)
  {
LABEL_39:

    goto LABEL_40;
  }

  v78 = v77;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v76 >> 62))
  {
    v79 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v79 >= 1)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

  v79 = _CocoaArrayWrapper.endIndex.getter();
  if (v79 < 1)
  {
LABEL_38:
    (*(v189 + 8))(v51, v188);
    goto LABEL_39;
  }

LABEL_13:
  v183 = v50;
  v184 = v25;
  v178 = v51;
  v186 = v53;
  v191[0] = _swiftEmptyArrayStorage;
  sub_10000F7F8(0, v79, 0);
  v80 = 0;
  v81 = v191[0];
  v82 = v174;
  do
  {
    if ((v76 & 0xC000000000000001) != 0)
    {
      v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v83 = *(v76 + 8 * v80 + 32);
    }

    v84 = v83;
    v85 = [v83 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v191[0] = v81;
    v87 = *(v81 + 16);
    v86 = *(v81 + 24);
    if (v87 >= v86 >> 1)
    {
      sub_10000F7F8((v86 > 1), v87 + 1, 1);
      v81 = v191[0];
    }

    ++v80;
    *(v81 + 16) = v87 + 1;
    (*(v189 + 32))(v81 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v87, v82, v188);
  }

  while (v79 != v80);

  v120 = v175;
  static Logger.UI.getter();
  v121 = v184;
  v122 = v187;
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v123, v124))
  {
    v126 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v191[0] = v187;
    *v126 = 136315650;
    *(v126 + 4) = sub_100037B98(0xD000000000000035, 0x80000001000944E0, v191);
    *(v126 + 12) = 2080;
    v127 = v122;
    v128 = [v127 description];
    v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v131 = v130;

    v132 = sub_100037B98(v129, v131, v191);

    *(v126 + 14) = v132;
    *(v126 + 22) = 2080;
    v133 = v121;
    v134 = [v133 description];
    v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v137 = v136;

    v138 = sub_100037B98(v135, v137, v191);

    *(v126 + 24) = v138;
    _os_log_impl(&_mh_execute_header, v123, v124, "%s scene: %s actionContext: %s", v126, 0x20u);
    swift_arrayDestroy();

    v139 = v175;
  }

  else
  {

    v139 = v120;
  }

  (v186)(v139, v183);
  v140 = [v121 uuid];
  v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v143 = v142;

  v144 = [v121 iconIdentifier];
  v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v147 = v146;

  v148 = v145;
  v149 = v178;
  sub_10006D44C(v141, v143, v148, v147, v81, v178);

  return (*(v189 + 8))(v149, v188);
}

void sub_10006D44C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, char *a6)
{
  v91 = a1;
  v92 = a3;
  v10 = sub_10000589C(&qword_1000BCE60, &unk_100090AE0);
  __chkstk_darwin(v10 - 8);
  v94 = &v82 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v85 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v101 = &v82 - v16;
  __chkstk_darwin(v17);
  v93 = &v82 - v18;
  __chkstk_darwin(v19);
  v21 = &v82 - v20;
  v88 = v22;
  __chkstk_darwin(v23);
  v25 = &v82 - v24;
  v26 = type metadata accessor for Logger();
  v98 = *(v26 - 8);
  __chkstk_darwin(v26);
  v87 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v82 - v29;
  static Logger.UI.getter();
  v97 = v13;
  v31 = *(v13 + 16);
  v90 = a6;
  v102 = v31;
  v103 = (v13 + 16);
  v31(v25, a6, v12);

  v32 = a5;
  v33 = Logger.logObject.getter();
  LODWORD(v13) = static os_log_type_t.debug.getter();

  LODWORD(v86) = v13;
  v34 = os_log_type_enabled(v33, v13);
  v100 = v12;
  v95 = a2;
  v96 = a4;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v83 = v33;
    v36 = v35;
    v84 = swift_slowAlloc();
    v104[0] = v84;
    *v36 = 136316162;
    *(v36 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, v104);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_100037B98(v91, a2, v104);
    *(v36 + 22) = 2080;
    *(v36 + 24) = sub_100037B98(v92, a4, v104);
    *(v36 + 32) = 2080;
    v37 = Array.description.getter();
    v38 = v32;
    v40 = sub_100037B98(v37, v39, v104);

    *(v36 + 34) = v40;
    *(v36 + 42) = 2080;
    v12 = v100;
    sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v44 = v97;
    v99 = *(v97 + 8);
    v99(v25, v12);
    v45 = sub_100037B98(v41, v43, v104);

    *(v36 + 44) = v45;
    v32 = v38;
    v46 = v83;
    _os_log_impl(&_mh_execute_header, v83, v86, "%s contextID: %s folderID: %s documentURLs: %s to: %s", v36, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v44 = v97;
    v99 = *(v97 + 8);
    v99(v25, v12);
  }

  v47 = *(v98 + 8);
  v47(v30, v26);
  v48 = *(v32 + 2);
  if (v48)
  {
    v86 = *(v44 + 80);
    v87 = v32;
    v98 = (v86 + 32) & ~v86;
    v49 = &v32[v98];
    v50 = *(v44 + 72);
    v97 = v44 + 8;
    v51 = (v44 + 32);
    v52 = _swiftEmptyArrayStorage;
    do
    {
      v102(v21, v49, v12);
      if (URL.startAccessingSecurityScopedResource()())
      {
        v53 = *v51;
        (*v51)(v101, v21, v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104[0] = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10000F7F8(0, v52[2] + 1, 1);
          v52 = v104[0];
        }

        v56 = v52[2];
        v55 = v52[3];
        if (v56 >= v55 >> 1)
        {
          sub_10000F7F8((v55 > 1), v56 + 1, 1);
          v52 = v104[0];
        }

        v52[2] = v56 + 1;
        v57 = v52 + v98 + v56 * v50;
        v12 = v100;
        v53(v57, v101, v100);
      }

      else
      {
        v99(v21, v12);
      }

      v49 += v50;
      --v48;
    }

    while (v48);
    v58 = type metadata accessor for TaskPriority();
    (*(*(v58 - 8) + 56))(v94, 1, 1, v58);
    v102(v93, v90, v12);
    type metadata accessor for MainActor();

    v59 = v87;

    v103 = v89;
    v102 = static MainActor.shared.getter();
    v60 = v98;
    v61 = (v88 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    *(v65 + 16) = v102;
    *(v65 + 24) = &protocol witness table for MainActor;
    (*v51)((v65 + v60), v93, v100);
    *(v65 + v61) = v59;
    *(v65 + v62) = v103;
    *(v65 + v63) = v52;
    v66 = (v65 + v64);
    v67 = v94;
    v68 = v95;
    *v66 = v91;
    v66[1] = v68;
    v69 = (v65 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8));
    v70 = v96;
    *v69 = v92;
    v69[1] = v70;
    sub_100064E70(0, 0, v67, &unk_100091130, v65);
  }

  else
  {
    v71 = v87;
    static Logger.UI.getter();
    v72 = v85;
    v102(v85, v90, v12);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v104[0] = swift_slowAlloc();
      *v75 = 136315394;
      *(v75 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, v104);
      *(v75 + 12) = 2080;
      sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v72;
      v79 = v78;
      v99(v77, v12);
      v80 = sub_100037B98(v76, v79, v104);

      *(v75 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "%s can not start move operation with 0 items to move to destinationURL: %s", v75, 0x16u);
      swift_arrayDestroy();

      v81 = v87;
    }

    else
    {

      v99(v72, v12);
      v81 = v71;
    }

    v47(v81, v26);
  }
}

void sub_10006DDC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v52 = a3;
  v56 = a1;
  v9 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v10 = *(v9 - 8);
  v49 = v9;
  v50 = v10;
  __chkstk_darwin(v9);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = v11;
  __chkstk_darwin(v13);
  v15 = &v44[-v14];
  v16 = type metadata accessor for Logger();
  v54 = *(v16 - 8);
  v55 = v16;
  __chkstk_darwin(v16);
  v18 = &v44[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.UI.getter();
  sub_100042774(a5, v15, &unk_1000BCA20, &qword_100090BC0);
  v19 = v5;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v53 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v47 = a5;
    v24 = v23;
    v46 = swift_slowAlloc();
    v59 = v46;
    *v24 = 136315906;
    *(v24 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100094600, &v59);
    v48 = a4;
    *(v24 + 12) = 2080;
    v25 = swift_allocObject();
    v45 = v21;
    v26 = v25;
    *(v25 + 16) = v19;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_100074D58;
    *(v27 + 24) = v26;
    v57 = sub_100074DB4;
    v58 = v27;
    v28 = v19;
    sub_10000589C(&unk_1000BCEE0, qword_1000911A0);
    v29 = String.init<A>(describing:)();
    v31 = sub_100037B98(v29, v30, &v59);

    *(v24 + 14) = v31;
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_100037B98(v56, a2, &v59);
    *(v24 + 32) = 2080;
    sub_100042774(v15, v12, &unk_1000BCA20, &qword_100090BC0);
    v32 = v12;
    v33 = String.init<A>(describing:)();
    v35 = v34;
    sub_100006390(v15, &unk_1000BCA20, &qword_100090BC0);
    a4 = v48;
    v36 = sub_100037B98(v33, v35, &v59);

    *(v24 + 34) = v36;
    _os_log_impl(&_mh_execute_header, v20, v45, "%s scene: %s contextID: %s, iconURL: %s", v24, 0x2Au);
    swift_arrayDestroy();

    a5 = v47;
  }

  else
  {
    v32 = v12;

    sub_100006390(v15, &unk_1000BCA20, &qword_100090BC0);
  }

  (*(v54 + 8))(v18, v55);
  v37 = *&v19[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController];
  if (v37)
  {
    sub_100042774(a5, v32, &unk_1000BCA20, &qword_100090BC0);
    v38 = (*(v50 + 80) + 56) & ~*(v50 + 80);
    v39 = swift_allocObject();
    v40 = v56;
    v39[2].isa = v19;
    v39[3].isa = v40;
    v41 = v52;
    v39[4].isa = v53;
    v39[5].isa = v41;
    v39[6].isa = a4;
    sub_100042594(v32, v39 + v38);
    v42 = v19;

    v43 = v37;

    sub_100047B28(v41, a4, sub_100074CC0, v39);
  }
}