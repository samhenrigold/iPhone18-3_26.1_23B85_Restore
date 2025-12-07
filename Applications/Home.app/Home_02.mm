void AdaptiveTabBarController.menuToolbarManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_10005E9BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v130 = *(v2 - 8);
  v131 = v2;
  v4 = __chkstk_darwin(v2, v3);
  v6 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v121 - v8;
  v136 = type metadata accessor for UUID();
  v132 = *(v136 - 8);
  v11 = __chkstk_darwin(v136, v10);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v135 = &v121 - v15;
  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 selectedHomeAppTabIdentifier];

  v18 = HFHomeAppTabIdentifierHome;
  if (!v17)
  {
    v17 = HFHomeAppTabIdentifierHome;
  }

  v128 = v6;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v137 = v18;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {

    goto LABEL_10;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
LABEL_10:
    if ((*(v1 + OBJC_IVAR___HOAdaptiveTabBarController_hideRooms) & 1) == 0)
    {
      v25 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext);
      if (v25)
      {
        v26 = v25;
        v27 = DashboardContext.room.getter();

        if (v27)
        {
          v28 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_roomsElements);
          if (v28)
          {
            v123 = v28;
            v29 = [v123 _children];
            sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
            v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v133 = v1;
            v122 = v9;
            if (v30 >> 62)
            {
LABEL_43:
              v31 = _CocoaArrayWrapper.endIndex.getter();
              if (v31)
              {
LABEL_16:
                v1 = 0;
                v126 = v30 & 0xFFFFFFFFFFFFFF8;
                v127 = v30 & 0xC000000000000001;
                v124 = v13;
                v125 = v132 + 1;
                while (1)
                {
                  if (v127)
                  {
                    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v33 = v1 + 1;
                    if (__OFADD__(v1, 1))
                    {
LABEL_29:
                      __break(1u);
                      goto LABEL_30;
                    }
                  }

                  else
                  {
                    if (v1 >= *(v126 + 16))
                    {
                      __break(1u);
                      goto LABEL_43;
                    }

                    v32 = *(v30 + 8 * v1 + 32);
                    v33 = v1 + 1;
                    if (__OFADD__(v1, 1))
                    {
                      goto LABEL_29;
                    }
                  }

                  v134 = v32;
                  v34 = [v32 _identifier];
                  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v37 = v36;

                  v38 = v27;
                  v39 = [v27 uniqueIdentifier];
                  v40 = v135;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v41 = UUID.uuidString.getter();
                  v43 = v42;
                  (*v125)(v40, v136);
                  if (v35 == v41 && v37 == v43)
                  {
                    break;
                  }

                  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v45)
                  {
                    goto LABEL_32;
                  }

                  ++v1;
                  v27 = v38;
                  v13 = v124;
                  if (v33 == v31)
                  {
                    goto LABEL_44;
                  }
                }

LABEL_32:

                objc_opt_self();
                v46 = v134;
                v47 = swift_dynamicCastObjCClass();
                v1 = v133;
                v48 = v122;
                if (!v47)
                {

                  v13 = v124;
                  goto LABEL_45;
                }

                v137 = v47;
                if (qword_1000D97C0 != -1)
                {
                  swift_once();
                }

                v49 = v131;
                v50 = sub_10006AF58(v131, qword_1000D9EE0);
                v51 = v130;
                (*(v130 + 16))(v48, v50, v49);
                v52 = v38;
                v53 = Logger.logObject.getter();
                v54 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v53, v54))
                {
                  v55 = swift_slowAlloc();
                  v56 = swift_slowAlloc();
                  v136 = v38;
                  v57 = v56;
                  v138 = swift_slowAlloc();
                  *v55 = 136315650;
                  v58 = sub_10006813C(ObjectType);
                  v60 = sub_10006B744(v58, v59, &v138);

                  *(v55 + 4) = v60;
                  *(v55 + 12) = 2080;
                  *(v55 + 14) = sub_10006B744(0xD000000000000012, 0x800000010009AC50, &v138);
                  *(v55 + 22) = 2112;
                  *(v55 + 24) = v52;
                  *v57 = v136;
                  v61 = v52;
                  _os_log_impl(&_mh_execute_header, v53, v54, "<%s: %s> Room Selected: %@", v55, 0x20u);
                  sub_10005C664(v57, &qword_1000D9C70, &qword_1000936A0);

                  swift_arrayDestroy();

                  v46 = v134;

                  (*(v51 + 8))(v122, v131);
                }

                else
                {

                  (*(v51 + 8))(v48, v49);
                }

                v62 = v123;
                [v123 _setSelectedElement:v137];
                v63 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_homeElements);
                if (v63)
                {
                  v62 = v62;
                  v64 = v63;
                  [v64 _setSelectedElement:v62];
                }

                else
                {
                }

                goto LABEL_106;
              }
            }

            else
            {
              v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v31)
              {
                goto LABEL_16;
              }
            }

LABEL_44:

            v1 = v133;
          }

          else
          {
LABEL_30:
          }
        }
      }
    }

LABEL_45:
    if ((*(v1 + OBJC_IVAR___HOAdaptiveTabBarController_hideCategories) & 1) == 0)
    {
      v65 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext);
      if (v65)
      {
        v66 = v65;
        v67 = dispatch thunk of DashboardContext.accessoryTypeGroup.getter();

        if (v67)
        {
          v68 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements);
          if (v68)
          {
            v123 = v68;
            v69 = [v123 _children];
            sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
            v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v133 = v1;
            if (v70 >> 62)
            {
LABEL_78:
              v71 = _CocoaArrayWrapper.endIndex.getter();
              if (v71)
              {
LABEL_51:
                v1 = 0;
                v134 = (v70 & 0xC000000000000001);
                v127 = v70 & 0xFFFFFFFFFFFFFF8;
                ++v132;
                while (1)
                {
                  if (v134)
                  {
                    v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v73 = v1 + 1;
                    if (__OFADD__(v1, 1))
                    {
LABEL_64:
                      __break(1u);
                      goto LABEL_65;
                    }
                  }

                  else
                  {
                    if (v1 >= *(v127 + 16))
                    {
                      __break(1u);
                      goto LABEL_78;
                    }

                    v72 = *(v70 + 8 * v1 + 32);
                    v73 = v1 + 1;
                    if (__OFADD__(v1, 1))
                    {
                      goto LABEL_64;
                    }
                  }

                  v135 = v72;
                  v74 = [v72 _identifier];
                  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v77 = v76;

                  v78 = v67;
                  v79 = [v67 uniqueIdentifier];
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v80 = UUID.uuidString.getter();
                  v82 = v81;
                  (*v132)(v13, v136);
                  if (v75 == v80 && v77 == v82)
                  {
                    break;
                  }

                  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v84)
                  {
                    goto LABEL_67;
                  }

                  ++v1;
                  v67 = v78;
                  if (v73 == v71)
                  {
                    goto LABEL_79;
                  }
                }

LABEL_67:

                objc_opt_self();
                v85 = v135;
                v86 = swift_dynamicCastObjCClass();
                v1 = v133;
                v88 = v130;
                v87 = v131;
                v62 = v123;
                if (!v86)
                {

                  goto LABEL_80;
                }

                v89 = v86;
                if (qword_1000D97C0 != -1)
                {
                  swift_once();
                }

                v90 = sub_10006AF58(v87, qword_1000D9EE0);
                v91 = v128;
                (*(v88 + 16))(v128, v90, v87);
                v52 = v78;
                v92 = Logger.logObject.getter();
                v93 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v92, v93))
                {
                  v94 = swift_slowAlloc();
                  v137 = v89;
                  v95 = v94;
                  v96 = swift_slowAlloc();
                  v138 = swift_slowAlloc();
                  *v95 = 136315650;
                  v97 = sub_10006813C(ObjectType);
                  v99 = sub_10006B744(v97, v98, &v138);

                  *(v95 + 4) = v99;
                  *(v95 + 12) = 2080;
                  *(v95 + 14) = sub_10006B744(0xD000000000000012, 0x800000010009AC50, &v138);
                  *(v95 + 22) = 2112;
                  *(v95 + 24) = v52;
                  *v96 = v78;
                  v100 = v52;
                  _os_log_impl(&_mh_execute_header, v92, v93, "<%s: %s> Category Selected: %@", v95, 0x20u);
                  sub_10005C664(v96, &qword_1000D9C70, &qword_1000936A0);
                  v1 = v133;

                  swift_arrayDestroy();
                  v62 = v123;

                  v89 = v137;

                  (*(v130 + 8))(v91, v131);
                }

                else
                {

                  (*(v88 + 8))(v91, v87);
                }

                [v62 _setSelectedElement:v89];
                v101 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_homeElements);
                if (v101)
                {
                  v62 = v62;
                  v102 = v101;
                  [v102 _setSelectedElement:v62];
                }

                else
                {
                }

                goto LABEL_106;
              }
            }

            else
            {
              v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v71)
              {
                goto LABEL_51;
              }
            }

LABEL_79:

            v1 = v133;
          }

          else
          {
LABEL_65:
          }
        }
      }
    }

LABEL_80:
    v103 = OBJC_IVAR___HOAdaptiveTabBarController_homeElements;
    v104 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_homeElements);
    if (!v104)
    {
      v52 = 0;
      goto LABEL_107;
    }

    v105 = [v104 _children];
    sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
    v106 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v133 = v1;
    v136 = v103;
    if (v106 >> 62)
    {
LABEL_102:
      v107 = _CocoaArrayWrapper.endIndex.getter();
      if (v107)
      {
LABEL_83:
        v108 = 0;
        while (1)
        {
          if ((v106 & 0xC000000000000001) != 0)
          {
            v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v108 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_101;
            }

            v109 = *(v106 + 8 * v108 + 32);
          }

          v110 = v109;
          v111 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            __break(1u);
LABEL_101:
            __break(1u);
            goto LABEL_102;
          }

          v112 = [v109 _identifier];
          v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v115 = v114;

          if (v113 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v115 == v116)
          {
            break;
          }

          v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v118)
          {
            goto LABEL_98;
          }

          ++v108;
          if (v111 == v107)
          {
            goto LABEL_103;
          }
        }

LABEL_98:

        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        v119 = v133;
        if (!v52)
        {
        }

LABEL_104:
        v120 = *(v119 + v136);
        if (v120)
        {
          v62 = v120;
          [v62 _setSelectedElement:v52];
LABEL_106:
        }

LABEL_107:

        return;
      }
    }

    else
    {
      v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v107)
      {
        goto LABEL_83;
      }
    }

LABEL_103:

    v52 = 0;
    v119 = v133;
    goto LABEL_104;
  }
}

void sub_10005F7E0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 window];

    if (v9 && (v10 = [v9 windowScene], v9, v10))
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 selectedHomeAppTabIdentifier];

      if (!v12)
      {
        v12 = HFHomeAppTabIdentifierHome;
      }

      v13 = *&v1[OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext];
      v14 = v13;
      _s7HomeApp24AdaptiveTabBarControllerC11windowTitle03forD10Identifier16dashboardContextSSSgSo06HFHomebdJ0a_0A2UI09DashboardL0CSgtF_0(v12, v13);
      v16 = v15;

      v17 = v10;
      if (v16)
      {
        v24 = String._bridgeToObjectiveC()();
      }

      else
      {
        v24 = 0;
      }

      [v10 setTitle:v24];

      v22 = v24;
    }

    else
    {
      if (qword_1000D97C0 != -1)
      {
        swift_once();
      }

      v18 = sub_10006AF58(v2, qword_1000D9EE0);
      (*(v3 + 16))(v6, v18, v2);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Not updating window title, no window scene", v21, 2u);
      }

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005FB08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id AdaptiveTabBarController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AdaptiveTabBarController.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2, v3);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v49 - v12;
  v14 = sub_1000578B4(&qword_1000D9F18, &unk_100093360);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v49 - v17;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController] = 0;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___navigator] = 0;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager] = 0;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext] = 0;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_roomsElements] = 0;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements] = 0;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_homeElements] = 0;
  v1[OBJC_IVAR___HOAdaptiveTabBarController_scrollToTop] = 0;
  v19 = OBJC_IVAR___HOAdaptiveTabBarController__viewIsVisible;
  LOBYTE(v54) = 0;
  Published.init(initialValue:)();
  (*(v15 + 32))(&v1[v19], v18, v14);
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_controllers] = &_swiftEmptyDictionarySingleton;
  v20 = OBJC_IVAR___HOAdaptiveTabBarController_initialLoadSignPost;
  *&v1[OBJC_IVAR___HOAdaptiveTabBarController_initialLoadSignPost] = 0;
  v21 = OBJC_IVAR___HOAdaptiveTabBarController_localeAvailability;
  v22 = [objc_opt_self() getAvailabilityDictionary];
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v1[v21] = v23;
  v1[OBJC_IVAR___HOAdaptiveTabBarController_hideCategories] = 0;
  v1[OBJC_IVAR___HOAdaptiveTabBarController_hideRooms] = 0;
  if (qword_1000D97C8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for OSSignposter();
  sub_10006AF58(v24, qword_1000DB850);
  static OSSignpostID.exclusive.getter();
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v28, "AdaptiveTabBarInitialLoad", "", v27, 2u);
  }

  (*(v6 + 16))(v10, v13, v5);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v29 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v6 + 8))(v13, v5);
  *&v1[v20] = v29;

  v30 = ObjectType;
  v57.receiver = v1;
  v57.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v57, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for DashboardPresentationManager();
  v32 = v31;
  v33 = static DashboardPresentationManager.shared.getter();
  v55 = v30;
  v56 = sub_10005E620(&qword_1000D9F78, type metadata accessor for AdaptiveTabBarController, &protocol conformance descriptor for AdaptiveTabBarController);
  v54 = v32;
  v34 = v32;
  dispatch thunk of DashboardPresentationManager.delegate.setter();

  [v34 setDelegate:v34];
  v35 = objc_opt_self();
  v36 = [v35 sharedDispatcher];
  [v36 addHomeObserver:v34];

  v37 = [v35 sharedDispatcher];
  [v37 addUserObserver:v34];

  v38 = [v35 sharedDispatcher];
  [v38 addResidentDeviceObserver:v34];

  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v39 = v53;
  v40 = sub_10006AF58(v53, qword_1000D9EE0);
  v42 = v51;
  v41 = v52;
  (*(v52 + 16))(v51, v40, v39);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    v47 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();
    *(v45 + 4) = v47;
    *v46 = v47;
    _os_log_impl(&_mh_execute_header, v43, v44, "navigator create %@", v45, 0xCu);
    sub_10005C664(v46, &qword_1000D9C70, &qword_1000936A0);
  }

  (*(v41 + 8))(v42, v39);
  return v34;
}

uint64_t sub_1000602AC(void *a1)
{
  v22 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_1000578B4(&qword_1000D9F18, &unk_100093360);
  v16 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController) = 0;
  v8 = OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___navigator;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___navigator) = 0;
  v9 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager) = 0;
  v18 = OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext) = 0;
  v19 = OBJC_IVAR___HOAdaptiveTabBarController_roomsElements;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_roomsElements) = 0;
  v20 = OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements) = 0;
  v21 = OBJC_IVAR___HOAdaptiveTabBarController_homeElements;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_homeElements) = 0;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_scrollToTop) = 0;
  v10 = OBJC_IVAR___HOAdaptiveTabBarController__viewIsVisible;
  v17 = OBJC_IVAR___HOAdaptiveTabBarController__viewIsVisible;
  v24 = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v10, v6, v2);
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_controllers) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_initialLoadSignPost) = 0;
  v11 = OBJC_IVAR___HOAdaptiveTabBarController_localeAvailability;
  v12 = [objc_opt_self() getAvailabilityDictionary];
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(v1 + v11) = v13;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_hideCategories) = 0;
  *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_hideRooms) = 0;

  (*(v3 + 8))(v1 + v17, v16);

  swift_deallocPartialClassInstance();
  return 0;
}

id AdaptiveTabBarController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___HOAdaptiveTabBarController_controllers;
  swift_beginAccess();
  *&v0[v2] = &_swiftEmptyDictionarySingleton;

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::Void __swiftcall AdaptiveTabBarController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000578B4(&unk_1000DA580, &unk_100093370);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v52 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v52 - v14;
  v56.receiver = v1;
  v56.super_class = ObjectType;
  objc_msgSendSuper2(&v56, "viewDidLoad");
  v16 = String._bridgeToObjectiveC()();
  v17 = HFLocalizedString();

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  [v1 setTitle:v17];

  v18 = objc_opt_self();
  v19 = [v18 sharedDispatcher];
  v20 = [v19 hasLoadedHomes];

  if (v20 && (v21 = [v18 sharedDispatcher], v22 = objc_msgSend(v21, "home"), v21, v22))
  {

    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v23 = sub_10006AF58(v7, qword_1000D9EE0);
    (*(v8 + 16))(v12, v23, v7);
    v24 = v1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "%@ viewDidLoad", v27, 0xCu);
      sub_10005C664(v28, &qword_1000D9C70, &qword_1000936A0);
    }

    (*(v8 + 8))(v12, v7);
    sub_100060E7C();
  }

  else
  {
    v55 = v6;
    v30 = AdaptiveTabBarController.baseController.getter();
    v31 = [v30 loadLoadingViewController];

    sub_1000578B4(&unk_1000D9F80, &unk_100093218);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100093150;
    *(v32 + 32) = v31;
    sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
    v33 = v31;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setViewControllers:isa];

    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v35 = sub_10006AF58(v7, qword_1000D9EE0);
    (*(v8 + 16))(v15, v35, v7);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v54 = v7;
      v40 = v39;
      *v38 = 67109378;
      v41 = [v18 sharedDispatcher];
      v53 = v8;
      v42 = v33;
      v43 = v41;
      v44 = [v41 hasLoadedHomes];

      *(v38 + 4) = v44;
      *(v38 + 8) = 2112;
      v45 = [v18 sharedDispatcher];
      v46 = [v45 home];

      *(v38 + 10) = v46;
      *v40 = v46;
      v33 = v42;
      v8 = v53;
      _os_log_impl(&_mh_execute_header, v36, v37, "Showing loading screen and hide sidebar, hasLoadedHomes:%{BOOL}d, hasHome: %@", v38, 0x12u);
      sub_10005C664(v40, &qword_1000D9C70, &qword_1000936A0);
      v7 = v54;
    }

    (*(v8 + 8))(v15, v7);
    v47 = type metadata accessor for TaskPriority();
    v48 = v55;
    (*(*(v47 - 8) + 56))(v55, 1, 1, v47);
    type metadata accessor for MainActor();
    v49 = v1;
    v50 = static MainActor.shared.getter();
    v51 = swift_allocObject();
    v51[2] = v50;
    v51[3] = &protocol witness table for MainActor;
    v51[4] = v49;
    sub_10005D938(0, 0, v48, &unk_100093388, v51);
  }
}

