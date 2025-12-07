id sub_1001A6360(double a1, double a2, double a3, double a4)
{
  v33.receiver = v4;
  v33.super_class = type metadata accessor for PersonalTranslationActivityPlaceholderView();
  v9 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1002D5560;
  sub_10000A2CC(0, &qword_1003B2990, UIColor_ptr);
  v11 = v9;
  *(v10 + 32) = static UIColor.translateAccentColor.getter();
  *(v10 + 40) = [objc_opt_self() whiteColor];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [objc_opt_self() configurationWithPaletteColors:isa];

  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() _systemImageNamed:v15 withConfiguration:v14];

  v17 = [objc_allocWithZone(UIImageView) initWithImage:v16];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setContentMode:1];
  v18 = v11;
  [v18 addSubview:v17];
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1002D53E0;
  v21 = [v17 centerXAnchor];
  v22 = [v18 centerXAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:5.0];

  *(v20 + 32) = v23;
  v24 = [v17 centerYAnchor];
  v25 = [v18 centerYAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v20 + 40) = v26;
  v27 = [v17 widthAnchor];
  v28 = [v27 constraintEqualToConstant:30.0];

  *(v20 + 48) = v28;
  v29 = [v17 heightAnchor];

  v30 = [v29 constraintEqualToConstant:30.0];
  *(v20 + 56) = v30;
  sub_10000A2CC(0, &qword_1003B3480, NSLayoutConstraint_ptr);
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:v31];

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v18;
}

id sub_1001A6824(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1001A6880(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double sub_1001A6890(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

void sub_1001A68A0()
{
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_currentActivity) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_contentRole) = 2;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_preferredLayoutMode) = 3;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_presentationBehaviors) = 8;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_maximumLayoutMode) = 4;
  v1 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_associatedScenePersistenceIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_leadingView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for PersonalTranslationActivityPlaceholderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_trailingView;
  type metadata accessor for EmptyActivityPlaceholderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_minimalView;
  *(v0 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController____lazy_storage___viewModel) = 1;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController____lazy_storage___hostingController) = 1;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_sizingView;
  v7 = [objc_allocWithZone(UIView) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor:v8];

  *(v0 + v6) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001A6A74()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  v14 = [v1 window];

  if (!v14)
  {
    return;
  }

  v3 = sub_1001A5054();
  if (!v3)
  {
    v11 = 0.0;
    v13 = 0.0;
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  [v14 bounds];
  v7 = v6;
  v9 = v8;
  LODWORD(v6) = 1148846080;
  LODWORD(v8) = 1112014848;
  [v5 systemLayoutSizeFittingSize:v7 withHorizontalFittingPriority:v9 verticalFittingPriority:{v6, v8}];
  v11 = v10;
  v13 = v12;

LABEL_8:
  [v0 setPreferredContentSize:{v11, v13}];
}

uint64_t sub_1001A6BB0(uint64_t a1)
{
  type metadata accessor for STBackgroundActivityIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1001A6C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001A6C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001A6C6C()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent:0.9];

  qword_1003B5AD0 = v1;
}

id sub_1001A6E14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonalTranslatorActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1001A6E7C(void *a1, void *a2)
{
  v3 = v2;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2920);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v60 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10028D78C(0xD00000000000001FLL, 0x80000001002F6900, &v60);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Scene will connect %@", v10, 0x16u);
    sub_1000DDF70(v11);

    sub_100008664(v12);
  }

  type metadata accessor for ActivityScene();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v60 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10028D78C(0xD00000000000001FLL, 0x80000001002F6900, &v60);
      _os_log_impl(&_mh_execute_header, oslog, v24, "%s Unable to connect to ActivityScene", v25, 0xCu);
      sub_100008664(v26);

LABEL_24:

      return result;
    }

LABEL_22:

    goto LABEL_24;
  }

  v15 = v14;
  v16 = qword_1003A92D8;
  oslog = v7;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = *(qword_1003D2990 + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentViewModel);
  if (!v17)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v60 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10028D78C(0xD00000000000001FLL, 0x80000001002F6900, &v60);
      _os_log_impl(&_mh_execute_header, v27, v28, "%s Unable to find view model", v29, 0xCu);
      sub_100008664(v30);

      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v18 = [a2 role];
  v19 = static UISceneSessionRole.activityListItem.getter();
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      v41 = static UISceneSessionRole.activityBanner.getter();
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
      if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
      {
      }

      else
      {
        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v46 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v36 = sub_100005AD4(&qword_1003B5B08, &qword_1002E52A8);
      v47 = objc_allocWithZone(v36);
      v60 = 0;
      v61 = v17;
      v48 = objc_allocWithZone(sub_100005AD4(&qword_1003B5B10, &unk_1002E52B0));

      *&v47[qword_1003B5750] = SecureHostingController.init(rootView:)();
      v59.receiver = v47;
      v39 = &v59;
LABEL_31:
      v39->super_class = v36;
      v49 = [(objc_super *)v39 initWithNibName:0 bundle:0];
      v50 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
      ActivitySceneMetrics.init(size:cornerRadius:)();
      dispatch thunk of ActivityScene.resolvedMetrics.setter();
      if (qword_1003A92E0 != -1)
      {
        swift_once();
      }

      v51 = qword_1003B5AD0;
      dispatch thunk of ActivityScene.backgroundTintColor.setter();
      v52 = [objc_allocWithZone(UIWindow) initWithWindowScene:v15];
      v53 = OBJC_IVAR____TtC17SequoiaTranslator39PersonalTranslatorActivitySceneDelegate_window;
      v54 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator39PersonalTranslatorActivitySceneDelegate_window);
      *(v3 + OBJC_IVAR____TtC17SequoiaTranslator39PersonalTranslatorActivitySceneDelegate_window) = v52;
      v55 = v52;

      if (v55)
      {
        [v55 setRootViewController:v49];
      }

      v56 = *(v3 + v53);
      [v56 makeKeyAndVisible];

      goto LABEL_36;
    }
  }

  if ((sub_1001B2964() & 1) == 0)
  {
    v36 = sub_100005AD4(&qword_1003B5B08, &qword_1002E52A8);
    v37 = objc_allocWithZone(v36);
    v60 = 0;
    v61 = v17;
    v38 = objc_allocWithZone(sub_100005AD4(&qword_1003B5B10, &unk_1002E52B0));

    *&v37[qword_1003B5750] = SecureHostingController.init(rootView:)();
    v58 = v37;
    v39 = &v58;
    goto LABEL_31;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v60 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_10028D78C(0xD00000000000001FLL, 0x80000001002F6900, &v60);
    _os_log_impl(&_mh_execute_header, v32, v33, "%s Unable to crete hosting controller early exit", v34, 0xCu);
    sub_100008664(v35);

LABEL_36:

    return result;
  }

LABEL_37:

  return result;
}

unint64_t sub_1001A78F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005AD4(&qword_1003B5B30, &qword_1002E53E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_10005128C(&v22, v24);
        sub_10005128C(v24, v25);
        sub_10005128C(v25, &v23);
        result = sub_10028DD34(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100008664(v11);
          result = sub_10005128C(&v23, v11);
          v8 = v12;
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
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_10005128C(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
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

void sub_1001A7B38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005AD4(&qword_1003B5BF0, &qword_1002E54F8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_10028DD34(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
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

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1001A7D18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v21 - v10;
  v12 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v12 - 8);
  v14 = v21 - v13;
  swift_getKeyPath();
  v21[1] = a1;
  sub_1001AA624();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *a3;
  swift_beginAccess();
  sub_10001F620(a1 + v15, v14, &qword_1003AFCE0, &qword_1002D5B00);
  if ((*(v6 + 48))(v14, 1, v5))
  {
    sub_100009EBC(v14, &qword_1003AFCE0, &qword_1002D5B00);
LABEL_3:

    return 0;
  }

  (*(v6 + 16))(v11, v14, v5);
  sub_100009EBC(v14, &qword_1003AFCE0, &qword_1002D5B00);
  static Locale.current.getter();
  v17 = Locale.sqDisplayName(context:in:)();
  v19 = v18;
  v20 = *(v6 + 8);
  v20(v9, v5);
  v20(v11, v5);
  if (!v19)
  {
    goto LABEL_3;
  }

  return v17;
}

uint64_t sub_1001A7F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v119 = a1;
  v127 = a2;
  v128 = sub_100005AD4(&qword_1003B5B38, &qword_1002E53E8);
  v4 = __chkstk_darwin(v128);
  v131 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v130 = &v117 - v6;
  v7 = sub_100005AD4(&qword_1003B5B40, &qword_1002E53F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v117 - v8;
  v10 = sub_100005AD4(&qword_1003B5B48, &qword_1002E53F8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v118 = &v117 - v12;
  v13 = sub_100005AD4(&qword_1003B5B50, &qword_1002E5400);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v117 - v15;
  v121 = sub_100005AD4(&qword_1003B5B58, &qword_1002E5408);
  v17 = __chkstk_darwin(v121);
  v129 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v120 = &v117 - v20;
  __chkstk_darwin(v19);
  v139 = &v117 - v21;
  v22 = sub_100005AD4(&qword_1003B5B60, &qword_1002E5410);
  __chkstk_darwin(v22 - 8);
  v24 = &v117 - v23;
  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v25 = type metadata accessor for SymbolRenderingMode();
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  v138 = Image.symbolRenderingMode(_:)();

  v26 = v24;
  v27 = v119;
  sub_100009EBC(v26, &qword_1003B5B60, &qword_1002E5410);
  static Font.title2.getter();
  static Font.Weight.regular.getter();
  v137 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v136 = static Color.translateAccentColor.getter();
  v135 = static Color.white.getter();
  LOBYTE(v140) = 1;
  v134 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v125 = v29;
  v126 = v28;
  v123 = v31;
  v124 = v30;
  LOBYTE(v150[0]) = 0;
  v133 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v122 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v39 = sub_100005AD4(&qword_1003B5B68, &qword_1002E5448);
  sub_1001A8974(v27, &v9[*(v39 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v40 = v9;
  v41 = v16;
  v42 = v118;
  sub_100023BD4(v40, v118, &qword_1003B5B40, &qword_1002E53F0);
  v43 = (v42 + *(v11 + 44));
  v44 = v184;
  v43[4] = v183;
  v43[5] = v44;
  v43[6] = v185;
  v45 = v180;
  *v43 = v179;
  v43[1] = v45;
  v46 = v182;
  v43[2] = v181;
  v43[3] = v46;
  v47 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_100023BD4(v42, v41, &qword_1003B5B48, &qword_1002E53F8);
  v56 = v41 + *(v14 + 44);
  *v56 = v47;
  *(v56 + 8) = v49;
  *(v56 + 16) = v51;
  *(v56 + 24) = v53;
  *(v56 + 32) = v55;
  *(v56 + 40) = 0;
  v57 = static Edge.Set.bottom.getter();
  v58 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v57)
  {
    v58 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v120;
  sub_100023BD4(v41, v120, &qword_1003B5B50, &qword_1002E5400);
  v68 = v67 + *(v121 + 36);
  *v68 = v58;
  *(v68 + 8) = v60;
  *(v68 + 16) = v62;
  *(v68 + 24) = v64;
  *(v68 + 32) = v66;
  *(v68 + 40) = 0;
  v69 = v139;
  sub_100023BD4(v67, v139, &qword_1003B5B58, &qword_1002E5408);
  v70 = swift_allocObject();
  *(v70 + 16) = a3;
  *(v70 + 24) = v27;

  sub_100005AD4(&qword_1003B5B70, &qword_1002E5450);
  sub_1001AA708();
  v71 = v130;
  Button.init(action:label:)();
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v72 = (v71 + *(sub_100005AD4(&qword_1003B5BB0, &qword_1002E5478) + 36));
  v73 = v186[1];
  *v72 = v186[0];
  v72[1] = v73;
  v72[2] = v186[2];
  v74 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v71 + *(sub_100005AD4(&qword_1003B5BB8, &qword_1002E5480) + 36);
  *v83 = v74;
  *(v83 + 8) = v76;
  *(v83 + 16) = v78;
  *(v83 + 24) = v80;
  *(v83 + 32) = v82;
  *(v83 + 40) = 0;
  v84 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v71 + *(sub_100005AD4(&qword_1003B5BC0, &qword_1002E5488) + 36);
  *v93 = v84;
  *(v93 + 8) = v86;
  *(v93 + 16) = v88;
  *(v93 + 24) = v90;
  *(v93 + 32) = v92;
  *(v93 + 40) = 0;
  v94 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v95 = v129;
  v96 = v71 + *(v128 + 36);
  *v96 = v94;
  *(v96 + 8) = v97;
  *(v96 + 16) = v98;
  *(v96 + 24) = v99;
  *(v96 + 32) = v100;
  *(v96 + 40) = 0;
  sub_10001F620(v69, v95, &qword_1003B5B58, &qword_1002E5408);
  v101 = v131;
  sub_10001F620(v71, v131, &qword_1003B5B38, &qword_1002E53E8);
  v140 = v138;
  LOWORD(v141) = 1;
  *(&v141 + 2) = v174;
  WORD3(v141) = v175;
  *(&v141 + 1) = KeyPath;
  *&v142 = v137;
  *(&v142 + 1) = v136;
  *&v143 = v135;
  BYTE8(v143) = v134;
  *(&v143 + 9) = v176[0];
  HIDWORD(v143) = *(v176 + 3);
  v103 = v125;
  v102 = v126;
  *&v144 = v126;
  *(&v144 + 1) = v125;
  v105 = v123;
  v104 = v124;
  *&v145 = v124;
  *(&v145 + 1) = v123;
  LOBYTE(v146) = 0;
  DWORD1(v146) = *&v178[3];
  *(&v146 + 1) = *v178;
  BYTE8(v146) = v133;
  *(&v146 + 9) = *v177;
  HIDWORD(v146) = *&v177[3];
  v106 = v122;
  *&v147 = v122;
  *(&v147 + 1) = v34;
  *&v148 = v36;
  *(&v148 + 1) = v38;
  v149 = 0;
  v108 = v146;
  v107 = v147;
  v109 = v148;
  v110 = v127;
  *(v127 + 144) = 0;
  v110[7] = v107;
  v110[8] = v109;
  v111 = v141;
  *v110 = v140;
  v110[1] = v111;
  v112 = v142;
  v113 = v143;
  v114 = v144;
  v110[5] = v145;
  v110[6] = v108;
  v110[3] = v113;
  v110[4] = v114;
  v110[2] = v112;
  v115 = sub_100005AD4(&qword_1003B5BC8, &qword_1002E5490);
  sub_10001F620(v95, v110 + *(v115 + 48), &qword_1003B5B58, &qword_1002E5408);
  sub_10001F620(v101, v110 + *(v115 + 64), &qword_1003B5B38, &qword_1002E53E8);
  sub_10001F620(&v140, v150, &qword_1003B5BD0, &unk_1002E5498);
  sub_100009EBC(v71, &qword_1003B5B38, &qword_1002E53E8);
  sub_100009EBC(v139, &qword_1003B5B58, &qword_1002E5408);
  sub_100009EBC(v101, &qword_1003B5B38, &qword_1002E53E8);
  sub_100009EBC(v95, &qword_1003B5B58, &qword_1002E5408);
  v150[0] = v138;
  v150[1] = 0;
  v151 = 1;
  v152 = 0;
  v153 = v174;
  v154 = v175;
  v155 = KeyPath;
  v156 = v137;
  v157 = v136;
  v158 = v135;
  v159 = v134;
  *v160 = v176[0];
  *&v160[3] = *(v176 + 3);
  v161 = v102;
  v162 = v103;
  v163 = v104;
  v164 = v105;
  v165 = 0;
  *&v166[3] = *&v178[3];
  *v166 = *v178;
  v167 = v133;
  *&v168[3] = *&v177[3];
  *v168 = *v177;
  v169 = v106;
  v170 = v34;
  v171 = v36;
  v172 = v38;
  v173 = 0;
  return sub_100009EBC(v150, &qword_1003B5BD0, &unk_1002E5498);
}

uint64_t sub_1001A8974@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a1;
  v69 = a2;
  v2 = type metadata accessor for Font.Leading();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v68 = sub_100005AD4(&qword_1003B5BD8, &qword_1002E54A8) - 8;
  v5 = __chkstk_darwin(v68);
  v67 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v58 - v7;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v70 = String.init(localized:table:bundle:locale:comment:)();
  v71 = v10;
  sub_10001F278();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.callout.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;

  sub_10002EA54(v11, v13, v15 & 1);

  v70 = static Color.sourceTextColor.getter();
  v60 = Text.foregroundStyle<A>(_:)();
  v22 = v21;
  v61 = v23;
  v62 = v24;
  sub_10002EA54(v16, v18, v20 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v59;
  v27._countAndFlagsBits = sub_1001A7D18(v59, &unk_1002E53B8, &OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v27);

  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
  Image.init(_internalSystemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 32;
  v29._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
  v30._countAndFlagsBits = sub_1001A7D18(v26, &unk_1002E5390, &OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v30);

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
  LocalizedStringKey.init(stringInterpolation:)();
  v32 = Text.init(_:tableName:bundle:comment:)();
  v34 = v33;
  LOBYTE(v16) = v35;
  static Font.footnote.getter();
  v37 = v63;
  v36 = v64;
  v38 = v65;
  (*(v64 + 104))(v63, enum case for Font.Leading.loose(_:), v65);
  Font.leading(_:)();

  (*(v36 + 8))(v37, v38);
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v39 = Text.font(_:)();
  v41 = v40;
  LOBYTE(v26) = v42;
  v44 = v43;

  sub_10002EA54(v32, v34, v16 & 1);

  v45 = sub_100005AD4(&qword_1003B5BE0, &unk_1002E54B0);
  v46 = v66;
  v47 = &v66[*(v45 + 36)];
  v48 = *(sub_100005AD4(&qword_1003AB620, &qword_1002D5350) + 28);
  v49 = enum case for Image.Scale.small(_:);
  v50 = type metadata accessor for Image.Scale();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = swift_getKeyPath();
  *v46 = v39;
  *(v46 + 8) = v41;
  *(v46 + 16) = v26 & 1;
  *(v46 + 24) = v44;
  v51 = static HierarchicalShapeStyle.tertiary.getter();
  v52 = v67;
  *(v46 + *(v68 + 44)) = v51;
  sub_10001F620(v46, v52, &qword_1003B5BD8, &qword_1002E54A8);
  v53 = v69;
  v54 = v60;
  *v69 = v60;
  v53[1] = v22;
  LOBYTE(v39) = v61 & 1;
  *(v53 + 16) = v61 & 1;
  v53[3] = v62;
  v55 = v53;
  v56 = sub_100005AD4(&qword_1003B5BE8, &qword_1002E54F0);
  sub_10001F620(v52, v55 + *(v56 + 48), &qword_1003B5BD8, &qword_1002E54A8);
  sub_100005B1C(v54, v22, v39);

  sub_100009EBC(v46, &qword_1003B5BD8, &qword_1002E54A8);
  sub_100009EBC(v52, &qword_1003B5BD8, &qword_1002E54A8);
  sub_10002EA54(v54, v22, v39);
}

double sub_1001A9020@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100005AD4(&qword_1003AA948, &qword_1002D4690);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005AD4(&qword_1003B5B60, &qword_1002E5410);
  __chkstk_darwin(v9 - 8);
  v11 = v21 - v10;
  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v12 = type metadata accessor for SymbolRenderingMode();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  Image.symbolRenderingMode(_:)();

  sub_100009EBC(v11, &qword_1003B5B60, &qword_1002E5410);
  (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
  v13 = Image.resizable(capInsets:resizingMode:)();

  (*(v6 + 8))(v8, v5);
  static Font.Weight.light.getter();
  v14 = type metadata accessor for Font.Design();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = static Font.system(size:weight:design:)();
  sub_100009EBC(v4, &qword_1003AA948, &qword_1002D4690);
  KeyPath = swift_getKeyPath();
  v17 = static Color.translateAccentColor.getter();
  v18 = static Color.quaternaryTranslateAccentColor.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v13;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  v19 = v21[1];
  *(a1 + 40) = v21[0];
  *(a1 + 56) = v19;
  result = *&v22;
  *(a1 + 72) = v22;
  return result;
}

void sub_1001A935C(uint64_t a1, double a2)
{
  v4 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1;
  sub_10005E36C(0, 0, v6, &unk_1002E5378, v9);
}

uint64_t sub_1001A9490(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_100151E9C;

  return sub_1001A954C(a5);
}

uint64_t sub_1001A954C(uint64_t a1)
{
  v1[18] = a1;
  v2 = type metadata accessor for URL();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = type metadata accessor for Locale();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[28] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001A9720, v5, v4);
}

uint64_t sub_1001A9720()
{
  v63 = v0;

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opening personal translation in Translate app", v4, 2u);
  }

  v6 = v0 + 23;
  v5 = v0[23];
  v7 = v0[25];
  v61 = v0[24];
  v8 = v0[18];

  v62[0] = 0;
  sub_100005AD4(&qword_1003B36B8, &qword_1002E0F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;
  *(inited + 48) = 1;
  v11 = sub_100292804(inited);
  swift_setDeallocating();
  sub_100009EBC(inited + 32, &qword_1003B36C0, &qword_1002E0F28);
  swift_getKeyPath();
  v0[15] = v8;
  sub_1001AA624();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
  swift_beginAccess();
  v13 = v8 + v12;
  v14 = v5;
  sub_10001F620(v13, v5, &qword_1003AFCE0, &qword_1002D5B00);
  v15 = *(v7 + 48);
  if (v15(v14, 1, v61) != 1)
  {
    v6 = v0 + 22;
    v59 = v0[22];
    v60 = v11;
    v16 = v0[18];
    v57 = *(v0[25] + 32);
    v58 = v0[24];
    v57(v0[27], v0[23]);
    swift_getKeyPath();
    v0[16] = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
    swift_beginAccess();
    sub_10001F620(v16 + v17, v59, &qword_1003AFCE0, &qword_1002D5B00);
    if (v15(v59, 1, v58) != 1)
    {
      (v57)(v0[26], v0[22], v0[24]);
      sub_100005AD4(&qword_1003BBEE0, &qword_1002DB810);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_1002E4DB0;
      Locale.ltIdentifier.getter();
      URLQueryItem.init(name:value:)();

      Locale.ltIdentifier.getter();
      URLQueryItem.init(name:value:)();

      URLQueryItem.init(name:value:)();
      static URL.translateAppURL(with:)();

      v24 = [objc_opt_self() defaultWorkspace];
      if (v24)
      {
        v26 = v24;
        URL._bridgeToObjectiveC()(v25);
        v28 = v27;
        sub_1001A78F0(v60);

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v0[17] = 0;
        v30 = [v26 openSensitiveURL:v28 withOptions:isa error:v0 + 17];

        v31 = v0[17];
        v33 = v0[26];
        v32 = v0[27];
        v35 = v0[24];
        v34 = v0[25];
        v36 = v0[20];
        v37 = v0[21];
        v38 = v0[19];
        if (v30)
        {
          v39 = *(v36 + 8);
          v40 = v31;
          v39(v37, v38);
          v41 = *(v34 + 8);
          v41(v33, v35);
          v41(v32, v35);
          v62[0] = 1;
        }

        else
        {
          v50 = v31;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          (*(v36 + 8))(v37, v38);
          v51 = *(v34 + 8);
          v51(v33, v35);
          v51(v32, v35);
          swift_errorRetain();
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            *v54 = 138412290;
            v56 = _convertErrorToNSError(_:)();
            *(v54 + 4) = v56;
            *v55 = v56;
            _os_log_impl(&_mh_execute_header, v52, v53, "Failed to open URL with LaunchServices: %@", v54, 0xCu);
            sub_100009EBC(v55, &unk_1003AECA0, &unk_1002D3F10);
          }

          else
          {
          }
        }
      }

      else
      {
        v42 = v0[26];
        v43 = v0[27];
        v44 = v0[24];
        v45 = v0[25];
        v46 = v0[20];
        v47 = v0[21];
        v48 = v0[19];

        (*(v46 + 8))(v47, v48);
        v49 = *(v45 + 8);
        v49(v42, v44);
        v49(v43, v44);
        v62[0] = 0;
      }

      goto LABEL_11;
    }

    (*(v0[25] + 8))(v0[27], v0[24]);
  }

  v18 = *v6;

  sub_100009EBC(v18, &qword_1003AFCE0, &qword_1002D5B00);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Cannot open Translate app with nil locales", v21, 2u);
  }

LABEL_11:
  sub_1001A9FCC(v62);

  v22 = v0[1];

  return v22();
}

void sub_1001A9FCC(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2920);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Opening personal translation in Translate app was successful", v4, 2u);
    }
  }
}

uint64_t sub_1001AA0C4()
{
  v1 = sub_100005AD4(&qword_1003B5B18, &qword_1002E5358);
  __chkstk_darwin(v1);
  v3 = &v9 - v2;
  v4 = *v0;
  v5 = *(v0 + 1);
  *v3 = static VerticalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v6 = sub_100005AD4(&qword_1003B5B20, &unk_1002E5360);
  sub_1001A7F98(v5, &v3[*(v6 + 44)], v4);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  sub_10001BAEC(&qword_1003B5B28, &qword_1003B5B18, &qword_1002E5358, &protocol conformance descriptor for HStack<A>);

  View.onTapGesture(count:perform:)();

  return sub_100009EBC(v3, &qword_1003B5B18, &qword_1002E5358);
}

uint64_t sub_1001AA23C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001AA280()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001AA2C0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B16C;

  return sub_1001A9490(v6, a1, v4, v5, v7);
}

uint64_t sub_1001AA384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001AA624();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
  swift_beginAccess();
  return sub_10001F620(v3 + v4, a2, &qword_1003AFCE0, &qword_1002D5B00);
}

