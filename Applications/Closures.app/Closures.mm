void sub_100001B64(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 _FBSScene];
    v7 = [v6 settings];

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();

    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC8Closures21ClosuresSceneDelegate_windowManager);
      *(v1 + OBJC_IVAR____TtC8Closures21ClosuresSceneDelegate_windowManager) = 0;
    }
  }
}

id sub_100001D78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClosuresSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100001E10(void *a1, void *a2)
{
  CAFSignpostEmit_Scene();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = a1;
  v8 = [a2 role];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {

LABEL_8:
      sub_10000A44C(0xD000000000000024, 0x8000000100014EC0);
      goto LABEL_17;
    }
  }

  v15 = [v6 _FBSScene];
  v16 = [v15 settings];

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();

  if (v17)
  {
    v18 = [objc_opt_self() sharedApplication];
    v19 = [v18 delegate];

    if (v19)
    {
      v36 = v2;
      type metadata accessor for ClosuresAppDelegate();
      if (swift_dynamicCastClass())
      {
        v20 = v7;
        v21 = sub_1000023C8();
        v22 = sub_10000243C();
        v23 = type metadata accessor for ClosuresWindowManager();
        v24 = objc_allocWithZone(v23);
        v25 = [objc_allocWithZone(UIWindow) initWithWindowScene:v6];
        v26 = OBJC_IVAR____TtC8Closures21ClosuresWindowManager_window;
        *&v24[OBJC_IVAR____TtC8Closures21ClosuresWindowManager_window] = v25;
        [v25 setAutoresizesSubviews:1];
        [*&v24[v26] setAutoresizingMask:18];
        [*&v24[v26] makeKeyAndVisible];
        [*&v24[v26] setHidden:0];
        v38.receiver = v24;
        v38.super_class = v23;
        v27 = objc_msgSendSuper2(&v38, "init");
        v28 = *&v27[OBJC_IVAR____TtC8Closures21ClosuresWindowManager_window];
        v29 = type metadata accessor for ClosuresViewController();
        v30 = objc_allocWithZone(v29);
        *&v30[OBJC_IVAR____TtC8Closures22ClosuresViewController_carManager] = v21;
        *&v30[OBJC_IVAR____TtC8Closures22ClosuresViewController_assetManager] = v22;
        type metadata accessor for CARSessionStatusObservable();
        v31 = v27;
        v32 = v28;
        v33 = v21;

        *&v30[OBJC_IVAR____TtC8Closures22ClosuresViewController_sessionStatusObservable] = CARSessionStatusObservable.__allocating_init()();
        v37.receiver = v30;
        v37.super_class = v29;
        v34 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", 0, 0);
        [v32 setRootViewController:v34];
        swift_unknownObjectRelease();

        v35 = *(v36 + OBJC_IVAR____TtC8Closures21ClosuresSceneDelegate_windowManager);
        *(v36 + OBJC_IVAR____TtC8Closures21ClosuresSceneDelegate_windowManager) = v31;

        return;
      }

      swift_unknownObjectRelease();
    }

    sub_10000A44C(0xD000000000000026, 0x8000000100014F50);
  }

  else
  {
    sub_10000A44C(0xD000000000000021, 0x8000000100014F20);
  }