void sub_100060E7C()
{
  v0 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  __chkstk_darwin(v0 - 8, v1);
  v127 = v122 - v2;
  v3 = type metadata accessor for SidebarTabElementBuilder();
  v144 = *(v3 - 8);
  v5 = __chkstk_darwin(v3, v4);
  v145 = v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5, v7);
  v130 = v122 - v9;
  __chkstk_darwin(v8, v10);
  v131 = v122 - v11;
  v12 = type metadata accessor for OSSignpostError();
  v133 = *(v12 - 1);
  v14 = __chkstk_darwin(v12, v13);
  v129 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v128 = v122 - v17;
  updated = type metadata accessor for StateSnapshot.UpdateType();
  v132 = *(updated - 8);
  __chkstk_darwin(updated, v19);
  v21 = (v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for StateSnapshot();
  v140 = *(v22 - 8);
  v141 = v22;
  __chkstk_darwin(v22, v23);
  v138 = v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for OSSignpostID();
  v136 = *(v139 - 1);
  v26 = __chkstk_darwin(v139, v25);
  v135 = v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26, v28);
  v134 = v122 - v30;
  v32 = __chkstk_darwin(v29, v31);
  v34 = v122 - v33;
  __chkstk_darwin(v32, v35);
  v37 = v122 - v36;
  v38 = sub_1000578B4(&qword_1000DA2F8, &qword_100093508);
  __chkstk_darwin(v38 - 8, v39);
  v41 = v122 - v40;
  v42 = objc_opt_self();
  v43 = [v42 sharedDispatcher];
  v143 = [v43 home];

  if (v143)
  {
    v44 = [v42 sharedDispatcher];
    v45 = [v44 homeManager];

    if (v45)
    {
      v46 = [objc_opt_self() isAnIPhone];
      v142 = v3;
      v126 = v45;
      if (v46)
      {
        (*(v140 + 56))(v41, 1, 1, v141);
        v47 = static SidebarTabElementBuilder.createBaseLevelTabs(with:)();
        __chkstk_darwin(v47, v48);
        v49 = v137;
        v122[-4] = v137;
        v122[-3] = v41;
        v122[-2] = v143;
        v50 = sub_10005D7B8(sub_10006E624, &v122[-6], v47);

        sub_10005C664(v41, &qword_1000DA2F8, &qword_100093508);
        if (v50 >> 62)
        {
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);

          _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        }

        v51 = v135;

        sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v49 setViewControllers:isa animated:0];
      }

      else
      {
        if (qword_1000D97C8 != -1)
        {
          swift_once();
        }

        v124 = v12;
        v54 = type metadata accessor for OSSignposter();
        v55 = sub_10006AF58(v54, qword_1000DB850);
        static OSSignpostID.exclusive.getter();
        v122[1] = v55;
        v56 = OSSignposter.logHandle.getter();
        v57 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          v59 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, v57, v59, "AdaptiveTabBarBuildSnapshot", "", v58, 2u);
        }

        v60 = v136;
        v61 = v139;
        (*(v136 + 16))(v34, v37, v139);
        type metadata accessor for OSSignpostIntervalState();
        swift_allocObject();
        v125 = OSSignpostIntervalState.init(id:isOpen:)();
        v123 = *(v60 + 8);
        v123(v37, v61);
        *v21 = v143;
        (*(v132 + 104))(v21, enum case for StateSnapshot.UpdateType.all(_:), updated);
        v132 = *(v140 + 56);
        (v132)(v41, 1, 1, v141);
        sub_1000578B4(&qword_1000DA310, &qword_100093520);
        v62 = type metadata accessor for StateSnapshot.Coverage();
        v63 = *(v62 - 8);
        v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_100093140;
        (*(v63 + 104))(v65 + v64, enum case for StateSnapshot.Coverage.everythingElse(_:), v62);
        v66 = v143;
        sub_10006C838(v65);
        swift_setDeallocating();
        (*(v63 + 8))(v65 + v64, v62);
        swift_deallocClassInstance();
        v67 = v66;
        v68 = v126;
        StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)();
        v69 = OSSignposter.logHandle.getter();
        v70 = v134;
        OSSignpostIntervalState.signpostID.getter();
        v71 = static os_signpost_type_t.end.getter();
        v72 = OS_os_log.signpostsEnabled.getter();
        v12 = v124;
        if (v72)
        {

          v73 = v128;
          checkForErrorAndConsumeState(state:)();

          v74 = v133;
          if ((*(v133 + 88))(v73, v12) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v75 = "[Error] Interval already ended";
          }

          else
          {
            (*(v74 + 8))(v73, v12);
            v75 = "";
          }

          v76 = swift_slowAlloc();
          *v76 = 0;
          v77 = v134;
          v78 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v69, v71, v78, "AdaptiveTabBarBuildSnapshot", v75, v76, 2u);
          v70 = v77;
        }

        v123(v70, v139);
        v79 = v141;
        (*(v140 + 16))(v41, v138, v141);
        (v132)(v41, 0, 1, v79);
        v80 = static SidebarTabElementBuilder.createBaseLevelTabs(with:)();
        __chkstk_darwin(v80, v81);
        v49 = v137;
        v122[-4] = v137;
        v122[-3] = v41;
        v122[-2] = v67;
        v82 = sub_10005D7B8(sub_10006E624, &v122[-6], v80);

        sub_10005C664(v41, &qword_1000DA2F8, &qword_100093508);
        if (v82 >> 62)
        {
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);

          _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        }

        v3 = v142;
        v51 = v135;

        sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        v83 = Array._bridgeToObjectiveC()().super.isa;

        [v49 setViewControllers:v83 animated:0];

        (*(v140 + 8))(v138, v141);
      }

      if (*&v49[OBJC_IVAR___HOAdaptiveTabBarController_initialLoadSignPost])
      {
        v84 = qword_1000D97C8;

        if (v84 != -1)
        {
LABEL_50:
          swift_once();
        }

        v85 = type metadata accessor for OSSignposter();
        sub_10006AF58(v85, qword_1000DB850);
        v86 = OSSignposter.logHandle.getter();
        OSSignpostIntervalState.signpostID.getter();
        v87 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {

          v88 = v129;
          checkForErrorAndConsumeState(state:)();

          v89 = v133;
          if ((*(v133 + 88))(v88, v12) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v90 = "[Error] Interval already ended";
          }

          else
          {
            (*(v89 + 8))(v88, v12);
            v90 = "";
          }

          v91 = swift_slowAlloc();
          *v91 = 0;
          v92 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v86, v87, v92, "AdaptiveTabBarInitialLoad", v90, v91, 2u);
        }

        (*(v136 + 8))(v51, v139);
        v3 = v142;
      }

      v93 = static SidebarTabElementBuilder.createBaseLevelTabs(with:)();
      v94 = *(v93 + 16);
      if (v94)
      {
        v139 = objc_opt_self();
        v95 = 0;
        v96 = v93 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
        v141 = v144 + 16;
        v138 = HFHomeAppTabIdentifierHome;
        v140 = v144 + 8;
        while (1)
        {
          if (v95 >= *(v93 + 16))
          {
            __break(1u);
            goto LABEL_50;
          }

          v12 = *(v144 + 16);
          (v12)(v145, v96 + *(v144 + 72) * v95, v3);
          v97 = SidebarTabElementBuilder.homeAppTabIdentifier.getter();
          v98 = [v139 sharedInstance];
          v99 = [v98 selectedHomeAppTabIdentifier];

          if (!v99)
          {
            v99 = v138;
          }

          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v101;
          if (v100 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v102)
          {
            break;
          }

          v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v104)
          {
            goto LABEL_43;
          }

          ++v95;
          v3 = v142;
          (*v140)(v145, v142);
          if (v94 == v95)
          {
            goto LABEL_41;
          }
        }

LABEL_43:

        v105 = *(v144 + 32);
        v106 = v130;
        v107 = v142;
        v105(v130, v145, v142);
        v108 = v131;
        v105(v131, v106, v107);
        v109 = SidebarTabElementBuilder.id.getter();
        v111 = v110;
        v112 = OBJC_IVAR___HOAdaptiveTabBarController_controllers;
        v113 = v137;
        swift_beginAccess();
        v114 = *&v113[v112];
        if (*(v114 + 16))
        {
          v115 = sub_10007C3F0(v109, v111);
          v117 = v116;

          if (v117)
          {
            v118 = *(*(v114 + 56) + 8 * v115);
            swift_endAccess();
            v119 = v118;
            [v113 setSelectedViewController:v119];
            v120 = v127;
            (v12)(v127, v108, v107);
            v121 = v144 + 56;
            (*(v144 + 56))(v120, 0, 1, v107);
            sub_100063D48(v120);

            sub_10005C664(v120, &unk_1000D9FB0, &qword_1000933F8);
            (*(v121 - 48))(v108, v107);
            return;
          }
        }

        else
        {
        }

        swift_endAccess();

        (*v140)(v108, v107);
      }

      else
      {
LABEL_41:
      }
    }

    else
    {
      v53 = v143;
    }
  }
}

void sub_100062010(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v7 = sub_10006E758(a1, v36, 0);
  [v7 _setTabBarPlacement:2];
  sub_1000623BC(a2, a3);
  v8 = OBJC_IVAR___HOAdaptiveTabBarController_roomsElements;
  v9 = *(v3 + OBJC_IVAR___HOAdaptiveTabBarController_roomsElements);
  *(v3 + OBJC_IVAR___HOAdaptiveTabBarController_roomsElements) = v10;

  sub_100062A9C(a2, a3);
  v11 = OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements;
  v12 = *(v3 + OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements);
  *(v3 + OBJC_IVAR___HOAdaptiveTabBarController_categoriesElements) = v13;

  SidebarTabElementBuilder.id.getter();
  v14 = String._bridgeToObjectiveC()();
  v15 = HFLocalizedString();

  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  SidebarTabElementBuilder.accessibilityIdentifier.getter();
  v16 = *(v4 + v11);
  v34[4] = v7;
  v34[5] = v16;
  v35 = *(v4 + v8);
  v17 = objc_opt_self();
  v18 = v35;
  v19 = v7;
  v20 = v16;
  v21 = String._bridgeToObjectiveC()();
  v22 = [v17 hu_systemTabImageWithNamed:v21 filled:0];

  v23 = objc_allocWithZone(_UITabElementGroup);
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 initWithIdentifier:v24 title:v15 image:v22];

  v26 = 0;
  *&v36[0] = _swiftEmptyArrayStorage;
LABEL_4:
  if (v26 <= 3)
  {
    v27 = 3;
  }

  else
  {
    v27 = v26;
  }

  while (1)
  {
    if (v26 == 3)
    {
      sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v25 _setChildren:isa];

      [v25 _setSidebarAppearance:1];
      [v25 _setDelegate:v4];
      v31 = v25;
      v32 = String._bridgeToObjectiveC()();

      [v31 setAccessibilityIdentifier:v32];

      sub_1000578B4(&qword_1000DA308, &qword_100093518);
      swift_arrayDestroy();
      [v31 _setTabBarPlacement:4];
      v33 = *(v4 + OBJC_IVAR___HOAdaptiveTabBarController_homeElements);
      *(v4 + OBJC_IVAR___HOAdaptiveTabBarController_homeElements) = v31;
      v31;

      sub_10005E9BC();
      return;
    }

    if (v27 == v26)
    {
      break;
    }

    v28 = v34[v26++ + 4];
    if (v28)
    {
      v29 = v28;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v36[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_4;
    }
  }

  __break(1u);
}

void sub_1000623BC(uint64_t a1, void *a2)
{
  v4 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v48 - v6;
  v8 = type metadata accessor for SidebarTabElementBuilder();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000578B4(&qword_1000DA2F8, &qword_100093508);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for StateSnapshot();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005D10C(a1, v15, &qword_1000DA2F8, &qword_100093508);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10005C664(v15, &qword_1000DA2F8, &qword_100093508);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    if ([a2 hf_shouldBlockCurrentRestrictedGuestFromHome] || (objc_msgSend(a2, "hf_shouldBlockCurrentUserFromHome") & 1) != 0)
    {
      (*(v17 + 8))(v20, v16);
    }

    else
    {
      v51 = a2;
      v21 = static SidebarTabElementBuilder.createRooms(with:)();
      v22 = *(v21 + 16);
      v52 = v20;
      v53 = v17;
      if (v22)
      {
        v49 = v7;
        v50 = v16;
        v60 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v23 = v56;
        v57 = *(v55 + 16);
        v24 = *(v55 + 80);
        v48 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v55 + 72);
        v27 = (v55 + 8);
        do
        {
          v57(v11, v25, v23);
          v59 = 0;
          memset(v58, 0, sizeof(v58));
          v28 = sub_10006E758(v11, v58, 0);
          [v28 _setTabBarPlacement:{4, v48}];
          (*v27)(v11, v23);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v25 += v26;
          --v22;
        }

        while (v22);

        v29 = v60;
        v7 = v49;
        v16 = v50;
        v20 = v52;
        v17 = v53;
      }

      else
      {

        v29 = _swiftEmptyArrayStorage;
      }

      v30 = v29[2];
      v31 = v56;
      if (v30)
      {
        v32 = String._bridgeToObjectiveC()();
        v33 = HULocalizedString();

        if (!v33)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = String._bridgeToObjectiveC()();
        }

        v34 = HFHomeAppTabIdentifierHome;
        v35 = v51;
        SidebarTabElementBuilder.init(from:home:)();
        v36 = v55;
        if ((*(v55 + 48))(v7, 1, v31) == 1)
        {
          sub_10005C664(v7, &unk_1000D9FB0, &qword_1000933F8);
          v57 = 0;
        }

        else
        {
          v57 = SidebarTabElementBuilder.accessibilityIdentifier.getter();
          (*(v36 + 8))(v7, v31);
        }

        v37 = objc_allocWithZone(_UITabElementGroup);
        v38 = String._bridgeToObjectiveC()();
        v39 = [v37 initWithIdentifier:v38 title:v33 image:0];

        v40 = 0;
        *&v58[0] = _swiftEmptyArrayStorage;
        v41 = v54;
        while (v30 != v40)
        {
          if (v40 >= v29[2])
          {
            __break(1u);
            return;
          }

          v42 = v29[v40++ + 4];
          if (v42)
          {
            v43 = v42;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v56 = *((*&v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }

        sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v39 _setChildren:isa];

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v45 = 1;
        }

        else
        {
          v45 = 2;
        }

        [v39 _setSidebarAppearance:v45];
        [v39 _setDelegate:v41];
        v46 = v39;
        v47 = String._bridgeToObjectiveC()();

        [v46 setAccessibilityIdentifier:v47];

        (*(v53 + 8))(v52, v16);
      }

      else
      {
        (*(v17 + 8))(v20, v16);
      }
    }
  }
}

void sub_100062A9C(uint64_t a1, void *a2)
{
  v4 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v47 - v6;
  v8 = type metadata accessor for SidebarTabElementBuilder();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000578B4(&qword_1000DA2F8, &qword_100093508);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v47 - v14;
  v16 = type metadata accessor for StateSnapshot();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005D10C(a1, v15, &qword_1000DA2F8, &qword_100093508);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10005C664(v15, &qword_1000DA2F8, &qword_100093508);
    return;
  }

  (*(v17 + 32))(v20, v15, v16);
  if ([a2 hf_currentUserIsRestrictedGuest] || (objc_msgSend(a2, "hf_shouldBlockCurrentUserFromHome") & 1) != 0)
  {
    (*(v17 + 8))(v20, v16);
    return;
  }

  v51 = a2;
  v21 = static SidebarTabElementBuilder.createCategories(with:home:)();
  v59 = _swiftEmptyArrayStorage;
  v22 = *(v21 + 16);
  v52 = v20;
  v53 = v17;
  if (!v22)
  {

    v29 = _swiftEmptyArrayStorage;
    v23 = v56;
    v30 = _swiftEmptyArrayStorage[2];
    if (v30)
    {
      goto LABEL_12;
    }

LABEL_17:
    (*(v17 + 8))(v20, v16);

    return;
  }

  v48 = v7;
  v49 = v16;
  v23 = v56;
  v24 = *(v55 + 16);
  v25 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v50 = v21;
  v26 = v21 + v25;
  v27 = *(v55 + 72);
  v28 = (v55 + 8);
  do
  {
    v24(v11, v26, v23);
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    [sub_10006E758(v11 v57];
    (*v28)(v11, v23);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v59[2] >= v59[3] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 += v27;
    --v22;
    v23 = v56;
  }

  while (v22);
  v29 = v59;

  v7 = v48;
  v16 = v49;
  v20 = v52;
  v17 = v53;
  v30 = v29[2];
  if (!v30)
  {
    goto LABEL_17;
  }

LABEL_12:
  v31 = String._bridgeToObjectiveC()();
  v32 = HULocalizedString();

  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();
  }

  v33 = HFHomeAppTabIdentifierHome;
  v34 = v51;
  SidebarTabElementBuilder.init(from:home:)();
  v35 = v55;
  if ((*(v55 + 48))(v7, 1, v23) == 1)
  {
    sub_10005C664(v7, &unk_1000D9FB0, &qword_1000933F8);
    v56 = 0;
  }

  else
  {
    v56 = SidebarTabElementBuilder.accessibilityIdentifier.getter();
    (*(v35 + 8))(v7, v23);
  }

  v36 = objc_allocWithZone(_UITabElementGroup);
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 initWithIdentifier:v37 title:v32 image:0];

  v39 = 0;
  *&v57[0] = _swiftEmptyArrayStorage;
  v40 = v54;
  while (v30 != v39)
  {
    if (v39 >= v29[2])
    {
      __break(1u);
      return;
    }

    v41 = v29[v39++ + 4];
    if (v41)
    {
      v42 = v41;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55 = *((*&v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 _setChildren:isa];

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v44 = 1;
  }

  else
  {
    v44 = 2;
  }

  [v38 _setSidebarAppearance:v44];
  [v38 _setDelegate:v40];
  v45 = v38;
  v46 = String._bridgeToObjectiveC()();

  [v45 setAccessibilityIdentifier:v46];

  (*(v53 + 8))(v52, v16);
}

uint64_t sub_100063194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v7;
  v4[15] = v6;

  return _swift_task_switch(sub_1000632D8, v7, v6);
}