uint64_t sub_1001AA42C(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10001F620(a1, &v6 - v3, &qword_1003AFCE0, &qword_1002D5B00);
  return sub_1001D2BA4(v4);
}

uint64_t sub_1001AA4D8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001AA554(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

unint64_t sub_1001AA624()
{
  result = qword_1003B4900;
  if (!qword_1003B4900)
  {
    type metadata accessor for PersonalTranslatorViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4900);
  }

  return result;
}

uint64_t sub_1001AA684@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1001AA708()
{
  result = qword_1003B5B78;
  if (!qword_1003B5B78)
  {
    sub_100005EA8(&qword_1003B5B70, &qword_1002E5450);
    sub_1001AA794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5B78);
  }

  return result;
}

unint64_t sub_1001AA794()
{
  result = qword_1003B5B80;
  if (!qword_1003B5B80)
  {
    sub_100005EA8(&qword_1003B5B88, &qword_1002E5458);
    sub_1001AA84C();
    sub_10001BAEC(&qword_1003B5BA0, &qword_1003B5BA8, &qword_1002E5470, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5B80);
  }

  return result;
}

unint64_t sub_1001AA84C()
{
  result = qword_1003B5B90;
  if (!qword_1003B5B90)
  {
    sub_100005EA8(&qword_1003B5B98, &unk_1002E5460);
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588, &unk_1002D4A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5B90);
  }

  return result;
}