LABEL_17:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 sub_10000228C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002298(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000022B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_1000022F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002318(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002338(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100002374(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_1000023C8()
{
  v1 = OBJC_IVAR____TtC8Closures19ClosuresAppDelegate____lazy_storage___carManager;
  v2 = *(v0 + OBJC_IVAR____TtC8Closures19ClosuresAppDelegate____lazy_storage___carManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Closures19ClosuresAppDelegate____lazy_storage___carManager);
  }

  else
  {
    v4 = [objc_allocWithZone(CAFCarManager) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10000243C()
{
  v1 = OBJC_IVAR____TtC8Closures19ClosuresAppDelegate____lazy_storage___assetManager;
  if (*(v0 + OBJC_IVAR____TtC8Closures19ClosuresAppDelegate____lazy_storage___assetManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Closures19ClosuresAppDelegate____lazy_storage___assetManager);
  }

  else
  {
    v3 = v0;
    type metadata accessor for CAUAssetLibraryManager();
    swift_allocObject();
    v2 = CAUAssetLibraryManager.init()();
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_10000252C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClosuresAppDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ClosuresAppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

void sub_1000026B8(uint64_t a1)
{
  v2 = v1;
  v60.receiver = v1;
  v60.super_class = type metadata accessor for ClosuresViewController();
  objc_msgSendSuper2(&v60, "viewDidLoad");
  sub_100002F44(0, &qword_100021180, CAFCarManager_ptr);
  sub_100002E4C();
  v3 = CAFObserved<>.observable.getter();
  v4 = *&v2[OBJC_IVAR____TtC8Closures22ClosuresViewController_sessionStatusObservable];
  type metadata accessor for CAFCarManagerObservable();
  sub_100002EB4(&qword_100021190, &type metadata accessor for CAFCarManagerObservable, &protocol conformance descriptor for CAFCarManagerObservable);
  v5 = v4;
  v6 = v3;
  v7 = ObservedObject.init(wrappedValue:)();
  v9 = v8;
  type metadata accessor for CAUAssetLibraryManager();
  sub_100002EB4(&qword_100021198, &type metadata accessor for CAUAssetLibraryManager, &protocol conformance descriptor for CAUAssetLibraryManager);

  v10 = ObservedObject.init(wrappedValue:)();
  v12 = v11;
  type metadata accessor for CARSessionStatusObservable();
  sub_100002EB4(&qword_1000211A0, &type metadata accessor for CARSessionStatusObservable, &protocol conformance descriptor for CARSessionStatusObservable);
  v13 = ObservedObject.init(wrappedValue:)();
  v15 = v14;

  v16 = objc_allocWithZone(sub_100002EFC(&qword_1000211A8, &qword_1000168B8));
  v17 = UIHostingController.init(rootView:)();
  v18 = [v17 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = [v17 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [objc_opt_self() clearColor];
  [v21 setBackgroundColor:v22];

  v23 = [v2 view];
  if (!v23)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v23;
  v25 = [v17 view];
  if (!v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = v25;
  [v24 addSubview:v25];

  sub_100002EFC(&qword_1000211B0, &qword_1000168C0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100016890;
  v28 = [v17 view];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = v28;
  v30 = [v28 topAnchor];

  v31 = [v2 view];
  if (!v31)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  *(v27 + 32) = v34;
  v35 = [v17 view];
  if (!v35)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v36 = v35;
  v37 = [v35 bottomAnchor];

  v38 = [v2 view];
  if (!v38)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v39 = v38;
  v40 = [v38 safeAreaLayoutGuide];

  v41 = [v40 bottomAnchor];
  v42 = [v37 constraintEqualToAnchor:v41];

  *(v27 + 40) = v42;
  v43 = [v17 view];
  if (!v43)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = v43;
  v45 = [v43 leadingAnchor];

  v46 = [v2 view];
  if (!v46)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v47 = v46;
  v48 = [v46 safeAreaLayoutGuide];

  v49 = [v48 leadingAnchor];
  v50 = [v45 constraintEqualToAnchor:v49];

  *(v27 + 48) = v50;
  v51 = [v17 view];

  if (!v51)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v52 = [v51 trailingAnchor];

  v53 = [v2 view];
  if (v53)
  {
    v54 = v53;
    v55 = objc_opt_self();
    v56 = [v54 safeAreaLayoutGuide];

    v57 = [v56 trailingAnchor];
    v58 = [v52 constraintEqualToAnchor:v57];

    *(v27 + 56) = v58;
    sub_100002F44(0, &qword_1000211B8, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v55 activateConstraints:isa];

    CAFSignpostEmit_Rendered();
    return;
  }

LABEL_25:
  __break(1u);
}

id sub_100002D98(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClosuresViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100002E4C()
{
  result = qword_100021188;
  if (!qword_100021188)
  {
    sub_100002F44(255, &qword_100021180, CAFCarManager_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021188);
  }

  return result;
}

uint64_t sub_100002EB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002EFC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002F44(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100002FA0()
{
  v0 = sub_100002EFC(&qword_1000211F0, &qword_100016968);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  sub_10000342C(v7, qword_1000211C0);
  sub_1000033F4(v7, qword_1000211C0);
  (*(v4 + 104))(v6, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v3);
  v8 = type metadata accessor for CAUWidgetContentMargins();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_100010EB4(_swiftEmptyArrayStorage);
  return CAUAppUIConfiguration.Configuration.init(layoutStyle:padding:elementData:)();
}

uint64_t sub_100003144@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020F20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v3 = sub_1000033F4(v2, qword_1000211C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000031EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000339C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100003250()
{
  sub_100003328();
  EnvironmentValues.subscript.getter();
  return v1;
}

void *sub_10000328C()
{
  sub_1000032D4();

  return EnvironmentValues.subscript.getter();
}

unint64_t sub_1000032D4()
{
  result = qword_1000211D8;
  if (!qword_1000211D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000211D8);
  }

  return result;
}

unint64_t sub_100003328()
{
  result = qword_1000211E0;
  if (!qword_1000211E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000211E0);
  }

  return result;
}

unint64_t sub_10000339C()
{
  result = qword_1000211E8;
  if (!qword_1000211E8)
  {
    type metadata accessor for CAUAppUIConfiguration.Configuration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000211E8);
  }

  return result;
}

uint64_t sub_1000033F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000342C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_1000034C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClosuresWindowManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100003568@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100009948(v2, &v14 - v9, &qword_1000212D8, &qword_100016E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for CAUAppUIConfiguration.Configuration();
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

uint64_t sub_100003768@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SeatBeltViewUpdater();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1000037A8()
{
  v1 = &qword_100016C00;
  v43 = sub_100002EFC(&qword_100021598, &qword_100016C00);
  v38 = *(v43 - 8);
  v2 = __chkstk_darwin(v43);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v36 - v5;
  __chkstk_darwin(v4);
  v40 = &v36 - v7;
  v8 = sub_100002EFC(&qword_1000215A0, &qword_100016C08);
  __chkstk_darwin(v8 - 8);
  v37 = &v36 - v9;
  v10 = *(v0 + *(type metadata accessor for SeatBeltsView(0) + 40));
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v42 = v10;

  v17 = 0;
  v39 = v11;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      v19 = __clz(__rbit64(v14)) | (v18 << 6);
      v20 = v42;
      v21 = *(v42 + 48);
      v22 = type metadata accessor for CAUVehicleLayoutKey();
      v23 = *(v22 - 8);
      v44 = v22;
      v45 = v23;
      v24 = v21 + *(v23 + 72) * v19;
      v25 = v40;
      (*(v23 + 16))(v40, v24, v22);
      v26 = *(*(v20 + 56) + 8 * v19);
      v27 = v43;
      *&v25[*(v43 + 48)] = v26;
      v28 = v25;
      v29 = v1;
      sub_1000098E0(v28, v6, &qword_100021598, v1);
      v30 = v41;
      sub_100009948(v6, v41, &qword_100021598, v1);
      v31 = *(v30 + *(v27 + 48));
      v32 = v26;
      v33 = dispatch thunk of CAFSeatBeltObservable.seatBeltIndicator.getter();

      (*(v45 + 8))(v30, v44);
      if (v33)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_1000099B0(v6, &qword_100021598, v29);
      v17 = v18;
      v1 = v29;
      v11 = v39;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v34 = v37;
    sub_1000098E0(v6, v37, &qword_100021598, &qword_100016C00);
    v35 = 1;
    (*(v38 + 56))(v34, 0, 1, v43);
LABEL_12:
    sub_1000099B0(v34, &qword_1000215A0, &qword_100016C08);
    return v35;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        v34 = v37;
        (*(v38 + 56))(v37, 1, 1, v43);
        v35 = 0;
        goto LABEL_12;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100003B64@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D4>)
{
  v12 = sub_100002EFC(&qword_1000212C8, &qword_100016A00);
  __chkstk_darwin(v12 - 8);
  v96 = &v79 - v13;
  v95 = sub_100002EFC(&qword_1000212D0, &qword_100016A08);
  v14 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v79 - v15;
  v16 = type metadata accessor for CAUVehicleLayoutInfo();
  v99 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v93 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v104 = &v79 - v19;
  v108 = type metadata accessor for CAUVehicleLayoutKey();
  v98 = *(v108 - 8);
  v20 = *(v98 + 64);
  v21 = __chkstk_darwin(v108);
  v92 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v109 = &v79 - v22;
  *a3 = swift_getKeyPath();
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for SeatBeltsView(0);
  v24 = v23[5];
  static Font.Weight.medium.getter();
  *(a3 + v24) = v25;
  *(a3 + v23[6]) = 0x4042000000000000;
  *(a3 + v23[7]) = xmmword_100016990;
  v114 = &_swiftEmptyDictionarySingleton;
  v115 = &_swiftEmptyDictionarySingleton;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v26 = sub_1000081B8(_swiftEmptyArrayStorage);
  }

  else
  {
    v26 = &_swiftEmptySetSingleton;
  }

  v27 = v108;
  v113 = v26;
  v28 = type metadata accessor for SeatBeltViewUpdater();
  v100 = swift_allocObject();
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v82 = a5;
  if (!result)
  {

    v69 = &_swiftEmptyDictionarySingleton;
    Height = 1.79769313e308;
    v70 = &_swiftEmptyDictionarySingleton;
    Width = 1.79769313e308;
LABEL_26:
    *(a3 + v23[9]) = Height;
    v71 = (a3 + v23[8]);
    *v71 = Width / 48.0;
    v71[1] = Height / 60.0;
    v72 = (a3 + v23[12]);
    v73 = v82;
    *v72 = a4;
    v72[1] = v73;
    *(a3 + v23[10]) = v70;
    *(a3 + v23[11]) = v69;
    v74 = (a3 + v23[14]);
    sub_1000086A0(&qword_1000212E8, type metadata accessor for SeatBeltViewUpdater, &unk_1000169C4);
    v75 = ObservedObject.init(wrappedValue:)();
    v77 = v76;
    v78 = type metadata accessor for CAUVehicleLayout();
    result = (*(*(v78 - 8) + 8))(a2, v78);
    *v74 = v75;
    v74[1] = v77;
    *(a3 + v23[13]) = v113;
    return result;
  }

  if (result >= 1)
  {
    v79 = v28;
    v80 = v23;
    v81 = a3;
    v31 = 0;
    v106 = a1 & 0xC000000000000001;
    v89 = v99 + 16;
    v88 = v99 + 32;
    v87 = v98 + 16;
    v86 = v20 + 7;
    v85 = v98 + 32;
    v84 = (v14 + 8);
    v83 = (v99 + 8);
    v105 = (v98 + 8);
    v103 = "E19SeatBeltViewUpdater";
    Height = 1.79769313e308;
    *&v29 = 136315138;
    v97 = v29;
    Width = 1.79769313e308;
    v102 = a1;
    v34 = v109;
    v91 = a2;
    v90 = v16;
    v107 = result;
    do
    {
      if (v106)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v35 = *(a1 + 8 * v31 + 32);
      }

      v36 = v35;
      sub_100002F44(0, &qword_1000212E0, CAFSeatBelt_ptr);
      CAFPositionedRequired.layoutKey.getter();
      v37 = CAUVehicleLayout.infos.getter();
      if (*(v37 + 16) && (v38 = sub_100010B8C(v34), (v39 & 1) != 0))
      {
        v40 = v99;
        v41 = v93;
        (*(v99 + 16))(v93, *(v37 + 56) + *(v99 + 72) * v38, v16);

        (*(v40 + 32))(v104, v41, v16);
        v111 = 0;
        v112 = 0xE000000000000000;
        _StringGuts.grow(_:)(16);
        v42._countAndFlagsBits = 0x746C654274616553;
        v42._object = 0xEE00203A79656B20;
        String.append(_:)(v42);
        _print_unlocked<A, B>(_:_:)();
        sub_10000A50C(v111, v112);

        sub_1000084C0(&qword_1000212F0, &qword_1000212E0, CAFSeatBelt_ptr, &protocol conformance descriptor for CAFSeatBelt);
        v101 = CAFObserved<>.observable.getter();
        v111 = dispatch thunk of CAFSeatBeltObservable.$seatBeltIndicator.getter();
        v43 = [objc_opt_self() mainRunLoop];
        v110 = v43;
        v44 = type metadata accessor for NSRunLoop.SchedulerOptions();
        v45 = v96;
        (*(*(v44 - 8) + 56))(v96, 1, 1, v44);
        sub_100002EFC(&qword_1000212F8, &qword_100016A40);
        sub_100002F44(0, &qword_100021300, NSRunLoop_ptr);
        sub_100009D48(&qword_100021308, &qword_1000212F8, &qword_100016A40, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_1000084C0(&qword_100021310, &qword_100021300, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
        v46 = v94;
        Publisher.receive<A>(on:options:)();
        sub_1000099B0(v45, &qword_1000212C8, &qword_100016A00);

        v47 = v98;
        v48 = v92;
        v49 = v108;
        (*(v98 + 16))(v92, v109, v108);
        v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
        v51 = (v86 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = swift_allocObject();
        v53 = v48;
        v34 = v109;
        (*(v47 + 32))(v52 + v50, v53, v49);
        *(v52 + v51) = v36;
        *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v100;
        sub_100009D48(&qword_100021318, &qword_1000212D0, &qword_100016A08, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v54 = v36;

        v55 = v95;
        Publisher<>.sink(receiveValue:)();

        (*v84)(v46, v55);
        AnyCancellable.store(in:)();

        v56 = CAUVehicleLayoutInfo.x.getter() * a6;
        v57 = CAUVehicleLayoutInfo.y.getter() * a6;
        v58 = CAUVehicleLayoutInfo.width.getter() * a6;
        v59 = CAUVehicleLayoutInfo.height.getter() * a6;
        sub_100006EDC(v34, &v116, v56, v57, v58, v59);
        v60 = v101;

        v117.origin.x = v56;
        v117.origin.y = v57;
        v117.size.width = v58;
        v117.size.height = v59;
        if (CGRectGetWidth(v117) < Width)
        {
          v118.origin.x = v56;
          v118.origin.y = v57;
          v118.size.width = v58;
          v118.size.height = v59;
          Width = CGRectGetWidth(v118);
        }

        v119.origin.x = v56;
        v119.origin.y = v57;
        v119.size.width = v58;
        v119.size.height = v59;
        if (CGRectGetHeight(v119) < Height)
        {
          v120.origin.x = v56;
          v120.origin.y = v57;
          v120.size.width = v58;
          v120.size.height = v59;
          Height = CGRectGetHeight(v120);
        }

        v16 = v90;
        (*v83)(v104, v90);
        a2 = v91;
        a1 = v102;
        v27 = v108;
      }

      else
      {

        v111 = 0;
        v112 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);
        v61._countAndFlagsBits = 0x746C654274616553;
        v61._object = 0xEE00203A79656B20;
        String.append(_:)(v61);
        _print_unlocked<A, B>(_:_:)();
        v62._object = (v103 | 0x8000000000000000);
        v62._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v62);
        v64 = v111;
        v63 = v112;
        v65 = static os_log_type_t.info.getter();
        if (qword_100020F28 != -1)
        {
          swift_once();
        }

        v66 = qword_1000223E0;
        if (os_log_type_enabled(qword_1000223E0, v65))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v111 = v68;
          *v67 = v97;
          *(v67 + 4) = sub_100009EA4(v64, v63, &v111);
          _os_log_impl(&_mh_execute_header, v66, v65, "%s", v67, 0xCu);
          sub_100008474(v68);
          v27 = v108;

          a1 = v102;
        }

        v34 = v109;
      }

      ++v31;
      (*v105)(v34, v27);
    }

    while (v107 != v31);

    v69 = v114;
    v70 = v115;
    a3 = v81;
    v23 = v80;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_100004890(uint64_t a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(16);
  type metadata accessor for CAUVehicleLayoutKey();
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 0x74616369646E6920;
  v4._object = 0xEC000000203A726FLL;
  String.append(_:)(v4);
  [a3 seatBeltIndicator];
  v5._countAndFlagsBits = CAFSeatBeltIndicator.description.getter();
  String.append(_:)(v5);

  sub_10000A644(0, 0xE000000000000000, 0xD000000000000024, 0x8000000100015200, 67);

  type metadata accessor for SeatBeltViewUpdater();
  sub_1000086A0(&qword_1000212E8, type metadata accessor for SeatBeltViewUpdater, &unk_1000169C4);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();
}

uint64_t sub_1000049E8@<X0>(uint64_t a1@<X8>)
{
  v90 = sub_100002EFC(&qword_100021438, &qword_100016AC8);
  v94 = *(v90 - 8);
  __chkstk_darwin(v90);
  v4 = &v69 - v3;
  v5 = type metadata accessor for SeatBeltsView(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v95 = v7;
  v91 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CAUVehicleLayoutKey();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v89 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v69 - v13;
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v84 = sub_100002EFC(&qword_100021440, &qword_100016AD0);
  v88 = *(v84 - 8);
  v17 = __chkstk_darwin(v84);
  v87 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v86 = &v69 - v20;
  v21 = __chkstk_darwin(v19);
  v85 = &v69 - v22;
  v23 = __chkstk_darwin(v21);
  v93 = &v69 - v24;
  v25 = __chkstk_darwin(v23);
  v92 = &v69 - v26;
  __chkstk_darwin(v25);
  v96 = &v69 - v27;
  v28 = v1;
  if (sub_1000037A8())
  {
    v71 = a1;
    v70 = v4;
    v29 = *(v9 + 104);
    v73 = v16;
    v29(v16, enum case for CAUVehicleLayoutKey.seat_front_left(_:), v8);
    v72 = v14;
    v29(v14, enum case for CAUVehicleLayoutKey.seat_front_middle(_:), v8);
    v30 = v89;
    v29(v89, enum case for CAUVehicleLayoutKey.seat_front_right(_:), v8);
    v76 = v28;
    v97 = sub_100005450(v16, v14, v30);
    v31 = v91;
    v74 = type metadata accessor for SeatBeltsView;
    sub_100009118(v28, v91, type metadata accessor for SeatBeltsView);
    v83 = *(v6 + 80);
    v32 = (v83 + 16) & ~v83;
    v75 = v32;
    v33 = swift_allocObject();
    sub_100009394(v31, v33 + v32, type metadata accessor for SeatBeltsView);
    v82 = sub_100002EFC(&qword_100021448, &qword_100016AD8);
    v81 = type metadata accessor for UUID();
    v80 = sub_100002EFC(&qword_100021450, &qword_100016AE0);
    v79 = sub_100009D48(&qword_100021458, &qword_100021448, &qword_100016AD8, &protocol conformance descriptor for [A]);
    v78 = sub_100008C40();
    v77 = sub_1000086A0(&qword_1000214C8, type metadata accessor for SeatBeltsView.CombinedFrames, &unk_100016C28);
    ForEach<>.init(_:content:)();
    v34 = *(v9 + 8);
    v35 = v89;
    v34(v89, v8);
    v36 = v72;
    v34(v72, v8);
    v37 = v73;
    v34(v73, v8);
    v38 = v29;
    v69 = v29;
    v29(v37, enum case for CAUVehicleLayoutKey.seat_2ndRow_left(_:), v8);
    v39 = v36;
    v38(v36, enum case for CAUVehicleLayoutKey.seat_2ndRow_middle(_:), v8);
    v40 = v35;
    v38(v35, enum case for CAUVehicleLayoutKey.seat_2ndRow_right(_:), v8);
    v41 = v35;
    v42 = v76;
    v97 = sub_100005450(v37, v39, v41);
    v43 = v42;
    v44 = v91;
    v45 = v74;
    sub_100009118(v43, v91, v74);
    v46 = v75;
    v47 = swift_allocObject();
    sub_100009394(v44, v47 + v46, v45);
    ForEach<>.init(_:content:)();
    v34(v40, v8);
    v34(v39, v8);
    v48 = v73;
    v34(v73, v8);
    v49 = v69;
    v69(v48, enum case for CAUVehicleLayoutKey.seat_3rdRow_left(_:), v8);
    v49(v39, enum case for CAUVehicleLayoutKey.seat_3rdRow_middle(_:), v8);
    v49(v40, enum case for CAUVehicleLayoutKey.seat_3rdRow_right(_:), v8);
    v50 = v76;
    v97 = sub_100005450(v48, v39, v40);
    v51 = v74;
    sub_100009118(v50, v44, v74);
    v52 = v75;
    v53 = swift_allocObject();
    sub_100009394(v44, v53 + v52, v51);
    v54 = v93;
    ForEach<>.init(_:content:)();
    v34(v40, v8);
    v34(v72, v8);
    v34(v48, v8);
    v55 = v88;
    v56 = *(v88 + 16);
    v57 = v84;
    v58 = v85;
    v56(v85, v96, v84);
    v59 = v86;
    v60 = v92;
    v56(v86, v92, v57);
    v61 = v87;
    v56(v87, v54, v57);
    v62 = v70;
    v56(v70, v58, v57);
    v63 = sub_100002EFC(&qword_1000214D0, &qword_100016B18);
    v56((v62 + *(v63 + 48)), v59, v57);
    v56((v62 + *(v63 + 64)), v61, v57);
    v64 = *(v55 + 8);
    v64(v93, v57);
    v64(v60, v57);
    v64(v96, v57);
    v64(v61, v57);
    v64(v59, v57);
    v64(v58, v57);
    v65 = v71;
    sub_1000098E0(v62, v71, &qword_100021438, &qword_100016AC8);
    return (*(v94 + 56))(v65, 0, 1, v90);
  }

  else
  {
    v67 = *(v94 + 56);
    v68 = v90;

    return v67(a1, 1, 1, v68);
  }
}

char *sub_100005450(uint64_t a1, char *a2, char *a3)
{
  v5 = v3;
  v9 = type metadata accessor for SeatBeltsView.CombinedFrames(0);
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v72 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SeatBeltsView(0);
  v12 = *(v3 + *(v11 + 44));
  v13 = _swiftEmptyArrayStorage;
  if (!*(v12 + 16))
  {
    v14 = _swiftEmptyArrayStorage;
    v12 = v72;
    a2 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v14 = v11;
  LOBYTE(v3) = *(v3 + *(v11 + 44));
  v15 = sub_100010B8C(a1);
  if ((v16 & 1) == 0 || (v3 = *(v5 + *(v14 + 10)), !*(v3 + 16)) || (v17 = (*(v12 + 56) + 32 * v15), v18 = *v17, v78 = v17[1], v79 = v18, v19 = sub_100010B8C(a1), (v20 & 1) == 0) || (v21 = *(*(v3 + 56) + 8 * v19), LOBYTE(v3) = dispatch thunk of CAFSeatBeltObservable.seatBeltIndicator.getter(), v4 = v3, v21, !v3))
  {
    v24 = _swiftEmptyArrayStorage;
    if (*(v12 + 16))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v22 = sub_100006C08(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v22 + 2);
  v23 = *(v22 + 3);
  v24 = v22;
  v25 = v4 + 1;
  if (v4 >= v23 >> 1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    *(v24 + 2) = v25;
    v26 = &v24[40 * v4];
    v26[32] = v3;
    v27 = v78;
    *(v26 + 40) = v79;
    *(v26 + 56) = v27;
    if (!*(v12 + 16))
    {
LABEL_8:
      v12 = v72;
      a2 = v13;
LABEL_35:
      v14 = v24;
      goto LABEL_36;
    }

LABEL_10:
    LOBYTE(v3) = v12;
    v28 = sub_100010B8C(a2);
    if ((v29 & 1) == 0)
    {
LABEL_21:
      a2 = v13;
      if (!*(v12 + 16))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v3 = *(v5 + *(v14 + 10));
    if (!*(v3 + 16))
    {
      a2 = v13;
LABEL_24:
      if (!*(v12 + 16))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v30 = (*(v12 + 56) + 32 * v28);
    v31 = *v30;
    v78 = v30[1];
    v79 = v31;
    v32 = sub_100010B8C(a2);
    if ((v33 & 1) == 0)
    {
      goto LABEL_21;
    }

    v34 = *(*(v3 + 56) + 8 * v32);
    LOBYTE(v3) = dispatch thunk of CAFSeatBeltObservable.seatBeltIndicator.getter();
    v4 = v3;

    a2 = v13;
    if (!v3)
    {
      goto LABEL_24;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_100006C08(0, *(v24 + 2) + 1, 1, v24);
    }

    v4 = *(v24 + 2);
    v35 = *(v24 + 3);
    if (v4 >= v35 >> 1)
    {
      v24 = sub_100006C08((v35 > 1), v4 + 1, 1, v24);
    }

    *(v24 + 2) = v4 + 1;
    v36 = &v24[40 * v4];
    v36[32] = v3;
    v37 = v78;
    *(v36 + 40) = v79;
    *(v36 + 56) = v37;
    if (!*(v12 + 16))
    {
LABEL_34:
      v12 = v72;
      goto LABEL_35;
    }

LABEL_25:
    LOBYTE(v3) = v12;
    v38 = sub_100010B8C(a3);
    if ((v39 & 1) == 0)
    {
      goto LABEL_34;
    }

    v3 = *(v5 + *(v14 + 10));
    if (!*(v3 + 16))
    {
      goto LABEL_34;
    }

    v40 = (*(v12 + 56) + 32 * v38);
    v41 = *v40;
    v78 = v40[1];
    v79 = v41;
    v42 = sub_100010B8C(a3);
    v14 = v24;
    if (v43)
    {
      v3 = *(*(v3 + 56) + 8 * v42);
      v44 = dispatch thunk of CAFSeatBeltObservable.seatBeltIndicator.getter();

      v12 = v72;
      if (v44)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100006C08(0, *(v24 + 2) + 1, 1, v24);
        }

        v46 = *(v14 + 2);
        v45 = *(v14 + 3);
        v3 = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          v14 = sub_100006C08((v45 > 1), v46 + 1, 1, v14);
        }

        *(v14 + 2) = v3;
        v47 = &v14[40 * v46];
        v47[32] = v44;
        v48 = v78;
        *(v47 + 40) = v79;
        *(v47 + 56) = v48;
      }
    }

    else
    {
      v12 = v72;
    }

LABEL_36:
    *&v79 = *(v14 + 2);
    if (!v79)
    {
      break;
    }

    v25 = 0;
    v77 = a2;
    *&v78 = v14 + 32;
    v13 = 40;
    a3 = a2;
    v24 = &qword_100016BE0;
    v71 = v14;
    while (1)
    {
      v23 = *(v14 + 2);
      if (!*(a3 + 2))
      {
        if (v25 >= v23)
        {
          goto LABEL_73;
        }

        v50 = (v78 + 40 * v25);
        v4 = *v50;
        v73 = *(v50 + 24);
        v76 = *(v50 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_100006C08(0, 1, 1, a3);
        }

        v5 = *(a3 + 2);
        v51 = *(a3 + 3);
        v3 = v5 + 1;
        if (v5 >= v51 >> 1)
        {
          a3 = sub_100006C08((v51 > 1), v5 + 1, 1, a3);
        }

        *(a3 + 2) = v3;
        v52 = &a3[40 * v5];
        v52[32] = v4;
        *(v52 + 56) = v73;
        *(v52 + 40) = v76;
        v23 = *(v14 + 2);
      }

      if (v25 >= v23)
      {
        break;
      }

      v4 = v25 + 1;
      v87 = CGRectOffset(*(v78 + 40 * v25 + 8), 1.0, 0.0);
      if (v25 + 1 >= v79)
      {
        goto LABEL_57;
      }

      v23 = *(v14 + 2);
      if (v4 >= v23)
      {
        goto LABEL_72;
      }

      v3 = v78 + 40 * v4;
      if (CGRectIntersectsRect(v87, *(v3 + 8)))
      {
        v23 = *(v14 + 2);
        if (v4 >= v23)
        {
          goto LABEL_74;
        }

        v53 = *v3;
        v73 = *(v3 + 24);
        v76 = *(v3 + 8);
        v5 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_100006C08(0, *(a3 + 2) + 1, 1, a3);
        }

        v55 = *(a3 + 2);
        v54 = *(a3 + 3);
        v3 = v55 + 1;
        if (v55 >= v54 >> 1)
        {
          a3 = sub_100006C08((v54 > 1), v55 + 1, 1, a3);
        }

        *(a3 + 2) = v3;
        v56 = &a3[40 * v55];
        v56[32] = v53;
        *(v56 + 56) = v73;
        *(v56 + 40) = v76;
        v4 = v5;
      }

      else
      {
LABEL_57:
        v57 = *(a3 + 2);
        if (v57)
        {
          *&v76 = v4;
          v86 = a2;
          sub_100007F10(0, v57, 0);
          v5 = v86;
          v58 = a3 + 56;
          do
          {
            v59 = *(v58 - 1);
            v60 = *v58;
            v80[0] = *(v58 - 24);
            v81 = v59;
            v82 = v60;
            sub_100002EFC(&qword_100021570, &qword_100016BD8);
            sub_100002EFC(&qword_100021578, &qword_100016BE0);
            swift_dynamicCast();
            v61 = v83[0];
            v62 = v84;
            v63 = v85;
            v86 = v5;
            v65 = *(v5 + 16);
            v64 = *(v5 + 24);
            if (v65 >= v64 >> 1)
            {
              v73 = v84;
              v70 = v85;
              sub_100007F10((v64 > 1), v65 + 1, 1);
              v63 = v70;
              v62 = v73;
              v5 = v86;
            }

            *(v5 + 16) = v65 + 1;
            v66 = (v5 + 40 * v65);
            v66[32] = v61;
            *(v66 + 40) = v62;
            *(v66 + 56) = v63;
            v58 = (v58 + 40);
            --v57;
          }

          while (v57);

          v12 = v72;
          a2 = _swiftEmptyArrayStorage;
          v14 = v71;
          v4 = v76;
        }

        else
        {

          v5 = a2;
        }

        UUID.init()();
        *(v12 + *(v75 + 20)) = v5;
        v67 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_100006A30(0, *(v67 + 2) + 1, 1, v67);
        }

        v3 = *(v67 + 2);
        v68 = *(v67 + 3);
        if (v3 >= v68 >> 1)
        {
          v67 = sub_100006A30((v68 > 1), v3 + 1, 1, v67);
        }

        *(v67 + 2) = v3 + 1;
        v49 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v77 = v67;
        sub_100009394(v12, &v67[v49 + *(v74 + 72) * v3], type metadata accessor for SeatBeltsView.CombinedFrames);
        a3 = a2;
      }

      v25 = v4;
      if (v4 == v79)
      {

        return v77;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    v24 = sub_100006C08((v23 > 1), v25, 1, v24);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100005C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + *(type metadata accessor for SeatBeltsView.CombinedFrames(0) + 20));
  if (*(v6 + 16) && (v7 = *(v6 + 40), sub_100006868(), v9 = v8, v10 = type metadata accessor for SeatBeltsView(0), *(v6 + 16)))
  {
    v11 = (a2 + *(v10 + 48));
    v12 = v7 + v9 * 0.5 + *v11;
    v13 = *(v6 + 48);
    sub_100006868();
    v15 = v11[1] + v13 + v14 * 0.5;
    *a3 = static Alignment.center.getter();
    a3[1] = v16;
    v17 = sub_100002EFC(&qword_1000214D8, &qword_100016B20);
    sub_100005F14(a2, a1, a3 + *(v17 + 44));
    sub_100006868();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v18 = (a3 + *(sub_100002EFC(&qword_100021490, &qword_100016AF8) + 36));
    *v18 = v34;
    v18[1] = v35;
    v18[2] = v36;
    v19 = [objc_opt_self() systemGray6Color];
    v20 = Color.init(uiColor:)();
    v21 = static Edge.Set.all.getter();
    v22 = a3 + *(sub_100002EFC(&qword_100021480, &qword_100016AF0) + 36);
    *v22 = v20;
    v22[8] = v21;
    v23 = a3 + *(sub_100002EFC(&qword_100021470, &qword_100016AE8) + 36);
    v24 = *(type metadata accessor for RoundedRectangle() + 20);
    v25 = enum case for RoundedCornerStyle.continuous(_:);
    v26 = type metadata accessor for RoundedCornerStyle();
    (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
    __asm { FMOV            V0.2D, #10.0 }

    *v23 = _Q0;
    *&v23[*(sub_100002EFC(&qword_1000214C0, &qword_100016B10) + 36)] = 256;
    result = sub_100002EFC(&qword_100021450, &qword_100016AE0);
    v33 = (a3 + *(result + 36));
    *v33 = v12;
    v33[1] = v15;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100005F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v51 = a3;
  v4 = type metadata accessor for SeatBeltsView(0);
  v44 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v45 = v5;
  v46 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SeatBeltsView.CombinedFrames(0);
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  __chkstk_darwin(v6 - 8);
  v43 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002EFC(&qword_1000214E0, &qword_100016B28);
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v47 = v41 - v9;
  v10 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v41 - v15;
  v17 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  sub_100003568(v20);
  CAUAppUIConfiguration.Configuration.layoutStyle.getter();
  (*(v18 + 8))(v20, v17);
  (*(v11 + 104))(v14, enum case for CAUAppUIConfiguration.LayoutStyle.landscape(_:), v10);
  sub_1000086A0(&qword_1000214E8, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle, &protocol conformance descriptor for CAUAppUIConfiguration.LayoutStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v54 != v52 || (v22 = -1.0, v55 != v53))
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v22 = -1.0;
    }

    else
    {
      v22 = 1.0;
    }
  }

  v23 = *(v11 + 8);
  v23(v14, v10);
  v23(v16, v10);

  v24 = v48;
  v25 = sub_1000064B0();
  v26 = v25[2];
  if (NSNotFound.getter())
  {
    v41[1] = v26;
    v27 = v24;
    v28 = v43;
    sub_100009118(v27, v43, type metadata accessor for SeatBeltsView.CombinedFrames);
    v29 = v21;
    v30 = v46;
    sub_100009118(v29, v46, type metadata accessor for SeatBeltsView);
    v31 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v32 = (v7 + *(v44 + 80) + v31) & ~*(v44 + 80);
    v33 = (v45 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    sub_100009394(v28, v34 + v31, type metadata accessor for SeatBeltsView.CombinedFrames);
    sub_100009394(v30, v34 + v32, type metadata accessor for SeatBeltsView);
    *(v34 + v33) = v25;
    *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
    sub_100002EFC(&qword_1000214F0, &qword_100016B30);
    sub_100009518();
    v35 = v47;
    ForEach<>.init(_:content:)();
    v37 = v49;
    v36 = v50;
    v38 = v51;
    (*(v49 + 32))(v51, v35, v50);
    v39 = 0;
  }

  else
  {

    v39 = 1;
    v36 = v50;
    v38 = v51;
    v37 = v49;
  }

  return (*(v37 + 56))(v38, v39, 1, v36);
}

void *sub_1000064B0()
{
  v1 = *(v0 + *(type metadata accessor for SeatBeltsView.CombinedFrames(0) + 20));
  v2 = *(v1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100007F30(0, v2, 0);
    result = _swiftEmptyArrayStorage;
    v4 = (v1 + 32);
    v5 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *v4;
      v4 += 40;
      v6 = v7;
      v9 = result;
      v8 = result[3];
      if (v5 >= v8 >> 1)
      {
        sub_100007F30((v8 > 1), v5 + 1, 1);
        result = v9;
      }

      result[2] = v5 + 1;
      *(result + v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_10000657C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_100002EFC(&qword_100021560, &qword_100016B68);
  __chkstk_darwin(v12 - 8);
  v14 = v38 - v13;
  v15 = type metadata accessor for SeatBeltsView.CombinedFrames(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = *(a2 + *(v15 + 20));
  if (*(v16 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = (v16 + 40 * a1);
  v18 = v17[5];
  v39.origin.y = v17[6];
  v39.size.width = v17[7];
  v39.size.height = v17[8];
  v39.origin.x = v18;
  Width = CGRectGetWidth(v39);
  if (!*(v16 + 16))
  {
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v20 = Width;
  v21 = *(v16 + 40);
  v22 = type metadata accessor for SeatBeltsView(0);
  v23 = *(a3 + *(v22 + 36));
  v24 = Image.init(systemName:)();
  v25 = type metadata accessor for Font.Design();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v26 = static Font.system(size:weight:design:)();
  sub_1000099B0(v14, &qword_100021560, &qword_100016B68);
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (*(a4 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + a1 + 32) == 2)
  {
    v28 = static Color.red.getter();
  }

  else
  {
    v28 = static Color.green.getter();
  }

  v29 = v28;
  v30 = v18 + v20 * 0.5 - v21;
  v31 = swift_getKeyPath();
  v32 = (a3 + *(v22 + 32));
  v33 = *v32;
  v34 = v32[1] * a6;
  static UnitPoint.center.getter();
  v35 = v38[1];
  *(a5 + 24) = v38[0];
  *a5 = v24;
  *(a5 + 8) = KeyPath;
  *(a5 + 16) = v26;
  *(a5 + 40) = v35;
  *(a5 + 56) = v38[2];
  *(a5 + 72) = v31;
  *(a5 + 80) = v29;
  *(a5 + 88) = v33;
  *(a5 + 96) = v34;
  *(a5 + 104) = v36;
  *(a5 + 112) = v37;
  *(a5 + 120) = v30;
  *(a5 + 128) = v23 * 0.5;
}

void sub_100006868()
{
  v1 = *(v0 + *(type metadata accessor for SeatBeltsView.CombinedFrames(0) + 20));
  v2 = *(v1 + 16);
  if (v2)
  {
    CGRectGetWidth(*(v1 + 40 * v2));
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = (v1 + 64);
      Height = 0.0;
      do
      {
        v6 = *(v4 - 3);
        v7 = *(v4 - 2);
        v8 = *(v4 - 1);
        v9 = *v4;
        v10.origin.x = v6;
        v10.origin.y = v7;
        v10.size.width = v8;
        v10.size.height = *v4;
        if (Height < CGRectGetHeight(v10))
        {
          v11.origin.x = v6;
          v11.origin.y = v7;
          v11.size.width = v8;
          v11.size.height = v9;
          Height = CGRectGetHeight(v11);
        }

        v4 += 5;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1000069A0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *sub_100006A30(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002EFC(&qword_100021588, &qword_100016BF0);
  v10 = *(type metadata accessor for SeatBeltsView.CombinedFrames(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SeatBeltsView.CombinedFrames(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100006C08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&qword_100021580, &qword_100016BE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

uint64_t sub_100006D24(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for CAUVehicleLayoutKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v27 = v12;
  v13 = sub_100010B8C(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v14;
  if (v12[3] < v18)
  {
    sub_1000070D4(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_100010B8C(a2);
    if ((v3 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v13;
    sub_100007A1C();
    v13 = v23;
    v20 = v27;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    v24 = v13;
    (*(v8 + 16))(v10, a2, v7);
    sub_100007890(v24, v10, a1, v20);
    v22 = 0;
    goto LABEL_11;
  }

LABEL_6:
  v20 = v27;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = v20[7];
  v22 = *(v21 + 8 * v13);
  *(v21 + 8 * v13) = a1;
LABEL_11:
  *v4 = v20;
  return v22;
}

uint64_t sub_100006EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v8 = v6;
  v15 = type metadata accessor for CAUVehicleLayoutKey();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v6;
  v35 = v20;
  result = sub_100010B8C(a1);
  v23 = v20[2];
  v24 = v22 ^ 1;
  v25 = __OFADD__(v23, (v22 ^ 1) & 1);
  v26 = v23 + ((v22 ^ 1) & 1);
  if (v25)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v22;
  if (v20[3] < v26)
  {
    sub_1000074B0(v26, isUniquelyReferenced_nonNull_native);
    result = sub_100010B8C(a1);
    if ((v7 & 1) == (v27 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v32 = result;
    sub_100007C90();
    result = v32;
    v28 = v35;
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_10:
    v33 = result;
    (*(v16 + 16))(v18, a1, v15);
    result = sub_100007948(v33, v18, v28, a3, a4, a5, a6);
    v30 = 0uLL;
    v31 = 0uLL;
    goto LABEL_11;
  }

LABEL_6:
  v28 = v35;
  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v29 = v28[7] + 32 * result;
  v30 = *v29;
  v31 = *(v29 + 16);
  *v29 = a3;
  *(v29 + 8) = a4;
  *(v29 + 16) = a5;
  *(v29 + 24) = a6;
LABEL_11:
  *v8 = v28;
  *a2 = v30;
  *(a2 + 16) = v31;
  *(a2 + 32) = v24 & 1;
  return result;
}

uint64_t sub_1000070D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100002EFC(&qword_100021338, &qword_100016A50);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000086A0(&qword_100021340, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000074B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100002EFC(&qword_100021348, &qword_100016A58);
  v46 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v5;
    v17 = v15 & *(v9 + 64);
    v18 = (v14 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    v51 = v16;
    v52 = v8;
    v20 = v6;
    while (v17)
    {
      v26 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v29 = v26 | (v12 << 6);
      v30 = *(v9 + 48);
      v50 = *(v20 + 72);
      v31 = v30 + v50 * v29;
      if (v46)
      {
        (*v47)(v52, v31, v51);
      }

      else
      {
        (*v44)(v52, v31, v51);
      }

      v32 = (*(v9 + 56) + 32 * v29);
      v33 = *v32;
      v48 = v32[1];
      v49 = v33;
      sub_1000086A0(&qword_100021340, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v11 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v19 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v22 = v45;
        v23 = v52;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v19 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v19 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v22 = v45;
      v23 = v52;
LABEL_7:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v47)(*(v11 + 48) + v50 * v21, v23, v51);
      v24 = (*(v11 + 56) + 32 * v21);
      v25 = v48;
      *v24 = v49;
      v24[1] = v25;
      ++*(v11 + 16);
      v20 = v22;
    }

    v27 = v12;
    while (1)
    {
      v12 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v18)
      {
        break;
      }

      v28 = v13[v12];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v17 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100007890(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CAUVehicleLayoutKey();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100007948(unint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a3[6];
  v15 = type metadata accessor for CAUVehicleLayoutKey();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a3[7] + 32 * a1);
  *v17 = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  v18 = a3[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v20;
  }

  return result;
}

char *sub_100007A1C()
{
  v1 = v0;
  v31 = type metadata accessor for CAUVehicleLayoutKey();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002EFC(&qword_100021338, &qword_100016A50);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_100007C90()
{
  v1 = v0;
  v34 = type metadata accessor for CAUVehicleLayoutKey();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002EFC(&qword_100021348, &qword_100016A58);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v29 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v35 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v32 = v36 + 16;
    v30 = v3 + 64;
    for (i = v36 + 32; v12; v27[1] = v28)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v36;
      v19 = *(v36 + 72) * v17;
      v20 = v33;
      v21 = v34;
      (*(v36 + 16))(v33, *(v3 + 48) + v19, v34);
      v17 *= 32;
      v22 = (*(v3 + 56) + v17);
      v23 = v35;
      v24 = *(v35 + 48);
      v25 = *(v18 + 32);
      v26 = *v22;
      v37 = v22[1];
      v38 = v26;
      result = v25(v24 + v19, v20, v21);
      v27 = (*(v23 + 56) + v17);
      v28 = v37;
      *v27 = v38;
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

        v1 = v29;
        v5 = v35;
        goto LABEL_18;
      }

      v16 = *(v30 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_100007F10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007F50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007F30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000806C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007F50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&qword_100021590, &qword_100016BF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_10000806C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&qword_100021568, &qword_100016BD0);
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

uint64_t sub_100008160@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000081B8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100002EFC(&qword_100021320, &qword_100016A48);
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
    sub_1000086A0(&qword_100021328, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1000086A0(&qword_100021330, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
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

uint64_t sub_100008474(void *a1)
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

uint64_t sub_1000084C0(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002F44(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100008504(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000854C()
{
  v1 = type metadata accessor for CAUVehicleLayoutKey();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000085F8(uint64_t a1)
{
  v3 = *(type metadata accessor for CAUVehicleLayoutKey() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100004890(a1, v1 + v4, v5);
}

uint64_t sub_1000086A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000086FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000087D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

void sub_10000889C(uint64_t a1)
{
  sub_1000089F4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v3 <= 0x3F)
      {
        sub_100008A4C(319, &qword_1000213C8, &type metadata accessor for CAFSeatBeltObservable);
        if (v4 <= 0x3F)
        {
          sub_100008A4C(319, &qword_1000213D0, type metadata accessor for CGRect);
          if (v5 <= 0x3F)
          {
            sub_100008AF8(319);
            if (v6 <= 0x3F)
            {
              sub_100008B8C(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000089F4(uint64_t a1)
{
  if (!qword_1000213C0)
  {
    type metadata accessor for CAUAppUIConfiguration.Configuration();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1000213C0);
    }
  }
}

void sub_100008A4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CAUVehicleLayoutKey();
    a3(255);
    sub_1000086A0(&qword_100021340, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
    v5 = type metadata accessor for Dictionary();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100008AF8(uint64_t a1)
{
  if (!qword_1000213D8)
  {
    type metadata accessor for AnyCancellable();
    sub_1000086A0(&qword_100021328, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_1000213D8);
    }
  }
}

void sub_100008B8C(uint64_t a1)
{
  if (!qword_1000213E0)
  {
    type metadata accessor for SeatBeltViewUpdater();
    sub_1000086A0(&qword_1000212E8, type metadata accessor for SeatBeltViewUpdater, &unk_1000169C4);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1000213E0);
    }
  }
}

unint64_t sub_100008C40()
{
  result = qword_100021460;
  if (!qword_100021460)
  {
    sub_100008504(&qword_100021450, &qword_100016AE0);
    sub_100008CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021460);
  }

  return result;
}

unint64_t sub_100008CCC()
{
  result = qword_100021468;
  if (!qword_100021468)
  {
    sub_100008504(&qword_100021470, &qword_100016AE8);
    sub_100008D84();
    sub_100009D48(&qword_1000214B8, &qword_1000214C0, &qword_100016B10, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021468);
  }

  return result;
}

unint64_t sub_100008D84()
{
  result = qword_100021478;
  if (!qword_100021478)
  {
    sub_100008504(&qword_100021480, &qword_100016AF0);
    sub_100008E3C();
    sub_100009D48(&qword_1000214A8, &qword_1000214B0, &qword_100016B08, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021478);
  }

  return result;
}

unint64_t sub_100008E3C()
{
  result = qword_100021488;
  if (!qword_100021488)
  {
    sub_100008504(&qword_100021490, &qword_100016AF8);
    sub_100009D48(&qword_100021498, &qword_1000214A0, &qword_100016B00, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021488);
  }

  return result;
}

uint64_t sub_100008F14(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008F4C()
{
  v1 = *(type metadata accessor for SeatBeltsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100009094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SeatBeltsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100005C70(a1, v6, a2);
}

uint64_t sub_100009118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009180()
{
  v1 = *(type metadata accessor for SeatBeltsView.CombinedFrames(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for SeatBeltsView(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v10 - 8) + 8))(v0 + v7, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_100009394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000093FC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SeatBeltsView.CombinedFrames(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SeatBeltsView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v10);
  v12 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10000657C(a1, v2 + v6, v2 + v9, v11, a2, v12);
}

unint64_t sub_100009518()
{
  result = qword_1000214F8;
  if (!qword_1000214F8)
  {
    sub_100008504(&qword_1000214F0, &qword_100016B30);
    sub_1000095A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000214F8);
  }

  return result;
}

unint64_t sub_1000095A4()
{
  result = qword_100021500;
  if (!qword_100021500)
  {
    sub_100008504(&qword_100021508, &qword_100016B38);
    sub_100009630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021500);
  }

  return result;
}

unint64_t sub_100009630()
{
  result = qword_100021510;
  if (!qword_100021510)
  {
    sub_100008504(&qword_100021518, &qword_100016B40);
    sub_1000096E8();
    sub_100009D48(&qword_100021550, &qword_100021558, &qword_100016B60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021510);
  }

  return result;
}

unint64_t sub_1000096E8()
{
  result = qword_100021520;
  if (!qword_100021520)
  {
    sub_100008504(&qword_100021528, &qword_100016B48);
    sub_100009774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021520);
  }

  return result;
}

unint64_t sub_100009774()
{
  result = qword_100021530;
  if (!qword_100021530)
  {
    sub_100008504(&qword_100021538, &unk_100016B50);
    sub_100009D48(&qword_100021540, &qword_100021548, &unk_1000172A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021530);
  }

  return result;
}

uint64_t sub_10000982C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100009884@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000098E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002EFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009948(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002EFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000099B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002EFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_100009AF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

void sub_100009BAC(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100009C30(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100009C30(uint64_t a1)
{
  if (!qword_100021610)
  {
    sub_100008504(&qword_100021578, &qword_100016BE0);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_100021610);
    }
  }
}

unint64_t sub_100009C98()
{
  result = qword_100021640;
  if (!qword_100021640)
  {
    sub_100008504(&qword_100021648, &qword_100016C20);
    sub_100009D48(&qword_100021650, &qword_100021438, &qword_100016AC8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021640);
  }

  return result;
}

uint64_t sub_100009D48(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100008504(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009DE4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000A4C0();
  result = OS_os_log.init(subsystem:category:)();
  qword_1000223E0 = result;
  return result;
}

unint64_t sub_100009EA4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009F70(v11, 0, 0, 1, a1, a2);
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
    sub_10000A464(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008474(v11);
  return v7;
}

unint64_t sub_100009F70(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000A07C(a5, a6);
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

void *sub_10000A07C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000A0C8(a1, a2);
  sub_10000A1F8(&off_10001D008);
  return v3;
}

void *sub_10000A0C8(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000A2E4(v5, 0);
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
        v7 = sub_10000A2E4(v10, 0);
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

uint64_t sub_10000A1F8(uint64_t result)
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

  result = sub_10000A358(result, v11, 1, v3);
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

void *sub_10000A2E4(uint64_t a1, uint64_t a2)
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

  sub_100002EFC(&qword_100021660, &qword_100016C68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000A358(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&qword_100021660, &qword_100016C68);
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

uint64_t sub_10000A464(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000A4C0()
{
  result = qword_100021668;
  if (!qword_100021668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021668);
  }

  return result;
}

uint64_t sub_10000A524(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  if (qword_100020F28 != -1)
  {
    swift_once();
  }

  v6 = qword_1000223E0;
  result = os_log_type_enabled(qword_1000223E0, v5);
  if (result)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100009EA4(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v6, v5, "%s", v8, 0xCu);
    sub_100008474(v9);
  }

  return result;
}

uint64_t sub_10000A644(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = static os_log_type_t.debug.getter();
  if (qword_100020F28 != -1)
  {
    swift_once();
  }

  v11 = qword_1000223E0;
  result = os_log_type_enabled(qword_1000223E0, v10);
  if (result)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_100009EA4(a3, a4, &v14);
    *(v13 + 12) = 2048;
    *(v13 + 14) = a5;
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_100009EA4(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, v11, v10, "%s:%ld  %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  return result;
}

__n128 sub_10000A7B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000A7C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10000A810(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10000A888@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002EFC(&qword_1000216C8, &qword_100016E10);
  __chkstk_darwin(v2);
  v4 = (&v28 - v3);
  v5 = sub_100002EFC(&qword_1000216D0, &qword_100016E18);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = dispatch thunk of CAFCarManagerObservable.currentCar.getter();
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = dispatch thunk of CARSessionStatusObservable.session.getter();
  if (!v10)
  {
LABEL_6:

LABEL_7:
    *v4 = swift_getKeyPath();
    sub_100002EFC(&qword_1000212D8, &qword_100016E20);
    swift_storeEnumTagMultiPayload();
    v26 = (v4 + *(v2 + 36));
    *v26 = sub_10000AC9C;
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = 0;
    sub_100009948(v4, v7, &qword_1000216C8, &qword_100016E10);
    swift_storeEnumTagMultiPayload();
    sub_100002EFC(&qword_1000216D8, &qword_100016E28);
    sub_10001111C();
    sub_1000112B4();
    _ConditionalContent<>.init(storage:)();
    v23 = v4;
    v24 = &qword_1000216C8;
    v25 = &qword_100016E10;
    return sub_1000099B0(v23, v24, v25);
  }

  v11 = v10;
  v12 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (!v12)
  {

    v9 = v11;
    goto LABEL_6;
  }

  v13 = v12;
  sub_100002F44(0, &qword_100021720, CAFCar_ptr);
  v30 = a1;
  sub_1000084C0(&qword_100021728, &qword_100021720, CAFCar_ptr, &protocol conformance descriptor for CAFCar);
  CAFObserved<>.observable.getter();
  type metadata accessor for CAFCarObservable();
  sub_1000110D4(&qword_100021730, &type metadata accessor for CAFCarObservable, &protocol conformance descriptor for CAFCarObservable);
  v29 = v13;
  v14 = ObservedObject.init(wrappedValue:)();
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v18 = [v11 configuration];
  v19 = [v18 rightHandDrive];

  *&v32 = v14;
  *(&v32 + 1) = v16;
  v20 = v29;
  *&v33 = v29;
  *(&v33 + 1) = sub_10000AC80;
  v34 = 0uLL;
  *&v35 = 0;
  *(&v35 + 1) = KeyPath;
  v36 = v19;
  v7[64] = v19;
  v21 = v35;
  *(v7 + 2) = v34;
  *(v7 + 3) = v21;
  v22 = v33;
  *v7 = v32;
  *(v7 + 1) = v22;
  swift_storeEnumTagMultiPayload();
  sub_100009948(&v32, v31, &qword_1000216D8, &qword_100016E28);
  sub_100009948(&v32, v31, &qword_1000216D8, &qword_100016E28);
  sub_100002EFC(&qword_1000216D8, &qword_100016E28);
  sub_10001111C();
  sub_1000112B4();
  _ConditionalContent<>.init(storage:)();

  sub_1000099B0(&v32, &qword_1000216D8, &qword_100016E28);
  v23 = &v32;
  v24 = &qword_1000216D8;
  v25 = &qword_100016E28;
  return sub_1000099B0(v23, v24, v25);
}

uint64_t sub_10000ACF8(uint64_t a1)
{
  v2 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  sub_1000032D4();
  EnvironmentValues.subscript.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_10000AE3C@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = sub_100002EFC(&qword_1000211F0, &qword_100016968);
  __chkstk_darwin(v1 - 8);
  v19[0] = v19 - v2;
  v3 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAUAppUIConfiguration.Mode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CAUAppUIConfiguration.App();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (v15)
  {
    v16 = v15;
    (*(v12 + 104))(v14, enum case for CAUAppUIConfiguration.App.closures(_:), v11);
    (*(v8 + 104))(v10, enum case for CAUAppUIConfiguration.Mode.popover(_:), v7);
    dispatch thunk of CAUAssetLibrary.configuration(app:mode:)();

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v4 + 104))(v6, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v3);
    v18 = type metadata accessor for CAUWidgetContentMargins();
    (*(*(v18 - 8) + 56))(v19[0], 1, 1, v18);
    sub_100010EB4(_swiftEmptyArrayStorage);
    return CAUAppUIConfiguration.Configuration.init(layoutStyle:padding:elementData:)();
  }
}

uint64_t sub_10000B16C(id *a1)
{
  if (*a1)
  {
    v1 = *a1;
    _StringGuts.grow(_:)(47);

    v2 = [v1 description];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    String.append(_:)(v6);

    sub_10000A50C(0xD00000000000002DLL, 0x80000001000153C0);
  }

  else
  {

    return sub_10000A50C(0xD00000000000001CLL, 0x80000001000153A0);
  }
}

uint64_t sub_10000B288(uint64_t *a1)
{
  v1 = *a1;
  _StringGuts.grow(_:)(28);

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 544501614;
  }

  if (v1)
  {
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 0x6C62616C69617661;
  v5._object = 0xEA00000000002E65;
  String.append(_:)(v5);
  sub_10000A50C(0xD000000000000010, 0x8000000100015380);
}

uint64_t sub_10000B35C@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v3;
  v4 = sub_100002EFC(&qword_100021670, &qword_100016D68);
  sub_10000A888(a2 + *(v4 + 44));
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(sub_100002EFC(&qword_100021678, &qword_100016DA0) + 36));
  v7 = *(sub_100002EFC(&qword_100021680, &qword_100016DA8) + 28);
  v8 = enum case for LayoutDirection.leftToRight(_:);
  v9 = type metadata accessor for LayoutDirection();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = KeyPath;
  v10 = swift_getKeyPath();
  v11 = (a2 + *(sub_100002EFC(&qword_100021688, &qword_100016DD8) + 36));
  v12 = sub_100002EFC(&qword_100021690, &qword_100016DE0);
  sub_10000AE3C(v11 + *(v12 + 28));
  *v11 = v10;
  v13 = sub_100002EFC(&qword_100021698, &qword_100016DE8);
  dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
  v14 = (a2 + *(v13 + 56));
  *v14 = sub_10000B16C;
  v14[1] = 0;
  v15 = sub_100002EFC(&qword_1000216A0, &unk_100016DF0);
  result = dispatch thunk of CAUAssetLibraryManager.$assetLibrary.getter();
  v17 = (a2 + *(v15 + 56));
  *v17 = sub_10000B288;
  v17[1] = 0;
  return result;
}

uint64_t sub_10000B5E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v27[0] = a1;
  v27[1] = a4;
  v6 = sub_100002EFC(&qword_1000216C8, &qword_100016E10);
  __chkstk_darwin(v6);
  v8 = (v27 - v7);
  v9 = sub_100002EFC(&qword_1000217D0, &qword_100016F68);
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  v12 = sub_100002EFC(&qword_1000217D8, &qword_100016F70);
  __chkstk_darwin(v12);
  v14 = (v27 - v13);
  v15 = CAFCarObservable.observed.getter();
  v16 = [v15 isConfigured];

  if (v16)
  {
    v17 = CAFCarObservable.observed.getter();
    sub_10000B8E4(v17, a3, v14);
    v18 = (v14 + *(v12 + 36));
    *v18 = sub_10000BDF8;
    v18[1] = 0;
    v18[2] = 0;
    v18[3] = 0;
    sub_100009948(v14, v11, &qword_1000217D8, &qword_100016F70);
    swift_storeEnumTagMultiPayload();
    sub_100011758();
    sub_1000112B4();
    _ConditionalContent<>.init(storage:)();
    v19 = v14;
    v20 = &qword_1000217D8;
    v21 = &qword_100016F70;
  }

  else
  {
    *v8 = swift_getKeyPath();
    sub_100002EFC(&qword_1000212D8, &qword_100016E20);
    swift_storeEnumTagMultiPayload();
    v22 = swift_allocObject();
    *(v22 + 2) = v27[0];
    *(v22 + 3) = a2;
    *(v22 + 4) = a3;
    v23 = (v8 + *(v6 + 36));
    *v23 = sub_10001174C;
    v23[1] = v22;
    v23[2] = 0;
    v23[3] = 0;
    sub_100009948(v8, v11, &qword_1000216C8, &qword_100016E10);
    swift_storeEnumTagMultiPayload();
    sub_100011758();
    sub_1000112B4();
    v24 = a2;
    v25 = a3;
    _ConditionalContent<>.init(storage:)();
    v19 = v8;
    v20 = &qword_1000216C8;
    v21 = &qword_100016E10;
  }

  return sub_1000099B0(v19, v20, v21);
}

uint64_t sub_10000B8E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = sub_100002EFC(&qword_1000217F0, &qword_100016F78);
  v6 = __chkstk_darwin(v38);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v35 - v8;
  v9 = type metadata accessor for CAUResource();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v41 = &v35 - v14;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  *a3 = swift_getKeyPath();
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for CarView(0);
  v18 = a3 + v17[5];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = a3 + v17[6];
  v43 = 0;
  State.init(wrappedValue:)();
  v20 = v45;
  *v19 = v44;
  *(v19 + 1) = v20;
  *(a3 + v17[11]) = a1;
  v21 = v17[9];
  v42 = a3;
  *(a3 + v21) = a2;
  v22 = *(v10 + 104);
  v22(v16, enum case for CAUResource.topDownExteriorClosuresOverlay(_:), v9);
  v23 = a2;
  v24 = CAUAssetLibrary.asset(for:)();
  v25 = *(v10 + 8);
  v25(v16, v9);
  v26 = v41;
  *(v42 + v17[7]) = v24;
  v22(v26, enum case for CAUResource.topDownInterior(_:), v9);
  v36 = v24;
  v35 = v24;
  v27 = CAUAssetLibrary.asset(for:)();
  v25(v41, v9);
  *(v42 + v17[8]) = v27;
  v28 = v37;
  v22(v37, enum case for CAUResource.vehicleLayout(_:), v9);
  sub_100011834();
  v41 = v27;
  v29 = v39;
  dispatch thunk of CAUAssetLibrary.asset<A>(for:)();

  v25(v28, v9);
  v30 = v17[10];
  sub_1000098E0(v29, v42 + v30, &qword_1000217F0, &qword_100016F78);
  if (v36)
  {

    if (v27)
    {
LABEL_3:

      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A44C(0xD000000000000028, 0x8000000100015460);
    if (v27)
    {
      goto LABEL_3;
    }
  }

  sub_10000A44C(0xD000000000000028, 0x8000000100015490);
LABEL_6:
  v31 = v40;
  sub_100009948(v42 + v30, v40, &qword_1000217F0, &qword_100016F78);
  v32 = type metadata accessor for CAUVehicleLayout();
  v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
  result = sub_1000099B0(v31, &qword_1000217F0, &qword_100016F78);
  if (v33 == 1)
  {
    return sub_10000A44C(0xD00000000000003ELL, 0x80000001000154C0);
  }

  return result;
}

uint64_t sub_10000BE14()
{
  _StringGuts.grow(_:)(61);
  v0._object = 0x8000000100015500;
  v0._countAndFlagsBits = 0xD000000000000030;
  String.append(_:)(v0);
  v1 = CAFCarObservable.observed.getter();
  v2 = [v1 isConfigured];

  if (v2)
  {
    v3 = 544501614;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 0x72756769666E6F63;
  v6._object = 0xEB000000002E6465;
  String.append(_:)(v6);
  sub_10000A50C(0, 0xE000000000000000);
}

uint64_t sub_10000BF1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002EFC(&qword_1000216C8, &qword_100016E10);
  __chkstk_darwin(v4);
  v6 = (v22 - v5);
  v7 = sub_100002EFC(&qword_100021930, &qword_100017010);
  __chkstk_darwin(v7);
  v9 = (v22 - v8);
  v10 = type metadata accessor for CarView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + *(__chkstk_darwin(v10 - 8) + 36));
  if (v14)
  {
    sub_1000120A4(v2, v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22[2] = v4;
    v22[3] = a1;
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v22[1] = v7;
    v16 = (v15 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    sub_10001260C(v13, v17 + v15, type metadata accessor for CarView);
    *(v17 + v16) = v14;
    sub_1000120A4(v2, v13);
    v18 = swift_allocObject();
    sub_10001260C(v13, v18 + v15, type metadata accessor for CarView);
    *v9 = sub_100012314;
    v9[1] = v17;
    v9[2] = sub_1000125AC;
    v9[3] = v18;
    v9[4] = 0;
    v9[5] = 0;
    swift_storeEnumTagMultiPayload();
    v19 = v14;
    sub_100002EFC(&qword_100021938, &qword_100017018);
    sub_100011FEC();
    sub_1000112B4();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v6 = swift_getKeyPath();
    sub_100002EFC(&qword_1000212D8, &qword_100016E20);
    swift_storeEnumTagMultiPayload();
    v21 = (v6 + *(v4 + 36));
    *v21 = sub_10000E0C4;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = 0;
    sub_100009948(v6, v9, &qword_1000216C8, &qword_100016E10);
    swift_storeEnumTagMultiPayload();
    sub_100002EFC(&qword_100021938, &qword_100017018);
    sub_100011FEC();
    sub_1000112B4();
    _ConditionalContent<>.init(storage:)();
    return sub_1000099B0(v6, &qword_1000216C8, &qword_100016E10);
  }
}

double sub_10000C284@<D0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = static Alignment.center.getter();
  a4[1] = v7;
  v8 = sub_100002EFC(&qword_100021960, &qword_100017030);
  sub_10000C354(a2, a3, (a4 + *(v8 + 44)));
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = (a4 + *(sub_100002EFC(&qword_100021968, &qword_100017038) + 36));
  *v9 = v11;
  v9[1] = v12;
  result = *&v13;
  v9[2] = v13;
  return result;
}

uint64_t sub_10000C354@<X0>(uint64_t a1@<X0>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a4;
  v6 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C7A0();
  v37 = a3;
  UIImage.fit(to:)();
  v34 = v42;
  v35 = v41;
  v17 = v43;
  sub_10000ECB8(&qword_1000212D8, &qword_100016E20, &type metadata accessor for CAUAppUIConfiguration.Configuration, v16);
  CAUAppUIConfiguration.Configuration.layoutStyle.getter();
  (*(v14 + 8))(v16, v13);
  (*(v7 + 104))(v10, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v6);
  sub_1000110D4(&qword_1000214E8, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle, &protocol conformance descriptor for CAUAppUIConfiguration.LayoutStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v41 == v40)
  {
    v18 = *(v7 + 8);
    v18(v10, v6);
    v18(v12, v6);

    v19 = 0.0;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v21 = *(v7 + 8);
    v21(v10, v6);
    v21(v12, v6);

    v19 = 0.0;
    if ((v20 & 1) == 0)
    {
      if (sub_10000EEB8(type metadata accessor for CarView))
      {
        v19 = 1.57079633;
      }

      else
      {
        v19 = -1.57079633;
      }
    }
  }

  v22 = static Alignment.center.getter();
  v23 = v36;
  *v36 = v22;
  v23[1] = v24;
  v25 = *(sub_100002EFC(&qword_100021970, &qword_100017040) + 44);
  v38[0] = v35;
  v38[1] = v34;
  v39 = v17;
  sub_10000CAAC(v37, a1, v38, (v23 + v25));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = (v23 + *(sub_100002EFC(&qword_100021978, &qword_100017048) + 36));
  v27 = v42;
  *v26 = v41;
  v26[1] = v27;
  v26[2] = v43;
  static UnitPoint.center.getter();
  v29 = v28;
  v31 = v30;
  result = sub_100002EFC(&qword_100021980, &qword_100017050);
  v33 = v23 + *(result + 36);
  *v33 = v19;
  *(v33 + 1) = v29;
  *(v33 + 2) = v31;
  return result;
}

double sub_10000C7A0()
{
  v0 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v18 - v5;
  v7 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ECB8(&qword_1000212D8, &qword_100016E20, &type metadata accessor for CAUAppUIConfiguration.Configuration, v10);
  CAUAppUIConfiguration.Configuration.layoutStyle.getter();
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v4, enum case for CAUAppUIConfiguration.LayoutStyle.landscape(_:), v0);
  sub_1000110D4(&qword_1000214E8, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle, &protocol conformance descriptor for CAUAppUIConfiguration.LayoutStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v18[2] == v18[0] && v18[3] == v18[1])
  {
    v11 = *(v1 + 8);
    v11(v4, v0);
    v11(v6, v0);
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = *(v1 + 8);
    v13(v4, v0);
    v13(v6, v0);

    if ((v12 & 1) == 0)
    {
      GeometryProxy.size.getter();
      return v16;
    }
  }

  GeometryProxy.size.getter();
  v15 = v14;
  GeometryProxy.size.getter();
  return v15;
}

uint64_t sub_10000CAAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t *a4@<X8>)
{
  v106 = a2;
  v104 = a4;
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a3 + 2);
  v8 = *(a3 + 3);
  v9 = a3[4];
  v10 = type metadata accessor for SeatBeltsView(0);
  v102 = *(v10 - 8);
  v103 = v10;
  __chkstk_darwin(v10);
  v81 = (&v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100002EFC(&qword_1000217F0, &qword_100016F78);
  __chkstk_darwin(v12 - 8);
  v97 = &v79 - v13;
  v83 = type metadata accessor for CAUVehicleLayout();
  v82 = *(v83 - 8);
  v14 = __chkstk_darwin(v83);
  v80 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v79 - v16;
  v17 = sub_100002EFC(&qword_100021988, &qword_100017058);
  v18 = __chkstk_darwin(v17 - 8);
  v101 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v100 = &v79 - v20;
  v105 = type metadata accessor for CarView(0);
  v88 = *(v105 - 1);
  __chkstk_darwin(v105);
  v89 = v21;
  v90 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100002EFC(&qword_100021990, &qword_100017060);
  v93 = *(v22 - 8);
  v94 = v22;
  __chkstk_darwin(v22);
  v91 = &v79 - v23;
  v24 = sub_100002EFC(&qword_100021998, &qword_100017068);
  v25 = __chkstk_darwin(v24 - 8);
  v99 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v98 = &v79 - v27;
  v28 = type metadata accessor for Image.Interpolation();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Image.ResizingMode();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  Image.init(uiImage:)();
  v37 = enum case for Image.ResizingMode.stretch(_:);
  v87 = *(v33 + 104);
  v87(v35, enum case for Image.ResizingMode.stretch(_:), v32);
  Image.resizable(capInsets:resizingMode:)();

  v86 = *(v33 + 8);
  v86(v35, v32);
  v38 = *(v29 + 104);
  v85 = enum case for Image.Interpolation.high(_:);
  v84 = v38;
  v38(v31);
  v96 = Image.interpolation(_:)();

  v39 = *(v29 + 8);
  v95 = v28;
  v92 = v29 + 8;
  v39(v31, v28);
  v40 = *(v106 + v105[8]);
  if (v40)
  {
    v41 = v39;
    v42 = v40;
    Image.init(uiImage:)();
    v87(v35, v37, v32);
    Image.resizable(capInsets:resizingMode:)();

    v86(v35, v32);
    v43 = v95;
    v84(v31, v85, v95);
    v44 = Image.interpolation(_:)();

    v41(v31, v43);
    v95 = v44;

    LODWORD(v92) = 1;
  }

  else
  {
    v95 = 0;
    LODWORD(v92) = 0;
  }

  v45 = v106;
  v46 = *(v106 + v105[11]);
  v47 = [v46 closure];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 closureStates];
    sub_100002F44(0, &qword_1000219A8, CAFClosureState_ptr);
    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v107 = v50;
    v51 = v90;
    sub_1000120A4(v45, v90);
    v52 = (*(v88 + 80) + 56) & ~*(v88 + 80);
    v53 = swift_allocObject();
    v53[2] = v5;
    v53[3] = v6;
    *(v53 + 4) = v7;
    *(v53 + 5) = v8;
    v53[6] = v9;
    sub_10001260C(v51, v53 + v52, type metadata accessor for CarView);
    sub_100002EFC(&qword_1000219B0, &qword_100017078);
    type metadata accessor for UUID();
    type metadata accessor for ClosureView(0);
    sub_100009D48(&qword_1000219B8, &qword_1000219B0, &qword_100017078, &protocol conformance descriptor for [A]);
    sub_1000110D4(&qword_1000219C0, type metadata accessor for ClosureView, &unk_1000170A8);
    sub_1000084C0(&qword_1000219C8, &qword_1000219A8, CAFClosureState_ptr, &protocol conformance descriptor for CAFService);
    v54 = v91;
    ForEach<>.init(_:content:)();

    v56 = v93;
    v55 = v94;
    v57 = v98;
    (*(v93 + 32))(v98, v54, v94);
    v58 = 0;
    v59 = v100;
    v60 = v97;
  }

  else
  {
    sub_10000A50C(0xD00000000000001DLL, 0x8000000100015540);
    v58 = 1;
    v59 = v100;
    v60 = v97;
    v57 = v98;
    v56 = v93;
    v55 = v94;
  }

  (*(v56 + 56))(v57, v58, 1, v55);
  v61 = [v46 seat];
  if (!v61)
  {
    sub_10000A50C(0xD00000000000001ALL, 0x8000000100015560);
    goto LABEL_12;
  }

  v62 = v61;
  v63 = [v61 seatBelts];

  if (!v63)
  {
LABEL_12:
    v67 = 1;
    goto LABEL_14;
  }

  sub_100002F44(0, &qword_1000212E0, CAFSeatBelt_ptr);
  v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100009948(v106 + v105[10], v60, &qword_1000217F0, &qword_100016F78);
  v65 = v82;
  v66 = v83;
  if ((*(v82 + 48))(v60, 1, v83) == 1)
  {

    sub_1000099B0(v60, &qword_1000217F0, &qword_100016F78);
    v67 = 1;
  }

  else
  {
    v68 = v79;
    (*(v65 + 32))(v79, v60, v66);
    v69 = v80;
    (*(v65 + 16))(v80, v68, v66);
    v70 = v81;
    sub_100003B64(v64, v69, v81, v5, v6, v9);
    (*(v65 + 8))(v68, v66);
    sub_10001260C(v70, v59, type metadata accessor for SeatBeltsView);
    v67 = 0;
  }

LABEL_14:
  (*(v102 + 56))(v59, v67, 1, v103);
  v71 = v99;
  sub_100009948(v57, v99, &qword_100021998, &qword_100017068);
  v72 = v59;
  v73 = v59;
  v74 = v101;
  sub_100009948(v72, v101, &qword_100021988, &qword_100017058);
  v75 = v104;
  v76 = v95;
  *v104 = v96;
  v75[1] = 0;
  *(v75 + 8) = 1;
  v75[3] = v76;
  v75[4] = 0;
  *(v75 + 20) = v92;
  v77 = sub_100002EFC(&qword_1000219A0, &qword_100017070);
  sub_100009948(v71, v75 + *(v77 + 64), &qword_100021998, &qword_100017068);
  sub_100009948(v74, v75 + *(v77 + 80), &qword_100021988, &qword_100017058);

  sub_1000099B0(v73, &qword_100021988, &qword_100017058);
  sub_1000099B0(v57, &qword_100021998, &qword_100017068);
  sub_1000099B0(v74, &qword_100021988, &qword_100017058);
  sub_1000099B0(v71, &qword_100021998, &qword_100017068);
}

uint64_t sub_10000D730@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a2;
  v70 = a2[1];
  v71 = v7;
  v8 = *(a2 + 4);
  v65 = type metadata accessor for CAUVehicleLayoutKey();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002EFC(&qword_1000219D0, &qword_100017080);
  __chkstk_darwin(v10 - 8);
  v76 = &v62 - v11;
  v73 = sub_100002EFC(&qword_1000217F0, &qword_100016F78);
  v12 = __chkstk_darwin(v73);
  v74 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v75 = &v62 - v14;
  v15 = type metadata accessor for CAUResource();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v69 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v62 - v20;
  __chkstk_darwin(v19);
  v23 = &v62 - v22;
  v24 = *a1;
  v25 = *(a3 + *(type metadata accessor for CarView(0) + 36));
  *a4 = swift_getKeyPath();
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  v81 = a4;
  swift_storeEnumTagMultiPayload();
  v68 = sub_100002EFC(&qword_1000219D8, &qword_100017088);
  v26 = *(v68 + 48);
  v79 = sub_100002F44(0, &qword_1000219A8, CAFClosureState_ptr);
  v80 = v24;
  CAFPositionedRequired.layoutKey.getter();
  v27 = enum case for CAUAsset.ClosureMask.State.open(_:);
  v28 = type metadata accessor for CAUAsset.ClosureMask.State();
  v29 = *(v28 - 8);
  v30 = *(v29 + 104);
  v66 = v29 + 104;
  v67 = v30;
  v30(&v23[v26], v27, v28);
  v31 = enum case for CAUResource.closureMask(_:);
  v77 = *(v16 + 104);
  v77(v23, enum case for CAUResource.closureMask(_:), v15);
  v78 = v25;
  v32 = CAUAssetLibrary.asset(for:)();
  v33 = *(v16 + 8);
  v72 = v16 + 8;
  v34 = v33;
  v33(v23, v15);
  v35 = type metadata accessor for ClosureView(0);
  *(v81 + v35[6]) = v32;
  v36 = *(v68 + 48);
  CAFPositionedRequired.layoutKey.getter();
  v67(&v21[v36], enum case for CAUAsset.ClosureMask.State.closed(_:), v28);
  v77(v21, v31, v15);
  v37 = CAUAssetLibrary.asset(for:)();
  v34(v21, v15);
  v38 = v81;
  *(v81 + v35[7]) = v37;
  v39 = v38 + v35[8];
  v40 = v70;
  *v39 = v71;
  *(v39 + 1) = v40;
  *(v39 + 4) = v8;
  sub_1000084C0(&qword_1000219E0, &qword_1000219A8, CAFClosureState_ptr, &protocol conformance descriptor for CAFClosureState);
  CAFObserved<>.observable.getter();
  v41 = (v38 + v35[5]);
  type metadata accessor for CAFClosureStateObservable();
  sub_1000110D4(&qword_1000219E8, &type metadata accessor for CAFClosureStateObservable, &protocol conformance descriptor for CAFClosureStateObservable);
  *v41 = ObservedObject.init(wrappedValue:)();
  v41[1] = v42;
  v43 = v69;
  v77(v69, enum case for CAUResource.vehicleLayout(_:), v15);
  sub_100011834();
  v44 = v75;
  dispatch thunk of CAUAssetLibrary.asset<A>(for:)();
  v34(v43, v15);
  v45 = v74;
  sub_100009948(v44, v74, &qword_1000217F0, &qword_100016F78);
  v46 = type metadata accessor for CAUVehicleLayout();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_1000099B0(v44, &qword_1000217F0, &qword_100016F78);
    v48 = v45;
LABEL_7:
    sub_1000099B0(v48, &qword_1000217F0, &qword_100016F78);
    v60 = type metadata accessor for CAUVehicleLayoutInfo();
    v59 = v76;
    (*(*(v60 - 8) + 56))(v76, 1, 1, v60);
    return sub_1000098E0(v59, v81 + v35[9], &qword_1000219D0, &qword_100017080);
  }

  v49 = CAUVehicleLayout.infos.getter();
  (*(v47 + 8))(v45, v46);
  v50 = v63;
  CAFPositionedRequired.layoutKey.getter();
  if (!*(v49 + 16) || (v51 = sub_100010B8C(v50), (v52 & 1) == 0))
  {

    (*(v64 + 8))(v50, v65);
    v48 = v44;
    goto LABEL_7;
  }

  v53 = v51;
  v54 = *(v49 + 56);
  v55 = type metadata accessor for CAUVehicleLayoutInfo();
  v56 = *(v55 - 8);
  v57 = v56;
  v58 = v54 + *(v56 + 72) * v53;
  v59 = v76;
  (*(v56 + 16))(v76, v58, v55);
  (*(v64 + 8))(v50, v65);
  sub_1000099B0(v44, &qword_1000217F0, &qword_100016F78);

  (*(v57 + 56))(v59, 0, 1, v55);
  return sub_1000098E0(v59, v81 + v35[9], &qword_1000219D0, &qword_100017080);
}

void sub_10000DFC8(uint64_t a1)
{
  v2 = type metadata accessor for CarView(0);
  sub_100002EFC(&qword_100021958, &qword_100017028);
  State.wrappedValue.getter();
  if ((v5 & 1) == 0)
  {
    v3 = [*(a1 + *(v2 + 44)) closure];
    if (v3)
    {
      v4 = v3;
      if ([v3 receivedAllValues])
      {
        CAFSignpostEmit_Finalized();

        State.wrappedValue.setter();
      }
    }
  }
}

uint64_t sub_10000E0E4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_100002EFC(&qword_100021AC0, &qword_1000170F8);
  __chkstk_darwin(v32);
  v3 = (v27 - v2);
  v4 = sub_100002EFC(&qword_100021AC8, &qword_100017100);
  __chkstk_darwin(v4);
  v6 = v27 - v5;
  v7 = type metadata accessor for Image.Interpolation();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v29 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Image.ResizingMode();
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ClosureView(0);
  v13 = CAFClosureStateObservable.observed.getter();
  v14 = [v13 latchStateInvalid];

  if (v14)
  {
    *v3 = static Alignment.center.getter();
    v3[1] = v15;
    v16 = sub_100002EFC(&qword_100021AF8, &qword_100017118);
    sub_10000E5D8(v1, (v3 + *(v16 + 44)));
    sub_100009948(v3, v6, &qword_100021AC0, &qword_1000170F8);
    swift_storeEnumTagMultiPayload();
    sub_100002EFC(&qword_100021AD0, &qword_100017108);
    sub_10001362C(&qword_100021AD8, &qword_100021AD0, &qword_100017108, sub_100012E44);
    sub_100009D48(&qword_100021AF0, &qword_100021AC0, &qword_1000170F8, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000099B0(v3, &qword_100021AC0, &qword_1000170F8);
  }

  else
  {
    v27[1] = v4;
    v18 = dispatch thunk of CAFClosureStateObservable.latchState.getter();
    v19 = 28;
    if (v18)
    {
      v19 = 24;
    }

    v20 = *(v1 + *(v12 + v19));
    if (v20)
    {
      v21 = v20;
      Image.init(uiImage:)();
      v22 = v28;
      (*(v28 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v9);
      Image.resizable(capInsets:resizingMode:)();

      (*(v22 + 8))(v11, v9);
      v24 = v29;
      v23 = v30;
      v25 = v31;
      (*(v30 + 104))(v29, enum case for Image.Interpolation.high(_:), v31);
      v26 = Image.interpolation(_:)();

      (*(v23 + 8))(v24, v25);

      LOWORD(v20) = 1;
    }

    else
    {
      v26 = 0;
    }

    *v6 = v26;
    *(v6 + 1) = 0;
    *(v6 + 8) = v20;
    swift_storeEnumTagMultiPayload();
    sub_100002EFC(&qword_100021AD0, &qword_100017108);
    sub_10001362C(&qword_100021AD8, &qword_100021AD0, &qword_100017108, sub_100012E44);
    sub_100009D48(&qword_100021AF0, &qword_100021AC0, &qword_1000170F8, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10000E5D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for DoorLatchStateInvalidView(0);
  v57 = *(v3 - 1);
  __chkstk_darwin(v3);
  v5 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100002EFC(&qword_1000219D0, &qword_100017080);
  __chkstk_darwin(v6 - 8);
  *&v55 = &v47 - v7;
  v8 = type metadata accessor for CAUVehicleLayoutInfo();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v52 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100002EFC(&qword_100021B00, &qword_100017120);
  v12 = __chkstk_darwin(v11 - 8);
  v56 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v47 - v14;
  v54 = type metadata accessor for Image.Interpolation();
  *&v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Image.ResizingMode();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ClosureView(0);
  v23 = *(a1 + *(v22 + 28));
  if (v23)
  {
    v49 = v22;
    v24 = v23;
    v51 = v3;
    v48 = v24;
    Image.init(uiImage:)();
    (*(v19 + 104))(v21, enum case for Image.ResizingMode.stretch(_:), v18);
    Image.resizable(capInsets:resizingMode:)();
    v50 = v15;

    (*(v19 + 8))(v21, v18);
    v27 = v53;
    v25 = v54;
    (*(v53 + 104))(v17, enum case for Image.Interpolation.high(_:), v54);
    v26 = Image.interpolation(_:)();

    v15 = v50;
    v3 = v51;

    v27[1](v17, v25);

    v22 = v49;
    LODWORD(v27) = 1;
  }

  else
  {
    v26 = 0;
    LODWORD(v27) = 0;
  }

  v28 = v22;
  v29 = v55;
  sub_100009948(a1 + *(v22 + 36), v55, &qword_1000219D0, &qword_100017080);
  if ((*(v9 + 48))(v29, 1, v8) == 1)
  {
    sub_1000099B0(v29, &qword_1000219D0, &qword_100017080);
    v30 = 1;
  }

  else
  {
    v31 = *(v9 + 32);
    LODWORD(v54) = v27;
    v27 = v52;
    v31(v52, v29, v8);
    v32 = (a1 + *(v28 + 32));
    v33 = *(v32 + 4);
    v34 = v3[8];
    v35 = *(v9 + 16);
    v36 = v32[1];
    v55 = *v32;
    v53 = v36;
    v35(v5 + v34, v27, v8);
    v37 = CAFClosureStateObservable.observed.getter();
    sub_100002F44(0, &qword_1000219A8, CAFClosureState_ptr);
    CAFPositionedRequired.layoutKey.getter();

    v38 = v27;
    LOWORD(v27) = v54;
    (*(v9 + 8))(v38, v8);
    *v5 = swift_getKeyPath();
    sub_100002EFC(&qword_1000212D8, &qword_100016E20);
    swift_storeEnumTagMultiPayload();
    v39 = v5 + v3[5];
    *v39 = swift_getKeyPath();
    v39[8] = 0;
    v40 = v3[6];
    *(v5 + v40) = swift_getKeyPath();
    sub_100002EFC(&qword_100021B10, &qword_100017160);
    swift_storeEnumTagMultiPayload();
    v41 = v5 + v3[7];
    v42 = v53;
    *v41 = v55;
    *(v41 + 1) = v42;
    *(v41 + 4) = v33;
    sub_10001260C(v5, v15, type metadata accessor for DoorLatchStateInvalidView);
    v30 = 0;
  }

  (*(v57 + 56))(v15, v30, 1, v3);
  v43 = v56;
  sub_100009948(v15, v56, &qword_100021B00, &qword_100017120);
  v44 = v58;
  *v58 = v26;
  v44[1] = 0;
  *(v44 + 8) = v27;
  v45 = sub_100002EFC(&qword_100021B08, &qword_100017128);
  sub_100009948(v43, v44 + *(v45 + 48), &qword_100021B00, &qword_100017120);
  sub_1000099B0(v15, &qword_100021B00, &qword_100017120);
  sub_1000099B0(v43, &qword_100021B00, &qword_100017120);
}

uint64_t sub_10000ECB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002EFC(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100009948(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10000EEB8(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1(0) + 20);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100012308(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_10000F01C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002EFC(&qword_100021560, &qword_100016B68);
  __chkstk_darwin(v3 - 8);
  v5 = v69 - v4;
  v6 = sub_100002EFC(&qword_100021BD8, &qword_1000171F0);
  __chkstk_darwin(v6 - 8);
  v84 = v69 - v7;
  v8 = sub_100002EFC(&qword_100021BE0, &qword_1000171F8);
  v86 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v69 - v9;
  v11 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = __chkstk_darwin(v11);
  v85 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v80 = v69 - v14;
  v15 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v78 = *(v15 - 8);
  v79 = v15;
  __chkstk_darwin(v15);
  v17 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ColorScheme();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v69 - v23;
  v25 = sub_10000F990();
  if (v27)
  {
    v28 = *(v86 + 56);

    return v28(a1, 1, 1, v8);
  }

  else
  {
    v72 = v25;
    v73 = v26;
    v74 = v5;
    v75 = v10;
    v76 = v8;
    v77 = a1;
    v30 = *(type metadata accessor for DoorLatchStateInvalidView(0) + 24);
    v83 = v1;
    v69[1] = v30;
    sub_10000ECB8(&qword_100021B10, &qword_100017160, &type metadata accessor for ColorScheme, v24);
    v31 = enum case for ColorScheme.dark(_:);
    v32 = *(v19 + 104);
    v32(v22, enum case for ColorScheme.dark(_:), v18);
    v33 = static ColorScheme.== infix(_:_:)();
    v34 = *(v19 + 8);
    v34(v22, v18);
    v34(v24, v18);
    if (v33)
    {
      v35 = static Color.black.getter();
    }

    else
    {
      v35 = static Color.white.getter();
    }

    v71 = v35;
    v70 = static Color.blue.getter();
    sub_10000ECB8(&qword_100021B10, &qword_100017160, &type metadata accessor for ColorScheme, v24);
    v32(v22, v31, v18);
    v36 = static ColorScheme.== infix(_:_:)();
    v34(v22, v18);
    v34(v24, v18);
    if (v36)
    {
      v37 = static Color.white.getter();
    }

    else
    {
      v37 = static Color.black.getter();
    }

    v38 = v37;
    v39 = v75;
    v41 = v81;
    v40 = v82;
    v42 = v80;
    sub_10000ECB8(&qword_1000212D8, &qword_100016E20, &type metadata accessor for CAUAppUIConfiguration.Configuration, v17);
    CAUAppUIConfiguration.Configuration.layoutStyle.getter();
    (*(v78 + 8))(v17, v79);
    (*(v41 + 104))(v85, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v40);
    sub_1000110D4(&qword_1000214E8, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle, &protocol conformance descriptor for CAUAppUIConfiguration.LayoutStyle);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v89 == v87 && v90 == v88)
    {
      v43 = *(v41 + 8);
      v43(v85, v40);
      v43(v42, v40);

      v44 = 0.0;
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v46 = *(v41 + 8);
      v46(v85, v40);
      v46(v42, v40);

      v44 = 0.0;
      if ((v45 & 1) == 0)
      {
        if (sub_10000EEB8(type metadata accessor for DoorLatchStateInvalidView))
        {
          v44 = -1.57079633;
        }

        else
        {
          v44 = 1.57079633;
        }
      }
    }

    Image.init(systemName:)();
    v47 = v84;
    static SymbolRenderingMode.palette.getter();
    v48 = type metadata accessor for SymbolRenderingMode();
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    v49 = Image.symbolRenderingMode(_:)();

    sub_1000099B0(v47, &qword_100021BD8, &qword_1000171F0);
    v50 = v71;

    v51 = v70;

    static Font.Weight.medium.getter();
    v52 = type metadata accessor for Font.Design();
    v53 = v74;
    (*(*(v52 - 8) + 56))(v74, 1, 1, v52);
    v54 = static Font.system(size:weight:design:)();
    sub_1000099B0(v53, &qword_100021560, &qword_100016B68);
    KeyPath = swift_getKeyPath();
    v56 = (v39 + *(sub_100002EFC(&qword_100021BE8, &qword_100017230) + 36));
    v57 = *(sub_100002EFC(&qword_100021BF0, &qword_100017238) + 28);
    v58 = enum case for Image.Scale.large(_:);
    v59 = type metadata accessor for Image.Scale();
    (*(*(v59 - 8) + 104))(v56 + v57, v58, v59);
    *v56 = swift_getKeyPath();
    *v39 = v49;
    v39[1] = v50;
    v39[2] = v51;
    v39[3] = v38;
    v39[4] = KeyPath;
    v39[5] = v54;
    static UnitPoint.center.getter();
    v61 = v60;
    v63 = v62;

    v64 = v39 + *(sub_100002EFC(&qword_100021BF8, &qword_100017270) + 36);
    *v64 = v44;
    *(v64 + 1) = v61;
    *(v64 + 2) = v63;
    v66 = v76;
    v65 = v77;
    v67 = (v39 + *(v76 + 36));
    v68 = v73;
    *v67 = v72;
    v67[1] = v68;
    sub_1000098E0(v39, v65, &qword_100021BE0, &qword_1000171F8);
    return (*(v86 + 56))(v65, 0, 1, v66);
  }
}

uint64_t sub_10000F990()
{
  v1 = v0;
  v63 = type metadata accessor for CAUVehicleLayoutKey.Side();
  v65 = *(v63 - 8);
  v2 = __chkstk_darwin(v63);
  v62 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v61 = &v53 - v4;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v59 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v60 = &v53 - v10;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_100002EFC(&qword_100021C00, &qword_100017278);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = type metadata accessor for CAUBaselineAnchor();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DoorLatchStateInvalidView(0);
  v64 = v20[8];
  CAUVehicleLayoutInfo.baselineAnchor.getter();
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v19, v15, v16);
    v40 = *(v0 + v20[7] + 32) * CAUBaselineAnchor.x.getter() + *(v0 + v20[7]);
    CAUBaselineAnchor.y.getter();
    (*(v17 + 8))(v19, v16);
    return *&v40;
  }

  sub_1000099B0(v15, &qword_100021C00, &qword_100017278);
  v21 = *(v6 + 16);
  v21(v12, v1 + v20[9], v5);
  v22 = (*(v6 + 88))(v12, v5);
  if (v22 == enum case for CAUVehicleLayoutKey.frunk(_:) || v22 == enum case for CAUVehicleLayoutKey.hood(_:) || v22 == enum case for CAUVehicleLayoutKey.trunk(_:))
  {
    v41 = CAUVehicleLayoutInfo.x.getter();
    v40 = *(v1 + v20[7]) + *(v1 + v20[7] + 32) * (vcvtd_n_f64_s32(CAUVehicleLayoutInfo.width.getter(), 1uLL) + v41);
    CAUVehicleLayoutInfo.y.getter();
    v66 = 0;
    return *&v40;
  }

  v56 = v20;
  v57 = v1;
  v23 = v60;
  v21(v60, v12, v5);
  v24 = v61;
  v55 = v5;
  v58 = v12;
  v53 = v21;
  CAUVehicleLayoutKey.side.getter();
  v25 = v65;
  v27 = v62;
  v26 = v63;
  v54 = *(v65 + 104);
  v54(v62, enum case for CAUVehicleLayoutKey.Side.left(_:), v63);
  v28 = static CAUVehicleLayoutKey.Side.== infix(_:_:)();
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v29 = v31;
  v31(v27, v26);
  v31(v24, v26);
  if (v28)
  {
    v32 = v57;
    CAUVehicleLayoutInfo.y.getter();
    CAUVehicleLayoutInfo.height.getter();
    v33 = (v32 + v56[7]);
    v34 = v33[4];
    v35 = CAUVehicleLayoutInfo.x.getter();
    v36 = *(v6 + 8);
    v37 = v23;
    v38 = v55;
    v36(v37, v55);
    v39 = v34 * v35 + *v33;
    v66 = 0;
    v40 = v39 + -36.0;
    v36(v58, v38);
    return *&v40;
  }

  v65 = v30;
  v42 = v23;
  v43 = v55;
  v60 = *(v6 + 8);
  (v60)(v42, v55);
  v44 = v59;
  v53(v59, v58, v43);
  CAUVehicleLayoutKey.side.getter();
  v54(v27, enum case for CAUVehicleLayoutKey.Side.right(_:), v26);
  v45 = static CAUVehicleLayoutKey.Side.== infix(_:_:)();
  v29(v27, v26);
  v29(v24, v26);
  if (v45)
  {
    v46 = v57;
    CAUVehicleLayoutInfo.y.getter();
    CAUVehicleLayoutInfo.height.getter();
    v47 = (v46 + v56[7]);
    v48 = v47[4];
    v49 = CAUVehicleLayoutInfo.x.getter();
    v50 = v60;
    (v60)(v44, v43);
    v51 = v48 * v49 + *v47;
    v66 = 0;
    v40 = v51 + 36.0;
    v50(v58, v43);
    return *&v40;
  }

  (v60)(v44, v43);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1000100CC()
{
  v0 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() imageNamed:v11];

  sub_10000ECB8(&qword_1000212D8, &qword_100016E20, &type metadata accessor for CAUAppUIConfiguration.Configuration, v10);
  CAUAppUIConfiguration.Configuration.layoutStyle.getter();
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v4, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v0);
  sub_1000110D4(&qword_100021838, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle, &protocol conformance descriptor for CAUAppUIConfiguration.LayoutStyle);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v6, v0);
  if ((v13 & 1) == 0)
  {
    if (v12)
    {
      v15 = [v12 CGImage];
      if (v15)
      {
        v16 = v15;
        v17 = [objc_allocWithZone(UIImage) initWithCGImage:v15 scale:2 orientation:1.0];

        return v17;
      }
    }
  }

  return v12;
}

__n128 sub_1000103C4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100002EFC(&qword_100021808, &qword_100016F80);
  __chkstk_darwin(v2 - 8);
  v4 = (v11 - v3);
  *v4 = static Alignment.center.getter();
  v4[1] = v5;
  v6 = sub_100002EFC(&qword_100021810, &qword_100016F88);
  sub_100010520(v4 + *(v6 + 44));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000098E0(v4, a1, &qword_100021808, &qword_100016F80);
  v7 = a1 + *(sub_100002EFC(&qword_100021818, &qword_100016F90) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_100010520@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.Interpolation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002EFC(&qword_100021820, &qword_100016F98);
  v27 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_1000100CC();
  if (v13)
  {
    v14 = v13;
    Image.init(uiImage:)();
    v26 = a1;
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    Image.resizable(capInsets:resizingMode:)();
    v25 = v10;

    (*(v7 + 8))(v9, v6);
    (*(v3 + 104))(v5, enum case for Image.Interpolation.high(_:), v2);
    v15 = Image.interpolation(_:)();

    (*(v3 + 8))(v5, v2);
    v16 = &v12[*(sub_100002EFC(&qword_100021828, &qword_100016FA0) + 36)];
    v31 = xmmword_100016C80;
    v32 = xmmword_100016C90;
    v33 = xmmword_100016CA0;
    v34 = xmmword_100016CB0;
    v35 = xmmword_100016CC0;
    View._colorMatrix(_:)();
    v17 = &v16[*(sub_100002EFC(&qword_100021830, &qword_100016FA8) + 36)];
    *v17 = 0x403E000000000000;
    v17[8] = 0;
    *v12 = v15;
    *(v12 + 1) = 0;
    *(v12 + 8) = 1;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v19 = v25;
    v18 = v26;
    v20 = &v12[*(v25 + 36)];
    v21 = v29;
    *v20 = v28;
    *(v20 + 1) = v21;
    *(v20 + 2) = v30;
    sub_1000098E0(v12, v18, &qword_100021820, &qword_100016F98);
    return (*(v27 + 56))(v18, 0, 1, v19);
  }

  else
  {
    v23 = *(v27 + 56);

    return v23(a1, 1, 1, v10);
  }
}

unint64_t sub_100010934(uint64_t a1)
{
  type metadata accessor for CAUAppUIConfiguration.Element();
  sub_1000110D4(&qword_1000216B8, &type metadata accessor for CAUAppUIConfiguration.Element, &protocol conformance descriptor for CAUAppUIConfiguration.Element);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000109CC(a1, v2);
}

unint64_t sub_1000109CC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for CAUAppUIConfiguration.Element();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1000110D4(&qword_1000216C0, &type metadata accessor for CAUAppUIConfiguration.Element, &protocol conformance descriptor for CAUAppUIConfiguration.Element);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100010B8C(uint64_t a1)
{
  type metadata accessor for CAUVehicleLayoutKey();
  sub_1000110D4(&qword_100021340, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100010C24(a1, v2);
}

unint64_t sub_100010C24(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1000110D4(&qword_1000219F0, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_100010DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_100010EB4(uint64_t a1)
{
  v2 = sub_100002EFC(&qword_1000216A8, &qword_100016E00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002EFC(&qword_1000216B0, &qword_100016E08);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009948(v9, v5, &qword_1000216A8, &qword_100016E00);
      result = sub_100010934(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CAUAppUIConfiguration.Element();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for CAUAppUIConfiguration.ElementData();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1000110D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001111C()
{
  result = qword_1000216E0;
  if (!qword_1000216E0)
  {
    sub_100008504(&qword_1000216D8, &qword_100016E28);
    sub_1000111D4();
    sub_100009D48(&qword_100021700, &qword_100021708, &qword_100016E38, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000216E0);
  }

  return result;
}

unint64_t sub_1000111D4()
{
  result = qword_1000216E8;
  if (!qword_1000216E8)
  {
    sub_100008504(&qword_1000216F0, &qword_100016E30);
    sub_100011260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000216E8);
  }

  return result;
}

unint64_t sub_100011260()
{
  result = qword_1000216F8;
  if (!qword_1000216F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000216F8);
  }

  return result;
}

unint64_t sub_1000112B4()
{
  result = qword_100021710;
  if (!qword_100021710)
  {
    sub_100008504(&qword_1000216C8, &qword_100016E10);
    sub_1000110D4(&qword_100021718, type metadata accessor for RedactedCarView, &unk_100016EC4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021710);
  }

  return result;
}

void *sub_100011390@<X0>(_BYTE *a1@<X8>)
{
  sub_100003328();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100011440(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000114CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100011548(uint64_t a1)
{
  sub_100011DE8(319, &qword_1000213C0, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 sub_1000115E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000115F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100011640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001170C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100011758()
{
  result = qword_1000217E0;
  if (!qword_1000217E0)
  {
    sub_100008504(&qword_1000217D8, &qword_100016F70);
    sub_1000110D4(&qword_1000217E8, type metadata accessor for CarView, &unk_100016FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000217E0);
  }

  return result;
}

unint64_t sub_100011834()
{
  result = qword_1000217F8;
  if (!qword_1000217F8)
  {
    sub_100008504(&qword_1000217F0, &qword_100016F78);
    sub_1000110D4(&qword_100021800, &type metadata accessor for CAUVehicleLayout, &protocol conformance descriptor for CAUVehicleLayout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000217F8);
  }

  return result;
}

uint64_t sub_1000118FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100002EFC(&qword_1000217F0, &qword_100016F78);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100011A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100002EFC(&qword_1000217F0, &qword_100016F78);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100011B88(uint64_t a1)
{
  sub_100011DE8(319, &qword_1000213C0, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100011D2C(319, &qword_1000218A8, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100011D2C(319, &qword_1000218B0, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100011D80(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CAUAssetLibrary();
          if (v5 <= 0x3F)
          {
            sub_100011DE8(319, &unk_1000218C8, &type metadata accessor for CAUVehicleLayout, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_100002F44(319, &qword_100021720, CAFCar_ptr);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100011D2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100011D80(uint64_t a1)
{
  if (!qword_1000218B8)
  {
    sub_100002F44(255, &qword_1000218C0, UIImage_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000218B8);
    }
  }
}

void sub_100011DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100011E90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008504(a2, a3);
    a4();
    sub_1000112B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100011F18()
{
  result = qword_100021920;
  if (!qword_100021920)
  {
    sub_100008504(&qword_100021818, &qword_100016F90);
    sub_100009D48(&qword_100021928, &qword_100021808, &qword_100016F80, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021920);
  }

  return result;
}

unint64_t sub_100011FEC()
{
  result = qword_100021940;
  if (!qword_100021940)
  {
    sub_100008504(&qword_100021938, &qword_100017018);
    sub_100009D48(&qword_100021948, &qword_100021950, &qword_100017020, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021940);
  }

  return result;
}

uint64_t sub_1000120A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012108()
{
  v1 = type metadata accessor for CarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_100012308(*(v5 + v1[5]), *(v5 + v1[5] + 8));

  v7 = v1[10];
  v8 = type metadata accessor for CAUVehicleLayout();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v10 + 8, v2 | 7);
}

uint64_t sub_100012308(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

double sub_100012314@<D0>(uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for CarView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000C284(v2 + v5, v6, a2);
}

uint64_t sub_1000123C0()
{
  v1 = type metadata accessor for CarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_100012308(*(v5 + v1[5]), *(v5 + v1[5] + 8));

  v7 = v1[10];
  v8 = type metadata accessor for CAUVehicleLayout();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1000125AC()
{
  v1 = *(type metadata accessor for CarView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_10000DFC8(v2);
}

uint64_t sub_10001260C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100012674()
{
  v1 = type metadata accessor for CarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_100012308(*(v5 + v1[5]), *(v5 + v1[5] + 8));

  v7 = v1[10];
  v8 = type metadata accessor for CAUVehicleLayout();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100012860@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*(type metadata accessor for CarView(0) - 8) + 80);
  v6 = *(v2 + 48);
  v7 = *(v2 + 32);
  v9[0] = *(v2 + 16);
  v9[1] = v7;
  v10 = v6;
  return sub_10000D730(a1, v9, v2 + ((v5 + 56) & ~v5), a2);
}

uint64_t sub_100012924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100002EFC(&qword_1000219D0, &qword_100017080);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100012A78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100002EFC(&qword_1000219D0, &qword_100017080);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100012BB8(uint64_t a1)
{
  sub_100011DE8(319, &qword_1000213C0, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100012CE4(319);
    if (v2 <= 0x3F)
    {
      sub_100011D80(319);
      if (v3 <= 0x3F)
      {
        sub_100012D78(319);
        if (v4 <= 0x3F)
        {
          sub_100011DE8(319, &unk_100021A70, &type metadata accessor for CAUVehicleLayoutInfo, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100012CE4(uint64_t a1)
{
  if (!qword_100021A60)
  {
    type metadata accessor for CAFClosureStateObservable();
    sub_1000110D4(&qword_1000219E8, &type metadata accessor for CAFClosureStateObservable, &protocol conformance descriptor for CAFClosureStateObservable);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100021A60);
    }
  }
}

void sub_100012D78(uint64_t a1)
{
  if (!qword_100021A68)
  {
    type metadata accessor for CGRect(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100021A68);
    }
  }
}

unint64_t sub_100012E44()
{
  result = qword_100021AE0;
  if (!qword_100021AE0)
  {
    sub_100008504(&qword_100021AE8, &qword_100017110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021AE0);
  }

  return result;
}

uint64_t sub_100012F60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_100002EFC(&qword_100021B18, &qword_100017168);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for CAUVehicleLayoutInfo();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = type metadata accessor for CAUVehicleLayoutKey();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_100013144(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = sub_100002EFC(&qword_100021B18, &qword_100017168);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for CAUVehicleLayoutInfo();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = type metadata accessor for CAUVehicleLayoutKey();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_100013318(uint64_t a1)
{
  sub_100011DE8(319, &qword_1000213C0, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100011D2C(319, &qword_1000218A8, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100011DE8(319, &unk_100021B88, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100012D78(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CAUVehicleLayoutInfo();
          if (v5 <= 0x3F)
          {
            type metadata accessor for CAUVehicleLayoutKey();
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

unint64_t sub_10001347C()
{
  result = qword_100021BC8;
  if (!qword_100021BC8)
  {
    sub_100008504(&qword_100021BD0, ":\x1B");
    sub_10001362C(&qword_100021AD8, &qword_100021AD0, &qword_100017108, sub_100012E44);
    sub_100009D48(&qword_100021AF0, &qword_100021AC0, &qword_1000170F8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021BC8);
  }

  return result;
}

uint64_t sub_10001362C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008504(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000136A8()
{
  result = qword_100021C18;
  if (!qword_100021C18)
  {
    sub_100008504(&qword_100021BE0, &qword_1000171F8);
    sub_100013734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021C18);
  }

  return result;
}

unint64_t sub_100013734()
{
  result = qword_100021C20;
  if (!qword_100021C20)
  {
    sub_100008504(&qword_100021BF8, &qword_100017270);
    sub_1000137C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021C20);
  }

  return result;
}

unint64_t sub_1000137C0()
{
  result = qword_100021C28;
  if (!qword_100021C28)
  {
    sub_100008504(&qword_100021BE8, &qword_100017230);
    sub_100013878();
    sub_100009D48(&qword_100021C60, &qword_100021BF0, &qword_100017238, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021C28);
  }

  return result;
}

unint64_t sub_100013878()
{
  result = qword_100021C30;
  if (!qword_100021C30)
  {
    sub_100008504(&qword_100021C38, &qword_100017288);
    sub_100013930();
    sub_100009D48(&qword_100021540, &qword_100021548, &unk_1000172A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021C30);
  }

  return result;
}

unint64_t sub_100013930()
{
  result = qword_100021C40;
  if (!qword_100021C40)
  {
    sub_100008504(&qword_100021C48, &qword_100017290);
    sub_100009D48(&qword_100021C50, &qword_100021C58, &qword_100017298, &protocol conformance descriptor for _ForegroundStyleModifier3<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021C40);
  }

  return result;
}

uint64_t ForEach<>.init(_:content:)()
{
  return ForEach<>.init(_:content:)();
}

{
  return ForEach<>.init(_:content:)();
}