uint64_t sub_1000632D8()
{
  v21 = v0;
  v1 = [objc_opt_self() sharedDispatcher];
  v2 = [v1 homeFuture];
  v0[16] = v2;

  if (v2)
  {
    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v3 = v0[12];
    v4 = v0[8];
    v5 = v0[9];
    v6 = sub_10006AF58(v4, qword_1000D9EE0);
    v0[17] = v6;
    v7 = *(v5 + 16);
    v0[18] = v7;
    v0[19] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[12];
    v12 = v0[8];
    v13 = v0[9];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_10006B744(0xD000000000000026, 0x800000010009AD60, &v20);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009AD90, &v20);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s %s Waiting for HomeKit to load home to update Tab Bar Appearance", v14, 0x16u);
      swift_arrayDestroy();
    }

    v15 = *(v13 + 8);
    v15(v11, v12);
    v0[20] = v15;
    v16 = swift_task_alloc();
    v0[21] = v16;
    v17 = sub_10005B9DC(0, &qword_1000D9F98, HMHome_ptr);
    *v16 = v0;
    v16[1] = sub_100063600;

    return static NAFutureHelper.continuation<A>(_:)(v2, v17);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_100063600(void *a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = *(v4 + 112);
    v6 = *(v4 + 120);
    v7 = sub_10006397C;
  }

  else
  {

    v5 = *(v4 + 112);
    v6 = *(v4 + 120);
    v7 = sub_100063728;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100063728()
{
  v14 = v0;

  (*(v0 + 144))(*(v0 + 88), *(v0 + 136), *(v0 + 64));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 160);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10006B744(0xD000000000000026, 0x800000010009AD60, &v13);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009AD90, &v13);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s %s homeFuture returned successfully", v7, 0x16u);
    swift_arrayDestroy();
  }

  v4(v5, v6);
  v8 = *(v0 + 128);
  v9 = *(v0 + 56);
  v10 = type metadata accessor for SidebarTabElementBuilder();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100063D48(v9);

  sub_10005C664(v9, &unk_1000D9FB0, &qword_1000933F8);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10006397C()
{
  v31 = v0;
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[10];
  v4 = v0[8];

  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v28 = v0[10];
    v29 = v0[20];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_10006B744(v10, v11, &v30);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error waiting for HomeKit homeFuture: %s", v8, 0xCu);
    sub_1000578FC(v9);

    v29(v28, v7);
  }

  else
  {
    v13 = v0[20];
    v14 = v0[10];
    v15 = v0[8];

    v13(v14, v15);
  }

  (v0[18])(v0[11], v0[17], v0[8]);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[20];
  v20 = v0[11];
  v21 = v0[8];
  if (v18)
  {
    v22 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_10006B744(0xD000000000000026, 0x800000010009AD60, &v30);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009AD90, &v30);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s %s homeFuture returned successfully", v22, 0x16u);
    swift_arrayDestroy();
  }

  v19(v20, v21);
  v23 = v0[16];
  v24 = v0[7];
  v25 = type metadata accessor for SidebarTabElementBuilder();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  sub_100063D48(v24);

  sub_10005C664(v24, &unk_1000D9FB0, &qword_1000933F8);

  v26 = v0[1];

  return v26();
}

id sub_100063D48(uint64_t a1)
{
  v3 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v3, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v45 = v42 - v14;
  v15 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  v17 = __chkstk_darwin(v15 - 8, v16);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v17, v20);
  v23 = v42 - v22;
  __chkstk_darwin(v21, v24);
  v26 = v42 - v25;
  result = [objc_opt_self() isAnIPad];
  if (result)
  {
    v42[1] = v3;
    v43 = v8;
    v44 = v6;
    v46 = v1;
    sub_10005D10C(a1, v23, &unk_1000D9FB0, &qword_1000933F8);
    v28 = type metadata accessor for SidebarTabElementBuilder();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (v30(v23, 1, v28) == 1)
    {
      sub_10006677C(v26);
      if (v30(v23, 1, v28) != 1)
      {
        sub_10005C664(v23, &unk_1000D9FB0, &qword_1000933F8);
      }
    }

    else
    {
      (*(v29 + 32))(v26, v23, v28);
      (*(v29 + 56))(v26, 0, 1, v28);
    }

    sub_10005D10C(v26, v19, &unk_1000D9FB0, &qword_1000933F8);
    if (v30(v19, 1, v28) == 1)
    {
      sub_10005C664(v19, &unk_1000D9FB0, &qword_1000933F8);
      v31 = v43;
    }

    else
    {
      v32 = SidebarTabElementBuilder.shouldUseCustomTabBarAppearance.getter();
      (*(v29 + 8))(v19, v28);
      v31 = v43;
      if (v32)
      {
        if (qword_1000D97C0 != -1)
        {
          swift_once();
        }

        v33 = sub_10006AF58(v7, qword_1000D9EE0);
        v34 = v45;
        (*(v31 + 16))(v45, v33, v7);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "Setting user interface style to dark", v37, 2u);
        }

        (*(v31 + 8))(v34, v7);
        UIViewController.traitOverrides.getter();
        UIMutableTraits.userInterfaceStyle.setter();
        goto LABEL_19;
      }
    }

    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v38 = sub_10006AF58(v7, qword_1000D9EE0);
    (*(v31 + 16))(v12, v38, v7);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Removing trait overrides", v41, 2u);
    }

    (*(v31 + 8))(v12, v7);
    type metadata accessor for UITraitUserInterfaceStyle();
    UIViewController.traitOverrides.getter();
    UITraitOverrides.remove(_:)();
LABEL_19:
    UIViewController.traitOverrides.setter();
    return sub_10005C664(v26, &unk_1000D9FB0, &qword_1000933F8);
  }

  return result;
}

void sub_100064314(uint64_t a1@<X1>, void *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X2>, void *a5@<X3>)
{
  sub_100064688(a3, a1, a4, a5);
  v7 = v6;
  v8 = SidebarTabElementBuilder.id.getter();
  v10 = v9;
  v11 = OBJC_IVAR___HOAdaptiveTabBarController_controllers;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (!*(v12 + 16))
  {

LABEL_5:
    swift_endAccess();
    SidebarTabElementBuilder.navigationBarClass.getter();
    v18 = [objc_allocWithZone(HUDashboardNavigationController) initWithNavigationBarClass:swift_getObjCClassFromMetadata() toolbarClass:0];
    [v18 setNavigationBarHidden:SidebarTabElementBuilder.shouldHideNavigationBar.getter() & 1 animated:0];
    [v18 setShouldUseCustomTabBarAppearance:SidebarTabElementBuilder.shouldUseCustomTabBarAppearance.getter() & 1];
    v19 = SidebarTabElementBuilder.id.getter();
    v21 = v20;
    swift_beginAccess();
    v17 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(a1 + v11);
    *(a1 + v11) = 0x8000000000000000;
    sub_10006C180(v17, v19, v21, isUniquelyReferenced_nonNull_native);

    *(a1 + v11) = v35;
    swift_endAccess();
    v23 = SidebarTabElementBuilder.viewController.getter();
    if (!v23)
    {

      v17 = 0;
      goto LABEL_16;
    }

    v24 = v23;
    v25 = SidebarTabElementBuilder.homeAppTabIdentifier.getter();
    v26 = [objc_opt_self() sharedInstance];
    v27 = [v26 selectedHomeAppTabIdentifier];

    if (!v27)
    {
      v27 = HFHomeAppTabIdentifierHome;
    }

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        [v17 pushViewController:v24 animated:0];
        goto LABEL_15;
      }
    }

LABEL_15:
    v33 = v17;
    [v33 _uip_setTabElement:v7];

    goto LABEL_16;
  }

  v13 = sub_10007C3F0(v8, v10);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *(*(v12 + 56) + 8 * v13);
  swift_endAccess();
  v17 = v16;
  [v17 _uip_setTabElement:v7];

LABEL_16:
  *a2 = v17;
}

void sub_100064688(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = SidebarTabElementBuilder.id.getter();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      [sub_10006E758(a1 v13];
      return;
    }
  }

  sub_100062010(a1, a3, a4);
}

Swift::Void __swiftcall AdaptiveTabBarController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewDidAppear:", a1);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  static Published.subscript.setter();
  v4 = AdaptiveTabBarController.baseController.getter();
  [v4 reloadInitialSetup];
}

Swift::Void __swiftcall AdaptiveTabBarController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = 0;
  v4 = v1;
  static Published.subscript.setter();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "viewDidDisappear:", a1);
}

UINavigationController_optional __swiftcall AdaptiveTabBarController.selectCurrentTab()()
{
  v1 = [v0 navigationController];

  v2 = v1;
  result.value.super.super.super.isa = v2;
  result.is_nil = v3;
  return result;
}

void _s7HomeApp24AdaptiveTabBarControllerC4home_9didUpdate3forySo6HMHomeC_So6HMRoomCSo11HMAccessoryCtF_0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for StateSnapshot();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000578B4(&qword_1000DA2F8, &qword_100093508);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v24 - v9;
  v11 = objc_opt_self();
  v12 = [v11 sharedDispatcher];
  v24[0] = [v12 home];

  if (v24[0])
  {
    v13 = [v11 sharedDispatcher];
    v14 = [v13 homeManager];

    if (v14)
    {
      if ([objc_opt_self() isAnIPhone])
      {
        (*(v3 + 56))(v10, 1, 1, v2);
        v15 = static SidebarTabElementBuilder.createBaseLevelTabs(with:)();
        __chkstk_darwin(v15, v16);
        v24[-4] = v1;
        v24[-3] = v10;
        v24[-2] = v24[0];
        v17 = sub_10005D7B8(sub_10006E624, &v24[-6], v15);

        sub_10005C664(v10, &qword_1000DA2F8, &qword_100093508);
        if (v17 >> 62)
        {
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);

          _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        }

        sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v1 setViewControllers:isa animated:0];
      }

      else
      {
        sub_100064FF4(v24[0], v14, v6);
        (*(v3 + 16))(v10, v6, v2);
        (*(v3 + 56))(v10, 0, 1, v2);
        v20 = static SidebarTabElementBuilder.createBaseLevelTabs(with:)();
        __chkstk_darwin(v20, v21);
        v24[-4] = v1;
        v24[-3] = v10;
        v24[-2] = v24[0];
        v22 = sub_10005D7B8(sub_10006E3C8, &v24[-6], v20);

        sub_10005C664(v10, &qword_1000DA2F8, &qword_100093508);
        if (v22 >> 62)
        {
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);

          _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        }

        sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
        v23 = Array._bridgeToObjectiveC()().super.isa;

        [v1 setViewControllers:v23 animated:0];

        (*(v3 + 8))(v6, v2);
      }
    }

    else
    {
      v19 = v24[0];
    }
  }
}

uint64_t sub_100064FF4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v60 = a2;
  v61 = a3;
  v3 = type metadata accessor for OSSignpostError();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3, v4);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000578B4(&qword_1000DA2F8, &qword_100093508);
  __chkstk_darwin(v6 - 8, v7);
  v58 = &v52 - v8;
  updated = type metadata accessor for StateSnapshot.UpdateType();
  v10 = *(updated - 8);
  __chkstk_darwin(updated, v11);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for OSSignpostID();
  v14 = *(v63 - 8);
  v16 = __chkstk_darwin(v63, v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v52 - v21;
  __chkstk_darwin(v20, v23);
  v25 = &v52 - v24;
  if (qword_1000D97C8 != -1)
  {
    swift_once();
  }

  v62 = v18;
  v26 = type metadata accessor for OSSignposter();
  v27 = sub_10006AF58(v26, qword_1000DB850);
  static OSSignpostID.exclusive.getter();
  v56 = v27;
  v28 = OSSignposter.logHandle.getter();
  v29 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, v29, v31, "AdaptiveTabBarFollowUpBuildSnapshot", "", v30, 2u);
  }

  v32 = v63;
  (*(v14 + 16))(v22, v25, v63);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v57 = *(v14 + 8);
  v57(v25, v32);
  v33 = v59;
  *v13 = v59;
  (*(v10 + 104))(v13, enum case for StateSnapshot.UpdateType.all(_:), updated);
  v34 = type metadata accessor for StateSnapshot();
  (*(*(v34 - 8) + 56))(v58, 1, 1, v34);
  sub_1000578B4(&qword_1000DA310, &qword_100093520);
  v35 = type metadata accessor for StateSnapshot.Coverage();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100093140;
  (*(v36 + 104))(v38 + v37, enum case for StateSnapshot.Coverage.everythingElse(_:), v35);
  v39 = v33;
  sub_10006C838(v38);
  swift_setDeallocating();
  (*(v36 + 8))(v38 + v37, v35);
  swift_deallocClassInstance();
  v40 = v39;
  v41 = v60;
  StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)();
  v42 = OSSignposter.logHandle.getter();
  v43 = v62;
  OSSignpostIntervalState.signpostID.getter();
  v44 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v45 = v53;
    checkForErrorAndConsumeState(state:)();

    v47 = v54;
    v46 = v55;
    if ((*(v54 + 88))(v45, v55) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v48 = "[Error] Interval already ended";
    }

    else
    {
      (*(v47 + 8))(v45, v46);
      v48 = "";
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, v44, v50, "AdaptiveTabBarFollowUpBuildSnapshot", v48, v49, 2u);
  }

  return (v57)(v43, v63);
}

Swift::Void __swiftcall AdaptiveTabBarController.switchTo(room:)(HMRoom room)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v8 = sub_10006AF58(v3, qword_1000D9EE0);
  (*(v4 + 16))(v7, v8, v3);
  v9 = room.super.isa;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21[0] = v20;
    *v12 = 136315650;
    v21[1] = ObjectType;
    swift_getMetatypeMetadata();
    v13 = String.init<A>(describing:)();
    v15 = sub_10006B744(v13, v14, v21);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10006B744(0x6F54686374697773, 0xEF293A6D6F6F7228, v21);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    v16 = v19;
    *v19 = v9;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "<%s: %s> show room: %@", v12, 0x20u);
    sub_10005C664(v16, &qword_1000D9C70, &qword_1000936A0);

    swift_arrayDestroy();
  }

  (*(v4 + 8))(v7, v3);
  v18 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();
}

void AdaptiveTabBarController.switchTo(accessoryTypeGroup:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v10 = sub_10006AF58(v5, qword_1000D9EE0);
  (*(v6 + 16))(v9, v10, v5);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[1] = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    v26[0] = v25[0];
    v26[1] = ObjectType;
    *v15 = 136315650;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = sub_10006B744(v17, v18, v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_10006B744(0xD00000000000001DLL, 0x800000010009A6B0, v26);
    *(v15 + 22) = 2112;
    *(v15 + 24) = v11;
    *v16 = v11;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "<%s: %s> show accessory type group: %@", v15, 0x20u);
    sub_10005C664(v16, &qword_1000D9C70, &qword_1000936A0);

    swift_arrayDestroy();
  }

  (*(v6 + 8))(v9, v5);
  v21 = [objc_opt_self() sharedDispatcher];
  v22 = [v21 home];

  if (v22)
  {
    v23 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();
    v24 = [v23 showAccessoryTypeGroup:v11 forHome:v22 animated:1];
  }
}

Swift::Void __swiftcall AdaptiveTabBarController.switchTo(home:)(HMHome home)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v8 = sub_10006AF58(v3, qword_1000D9EE0);
  (*(v4 + 16))(v7, v8, v3);
  v9 = home.super.isa;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21[0] = v20;
    *v12 = 136315650;
    v21[1] = ObjectType;
    swift_getMetatypeMetadata();
    v13 = String.init<A>(describing:)();
    v15 = sub_10006B744(v13, v14, v21);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10006B744(0x6F54686374697773, 0xEF293A656D6F6828, v21);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    v16 = v19;
    *v19 = v9;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "<%s: %s> Switching to home %@", v12, 0x20u);
    sub_10005C664(v16, &qword_1000D9C70, &qword_1000936A0);

    swift_arrayDestroy();
  }

  (*(v4 + 8))(v7, v3);
  v18 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();
}

uint64_t sub_100066074()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v56 - v13;
  __chkstk_darwin(v12, v15);
  v17 = &v56 - v16;
  sub_10006677C(&v56 - v16);
  v61 = v17;
  sub_10005D10C(v17, v14, &unk_1000D9FB0, &qword_1000933F8);
  v18 = type metadata accessor for SidebarTabElementBuilder();
  v19 = *(v18 - 8);
  v59 = *(v19 + 48);
  v20 = v59(v14, 1, v18);
  v60 = v19;
  if (v20 == 1)
  {
    sub_10005C664(v14, &unk_1000D9FB0, &qword_1000933F8);
    v21 = HFHomeAppTabIdentifierHome;
  }

  else
  {
    v21 = SidebarTabElementBuilder.homeAppTabIdentifier.getter();
    (*(v19 + 8))(v14, v18);
  }

  v22 = objc_opt_self();
  v23 = [v22 sharedInstance];
  [v23 setSelectedHomeAppTabIdentifier:v21];

  v24 = v62;
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v25 = sub_10006AF58(v2, qword_1000D9EE0);
  (*(v3 + 16))(v24, v25, v2);
  v26 = v1;
  v27 = Logger.logObject.getter();
  v28 = v24;
  v29 = v3;
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v30))
  {
    v56 = v29;
    v57 = v2;
    v31 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v31 = 136315650;
    v64 = ObjectType;
    swift_getMetatypeMetadata();
    v32 = String.init<A>(describing:)();
    v34 = sub_10006B744(v32, v33, &v63);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_10006B744(0xD000000000000018, 0x800000010009ABB0, &v63);
    *(v31 + 22) = 2080;
    v35 = [v22 sharedInstance];
    v36 = [v35 selectedHomeAppTabIdentifier];

    if (!v36)
    {
      v36 = HFHomeAppTabIdentifierHome;
    }

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = sub_10006B744(v37, v39, &v63);

    *(v31 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v27, v30, "<%s: %s> Persisting last selected tab %s", v31, 0x20u);
    swift_arrayDestroy();

    (*(v56 + 8))(v62, v57);
  }

  else
  {

    (*(v29 + 8))(v28, v2);
  }

  v41 = v61;
  sub_10005D10C(v61, v10, &unk_1000D9FB0, &qword_1000933F8);
  v42 = v59(v10, 1, v18);
  v43 = v60;
  if (v42 != 1)
  {
    v44 = SidebarTabElementBuilder.homeAppTabIdentifier.getter();
    (*(v43 + 8))(v10, v18);
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
    if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v47 == v48)
    {
    }

    else
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v49 & 1) == 0)
      {
        return sub_10005C664(v41, &unk_1000D9FB0, &qword_1000933F8);
      }
    }

    v50 = objc_opt_self();
    sub_1000578B4(&qword_1000DA2D8, &qword_1000934E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100093140;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v52;
    v53 = [objc_allocWithZone(NSNumber) initWithInteger:1];
    *(inited + 72) = sub_10005B9DC(0, &unk_1000DA2E0, NSNumber_ptr);
    *(inited + 48) = v53;
    sub_100059158(inited);
    swift_setDeallocating();
    sub_10005C664(inited + 32, &qword_1000D9EC8, &qword_1000934F0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v50 sendEvent:10 withData:isa];

    return sub_10005C664(v41, &unk_1000D9FB0, &qword_1000933F8);
  }

  sub_10005C664(v10, &unk_1000D9FB0, &qword_1000933F8);
  return sub_10005C664(v41, &unk_1000D9FB0, &qword_1000933F8);
}