uint64_t sub_1001AA92C()
{
  sub_100005EA8(&qword_1003B5B18, &qword_1002E5358);
  sub_10001BAEC(&qword_1003B5B28, &qword_1003B5B18, &qword_1002E5358, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t PersonalTranslatorBroadcastAutoplayButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PersonalTranslatorBroadcastAutoplayButton(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_1001AAB9C(v1, &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1001AAC04(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  v14 = v1;
  Button.init(action:label:)();
  v8 = static Color.secondaryTranslateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  v15 = v8;
  v10 = AnyShapeStyle.init<A>(_:)();
  result = sub_100005AD4(&qword_1003B5BF8, &qword_1002E5530);
  v12 = (a1 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v10;
  return result;
}

uint64_t type metadata accessor for PersonalTranslatorBroadcastAutoplayButton(uint64_t a1)
{
  result = qword_1003B5C58;
  if (!qword_1003B5C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AAB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTranslatorBroadcastAutoplayButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AAC04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTranslatorBroadcastAutoplayButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AAC6C@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1001AACD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1001AAB9C(v2, &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1001AAC04(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  v14 = v2;
  Button.init(action:label:)();
  v8 = static Color.secondaryTranslateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  v15 = v8;
  v10 = AnyShapeStyle.init<A>(_:)();
  result = sub_100005AD4(&qword_1003B5BF8, &qword_1002E5530);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v10;
  return result;
}

uint64_t sub_1001AAE54@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001AAE80@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001AAF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayButton.Size();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1001AB014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlayButton.Size();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_1001AB0D0(uint64_t a1)
{
  type metadata accessor for PlayButton.Size();
  if (v1 <= 0x3F)
  {
    sub_1001312D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1001AB168()
{
  result = qword_1003B5C98;
  if (!qword_1003B5C98)
  {
    sub_100005EA8(&qword_1003B5BF8, &qword_1002E5530);
    sub_10001BAEC(&qword_1003AB5B8, &qword_1003AB5A0, &qword_1002D7180, &protocol conformance descriptor for Button<A>);
    sub_10001BAEC(&qword_1003AA590, &qword_1003AA598, &qword_1002D40F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5C98);
  }

  return result;
}

uint64_t sub_1001AB24C()
{
  v1 = type metadata accessor for PersonalTranslatorBroadcastAutoplayButton(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = type metadata accessor for PlayButton.Size();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  if (*(v0 + v3 + *(v2 + 32)))
  {
  }

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1001AB34C()
{
  v1 = type metadata accessor for PersonalTranslatorBroadcastAutoplayButton(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t PersonalTranslatorBroadcastDismissButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PersonalTranslatorBroadcastDismissButton(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_1001AB59C(v1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1001AB604(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  Button.init(action:label:)();
  v8 = static Color.secondaryTranslateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  v13[1] = v8;
  v10 = AnyShapeStyle.init<A>(_:)();
  result = sub_100005AD4(&qword_1003B5BF8, &qword_1002E5530);
  v12 = (a1 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v10;
  return result;
}

uint64_t type metadata accessor for PersonalTranslatorBroadcastDismissButton(uint64_t a1)
{
  result = qword_1003B5CF8;
  if (!qword_1003B5CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AB59C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTranslatorBroadcastDismissButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTranslatorBroadcastDismissButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1001AB59C(v2, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1001AB604(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  Button.init(action:label:)();
  v8 = static Color.secondaryTranslateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  v13[1] = v8;
  v10 = AnyShapeStyle.init<A>(_:)();
  result = sub_100005AD4(&qword_1003B5BF8, &qword_1002E5530);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v10;
  return result;
}

uint64_t sub_1001AB820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayButton.Size();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001AB8FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlayButton.Size();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_1001AB9B4(uint64_t a1)
{
  type metadata accessor for PlayButton.Size();
  if (v1 <= 0x3F)
  {
    sub_1001312D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001ABA38()
{
  v1 = (type metadata accessor for PersonalTranslatorBroadcastDismissButton(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for PlayButton.Size();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  if (*(v0 + v2 + v1[7]))
  {
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001ABB2C()
{
  v1 = type metadata accessor for PersonalTranslatorBroadcastDismissButton(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 28) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_1001ABBC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001ABC1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1001ABCA0()
{
  result = sub_1001ABCC0();
  qword_1003D2998 = result;
  return result;
}

unint64_t sub_1001ABCC0()
{
  sub_100174454();
  v0 = sub_10000B55C();
  if (v0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_sceneContext);
    v2 = v0;
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D2920);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "SceneUseCaseEnvironment couldn't access AppDelegate", v6, 2u);
    }

    type metadata accessor for SceneContext(0);
    swift_allocObject();
    v1 = sub_1002121AC();
  }

  return v1 | 0x8000000000000000;
}

double sub_1001ABDF4@<D0>(void *a1@<X8>)
{
  if (qword_1003A92E8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1003D2998;

  return result;
}

uint64_t sub_1001ABE68()
{
  sub_1001ABEA4();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_1001ABEA4()
{
  result = qword_1003B5D30;
  if (!qword_1003B5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5D30);
  }

  return result;
}

uint64_t sub_1001ABF08()
{
  swift_getKeyPath();
  sub_1001ACC48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);

  return v1;
}

double sub_1001ABF88@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001ACC48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1000DBE3C;
  a2[1] = v6;

  return result;
}

double sub_1001AC030(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  swift_getKeyPath();
  sub_1001ACC48();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_1001AC11C()
{
  swift_getKeyPath();
  sub_1001ACC48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t sub_1001AC194@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001ACC48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);
  return swift_unknownObjectRetain();
}

double sub_1001AC214(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1001ACC48();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double sub_1001AC2B4()
{
  swift_getKeyPath();
  sub_1001ACC48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_1001AC328@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001ACC48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 80);

  return result;
}

double sub_1001AC3A4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1001ACC48();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_1001AC440()
{
  swift_getKeyPath();
  sub_1001ACC48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_1001AC4C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001ACC48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  *a2 = *(v3 + 88);
  a2[1] = v4;
}

uint64_t sub_1001AC53C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88) == a1 && *(v2 + 96) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 88) = a1;
    *(v2 + 96) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001ACC48();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1001AC66C()
{
  swift_getKeyPath();
  sub_1001ACC48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = swift_allocObject();
    swift_weakInit();
    swift_unknownObjectRetain();

    sub_1001D18C4(v1, v2, sub_1001ACCD8, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000078E8(v4, qword_1003D2920);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No translation to playback", v7, 2u);
    }
  }
}

double sub_1001AC814(uint64_t a1, uint64_t a2)
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2920);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10028D78C(0xD000000000000017, 0x80000001002F8620, v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s rendering call back with rendering model", v5, 0xCu);
    sub_100008664(v6);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001ACC48();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

char *sub_1001ACA18()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC17SequoiaTranslator36PersonalTranslatorBroadcastViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1001ACABC()
{
  sub_1001ACA18();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonalTranslatorBroadcastViewModel(uint64_t a1)
{
  result = qword_1003B5D68;
  if (!qword_1003B5D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001ACB68(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_1001ACC48()
{
  result = qword_1003B5F78;
  if (!qword_1003B5F78)
  {
    type metadata accessor for PersonalTranslatorBroadcastViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5F78);
  }

  return result;
}

uint64_t sub_1001ACCA0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

void sub_1001ACD00()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_1001ACD3C(uint64_t a1, uint64_t a2)
{
  *(*(v2 + 16) + 56) = *(v2 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1001ACD84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1001AC53C(v1, v2);
}

uint64_t sub_1001ACDC4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 88) = v0[3];
  *(v1 + 96) = v2;
}

uint64_t sub_1001ACE0C()
{

  return _swift_deallocObject(v0, 32);
}

void sub_1001ACE6C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

uint64_t sub_1001ACEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003B2300, &unk_1002D95B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1001ACFC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005AD4(&qword_1003B2300, &unk_1002D95B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PersonalTranslatorBubble(uint64_t a1)
{
  result = qword_1003B5FD8;
  if (!qword_1003B5FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001AD0D8(uint64_t a1)
{
  sub_1001AD1F8(319);
  if (v1 <= 0x3F)
  {
    sub_10008D2A8(319, &qword_1003B2380, &qword_1003AC848, &qword_1002D66A0, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10008D2A8(319, &qword_1003AE510, &qword_1003AE518, &qword_1002D8DB0, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000EEAF0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001AD1F8(uint64_t a1)
{
  if (!qword_1003B5FE8)
  {
    type metadata accessor for PersonalTranslatorViewModel(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B5FE8);
    }
  }
}

uint64_t sub_1001AD26C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1001AD3AC()
{
  v1 = sub_1001AD26C();
  swift_getKeyPath();
  sub_1001AA624();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentLoudspeakerTranslationForTTS);
  v3 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentLoudspeakerTranslationForTTS + 8);
  swift_unknownObjectRetain();

  if (v2)
  {
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 24))(ObjectType, v3);
    v7 = v6;
    v8 = (v0 + *(type metadata accessor for PersonalTranslatorBubble(0) + 24));
    if (*v8)
    {
      v9 = v8[1];
      v10 = swift_getObjectType();
      if (v5 == (*(v9 + 24))(v10, v9) && v7 == v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v13 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

double sub_1001AD518()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_100005AD4(&qword_1003AC848, &qword_1002D66A0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = type metadata accessor for PersonalTranslatorBubble(0);
  sub_10001F620(v0 + *(v14 + 20), v7, &qword_1003B23E0, &qword_1002D6770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10008E200(v7, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v16 = type metadata accessor for UserInterfaceSizeClass();
  v17 = *(v16 - 8);
  v18 = 0.73;
  if ((*(v17 + 48))(v13, 1, v16) != 1)
  {
    sub_10001F620(v13, v11, &qword_1003AC848, &qword_1002D66A0);
    v19 = (*(v17 + 88))(v11, v16);
    if (v19 == enum case for UserInterfaceSizeClass.compact(_:))
    {
      v18 = 0.55;
    }

    else if (v19 != enum case for UserInterfaceSizeClass.regular(_:))
    {
      (*(v17 + 8))(v11, v16);
    }
  }

  sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
  return v18;
}

uint64_t sub_1001AD880@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v95 = type metadata accessor for PersonalTranslatorBubble(0);
  v86 = *(v95 - 1);
  __chkstk_darwin(v95);
  v88 = v3;
  v89 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BubbleViewConfiguration();
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin(v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B6030, &qword_1002E5980);
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v80 = &v80 - v8;
  v81 = sub_100005AD4(&qword_1003B6038, &qword_1002E5988);
  __chkstk_darwin(v81);
  v10 = &v80 - v9;
  v87 = sub_100005AD4(&qword_1003B6040, &qword_1002E5990);
  __chkstk_darwin(v87);
  v92 = &v80 - v11;
  v91 = sub_100005AD4(&qword_1003B6048, &qword_1002E5998);
  __chkstk_darwin(v91);
  v93 = &v80 - v12;
  v13 = static HorizontalAlignment.leading.getter();
  LOBYTE(v104) = 0;
  sub_1001AE208(v2, v100);
  v113 = v100[2];
  v114 = v100[3];
  v115 = *&v100[4];
  v112 = v100[1];
  v111 = v100[0];
  v116[2] = v100[2];
  v116[3] = v100[3];
  v117 = *&v100[4];
  v116[0] = v100[0];
  v116[1] = v100[1];
  sub_10001F620(&v111, v99, &qword_1003B6050, &qword_1002E59A0);
  sub_100009EBC(v116, &qword_1003B6050, &qword_1002E59A0);
  *(&v101[1] + 7) = v112;
  *(&v101[2] + 7) = v113;
  *(&v101[3] + 7) = v114;
  *(&v101[4] + 7) = v115;
  *(v101 + 7) = v111;
  v14 = v104;
  v15 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v100[0]) = 0;
  v24 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v102 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v103[55] = v107;
  *&v103[71] = v108;
  *&v103[87] = v109;
  *&v103[103] = v110;
  *&v103[7] = v104;
  *&v103[23] = v105;
  *&v103[39] = v106;
  *(&v99[2] + 1) = v101[1];
  *(&v99[3] + 1) = v101[2];
  *(&v99[4] + 1) = v101[3];
  v99[5] = *(&v101[3] + 15);
  *&v99[0] = v13;
  *(&v99[0] + 1) = 0x4010000000000000;
  LOBYTE(v99[1]) = v14;
  *(&v99[1] + 1) = v101[0];
  LOBYTE(v99[6]) = v15;
  *(&v99[6] + 1) = v17;
  *&v99[7] = v19;
  *(&v99[7] + 1) = v21;
  *&v99[8] = v23;
  BYTE8(v99[8]) = 0;
  LOBYTE(v99[9]) = v24;
  *(&v99[9] + 1) = v26;
  *&v99[10] = v28;
  *(&v99[10] + 1) = v30;
  *&v99[11] = v32;
  BYTE8(v99[11]) = 0;
  *(&v99[16] + 9) = *&v103[80];
  *(&v99[17] + 9) = *&v103[96];
  *(&v99[15] + 9) = *&v103[64];
  *(&v99[18] + 1) = *(&v110 + 1);
  *(&v99[11] + 9) = *v103;
  *(&v99[12] + 9) = *&v103[16];
  *(&v99[13] + 9) = *&v103[32];
  v33 = v80;
  *(&v99[14] + 9) = *&v103[48];
  sub_1001AE61C(v6);
  sub_100005AD4(&qword_1003B6058, &qword_1002E59A8);
  sub_1001AF0F4();
  View.bubble(configuration:)();
  (*(v82 + 8))(v6, v83);
  memcpy(v100, v99, sizeof(v100));
  sub_100009EBC(v100, &qword_1003B6058, &qword_1002E59A8);
  if (qword_1003A91D8 != -1)
  {
    swift_once();
  }

  v34 = qword_1003D2580;
  (*(v84 + 32))(v10, v33, v85);
  v35 = &v10[*(v81 + 36)];
  *v35 = v34;
  v35[1] = sub_1001AEED8;
  v35[2] = 0;
  v36 = v95;
  v37 = *(v2 + v95[7]);
  v90 = v10;
  v38 = (v37 & 1) != 0 || *(v2 + v95[6]) == 0;
  LODWORD(v85) = v38;
  LODWORD(v84) = sub_1001AD3AC();
  v39 = (v2 + v36[6]);
  if (!*v39 || (v40 = v39[1], ObjectType = swift_getObjectType(), v42 = sub_1000E515C(ObjectType, v40), v42 == 4))
  {
    v42 = 2;
  }

  v43 = v89;
  sub_1001AF2C4(v2, v89);
  v44 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v45 = swift_allocObject();
  sub_1001AF4E4(v43, v45 + v44);
  if (v37)
  {
    v46 = static Color.translateAccentColor.getter();
  }

  else
  {
    v46 = static Color.sourceTextColor.getter();
  }

  v47 = v46;
  v48 = (v2 + v36[10]);
  v50 = v48[1];
  v97 = *v48;
  v49 = v97;
  v98 = v50;
  sub_100005AD4(&qword_1003AA820, &qword_1002D8480);
  State.projectedValue.getter();
  v51 = v99[0];
  v52 = *&v99[1];
  v53 = static VerticalAlignment.center.getter();
  LOBYTE(v99[0]) = v85;
  BYTE1(v99[0]) = v84 & 1;
  BYTE2(v99[0]) = v42;
  *(&v99[0] + 1) = sub_1001AF548;
  *&v99[1] = v45;
  BYTE8(v99[1]) = 1;
  *&v99[2] = v53;
  *(&v99[2] + 1) = v47;
  v99[3] = v51;
  *&v99[4] = v52;
  *(&v99[4] + 1) = 0x4030000000000000;
  LOBYTE(v99[5]) = 1;
  *(&v99[5] + 1) = 0x4024000000000000;
  LOBYTE(v99[6]) = 0;
  v54 = v92;
  sub_100023BD4(v90, v92, &qword_1003B6038, &qword_1002E5988);
  v55 = v54 + *(v87 + 36);
  v56 = v99[5];
  *(v55 + 64) = v99[4];
  *(v55 + 80) = v56;
  *(v55 + 96) = v99[6];
  v57 = v99[1];
  *v55 = v99[0];
  *(v55 + 16) = v57;
  v58 = v99[3];
  *(v55 + 32) = v99[2];
  *(v55 + 48) = v58;
  sub_100086B40(v99, &v97);

  v97 = v49;
  v98 = v50;
  State.wrappedValue.getter();
  v59 = v96 + 16.0;
  v60 = sub_1001AD518();
  v96 = 400.0;
  State.init(wrappedValue:)();
  v61 = v97;
  v62 = v98;
  v63 = v93;
  sub_100023BD4(v54, v93, &qword_1003B6040, &qword_1002E5990);
  v64 = v63 + *(v91 + 36);
  *v64 = v37 ^ 1;
  *(v64 + 8) = v59;
  *(v64 + 16) = v60;
  *(v64 + 24) = 0;
  *(v64 + 32) = v61;
  *(v64 + 40) = v62;
  v65 = sub_1001AD26C();
  swift_getKeyPath();
  v97 = v65;
  sub_1001AA624();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v62) = *(v65 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__showSourceText);

  if (v62 == 1)
  {
    v66 = v95;
    v67 = (v2 + v95[8]);
    v68 = v67[1];
    v97 = *v67;
    v98 = v68;

    v69._countAndFlagsBits = 10;
    v69._object = 0xE100000000000000;
    String.append(_:)(v69);
    v70 = (v2 + v66[9]);
    v71 = *v70;
    v72 = v70[1];

    v73._countAndFlagsBits = v71;
    v73._object = v72;
    String.append(_:)(v73);

    v75 = v97;
    v74 = v98;
  }

  else
  {
    v76 = (v2 + v95[9]);
    v75 = *v76;
    v74 = v76[1];
  }

  v77 = v94;
  sub_100023BD4(v63, v94, &qword_1003B6048, &qword_1002E5998);
  result = sub_100005AD4(&qword_1003B6098, &qword_1002E59F0);
  v79 = (v77 + *(result + 36));
  *v79 = v75;
  v79[1] = v74;
  return result;
}

uint64_t sub_1001AE208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1001AD26C();
  swift_getKeyPath();
  sub_1001AA624();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__showSourceText);

  if (v4 == 1)
  {
    v48 = type metadata accessor for PersonalTranslatorBubble(0);
    sub_10001F278();

    v5 = Text.init<A>(_:)();
    v6 = a1;
    v8 = v7;
    v10 = v9;
    static Font.subheadline.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v11 = Text.font(_:)();
    v13 = v12;
    v15 = v14;

    v16 = v8;
    a1 = v6;
    sub_10002EA54(v5, v16, v10 & 1);

    if (*(v6 + *(v48 + 28)) == 1)
    {
      static Color.translateAccentColor.getter();
    }

    else
    {
      static Color.sourceTextColor.getter();
    }

    v17 = Text.foregroundStyle<A>(_:)();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_10002EA54(v11, v13, v15 & 1);

    v47 = v19;
    v49 = v17;
    v45 = v21 & 1;
    sub_100005B1C(v17, v19, v21 & 1);
    v46 = v23;

    v44 = 0x3FE3333333333333;
  }

  else
  {
    v47 = 0;
    v49 = 0;
    v45 = 0;
    v46 = 0;
    v44 = 0;
  }

  v43 = a1;
  v24 = type metadata accessor for PersonalTranslatorBubble(0);
  sub_10001F278();

  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v30 = Text.font(_:)();
  v32 = v31;
  v34 = v33;

  sub_10002EA54(v25, v27, v29 & 1);

  if (*(v43 + *(v24 + 28)) == 1)
  {
    static Color.translateAccentColor.getter();
  }

  else
  {
    static Color.sourceTextColor.getter();
  }

  v35 = Text.foregroundStyle<A>(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10002EA54(v30, v32, v34 & 1);

  sub_1001AF5CC(v49, v47, v45, v46);
  sub_100005B1C(v35, v37, v39 & 1);

  sub_1001AF610(v49, v47, v45, v46);
  *a2 = v49;
  *(a2 + 8) = v47;
  *(a2 + 16) = v45;
  *(a2 + 24) = v46;
  *(a2 + 32) = v44;
  *(a2 + 40) = v35;
  *(a2 + 48) = v37;
  *(a2 + 56) = v39 & 1;
  *(a2 + 64) = v41;
  sub_10002EA54(v35, v37, v39 & 1);

  return sub_1001AF610(v49, v47, v45, v46);
}

uint64_t sub_1001AE61C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = type metadata accessor for DynamicTypeSize();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v64 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for BubbleViewConfiguration.ContentInsetBehavior();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BubbleViewConfiguration.Style();
  __chkstk_darwin(v6 - 8);
  v60 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for BubblePath.CornerStyle();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BubblePath.Configuration();
  __chkstk_darwin(v9 - 8);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BlendMode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for BubblePath.TailStyle();
  v15 = *(v57 - 8);
  v16 = __chkstk_darwin(v57);
  v52 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v49 = &v48 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v48 - v21;
  __chkstk_darwin(v20);
  v54 = &v48 - v23;
  v53 = type metadata accessor for BubbleViewConfiguration.BackgroundType();
  v24 = *(v53 - 8);
  v25 = __chkstk_darwin(v53);
  v51 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = (&v48 - v27);
  LODWORD(v2) = *(v2 + *(type metadata accessor for PersonalTranslatorBubble(0) + 28));
  v29 = sub_100005AD4(&qword_1003B60A0, &qword_1002E5A20);
  v30 = *(v29 + 48);
  v50 = *(v29 + 64);
  if (v2 == 1)
  {
    v31 = static Color.clear.getter();
    v28[3] = &type metadata for Color;
    v28[4] = &protocol witness table for Color;
    *v28 = v31;
    v32 = static HierarchicalShapeStyle.quaternary.getter();
    v69 = &type metadata for HierarchicalShapeStyle;
    v70 = &protocol witness table for HierarchicalShapeStyle;
    v68 = v32;
    BubbleViewConfiguration.Stroke.init(style:width:isDashed:)();
    v33 = 0;
    v34 = &enum case for BubblePath.TailEdge.right(_:);
    v35 = &enum case for BubblePath.TailEdge.left(_:);
  }

  else
  {
    static Color.secondary.getter();
    v48 = Color.opacity(_:)();

    (*(v12 + 104))(v14, enum case for BlendMode.plusLighter(_:), v11);
    v36 = sub_100005AD4(&qword_1003B60A8, &qword_1002E5A28);
    v28[3] = v36;
    v28[4] = sub_10001BAEC(&qword_1003B60B0, &qword_1003B60A8, &qword_1002E5A28, &protocol conformance descriptor for _BlendModeShapeStyle<A>);
    v37 = sub_100050D60(v28);
    (*(v12 + 16))(v37 + *(v36 + 36), v14, v11);
    *v37 = v48;
    (*(v12 + 8))(v14, v11);
    v34 = &enum case for BubblePath.TailEdge.left(_:);
    v35 = &enum case for BubblePath.TailEdge.right(_:);
    v33 = 1;
    v22 = v49;
  }

  v38 = type metadata accessor for BubbleViewConfiguration.Stroke();
  (*(*(v38 - 8) + 56))(v28 + v30, v33, 1, v38);
  *(v28 + v50) = 0;
  v39 = v53;
  (*(v24 + 104))(v28, enum case for BubbleViewConfiguration.BackgroundType.style(_:), v53);
  v40 = [objc_opt_self() sharedApplication];
  v41 = [v40 userInterfaceLayoutDirection];

  v42 = type metadata accessor for BubblePath.TailEdge();
  if (v41)
  {
    v43 = v34;
  }

  else
  {
    v43 = v35;
  }

  (*(*(v42 - 8) + 104))(v22, *v43, v42);
  *&v22[*(sub_100005AD4(&qword_1003B60B8, &unk_1002E5A30) + 48)] = 0x3FF0000000000000;
  v44 = v57;
  (*(v15 + 104))(v22, enum case for BubblePath.TailStyle.roundTailed(_:), v57);
  v45 = v54;
  (*(v15 + 32))(v54, v22, v44);
  (*(v15 + 16))(v52, v45, v44);
  (*(v56 + 104))(v55, enum case for BubblePath.CornerStyle.continuous(_:), v58);
  BubblePath.Configuration.init(radius:tailStyle:cornerStyle:)();
  (*(v24 + 16))(v51, v28, v39);
  v46 = static HierarchicalShapeStyle.primary.getter();
  v69 = &type metadata for HierarchicalShapeStyle;
  v70 = &protocol witness table for HierarchicalShapeStyle;
  v68 = v46;
  BubbleViewConfiguration.Style.init(background:foreground:)();
  (*(v61 + 104))(v62, enum case for BubbleViewConfiguration.ContentInsetBehavior.inset(_:), v63);
  (*(v65 + 104))(v64, enum case for DynamicTypeSize.large(_:), v66);
  BubbleViewConfiguration.init(pathConfiguration:style:contentInsetBehavior:dynamicTypeSize:scaleBubblePaddingWithFont:)();
  (*(v15 + 8))(v45, v44);
  return (*(v24 + 8))(v28, v39);
}

double sub_1001AEED8(uint64_t a1)
{
  static VerticalAlignment.center.getter();
  ViewDimensions.subscript.getter();
  return v1 + -2.5;
}

double sub_1001AEF08(uint64_t a1, char a2)
{
  v5 = (v2 + *(type metadata accessor for PersonalTranslatorBubble(0) + 24));
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    if (a2)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v12 = *&a1;
      ObjectType = swift_getObjectType();
      v14 = *(v7 + 104);
      swift_unknownObjectRetain();
      v14(ObjectType, v7, v12);
    }

    sub_1001AD26C();
    sub_1001D18C4(v6, v7, nullsub_1, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D2920);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Trying to play TTS from device owner bubble but there is no final translation", v10, 2u);
    }
  }

  return result;
}

unint64_t sub_1001AF0F4()
{
  result = qword_1003B6060;
  if (!qword_1003B6060)
  {
    sub_100005EA8(&qword_1003B6058, &qword_1002E59A8);
    sub_1001AF180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6060);
  }

  return result;
}

unint64_t sub_1001AF180()
{
  result = qword_1003B6068;
  if (!qword_1003B6068)
  {
    sub_100005EA8(&qword_1003B6070, &qword_1002E59B0);
    sub_1001AF20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6068);
  }

  return result;
}

unint64_t sub_1001AF20C()
{
  result = qword_1003B6078;
  if (!qword_1003B6078)
  {
    sub_100005EA8(&qword_1003B6080, &qword_1002E59B8);
    sub_10001BAEC(&qword_1003B6088, &qword_1003B6090, &qword_1002E59C0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6078);
  }

  return result;
}

uint64_t sub_1001AF2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTranslatorBubble(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AF328()
{
  v1 = type metadata accessor for PersonalTranslatorBubble(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  v5 = *(v1 + 20);
  sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UserInterfaceSizeClass();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v4 + v5, 1, v6))
    {
      (*(v7 + 8))(v4 + v5, v6);
    }
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001AF4E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTranslatorBubble(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AF5CC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100005B1C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1001AF610(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002EA54(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1001AF658()
{
  result = qword_1003B60C0;
  if (!qword_1003B60C0)
  {
    sub_100005EA8(&qword_1003B6098, &qword_1002E59F0);
    sub_1001AF6E4();
    sub_1001AF8C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B60C0);
  }

  return result;
}

unint64_t sub_1001AF6E4()
{
  result = qword_1003B60C8;
  if (!qword_1003B60C8)
  {
    sub_100005EA8(&qword_1003B6048, &qword_1002E5998);
    sub_1001AF770();
    sub_100086D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B60C8);
  }

  return result;
}

unint64_t sub_1001AF770()
{
  result = qword_1003B60D0;
  if (!qword_1003B60D0)
  {
    sub_100005EA8(&qword_1003B6040, &qword_1002E5990);
    sub_1001AF7FC();
    sub_100086D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B60D0);
  }

  return result;
}

unint64_t sub_1001AF7FC()
{
  result = qword_1003B60D8;
  if (!qword_1003B60D8)
  {
    sub_100005EA8(&qword_1003B6038, &qword_1002E5988);
    sub_100005EA8(&qword_1003B6058, &qword_1002E59A8);
    sub_1001AF0F4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B60D8);
  }

  return result;
}

unint64_t sub_1001AF8C4()
{
  result = qword_1003B60E0;
  if (!qword_1003B60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B60E0);
  }

  return result;
}

uint64_t sub_1001AF950@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = type metadata accessor for IconOnlyLabelStyle();
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  __chkstk_darwin(v5);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for BorderedButtonStyle();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003B60F0, &qword_1002E5B28);
  v11 = __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v40 = sub_100005AD4(&qword_1003B60F8, &qword_1002E5B30);
  __chkstk_darwin(v40);
  v17 = &v39 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2 & 1;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v59 = v54;
  v58 = v56;
  v47._countAndFlagsBits = sub_1001B00EC;
  v47._object = v18;
  v48 = v53;
  v49 = v54;
  v50 = v55;
  v51 = v56;
  v52 = v57;
  sub_100005AD4(&qword_1003B6100, &unk_1002E5B38);
  sub_1001B00F8();
  View.accessibilityIdentifier(_:)();

  v19 = [objc_opt_self() mainBundle];
  v60._object = 0x80000001002F86A0;
  v20._countAndFlagsBits = 0xD000000000000039;
  v20._object = 0x80000001002F8660;
  v21.value._object = 0x80000001002F0080;
  v60._countAndFlagsBits = 0xD000000000000030;
  v21.value._countAndFlagsBits = 0xD000000000000012;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v60);

  v47 = v23;
  sub_10001F278();
  v24 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10002EA54(v24, v26, v28 & 1);

  sub_1001B01D8(v13);
  BorderedButtonStyle.init()();
  sub_1001B0240();
  sub_1001B0448(&qword_1003B05F8, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
  v29 = v41;
  View.buttonStyle<A>(_:)();
  (*(v42 + 8))(v9, v29);
  sub_1001B01D8(v15);
  v30 = &v17[*(v40 + 36)];
  sub_100005AD4(&qword_1003AAD10, &unk_1002D4A70);
  static ButtonBorderShape.circle.getter();
  *v30 = swift_getKeyPath();
  v31 = v43;
  IconOnlyLabelStyle.init()();
  sub_1001B0304();
  sub_1001B0448(&qword_1003B4E60, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v32 = v46;
  v33 = v44;
  View.labelStyle<A>(_:)();
  (*(v45 + 8))(v31, v33);
  sub_1001B0490(v17);
  v34 = static Color.white.getter();
  *(v32 + *(sub_100005AD4(&qword_1003B6128, &qword_1002E5B78) + 36)) = v34;
  v35 = static Color.translateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100005AD4(&qword_1003B6130, &qword_1002E5BB0);
  v38 = (v32 + *(result + 36));
  *v38 = KeyPath;
  v38[1] = v35;
  return result;
}

double sub_1001AFEFC(uint64_t a1, char a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  sub_1001DA594(2, 0);

  return result;
}

uint64_t sub_1001B004C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x403E000000000000;
  *(a2 + 16) = 0;
  v6 = sub_100005AD4(&qword_1003B60E8, &qword_1002E5B20);
  return sub_1001AF950(v4, v5, a2 + *(v6 + 44));
}

uint64_t sub_1001B00B4()
{

  return _swift_deallocObject(v0, 25);
}

unint64_t sub_1001B00F8()
{
  result = qword_1003B6108;
  if (!qword_1003B6108)
  {
    sub_100005EA8(&qword_1003B6100, &unk_1002E5B38);
    sub_1001B0184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6108);
  }

  return result;
}

unint64_t sub_1001B0184()
{
  result = qword_1003B6110;
  if (!qword_1003B6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6110);
  }

  return result;
}

uint64_t sub_1001B01D8(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B60F0, &qword_1002E5B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001B0240()
{
  result = qword_1003B6118;
  if (!qword_1003B6118)
  {
    sub_100005EA8(&qword_1003B60F0, &qword_1002E5B28);
    sub_1001B00F8();
    sub_1001B0448(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6118);
  }

  return result;
}

unint64_t sub_1001B0304()
{
  result = qword_1003B6120;
  if (!qword_1003B6120)
  {
    sub_100005EA8(&qword_1003B60F8, &qword_1002E5B30);
    sub_100005EA8(&qword_1003B60F0, &qword_1002E5B28);
    type metadata accessor for BorderedButtonStyle();
    sub_1001B0240();
    sub_1001B0448(&qword_1003B05F8, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AAD20, &qword_1003AAD10, &unk_1002D4A70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6120);
  }

  return result;
}

uint64_t sub_1001B0448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B0490(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B60F8, &qword_1002E5B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001B0504()
{
  result = qword_1003B6138;
  if (!qword_1003B6138)
  {
    sub_100005EA8(&qword_1003B6140, &qword_1002E5BB8);
    sub_10001BAEC(&qword_1003B6148, &qword_1003B6150, &unk_1002E5BC0, &protocol conformance descriptor for VStack<A>);
    sub_1001B05BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6138);
  }

  return result;
}

unint64_t sub_1001B05BC()
{
  result = qword_1003B6158;
  if (!qword_1003B6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6158);
  }

  return result;
}

__n128 sub_1001B063C@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100005AD4(&qword_1003B6160, &qword_1002E5D00);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = v23 - v5;
  *v6 = static HorizontalAlignment.trailing.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_100005AD4(&qword_1003B6168, &qword_1002E5D08);
  sub_1001B085C(v1, &v6[*(v7 + 44)]);
  v8 = static Color.orange.getter();
  *&v6[*(sub_100005AD4(&qword_1003B6170, &qword_1002E5D10) + 36)] = v8;
  v9 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v11 = &v6[*(sub_100005AD4(&qword_1003B6178, &qword_1002E5D48) + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  v12 = swift_getKeyPath();
  v13 = &v6[*(sub_100005AD4(&qword_1003B6180, &qword_1002E5D80) + 36)];
  *v13 = v12;
  v13[8] = 1;
  LOBYTE(v12) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v14 = &v6[*(v4 + 44)];
  *v14 = v12;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100023BD4(v6, a1, &qword_1003B6160, &qword_1002E5D00);
  v19 = a1 + *(sub_100005AD4(&qword_1003B6188, &qword_1002E5D88) + 36);
  v20 = v23[5];
  *(v19 + 64) = v23[4];
  *(v19 + 80) = v20;
  *(v19 + 96) = v23[6];
  v21 = v23[1];
  *v19 = v23[0];
  *(v19 + 16) = v21;
  result = v23[3];
  *(v19 + 32) = v23[2];
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_1001B085C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v129 = a2;
  v3 = sub_100005AD4(&qword_1003B6190, &qword_1002E5D90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v119 = &v110[-v5];
  v120 = sub_100005AD4(&qword_1003B6198, &qword_1002E5D98);
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v110[-v6];
  v7 = sub_100005AD4(&qword_1003B61A0, &qword_1002E5DA0);
  v8 = __chkstk_darwin(v7 - 8);
  v131 = &v110[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v136 = &v110[-v10];
  v11 = type metadata accessor for EnvironmentValues();
  v124 = *(v11 - 8);
  v125 = v11;
  __chkstk_darwin(v11);
  v123 = &v110[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100005AD4(&qword_1003B61A8, &qword_1002E5DA8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v110[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v138 = &v110[-v17];
  v139 = a1;
  v115 = a1[2];
  AppStorage.wrappedValue.getter();
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v134 = 0;
  if (v153 == 1)
  {
    static Color.red.getter();
    v18 = Text.foregroundColor(_:)();
    v19 = v21;
    v23 = v22;
    v25 = v24;

    v20 = v23 & 1;
    sub_100005B1C(v18, v19, v23 & 1);
    v134 = v25;
  }

  v114 = v139[3];
  AppStorage.wrappedValue.getter();
  v137 = v18;
  v132 = v20;
  v133 = v19;
  if (v153 == 1)
  {
    static Color.red.getter();
    v26 = v16;
    v27 = Text.foregroundColor(_:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v130 = v27;
    v34 = v27;
    v16 = v26;
    v128 = v29;
    v126 = v31 & 1;
    sub_100005B1C(v34, v29, v31 & 1);
    v127 = v33;
  }

  else
  {
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v126 = 0;
  }

  v35 = objc_opt_self();
  v36 = [v35 standardUserDefaults];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 BOOLForKey:v37];

  v135 = v16;
  if (v38)
  {
    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v39._countAndFlagsBits = 0xD000000000000018;
    v39._object = 0x80000001002F8700;
    String.append(_:)(v39);
    v176 = *(v139 + 8);
    v175 = *v139;
    v40 = v175;
    v41 = v176;

    v42 = v40;
    if ((v41 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v43 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v44 = v123;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v175, &qword_1003B61B8, &qword_1002E5DB8);
      (*(v124 + 8))(v44, v125);
      v42 = v144[0];
    }

    v112 = v4;
    swift_getKeyPath();
    v144[0] = v42;
    v121 = sub_1001B25AC(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v45 = *(v42 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lastWordCount);

    v144[0] = v45;
    v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 0x3D6C6165644920;
    v47._object = 0xE700000000000000;
    String.append(_:)(v47);

    v48 = v40;
    if ((v41 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v49 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v50 = v123;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v175, &qword_1003B61B8, &qword_1002E5DB8);
      (*(v124 + 8))(v50, v125);
      v48 = v144[0];
    }

    v113 = v3;
    swift_getKeyPath();
    v144[0] = v48;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Float.write<A>(to:)();
    v51._countAndFlagsBits = 0x3D7473614C20;
    v51._object = 0xE600000000000000;
    String.append(_:)(v51);

    v52 = v40;
    v111 = v41;
    if ((v41 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v53 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v54 = v123;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v175, &qword_1003B61B8, &qword_1002E5DB8);
      (*(v124 + 8))(v54, v125);
      v52 = v144[0];
    }

    swift_getKeyPath();
    v144[0] = v52;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Float.write<A>(to:)();
    v117 = *(&v153 + 1);
    v122 = v153;
    v55 = [v35 standardUserDefaults];
    v56 = String._bridgeToObjectiveC()();
    v57 = [v55 BOOLForKey:v56];

    v58 = 1;
    if (v57)
    {
      v59 = [v35 standardUserDefaults];
      v60 = String._bridgeToObjectiveC()();
      v61 = [v59 BOOLForKey:v60];

      if (v61)
      {
        v58 = 1;
      }

      else
      {
        v63 = swift_allocObject();
        v64 = v139;
        v65 = *(v139 + 1);
        *(v63 + 16) = *v139;
        *(v63 + 32) = v65;
        *(v63 + 48) = v64[4];
        sub_10001F620(&v175, &v153, &qword_1003B61B8, &qword_1002E5DB8);

        v66 = v116;
        Button.init(action:label:)();
        *(v66 + *(v120 + 36)) = static Color.accentColor.getter();
        sub_100023BD4(v66, v136, &qword_1003B6198, &qword_1002E5D98);
        v58 = 0;
      }
    }

    (*(v118 + 56))(v136, v58, 1, v120);
    v120 = static VerticalAlignment.center.getter();
    LOBYTE(v142[0]) = 1;
    sub_1001B1D4C(&v153);
    v163 = *&v154[6];
    v164[0] = *&v154[8];
    *(v164 + 9) = *(&v154[9] + 1);
    v159 = v153;
    v160 = *v154;
    v162 = *&v154[4];
    v161 = *&v154[2];
    v165[1] = *v154;
    v165[0] = v153;
    v165[2] = *&v154[2];
    v165[3] = *&v154[4];
    v165[4] = *&v154[6];
    v166[0] = *&v154[8];
    *(v166 + 9) = *(&v154[9] + 1);
    sub_10001F620(&v159, v144, &qword_1003B61C0, &qword_1002E5E38);
    sub_100009EBC(v165, &qword_1003B61C0, &qword_1002E5E38);
    *(&v158[3] + 7) = v162;
    *(&v158[4] + 7) = v163;
    *(&v158[5] + 7) = v164[0];
    v158[6] = *(v164 + 9);
    *(v158 + 7) = v159;
    *(&v158[1] + 7) = v160;
    *(&v158[2] + 7) = v161;
    LODWORD(v118) = LOBYTE(v142[0]);
    v116 = static VerticalAlignment.center.getter();
    LOBYTE(v142[0]) = 1;
    sub_1001B2074(&v153);
    v171 = *&v154[6];
    v172[0] = *&v154[8];
    *(v172 + 9) = *(&v154[9] + 1);
    v167 = v153;
    v168 = *v154;
    v170 = *&v154[4];
    v169 = *&v154[2];
    v173[0] = v153;
    v173[1] = *v154;
    v173[2] = *&v154[2];
    v173[3] = *&v154[4];
    v173[4] = *&v154[6];
    v174[0] = *&v154[8];
    *(v174 + 9) = *(&v154[9] + 1);
    sub_10001F620(&v167, v144, &qword_1003B61C0, &qword_1002E5E38);
    sub_100009EBC(v173, &qword_1003B61C0, &qword_1002E5E38);
    *(&v157[3] + 7) = v170;
    *(&v157[4] + 7) = v171;
    *(&v157[5] + 7) = v172[0];
    v157[6] = *(v172 + 9);
    *(v157 + 7) = v167;
    *(&v157[1] + 7) = v168;
    *(&v157[2] + 7) = v169;
    LODWORD(v139) = LOBYTE(v142[0]);
    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&v153, "Enqueued TTS: ");
    HIBYTE(v153) = -18;

    if ((v111 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v67 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v68 = v123;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v175, &qword_1003B61B8, &qword_1002E5DB8);
      (*(v124 + 8))(v68, v125);
      v40 = v144[0];
    }

    swift_getKeyPath();
    v144[0] = v40;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v69 = *(v40 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__enqueuedTranslationCount);

    v144[0] = v69;
    v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v70);

    v124 = *(&v153 + 1);
    v125 = v153;
    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v155 = 0xD00000000000001BLL;
    v156 = 0x80000001002F8740;
    v154[1] = &type metadata for TranslateFeatures;
    v154[2] = sub_100009DF8();
    LOBYTE(v153) = 13;
    v71 = isFeatureEnabled(_:)();
    sub_100008664(&v153);
    if (v71)
    {
      v72 = 1702195828;
    }

    else
    {
      v72 = 0x65736C6166;
    }

    if (v71)
    {
      v73 = 0xE400000000000000;
    }

    else
    {
      v73 = 0xE500000000000000;
    }

    v74 = v73;
    String.append(_:)(*&v72);

    v75 = v155;
    v76 = v156;
    v77 = v131;
    sub_10001F620(v136, v131, &qword_1003B61A0, &qword_1002E5DA0);
    v78 = v119;
    v79 = v117;
    *v119 = v122;
    *(v78 + 8) = v79;
    *(v78 + 16) = 0;
    *(v78 + 24) = _swiftEmptyArrayStorage;
    v80 = sub_100005AD4(&qword_1003B61C8, &qword_1002E5E68);
    sub_10001F620(v77, v78 + v80[12], &qword_1003B61A0, &qword_1002E5DA0);
    v81 = v78 + v80[16];
    v140 = v120;
    v141[0] = v118;
    *&v141[1] = v158[0];
    *&v141[17] = v158[1];
    *&v141[49] = v158[3];
    *&v141[65] = v158[4];
    *&v141[81] = v158[5];
    *&v141[97] = v158[6];
    *&v141[33] = v158[2];
    v82 = *&v141[32];
    *(v81 + 32) = *&v141[16];
    *(v81 + 48) = v82;
    *(v81 + 128) = v141[112];
    v83 = *&v141[96];
    *(v81 + 96) = *&v141[80];
    *(v81 + 112) = v83;
    v84 = *&v141[64];
    *(v81 + 64) = *&v141[48];
    *(v81 + 80) = v84;
    v85 = *v141;
    *v81 = v140;
    *(v81 + 16) = v85;
    v86 = v78 + v80[20];
    v142[0] = v116;
    v142[1] = 0;
    v87 = v139;
    v143[0] = v139;
    *&v143[17] = v157[1];
    *&v143[1] = v157[0];
    *&v143[97] = v157[6];
    *&v143[81] = v157[5];
    *&v143[65] = v157[4];
    *&v143[49] = v157[3];
    *&v143[33] = v157[2];
    v88 = v116;
    v89 = *v143;
    v90 = *&v143[32];
    v91 = *&v143[48];
    *(v86 + 32) = *&v143[16];
    *(v86 + 48) = v90;
    *v86 = v88;
    *(v86 + 16) = v89;
    v92 = *&v143[64];
    v93 = *&v143[80];
    v94 = *&v143[96];
    *(v86 + 128) = v143[112];
    *(v86 + 96) = v93;
    *(v86 + 112) = v94;
    *(v86 + 64) = v91;
    *(v86 + 80) = v92;
    v95 = v78 + v80[24];
    v96 = v124;
    v97 = v125;
    *v95 = v125;
    *(v95 + 8) = v96;
    *(v95 + 16) = 0;
    *(v95 + 24) = _swiftEmptyArrayStorage;
    v98 = v78 + v80[28];
    *v98 = v75;
    *(v98 + 8) = v76;
    *(v98 + 16) = 0;
    *(v98 + 24) = _swiftEmptyArrayStorage;
    sub_100005B1C(v122, v79, 0);

    sub_10001F620(&v140, &v153, &qword_1003B61D0, &qword_1002E5E70);
    sub_10001F620(v142, &v153, &qword_1003B61D0, &qword_1002E5E70);
    sub_100005B1C(v97, v96, 0);

    sub_100005B1C(v75, v76, 0);

    sub_100009EBC(v136, &qword_1003B61A0, &qword_1002E5DA0);
    sub_10002EA54(v75, v76, 0);

    sub_10002EA54(v97, v96, 0);

    v149 = v157[3];
    v150 = v157[4];
    v151 = v157[5];
    v152 = v157[6];
    v146 = v157[0];
    v147 = v157[1];
    v144[0] = v116;
    v144[1] = 0;
    v145 = v87;
    v148 = v157[2];
    sub_100009EBC(v144, &qword_1003B61D0, &qword_1002E5E70);
    *(&v154[6] + 1) = v158[3];
    *(&v154[8] + 1) = v158[4];
    *(&v154[10] + 1) = v158[5];
    *(&v154[12] + 1) = v158[6];
    *(v154 + 1) = v158[0];
    *(&v154[2] + 1) = v158[1];
    v153 = v120;
    LOBYTE(v154[0]) = v118;
    *(&v154[4] + 1) = v158[2];
    sub_100009EBC(&v153, &qword_1003B61D0, &qword_1002E5E70);
    sub_100009EBC(v131, &qword_1003B61A0, &qword_1002E5DA0);
    sub_10002EA54(v122, v117, 0);

    v62 = v138;
    sub_100023BD4(v78, v138, &qword_1003B6190, &qword_1002E5D90);
    (*(v112 + 56))(v62, 0, 1, v113);
    v16 = v135;
  }

  else
  {
    v62 = v138;
    (*(v4 + 56))(v138, 1, 1, v3);
  }

  sub_10001F620(v62, v16, &qword_1003B61A8, &qword_1002E5DA8);
  v100 = v129;
  v99 = v130;
  *v129 = 0;
  *(v100 + 8) = 1;
  v102 = v132;
  v101 = v133;
  v100[2] = v137;
  v100[3] = v101;
  v103 = v134;
  v100[4] = v102;
  v100[5] = v103;
  v105 = v127;
  v104 = v128;
  v100[6] = v99;
  v100[7] = v104;
  v106 = v126;
  v100[8] = v126;
  v100[9] = v105;
  v107 = sub_100005AD4(&qword_1003B61B0, &qword_1002E5DB0);
  sub_10001F620(v16, v100 + *(v107 + 80), &qword_1003B61A8, &qword_1002E5DA8);
  v108 = v137;
  sub_1001AF5CC(v137, v101, v102, v103);
  sub_1001AF5CC(v99, v104, v106, v105);
  sub_1001AF610(v99, v104, v106, v105);
  sub_1001AF610(v108, v101, v102, v103);
  sub_100009EBC(v138, &qword_1003B61A8, &qword_1002E5DA8);
  sub_100009EBC(v135, &qword_1003B61A8, &qword_1002E5DA8);
  sub_1001AF610(v99, v104, v106, v105);
  return sub_1001AF610(v108, v101, v102, v103);
}

void sub_1001B1B70(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 8);
  v6 = *a1;
  v11 = v6;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v11, &qword_1003B61B8, &qword_1002E5DB8);
    (*(v3 + 8))(v5, v2);
    v6 = v10[1];
  }

  v9 = *(v6 + 32);

  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  sub_100240234((*(qword_1003D2470 + 65) & 1) == 0);
}

double sub_1001B1D2C@<D0>(uint64_t a1@<X8>)
{
  result = 1.4484776e73;
  *a1 = xmmword_1002E5BD0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1001B1D4C@<X0>(uint64_t a2@<X8>)
{
  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  v3 = qword_1003D2470;
  swift_getKeyPath();
  *&v25 = v3;
  sub_1001B25AC(&qword_1003AA3A0, type metadata accessor for AudioRouteManager, &unk_1002D3BF4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 64) == 1)
  {
    v4 = Image.init(systemName:)();
    v5 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v14[0]) = 0;
    *&v16 = v4;
    *(&v16 + 1) = KeyPath;
    *&v17 = v5;
    v18[40] = 0;
  }

  else
  {
    v7 = Image.init(systemName:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v14[0]) = v21;
    v13[0] = v23;
    v19 = 1;
    *&v16 = v7;
    *(&v16 + 1) = v20;
    LOBYTE(v17) = v21;
    *(&v17 + 1) = v22;
    v18[0] = v23;
    *&v18[8] = v24;
    v18[40] = 1;
  }

  sub_100005AD4(&qword_1003B61D8, &qword_1002E5E78);
  sub_100005AD4(&qword_1003B61E0, &qword_1002E5E80);
  sub_1001B23D4();
  sub_1001B2518();
  _ConditionalContent<>.init(storage:)();
  v9 = v28[0];
  *v18 = v27;
  v8 = v27;
  *&v18[16] = v28[0];
  *&v18[25] = *(v28 + 9);
  v14[2] = v27;
  v15[0] = v28[0];
  *(v15 + 9) = *(v28 + 9);
  v10 = v26;
  v16 = v25;
  v11 = v25;
  v17 = v26;
  v19 = 0;
  v14[0] = v25;
  v14[1] = v26;
  *a2 = xmmword_1002E5BE0;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 89) = *(v28 + 9);
  *(a2 + 32) = v11;
  *(a2 + 48) = v10;
  sub_100005B1C(0x617473204441564FLL, 0xEB000000003A6574, 0);

  sub_10001F620(v14, v13, &qword_1003B6208, &qword_1002E5E98);
  sub_100009EBC(&v16, &qword_1003B6208, &qword_1002E5E98);
  sub_10002EA54(0x617473204441564FLL, 0xEB000000003A6574, 0);
}

uint64_t sub_1001B2074@<X0>(uint64_t a2@<X8>)
{
  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  if (sub_100019028())
  {
    v3 = Image.init(systemName:)();
    v4 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v13[0]) = 0;
    *&v15 = v3;
    *(&v15 + 1) = KeyPath;
    *&v16 = v4;
    v17[40] = 0;
  }

  else
  {
    v6 = Image.init(systemName:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v13[0]) = v20;
    v12[0] = v22;
    v18 = 1;
    *&v15 = v6;
    *(&v15 + 1) = v19;
    LOBYTE(v16) = v20;
    *(&v16 + 1) = v21;
    v17[0] = v22;
    *&v17[8] = v23;
    v17[40] = 1;
  }

  sub_100005AD4(&qword_1003B61D8, &qword_1002E5E78);
  sub_100005AD4(&qword_1003B61E0, &qword_1002E5E80);
  sub_1001B23D4();
  sub_1001B2518();
  _ConditionalContent<>.init(storage:)();
  v8 = v27[0];
  *v17 = v26;
  v7 = v26;
  *&v17[16] = v27[0];
  *&v17[25] = *(v27 + 9);
  v13[2] = v26;
  v14[0] = v27[0];
  *(v14 + 9) = *(v27 + 9);
  v9 = v25;
  v15 = v24;
  v10 = v24;
  v16 = v25;
  v18 = 0;
  v13[0] = v24;
  v13[1] = v25;
  *a2 = xmmword_1002E5BF0;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 64) = v7;
  *(a2 + 80) = v8;
  *(a2 + 89) = *(v27 + 9);
  *(a2 + 32) = v10;
  *(a2 + 48) = v9;
  sub_100005B1C(979593549, 0xE400000000000000, 0);

  sub_10001F620(v13, v12, &qword_1003B6208, &qword_1002E5E98);
  sub_100009EBC(&v15, &qword_1003B6208, &qword_1002E5E98);
  sub_10002EA54(979593549, 0xE400000000000000, 0);
}

uint64_t sub_1001B2384()
{

  return _swift_deallocObject(v0, 56);
}

unint64_t sub_1001B23D4()
{
  result = qword_1003B61E8;
  if (!qword_1003B61E8)
  {
    sub_100005EA8(&qword_1003B61D8, &qword_1002E5E78);
    sub_1001B2460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B61E8);
  }

  return result;
}

unint64_t sub_1001B2460()
{
  result = qword_1003B61F0;
  if (!qword_1003B61F0)
  {
    sub_100005EA8(&qword_1003B61F8, &unk_1002E5E88);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878, &qword_1002D5BE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B61F0);
  }

  return result;
}

unint64_t sub_1001B2518()
{
  result = qword_1003B6200;
  if (!qword_1003B6200)
  {
    sub_100005EA8(&qword_1003B61E0, &qword_1002E5E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6200);
  }

  return result;
}

uint64_t sub_1001B25AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001B25F8()
{
  result = qword_1003B6210;
  if (!qword_1003B6210)
  {
    sub_100005EA8(&qword_1003B6188, &qword_1002E5D88);
    sub_1001B2684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6210);
  }

  return result;
}

unint64_t sub_1001B2684()
{
  result = qword_1003B6218;
  if (!qword_1003B6218)
  {
    sub_100005EA8(&qword_1003B6160, &qword_1002E5D00);
    sub_1001B2710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6218);
  }

  return result;
}

unint64_t sub_1001B2710()
{
  result = qword_1003B6220;
  if (!qword_1003B6220)
  {
    sub_100005EA8(&qword_1003B6180, &qword_1002E5D80);
    sub_1001B27C8();
    sub_10001BAEC(&qword_1003B1830, &qword_1003B1838, &qword_1002DEBF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6220);
  }

  return result;
}

unint64_t sub_1001B27C8()
{
  result = qword_1003B6228;
  if (!qword_1003B6228)
  {
    sub_100005EA8(&qword_1003B6178, &qword_1002E5D48);
    sub_1001B2880();
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588, &unk_1002D4A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6228);
  }

  return result;
}

unint64_t sub_1001B2880()
{
  result = qword_1003B6230;
  if (!qword_1003B6230)
  {
    sub_100005EA8(&qword_1003B6170, &qword_1002E5D10);
    sub_10001BAEC(&qword_1003B6238, &qword_1003B6240, &qword_1002E5EF8, &protocol conformance descriptor for VStack<A>);
    sub_10001BAEC(&qword_1003B3650, &qword_1003B3658, &qword_1002E0D50, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6230);
  }

  return result;
}

uint64_t sub_1001B2964()
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2920);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Checking eligibility", v3, 2u);
  }

  domain_answer = os_eligibility_get_domain_answer();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109632;
    *(v7 + 4) = 0;
    *(v7 + 8) = 1024;
    *(v7 + 10) = 0;
    *(v7 + 14) = 1024;
    *(v7 + 16) = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Eligible %{BOOL}d, Computed: %{BOOL}d, Forced: %{BOOL}d", v7, 0x14u);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = domain_answer;
    _os_log_impl(&_mh_execute_header, v8, v9, "Unable to determine eligibility due to error %d", v10, 8u);
  }

  return 0;
}

uint64_t sub_1001B2BD8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1001B2C20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1001B2C8C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PersonalTranslatorHeroView.HeroImage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = static Alignment.center.getter();
  v22 = v8;
  v23 = v7;
  sub_1001B2EC0(&v24);
  v21 = v24;
  v20 = v25;
  v19 = v26;
  sub_1001B8100(v1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PersonalTranslatorHeroView.HeroImage);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_1001B816C(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v9, type metadata accessor for PersonalTranslatorHeroView.HeroImage);
  v10 = [objc_opt_self() defaultCenter];
  v11 = sub_100005AD4(&qword_1003B6530, &qword_1002E6238);
  NSNotificationCenter.publisher(for:object:)();

  sub_1001B8100(v2, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PersonalTranslatorHeroView.HeroImage);
  v12 = swift_allocObject();
  sub_1001B816C(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v9, type metadata accessor for PersonalTranslatorHeroView.HeroImage);
  v13 = v22;
  *a1 = v23;
  *(a1 + 8) = v13;
  result = *&v21;
  *(a1 + 16) = v21;
  *(a1 + 32) = v20;
  *(a1 + 40) = v19;
  *(a1 + 42) = 0;
  v15 = v18;
  *(a1 + 48) = sub_1001B81D4;
  *(a1 + 56) = v15;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v16 = (a1 + *(v11 + 56));
  *v16 = sub_1001B83C0;
  v16[1] = v12;
  return result;
}

uint64_t sub_1001B2EC0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005AD4(&qword_1003AB2D8, &qword_1002E5FB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PersonalTranslatorHeroView.HeroImage(0);
  sub_100005AD4(&qword_1003B6338, &qword_1002E6118);
  State.wrappedValue.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_100009EBC(v8, &qword_1003AB2D8, &qword_1002E5FB0);
    v14 = 0;
LABEL_6:
    v19 = 0;
    goto LABEL_7;
  }

  v21 = v3;
  (*(v10 + 32))(v12, v8, v9);
  URL.path.getter();
  v15 = objc_allocWithZone(UIImage);
  v16 = String._bridgeToObjectiveC()();

  v14 = [v15 initWithContentsOfFile:v16];

  if (!v14)
  {
    result = (*(v10 + 8))(v12, v9);
    goto LABEL_6;
  }

  v17 = v14;
  Image.init(uiImage:)();
  v18 = v21;
  (*(v21 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v14 = Image.resizable(capInsets:resizingMode:)();

  (*(v18 + 8))(v5, v2);
  result = (*(v10 + 8))(v12, v9);
  v19 = 0x3FF6B36B36B36B37;
LABEL_7:
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = v19;
  *(a1 + 24) = 0;
  return result;
}

void sub_1001B320C()
{
  v0 = sub_100005AD4(&qword_1003AB2D8, &qword_1002E5FB0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v15 - v4;
  sub_10022B294();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1001B6774();
    if (v9)
    {
      sub_1001B692C("Image asset not available for %s", v8, v9, v5);
    }

    else
    {
      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    }

    type metadata accessor for PersonalTranslatorHeroView.HeroImage(0);
    sub_10001F620(v5, v3, &qword_1003AB2D8, &qword_1002E5FB0);
    sub_100005AD4(&qword_1003B6338, &qword_1002E6118);
    State.wrappedValue.setter();

    sub_100009EBC(v5, &qword_1003AB2D8, &qword_1002E5FB0);
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000078E8(v10, qword_1003D2920);
    v16 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v16, v11, "URL for image asset not found", v12, 2u);
    }

    v13 = v16;
  }
}

uint64_t sub_1001B348C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003AEFE0, &qword_1002DA710);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10001F620(v2, &v14 - v9, &qword_1003AEFE0, &qword_1002DA710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1001B368C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B52A0, &unk_1002E4630);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PersonalTranslatorHeroView.HeroVideo(0);
  sub_10001F620(v1 + *(v10 + 20), v9, &qword_1003B52A0, &unk_1002E4630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1001B3898@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for ColorScheme();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v43 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = type metadata accessor for ScenePhase();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PersonalTranslatorHeroView.HeroVideo(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v8;
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_100005AD4(&qword_1003B64B0, &qword_1002E61F0);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v48 = &v31[-v10];
  v11 = static Alignment.center.getter();
  v36 = v12;
  v37 = v11;
  v57 = *(v1 + *(v6 + 28));
  sub_100005AD4(&qword_1003B64B8, &qword_1002E61F8);
  State.wrappedValue.getter();
  v13 = v49;
  if (v49)
  {
    v14 = v1 + *(v6 + 32);
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v57 = *v14;
    LOBYTE(v58) = v15;
    *(&v58 + 1) = v16;
    sub_100005AD4(&qword_1003B6518, &qword_1002E6228);
    State.wrappedValue.getter();
    v33 = *(&v49 + 1);
    v34 = v49;
    v32 = v50;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v13 = 1;
  }

  v65 = 0;
  sub_1001B8100(v1, v9, type metadata accessor for PersonalTranslatorHeroView.HeroVideo);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_1001B816C(v9, v18 + v17, type metadata accessor for PersonalTranslatorHeroView.HeroVideo);
  sub_1001B8100(v2, v9, type metadata accessor for PersonalTranslatorHeroView.HeroVideo);
  v19 = swift_allocObject();
  sub_1001B816C(v9, v19 + v17, type metadata accessor for PersonalTranslatorHeroView.HeroVideo);
  *&v49 = v37;
  *(&v49 + 1) = v36;
  *&v50 = v13;
  *(&v50 + 1) = v34;
  *&v51 = v33;
  WORD4(v51) = v32;
  *&v52 = 0x3FF6B36B36B36B37;
  WORD4(v52) = 256;
  *&v53 = sub_1001B7AD0;
  *(&v53 + 1) = v18;
  v54 = 0u;
  v55 = 0u;
  *&v56 = sub_1001B7CD4;
  *(&v56 + 1) = v19;
  v20 = v38;
  v35 = v2;
  sub_1001B348C(v38);
  sub_1001B8100(v2, v9, type metadata accessor for PersonalTranslatorHeroView.HeroVideo);
  v21 = swift_allocObject();
  sub_1001B816C(v9, v21 + v17, type metadata accessor for PersonalTranslatorHeroView.HeroVideo);
  v37 = sub_100005AD4(&qword_1003B64C0, &qword_1002E6200);
  v22 = sub_1001B7DFC(&qword_1003B64C8, &qword_1003B64C0, &qword_1002E6200, sub_1001B7DCC);
  v36 = sub_1001B6F98(&qword_1003AF010, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v23 = v41;
  View.onChange<A>(of:initial:_:)();

  (*(v39 + 8))(v20, v23);
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v64 = v56;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  v60 = v52;
  sub_100009EBC(&v57, &qword_1003B64C0, &qword_1002E6200);
  v24 = v43;
  v25 = v35;
  sub_1001B368C(v43);
  sub_1001B8100(v25, v9, type metadata accessor for PersonalTranslatorHeroView.HeroVideo);
  v26 = swift_allocObject();
  sub_1001B816C(v9, v26 + v17, type metadata accessor for PersonalTranslatorHeroView.HeroVideo);
  *&v49 = v37;
  *(&v49 + 1) = v23;
  *&v50 = v22;
  *(&v50 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  sub_1001B6F98(&qword_1003B6510, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
  v27 = v42;
  v28 = v46;
  v29 = v48;
  View.onChange<A>(of:initial:_:)();

  (*(v45 + 8))(v24, v28);
  return (*(v40 + 8))(v29, v27);
}

void sub_1001B3F1C()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AB2D8, &qword_1002E5FB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000078E8(v9, qword_1003D2920);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Playing mica video", v12, 2u);
  }

  sub_10022B294();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1001B6774();
    if (v16)
    {
      sub_1001B692C("Video asset not available for %s", v15, v16, v4);

      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        (*(v6 + 32))(v8, v4, v5);
        v20 = objc_allocWithZone(AVPlayer);
        URL._bridgeToObjectiveC()(v21);
        v23 = v22;
        v24 = [v20 initWithURL:v22];

        [v24 setMuted:1];
        [v24 setActionAtItemEnd:2];
        v25 = [objc_opt_self() defaultCenter];
        v26 = String._bridgeToObjectiveC()();
        v42 = [v24 currentItem];
        v40 = [objc_opt_self() mainQueue];
        v27 = swift_allocObject();
        *(v27 + 16) = v24;
        v48 = sub_1001B807C;
        v49 = v27;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v46 = sub_100213518;
        v47 = &unk_100388648;
        v28 = v1;
        v29 = _Block_copy(&aBlock);
        v41 = v24;

        v30 = v25;
        v31 = v25;
        v32 = v26;
        v33 = v26;
        v34 = v42;
        v43 = v8;
        v35 = v40;
        v36 = [v31 addObserverForName:v33 object:v42 queue:v40 usingBlock:v29];
        _Block_release(v29);

        v37 = type metadata accessor for PersonalTranslatorHeroView.HeroVideo(0);
        aBlock = *(v28 + *(v37 + 36));
        v44 = v36;
        sub_100005AD4(&qword_1003B6528, &qword_1002E6230);
        State.wrappedValue.setter();
        aBlock = *(v28 + *(v37 + 28));
        v44 = v41;
        v38 = v41;
        sub_100005AD4(&qword_1003B64B8, &qword_1002E61F8);
        State.wrappedValue.setter();
        sub_1001B4878();
        [v38 play];

        (*(v6 + 8))(v43, v5);
        return;
      }
    }

    else
    {

      (*(v6 + 56))(v4, 1, 1, v5);
    }

    sub_100009EBC(v4, &qword_1003AB2D8, &qword_1002E5FB0);
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "URL for video asset not found", v19, 2u);
  }
}