uint64_t sub_10006677C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v26 - v11;
  v13 = [v2 selectedIndex];
  v14 = [objc_opt_self() sharedDispatcher];
  v15 = [v14 home];

  if (!v15)
  {
    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v20 = sub_10006AF58(v4, qword_1000D9EE0);
    (*(v5 + 16))(v9, v20, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Adapative Tabbar don't have a current Home", v23, 2u);
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_13;
  }

  if (v13 == NSNotFound.getter())
  {
    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v16 = sub_10006AF58(v4, qword_1000D9EE0);
    (*(v5 + 16))(v12, v16, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v17, v18, "UITabBarController doesn't have a selected tab: %ld", v19, 0xCu);
    }

    (*(v5 + 8))(v12, v4);
LABEL_13:
    v24 = type metadata accessor for SidebarTabElementBuilder();
    return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }

  result = static SidebarTabElementBuilder.DefaultTabs.getter();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v13 >= *(result + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  *(result + 8 * v13 + 32);

  return SidebarTabElementBuilder.init(from:home:)();
}

id AdaptiveTabBarController.__allocating_init(tabs:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  sub_10005B9DC(0, &qword_1000D9F90, UITab_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithTabs:isa];

  return v4;
}

id AdaptiveTabBarController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_100066D04@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

UIViewController_optional __swiftcall AdaptiveTabBarController.currentViewController()()
{
  v1 = [v0 viewControllers];
  if (v1)
  {
    v3 = v1;
    sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (v5)
      {
LABEL_4:
        v6 = __OFSUB__(v5, 1);
        v1 = v5 - 1;
        if (v6)
        {
          __break(1u);
        }

        else if ((v4 & 0xC000000000000001) == 0)
        {
          if ((v1 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v1 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v7 = *(v4 + 8 * v1 + 32);
LABEL_9:
            v8 = v7;

            v1 = v8;
            goto LABEL_17;
          }

          __break(1u);
          goto LABEL_17;
        }

        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_9;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v1 = 0;
  }

LABEL_17:
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

Swift::Void __swiftcall AdaptiveTabBarController.setLoading(_:)(UIViewController a1)
{
  sub_1000578B4(&unk_1000D9F80, &unk_100093218);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100093150;
  *(v3 + 32) = a1;
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  v4 = a1.super.super.isa;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setViewControllers:isa];
}

Swift::Void __swiftcall AdaptiveTabBarController.didLoad(_:)(HMHome a1)
{
  v2 = v1;
  _s7HomeApp24AdaptiveTabBarControllerC4home_9didUpdate3forySo6HMHomeC_So6HMRoomCSo11HMAccessoryCtF_0();
  v4 = OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext;
  v5 = *(v1 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext);
  if (v5)
  {
    v6 = v5;
    v7 = DashboardContext.home.getter();

    sub_10005B9DC(0, &qword_1000D9F98, HMHome_ptr);
    v8 = a1.super.isa;
    LOBYTE(v6) = static NSObject.== infix(_:_:)();

    if (v6)
    {
      return;
    }
  }

  type metadata accessor for DashboardContext();
  v9 = dispatch thunk of static DashboardContext.homeDashboard(for:)();
  v10 = v9;
  v11 = *(v2 + v4);
  *(v2 + v4) = v9;
  if (v11)
  {
    v12 = v9;
    v15 = v11;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = v9;
    v15 = 0;
  }

  sub_10005E9BC();
  sub_10005F7E0();
  v12 = v10;
LABEL_8:
}

uint64_t sub_1000671CC(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for SidebarTabElementBuilder();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[24] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[25] = v5;
  v2[26] = v4;

  return _swift_task_switch(sub_100067310, v5, v4);
}

uint64_t sub_100067310()
{
  v1 = [objc_opt_self() sharedDispatcher];
  v2 = [v1 home];
  *(v0 + 216) = v2;

  if (!v2)
  {

    [objc_opt_self() hf_errorWithCode:59];
    swift_willThrow();
    goto LABEL_22;
  }

  v40 = v2;
  v3 = static SidebarTabElementBuilder.createBaseLevelTabs(with:)();
  v5 = v3;
  v6 = v3[2];
  if (!v6)
  {
LABEL_11:

    [objc_opt_self() hf_errorWithCode:30];
    swift_willThrow();

LABEL_22:

    v37 = *(v0 + 8);

    return v37();
  }

  v7 = 0;
  v8 = *(v0 + 160);
  v41 = (v8 + 8);
  while (1)
  {
    if (v7 >= v5[2])
    {
      __break(1u);
      goto LABEL_30;
    }

    (*(v8 + 16))(*(v0 + 168), v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7, *(v0 + 152));
    v9 = SidebarTabElementBuilder.homeAppTabIdentifier.getter();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_14;
    }

    ++v7;
    v3 = (*v41)(*(v0 + 168), *(v0 + 152));
    if (v6 == v7)
    {
      goto LABEL_11;
    }
  }

LABEL_14:

  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = *(v0 + 152);
  v19 = *(v0 + 136);
  v20 = *(*(v0 + 160) + 32);
  v20(v17, *(v0 + 168), v18);
  v20(v16, v17, v18);
  v21 = SidebarTabElementBuilder.id.getter();
  v23 = v22;
  v24 = OBJC_IVAR___HOAdaptiveTabBarController_controllers;
  swift_beginAccess();
  v25 = *(v19 + v24);
  if (!*(v25 + 16))
  {

    goto LABEL_21;
  }

  v26 = sub_10007C3F0(v21, v23);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_21:
    v35 = *(v0 + 184);
    v36 = *(v0 + 152);
    swift_endAccess();

    [objc_opt_self() hf_errorWithCode:30];
    swift_willThrow();

    (*v41)(v35, v36);
    goto LABEL_22;
  }

  v29 = *(v0 + 136);
  v30 = *(*(v25 + 56) + 8 * v26);
  *(v0 + 224) = v30;
  swift_endAccess();
  v31 = v30;
  v32 = [v29 presentedViewController];
  *(v0 + 232) = v32;
  if (!v32)
  {
    v3 = [*(v0 + 224) hu_preloadContent];
    *(v0 + 248) = v3;
    if (v3)
    {
      v38 = v3;
      v39 = swift_task_alloc();
      *(v0 + 256) = v39;
      v4 = sub_10005B9DC(0, &qword_1000DA2F0, NSNull_ptr);
      *v39 = v0;
      v39[1] = sub_100067A20;
      v3 = v38;

      return static NAFutureHelper.continuation<A>(_:)(v3, v4);
    }

LABEL_30:
    __break(1u);
    return static NAFutureHelper.continuation<A>(_:)(v3, v4);
  }

  v33 = swift_task_alloc();
  *(v0 + 240) = v33;
  *v33 = v0;
  v33[1] = sub_10006781C;

  return sub_10005DCC0(0);
}

uint64_t sub_10006781C()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return _swift_task_switch(sub_10006793C, v3, v2);
}

uint64_t sub_10006793C()
{
  v1 = [*(v0 + 224) hu_preloadContent];
  *(v0 + 248) = v1;
  if (v1)
  {
    v3 = v1;
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    v2 = sub_10005B9DC(0, &qword_1000DA2F0, NSNull_ptr);
    *v4 = v0;
    v4[1] = sub_100067A20;
    v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return static NAFutureHelper.continuation<A>(_:)(v1, v2);
}

uint64_t sub_100067A20(void *a1)
{
  v4 = *v2;
  v4[33] = v1;

  v5 = v4[31];
  if (v1)
  {

    v6 = v4[25];
    v7 = v4[26];
    v8 = sub_100068078;
  }

  else
  {

    v6 = v4[25];
    v7 = v4[26];
    v8 = sub_100067B68;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100067B68()
{

  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 selectedHomeAppTabIdentifier];

  if (!v3)
  {
    v3 = HFHomeAppTabIdentifierHome;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    goto LABEL_14;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_14:
    v24 = v0[27];
    (*(v0[20] + 8))(v0[23], v0[19]);

    goto LABEL_23;
  }

  v11 = v0[16];
  v10 = v0[17];
  v12 = [v1 sharedInstance];
  [v12 setSelectedHomeAppTabIdentifier:v11];

  v13 = [v10 viewControllers];
  if (v13)
  {
    v14 = v13;
    v15 = v0[28];
    v16 = v0[17];
    sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v0[15] = v15;
    v18 = swift_task_alloc();
    *(v18 + 16) = v0 + 15;
    v19 = v15;
    sub_100077D70(sub_10006E310, v18, v17);

    [v16 setSelectedViewController:v19];
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {

LABEL_16:
    sub_10005E9BC();
    goto LABEL_17;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_16;
  }

LABEL_17:
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {

LABEL_21:
    v31 = objc_opt_self();
    sub_1000578B4(&qword_1000DA2D8, &qword_1000934E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100093140;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v33;
    v34 = [objc_allocWithZone(NSNumber) initWithInteger:1];
    *(inited + 72) = sub_10005B9DC(0, &unk_1000DA2E0, NSNumber_ptr);
    *(inited + 48) = v34;
    sub_100059158(inited);
    swift_setDeallocating();
    sub_10005C664(inited + 32, &qword_1000D9EC8, &qword_1000934F0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v31 sendEvent:10 withData:isa];

    goto LABEL_22;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_21;
  }

LABEL_22:
  v36 = v0[27];
  v37 = v0[23];
  v38 = v0[19];
  v39 = v0[20];
  v40 = v0[18];
  (*(v39 + 56))(v40, 1, 1, v38);
  sub_100063D48(v40);
  sub_10005C664(v40, &unk_1000D9FB0, &qword_1000933F8);
  sub_10005F7E0();

  (*(v39 + 8))(v37, v38);
LABEL_23:

  v41 = v0[1];
  v42 = v0[28];

  return v41(v42);
}

uint64_t sub_100068078()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[23];
  v4 = v0[19];
  v5 = v0[20];

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t AdaptiveTabBarController.selectTab(withIdentifier:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  sub_10005B9DC(0, &qword_1000D9FA0, UINavigationController_ptr);
  v4 = a1;
  v5 = static NAFutureHelper.futureOnMainActor<A>(descriptor:with:)();

  return v5;
}

uint64_t sub_10006822C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_1000682C4, v4, v3);
}

uint64_t sub_1000682C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (!Strong)
  {
LABEL_4:

    [objc_opt_self() hf_errorWithCode:37];
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }

  v2 = Strong;
  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_4;
  }

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_100068404;
  v6 = v0[6];

  return sub_1000671CC(v6);
}