void sub_1001B44A8()
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2920);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Stopping mica video", v3, 2u);
  }

  type metadata accessor for PersonalTranslatorHeroView.HeroVideo(0);
  sub_100005AD4(&qword_1003B64B8, &qword_1002E61F8);
  State.wrappedValue.getter();
  [v4 pause];

  State.wrappedValue.setter();
  sub_100005AD4(&qword_1003B6518, &qword_1002E6228);
  State.wrappedValue.setter();
  sub_100005AD4(&qword_1003B6528, &qword_1002E6230);
  State.wrappedValue.getter();
}

void sub_1001B46C8(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v14 = *(a1 + *(type metadata accessor for PersonalTranslatorHeroView.HeroVideo(0) + 28));
  sub_100005AD4(&qword_1003B64B8, &qword_1002E61F8);
  State.wrappedValue.getter();
  v9 = v13;
  if (v13)
  {
    if (![v13 timeControlStatus])
    {
      sub_1001B348C(v8);
      (*(v3 + 104))(v6, enum case for ScenePhase.active(_:), v2);
      v10 = static ScenePhase.== infix(_:_:)();
      v11 = *(v3 + 8);
      v11(v6, v2);
      v11(v8, v2);
      if (v10)
      {
        [v9 play];
      }
    }
  }
}

void sub_1001B4878()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AB2D8, &qword_1002E5FB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v5 = type metadata accessor for URL();
  v49 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v45 - v9;
  v11 = type metadata accessor for ColorScheme();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = __chkstk_darwin(v11);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000078E8(v16, qword_1003D2920);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Updating mica adjustments", v19, 2u);
  }

  v20 = type metadata accessor for PersonalTranslatorHeroView.HeroVideo(0);
  v55 = *(v1 + *(v20 + 28));
  sub_100005AD4(&qword_1003B64B8, &qword_1002E61F8);
  State.wrappedValue.getter();
  if (!v52)
  {
    goto LABEL_14;
  }

  sub_10022B294();
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = v21;
  v47 = v1;
  sub_1001B368C(v15);
  v23 = sub_1001B6774();
  if (!v24)
  {
    (*(v50 + 8))(v15, v51);

LABEL_14:
    v22 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v22, v31, "Adjustment values could not be determined", v32, 2u);
    }

    goto LABEL_16;
  }

  sub_1001B692C("Adjustments card not available for %s", v23, v24, v4);

  v25 = v49;
  if ((*(v49 + 48))(v4, 1, v5) == 1)
  {
    (*(v50 + 8))(v15, v51);

    sub_100009EBC(v4, &qword_1003AB2D8, &qword_1002E5FB0);
    goto LABEL_14;
  }

  (*(v25 + 32))(v10, v4, v5);
  (*(v25 + 16))(v8, v10, v5);
  v26 = Data.init(contentsOf:options:)();
  v28 = v27;
  v46 = v26;
  if (qword_1003A9160 != -1)
  {
    swift_once();
  }

  sub_1001B7FF0();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v29 = v28;
  v30 = v47;
  sub_100112CE8(v46, v29);
  v33 = *(v49 + 8);
  v33(v8, v5);
  v33(v10, v5);
  v35 = *(&v55 + 1);
  v34 = v55;
  v37 = v56;
  v36 = v57;
  v39 = v50;
  v38 = v51;
  v40 = v48;
  (*(v50 + 32))(v48, v15, v51);
  v41 = (*(v39 + 88))(v40, v38);
  if (v41 == enum case for ColorScheme.light(_:))
  {
    v34 = v37;
    v35 = v36;
  }

  else if (v41 != enum case for ColorScheme.dark(_:))
  {
    v34 = v37;
    v35 = v36;
    (*(v39 + 8))(v40, v38);
  }

  v42 = (v30 + *(v20 + 32));
  v43 = *(v42 + 16);
  v44 = *(v42 + 3);
  v55 = *v42;
  LOBYTE(v56) = v43;
  v57 = v44;
  v52 = v34;
  v53 = v35;
  v54 = 0;

  sub_100005AD4(&qword_1003B6518, &qword_1002E6228);
  State.wrappedValue.setter();

LABEL_16:
}

uint64_t sub_1001B4EF8@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_100005AD4(&qword_1003B62E8, &qword_1002E60E8);
  __chkstk_darwin(v1 - 8);
  v51 = &v45 - v2;
  v3 = sub_100005AD4(&qword_1003B62F0, &qword_1002E60F0);
  __chkstk_darwin(v3 - 8);
  v47 = &v45 - v4;
  v5 = sub_100005AD4(&qword_1003B62F8, &qword_1002E60F8);
  __chkstk_darwin(v5 - 8);
  v46 = &v45 - v6;
  v7 = sub_100005AD4(&qword_1003B6300, &qword_1002E6100);
  __chkstk_darwin(v7 - 8);
  v45 = &v45 - v8;
  v9 = sub_100005AD4(&qword_1003B6308, &qword_1002E6108);
  v10 = __chkstk_darwin(v9 - 8);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v52 = type metadata accessor for AttributedString();
  v17 = *(v52 - 8);
  v18 = __chkstk_darwin(v52);
  v50 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v49 = &v45 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v45 - v23;
  __chkstk_darwin(v22);
  v26 = &v45 - v25;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  static Font.title2.getter();
  v27 = Font.bold()();

  v54 = v27;
  sub_1001B704C();
  AttributedString.subscript.setter();
  v54 = 0xBFF8000000000000;
  v55 = 0;
  sub_1001B70A0();
  AttributedString.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v28 = v45;
  static Text.Encapsulation.Scale.medium.getter();
  v29 = type metadata accessor for Text.Encapsulation.Scale();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  v30 = v46;
  static Text.Encapsulation.Shape.capsule.getter();
  v31 = type metadata accessor for Text.Encapsulation.Shape();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v47;
  static Text.Encapsulation.Style.fill.getter();
  v33 = type metadata accessor for Text.Encapsulation.Style();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = v51;
  static Text.Encapsulation.PlatterSize.regular.getter();
  v35 = type metadata accessor for Text.Encapsulation.PlatterSize();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  static Color.secondary.getter();
  Text.Encapsulation.init(scale:shape:style:platterSize:lineWeight:color:minimumWidth:)();
  v36 = type metadata accessor for Text.Encapsulation();
  (*(*(v36 - 8) + 56))(v13, 0, 1, v36);
  sub_10001F620(v13, v48, &qword_1003B6308, &qword_1002E6108);
  sub_1001B70F4();
  AttributedString.subscript.setter();
  sub_100009EBC(v13, &qword_1003B6308, &qword_1002E6108);
  v54 = static Color.secondary.getter();
  sub_1001B7148();
  AttributedString.subscript.setter();
  v37 = String._bridgeToObjectiveC()();
  v38 = [objc_opt_self() fontWithName:v37 size:18.0];

  v54 = v38;
  sub_1001B719C();
  AttributedString.subscript.setter();
  v39 = v50;
  AttributedString.init(stringLiteral:)();
  v40 = v49;
  static AttributedString.+ infix(_:_:)();
  v41 = *(v17 + 8);
  v42 = v39;
  v43 = v52;
  v41(v42, v52);
  static AttributedString.+ infix(_:_:)();
  v41(v40, v43);
  v41(v24, v43);
  return (v41)(v26, v43);
}

uint64_t sub_1001B572C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v49 = a3;
  v40 = sub_100005AD4(&qword_1003AB2D8, &qword_1002E5FB0);
  v5 = __chkstk_darwin(v40);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v46 = sub_100005AD4(&qword_1003B6258, &qword_1002E5FB8);
  __chkstk_darwin(v46);
  v11 = (&v39 - v10);
  v44 = sub_100005AD4(&qword_1003B6260, &qword_1002E5FC0);
  __chkstk_darwin(v44);
  v41 = &v39 - v12;
  v45 = sub_100005AD4(&qword_1003B6268, &qword_1002E5FC8);
  __chkstk_darwin(v45);
  v14 = (&v39 - v13);
  v15 = sub_100005AD4(&qword_1003B6270, &qword_1002E5FD0);
  v16 = __chkstk_darwin(v15 - 8);
  v47 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v51 = &v39 - v18;
  v48 = static HorizontalAlignment.leading.getter();
  v64 = 1;
  v42 = a1;
  sub_1001B602C(&v53);
  v77 = *&v54[176];
  v78 = *&v54[192];
  v73 = *&v54[112];
  v74 = *&v54[128];
  v75 = *&v54[144];
  v76 = *&v54[160];
  v69 = *&v54[48];
  v70 = *&v54[64];
  v71 = *&v54[80];
  v72 = *&v54[96];
  v65 = v53;
  v66 = *v54;
  v67 = *&v54[16];
  v68 = *&v54[32];
  v80[12] = *&v54[176];
  v80[13] = *&v54[192];
  v80[8] = *&v54[112];
  v80[9] = *&v54[128];
  v80[10] = *&v54[144];
  v80[11] = *&v54[160];
  v80[4] = *&v54[48];
  v80[5] = *&v54[64];
  v80[6] = *&v54[80];
  v80[7] = *&v54[96];
  v80[0] = v53;
  v80[1] = *v54;
  v79 = v54[208];
  v81 = v54[208];
  v80[2] = *&v54[16];
  v80[3] = *&v54[32];
  sub_10001F620(&v65, v52, &qword_1003B6278, &qword_1002E5FD8);
  sub_100009EBC(v80, &qword_1003B6278, &qword_1002E5FD8);
  *&v63[183] = v76;
  *&v63[199] = v77;
  *&v63[215] = v78;
  *&v63[119] = v72;
  *&v63[135] = v73;
  *&v63[151] = v74;
  *&v63[167] = v75;
  *&v63[55] = v68;
  *&v63[71] = v69;
  *&v63[87] = v70;
  *&v63[103] = v71;
  *&v63[7] = v65;
  *&v63[23] = v66;
  v63[231] = v79;
  *&v63[39] = v67;
  v43 = v64;
  KeyPath = swift_getKeyPath();
  LOBYTE(v53) = 0;
  if (v3)
  {
    *v14 = swift_getKeyPath();
    sub_100005AD4(&qword_1003AEFE0, &qword_1002DA710);
    swift_storeEnumTagMultiPayload();
    v19 = swift_getKeyPath();
    v20 = type metadata accessor for PersonalTranslatorHeroView.HeroVideo(0);
    *(v14 + v20[5]) = v19;
    sub_100005AD4(&qword_1003B52A0, &unk_1002E4630);
    swift_storeEnumTagMultiPayload();
    *(v14 + v20[6]) = v42;
    v21 = v20[7];
    v52[0] = 0;

    sub_100005AD4(&qword_1003B62C0, &qword_1002E6088);
    State.init(wrappedValue:)();
    *(v14 + v21) = v53;
    v22 = v14 + v20[8];
    v52[0] = 0;
    v52[1] = 0;
    LOBYTE(v52[2]) = 1;
    sub_100005AD4(&qword_1003B62C8, &unk_1002E6090);
    State.init(wrappedValue:)();
    v23 = v54[0];
    v24 = *&v54[8];
    *v22 = v53;
    v22[16] = v23;
    *(v22 + 3) = v24;
    v25 = v20[9];
    v52[0] = 0;
    sub_100005AD4(&qword_1003B62D0, &qword_1002E60A0);
    State.init(wrappedValue:)();
    *(v14 + v25) = v53;
    v26 = v14 + *(v45 + 36);
    v26[32] = 0;
    *v26 = 0u;
    *(v26 + 1) = 0u;
    sub_10001F620(v14, v41, &qword_1003B6268, &qword_1002E5FC8);
    swift_storeEnumTagMultiPayload();
    sub_1001B6DA8();
    sub_1001B6EB0();
    _ConditionalContent<>.init(storage:)();
    v27 = v14;
    v28 = &qword_1003B6268;
    v29 = &qword_1002E5FC8;
  }

  else
  {
    *v11 = swift_getKeyPath();
    sub_100005AD4(&qword_1003B52A0, &unk_1002E4630);
    swift_storeEnumTagMultiPayload();
    *(v11 + *(type metadata accessor for PersonalTranslatorHeroView.HeroImage(0) + 20)) = v42;
    v30 = type metadata accessor for URL();
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
    sub_10001F620(v9, v7, &qword_1003AB2D8, &qword_1002E5FB0);

    State.init(wrappedValue:)();
    sub_100009EBC(v9, &qword_1003AB2D8, &qword_1002E5FB0);
    v31 = v11 + *(v46 + 36);
    v31[32] = 0;
    *v31 = 0u;
    *(v31 + 1) = 0u;
    sub_10001F620(v11, v41, &qword_1003B6258, &qword_1002E5FB8);
    swift_storeEnumTagMultiPayload();
    sub_1001B6DA8();
    sub_1001B6EB0();
    _ConditionalContent<>.init(storage:)();
    v27 = v11;
    v28 = &qword_1003B6258;
    v29 = &qword_1002E5FB8;
  }

  sub_100009EBC(v27, v28, v29);
  v32 = v51;
  v33 = v47;
  sub_10001F620(v51, v47, &qword_1003B6270, &qword_1002E5FD0);
  *(&v52[24] + 1) = *&v63[176];
  *(&v52[26] + 1) = *&v63[192];
  *(&v52[28] + 1) = *&v63[208];
  *(&v52[16] + 1) = *&v63[112];
  *(&v52[18] + 1) = *&v63[128];
  *(&v52[20] + 1) = *&v63[144];
  *(&v52[22] + 1) = *&v63[160];
  *(&v52[8] + 1) = *&v63[48];
  *(&v52[10] + 1) = *&v63[64];
  *(&v52[12] + 1) = *&v63[80];
  *(&v52[14] + 1) = *&v63[96];
  *(&v52[2] + 1) = *v63;
  *(&v52[4] + 1) = *&v63[16];
  v34 = v48;
  v52[0] = v48;
  v52[1] = 0;
  v35 = v43;
  LOBYTE(v52[2]) = v43;
  *(&v52[30] + 1) = *&v63[224];
  *(&v52[6] + 1) = *&v63[32];
  *(&v52[31] + 1) = v83[0];
  HIDWORD(v52[31]) = *(v83 + 3);
  v36 = v49;
  v52[32] = KeyPath;
  LOBYTE(v52[33]) = 0;
  *(&v52[33] + 1) = *v82;
  HIDWORD(v52[33]) = *&v82[3];
  memset(&v52[34], 0, 33);
  memcpy(v49, v52, 0x131uLL);
  v37 = v36 + *(sub_100005AD4(&qword_1003B62B0, &qword_1002E6040) + 48);
  sub_10001F620(v33, v37, &qword_1003B6270, &qword_1002E5FD0);
  sub_10001F620(v52, &v53, &qword_1003B62B8, &qword_1002E6048);
  sub_100009EBC(v32, &qword_1003B6270, &qword_1002E5FD0);
  sub_100009EBC(v33, &qword_1003B6270, &qword_1002E5FD0);
  *&v54[177] = *&v63[176];
  *&v54[193] = *&v63[192];
  *&v54[209] = *&v63[208];
  *&v54[113] = *&v63[112];
  *&v54[129] = *&v63[128];
  *&v54[145] = *&v63[144];
  *&v54[161] = *&v63[160];
  *&v54[49] = *&v63[48];
  *&v54[65] = *&v63[64];
  *&v54[81] = *&v63[80];
  *&v54[97] = *&v63[96];
  *&v54[1] = *v63;
  *&v54[17] = *&v63[16];
  v53 = v34;
  v54[0] = v35;
  v55 = *&v63[224];
  *&v54[33] = *&v63[32];
  *v56 = v83[0];
  *&v56[3] = *(v83 + 3);
  v57 = KeyPath;
  v58 = 0;
  *v59 = *v82;
  *&v59[3] = *&v82[3];
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  return sub_100009EBC(&v53, &qword_1003B62B8, &qword_1002E6048);
}

uint64_t sub_1001B602C@<X0>(_OWORD *a1@<X8>)
{
  v51 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AttributedString();
  __chkstk_darwin(v3 - 8);
  sub_1001B4EF8(&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = Text.init(_:)();
  v55 = v6;
  v56 = v5;
  v8 = v7;
  v50 = v9;
  KeyPath = swift_getKeyPath();
  v54 = swift_getKeyPath();
  v52 = v8 & 1;
  LOBYTE(v102) = 1;
  LOBYTE(v110) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v110 = String.init(localized:table:bundle:locale:comment:)();
  v111 = v10;
  sub_10001F278();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.title2.getter();
  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;

  sub_10002EA54(v11, v13, v15 & 1);

  LODWORD(v110) = static HierarchicalShapeStyle.secondary.getter();
  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10002EA54(v16, v18, v20 & 1);

  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  LOBYTE(v110) = v25 & 1;
  LOBYTE(v102) = 0;
  v30 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  *&v96 = v56;
  *(&v96 + 1) = v55;
  LOBYTE(v97) = v52;
  *(&v97 + 1) = *v95;
  DWORD1(v97) = *&v95[3];
  v31 = v50;
  *(&v97 + 1) = v50;
  v98 = KeyPath;
  v99 = 0;
  LOBYTE(v100) = 1;
  DWORD1(v100) = *&v94[3];
  *(&v100 + 1) = *v94;
  *(&v100 + 1) = v54;
  LOWORD(v101[0]) = 0;
  BYTE2(v101[0]) = 1;
  BYTE7(v101[0]) = v93;
  *(v101 + 3) = v92;
  *(&v101[1] + 8) = 0u;
  *(v101 + 8) = 0u;
  BYTE8(v101[2]) = 0;
  v74 = v97;
  v75 = KeyPath;
  v73 = v96;
  *(v78 + 9) = *(&v101[1] + 9);
  v77 = v101[0];
  v78[0] = v101[1];
  v76 = v100;
  *&v102 = v21;
  *(&v102 + 1) = v23;
  LOBYTE(v103) = v25 & 1;
  DWORD1(v103) = *&v88[3];
  *(&v103 + 1) = *v88;
  *(&v103 + 1) = v27;
  *&v104 = v28;
  *(&v104 + 1) = 4;
  LOBYTE(v105) = 0;
  DWORD1(v105) = *&v87[3];
  *(&v105 + 1) = *v87;
  *(&v105 + 1) = v29;
  LOWORD(v106) = 0;
  BYTE2(v106) = 0;
  BYTE7(v106) = v91;
  v32 = v90;
  *(&v106 + 3) = v90;
  BYTE8(v106) = v30;
  HIDWORD(v106) = *&v89[3];
  *(&v106 + 9) = *v89;
  *&v107 = v33;
  *(&v107 + 1) = v34;
  *&v108 = v35;
  *(&v108 + 1) = v36;
  v109 = 0;
  v86 = 0;
  v84 = v107;
  v85 = v108;
  v83 = v106;
  v81 = v104;
  v82 = v105;
  v79 = v102;
  v80 = v103;
  v37 = v97;
  v38 = KeyPath;
  v39 = v51;
  *v51 = v96;
  v39[1] = v37;
  v40 = v76;
  v41 = v78[0];
  v42 = v78[1];
  v39[4] = v77;
  v39[5] = v41;
  v39[2] = v38;
  v39[3] = v40;
  v43 = v79;
  v44 = v81;
  v45 = v82;
  v39[8] = v80;
  v39[9] = v44;
  v39[6] = v42;
  v39[7] = v43;
  v46 = v83;
  v47 = v84;
  v48 = v85;
  *(v39 + 224) = v86;
  v39[12] = v47;
  v39[13] = v48;
  v39[10] = v45;
  v39[11] = v46;
  v110 = v21;
  v111 = v23;
  v112 = v25 & 1;
  *v113 = *v88;
  *&v113[3] = *&v88[3];
  v114 = v27;
  v115 = v28;
  v116 = 4;
  v117 = 0;
  *v118 = *v87;
  *&v118[3] = *&v87[3];
  v119 = v29;
  v120 = 0;
  v121 = 0;
  v123 = v91;
  v122 = v32;
  v124 = v30;
  *&v125[3] = *&v89[3];
  *v125 = *v89;
  v126 = v33;
  v127 = v34;
  v128 = v35;
  v129 = v36;
  v130 = 0;
  sub_10001F620(&v96, v57, &qword_1003B62D8, &qword_1002E60D8);
  sub_10001F620(&v102, v57, &qword_1003B62E0, &qword_1002E60E0);
  sub_100009EBC(&v110, &qword_1003B62E0, &qword_1002E60E0);
  v57[0] = v56;
  v57[1] = v55;
  v58 = v52;
  *v59 = *v95;
  *&v59[3] = *&v95[3];
  v60 = v31;
  v61 = KeyPath;
  v62 = 0;
  v63 = 1;
  *v64 = *v94;
  *&v64[3] = *&v94[3];
  v65 = v54;
  v66 = 0;
  v67 = 1;
  v68 = v92;
  v69 = v93;
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  return sub_100009EBC(v57, &qword_1003B62D8, &qword_1002E60D8);
}

void sub_1001B6618(uint64_t a1)
{
  sub_10022B294();
  if (v1)
  {
  }

  else
  {
    sub_1001D2EBC();
  }
}

double sub_1001B6660@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  v6 = sub_100005AD4(&qword_1003B6248, &qword_1002E5FA0);
  sub_1001B572C(v4, v5, (a2 + *(v6 + 44)));
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = (a2 + *(sub_100005AD4(&qword_1003B6250, &qword_1002E5FA8) + 36));
  *v8 = sub_1001B6768;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;

  return result;
}

uint64_t sub_1001B6730()
{

  return _swift_deallocObject(v0, 25);
}

unint64_t sub_1001B6774()
{
  v1 = [v0 productID] - 8212;
  if (v1 <= 0x14)
  {
    if (((1 << v1) & 0x14A0) != 0)
    {
      return 0xD000000000000019;
    }

    if (((1 << v1) & 0x10001) != 0)
    {
      return 0xD00000000000001CLL;
    }

    if (((1 << v1) & 0x180000) != 0)
    {
      return 0xD00000000000001CLL;
    }
  }

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000078E8(v3, qword_1003D2920);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [v4 productID];

    _os_log_impl(&_mh_execute_header, v5, v6, "Unsupported product ID: %u", v7, 8u);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1001B692C@<X0>(const char *a1@<X4>, uint64_t a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X8>, ...)
{
  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = 0;
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000078E8(v13, qword_1003D2920);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10028D78C(a2, a3, &v21);
      _os_log_impl(&_mh_execute_header, v14, v15, a1, v16, 0xCu);
      sub_100008664(v17);
    }

    v12 = 1;
  }

  v18 = type metadata accessor for URL();
  v19 = *(*(v18 - 8) + 56);

  return v19(a4, v12, 1, v18);
}

uint64_t sub_1001B6B8C(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1001B6C54@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001B6CA8@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1001B6D0C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1001B6DA8()
{
  result = qword_1003B6280;
  if (!qword_1003B6280)
  {
    sub_100005EA8(&qword_1003B6268, &qword_1002E5FC8);
    sub_1001B6F98(&qword_1003B6288, type metadata accessor for PersonalTranslatorHeroView.HeroVideo, &unk_1002E61A0);
    sub_10001BAEC(&qword_1003B6290, &qword_1003B6298, &qword_1002E6660, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6280);
  }

  return result;
}

unint64_t sub_1001B6EB0()
{
  result = qword_1003B62A0;
  if (!qword_1003B62A0)
  {
    sub_100005EA8(&qword_1003B6258, &qword_1002E5FB8);
    sub_1001B6F98(&qword_1003B62A8, type metadata accessor for PersonalTranslatorHeroView.HeroImage, &unk_1002E6150);
    sub_10001BAEC(&qword_1003B6290, &qword_1003B6298, &qword_1002E6660, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B62A0);
  }

  return result;
}

uint64_t sub_1001B6F98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B6FE8@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1001B704C()
{
  result = qword_1003B6310;
  if (!qword_1003B6310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6310);
  }

  return result;
}

unint64_t sub_1001B70A0()
{
  result = qword_1003B6318;
  if (!qword_1003B6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6318);
  }

  return result;
}

unint64_t sub_1001B70F4()
{
  result = qword_1003B6320;
  if (!qword_1003B6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6320);
  }

  return result;
}

unint64_t sub_1001B7148()
{
  result = qword_1003B6328;
  if (!qword_1003B6328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6328);
  }

  return result;
}

unint64_t sub_1001B719C()
{
  result = qword_1003B6330;
  if (!qword_1003B6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6330);
  }

  return result;
}