uint64_t sub_100068404(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1000685A0;
  }

  else
  {
    v4[13] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_10006852C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10006852C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_1000685A0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

id AdaptiveTabBarController.wantsAccessoryControlsCard.getter()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result traitCollection];

    if ([v3 userInterfaceIdiom])
    {
      v4 = [v3 horizontalSizeClass];

      return (v4 != 1);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AdaptiveTabBarController._tabElementGroup(_:didSelect:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v218 = sub_1000578B4(&qword_1000D9FA8, &qword_1000933E8);
  v8 = __chkstk_darwin(v218, v7);
  v212 = &v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v211 = &v207 - v11;
  v12 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v14 = __chkstk_darwin(v12 - 8, v13);
  v209 = &v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14, v16);
  v216 = &v207 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v217 = &v207 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v220 = &v207 - v24;
  v26 = __chkstk_darwin(v23, v25);
  v208 = &v207 - v27;
  v29 = __chkstk_darwin(v26, v28);
  v214 = &v207 - v30;
  v32 = __chkstk_darwin(v29, v31);
  v215 = &v207 - v33;
  __chkstk_darwin(v32, v34);
  v219 = &v207 - v35;
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  v39 = __chkstk_darwin(v36, v38);
  v224 = &v207 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v39, v41);
  v210 = &v207 - v43;
  __chkstk_darwin(v42, v44);
  v223 = &v207 - v45;
  v46 = type metadata accessor for Logger();
  v47 = *(v46 - 8);
  v49 = __chkstk_darwin(v46, v48);
  v226.super.isa = (&v207 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = __chkstk_darwin(v49, v51);
  v222 = (&v207 - v53);
  v55 = __chkstk_darwin(v52, v54);
  v221 = (&v207 - v56);
  v58 = __chkstk_darwin(v55, v57);
  v213 = (&v207 - v59);
  __chkstk_darwin(v58, v60);
  v62 = &v207 - v61;
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v227 = v3;
  v63 = sub_10006AF58(v46, qword_1000D9EE0);
  v64 = *(v47 + 16);
  v230 = v63;
  v231 = v64;
  v232 = v47 + 16;
  (v64)(v62);
  v65 = a1;
  v66 = a2;
  v67 = Logger.logObject.getter();
  v235 = v46;
  v68 = v65;
  v69 = v67;
  v70 = static os_log_type_t.default.getter();

  v71 = os_log_type_enabled(v69, v70);
  v72 = &HFUserObserver__prots;
  v233 = v36;
  v234 = v47;
  v225 = ObjectType;
  if (v71)
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v228 = v37;
    v75 = v74;
    v76 = swift_slowAlloc();
    v229 = v68;
    v236 = v76;
    v237 = ObjectType;
    *v73 = 136315906;
    swift_getMetatypeMetadata();
    v77 = String.init<A>(describing:)();
    v79 = sub_10006B744(v77, v78, &v236);

    *(v73 + 4) = v79;
    *(v73 + 12) = 2080;
    *(v73 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009A720, &v236);
    *(v73 + 22) = 2080;
    v80 = [v229 _identifier];
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    v84 = sub_10006B744(v81, v83, &v236);
    v72 = &HFUserObserver__prots;

    *(v73 + 24) = v84;
    *(v73 + 32) = 2112;
    *(v73 + 34) = v66;
    *v75 = v66;
    v85 = v66;
    v86 = v66;
    _os_log_impl(&_mh_execute_header, v69, v70, "<%s: %s> group = %s | element = %@", v73, 0x2Au);
    sub_10005C664(v75, &qword_1000D9C70, &qword_1000936A0);
    v37 = v228;

    swift_arrayDestroy();
    v68 = v229;

    v47 = v234;
  }

  else
  {
    v85 = v66;
  }

  v87 = *(v47 + 8);
  v88 = v235;
  v87(v62, v235);
  v89 = [v68 v72[487].count];
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v72;
  v93 = v92;

  v94 = sub_1000730C8(v90, v93);
  if (v94 > 1)
  {
    v101 = v85;
    if (v94 != 2)
    {
      isa = v226.super.isa;
      v231(v226.super.isa, v230, v88);
      v111 = v85;
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v236 = swift_slowAlloc();
        *v114 = 136315650;
        v237 = v225;
        swift_getMetatypeMetadata();
        v116 = String.init<A>(describing:)();
        v118 = sub_10006B744(v116, v117, &v236);

        *(v114 + 4) = v118;
        *(v114 + 12) = 2080;
        *(v114 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009A720, &v236);
        *(v114 + 22) = 2112;
        *(v114 + 24) = v111;
        *v115 = v111;
        v119 = v111;
        _os_log_impl(&_mh_execute_header, v112, v113, "<%s: %s> is other: %@", v114, 0x20u);
        sub_10005C664(v115, &qword_1000D9C70, &qword_1000936A0);

        swift_arrayDestroy();

        v120 = v226.super.isa;
LABEL_40:
        v87(v120, v88);
        return;
      }

LABEL_39:

      v120 = isa;
      goto LABEL_40;
    }

    v102 = [v85 v91[487].count];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v103 = v220;
    UUID.init(uuidString:)();

    v104 = *(v37 + 48);
    v105 = v233;
    if (v104(v103, 1, v233) == 1)
    {
      sub_10005C664(v103, &unk_1000D9E30, &qword_1000933F0);
      goto LABEL_34;
    }

    v229 = v101;
    v130 = *(v37 + 32);
    v131 = v224;
    v223 = (v37 + 32);
    v221 = v130;
    v130(v224, v103, v105);
    type metadata accessor for DataModel();
    v132 = static DataModel.shared.getter();
    v133 = UUID._bridgeToObjectiveC()().super.isa;
    v134 = [v132 roomFor:v133];

    v226.super.isa = v134;
    if (!v134)
    {
      (*(v37 + 8))(v131, v105);
      v101 = v229;
LABEL_34:
      isa = v222;
      v231(v222, v230, v88);
      v162 = v101;
      v112 = Logger.logObject.getter();
      v163 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v112, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v236 = swift_slowAlloc();
        *v164 = 136315650;
        v237 = v225;
        swift_getMetatypeMetadata();
        v166 = String.init<A>(describing:)();
        v168 = sub_10006B744(v166, v167, &v236);

        *(v164 + 4) = v168;
        *(v164 + 12) = 2080;
        *(v164 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009A720, &v236);
        *(v164 + 22) = 2112;
        *(v164 + 24) = v162;
        *v165 = v162;
        v169 = v162;
        _os_log_impl(&_mh_execute_header, v112, v163, "<%s: %s> element = %@ | HMRoom = nil", v164, 0x20u);
        sub_10005C664(v165, &qword_1000D9C70, &qword_1000936A0);

        swift_arrayDestroy();

        v120 = v222;
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v228 = v37;
    v135 = *(v227 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext);
    if (v135)
    {
      v136 = v135;
      v137 = DashboardContext.room.getter();

      v138 = v224;
      v139 = v217;
      v140 = v216;
      if (v137)
      {
        v141 = [v137 uniqueIdentifier];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v142 = 0;
      }

      else
      {
        v142 = 1;
      }
    }

    else
    {
      v142 = 1;
      v138 = v224;
      v139 = v217;
      v140 = v216;
    }

    v180 = v228;
    v181 = *(v228 + 56);
    v182 = v233;
    v181(v139, v142, 1, v233);
    (*(v180 + 16))(v140, v138, v182);
    v181(v140, 0, 1, v182);
    v183 = *(v218 + 48);
    v184 = v212;
    sub_10005D10C(v139, v212, &unk_1000D9E30, &qword_1000933F0);
    sub_10005D10C(v140, v184 + v183, &unk_1000D9E30, &qword_1000933F0);
    if (v104(v184, 1, v182) == 1)
    {
      sub_10005C664(v140, &unk_1000D9E30, &qword_1000933F0);
      sub_10005C664(v139, &unk_1000D9E30, &qword_1000933F0);
      v185 = v104(v184 + v183, 1, v182);
      v186 = v228;
      if (v185 == 1)
      {
        sub_10005C664(v184, &unk_1000D9E30, &qword_1000933F0);
        (*(v186 + 8))(v224, v233);
LABEL_57:

        return;
      }
    }

    else
    {
      v187 = v209;
      sub_10005D10C(v184, v209, &unk_1000D9E30, &qword_1000933F0);
      if (v104(v184 + v183, 1, v182) != 1)
      {
        v189 = v210;
        v221(v210, v184 + v183, v182);
        sub_10005E620(&qword_1000D9E90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v190 = dispatch thunk of static Equatable.== infix(_:_:)();
        v186 = v228;
        v191 = *(v228 + 8);
        v191(v189, v182);
        sub_10005C664(v216, &unk_1000D9E30, &qword_1000933F0);
        sub_10005C664(v217, &unk_1000D9E30, &qword_1000933F0);
        v191(v187, v182);
        sub_10005C664(v184, &unk_1000D9E30, &qword_1000933F0);
        if (v190)
        {
          v191(v224, v233);
          goto LABEL_57;
        }

LABEL_54:
        v188 = v226.super.isa;
        AdaptiveTabBarController.switchTo(room:)(v226);

        (*(v186 + 8))(v224, v233);
        return;
      }

      sub_10005C664(v216, &unk_1000D9E30, &qword_1000933F0);
      sub_10005C664(v217, &unk_1000D9E30, &qword_1000933F0);
      v186 = v228;
      (*(v228 + 8))(v187, v182);
    }

    sub_10005C664(v184, &qword_1000D9FA8, &qword_1000933E8);
    goto LABEL_54;
  }

  v95 = v85;
  if (v94)
  {
    v106 = [v85 v91[487].count];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v107 = v219;
    UUID.init(uuidString:)();

    v108 = *(v37 + 48);
    v109 = v233;
    if (v108(v107, 1, v233) == 1)
    {
      sub_10005C664(v107, &unk_1000D9E30, &qword_1000933F0);
      goto LABEL_37;
    }

    v229 = v95;
    v143 = v223;
    v224 = *(v37 + 32);
    (v224)(v223, v107, v109);
    v144 = UUID._bridgeToObjectiveC()().super.isa;
    v145 = v109;
    v146 = [objc_opt_self() accessoryTypeGroupWithIdentifier:v144];

    if (!v146)
    {
      (*(v37 + 8))(v143, v145);
      v88 = v235;
      v95 = v229;
LABEL_37:
      isa = v221;
      v231(v221, v230, v88);
      v170 = v95;
      v112 = Logger.logObject.getter();
      v171 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v112, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v236 = swift_slowAlloc();
        *v172 = 136315650;
        v237 = v225;
        swift_getMetatypeMetadata();
        v174 = String.init<A>(describing:)();
        v176 = sub_10006B744(v174, v175, &v236);

        *(v172 + 4) = v176;
        *(v172 + 12) = 2080;
        *(v172 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009A720, &v236);
        *(v172 + 22) = 2112;
        *(v172 + 24) = v170;
        *v173 = v170;
        v177 = v170;
        _os_log_impl(&_mh_execute_header, v112, v171, "<%s: %s> element = %@ | HFAccessoryTypeGroup = nil", v172, 0x20u);
        sub_10005C664(v173, &qword_1000D9C70, &qword_1000936A0);

        swift_arrayDestroy();

        v120 = v221;
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v228 = v37;
    v147 = *(v227 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext);
    v226.super.isa = v146;
    if (v147)
    {
      v148 = v147;
      v149 = dispatch thunk of DashboardContext.accessoryTypeGroup.getter();

      v150 = v211;
      v151 = v215;
      if (v149)
      {
        v152 = [v149 uniqueIdentifier];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v153 = 0;
      }

      else
      {
        v153 = 1;
      }
    }

    else
    {
      v153 = 1;
      v150 = v211;
      v151 = v215;
    }

    v192 = v228;
    v193 = *(v228 + 56);
    v194 = v233;
    v193(v151, v153, 1, v233);
    v195 = v214;
    (*(v192 + 16))(v214, v223, v194);
    v193(v195, 0, 1, v194);
    v196 = *(v218 + 48);
    sub_10005D10C(v151, v150, &unk_1000D9E30, &qword_1000933F0);
    sub_10005D10C(v195, v150 + v196, &unk_1000D9E30, &qword_1000933F0);
    if (v108(v150, 1, v194) == 1)
    {
      sub_10005C664(v195, &unk_1000D9E30, &qword_1000933F0);
      sub_10005C664(v151, &unk_1000D9E30, &qword_1000933F0);
      v197 = v108(v150 + v196, 1, v194);
      v198 = v228;
      v199 = v223;
      v200 = v226.super.isa;
      if (v197 == 1)
      {
        sub_10005C664(v150, &unk_1000D9E30, &qword_1000933F0);
        (*(v198 + 8))(v199, v233);
LABEL_68:

        return;
      }
    }

    else
    {
      v201 = v208;
      sub_10005D10C(v150, v208, &unk_1000D9E30, &qword_1000933F0);
      v202 = v108(v150 + v196, 1, v194);
      v200 = v226.super.isa;
      if (v202 != 1)
      {
        v203 = v210;
        (v224)(v210, v150 + v196, v194);
        sub_10005E620(&qword_1000D9E90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v204 = v201;
        v205 = dispatch thunk of static Equatable.== infix(_:_:)();
        v198 = v228;
        v206 = *(v228 + 8);
        v206(v203, v194);
        sub_10005C664(v214, &unk_1000D9E30, &qword_1000933F0);
        sub_10005C664(v215, &unk_1000D9E30, &qword_1000933F0);
        v206(v204, v194);
        sub_10005C664(v150, &unk_1000D9E30, &qword_1000933F0);
        v199 = v223;
        if (v205)
        {
          v206(v223, v233);
          goto LABEL_68;
        }

LABEL_65:
        AdaptiveTabBarController.switchTo(accessoryTypeGroup:)(v200);

        (*(v198 + 8))(v199, v233);
        return;
      }

      sub_10005C664(v214, &unk_1000D9E30, &qword_1000933F0);
      sub_10005C664(v215, &unk_1000D9E30, &qword_1000933F0);
      v198 = v228;
      (*(v228 + 8))(v201, v194);
      v199 = v223;
    }

    sub_10005C664(v150, &qword_1000D9FA8, &qword_1000933E8);
    goto LABEL_65;
  }

  v96 = [v85 v91[487].count];
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;

  if (v97 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v99 == v100)
  {
  }

  else
  {
    v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v121 & 1) == 0)
    {
      return;
    }
  }

  v122 = OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext;
  v123 = v227;
  v124 = *(v227 + OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext);
  if (!v124)
  {
    isa = v213;
    v231(v213, v230, v88);
    v154 = v95;
    v112 = Logger.logObject.getter();
    v155 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v112, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      *v156 = 136315650;
      v237 = v225;
      swift_getMetatypeMetadata();
      v158 = String.init<A>(describing:)();
      v160 = sub_10006B744(v158, v159, &v236);

      *(v156 + 4) = v160;
      *(v156 + 12) = 2080;
      *(v156 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009A720, &v236);
      *(v156 + 22) = 2112;
      *(v156 + 24) = v154;
      *v157 = v154;
      v161 = v154;
      _os_log_impl(&_mh_execute_header, v112, v155, "<%s: %s> element = %@ | dashboardContext.home = nil", v156, 0x20u);
      sub_10005C664(v157, &qword_1000D9C70, &qword_1000936A0);

      swift_arrayDestroy();

      v120 = v213;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v125 = v124;
  v126 = DashboardContext.home.getter();

  v127 = *(v123 + v122);
  if (v127 && ((v128 = v127, v129 = DashboardContext.room.getter(), v128, v129) || (v178 = *(v123 + v122)) != 0 && (v179 = v178, v129 = dispatch thunk of DashboardContext.accessoryTypeGroup.getter(), v179, v129)))
  {

    AdaptiveTabBarController.switchTo(home:)(v126);
  }

  else
  {
  }
}

id AdaptiveTabBarController.finishPresentation(_:animated:)(uint64_t a1, char a2)
{
  debug_assert(_:_:file:line:)();
  if (HUIsPhoneIdiom())
  {
    v4 = [objc_opt_self() currentDevice];
    [v4 setOrientation:1 animated:0];
  }

  v5 = [v2 hu_dismissViewControllerAnimated:a2 & 1];

  return v5;
}

id sub_10006A2C4(void *a1, id a2)
{
  v3 = [a2 presentedViewController];
  v4 = [a1 naui_isDescendantOfViewController:v3];

  return v4;
}

uint64_t sub_10006A324(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(85);
  v3._object = 0x800000010009ABF0;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v3);
  swift_getObjectType();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4._countAndFlagsBits = 0xD000000000000036;
  v4._object = 0x800000010009AC10;
  String.append(_:)(v4);
  v5 = [a2 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 33;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0;
}

Swift::Void __swiftcall AdaptiveTabBarController.tabBarControllerDidFinishPresenting(viewController:)(UIViewController viewController)
{
  v1 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v6 - v3;
  v5 = type metadata accessor for SidebarTabElementBuilder();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_100063D48(v4);
  sub_10005C664(v4, &unk_1000D9FB0, &qword_1000933F8);
}

void sub_10006A730(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for SidebarTabElementBuilder();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_100063D48(v5);

    sub_10005C664(v5, &unk_1000D9FB0, &qword_1000933F8);
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_100066074();
  }
}

void AdaptiveTabBarController.didUpdateDashboarContext(dashboardContext:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1000578B4(&unk_1000D9FB0, &qword_1000933F8);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v37 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v14 = sub_10006AF58(v9, qword_1000D9EE0);
  (*(v10 + 16))(v13, v14, v9);
  v15 = v2;
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v17;
    v22 = v21;
    v39 = swift_slowAlloc();
    v41[0] = v39;
    v41[1] = ObjectType;
    *v20 = 136315906;
    swift_getMetatypeMetadata();
    v23 = String.init<A>(describing:)();
    v25 = sub_10006B744(v23, v24, v41);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10006B744(0xD00000000000002BLL, 0x800000010009A7B0, v41);
    *(v20 + 22) = 2112;
    v26 = *&v15[OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext];
    *(v20 + 24) = v26;
    *(v20 + 32) = 2112;
    *(v20 + 34) = v16;
    *v22 = v26;
    v22[1] = v16;
    v27 = v16;
    v28 = v26;
    v29 = v38;
    _os_log_impl(&_mh_execute_header, v38, v18, "<%s: %s> Changing context from %@ to %@", v20, 0x2Au);
    sub_1000578B4(&qword_1000D9C70, &qword_1000936A0);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v8 = v40;
  }

  else
  {
  }

  (*(v10 + 8))(v13, v9);
  v30 = OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext;
  v31 = *&v15[OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext];
  if (v31)
  {
    *&v15[OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext] = v16;
  }

  else
  {
    v32 = type metadata accessor for SidebarTabElementBuilder();
    (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
    sub_100063D48(v8);
    sub_10005C664(v8, &unk_1000D9FB0, &qword_1000933F8);
    v31 = *&v15[v30];
    *&v15[v30] = v16;
    if (!v31)
    {
      v36 = v16;
      goto LABEL_12;
    }
  }

  type metadata accessor for DashboardContext();
  v33 = v16;
  v34 = v31;
  v35 = static NSObject.== infix(_:_:)();

  if ((v35 & 1) == 0)
  {
LABEL_12:
    sub_10005E9BC();
    sub_10005F7E0();

    goto LABEL_13;
  }

  v31 = v34;
LABEL_13:
}

uint64_t sub_10006AEA0()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for OSSignposter();
  sub_10006E590(v2, qword_1000DB850);
  sub_10006AF58(v2, qword_1000DB850);
  type metadata accessor for DataModel();
  static DataModel.modelLogger.getter();
  return OSSignposter.init(logger:)();
}

uint64_t sub_10006AF58(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

double AdaptiveTabBarController.target(forAction:withSender:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
  swift_beginAccess();
  v10 = *&v4[v9];
  if (v10)
  {
    v11 = v10;
    v12 = [v11 appNavigator];
    if (v12)
    {

      if ([objc_opt_self() isValidMenuSelector:a1 forDashboardContext:*&v4[OBJC_IVAR___HOAdaptiveTabBarController_dashboardContext]])
      {
        *(a3 + 24) = sub_10005B9DC(0, &qword_1000D9FC0, HUMenuToolbarManager_ptr);
        *a3 = v11;
        return result;
      }
    }
  }

  sub_10005D10C(a2, &v23, &qword_1000D9D88, &qword_100093400);
  v14 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v15 = sub_1000583BC(&v23, *(&v24 + 1));
    v16 = *(v14 - 8);
    __chkstk_darwin(v15, v15);
    v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v18, v14);
    sub_1000578FC(&v23);
  }

  else
  {
    v19 = 0;
  }

  v22.receiver = v4;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, "targetForAction:withSender:", a1, v19);
  swift_unknownObjectRelease();
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  result = *&v23;
  v21 = v24;
  *a3 = v23;
  *(a3 + 16) = v21;
  return result;
}

uint64_t sub_10006B418@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10006B498(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t type metadata accessor for AdaptiveTabBarController(uint64_t a1)
{
  result = qword_1000D9FF0;
  if (!qword_1000D9FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B554(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10006B64C;

  return v6(a1);
}

uint64_t sub_10006B64C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10006B744(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10006B810(v11, 0, 0, 1, a1, a2);
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
    sub_10005A46C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000578FC(v11);
  return v7;
}

unint64_t sub_10006B810(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10006B91C(a5, a6);
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

void *sub_10006B91C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10006B968(a1, a2);
  sub_10006BA98(&off_1000C4630);
  return v3;
}

void *sub_10006B968(uint64_t a1, unint64_t a2)
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

  v6 = sub_10006BB84(v5, 0);
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
        v7 = sub_10006BB84(v10, 0);
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

uint64_t sub_10006BA98(uint64_t result)
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

  result = sub_10006BBF8(result, v11, 1, v3);
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

void *sub_10006BB84(uint64_t a1, uint64_t a2)
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

  sub_1000578B4(&unk_1000DA330, &qword_100093530);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10006BBF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000578B4(&unk_1000DA330, &qword_100093530);
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

uint64_t sub_10006BCEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006BD2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006BDE0;

  return sub_100063194(a1, v4, v5, v6);
}

uint64_t sub_10006BDE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Int sub_10006BEDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000578B4(&qword_1000DA300, &qword_100093510);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 64;
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

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
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
  return result;
}

uint64_t sub_10006C180(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10007C3F0(a2, a3);
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
      sub_10006BEDC(v16, a4 & 1);
      v11 = sub_10007C3F0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10006C2F8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
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

id sub_10006C2F8()
{
  v1 = v0;
  sub_1000578B4(&qword_1000DA300, &qword_100093510);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t _s7HomeApp24AdaptiveTabBarControllerC11windowTitle03forD10Identifier16dashboardContextSSSgSo06HFHomebdJ0a_0A2UI09DashboardL0CSgtF_0(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

LABEL_15:
    if (a2)
    {
      result = dispatch thunk of DashboardContext.overrideDashboardTitle.getter();
      if (v20)
      {
        return result;
      }

      v21 = DashboardContext.room.getter();
      if (v21)
      {
        v22 = v21;
        v23 = [v21 hf_displayName];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_30:
        return v24;
      }

      v26 = DashboardContext.home.getter();
      v27 = [v26 hf_displayName];
    }

    else
    {
      v25 = [objc_opt_self() sharedDispatcher];
      v26 = [v25 home];

      if (!v26)
      {
        return 0;
      }

      v27 = [v26 hf_displayName];
    }

LABEL_29:
    v23 = v27;

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_30;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_15;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

LABEL_22:
    v28 = [objc_opt_self() sharedDispatcher];
    v29 = [v28 home];

    if (v29)
    {
      v30 = [v29 hf_userCanCreateTrigger];

      if (v30)
      {
        goto LABEL_28;
      }
    }

    if (HFForceAllowAutomationCreation())
    {
      goto LABEL_28;
    }

    return 0;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_22;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

LABEL_28:
    v26 = String._bridgeToObjectiveC()();
    v27 = HFLocalizedString();
    goto LABEL_29;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_28;
  }

  return 0;
}

uint64_t sub_10006C7A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10006E608;

  return sub_10006822C(v2, v3);
}

void *sub_10006C838(uint64_t a1)
{
  v2 = type metadata accessor for StateSnapshot.Coverage();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1000578B4(&qword_1000DA318, &qword_100093528);
    v11 = static _SetStorage.allocate(capacity:)();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_10005E620(&qword_1000DA320, &type metadata accessor for StateSnapshot.Coverage, &protocol conformance descriptor for StateSnapshot.Coverage);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_10005E620(&qword_1000DA328, &type metadata accessor for StateSnapshot.Coverage, &protocol conformance descriptor for StateSnapshot.Coverage);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10006CB58(uint64_t a1)
{
  v2 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v22 - v4;
  v6 = type metadata accessor for UUID();
  v25 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedDispatcher];
  v11 = [v10 home];

  if (v11)
  {
    v23 = v11;
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = (v25 + 48);
      v14 = (v25 + 32);
      v15 = a1 + 40;
      v16 = _swiftEmptyArrayStorage;
      v24 = v9;
      do
      {

        UUID.init(uuidString:)();

        if ((*v13)(v5, 1, v6) == 1)
        {
          sub_10005C664(v5, &unk_1000D9E30, &qword_1000933F0);
        }

        else
        {
          v17 = *v14;
          (*v14)(v9, v5, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_10007A9A4(0, v16[2] + 1, 1, v16);
          }

          v19 = v16[2];
          v18 = v16[3];
          if (v19 >= v18 >> 1)
          {
            v16 = sub_10007A9A4((v18 > 1), v19 + 1, 1, v16);
          }

          v16[2] = v19 + 1;
          v20 = v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19;
          v9 = v24;
          v17(v20, v24, v6);
        }

        v15 += 16;
        --v12;
      }

      while (v12);
    }

    v21 = v23;
    HMHome.sidebarRoomsSortOrder.setter();
  }
}

uint64_t sub_10006CE1C(void *a1)
{
  v2 = v1;
  v4 = [v1 selectedViewController];
  if (v4)
  {
    v5 = v4;
    sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
    v6 = a1;
    v7 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR___HOAdaptiveTabBarController_scrollToTop;
  v2[OBJC_IVAR___HOAdaptiveTabBarController_scrollToTop] = v7 & 1;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    v12 = [v10 viewControllers];
    sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 == 1 && (v15 = [v2 selectedViewController]) != 0)
    {
      v16 = v15;
      v17 = v11;
      v18 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v18 = 0;
    }

    v2[v8] = v18 & 1;
  }

  return 1;
}

void sub_10006CFC4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97C0 != -1)
  {
    swift_once();
  }

  v10 = sub_10006AF58(v5, qword_1000D9EE0);
  (*(v6 + 16))(v9, v10, v5);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25[0] = v23;
    v25[1] = ObjectType;
    *v15 = 136315650;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = sub_10006B744(v17, v18, v25);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_10006B744(0xD00000000000001ELL, 0x800000010009ABD0, v25);
    *(v15 + 22) = 2112;
    *(v15 + 24) = v11;
    *v16 = v11;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "<%s: %s> %@", v15, 0x20u);
    sub_10005C664(v16, &qword_1000D9C70, &qword_1000936A0);

    swift_arrayDestroy();

    v2 = v24;
  }

  (*(v6 + 8))(v9, v5);
  v21 = OBJC_IVAR___HOAdaptiveTabBarController_scrollToTop;
  if (*(v2 + OBJC_IVAR___HOAdaptiveTabBarController_scrollToTop) == 1)
  {
    v22 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();
    [v22 scrollToDefaultPositionInCurrentContextAnimated:1];
  }

  sub_10005F7E0();
  *(v2 + v21) = 0;
}

id sub_10006D2BC(void *a1)
{
  v2 = [objc_allocWithZone(HUPreloadedTransitionController) init];
  result = [v2 completionFuture];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    v10[4] = sub_10006E2F0;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10005D79C;
    v10[3] = &unk_1000C6C78;
    v7 = _Block_copy(v10);
    v8 = a1;

    v9 = [v4 addSuccessBlock:v7];
    _Block_release(v7);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006D414(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR___HOAdaptiveTabBarController_roomsElements);
  if (!v3)
  {
    return 1;
  }

  v4 = [v3 _children];
  sub_10005B9DC(0, &qword_1000DA2D0, _UITab_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
LABEL_32:
    v28 = v5 & 0xFFFFFFFFFFFFFF8;
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = v5 & 0xFFFFFFFFFFFFFF8;
    v29 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    if (v29 == v6)
    {

      return 1;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v28 + 16))
      {
        goto LABEL_31;
      }

      v8 = *(v5 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = [v8 _identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = [a1 _identifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v11 == v15 && v13 == v17)
    {

      goto LABEL_17;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v6;
  }

  while ((v7 & 1) == 0);

LABEL_17:
  v18 = [a2 items];
  sub_10005B9DC(0, &qword_1000DA2A8, UIDragItem_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_19:
      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v21 = *(v19 + 32);
      }

      v22 = v21;

      v23 = [v22 localObject];

      if (v23)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      v33 = v31;
      v34 = v32;
      if (*(&v32 + 1))
      {
        sub_1000578B4(&unk_1000DA2B0, &qword_1000934E0);
        if (swift_dynamicCast())
        {
          swift_unknownObjectRelease();
          v24 = [objc_opt_self() sharedDispatcher];
          v25 = [v24 home];

          if (v25)
          {
            v26 = [v25 hf_currentUserIsAdministrator];

            if (v26)
            {
              return 3;
            }
          }
        }

        return 1;
      }

      goto LABEL_35;
    }
  }

  else
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_19;
    }
  }

  v33 = 0u;
  v34 = 0u;
LABEL_35:
  sub_10005C664(&v33, &qword_1000D9D88, &qword_100093400);
  return 1;
}

void sub_10006D7EC(int64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5, v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 items];
  sub_10005B9DC(0, &qword_1000DA2A8, UIDragItem_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    goto LABEL_49;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

  while ((v11 & 0xC000000000000001) != 0)
  {
LABEL_54:
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v13 = v12;

    v14 = [v13 localObject];

    if (v14)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63 = v61;
    v64 = v62;
    if (!*(&v62 + 1))
    {
LABEL_51:
      sub_10005C664(&v63, &qword_1000D9D88, &qword_100093400);
      return;
    }

    sub_1000578B4(&unk_1000DA2B0, &qword_1000934E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v15 = v61;
    v16 = [objc_opt_self() sharedDispatcher];
    v17 = [v16 home];

    if (!v17)
    {
LABEL_28:
      swift_unknownObjectRelease();
      return;
    }

    v52 = v17;
    v53 = v15;
    v18 = [v17 rooms];
    sub_10005B9DC(0, &qword_1000DA870, HMRoom_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = v9;
    if (v2 >> 62)
    {
      goto LABEL_56;
    }

    v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_57;
    }

LABEL_14:
    v20 = 0;
    v55 = v2 & 0xFFFFFFFFFFFFFF8;
    v56 = v2 & 0xC000000000000001;
    v54 = v6 + 1;
    while (1)
    {
      if (v56)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
        if (v20 >= *(v55 + 16))
        {
          __break(1u);
          goto LABEL_54;
        }

        v21 = *(v2 + 8 * v20 + 32);
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_27;
        }
      }

      v58 = v22;
      v59 = v21;
      v23 = [v21 uniqueIdentifier];
      v24 = v57;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = UUID.uuidString.getter();
      v27 = v26;
      v28 = v24;
      v9 = v5;
      (*v54)(v28, v5);
      v29 = a1;
      v6 = [a1 _identifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      if (v25 == v30 && v27 == v32)
      {
        break;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_30;
      }

      ++v20;
      a1 = v29;
      v5 = v9;
      if (v58 == v19)
      {
        goto LABEL_57;
      }
    }

LABEL_30:

    v35 = objc_allocWithZone(HFRoomItem);
    v36 = [v35 initWithHome:v52 room:v59];
    v37 = [v36 room];
    v57 = v36;
    v38 = [v36 home];
    v5 = [objc_allocWithZone(HFRoomBuilder) initWithExistingObject:v37 inHome:v38];

    v9 = [v53 accessories];
    v39 = sub_10005B9DC(0, &unk_1000DA2C0, HMAccessory_ptr);
    sub_10006E248();
    v40 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = v39;
    if ((v40 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v42 = *(&v63 + 1);
      v41 = v63;
      v2 = *(&v64 + 1);
      v11 = v64;
      v6 = v65;
    }

    else
    {
      v43 = -1 << *(v40 + 32);
      v42 = v40 + 56;
      v11 = ~v43;
      v44 = -v43;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      else
      {
        v45 = -1;
      }

      v6 = (v45 & *(v40 + 56));

      v2 = 0;
      v41 = v40;
    }

    v56 = v11;
    for (i = (v11 + 64) >> 6; v41 < 0; v6 = v11)
    {
      v49 = __CocoaSet.Iterator.next()();
      if (!v49)
      {
        goto LABEL_47;
      }

      v60 = v49;
      swift_dynamicCast();
      v9 = v61;
      a1 = v2;
      v11 = v6;
      if (!v61)
      {
        goto LABEL_47;
      }

LABEL_45:
      [v5 addAccessory:v9];

      v2 = a1;
    }

    v47 = v2;
    v48 = v6;
    a1 = v2;
    if (v6)
    {
LABEL_41:
      v11 = (v48 - 1) & v48;
      v9 = *(*(v41 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v48)))));
      if (v9)
      {
        goto LABEL_45;
      }

LABEL_47:
      sub_100059150(v41);

      v50 = [v5 commitItem];
      swift_unknownObjectRelease();

      return;
    }

    while (1)
    {
      a1 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (a1 >= i)
      {
        goto LABEL_47;
      }

      v48 = *(v42 + 8 * a1);
      ++v47;
      if (v48)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_49:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_50:

      v63 = 0u;
      v64 = 0u;
      goto LABEL_51;
    }
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_56:
  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_57:
  swift_unknownObjectRelease();
}

id sub_10006DF10@<X0>(void *a1@<X8>)
{
  result = AdaptiveTabBarController.baseController.getter();
  *a1 = result;
  return result;
}

void sub_10006DF3C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController);
  *(*a2 + OBJC_IVAR___HOAdaptiveTabBarController____lazy_storage___baseController) = *a1;
  v3 = v2;
}

void sub_10006DF94(uint64_t a1)
{
  sub_10006E060();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10006E060()
{
  if (!qword_1000DA000)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DA000);
    }
  }
}

uint64_t sub_10006E0B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10006E14C;

  return sub_10006822C(v2, v3);
}

uint64_t sub_10006E14C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_10006E248()
{
  result = qword_1000D9E70;
  if (!qword_1000D9E70)
  {
    sub_10005B9DC(255, &unk_1000DA2C0, HMAccessory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9E70);
  }

  return result;
}

uint64_t sub_10006E2B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006E2F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006E378()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006E3E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006E420(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006E63C;

  return sub_10006B554(a1, v4);
}

uint64_t sub_10006E4D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006BDE0;

  return sub_10006B554(a1, v4);
}

uint64_t *sub_10006E590(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t _UITab.id.getter()
{
  v1 = [v0 _identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_10006E6D0(uint64_t *a1@<X8>)
{
  v3 = [*v1 _identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_10006E728@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

id sub_10006E758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    sub_10006EA0C(a2, v19);
    SidebarTabElementBuilder.id.getter();
    SidebarTabElementBuilder.title.getter();
    v4 = SidebarTabElementBuilder.tabIcon.getter();
    v5 = objc_allocWithZone(_UITabElementGroup);
    v6 = String._bridgeToObjectiveC()();

    v7 = String._bridgeToObjectiveC()();

    v8 = [v5 initWithIdentifier:v6 title:v7 image:v4];

    sub_1000583BC(v19, v19[3]);
    sub_10006EA24();
    Sequence.compactMap<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 _setChildren:isa];

    [v8 _setDelegate:a3];
    [v8 _setSelectedElement:0];
    v10 = v8;
    SidebarTabElementBuilder.accessibilityIdentifier.getter();
    v11 = String._bridgeToObjectiveC()();

    [v10 setAccessibilityIdentifier:v11];

    sub_1000578FC(v19);
  }

  else
  {
    SidebarTabElementBuilder.id.getter();
    SidebarTabElementBuilder.title.getter();
    v12 = SidebarTabElementBuilder.tabIcon.getter();
    v13 = objc_allocWithZone(_UITabElement);
    v14 = String._bridgeToObjectiveC()();

    v15 = String._bridgeToObjectiveC()();

    v16 = [v13 initWithIdentifier:v14 title:v15 image:v12];

    v10 = v16;
    SidebarTabElementBuilder.accessibilityIdentifier.getter();
    v17 = String._bridgeToObjectiveC()();

    [v10 setAccessibilityIdentifier:v17];
  }

  return v10;
}

uint64_t sub_10006EA0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10006EA24()
{
  result = qword_1000DA2D0;
  if (!qword_1000DA2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DA2D0);
  }

  return result;
}

id sub_10006EA70(uint64_t a1)
{
  v2 = v1;
  v3 = [objc_allocWithZone(HUSceneActionEditorViewController) initWithActionSetBuilder:a1 mode:2];
  v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v3];
  result = [v2 hu_presentPreloadableViewController:v4 animated:1];
  if (result)
  {
    v6 = result;
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 futureWithResult:v3];
    v10 = [v9 asGeneric];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SidebarTabElementBuilder.viewController.getter()
{
  v0 = type metadata accessor for SidebarTabElementBuilder.Kind();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SidebarTabElementBuilder.kind.getter();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for SidebarTabElementBuilder.Kind.category(_:) || v5 == enum case for SidebarTabElementBuilder.Kind.room(_:))
  {
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    if (v5 == enum case for SidebarTabElementBuilder.Kind.automation(_:))
    {
      (*(v1 + 96))(v4, v0);
      v12 = HUTriggerListViewController_ptr;
      if (!*v4)
      {
        v12 = HUAboutResidentDeviceViewController_ptr;
      }

      return [objc_allocWithZone(*v12) init];
    }

    if (v5 != enum case for SidebarTabElementBuilder.Kind.home(_:))
    {
      if (v5 == enum case for SidebarTabElementBuilder.Kind.learn(_:))
      {
        v13 = [objc_opt_self() getAvailabilityDictionary];
        v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = sub_10006EE68(v14);

        if (v15)
        {
          v16 = objc_allocWithZone(HODiscoverWebViewController);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v18 = [v16 initWithLocalizationDictionary:isa];

          return v18;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }

      return result;
    }
  }

  v7 = [objc_opt_self() sharedDispatcher];
  v8 = [v7 home];

  result = 0;
  if (v8)
  {
    type metadata accessor for DashboardContext();
    v10 = dispatch thunk of static DashboardContext.homeDashboard(for:)();
    v11 = [objc_allocWithZone(HUDashboardViewController) initWithContext:v10 delegate:0];

    return v11;
  }

  return result;
}

unint64_t sub_10006EE68(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_1000578B4(&qword_1000DA4C0, &unk_1000935A0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v13);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v6)) | (v13 << 6);
        v15 = (*(v1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_10005A46C(*(v1 + 56) + 32 * v14, v29);
        *&v28 = v16;
        *(&v28 + 1) = v17;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v18 = v28;
        sub_1000583AC(v27, v26);

        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_10007C3F0(v18, *(&v18 + 1));
        if (v19)
        {
          v10 = v1;
          v11 = 16 * result;
          *(v2[6] + 16 * result) = v18;

          v12 = (v2[7] + v11);
          v1 = v10;
          *v12 = v24;
          v12[1] = v25;

          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v18;
          v20 = (v2[7] + 16 * result);
          *v20 = v24;
          v20[1] = v25;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_10006F324(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, id))
{
  v8 = a6;
  if (a3)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  type metadata accessor for DashboardContext();
  v15 = a4;
  v16 = a5;
  v18 = a1;
  v17 = a7(v12, v14, v15);

  sub_10006FA24(v17, v16, 0, v8);
}

Swift::String_optional __swiftcall HOAppNavigator.dashboardContextTypeDescriptionForAnalytics()()
{
  v1 = [v0 currentViewController];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 context];
    v4 = dispatch thunk of DashboardContext.typeDescriptionForAnalytics.getter();
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0;
  }

  v7 = v4;
  v8 = v6;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

void sub_10006F61C(int a1, int a2, id a3, uint64_t a4, char a5)
{
  v6 = [a3 hu_pushPreloadableViewController:a4 animated:a5 & 1 waitForPreload:1];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v12[4] = sub_1000706C0;
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10004AD98;
    v12[3] = &unk_1000C6E70;
    v9 = _Block_copy(v12);
    v10 = a3;

    v11 = [v7 addCompletionBlock:v9];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_10006F73C(void *a1, int a2, id a3)
{
  v5 = [a3 viewControllers];
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 < 3)
  {
    return;
  }

  v8 = [a3 viewControllers];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

LABEL_17:

    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  isa = v10;

  if (a1)
  {
    sub_1000578B4(&unk_1000D9F80, &unk_100093218);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000935B0;
    *(v11 + 32) = isa;
    *(v11 + 40) = a1;
    v12 = a1;
    v13 = isa;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a3 setViewControllers:isa];
  }
}

Swift::Int BridgedNavigationError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10006F9D4(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_10006FA24(uint64_t a1, id a2, char a3, char a4)
{
  v8 = [a2 viewControllers];
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v10 = *(v9 + 32);
      }

      v30 = v10;

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
        v18 = v30;
        goto LABEL_17;
      }

      v12 = v11;
      v13 = [a2 topViewController];
      if (v13)
      {
        v14 = v13;
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v29 = v15;
          sub_10005B9DC(0, &qword_1000DA4D0, NSObject_ptr);
          v28 = v14;
          v16 = [v29 context];
          v17 = static NSObject.== infix(_:_:)();

          if (v17)
          {

            v18 = v28;
LABEL_17:

            return;
          }

LABEL_14:
          v19 = DashboardContext.home.getter();
          v20 = [v19 hf_currentUserIsRestrictedGuest];

          if (!v20 || (dispatch thunk of DashboardContext.shouldHideForGuests.getter() & 1) == 0)
          {
            v21 = [objc_allocWithZone(HUDashboardViewController) initWithContext:a1 asOverlay:a3 & 1 delegate:{objc_msgSend(v12, "delegate")}];
            swift_unknownObjectRelease();
            [v29 prepareForTransitionToContext:a1 forViewController:v21];
            v22 = [v12 viewFirstTimeFullyVisibleFuture];
            v23 = swift_allocObject();
            *(v23 + 16) = a2;
            *(v23 + 24) = v21;
            *(v23 + 32) = a4 & 1;
            aBlock[4] = sub_100070664;
            aBlock[5] = v23;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100073438;
            aBlock[3] = &unk_1000C6E20;
            v24 = _Block_copy(aBlock);
            v25 = a2;
            v26 = v21;

            v27 = [v22 addCompletionBlock:v24];
            _Block_release(v24);

            return;
          }

          v18 = v29;
          goto LABEL_17;
        }
      }

      v29 = 0;
      goto LABEL_14;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