uint64_t sub_1001B7204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003B52B8, &qword_1002E6110);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005AD4(&qword_1003B6338, &qword_1002E6118);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1001B7354(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005AD4(&qword_1003B52B8, &qword_1002E6110);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005AD4(&qword_1003B6338, &qword_1002E6118);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1001B7490(uint64_t a1)
{
  sub_1001B7930(319, &qword_1003B5328, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PersonalTranslatorViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1001B7984(319, &unk_1003B63A8, &qword_1003AB2D8, &qword_1002E5FB0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001B7574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003AEE88, &qword_1002E6130);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100005AD4(&qword_1003B52B8, &qword_1002E6110);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1001B76AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100005AD4(&qword_1003AEE88, &qword_1002E6130);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100005AD4(&qword_1003B52B8, &qword_1002E6110);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1001B77CC(uint64_t a1)
{
  sub_1001B7930(319, &qword_1003AEF00, &type metadata accessor for ScenePhase);
  if (v1 <= 0x3F)
  {
    sub_1001B7930(319, &qword_1003B5328, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PersonalTranslatorViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_1001B7984(319, &qword_1003B6448, &qword_1003B62C0, &qword_1002E6088);
        if (v4 <= 0x3F)
        {
          sub_1001B7984(319, &qword_1003B6450, &qword_1003B62C8, &unk_1002E6090);
          if (v5 <= 0x3F)
          {
            sub_1001B7984(319, &unk_1003B6458, &qword_1003B62D0, &qword_1002E60A0);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1001B7930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1001B7984(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100005EA8(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1001B79DC()
{
  result = qword_1003B6498;
  if (!qword_1003B6498)
  {
    sub_100005EA8(&qword_1003B6250, &qword_1002E5FA8);
    sub_10001BAEC(&qword_1003B64A0, &qword_1003B64A8, &qword_1002E6148, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6498);
  }

  return result;
}

uint64_t sub_1001B7AFC()
{
  v1 = type metadata accessor for PersonalTranslatorHeroView.HeroVideo(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;
  sub_100005AD4(&qword_1003AEFE0, &qword_1002DA710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ScenePhase();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  sub_100005AD4(&qword_1003B52A0, &unk_1002E4630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_1001B7D6C()
{
  v1 = *(type metadata accessor for PersonalTranslatorHeroView.HeroVideo(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1001B46C8(v2);
}

uint64_t sub_1001B7DFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001B7E80()
{
  result = qword_1003B64E0;
  if (!qword_1003B64E0)
  {
    sub_100005EA8(&qword_1003B64E8, &qword_1002E6210);
    sub_1001B7F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B64E0);
  }

  return result;
}

unint64_t sub_1001B7F0C()
{
  result = qword_1003B64F0;
  if (!qword_1003B64F0)
  {
    sub_100005EA8(&qword_1003B64F8, &qword_1002E6218);
    sub_10001BAEC(&qword_1003B6500, &qword_1003B6508, &qword_1002E6220, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B64F0);
  }

  return result;
}

unint64_t sub_1001B7FF0()
{
  result = qword_1003B6520;
  if (!qword_1003B6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6520);
  }

  return result;
}

uint64_t sub_1001B8044()
{

  return _swift_deallocObject(v0, 24);
}

id sub_1001B807C()
{
  v1 = *(v0 + 16);
  epoch = kCMTimeZero.epoch;
  v4[0] = kCMTimeZero.value;
  v4[1] = *&kCMTimeZero.timescale;
  v4[2] = epoch;
  [v1 seekToTime:v4];
  return [v1 play];
}

double sub_1001B80E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001B8100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B816C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B8200()
{
  v1 = type metadata accessor for PersonalTranslatorHeroView.HeroImage(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  sub_100005AD4(&qword_1003B52A0, &unk_1002E4630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v0 + v2 + *(v1 + 24);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_100005AD4(&qword_1003B6338, &qword_1002E6118);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001B841C()
{
  sub_100005EA8(&qword_1003B64B0, &qword_1002E61F0);
  type metadata accessor for ColorScheme();
  sub_100005EA8(&qword_1003B64C0, &qword_1002E6200);
  type metadata accessor for ScenePhase();
  sub_1001B7DFC(&qword_1003B64C8, &qword_1003B64C0, &qword_1002E6200, sub_1001B7DCC);
  sub_1001B6F98(&qword_1003AF010, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  swift_getOpaqueTypeConformance2();
  sub_1001B6F98(&qword_1003B6510, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001B85FC(uint64_t a1, int a2)
{
  v34 = a2;
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v32 = &v32 - v7;
  v8 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() mainBundle];
  v37._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD00000000000001FLL;
  v16._object = 0x80000001002F8950;
  v17.value._object = 0x80000001002F0080;
  v17.value._countAndFlagsBits = 0xD000000000000012;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v37);

  sub_100005AD4(&qword_1003A9AB0, &unk_1002D32E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002D3160;

  if ((v34 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v11);
    a1 = v36;
  }

  swift_getKeyPath();
  v36 = a1;
  sub_1001AA624();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
  swift_beginAccess();
  sub_10001F620(a1 + v21, v10, &qword_1003AFCE0, &qword_1002D5B00);

  if ((*(v4 + 48))(v10, 1, v3))
  {
    sub_100009EBC(v10, &qword_1003AFCE0, &qword_1002D5B00);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v24 = v32;
    (*(v4 + 16))(v32, v10, v3);
    sub_100009EBC(v10, &qword_1003AFCE0, &qword_1002D5B00);
    v25 = v33;
    static Locale.current.getter();
    v22 = Locale.sqDisplayName(context:in:)();
    v23 = v26;
    v27 = *(v4 + 8);
    v27(v25, v3);
    v27(v24, v3);
  }

  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100031CD0();
  if (v23)
  {
    v28 = v22;
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v23)
  {
    v29 = v23;
  }

  *(v19 + 32) = v28;
  *(v19 + 40) = v29;
  v30 = String.init(format:_:)();

  return v30;
}

__n128 sub_1001B8A8C@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100005AD4(&qword_1003B6540, &qword_1002E6330);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v9 = sub_100005AD4(&qword_1003B6548, &qword_1002E6338);
  sub_1001B8BDC(a1, a2 & 1, &v8[*(v9 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1001B9968(v8, a3);
  v10 = a3 + *(sub_100005AD4(&qword_1003B6550, &qword_1002E6340) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_1001B8BDC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v83 = a2;
  v101 = a1;
  v99 = a3;
  v5 = type metadata accessor for AccessibilityTraits();
  v97 = *(v5 - 8);
  v98 = v5;
  __chkstk_darwin(v5);
  v96 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v87 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for EnvironmentValues();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v86 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100005AD4(&qword_1003B6558, &qword_1002E6348);
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v80 - v12;
  v90 = sub_100005AD4(&qword_1003B6560, &unk_1002E6350);
  v13 = __chkstk_darwin(v90);
  v95 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v89 = &v80 - v16;
  __chkstk_darwin(v15);
  v93 = &v80 - v17;
  v18 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v18 - 8);
  v84 = sub_100005AD4(&qword_1003B5BD8, &qword_1002E54A8);
  __chkstk_darwin(v84);
  v20 = &v80 - v19;
  v21 = sub_100005AD4(&qword_1003B6568, &qword_1002E6360);
  v22 = __chkstk_darwin(v21 - 8);
  v88 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v100 = &v80 - v24;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
  Image.init(systemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 32;
  v26._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v3 & 1;
  v28._countAndFlagsBits = sub_1001B85FC(a1, v27);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v28);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
  LocalizedStringKey.init(stringInterpolation:)();
  v30 = Text.init(_:tableName:bundle:comment:)();
  v32 = v31;
  v34 = v33;
  static Font.footnote.getter();
  v35 = Text.font(_:)();
  v37 = v36;
  v39 = v38;
  v85 = v40;

  sub_10002EA54(v30, v32, v34 & 1);

  v41 = &v20[*(sub_100005AD4(&qword_1003B5BE0, &unk_1002E54B0) + 36)];
  v42 = *(sub_100005AD4(&qword_1003AB620, &qword_1002D5350) + 28);
  v43 = enum case for Image.Scale.small(_:);
  v44 = type metadata accessor for Image.Scale();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  *v41 = swift_getKeyPath();
  *v20 = v35;
  *(v20 + 1) = v37;
  v20[16] = v39 & 1;
  *(v20 + 3) = v85;
  *&v20[*(v84 + 36)] = static HierarchicalShapeStyle.secondary.getter();
  v45 = v101;
  LODWORD(v85) = v27;
  v102 = sub_1001B85FC(v101, v27);
  v103 = v46;
  sub_1001B99E0();
  sub_10001F278();
  View.accessibilityLabel<A>(_:)();

  sub_100009EBC(v20, &qword_1003B5BD8, &qword_1002E54A8);

  v47 = v45;
  if ((v83 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v48 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v49 = v80;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v81 + 8))(v49, v82);
    v47 = v102;
  }

  swift_getKeyPath();
  v102 = v47;
  sub_1001AA624();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v102 = String.init(localized:table:bundle:locale:comment:)();
  v103 = v50;
  v51 = Text.init<A>(_:)();
  v53 = v52;
  v55 = v54;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v56 = Text.font(_:)();
  v58 = v57;
  v60 = v59;

  sub_10002EA54(v51, v53, v55 & 1);

  v102 = static Color.translateAccentColor.getter();
  v61 = Text.foregroundStyle<A>(_:)();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_10002EA54(v56, v58, v60 & 1);

  v102 = v61;
  v103 = v63;
  v65 &= 1u;
  v104 = v65;
  v105 = v67;
  v68 = swift_allocObject();
  *(v68 + 16) = v101;
  *(v68 + 24) = v85;

  v69 = v91;
  View.onTapGesture(count:perform:)();

  sub_10002EA54(v61, v63, v65);

  v70 = v96;
  static AccessibilityTraits.isButton.getter();
  v102 = &type metadata for Text;
  v103 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v71 = v89;
  v72 = v94;
  View.accessibilityAddTraits(_:)();
  (*(v97 + 8))(v70, v98);
  (*(v92 + 8))(v69, v72);
  v73 = v93;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_1001B9B9C(v71);
  v74 = v100;
  v75 = v88;
  sub_10001F620(v100, v88, &qword_1003B6568, &qword_1002E6360);
  v76 = v95;
  sub_1001B9C04(v73, v95);
  v77 = v99;
  sub_10001F620(v75, v99, &qword_1003B6568, &qword_1002E6360);
  v78 = sub_100005AD4(&qword_1003B6590, &qword_1002E63C8);
  sub_1001B9C04(v76, v77 + *(v78 + 48));
  sub_1001B9B9C(v73);
  sub_100009EBC(v74, &qword_1003B6568, &qword_1002E6360);
  sub_1001B9B9C(v76);
  return sub_100009EBC(v75, &qword_1003B6568, &qword_1002E6360);
}

double sub_1001B96C8(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v15;
  }

  swift_getKeyPath();
  v15 = a1;
  sub_1001AA624();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = a1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__showSourceText;
  *(a1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__showSourceText) = (*(a1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__showSourceText) & 1) == 0;
  swift_getKeyPath();
  v15 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(a1 + v9);
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();
  [v11 setBool:v10 forKey:v12];

  v15 = a1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

uint64_t sub_1001B9968(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B6540, &qword_1002E6330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B99E0()
{
  result = qword_1003B6570;
  if (!qword_1003B6570)
  {
    sub_100005EA8(&qword_1003B5BD8, &qword_1002E54A8);
    sub_1001B9A98();
    sub_10001BAEC(&qword_1003B6580, &qword_1003B6588, &qword_1002E6398, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6570);
  }

  return result;
}

unint64_t sub_1001B9A98()
{
  result = qword_1003B6578;
  if (!qword_1003B6578)
  {
    sub_100005EA8(&qword_1003B5BE0, &unk_1002E54B0);
    sub_10001BAEC(&qword_1003AB648, &qword_1003AB620, &qword_1002D5350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6578);
  }

  return result;
}

uint64_t sub_1001B9B58()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1001B9B9C(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B6560, &unk_1002E6350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B9C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B6560, &unk_1002E6350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B9C80()
{
  result = qword_1003B6598;
  if (!qword_1003B6598)
  {
    sub_100005EA8(&qword_1003B6550, &qword_1002E6340);
    sub_10001BAEC(&qword_1003B65A0, &qword_1003B6540, &qword_1002E6330, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6598);
  }

  return result;
}

uint64_t sub_1001B9D4C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005AD4(&qword_1003AEE88, &qword_1002E6130);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1001B9E1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003AEE88, &qword_1002E6130);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PersonalTranslatorLaunchView(uint64_t a1)
{
  result = qword_1003B6600;
  if (!qword_1003B6600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B9F18(uint64_t a1)
{
  type metadata accessor for PersonalTranslatorStartViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_10005C50C(319);
    if (v2 <= 0x3F)
    {
      sub_1000A9A50(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_1001B9FD0@<D0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = type metadata accessor for PersonalTranslatorLaunchView(0);
  v81 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v82 = v3;
  v83 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005AD4(&qword_1003B6640, &unk_1002E6470);
  v79 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v77 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v78 = &v59 - v7;
  v87 = sub_100005AD4(&qword_1003B3140, &unk_1002E0580);
  v71 = *(v87 - 8);
  __chkstk_darwin(v87);
  v70 = &v59 - v8;
  OpaqueTypeConformance2 = type metadata accessor for ScrollBounceBehavior();
  v64 = *(OpaqueTypeConformance2 - 8);
  __chkstk_darwin(OpaqueTypeConformance2);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ListSectionSpacing();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v59 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100005AD4(&qword_1003B6648, &qword_1002E6480);
  __chkstk_darwin(v61);
  v14 = &v59 - v13;
  v88 = sub_100005AD4(&qword_1003B6650, &qword_1002E6488);
  v65 = *(v88 - 8);
  __chkstk_darwin(v88);
  v63 = &v59 - v15;
  v72 = sub_100005AD4(&qword_1003B6658, &qword_1002E6490);
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v68 = &v59 - v16;
  v76 = sub_100005AD4(&qword_1003B6660, &qword_1002E6498);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v59 - v17;
  v80 = v4;
  v18 = swift_allocBox();
  v20 = v19;
  v84 = v1;
  v21 = *v1;
  swift_getKeyPath();
  v93 = v21;
  sub_1001BE0C8(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  type metadata accessor for PersonalTranslatorViewModel(0);
  sub_1001BE0C8(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);

  v67 = v20;
  Bindable<A>.init(wrappedValue:)();
  v22 = swift_allocBox();
  v24 = v23;
  type metadata accessor for PersonalTranslatorStartViewModel(0);

  v60 = v24;
  Bindable<A>.init(wrappedValue:)();
  v73 = v18;
  v89 = v18;
  v90 = v22;
  v86 = v22;
  sub_100005AD4(&qword_1003B6668, &qword_1002E64C8);
  sub_10001BAEC(&qword_1003B6670, &qword_1003B6668, &qword_1002E64C8, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  v25 = v59;
  static ListSectionSpacing.custom(_:)();
  v26 = *(sub_100005AD4(&qword_1003B6678, &qword_1002E64D0) + 36);
  (*(v11 + 16))(&v14[v26], v25, v10);
  v27 = *(v11 + 56);
  v27(&v14[v26], 0, 1, v10);
  KeyPath = swift_getKeyPath();
  v29 = v61;
  v30 = &v14[*(v61 + 36)];
  v31 = *(sub_100005AD4(&qword_1003B6680, &qword_1002E6508) + 28);
  (*(v11 + 32))(v30 + v31, v25, v10);
  v32 = v62;
  v27(v30 + v31, 0, 1, v10);
  *v30 = KeyPath;
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(v25) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v25)
  {
    Axis.Set.init(rawValue:)();
  }

  v33 = sub_1001BD498();
  v34 = v63;
  View.scrollBounceBehavior(_:axes:)();
  (*(v64 + 8))(v32, OpaqueTypeConformance2);
  sub_1001BD634(v14);
  sub_100005AD4(&qword_1003AEFD0, &qword_1002E6520);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1002D3160;
  static ToolbarPlacement.navigationBar.getter();
  v93 = v29;
  v94 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v68;
  v36 = v88;
  View.toolbarVisibility(_:for:)();

  (*(v65 + 8))(v34, v36);
  v37 = v71;
  v38 = v70;
  v39 = v87;
  (*(v71 + 16))(v70, v60, v87);
  Bindable.wrappedValue.getter();
  (*(v37 + 8))(v38, v39);
  v40 = v93;
  type metadata accessor for MainActor();
  v41 = v86;

  v42 = static MainActor.shared.getter();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = &protocol witness table for MainActor;
  v43[4] = v41;
  v44 = static MainActor.shared.getter();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  v46 = v74;
  sub_1001BC58C(v40, v93, v94, v95);

  v47 = v72;
  (*(v69 + 8))(v35, v72);
  v49 = v79;
  v48 = v80;
  v50 = v77;
  (*(v79 + 16))(v77, v67, v80);
  v51 = v78;
  Bindable.projectedValue.getter();
  v52 = *(v49 + 8);
  v52(v50, v48);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v52(v51, v48);
  v53 = v83;
  sub_100005B40(v84, v83);
  v54 = (*(v81 + 80) + 24) & ~*(v81 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v73;
  sub_1001BD878(v53, v55 + v54);

  sub_100005AD4(&qword_1003B66C0, &qword_1002E6558);
  v91 = v88;
  v92 = OpaqueTypeConformance2;
  v56 = swift_getOpaqueTypeConformance2();
  v91 = v47;
  v92 = v56;
  swift_getOpaqueTypeConformance2();
  sub_10001BAEC(&qword_1003B66C8, &qword_1003B66C0, &qword_1002E6558, &protocol conformance descriptor for NavigationStack<A, B>);
  v57 = v76;
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();

  (*(v75 + 8))(v46, v57);

  return result;
}

uint64_t sub_1001BACB4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, char *a3@<X8>)
{
  v137 = a2;
  v100[1] = a1;
  v126 = a3;
  v120 = sub_100005AD4(&qword_1003B6738, &qword_1002E65F0);
  v121 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = v100 - v3;
  v122 = sub_100005AD4(&qword_1003B6740, &qword_1002E65F8);
  v123 = *(v122 - 8);
  __chkstk_darwin(v122);
  v116 = v100 - v4;
  v124 = sub_100005AD4(&qword_1003B6748, &qword_1002E6600);
  v125 = *(v124 - 8);
  __chkstk_darwin(v124);
  v118 = v100 - v5;
  v6 = sub_100005AD4(&qword_1003B6750, &unk_1002E6608);
  v138 = *(v6 - 8);
  v139 = v6;
  v7 = __chkstk_darwin(v6);
  v119 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v136 = v100 - v9;
  v115 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  v10 = __chkstk_darwin(v115);
  v114 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v113 = v100 - v12;
  v107 = sub_100005AD4(&qword_1003B3140, &unk_1002E0580);
  v110 = *(v107 - 8);
  v13 = __chkstk_darwin(v107);
  v112 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  *&v111 = v100 - v16;
  __chkstk_darwin(v15);
  v109 = v100 - v17;
  v105 = sub_100005AD4(&qword_1003B6640, &unk_1002E6470);
  v103 = *(v105 - 8);
  v18 = __chkstk_darwin(v105);
  v106 = v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v102 = v100 - v21;
  __chkstk_darwin(v20);
  v104 = v100 - v22;
  v128 = type metadata accessor for LanguagePickerSection(0);
  __chkstk_darwin(v128);
  v127 = v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100005AD4(&qword_1003B6758, &qword_1002E6618);
  v25 = *(v24 - 8);
  v134 = v24;
  v135 = v25;
  v26 = __chkstk_darwin(v24);
  v133 = v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v129 = v100 - v28;
  v29 = sub_100005AD4(&qword_1003B6760, &qword_1002E6620);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = v100 - v31;
  v33 = sub_100005AD4(&qword_1003B6768, &qword_1002E6628);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = v100 - v35;
  v37 = sub_100005AD4(&qword_1003B6770, &qword_1002E6630);
  v101 = *(v37 - 8);
  __chkstk_darwin(v37);
  v39 = v100 - v38;
  v40 = sub_100005AD4(&qword_1003B6778, &qword_1002E6638);
  v41 = *(v40 - 8);
  v131 = v40;
  v132 = v41;
  v42 = __chkstk_darwin(v40);
  v130 = v100 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v140 = v100 - v44;
  sub_100005AD4(&qword_1003B6780, &qword_1002E6640);
  sub_1001BDC04();
  Section<>.init(content:)();
  static Edge.Set.top.getter();
  v45 = sub_1001BE110(&qword_1003B67C8, &qword_1003B6760, &qword_1002E6620, sub_1001BDC04);
  View.listSectionMargins(_:_:)();
  (*(v30 + 8))(v32, v29);
  static Edge.Set.horizontal.getter();
  v144 = v29;
  *&v145 = v45;
  v108 = &opaque type descriptor for <<opaque return type of View.listSectionMargins(_:_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.listSectionMargins(_:_:)();
  (*(v34 + 8))(v36, v33);
  static Edge.Set.bottom.getter();
  v144 = v33;
  *&v145 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.listSectionMargins(_:_:)();
  (*(v101 + 8))(v39, v37);
  v47 = swift_projectBox();
  v48 = v103;
  v101 = *(v103 + 16);
  v49 = v102;
  v50 = v105;
  (v101)(v102, v47, v105);
  v51 = v104;
  Bindable.projectedValue.getter();
  v52 = *(v48 + 8);
  v52(v49, v50);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v53 = v50;
  v52(v51, v50);
  v54 = v106;
  (v101)(v106, v47, v53);
  Bindable.projectedValue.getter();
  v52(v54, v53);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v52(v49, v53);
  v55 = swift_projectBox();
  v56 = v110;
  v57 = v110[2];
  v58 = v109;
  v59 = v107;
  v57(v109, v55, v107);
  Bindable.wrappedValue.getter();
  v60 = v56[1];
  v60(v58, v59);
  v110 = sub_1001C73B8();

  v61 = v111;
  v57(v111, v55, v59);
  Bindable.projectedValue.getter();
  v60(v61, v59);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v60(v58, v59);
  v109 = v146;
  v106 = v147;
  LODWORD(v105) = v148;
  v62 = v112;
  v57(v112, v55, v59);
  Bindable.projectedValue.getter();
  v60(v62, v59);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v60(v61, v59);
  v63 = v144;
  v111 = v145;
  v57(v62, v55, v59);
  Bindable.wrappedValue.getter();
  v60(v62, v59);
  v64 = v142;
  v65 = v128;
  v66 = v127;
  *&v127[*(v128 + 24)] = v110;
  v67 = v66 + v65[7];
  v68 = v106;
  *v67 = v109;
  *(v67 + 8) = v68;
  *(v67 + 16) = v105;
  v69 = v66 + v65[8];
  *v69 = v63;
  *(v69 + 8) = v111;
  v70 = (v66 + v65[9]);
  *v70 = sub_1001BDEC0;
  v70[1] = v64;
  v71 = v66 + v65[10];
  v141 = 0;
  State.init(wrappedValue:)();
  v72 = v143;
  *v71 = v142;
  *(v71 + 8) = v72;
  v73 = type metadata accessor for Locale();
  v74 = v113;
  (*(*(v73 - 8) + 56))(v113, 1, 1, v73);
  sub_10001F620(v74, v114, &qword_1003AFCE0, &qword_1002D5B00);
  State.init(wrappedValue:)();
  sub_100009EBC(v74, &qword_1003AFCE0, &qword_1002D5B00);
  static Edge.Set.horizontal.getter();
  sub_1001BE0C8(&qword_1003B67D0, type metadata accessor for LanguagePickerSection, &unk_1002E0388);
  v75 = v129;
  View.listSectionMargins(_:_:)();
  sub_1001BDEC4(v66);
  sub_100005AD4(&qword_1003B67D8, &qword_1002E6708);
  sub_1001BDF28();
  v76 = v117;
  Section<>.init(content:)();
  static Edge.Set.horizontal.getter();
  v77 = sub_1001BE110(&qword_1003B6800, &qword_1003B6738, &qword_1002E65F0, sub_1001BDF28);
  v78 = v116;
  v79 = v120;
  View.listSectionMargins(_:_:)();
  (*(v121 + 8))(v76, v79);
  static Edge.Set.top.getter();
  v144 = v79;
  *&v145 = v77;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v118;
  v82 = v122;
  View.listSectionMargins(_:_:)();
  (*(v123 + 8))(v78, v82);
  static Edge.Set.bottom.getter();
  v144 = v82;
  *&v145 = v80;
  swift_getOpaqueTypeConformance2();
  v83 = v136;
  v84 = v124;
  View.listSectionMargins(_:_:)();
  (*(v125 + 8))(v81, v84);
  v85 = v131;
  v86 = *(v132 + 16);
  v87 = v130;
  v86(v130, v140, v131);
  v137 = *(v135 + 16);
  v88 = v133;
  v137(v133, v75, v134);
  v89 = *(v138 + 16);
  v90 = v119;
  v89(v119, v83, v139);
  v91 = v126;
  v86(v126, v87, v85);
  v92 = sub_100005AD4(&qword_1003B6808, &qword_1002E6718);
  v93 = v134;
  v137(&v91[*(v92 + 48)], v88, v134);
  v94 = v139;
  v89(&v91[*(v92 + 64)], v90, v139);
  v95 = *(v138 + 8);
  v95(v136, v94);
  v96 = *(v135 + 8);
  v96(v129, v93);
  v97 = v131;
  v98 = *(v132 + 8);
  v98(v140, v131);
  v95(v90, v94);
  v96(v133, v93);
  return (v98)(v130, v97);
}

void sub_1001BBEB0(uint64_t a2@<X8>)
{
  v3 = sub_100005AD4(&qword_1003B6640, &unk_1002E6470);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v7 = swift_projectBox();
  (*(v4 + 16))(v6, v7, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  v8 = v14;
  v14 = static Color.clear.getter();
  v9 = AnyView.init<A>(_:)();
  LOBYTE(v14) = 0;
  LOBYTE(v3) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 64) = v3;
  *(a2 + 72) = v10;
  *(a2 + 80) = v11;
  *(a2 + 88) = v12;
  *(a2 + 96) = v13;
  *(a2 + 104) = 0;
}

void sub_1001BC024(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001BE0C8(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

uint64_t sub_1001BC0F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001BE0C8(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

double sub_1001BC1CC@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_100005AD4(&qword_1003B3140, &unk_1002E0580);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v7 = swift_projectBox();
  (*(v4 + 16))(v6, v7, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for PersonalTranslatorStartViewModel(0);
  sub_1001BE0C8(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  Bindable<A>.init(wrappedValue:)();
  v11[1] = static Color.clear.getter();
  v8 = AnyView.init<A>(_:)();
  *(a2 + *(sub_100005AD4(&qword_1003B67F0, &qword_1002E6710) + 36)) = v8;
  v9 = a2 + *(sub_100005AD4(&qword_1003B67D8, &qword_1002E6708) + 36);
  *(v9 + 32) = 0;
  result = 0.0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  return result;
}

uint64_t sub_1001BC398@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_100005AD4(&qword_1003B3140, &unk_1002E0580);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = swift_projectBox();
  (*(v4 + 16))(v6, v7, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  v8 = v14;
  swift_getKeyPath();
  v12 = v8;
  sub_1001BE0C8(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10001F620(v8 + 48, &v12, &qword_1003B6720, &qword_1002E65D8);
  v9 = v12;

  sub_100051124(&v13, &v15);
  LOBYTE(v14) = v9;
  result = sub_100009EBC(&v14, &qword_1003B6720, &qword_1002E65D8);
  *a2 = v9;
  return result;
}

double sub_1001BC58C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_100005AD4(&qword_1003B3140, &unk_1002E0580);
  swift_allocBox();
  type metadata accessor for PersonalTranslatorStartViewModel(0);
  sub_1001BE0C8(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);

  Bindable<A>.init(wrappedValue:)();
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  v9 = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10001F620(v11 + 48, &v9, &qword_1003B6720, &qword_1002E65D8);

  sub_100051124(&v10, v12);
  sub_100051124(v12, &v9);
  sub_100005AD4(&qword_1003B6658, &qword_1002E6490);
  v4 = sub_100005EA8(&qword_1003B6650, &qword_1002E6488);
  v5 = sub_100005EA8(&qword_1003B6648, &qword_1002E6480);
  v6 = sub_1001BD498();
  v11 = v5;
  *&v12[0] = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = v4;
  *&v12[0] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.alert(isPresented:content:)();
  sub_100008664(&v9);

  return result;
}

void sub_1001BC7EC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001BE0C8(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isActive);
}

uint64_t sub_1001BC8C4(uint64_t a1, uint64_t a2)
{
  sub_100005AD4(&qword_1003B66D0, &unk_1002E6560);
  sub_1001BD958();
  return NavigationStack.init<>(root:)();
}

void sub_1001BC934(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v41 = a3;
  v34 = a1;
  v3 = sub_100005AD4(&qword_1003B6640, &unk_1002E6470);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v32 - v5;
  v7 = sub_100005AD4(&qword_1003B6718, &qword_1002E6580);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v33 = v32 - v8;
  v36 = sub_100005AD4(&qword_1003B66E8, &unk_1002E6910);
  __chkstk_darwin(v36);
  v39 = v32 - v9;
  v35 = sub_100005AD4(&qword_1003B66D0, &unk_1002E6560);
  __chkstk_darwin(v35);
  v11 = v32 - v10;
  type metadata accessor for PersonalTranslatorViewModel(0);
  v32[2] = sub_1001BE0C8(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  v12 = Environment.init<A>(_:)();
  v14 = v13;
  v15 = type metadata accessor for SceneContext(0);
  v16 = sub_1001BE0C8(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
  v32[1] = v15;
  v32[0] = v16;
  v17 = EnvironmentObject.init()();
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v51 = v14 & 1;
  v50 = 0;
  v42 = v12;
  v43 = v14 & 1;
  v44 = v17;
  v45 = v19;
  v46 = KeyPath;
  v47 = 0;
  v48 = 0x4024000000000000;
  v49 = 0x7FFFFFFFFFFFFFFFLL;
  v21 = swift_projectBox();
  (*(v4 + 16))(v6, v21, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  v22 = v33;
  sub_1001BDB44();
  View.environment<A>(_:)();

  v23 = swift_getKeyPath();
  v24 = *(v40 + 8);
  if (v24)
  {
    v25 = v23;
    v26 = v39;
    (*(v37 + 32))(v39, v22, v38);
    v27 = (v26 + *(v36 + 36));
    *v27 = v25;
    v27[1] = v24 | 0x8000000000000000;
    v28 = *(v35 + 36);
    v29 = enum case for ColorScheme.dark(_:);
    v30 = type metadata accessor for ColorScheme();
    v31 = *(v30 - 8);
    (*(v31 + 104))(&v11[v28], v29, v30);
    (*(v31 + 56))(&v11[v28], 0, 1, v30);
    sub_100023BD4(v26, v11, &qword_1003B66E8, &unk_1002E6910);
    sub_100023BD4(v11, v41, &qword_1003B66D0, &unk_1002E6560);
  }

  else
  {
    EnvironmentObject.error()();
    __break(1u);
  }
}

void *sub_1001BCDFC@<X0>(void *a1@<X8>)
{
  sub_1001ABEA4();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1001BCE4C(uint64_t *a1)
{
  sub_1001ABEA4();

  return EnvironmentValues.subscript.setter();
}

uint64_t sub_1001BCEB0@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_100005AD4(&qword_1003B3140, &unk_1002E0580);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = sub_100005AD4(&qword_1003B6728, &qword_1002E65E0);
  __chkstk_darwin(v9 - 8);
  v11 = v16 - v10;
  sub_1000085CC(a1, a1[3]);
  v12 = swift_projectBox();
  (*(v6 + 16))(v8, v12, v5);
  Bindable.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  sub_1001C1450(v16[1], v11);

  v13 = type metadata accessor for Alert();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v11, 1, v13);
  if (result != 1)
  {
    return (*(v14 + 32))(a3, v11, v13);
  }

  __break(1u);
  return result;
}

double sub_1001BD0BC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001BE0C8(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);

  return result;
}

uint64_t sub_1001BD1CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  v6 = v3;
  sub_1001BE0C8(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10001F620(v3 + 48, &v6, &qword_1003B6720, &qword_1002E65D8);
  v4 = v6;
  result = sub_100051124(&v7, (a2 + 8));
  *a2 = v4;
  return result;
}

uint64_t sub_1001BD2BC(uint64_t a1, uint64_t *a2)
{
  sub_10001F620(a1, v10, &qword_1003B6720, &qword_1002E65D8);
  v3 = *a2;
  v4 = v10[0];
  v5 = sub_1000E859C(&v10[1], v10[4]);
  __chkstk_darwin(v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  sub_1001C3504(v4, v7, v3);
  return sub_100008664(&v10[1]);
}

uint64_t sub_1001BD3EC(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B6730, &qword_1002E65E8);
  __chkstk_darwin(v2 - 8);
  sub_10001F620(a1, &v5 - v3, &qword_1003B6730, &qword_1002E65E8);
  return EnvironmentValues.listSectionSpacing.setter();
}

unint64_t sub_1001BD498()
{
  result = qword_1003B6688;
  if (!qword_1003B6688)
  {
    sub_100005EA8(&qword_1003B6648, &qword_1002E6480);
    sub_1001BD550();
    sub_10001BAEC(&qword_1003B66B8, &qword_1003B6680, &qword_1002E6508, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6688);
  }

  return result;
}

unint64_t sub_1001BD550()
{
  result = qword_1003B6690;
  if (!qword_1003B6690)
  {
    sub_100005EA8(&qword_1003B6678, &qword_1002E64D0);
    sub_10001BAEC(&qword_1003B6698, &qword_1003B66A0, &qword_1002E6510, &protocol conformance descriptor for List<A, B>);
    sub_10001BAEC(&qword_1003B66A8, &qword_1003B66B0, &qword_1002E6518, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6690);
  }

  return result;
}

uint64_t sub_1001BD634(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B6648, &qword_1002E6480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001BD69C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001BD6E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001BD74C()
{
  v1 = (type metadata accessor for PersonalTranslatorLaunchView(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[8];
  sub_100005AD4(&qword_1003AEFE0, &qword_1002DA710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ScenePhase();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001BD878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTranslatorLaunchView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BD8DC()
{
  v1 = *(type metadata accessor for PersonalTranslatorLaunchView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1001BC8C4(v2, v3);
}

unint64_t sub_1001BD958()
{
  result = qword_1003B66D8;
  if (!qword_1003B66D8)
  {
    sub_100005EA8(&qword_1003B66D0, &unk_1002E6560);
    sub_1001BDA10();
    sub_10001BAEC(&qword_1003B6708, &qword_1003B6710, &unk_1002E9F90, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B66D8);
  }

  return result;
}

unint64_t sub_1001BDA10()
{
  result = qword_1003B66E0;
  if (!qword_1003B66E0)
  {
    sub_100005EA8(&qword_1003B66E8, &unk_1002E6910);
    type metadata accessor for PersonalTranslatorViewModel(255);
    sub_1001BDB44();
    sub_1001BE0C8(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003B66F8, &qword_1003B6700, &unk_1002E6570, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B66E0);
  }

  return result;
}

unint64_t sub_1001BDB44()
{
  result = qword_1003B66F0;
  if (!qword_1003B66F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B66F0);
  }

  return result;
}

void *sub_1001BDB98@<X0>(void *a1@<X8>)
{
  sub_1001ABEA4();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_1001BDC04()
{
  result = qword_1003B6788;
  if (!qword_1003B6788)
  {
    sub_100005EA8(&qword_1003B6780, &qword_1002E6640);
    sub_1001BDC90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6788);
  }

  return result;
}

unint64_t sub_1001BDC90()
{
  result = qword_1003B6790;
  if (!qword_1003B6790)
  {
    sub_100005EA8(&qword_1003B6798, &qword_1002E6648);
    sub_1001BDD48();
    sub_10001BAEC(&qword_1003B6290, &qword_1003B6298, &qword_1002E6660, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6790);
  }

  return result;
}

unint64_t sub_1001BDD48()
{
  result = qword_1003B67A0;
  if (!qword_1003B67A0)
  {
    sub_100005EA8(&qword_1003B67A8, &qword_1002E6650);
    sub_1001BDE00();
    sub_10001BAEC(&qword_1003B67B8, &qword_1003B67C0, &qword_1002E6658, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B67A0);
  }

  return result;
}

unint64_t sub_1001BDE00()
{
  result = qword_1003B67B0;
  if (!qword_1003B67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B67B0);
  }

  return result;
}

uint64_t sub_1001BDEC4(uint64_t a1)
{
  v2 = type metadata accessor for LanguagePickerSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001BDF28()
{
  result = qword_1003B67E0;
  if (!qword_1003B67E0)
  {
    sub_100005EA8(&qword_1003B67D8, &qword_1002E6708);
    sub_1001BDFE0();
    sub_10001BAEC(&qword_1003B6290, &qword_1003B6298, &qword_1002E6660, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B67E0);
  }

  return result;
}

unint64_t sub_1001BDFE0()
{
  result = qword_1003B67E8;
  if (!qword_1003B67E8)
  {
    sub_100005EA8(&qword_1003B67F0, &qword_1002E6710);
    sub_1001BE0C8(&qword_1003B67F8, type metadata accessor for LaunchConfigurationButtons, &unk_1002E05AC);
    sub_10001BAEC(&qword_1003B67B8, &qword_1003B67C0, &qword_1002E6658, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B67E8);
  }

  return result;
}

uint64_t sub_1001BE0C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001BE110(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001BE198()
{
  sub_100005EA8(&qword_1003B6660, &qword_1002E6498);
  sub_100005EA8(&qword_1003B66C0, &qword_1002E6558);
  sub_100005EA8(&qword_1003B6658, &qword_1002E6490);
  sub_100005EA8(&qword_1003B6650, &qword_1002E6488);
  sub_100005EA8(&qword_1003B6648, &qword_1002E6480);
  sub_1001BD498();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10001BAEC(&qword_1003B66C8, &qword_1003B66C0, &qword_1002E6558, &protocol conformance descriptor for NavigationStack<A, B>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001BE344(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v21 - v10;
  v12 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v12 - 8);
  v14 = v21 - v13;
  swift_getKeyPath();
  v21[1] = a1;
  sub_1001AA624();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *a3;
  swift_beginAccess();
  sub_10001F620(a1 + v15, v14, &qword_1003AFCE0, &qword_1002D5B00);
  if ((*(v6 + 48))(v14, 1, v5))
  {
    sub_100009EBC(v14, &qword_1003AFCE0, &qword_1002D5B00);
LABEL_3:

    return 0;
  }

  (*(v6 + 16))(v11, v14, v5);
  sub_100009EBC(v14, &qword_1003AFCE0, &qword_1002D5B00);
  static Locale.current.getter();
  v17 = Locale.sqDisplayName(context:in:)();
  v19 = v18;
  v20 = *(v6 + 8);
  v20(v9, v5);
  v20(v11, v5);
  if (!v19)
  {
    goto LABEL_3;
  }

  return v17;
}

uint64_t sub_1001BE5C4(uint64_t a1, double a2)
{
  v4 = sub_100005AD4(&qword_1003B6810, &qword_1002E67B8);
  __chkstk_darwin(v4);
  v6 = v18 - v5;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_100005AD4(&qword_1003B6818, &qword_1002E67C0);
  sub_1001BE798(a1, &v6[*(v7 + 44)], a2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = &v6[*(sub_100005AD4(&qword_1003B6820, &qword_1002E67C8) + 36)];
  v9 = v18[1];
  *v8 = v18[0];
  *(v8 + 1) = v9;
  *(v8 + 2) = v18[2];
  v10 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v11 = &v6[*(v4 + 36)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a1;
  sub_1001C06D8();

  View.onTapGesture(count:perform:)();

  return sub_100009EBC(v6, &qword_1003B6810, &qword_1002E67B8);
}

uint64_t sub_1001BE798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v98 = a1;
  v100 = sub_100005AD4(&qword_1003B6848, &unk_1002E6850) - 8;
  v5 = __chkstk_darwin(v100);
  v101 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v102 = &v89 - v7;
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005AD4(&qword_1003B5B60, &qword_1002E5410);
  __chkstk_darwin(v12 - 8);
  v14 = &v89 - v13;
  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v15 = type metadata accessor for SymbolRenderingMode();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  Image.symbolRenderingMode(_:)();

  sub_100009EBC(v14, &qword_1003B5B60, &qword_1002E5410);
  (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
  v106 = Image.resizable(capInsets:resizingMode:)();

  (*(v9 + 8))(v11, v8);
  static Font.title.getter();
  static Font.Weight.regular.getter();
  v105 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v16 = static Color.translateAccentColor.getter();
  v97 = v16;
  v104 = static HierarchicalShapeStyle.primary.getter();
  LOBYTE(v126[0]) = 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v164[4] = v168;
  *&v164[20] = v169;
  *&v164[36] = v170;
  v17 = static Edge.Set.leading.getter();
  v18 = v17;
  v95 = v17;
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v126[0]) = 0;
  v27 = static Edge.Set.trailing.getter();
  LOBYTE(v9) = v27;
  v96 = v27;
  EdgeInsets.init(_all:)();
  v92 = v29;
  v93 = v28;
  v90 = v31;
  v91 = v30;
  v99 = static HorizontalAlignment.leading.getter();
  v161 = 1;
  v32 = v98;
  sub_1001BF154(v98, v171);
  *&v160[7] = v171[0];
  *&v160[23] = v171[1];
  *&v160[39] = v171[2];
  *&v160[55] = v171[3];
  v94 = v161;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  *(v33 + 24) = v32;

  sub_100005AD4(&qword_1003B5B70, &qword_1002E5450);
  sub_1001AA708();
  v34 = v102;
  Button.init(action:label:)();
  LOBYTE(v8) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v34 + *(sub_100005AD4(&qword_1003B6850, &qword_1002E6898) + 36);
  *v43 = v8;
  *(v43 + 8) = v36;
  *(v43 + 16) = v38;
  *(v43 + 24) = v40;
  *(v43 + 32) = v42;
  *(v43 + 40) = 0;
  LOBYTE(v8) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v34 + *(sub_100005AD4(&qword_1003B6858, &qword_1002E68A0) + 36);
  *v52 = v8;
  *(v52 + 8) = v45;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 32) = v51;
  *(v52 + 40) = 0;
  LOBYTE(v8) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v53 = v34 + *(v100 + 44);
  *v53 = v8;
  *(v53 + 8) = v54;
  *(v53 + 16) = v55;
  *(v53 + 24) = v56;
  *(v53 + 32) = v57;
  *(v53 + 40) = 0;
  v58 = v34;
  v59 = v101;
  sub_10001F620(v58, v101, &qword_1003B6848, &unk_1002E6850);
  v114 = v106;
  LOWORD(v115) = 1;
  *(&v115 + 2) = v162;
  WORD3(v115) = v163;
  *(&v115 + 1) = KeyPath;
  *&v116 = v105;
  *(&v116 + 1) = v16;
  *(v117 + 4) = *v164;
  *(&v117[1] + 4) = *&v164[16];
  *(&v117[2] + 4) = *&v164[32];
  LODWORD(v117[0]) = v104;
  DWORD1(v117[3]) = *&v164[48];
  BYTE8(v117[3]) = v18;
  *(&v117[3] + 9) = v165[0];
  HIDWORD(v117[3]) = *(v165 + 3);
  v60 = v20;
  *&v118 = v20;
  *(&v118 + 1) = v22;
  v61 = v22;
  v62 = v24;
  *&v119 = v24;
  *(&v119 + 1) = v26;
  v63 = v26;
  LOBYTE(v120) = 0;
  *(&v120 + 1) = *v167;
  DWORD1(v120) = *&v167[3];
  BYTE8(v120) = v9;
  HIDWORD(v120) = *&v166[3];
  *(&v120 + 9) = *v166;
  v65 = v92;
  v64 = v93;
  *&v121 = v93;
  *(&v121 + 1) = v92;
  v67 = v90;
  v66 = v91;
  *&v122 = v91;
  *(&v122 + 1) = v90;
  v123 = 0;
  v68 = v121;
  v69 = v122;
  *(a2 + 192) = 0;
  *(a2 + 160) = v68;
  *(a2 + 176) = v69;
  v70 = v114;
  v71 = v115;
  v72 = v117[0];
  *(a2 + 32) = v116;
  *(a2 + 48) = v72;
  *a2 = v70;
  *(a2 + 16) = v71;
  v73 = v117[1];
  v74 = v117[2];
  v75 = v120;
  *(a2 + 128) = v119;
  *(a2 + 144) = v75;
  v76 = v118;
  *(a2 + 96) = v117[3];
  *(a2 + 112) = v76;
  *(a2 + 64) = v73;
  *(a2 + 80) = v74;
  v77 = v99;
  v124[0] = v99;
  v124[1] = 0;
  LOBYTE(v8) = v94;
  v125[0] = v94;
  *&v125[17] = *&v160[16];
  *&v125[33] = *&v160[32];
  *&v125[49] = *&v160[48];
  *&v125[64] = *&v160[63];
  *&v125[1] = *v160;
  *&v125[136] = v111;
  *&v125[120] = v110;
  *&v125[152] = v112;
  *&v125[168] = v113;
  *&v125[72] = v107;
  *&v125[88] = v108;
  *&v125[104] = v109;
  v78 = *v125;
  *(a2 + 200) = v99;
  v79 = *&v125[16];
  *(a2 + 248) = *&v125[32];
  *(a2 + 232) = v79;
  *(a2 + 216) = v78;
  v80 = *&v125[48];
  v81 = *&v125[64];
  v82 = *&v125[96];
  *(a2 + 296) = *&v125[80];
  *(a2 + 312) = v82;
  *(a2 + 264) = v80;
  *(a2 + 280) = v81;
  v83 = *&v125[112];
  v84 = *&v125[128];
  v85 = *&v125[144];
  v86 = *&v125[160];
  *(a2 + 392) = *&v125[176];
  *(a2 + 360) = v85;
  *(a2 + 376) = v86;
  *(a2 + 328) = v83;
  *(a2 + 344) = v84;
  v87 = sub_100005AD4(&qword_1003B6860, &qword_1002E68A8);
  sub_10001F620(v59, a2 + *(v87 + 64), &qword_1003B6848, &unk_1002E6850);
  sub_10001F620(&v114, v126, &qword_1003B6868, &qword_1002E68B0);
  sub_10001F620(v124, v126, &qword_1003B6870, &qword_1002E68B8);
  sub_100009EBC(v102, &qword_1003B6848, &unk_1002E6850);
  sub_100009EBC(v59, &qword_1003B6848, &unk_1002E6850);
  v126[0] = v77;
  v126[1] = 0;
  v127 = v8;
  v129 = *&v160[16];
  v130 = *&v160[32];
  *v131 = *&v160[48];
  *&v131[15] = *&v160[63];
  v128 = *v160;
  *&v131[23] = v107;
  *&v131[39] = v108;
  *&v131[55] = v109;
  *&v131[119] = v113;
  *&v131[103] = v112;
  *&v131[87] = v111;
  *&v131[71] = v110;
  sub_100009EBC(v126, &qword_1003B6870, &qword_1002E68B8);
  v132[0] = v106;
  v132[1] = 0;
  v133 = 1;
  v134 = 0;
  v135 = v162;
  v136 = v163;
  v137 = KeyPath;
  v138 = v105;
  v139 = v97;
  v141 = *v164;
  v142 = *&v164[16];
  v143 = *&v164[32];
  v140 = v104;
  v144 = *&v164[48];
  v145 = v95;
  *&v146[3] = *(v165 + 3);
  *v146 = v165[0];
  v147 = v60;
  v148 = v61;
  v149 = v62;
  v150 = v63;
  v151 = 0;
  *v152 = *v167;
  *&v152[3] = *&v167[3];
  v153 = v96;
  *&v154[3] = *&v166[3];
  *v154 = *v166;
  v155 = v64;
  v156 = v65;
  v157 = v66;
  v158 = v67;
  v159 = 0;
  return sub_100009EBC(v132, &qword_1003B6868, &qword_1002E68B0);
}

uint64_t sub_1001BF154@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a1;
  v59 = a2;
  v2 = type metadata accessor for Font.Leading();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v56 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v61 = String.init(localized:table:bundle:locale:comment:)();
  v62 = v7;
  sub_10001F278();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Font.callout.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;

  sub_10002EA54(v8, v10, v12 & 1);

  LODWORD(v61) = static HierarchicalShapeStyle.primary.getter();
  v55 = Text.foregroundStyle<A>(_:)();
  v19 = v18;
  v52 = v20;
  v53 = v21;
  sub_10002EA54(v13, v15, v17 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
  v23 = v54;
  v24._countAndFlagsBits = sub_1001BE344(v54, &unk_1002E6828, &OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v24);

  v25._countAndFlagsBits = 32;
  v25._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
  Image.init(_internalSystemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 32;
  v26._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
  v27._countAndFlagsBits = sub_1001BE344(v23, &unk_1002E6800, &OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v27);

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
  LocalizedStringKey.init(stringInterpolation:)();
  v29 = Text.init(_:tableName:bundle:comment:)();
  v31 = v30;
  v33 = v32;
  static Font.footnote.getter();
  v35 = v56;
  v34 = v57;
  v36 = v58;
  (*(v57 + 104))(v56, enum case for Font.Leading.loose(_:), v58);
  Font.leading(_:)();

  (*(v34 + 8))(v35, v36);
  v37 = Text.font(_:)();
  v39 = v38;
  LOBYTE(v36) = v40;

  sub_10002EA54(v29, v31, v33 & 1);

  LODWORD(v61) = static HierarchicalShapeStyle.secondary.getter();
  v41 = Text.foregroundStyle<A>(_:)();
  v43 = v42;
  LOBYTE(v31) = v44;
  v46 = v45;
  sub_10002EA54(v37, v39, v36 & 1);

  v47 = v52 & 1;
  v60 = v52 & 1;
  LOBYTE(v61) = v52 & 1;
  LOBYTE(v31) = v31 & 1;
  v63 = v31;
  v48 = v59;
  v49 = v55;
  *v59 = v55;
  v48[1] = v19;
  *(v48 + 16) = v47;
  v48[3] = v53;
  v48[4] = v41;
  v48[5] = v43;
  *(v48 + 48) = v31;
  v48[7] = v46;
  sub_100005B1C(v49, v19, v47);

  sub_100005B1C(v41, v43, v31);

  sub_10002EA54(v41, v43, v31);

  sub_10002EA54(v49, v19, v60);
}

double sub_1001BF6DC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100005AD4(&qword_1003AA948, &qword_1002D4690);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005AD4(&qword_1003B5B60, &qword_1002E5410);
  __chkstk_darwin(v9 - 8);
  v11 = v21 - v10;
  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v12 = type metadata accessor for SymbolRenderingMode();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  Image.symbolRenderingMode(_:)();

  sub_100009EBC(v11, &qword_1003B5B60, &qword_1002E5410);
  (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
  v13 = Image.resizable(capInsets:resizingMode:)();

  (*(v6 + 8))(v8, v5);
  static Font.Weight.regular.getter();
  v14 = type metadata accessor for Font.Design();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = static Font.system(size:weight:design:)();
  sub_100009EBC(v4, &qword_1003AA948, &qword_1002D4690);
  KeyPath = swift_getKeyPath();
  v17 = static Color.translateAccentColor.getter();
  v18 = static Color.quaternaryTranslateAccentColor.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v13;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  v19 = v21[1];
  *(a1 + 40) = v21[0];
  *(a1 + 56) = v19;
  result = *&v22;
  *(a1 + 72) = v22;
  return result;
}

void sub_1001BFA18(uint64_t a1, double a2)
{
  v4 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1;
  sub_10005E36C(0, 0, v6, &unk_1002E67E8, v9);
}

uint64_t sub_1001BFB4C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_100151E9C;

  return sub_1001BFC08(a5);
}

uint64_t sub_1001BFC08(uint64_t a1)
{
  v1[18] = a1;
  v2 = type metadata accessor for URL();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = type metadata accessor for Locale();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[28] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001BFDDC, v5, v4);
}

uint64_t sub_1001BFDDC()
{
  v63 = v0;

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opening personal translation in Translate app", v4, 2u);
  }

  v6 = v0 + 23;
  v5 = v0[23];
  v7 = v0[25];
  v61 = v0[24];
  v8 = v0[18];

  v62[0] = 0;
  sub_100005AD4(&qword_1003B36B8, &qword_1002E0F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;
  *(inited + 48) = 1;
  v11 = sub_100292804(inited);
  swift_setDeallocating();
  sub_100009EBC(inited + 32, &qword_1003B36C0, &qword_1002E0F28);
  swift_getKeyPath();
  v0[15] = v8;
  sub_1001AA624();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
  swift_beginAccess();
  v13 = v8 + v12;
  v14 = v5;
  sub_10001F620(v13, v5, &qword_1003AFCE0, &qword_1002D5B00);
  v15 = *(v7 + 48);
  if (v15(v14, 1, v61) != 1)
  {
    v6 = v0 + 22;
    v59 = v0[22];
    v60 = v11;
    v16 = v0[18];
    v57 = *(v0[25] + 32);
    v58 = v0[24];
    v57(v0[27], v0[23]);
    swift_getKeyPath();
    v0[16] = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
    swift_beginAccess();
    sub_10001F620(v16 + v17, v59, &qword_1003AFCE0, &qword_1002D5B00);
    if (v15(v59, 1, v58) != 1)
    {
      (v57)(v0[26], v0[22], v0[24]);
      sub_100005AD4(&qword_1003BBEE0, &qword_1002DB810);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_1002E4DB0;
      Locale.ltIdentifier.getter();
      URLQueryItem.init(name:value:)();

      Locale.ltIdentifier.getter();
      URLQueryItem.init(name:value:)();

      URLQueryItem.init(name:value:)();
      static URL.translateAppURL(with:)();

      v24 = [objc_opt_self() defaultWorkspace];
      if (v24)
      {
        v26 = v24;
        URL._bridgeToObjectiveC()(v25);
        v28 = v27;
        sub_1001A78F0(v60);

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v0[17] = 0;
        v30 = [v26 openSensitiveURL:v28 withOptions:isa error:v0 + 17];

        v31 = v0[17];
        v33 = v0[26];
        v32 = v0[27];
        v35 = v0[24];
        v34 = v0[25];
        v36 = v0[20];
        v37 = v0[21];
        v38 = v0[19];
        if (v30)
        {
          v39 = *(v36 + 8);
          v40 = v31;
          v39(v37, v38);
          v41 = *(v34 + 8);
          v41(v33, v35);
          v41(v32, v35);
          v62[0] = 1;
        }

        else
        {
          v50 = v31;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          (*(v36 + 8))(v37, v38);
          v51 = *(v34 + 8);
          v51(v33, v35);
          v51(v32, v35);
          swift_errorRetain();
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            *v54 = 138412290;
            v56 = _convertErrorToNSError(_:)();
            *(v54 + 4) = v56;
            *v55 = v56;
            _os_log_impl(&_mh_execute_header, v52, v53, "Failed to open URL with LaunchServices: %@", v54, 0xCu);
            sub_100009EBC(v55, &unk_1003AECA0, &unk_1002D3F10);
          }

          else
          {
          }
        }
      }

      else
      {
        v42 = v0[26];
        v43 = v0[27];
        v44 = v0[24];
        v45 = v0[25];
        v46 = v0[20];
        v47 = v0[21];
        v48 = v0[19];

        (*(v46 + 8))(v47, v48);
        v49 = *(v45 + 8);
        v49(v42, v44);
        v49(v43, v44);
        v62[0] = 0;
      }

      goto LABEL_11;
    }

    (*(v0[25] + 8))(v0[27], v0[24]);
  }

  v18 = *v6;

  sub_100009EBC(v18, &qword_1003AFCE0, &qword_1002D5B00);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Cannot open Translate app with nil locales", v21, 2u);
  }

LABEL_11:
  sub_1001A9FCC(v62);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1001C0694()
{

  return _swift_deallocObject(v0, 32);
}

unint64_t sub_1001C06D8()
{
  result = qword_1003B6828;
  if (!qword_1003B6828)
  {
    sub_100005EA8(&qword_1003B6810, &qword_1002E67B8);
    sub_1001C0764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6828);
  }

  return result;
}

unint64_t sub_1001C0764()
{
  result = qword_1003B6830;
  if (!qword_1003B6830)
  {
    sub_100005EA8(&qword_1003B6820, &qword_1002E67C8);
    sub_10001BAEC(&qword_1003B6838, &qword_1003B6840, &unk_1002E67D0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6830);
  }

  return result;
}

uint64_t sub_1001C081C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001C085C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B16C;

  return sub_1001BFB4C(v6, a1, v4, v5, v7);
}

uint64_t sub_1001C0938()
{
  sub_100005EA8(&qword_1003B6810, &qword_1002E67B8);
  sub_1001C06D8();
  return swift_getOpaqueTypeConformance2();
}

void sub_1001C09FC()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B68B0, &qword_1002E68F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35[-v4];
  v6 = sub_100005AD4(&qword_1003B68B8, &qword_1002E68F8);
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for PersonalTranslatorLockScreenViewController();
  v37.receiver = v0;
  v37.super_class = v7;
  objc_msgSendSuper2(&v37, "viewDidLoad");
  v36 = v0;
  sub_100005AD4(&qword_1003B68C0, &qword_1002E6900);
  sub_1001C1290();
  NavigationStack.init<>(root:)();
  sub_10001BAEC(&qword_1003B68F0, &qword_1003B68B0, &qword_1002E68F0, &protocol conformance descriptor for NavigationStack<A, B>);
  View.allowsSecureDrawing()();
  (*(v3 + 8))(v5, v2);
  v8 = objc_allocWithZone(sub_100005AD4(&qword_1003B68F8, &unk_1002E6930));
  v9 = SecureHostingController.init(rootView:)();
  [v9 setOverrideUserInterfaceStyle:2];
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 bs_addChildViewController:v9];
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002D53E0;
  v13 = [v11 leadingAnchor];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v12 + 32) = v17;
  v18 = [v11 trailingAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v12 + 40) = v22;
  v23 = [v11 topAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v12 + 48) = v27;
  v28 = [v11 bottomAnchor];
  v29 = [v1 view];
  if (v29)
  {
    v30 = v29;
    v31 = objc_opt_self();
    v32 = [v30 bottomAnchor];

    v33 = [v28 constraintEqualToAnchor:v32];
    *(v12 + 56) = v33;
    sub_100033604();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v31 activateConstraints:isa];

    return;
  }

LABEL_11:
  __break(1u);
}

double sub_1001C0EC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PersonalTranslatorViewModel(0);
  sub_1001C1400(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  Environment.init<A>(_:)();
  type metadata accessor for SceneContext(0);
  sub_1001C1400(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
  EnvironmentObject.init()();
  swift_getKeyPath();
  sub_1001BDB44();
  View.environment<A>(_:)();

  KeyPath = swift_getKeyPath();
  v5 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator42PersonalTranslatorLockScreenViewController_sceneContext);
  v6 = (a2 + *(sub_100005AD4(&qword_1003B66E8, &unk_1002E6910) + 36));
  *v6 = KeyPath;
  v6[1] = v5;

  v7 = static ObservableObject.environmentStore.getter();
  v8 = (a2 + *(sub_100005AD4(&qword_1003B68D8, &qword_1002E6908) + 36));
  *v8 = v7;
  v8[1] = v5;
  v9 = *(sub_100005AD4(&qword_1003B68C0, &qword_1002E6900) + 36);
  v10 = enum case for ColorScheme.dark(_:);
  v11 = type metadata accessor for ColorScheme();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a2 + v9, v10, v11);
  (*(v12 + 56))(a2 + v9, 0, 1, v11);

  return result;
}

id sub_1001C11E4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersonalTranslatorLockScreenViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001C1290()
{
  result = qword_1003B68C8;
  if (!qword_1003B68C8)
  {
    sub_100005EA8(&qword_1003B68C0, &qword_1002E6900);
    sub_1001C1348();
    sub_10001BAEC(&qword_1003B6708, &qword_1003B6710, &unk_1002E9F90, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B68C8);
  }

  return result;
}

unint64_t sub_1001C1348()
{
  result = qword_1003B68D0;
  if (!qword_1003B68D0)
  {
    sub_100005EA8(&qword_1003B68D8, &qword_1002E6908);
    sub_1001BDA10();
    sub_10001BAEC(&qword_1003B68E0, &qword_1003B68E8, &unk_1002E6920, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B68D0);
  }

  return result;
}

uint64_t sub_1001C1400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001C1450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v4 = sub_100005AD4(&qword_1003B6900, &unk_1002E69C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v75 - v5;
  v7 = type metadata accessor for Alert.Button();
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = __chkstk_darwin(v7);
  v87 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v75 - v10;
  v11 = type metadata accessor for NetworkPath();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v75 - v16;
  v18 = *(v12 + 16);
  v18(&v75 - v16, v2, v11);
  v19 = (*(v12 + 88))(v17, v11);
  if (v19 == enum case for NetworkPath.unavailable(_:) || v19 == enum case for NetworkPath.disconnected(_:))
  {
    v91._countAndFlagsBits = sub_1001C1C14(a1);
    v91._object = v21;
    sub_10001F278();
    v22 = Text.init<A>(_:)();
    v86 = v23;
    v87 = v22;
    LODWORD(v84) = v24;
    v85 = v25;
    v91._countAndFlagsBits = sub_1001C24A4(a1);
    v91._object = v26;
    v27 = Text.init<A>(_:)();
    v82 = v28;
    v83 = v27;
    v29 = [objc_opt_self() mainBundle];
    v92._object = 0xE000000000000000;
    v30._countAndFlagsBits = 0xD00000000000003ELL;
    v30._object = 0x80000001002F8AB0;
    v31.value._object = 0x80000001002F0080;
    v31.value._countAndFlagsBits = 0xD000000000000012;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v92._countAndFlagsBits = 0;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v92);

    v91 = v33;
    v34 = Text.init<A>(_:)();
    v36 = v35;
    v38 = v37;

    static Alert.Button.default(_:action:)();

    sub_10002EA54(v34, v36, v38 & 1);

    (*(v88 + 56))(v6, 0, 1, v89);
    v39 = v90;
    Alert.init(title:message:dismissButton:)();
LABEL_9:
    v71 = 0;
    goto LABEL_16;
  }

  if (v19 == enum case for NetworkPath.cellular(_:))
  {
    v76 = a1;
    v91._countAndFlagsBits = sub_1001C1C14(a1);
    v91._object = v40;
    v89 = sub_10001F278();
    v88 = Text.init<A>(_:)();
    v84 = v42;
    v85 = v41;
    LODWORD(v83) = v43;
    v91._countAndFlagsBits = sub_1001C24A4(a1);
    v91._object = v44;
    v45 = Text.init<A>(_:)();
    v81 = v46;
    v82 = v45;
    v79 = v47 & 1;
    v80 = v48;
    v77 = "TOR_START_LIVE_TRANSLATION";
    v78 = objc_opt_self();
    v49.super.isa = [v78 mainBundle];
    v93._object = 0xE000000000000000;
    v50._countAndFlagsBits = 0xD000000000000044;
    v50._object = 0x80000001002F8AF0;
    v51.value._object = 0x80000001002F0080;
    v51.value._countAndFlagsBits = 0xD000000000000012;
    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    v93._countAndFlagsBits = 0;
    v53 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v51, v49, v52, v93);

    v91 = v53;
    v54 = Text.init<A>(_:)();
    v56 = v55;
    LOBYTE(v49.super.isa) = v57;
    v75 = v58;
    v18(v15, v2, v11);
    v59 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v76;
    (*(v12 + 32))(v60 + v59, v15, v11);

    static Alert.Button.default(_:action:)();
    sub_10002EA54(v54, v56, v49.super.isa & 1);

    v61 = [v78 mainBundle];
    v94._object = 0xE000000000000000;
    v62._countAndFlagsBits = 0xD000000000000042;
    v62._object = 0x80000001002F8B40;
    v63.value._object = (v77 | 0x8000000000000000);
    v63.value._countAndFlagsBits = 0xD000000000000012;
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    v94._countAndFlagsBits = 0;
    v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v62, v63, v61, v64, v94);

    v91 = v65;
    v66 = Text.init<A>(_:)();
    v68 = v67;
    v70 = v69;

    static Alert.Button.default(_:action:)();

    sub_10002EA54(v66, v68, v70 & 1);

    v39 = v90;
    Alert.init(title:message:primaryButton:secondaryButton:)();
    goto LABEL_9;
  }

  if (v19 != enum case for NetworkPath.wifi(_:) && v19 != enum case for NetworkPath.wired(_:))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v71 = 1;
  v39 = v90;
LABEL_16:
  v73 = type metadata accessor for Alert();
  return (*(*(v73 - 8) + 56))(v39, v71, 1, v73);
}

uint64_t sub_1001C1C14(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v90 = v2;
  v91 = v3;
  v4 = __chkstk_darwin(v2);
  v88 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v89 = (&v86 - v7);
  v8 = __chkstk_darwin(v6);
  v10 = &v86 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v86 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v86 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v86 - v18;
  __chkstk_darwin(v17);
  v21 = &v86 - v20;
  v22 = type metadata accessor for NetworkPath();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001C2BD8();
  (*(v23 + 16))(v25, v1, v22);
  v27 = (*(v23 + 88))(v25, v22);
  if (v27 == enum case for NetworkPath.unavailable(_:) || v27 == enum case for NetworkPath.disconnected(_:))
  {

    v29 = "LERT_SUBTITLE_MULTIPLE";
    v30 = [objc_opt_self() mainBundle];
    v85 = 0xE000000000000000;
    v31 = 0xD000000000000048;
LABEL_7:
    v32 = v29 | 0x8000000000000000;
    v33.value._object = 0x80000001002F0080;
    v33.value._countAndFlagsBits = 0xD000000000000012;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v35 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v31, v33, v30, v34, *(&v85 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v27 != enum case for NetworkPath.cellular(_:))
  {
    if (v27 != enum case for NetworkPath.wifi(_:) && v27 != enum case for NetworkPath.wired(_:))
    {
      goto LABEL_51;
    }

    return 0;
  }

  v37 = v26[2];
  if (!v37)
  {

    v29 = "LERT_NOT_CONNECTED_TITLE";
    v30 = [objc_opt_self() mainBundle];
    v85 = 0xE000000000000000;
    v31 = 0xD00000000000003ALL;
    goto LABEL_7;
  }

  if (v37 == 1)
  {
    static Locale.current.getter();
    if (v26[2])
    {
      v39 = v90;
      v38 = v91;
      v40 = *(v91 + 16);
      v88 = ((*(v38 + 80) + 32) & ~*(v38 + 80));
      v89 = v40;
      v40(v19, &v88[v26], v90);
      v41 = Locale.languageCode.getter();
      v43 = v42;
      v44 = *(v38 + 8);
      v44(v19, v39);
      if (v43)
      {
        v45 = v41;
      }

      else
      {
        v45 = 0;
      }

      if (v43)
      {
        v46 = v43;
      }

      else
      {
        v46 = 0xE000000000000000;
      }

      v47 = v46;
      v48 = Locale.localizedString(forLanguageCode:)(*&v45);
      v49 = v48.value._countAndFlagsBits;
      object = v48.value._object;

      v44(v21, v39);
      if (v48.value._object)
      {
      }

      else
      {
        v89(v16, &v88[v26], v39);

        v49 = Locale.languageCode.getter();
        object = v78;
        v44(v16, v39);
        if (!object)
        {
          v49 = 0;
          object = 0xE000000000000000;
        }
      }

      v79 = [objc_opt_self() mainBundle];
      v93._object = 0x80000001002F8DC0;
      v80._countAndFlagsBits = 0xD000000000000041;
      v80._object = 0x80000001002F8E00;
      v81.value._object = 0x80000001002F0080;
      v93._countAndFlagsBits = 0xD000000000000036;
      v81.value._countAndFlagsBits = 0xD000000000000012;
      v82._countAndFlagsBits = 0;
      v82._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v81, v79, v82, v93);

      sub_100005AD4(&qword_1003A9AB0, &unk_1002D32E0);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1002D3160;
      *(v83 + 56) = &type metadata for String;
      *(v83 + 64) = sub_100031CD0();
      *(v83 + 32) = v49;
      *(v83 + 40) = object;
      countAndFlagsBits = String.init(format:_:)();
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_47;
  }

  static Locale.current.getter();
  if (!v26[2])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v52 = v90;
  v51 = v91;
  v53 = v26 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
  v87 = *(v91 + 16);
  v87(v10, v53, v90);
  v54 = Locale.languageCode.getter();
  v56 = v55;
  v57 = *(v51 + 8);
  v57(v10, v52);
  if (v56)
  {
    v58 = v54;
  }

  else
  {
    v58 = 0;
  }

  if (v56)
  {
    v59 = v56;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  v60 = v59;
  v61 = Locale.localizedString(forLanguageCode:)(*&v58);

  v57(v13, v52);
  if (!v61.value._object)
  {
    goto LABEL_49;
  }

  v86 = v61.value._countAndFlagsBits;
  v62 = v89;
  static Locale.current.getter();
  if (v26[2] >= 2uLL)
  {
    v63 = &v53[*(v91 + 72)];
    v64 = v88;
    v87(v88, v63, v52);
    v65 = Locale.languageCode.getter();
    v67 = v66;
    v57(v64, v52);
    if (v67)
    {
      v68 = v65;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = v67;
    }

    else
    {
      v69 = 0xE000000000000000;
    }

    v70 = v69;
    v71 = Locale.localizedString(forLanguageCode:)(*&v68);

    v57(v62, v52);
    if (v71.value._object)
    {

      v72 = [objc_opt_self() mainBundle];
      v92._object = 0x80000001002F8DC0;
      v73._countAndFlagsBits = 0xD000000000000043;
      v73._object = 0x80000001002F8D70;
      v74.value._object = 0x80000001002F0080;
      v92._countAndFlagsBits = 0xD000000000000036;
      v74.value._countAndFlagsBits = 0xD000000000000012;
      v75._countAndFlagsBits = 0;
      v75._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v73, v74, v72, v75, v92);

      sub_100005AD4(&qword_1003A9AB0, &unk_1002D32E0);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1002D1370;
      *(v76 + 56) = &type metadata for String;
      v77 = sub_100031CD0();
      *(v76 + 32) = v86;
      *(v76 + 40) = v61.value._object;
      *(v76 + 96) = &type metadata for String;
      *(v76 + 104) = v77;
      *(v76 + 64) = v77;
      *(v76 + 72) = v71;
      countAndFlagsBits = String.init(format:_:)();
LABEL_44:

      return countAndFlagsBits;
    }

    goto LABEL_50;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001C24A4(uint64_t a1)
{
  v2 = type metadata accessor for NetworkPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C2BD8();
  (*(v3 + 16))(v5, v1, v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == enum case for NetworkPath.unavailable(_:) || v7 == enum case for NetworkPath.disconnected(_:))
  {
    v9 = MobileGestalt_get_current_device();
    if (v9)
    {
      v10 = v9;

      wapiCapability = MobileGestalt_get_wapiCapability();

      v12 = [objc_opt_self() mainBundle];
      if (wapiCapability)
      {
        v13 = "LERT_NOT_CONNECTED_SUBTITLE";
        v24 = 0xE000000000000000;
        v14 = 0xD000000000000050;
      }

      else
      {
        v13 = "LERT_CANCEL_BUTTON";
        v24 = 0xE000000000000000;
        v14 = 0xD00000000000004BLL;
      }

      v18 = v13 | 0x8000000000000000;
      v19 = 0x80000001002F0080;
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    if (v7 == enum case for NetworkPath.cellular(_:))
    {
      v15 = v6[2];

      v12 = [objc_opt_self() mainBundle];
      if (v15 <= 1)
      {
        v16 = "ED_SUBTITLE_WLAN";
        v24 = 0xE000000000000000;
        v14 = 0xD000000000000044;
      }

      else
      {
        v16 = "LERT_SUBTITLE_SINGLE";
        v24 = 0xE000000000000000;
        v14 = 0xD000000000000046;
      }

      v18 = v16 | 0x8000000000000000;
      v19 = 0x80000001002F0080;
LABEL_19:
      v20 = 0xD000000000000012;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v22 = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v14, *(&v19 - 1), v12, v21, *(&v24 - 1))._countAndFlagsBits;

      return countAndFlagsBits;
    }

    if (v7 == enum case for NetworkPath.wifi(_:) || v7 == enum case for NetworkPath.wired(_:))
    {

      return 0;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_1001C27B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_10005E36C(0, 0, v10, &unk_1002E6A20, v14);

  return result;
}

uint64_t sub_1001C29B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for NetworkPath();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001C2AB0, v8, v7);
}

uint64_t sub_1001C2AB0()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];

  v6 = sub_1001C2BD8();
  sub_1001C7D24(1, v6);

  (*(v3 + 104))(v1, enum case for NetworkPath.unavailable(_:), v4);
  (*(v3 + 16))(v2, v1, v4);
  sub_1001C3504(0, v2, v5);
  (*(v3 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

void *sub_1001C2BD8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  if (!sub_1001C5120())
  {
    return _swiftEmptyArrayStorage;
  }

  if (!sub_1001C5164())
  {

    return _swiftEmptyArrayStorage;
  }

  if (sub_1001C5120() && (v7 = dispatch thunk of LanguageSelectionDownloadModel.state.getter(), , v7 == 2))
  {
    v8 = _swiftEmptyArrayStorage;
  }

  else
  {
    LanguageSelectionDownloadModel.locale.getter();
    v8 = sub_10028CFE8(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = v8[2];
    v10 = v8[3];
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v16 = v8;
      v17 = v8[2];
      v18 = sub_10028CFE8((v10 > 1), v9 + 1, 1, v16);
      v9 = v17;
      v8 = v18;
    }

    v8[2] = v11;
    (*(v1 + 32))(v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v9, v6, v0);
  }

  if (sub_1001C5164() && (v12 = dispatch thunk of LanguageSelectionDownloadModel.state.getter(), , v12 == 2))
  {
  }

  else
  {
    LanguageSelectionDownloadModel.locale.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10028CFE8(0, v8[2] + 1, 1, v8);
    }

    v14 = v8[2];
    v13 = v8[3];
    if (v14 >= v13 >> 1)
    {
      v8 = sub_10028CFE8((v13 > 1), v14 + 1, 1, v8);
    }

    v8[2] = v14 + 1;
    (*(v1 + 32))(v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14, v4, v0);
  }

  return v8;
}

uint64_t sub_1001C2EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for NetworkPath();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001C2FA0, v7, v6);
}

uint64_t sub_1001C2FA0()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  (*(v3 + 104))(v1, enum case for NetworkPath.unavailable(_:), v4);
  (*(v3 + 16))(v2, v1, v4);
  sub_1001C3504(0, v2, v5);
  (*(v3 + 8))(v1, v4);

  v6 = v0[1];

  return v6();
}

double sub_1001C3098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a1;
  sub_10005E36C(0, 0, v7, a3, v10);

  return result;
}

uint64_t sub_1001C31F0()
{
  v1 = type metadata accessor for NetworkPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

double sub_1001C32B4()
{
  v1 = *(type metadata accessor for NetworkPath() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1001C27B4(v2, v3);
}

uint64_t sub_1001C3350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B16C;

  return sub_1001C2EA0(a1, v4, v5, v6);
}

uint64_t sub_1001C3404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for NetworkPath();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001C3A90, v7, v6);
}

uint64_t sub_1001C3504(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NetworkPath();
  v18 = v6;
  v19 = &off_1003888D8;
  v7 = sub_100050D60(&v17);
  (*(*(v6 - 8) + 32))(v7, a2, v6);
  v15[0] = a1;
  sub_100051124(&v17, v16);
  swift_beginAccess();
  sub_1001C3680(a3 + 48, &v12);
  v8 = v12;
  sub_100051124(v13, v14);
  LOBYTE(v12) = v8;
  sub_100051124(v14, v13);
  sub_1001C36F0(&v12);
  v10[0] = a1;
  sub_100031DD8(v16, &v11);
  sub_1001C36F0(v10);
  swift_getKeyPath();
  v12 = a3;
  sub_1001C377C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1001C36F0(v15);
}

uint64_t sub_1001C3680(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B6720, &qword_1002E65D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C36F0(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B6720, &qword_1002E65D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001C377C()
{
  result = qword_1003B3270;
  if (!qword_1003B3270)
  {
    type metadata accessor for PersonalTranslatorStartViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3270);
  }

  return result;
}

uint64_t sub_1001C37D4()
{
  v1 = type metadata accessor for NetworkPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1001C38A0(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkPath() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B558;

  return sub_1001C29B0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001C399C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001C39DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_1001C3404(a1, v4, v5, v6);
}

BOOL sub_1001C3A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v3 += 8;
  }

  while ((static Selector.== infix(_:_:)() & 1) == 0);
  return v4 != 0;
}

BOOL sub_1001C3B34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_1001CC464(a4, a5, a6);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_1001C3C3C(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = "TOR_START_CONNECT_ALERT_TITLE";
  if (a1)
  {
    v3 = "_ALERT_OK_BUTTON";
    v4 = 0xD00000000000002DLL;
  }

  else
  {
    v4 = 0xD00000000000002CLL;
  }

  v10._object = 0xE000000000000000;
  v5 = v3 | 0x8000000000000000;
  v6.value._object = 0x80000001002F0080;
  v6.value._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, v6, v2, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_1001C3D10(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 41);
}

uint64_t sub_1001C3DE0(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = "T_ALERT_OK_BUTTON";
  if (a1)
  {
    v3 = "TOR_START_IN_EAR_ALERT_BODY";
    v4 = 0xD000000000000031;
  }

  else
  {
    v4 = 0xD000000000000030;
  }

  v10._object = 0xE000000000000000;
  v5 = v3 | 0x8000000000000000;
  v6.value._object = 0x80000001002F0080;
  v6.value._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, v6, v2, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001C3EB4(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = "TOR_START_CONNECT_ALERT_BODY";
  if (a1)
  {
    v3 = "_shouldShowCellularAlert";
    v4 = 0xD00000000000002CLL;
  }

  else
  {
    v4 = 0xD00000000000002BLL;
  }

  v10._object = 0xE000000000000000;
  v5 = v3 | 0x8000000000000000;
  v6.value._object = 0x80000001002F0080;
  v6.value._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, v6, v2, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

double sub_1001C3F88()
{
  swift_getKeyPath();
  sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_1001C402C(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_1001C4160()
{
  swift_getKeyPath();
  sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_1001C4204(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1001C4338()
{
  swift_getKeyPath();
  sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001C43DC(uint64_t a1)
{

  v4 = sub_1000FADE4(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001C4530()
{
  swift_getKeyPath();
  sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

void sub_1001C45D0(char a1)
{
  if (*(v1 + 40) == (a1 & 1))
  {
    *(v1 + 40) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001CC464(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}