void sub_10006FDFC(void *a1, void *a2, void *a3, char a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v28 - v15;
  v17 = [a1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = [objc_opt_self() energyAccessoryTypeGroup];
  v19 = [v18 uniqueIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v18) = static UUID.== infix(_:_:)();
  v20 = *(v9 + 8);
  v20(v13, v8);
  v20(v16, v8);
  if ((v18 & 1) == 0 || [a2 hf_isHomeEnergyVisible])
  {
    type metadata accessor for DashboardContext();
    v21 = dispatch thunk of static DashboardContext.categoryDashboard(for:in:room:)();
    v22 = [a3 viewControllers];
    sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v24 >= 2)
    {
      v25 = [a3 topViewController];
      if (v25)
      {
        v26 = v25;
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          if (([v27 isOverlay] & 1) == 0)
          {
          }

          a4 = 0;
        }
      }
    }

    sub_10006FA24(v21, a3, 1, a4 & 1);
  }
}

void sub_1000700DC(void *a1, void *a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 home];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for DashboardContext();
    v22 = dispatch thunk of static DashboardContext.roomDashboard(for:in:)();
    sub_10006FA24(v22, a2, 0, a3 & 1);

    v13 = v22;
  }

  else
  {
    if (qword_1000D97E0 != -1)
    {
      swift_once();
    }

    v14 = qword_1000DB8A0;
    Logger.init(_:)();
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_10006B744(0xD00000000000003ELL, 0x800000010009AE40, &v23);
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v19 = v15;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s nil home for room %@", v18, 0x16u);
      sub_1000706C8(v19);

      sub_1000578FC(v20);
    }

    (*(v7 + 8))(v10, v6);
  }
}

void _sSo14HOAppNavigatorC7HomeAppE25configureDashboardContext4with20navigationController8animatedy0C2UI0fG0CSg_So012UINavigationJ0CSbtF_0(void *a1, void *a2, char a3)
{
  if (!a1)
  {
    return;
  }

  v15 = a1;
  if ((dispatch thunk of DashboardContext.allowsHomeNavigation.getter() & 1) == 0)
  {
    v6 = a3 & 1;
    v7 = v15;
    v8 = a2;
    v9 = 1;
LABEL_10:
    sub_10006FA24(v7, v8, v9, v6);
    goto LABEL_11;
  }

  v5 = DashboardContext.room.getter();
  if (v5)
  {

LABEL_9:
    v6 = a3 & 1;
    v7 = v15;
    v8 = a2;
    v9 = 0;
    goto LABEL_10;
  }

  dispatch thunk of DashboardContext.overrideDashboardTitle.getter();
  if (v10)
  {

    goto LABEL_9;
  }

  v12 = [a2 viewControllers];
  sub_10005B9DC(0, &qword_1000D9C90, UIViewController_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v15;
  if (v14 < 2)
  {
    goto LABEL_12;
  }

LABEL_11:
  v11 = v15;
LABEL_12:
}

unint64_t sub_1000704F0()
{
  result = qword_1000DA4C8;
  if (!qword_1000DA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BridgedNavigationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BridgedNavigationError(_WORD *result, int a2, int a3)
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

uint64_t sub_100070624()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100070670(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100070688()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000706C8(uint64_t a1)
{
  v2 = sub_1000578B4(&qword_1000D9C70, &qword_1000936A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id HOWidgetUpdater.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HOWidgetUpdater();
  return objc_msgSendSuper2(&v2, "init");
}

id HOWidgetUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HOWidgetUpdater();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10007095C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100070AEC(a1);
  v5 = String._bridgeToObjectiveC()();

  if (a2)
  {
    swift_errorRetain();
    sub_1000578B4(&qword_1000DA568, &qword_1000936C8);
    sub_1000578B4(&unk_1000DA570, &qword_1000936D0);
    if (swift_dynamicCast())
    {
      if (*(&v8 + 1))
      {
        sub_1000583BC(&v7, *(&v8 + 1));
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_1000578FC(&v7);
LABEL_8:
        v6 = String._bridgeToObjectiveC()();

        goto LABEL_9;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }

    sub_10005C664(&v7, &qword_1000DA560, &qword_1000936C0);
    swift_getErrorValue();
    Error.localizedDescription.getter();
    goto LABEL_8;
  }

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  sub_10005C664(&v7, &qword_1000DA560, &qword_1000936C0);
  v6 = 0;
LABEL_9:
  [v3 failedTest:v5 withFailure:v6];
}

uint64_t sub_100070AEC(char a1)
{
  result = 0x706D6F4364616572;
  switch(a1)
  {
    case 1:
      result = 0x6F486C6C6F726373;
      break;
    case 2:
    case 6:
    case 17:
      result = 0xD000000000000010;
      break;
    case 3:
    case 10:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6D6F6F526E65706FLL;
      break;
    case 5:
    case 16:
    case 36:
      result = 0xD000000000000015;
      break;
    case 7:
    case 9:
    case 37:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x6964654D6E65706FLL;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 13:
    case 34:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 18:
      result = 0x6D6F6F52646461;
      break;
    case 19:
      result = 0x6F526574656C6564;
      break;
    case 20:
      result = 0x694C656C67676F74;
      break;
    case 21:
      v3 = 0x656C67676F74;
      goto LABEL_24;
    case 22:
      v3 = 0x657461657263;
LABEL_24:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6353000000000000;
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 24:
    case 35:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 26:
    case 29:
    case 32:
      result = 0xD000000000000018;
      break;
    case 27:
      result = 0xD000000000000025;
      break;
    case 28:
      result = 0xD000000000000024;
      break;
    case 30:
      result = 0xD000000000000017;
      break;
    case 31:
      result = 0xD000000000000017;
      break;
    case 33:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Bool __swiftcall HOAppDelegate.application(_:runTest:options:)(UIApplication_optional _, Swift::String_optional runTest, Swift::OpaquePointer_optional options)
{
  isa = _.value.super.super.isa;
  LOBYTE(_.value.super.super.isa) = UIApp;
  if (!UIApp)
  {
    __break(1u);
    goto LABEL_11;
  }

  object = runTest.value._object;
  countAndFlagsBits = runTest.value._countAndFlagsBits;
  v6 = *&_.is_nil;
  LOBYTE(_.value.super.super.isa) = [UIApp rotateIfNeeded:{1, runTest.value._object, options.value._rawValue, *&options.is_nil}];
  if (!countAndFlagsBits)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  LOBYTE(_.value.super.super.isa) = sub_100071610(v6, countAndFlagsBits);
  v7 = _.value.super.super.isa;
  if (LOBYTE(_.value.super.super.isa) == 38)
  {
    if (isa)
    {
      v8 = String._bridgeToObjectiveC()();
      strcpy(v12, "Unknown test ");
      HIWORD(v12[1]) = -4864;

      v9._countAndFlagsBits = v6;
      v9._object = countAndFlagsBits;
      String.append(_:)(v9);

      v10 = String._bridgeToObjectiveC()();

      [(objc_class *)isa failedTest:v8 withFailure:v10, v12[0], v12[1]];

      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (!isa)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  _.value.super.super.isa = sub_100071664(_.value.super.super.isa);
  if (!object)
  {
LABEL_14:
    __break(1u);
    return _.value.super.super.isa;
  }

  (_.value.super.super.isa)(isa, object);

LABEL_9:
  LOBYTE(_.value.super.super.isa) = v7 != 38;
  return _.value.super.super.isa;
}

void sub_100071180(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  if (a2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  isa = v7.super.isa;
  [a3 *a4];
}

uint64_t sub_100071218(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = sub_1000578B4(&qword_1000D9E28, &unk_1000931D0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v17 - v11;
  *(&v17 - v11) = 1;
  v13 = enum case for DispatchTimeInterval.seconds(_:);
  v14 = type metadata accessor for DispatchTimeInterval();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_10004AEFC(a4, a5, a1, a2, v12);
  return sub_10005C664(v12, &qword_1000D9E28, &unk_1000931D0);
}

uint64_t sub_100071370(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000578B4(&unk_1000DA580, &unk_100093370);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = a3;
  v15 = a1;

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v14;
  v17[5] = v15;
  v17[6] = a2;
  sub_10005D938(0, 0, v12, a5, v17);
}

uint64_t sub_1000714B8(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = sub_1000578B4(&unk_1000DA580, &unk_100093370);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v21 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = a3;
  v17 = a1;

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = &protocol witness table for MainActor;
  *(v19 + 32) = v16;
  *(v19 + 40) = a5;
  *(v19 + 48) = v17;
  *(v19 + 56) = a2;
  sub_10005D938(0, 0, v14, a6, v19);
}

unint64_t sub_100071610(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x26)
  {
    return 38;
  }

  else
  {
    return v2;
  }
}

uint64_t (*sub_100071664(char a1))()
{
  switch(a1)
  {
    case 1:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072658;
      break;
    case 2:
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_100072634;
      *(v12 + 24) = v11;
      v2 = sub_100072D00;
      break;
    case 3:
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1000725D8;
      *(v14 + 24) = v13;
      v2 = sub_100072D00;
      break;
    case 4:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000725B4;
      break;
    case 5:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072590;
      break;
    case 6:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_10007256C;
      break;
    case 7:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072548;
      break;
    case 8:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072524;
      break;
    case 9:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072500;
      break;
    case 10:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000724DC;
      break;
    case 11:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000724B8;
      break;
    case 12:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072494;
      break;
    case 13:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072470;
      break;
    case 14:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_10007244C;
      break;
    case 15:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072428;
      break;
    case 16:
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_100072404;
      *(v6 + 24) = v5;
      v2 = sub_100072D00;
      break;
    case 17:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000723E0;
      break;
    case 18:
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_1000723BC;
      *(v20 + 24) = v19;
      v2 = sub_100072D00;
      break;
    case 19:
      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_100072398;
      *(v22 + 24) = v21;
      v2 = sub_100072D00;
      break;
    case 20:
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_100072374;
      *(v16 + 24) = v15;
      v2 = sub_100072D00;
      break;
    case 21:
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_100072350;
      *(v18 + 24) = v17;
      v2 = sub_100072D00;
      break;
    case 22:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_10007232C;
      break;
    case 23:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072308;
      break;
    case 24:
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1000722E4;
      *(v10 + 24) = v9;
      v2 = sub_100072D00;
      break;
    case 25:
      v7 = swift_allocObject();
      *(v7 + 16) = v1;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1000722C0;
      *(v8 + 24) = v7;
      v2 = sub_100072D00;
      break;
    case 26:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072250;
      break;
    case 27:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_10007222C;
      break;
    case 28:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072208;
      break;
    case 29:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000721E4;
      break;
    case 30:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000721AC;
      break;
    case 31:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072174;
      break;
    case 32:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072138;
      break;
    case 33:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000720FC;
      break;
    case 34:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_1000720C0;
      break;
    case 35:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_10007209C;
      break;
    case 36:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_100072060;
      break;
    case 37:
      v3 = swift_allocObject();
      *(v3 + 16) = v1;
      v4 = swift_allocObject();
      *(v4 + 16) = sub_100072274;
      *(v4 + 24) = v3;
      v2 = sub_100072298;
      break;
    default:
      *(swift_allocObject() + 16) = v1;
      v2 = sub_10007267C;
      break;
  }

  v23 = v2;
  v24 = v1;
  return v23;
}

uint64_t sub_100072028()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000725FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000726A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10006E63C;

  return sub_10004B648(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007276C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000727BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10006E63C;

  return sub_10004B904(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100072888(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10006E63C;

  return sub_10004E114(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_100072960(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10006E63C;

  return sub_10004E114(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_100072A38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10006BDE0;

  return sub_10004F444(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_100072B10()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100072B60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10006E63C;

  return sub_10004E114(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t AdaptiveTabBarSection.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F72672E656D6F68;
  }

  if (a1 == 1)
  {
    return 0x69726F6765746163;
  }

  return 0x736D6F6F72;
}

uint64_t sub_100072D60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69726F6765746163;
  v4 = 0xEA00000000007365;
  v5 = 0xE500000000000000;
  if (v2 == 1)
  {
    v5 = 0xEA00000000007365;
  }

  else
  {
    v3 = 0x736D6F6F72;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F72672E656D6F68;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000007075;
  }

  v8 = 0x69726F6765746163;
  if (*a2 != 1)
  {
    v8 = 0x736D6F6F72;
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F72672E656D6F68;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007075;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100072E58()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100072EFC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100072F8C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007302C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7HomeApp21AdaptiveTabBarSectionO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10007305C(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007075;
  v3 = *v1;
  v4 = 0xEA00000000007365;
  v5 = 0x69726F6765746163;
  if (v3 != 1)
  {
    v5 = 0x736D6F6F72;
    v4 = 0xE500000000000000;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F72672E656D6F68;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1000730C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72672E656D6F68 && a2 == 0xEA00000000007075;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_6;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v6 == a2)
  {

    goto LABEL_6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_6:

    return 0;
  }

  if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D6F6F72 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t _s7HomeApp21AdaptiveTabBarSectionO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000C4AB8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100073294()
{
  result = qword_1000DA5F0;
  if (!qword_1000DA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdaptiveTabBarSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdaptiveTabBarSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100073438(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_100073510(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for OSSignpostError();
  v112 = *(v8 - 8);
  v113 = v8;
  __chkstk_darwin(v8, v9);
  v111 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v117 = *(v11 - 8);
  v13 = __chkstk_darwin(v11, v12);
  v115 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v18 = &v109 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v109 - v20;
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_10006AF58(v22, qword_1000DB870);
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v114 = v23;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v118 = v26;
  v116 = v11;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v110 = v4;
    aBlock[0] = v32;
    *v30 = 136316162;
    *(v30 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, aBlock);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_10006B744(0xD00000000000001FLL, 0x800000010009B1D0, aBlock);
    *(v30 + 22) = 2112;
    *(v30 + 24) = v24;
    *(v30 + 32) = 2112;
    *(v30 + 34) = v25;
    *v31 = v24;
    v31[1] = v25;
    *(v30 + 42) = 2112;
    *(v30 + 44) = v26;
    v31[2] = v26;
    v33 = v24;
    v34 = v25;
    v35 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s-%s scene: %@, session: %@, connectionOptions: %@", v30, 0x34u);
    sub_1000578B4(&qword_1000D9C70, &qword_1000936A0);
    swift_arrayDestroy();
    v11 = v116;

    swift_arrayDestroy();
    v4 = v110;
  }

  if (qword_1000D97D8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for OSSignposter();
  sub_10006AF58(v36, qword_1000DB888);
  static OSSignpostID.exclusive.getter();
  v37 = OSSignposter.logHandle.getter();
  v38 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v38, v40, "HOSceneDelegateConnectingSession", "", v39, 2u);
  }

  v41 = v117;
  (*(v117 + 16))(v18, v21, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v44 = *(v41 + 8);
  v43 = v41 + 8;
  v42 = v44;
  v44(v21, v11);
  v45 = [objc_allocWithZone(NAFuture) init];
  v46 = *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture];
  *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture] = v45;

  [objc_opt_self() addViewControllersToRegistry];
  objc_opt_self();
  v47 = swift_dynamicCastObjCClass();
  if (v47)
  {
    v48 = v47;
    v114 = v42;
    v117 = v43;
    v49 = objc_allocWithZone(UIWindow);
    v110 = v24;
    v50 = [v49 initWithWindowScene:v48];
    v51 = OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window;
    v52 = *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window];
    *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window] = v50;
    v53 = v50;

    [v53 makeKeyAndVisible];
    v54 = *&v4[v51];
    if (v54)
    {
      v55 = objc_opt_self();
      v56 = v54;
      v57 = [v55 hf_keyColor];
      [v56 setTintColor:v57];
    }

    sub_1000752D0();
    v109 = OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator;
    v58 = *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator];
    if (v58)
    {
      v59 = objc_allocWithZone(HOAppNavigationURLHandler);
      v60 = v58;
      v61 = [v59 initWithNavigator:v60];
      v62 = OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_URLHandler;
      v63 = *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_URLHandler];
      *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_URLHandler] = v61;

      v64 = [objc_opt_self() sharedInstance];
      [v64 setPresentationHandler:*&v4[v62]];

      v65 = [objc_opt_self() sharedInstance];
      [v65 setApplicationURLHandler:*&v4[v62]];
    }

    v66 = [objc_opt_self() sharedApplication];
    v67 = [objc_allocWithZone(HOHomeScreenQuickActionController) initWithApplication:v66];

    v68 = OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_homeScreenQuickActionController;
    v69 = *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_homeScreenQuickActionController];
    *&v4[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_homeScreenQuickActionController] = v67;

    v70 = [v118 URLContexts];
    sub_10005B9DC(0, &qword_1000DA830, UIOpenURLContext_ptr);
    sub_100057D7C(&qword_1000DA6C0, &qword_1000DA830, UIOpenURLContext_ptr);
    v71 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v71 & 0xC000000000000001) != 0)
    {
      v72 = __CocoaSet.count.getter();
    }

    else
    {
      v72 = *(v71 + 16);
    }

    v79 = v118;
    if (v72)
    {
      v80 = [v118 URLContexts];
      v81 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100075C64(v81);
    }

    v82 = [v79 userActivities];
    sub_10005B9DC(0, &qword_1000DA6C8, NSUserActivity_ptr);
    sub_100057D7C(&qword_1000DA6D0, &qword_1000DA6C8, NSUserActivity_ptr);
    v83 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v83 & 0xC000000000000001) != 0)
    {
      v84 = __CocoaSet.count.getter();
    }

    else
    {
      v84 = *(v83 + 16);
    }

    if (v84)
    {
      v85 = [v118 userActivities];
      v86 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v87 = sub_1000773D0(v86);

      if (v87)
      {
        sub_10007607C(v87);
      }
    }

    v88 = [v118 shortcutItem];
    v89 = v116;
    if (v88)
    {
      v90 = v88;
      v91 = *&v4[v68];
      if (v91)
      {
        v92 = *&v4[v109];
        v93 = v91;
        v94 = [v93 performActionForShortcutItem:v90 navigator:v92];
        if (!v94)
        {
          __break(1u);
          return;
        }

        v95 = v94;
        aBlock[4] = sub_100074494;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100073438;
        aBlock[3] = &unk_1000C77C0;
        v96 = _Block_copy(aBlock);

        v97 = [v95 addCompletionBlock:v96];

        _Block_release(v96);
        v90 = v95;
      }
    }

    v98 = [objc_opt_self() defaultCenter];
    v99 = String._bridgeToObjectiveC()();
    [v98 addObserver:v4 selector:"navigateToEnergyCategoryWithNotification:" name:v99 object:0];

    v100 = OSSignposter.logHandle.getter();
    v101 = v115;
    OSSignpostIntervalState.signpostID.getter();
    v102 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v103 = v111;
      checkForErrorAndConsumeState(state:)();

      v105 = v112;
      v104 = v113;
      if ((*(v112 + 88))(v103, v113) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v106 = "[Error] Interval already ended";
      }

      else
      {
        (*(v105 + 8))(v103, v104);
        v106 = "";
      }

      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v100, v102, v108, "HOSceneDelegateConnectingSession", v106, v107, 2u);
    }

    else
    {
    }

    v114(v101, v89);
  }

  else
  {
    v73 = v24;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v76 = 136315650;
      *(v76 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, aBlock);
      *(v76 + 12) = 2080;
      *(v76 + 14) = sub_10006B744(0xD00000000000001FLL, 0x800000010009B1D0, aBlock);
      *(v76 + 22) = 2112;
      *(v76 + 24) = v73;
      *v77 = v73;
      v78 = v73;
      _os_log_impl(&_mh_execute_header, v74, v75, "%s-%s Failed to cast %@ as a UIWindowScene. Aborting scene session connection.", v76, 0x20u);
      sub_1000706C8(v77);

      swift_arrayDestroy();
    }
  }
}

void sub_1000742BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a4 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  (*(v7 + 8))(v10, v6);
}

void sub_100074494()
{
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10006AF58(v0, qword_1000DB870);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_10006B744(0xD000000000000032, 0x800000010009B230, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s-%s Performing action for shortcutItem", v2, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10007461C(uint64_t a1, uint64_t a2, void (*a3)(BOOL))
{
  a3(a2 == 0);
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10006AF58(v3, qword_1000DB870);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v7);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10006B744(0xD000000000000032, 0x800000010009B230, &v7);
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s-%s Performing action for shortcutItem", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100074924(void *a1)
{
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10006AF58(v3, qword_1000DB870);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, v16);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10006B744(0xD000000000000018, 0x800000010009B180, v16);
    *(v7 + 22) = 2112;
    *(v7 + 24) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s-%s: for %@", v7, 0x20u);
    sub_1000706C8(v8);

    swift_arrayDestroy();
  }

  v10 = [objc_opt_self() sharedInstance];
  [v10 executionEnvironmentDidBecomeActive];

  [*(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture) finishWithNoResult];
  sub_1000766B4();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Requesting notification authorization.", v13, 2u);
  }

  v14 = [objc_opt_self() currentNotificationCenter];
  v16[4] = sub_100074C68;
  v16[5] = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100074E90;
  v16[3] = &unk_1000C7798;
  v15 = _Block_copy(v16);
  [v14 requestAuthorizationWithOptions:55 completionHandler:v15];
  _Block_release(v15);
}

void sub_100074C68(char a1, uint64_t a2)
{
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10006AF58(v4, qword_1000DB870);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Notification authorization granted %{BOOL}d", v7, 8u);
  }

  if (a2)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_10006B744(v12, v13, &v15);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error in notification authorization: %s", v10, 0xCu);
      sub_1000578FC(v11);
    }

    else
    {
    }
  }
}

void sub_100074E90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100074F70(void *a1)
{
  v2 = v1;
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10006AF58(v4, qword_1000DB870);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v14);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10006B744(0xD000000000000019, 0x800000010009B140, &v14);
    *(v8 + 22) = 2112;
    *(v8 + 24) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s-%s: for %@", v8, 0x20u);
    sub_1000706C8(v9);

    swift_arrayDestroy();
  }

  v11 = [objc_opt_self() sharedInstance];
  [v11 executionEnvironmentWillResignActive];

  v12 = [objc_allocWithZone(NAFuture) init];
  *(v2 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture) = v12;

  return _objc_release_x1();
}

void sub_1000752D0()
{
  v1 = v0;
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10006AF58(v2, qword_1000DB870);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, v19);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10006B744(0xD000000000000020, 0x800000010009B110, v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s-%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v6 = [objc_allocWithZone(type metadata accessor for AdaptiveTabBarController(0)) init];
  v7 = _s7HomeApp24AdaptiveTabBarControllerC18dashboardNavigatorSo011HUDashboardH0_pSgvg_0();
  v8 = OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator;
  v9 = *(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator);
  *(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator) = v7;

  v10 = *(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_tabBarController);
  *(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_tabBarController) = v6;
  v18 = v6;

  v11 = *(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window);
  if (v11)
  {
    [v11 setRootViewController:v18];
  }

  v12 = [objc_opt_self() sharedApplication];
  v13 = [v12 delegate];

  if (!v13)
  {
LABEL_11:

    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = [v14 menuToolbarManager];
    swift_unknownObjectRelease();
    if (v15)
    {
      [v15 setAppNavigator:*(v1 + v8)];
      v16 = OBJC_IVAR___HOAdaptiveTabBarController_menuToolbarManager;
      swift_beginAccess();
      v17 = *&v18[v16];
      *&v18[v16] = v15;

      return;
    }

    goto LABEL_11;
  }

  swift_unknownObjectRelease();
}

void sub_1000755F4(void *a1)
{
  v2 = v1;
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10006AF58(v4, qword_1000DB870);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, v22);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10006B744(0xD000000000000027, 0x800000010009B0E0, v22);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s-%s received onboarding notification", v7, 0x16u);
    swift_arrayDestroy();
  }

  v8 = [a1 userInfo];
  if (!v8)
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  v22[0] = 0;
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  v10 = v22[0];
  if (!v22[0])
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (*(v10 + 16) && (v11 = sub_10007C3F0(0x656472616F626E6FLL, 0xED0000656D6F4864), (v12 & 1) != 0))
  {
    sub_10005A46C(*(v10 + 56) + 32 * v11, v22);

    sub_10005B9DC(0, &qword_1000D9F98, HMHome_ptr);
    if (swift_dynamicCast())
    {
      v13 = [v21 hf_isHomeEnergyHomeEmpty];
      v14 = *(v2 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator);
      if (v13)
      {
        v15 = v14;
        v16 = [v15 showHome:v21];
      }

      else if (v14)
      {
        v17 = objc_opt_self();
        v18 = v14;
        v19 = [v17 energyAccessoryTypeGroup];
        v20 = [v18 showAccessoryTypeGroup:v19 forHome:v21 animated:1];
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

id sub_100075998()
{
  *&v0[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_tabBarController] = 0;
  *&v0[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator] = 0;
  *&v0[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_URLHandler] = 0;
  *&v0[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_homeScreenQuickActionController] = 0;
  *&v0[OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HOSceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100075A38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HOSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100075B1C()
{
  v0 = type metadata accessor for Logger();
  sub_10006E590(v0, qword_1000DB870);
  sub_10006AF58(v0, qword_1000DB870);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100075BAC()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for OSSignposter();
  sub_10006E590(v2, qword_1000DB888);
  sub_10006AF58(v2, qword_1000DB888);
  type metadata accessor for DataModel();
  static DataModel.modelLogger.getter();
  return OSSignposter.init(logger:)();
}

void sub_100075C64(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([objc_opt_self() isAMac] & 1) == 0)
  {
    v8 = *(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_URLHandler);
    if (v8)
    {
      v30 = v8;
      v9 = sub_1000773BC(a1);
      if (v9)
      {
        v10 = v9;
        v29 = v1;
        if (qword_1000D97D0 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_10006AF58(v11, qword_1000DB870);
        v12 = v10;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v15 = 136315650;
          *(v15 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, aBlock);
          *(v15 + 12) = 2080;
          *(v15 + 14) = sub_10006B744(0xD000000000000019, 0x800000010009B290, aBlock);
          *(v15 + 22) = 2080;
          v16 = [v12 URL];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1000769F4();
          v17 = dispatch thunk of CustomStringConvertible.description.getter();
          v19 = v18;
          (*(v4 + 8))(v7, v3);
          v20 = sub_10006B744(v17, v19, aBlock);

          *(v15 + 24) = v20;
          _os_log_impl(&_mh_execute_header, v13, v14, "%s-%s Opening URL: %s", v15, 0x20u);
          swift_arrayDestroy();
        }

        v21 = *(v29 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_applicationActiveFuture);
        if (v21)
        {
          v22 = swift_allocObject();
          *(v22 + 16) = v30;
          *(v22 + 24) = v12;
          aBlock[4] = sub_1000769EC;
          aBlock[5] = v22;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10004AD98;
          aBlock[3] = &unk_1000C7810;
          v23 = _Block_copy(aBlock);
          v24 = v30;
          v25 = v12;
          v26 = v21;

          v27 = [v26 addCompletionBlock:v23];

          _Block_release(v23);
        }

        else
        {
        }
      }

      else
      {
        v28 = v30;
      }
    }
  }
}

void sub_10007607C(void *a1)
{
  v3 = [a1 interaction];
  if (v3)
  {
    v13 = v3;
    v4 = objc_opt_self();
    v5 = [v13 intent];
    [v4 handleIntent:v5 withNavigator:*(v1 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator)];

    if (qword_1000D97D0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10006AF58(v6, qword_1000DB870);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v10 = 136315650;
      *(v10 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v14);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_10006B744(0xD000000000000012, 0x800000010009B210, &v14);
      *(v10 + 22) = 2112;
      *(v10 + 24) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s-%s Continuing userActivity: (%@", v10, 0x20u);
      sub_1000706C8(v11);

      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1000762EC(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_homeScreenQuickActionController);
  if (v7)
  {
    v8 = *(a2 + OBJC_IVAR____TtC7HomeApp15HOSceneDelegate_navigator);
    _Block_copy(a3);
    v9 = v7;
    v10 = [v9 performActionForShortcutItem:a1 navigator:v8];
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1000770B8;
      *(v12 + 24) = v6;
      v15[4] = sub_100077108;
      v15[5] = v12;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_100073438;
      v15[3] = &unk_1000C7888;
      v13 = _Block_copy(v15);

      v14 = [v11 addCompletionBlock:v13];
      _Block_release(v13);
    }

    else
    {
      _Block_release(a3);
      __break(1u);
    }
  }

  else
  {
    _Block_copy(a3);
    a3[2](a3, 0);
  }
}

void sub_1000764D8(void *a1)
{
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10006AF58(v2, qword_1000DB870);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v5 = 136315650;
    *(v5 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v9);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10006B744(0xD000000000000016, 0x800000010009B2F0, &v9);
    *(v5 + 22) = 2112;
    *(v5 + 24) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s-%s: for %@", v5, 0x20u);
    sub_1000706C8(v6);

    swift_arrayDestroy();
  }
}

void sub_1000766B4()
{
  v0 = [objc_opt_self() sharedDispatcher];
  v1 = [v0 homeManager];

  if (v1)
  {
    v2 = [v1 homes];

    sub_10005B9DC(0, &qword_1000D9F98, HMHome_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_14:
      if (qword_1000D97D0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    [v6 hf_clearCachedWalletKeyDeviceStateForCurrentDevice];

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_15:
  v9 = type metadata accessor for Logger();
  sub_10006AF58(v9, qword_1000DB870);

  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    sub_10005B9DC(0, &qword_1000D9F98, HMHome_ptr);
    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_10006B744(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, oslog, v10, "Clearing cached wallet key device states for homes %s", v11, 0xCu);
    sub_1000578FC(v12);
  }

  else
  {
  }
}

uint64_t sub_100076994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000769AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000769F4()
{
  result = qword_1000DA6D8;
  if (!qword_1000DA6D8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6D8);
  }

  return result;
}

void sub_100076A4C(void *a1)
{
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10006AF58(v2, qword_1000DB870);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136315650;
    *(v6 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v12);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10006B744(0xD00000000000001CLL, 0x800000010009B2D0, &v12);
    *(v6 + 22) = 2112;
    *(v6 + 24) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s-%s: for %@", v6, 0x20u);
    sub_1000706C8(v7);

    swift_arrayDestroy();
  }

  v9 = [objc_opt_self() sharedManager];
  [v9 enableNotificationsForSelectedHomeWithReason:HOSceneDelegateNotificationsEnabledReasonForeground];

  v10 = [objc_opt_self() sharedInstance];
  [v10 executionEnvironmentWillEnterForeground];

  v11 = [objc_opt_self() sharedDispatcher];
  [v11 updateHomeSensingState];
}

uint64_t sub_100076CD0(unint64_t a1)
{
  if (qword_1000D97D0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_10006AF58(v2, qword_1000DB870);
    v3 = a1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v6 = 136315650;
      *(v6 + 4) = sub_10006B744(0xD00000000000001DLL, 0x800000010009B0C0, &v21);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_10006B744(0xD00000000000001BLL, 0x800000010009B2B0, &v21);
      *(v6 + 22) = 2112;
      *(v6 + 24) = v3;
      *v7 = v3;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s-%s: for %@", v6, 0x20u);
      sub_1000706C8(v7);

      swift_arrayDestroy();
    }

    v9 = [objc_opt_self() sharedInstance];
    [v9 executionEnvironmentDidEnterBackground];

    v10 = [objc_opt_self() sharedManager];
    [v10 disableNotificationsForSelectedHomeWithReason:HOSceneDelegateNotificationsEnabledReasonBackground];

    v11 = [objc_opt_self() sharedDispatcher];
    v12 = [v11 homeManager];

    if (!v12)
    {
      break;
    }

    v13 = [v12 homes];

    sub_10005B9DC(0, &qword_1000D9F98, HMHome_ptr);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (a1 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (!v14)
      {
LABEL_19:

        break;
      }
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    v15 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = [v16 hf_characteristicValueManager];
      [v19 cancelInFlightReadRequests];

      ++v15;
      if (v18 == v14)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  return +[HOWidgetUpdater updateAllWidgetsThatHaveTimelines]_0();
}

uint64_t sub_100077080()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000770D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100077128()
{
  sub_10007718C();
  result = OS_os_log.init(subsystem:category:)();
  qword_1000DB8A0 = result;
  return result;
}

unint64_t sub_10007718C()
{
  result = qword_1000D9D80;
  if (!qword_1000D9D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D9D80);
  }

  return result;
}

void *sub_1000771F4(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10005A46C(i, v9);
    sub_10005B9DC(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

void *sub_100077314(SEL *a1, unint64_t *a2, void *a3)
{
  v6 = [v3 *a1];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1000771F4(v7, a2, a3);

  if (v8)
  {
    return v8;
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1000773E4(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10005B9CC(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_10005B9CC(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10007CCC4(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_10005B9CC(v7, v9, v6 != 0);
  return v16;
}

id sub_100077518(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  if (a5)
  {
    v8 = String._bridgeToObjectiveC()();
    [a5 disableExternalUpdatesWithReason:v8];
  }

  v9 = [objc_allocWithZone(NAFuture) init];
  v10 = objc_opt_self();
  if (![v10 isRecapAvailable])
  {
    v49 = 0x6F69746172657469;
    v50 = 0xEA0000000000736ELL;
    AnyHashable.init<A>(_:)();
    if (*(a4 + 16))
    {
      v29 = sub_10007C3AC(&aBlock);
      if (v30)
      {
        sub_10005A46C(*(a4 + 56) + 32 * v29, v51);
        sub_10005A088(&aBlock);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_15;
        }

        v31 = v49;
        v49 = 0x74736566666FLL;
        v50 = 0xE600000000000000;
        AnyHashable.init<A>(_:)();
        if (*(a4 + 16))
        {
          v32 = sub_10007C3AC(&aBlock);
          if (v33)
          {
            sub_10005A46C(*(a4 + 56) + 32 * v32, v51);
            sub_10005A088(&aBlock);
            if (swift_dynamicCast())
            {
              v34 = *&v49;
              v35 = [objc_allocWithZone(UIScrollTestParameters) init];
              v36 = String._bridgeToObjectiveC()();
              [v35 setTestName:v36];

              [v35 setIterations:v31];
              [v35 setDelta:v34];
              v37 = swift_allocObject();
              *(v37 + 16) = v9;
              v47 = sub_10005A6E4;
              v48 = v37;
              aBlock = _NSConcreteStackBlock;
              v44 = 1107296256;
              v45 = sub_1000799C8;
              v46 = &unk_1000C78D8;
              v38 = _Block_copy(&aBlock);
              v39 = v9;
              v40 = v35;

              [a3 _performScrollTestWithParameters:v40 completionBlock:v38];
              _Block_release(v38);

              if (a5)
              {
                goto LABEL_5;
              }

              return v9;
            }

LABEL_15:
            sub_100057794();
            swift_allocError();
            *v41 = a4;
            *(v41 + 8) = &off_1000C45F0;
            *(v41 + 48) = 1;
            swift_willThrow();

            return v9;
          }
        }
      }
    }

    sub_10005A088(&aBlock);
    goto LABEL_15;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = objc_allocWithZone(RPTScrollViewTestParameters);
  v13 = v9;

  v14 = a3;
  v15 = String._bridgeToObjectiveC()();

  v47 = sub_10005A6E4;
  v48 = v11;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100077B44;
  v46 = &unk_1000C79C8;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 initWithTestName:v15 scrollView:v14 completionHandler:v16];
  _Block_release(v16);

  [v10 runTestWithParameters:v17];
  if (a5)
  {
LABEL_5:
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = ObjectType;
    v47 = sub_10007E720;
    v48 = v18;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100077BF0;
    v46 = &unk_1000C7928;
    v19 = _Block_copy(&aBlock);
    v20 = a5;
    v21 = v9;
    v22 = v20;

    v23 = [v21 flatMap:v19];
    _Block_release(v19);
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = ObjectType;
    v47 = sub_10007E728;
    v48 = v24;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_10007A04C;
    v46 = &unk_1000C7978;
    v25 = _Block_copy(&aBlock);
    v26 = v22;

    v27 = [v23 recover:v25];

    _Block_release(v25);
    return v27;
  }

  return v9;
}

uint64_t sub_100077B44(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100077B88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100077BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();

  return v4;
}

void *sub_100077C5C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_100077D70(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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