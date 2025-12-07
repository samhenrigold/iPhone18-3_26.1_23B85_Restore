void sub_100001ACC()
{
  v1 = v0;
  v67.receiver = v0;
  v67.super_class = type metadata accessor for TirePressureViewController();
  objc_msgSendSuper2(&v67, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_scenePresentationTypeObserver];
  sub_100002458(0, &qword_100025340, CAFCarManager_ptr);
  sub_10000234C();
  v3 = v2;
  CAFObserved<>.observable.getter();
  v4 = *&v0[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_sessionStatusObservable];
  type metadata accessor for ScenePresentationTypeObserver(0);
  sub_1000023B4(&qword_100025350, type metadata accessor for ScenePresentationTypeObserver, &unk_10001885C);

  v5 = v4;
  v6 = ObservedObject.init(wrappedValue:)();
  v8 = v7;
  type metadata accessor for CAFCarManagerObservable();
  sub_1000023B4(&qword_100025358, &type metadata accessor for CAFCarManagerObservable, &protocol conformance descriptor for CAFCarManagerObservable);
  v9 = ObservedObject.init(wrappedValue:)();
  v11 = v10;
  type metadata accessor for CAUAssetLibraryManager();
  sub_1000023B4(&qword_100025360, &type metadata accessor for CAUAssetLibraryManager, &protocol conformance descriptor for CAUAssetLibraryManager);
  v12 = ObservedObject.init(wrappedValue:)();
  v14 = v13;
  type metadata accessor for CARSessionStatusObservable();
  sub_1000023B4(&qword_100025368, &type metadata accessor for CARSessionStatusObservable, &protocol conformance descriptor for CARSessionStatusObservable);
  v15 = ObservedObject.init(wrappedValue:)();
  v17 = v16;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  v18 = v63;
  v64 = v6;
  v66 = v18;
  v19 = objc_allocWithZone(sub_100002410(&qword_100025370, &qword_100017DA8));
  v20 = UIHostingController.init(rootView:)();
  v21 = [v20 view];
  if (!v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v21;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [v20 view];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = [objc_opt_self() clearColor];
  [v24 setBackgroundColor:v25];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = [v20 view];
  if (!v28)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = v28;
  [v27 addSubview:v28];

  sub_100002410(&qword_100025378, &qword_100017DB0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100017CE0;
  v31 = [v20 view];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = [v1 view];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = v34;
  v36 = [v34 topAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v30 + 32) = v37;
  v38 = [v20 view];
  if (!v38)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = v38;
  v40 = [v38 bottomAnchor];

  v41 = [v1 view];
  if (!v41)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v42 = v41;
  v43 = [v41 safeAreaLayoutGuide];

  v44 = [v43 bottomAnchor];
  v45 = [v40 constraintEqualToAnchor:v44];

  *(v30 + 40) = v45;
  v46 = [v20 view];
  if (!v46)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = v46;
  v48 = [v46 leadingAnchor];

  v49 = [v1 view];
  if (!v49)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v50 = v49;
  v51 = [v49 safeAreaLayoutGuide];

  v52 = [v51 leadingAnchor];
  v53 = [v48 constraintEqualToAnchor:v52];

  *(v30 + 48) = v53;
  v54 = [v20 view];

  if (!v54)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v55 = [v54 trailingAnchor];

  v56 = [v1 view];
  if (v56)
  {
    v57 = v56;
    v58 = objc_opt_self();
    v59 = [v57 safeAreaLayoutGuide];

    v60 = [v59 trailingAnchor];
    v61 = [v55 constraintEqualToAnchor:v60];

    *(v30 + 56) = v61;
    sub_100002458(0, &qword_100025380, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v58 activateConstraints:isa];

    CAFSignpostEmit_Rendered();
    return;
  }

LABEL_25:
  __break(1u);
}

id sub_100002244()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TirePressureViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100002330@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_10000234C()
{
  result = qword_100025348;
  if (!qword_100025348)
  {
    sub_100002458(255, &qword_100025340, CAFCarManager_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025348);
  }

  return result;
}

uint64_t sub_1000023B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002410(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002458(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 sub_1000024A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000024B0(uint64_t a1, int a2)
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

uint64_t sub_1000024D0(uint64_t result, int a2, int a3)
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

__n128 sub_1000024F8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002504(uint64_t a1, int a2)
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

uint64_t sub_100002524(uint64_t result, int a2, int a3)
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

void sub_100002578(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id sub_1000025FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TirePressureWindowManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002664()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100002ED0();
  result = OS_os_log.init(subsystem:category:)();
  qword_100026910 = result;
  return result;
}

unint64_t sub_10000272C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000027F8(v11, 0, 0, 1, a1, a2);
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
    sub_100002E70(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002E24(v11);
  return v7;
}

unint64_t sub_1000027F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002904(a5, a6);
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

char *sub_100002904(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002950(a1, a2);
  sub_100002A80(&off_100021128);
  return v3;
}

char *sub_100002950(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002B6C(v5, 0);
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
        v7 = sub_100002B6C(v10, 0);
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

uint64_t sub_100002A80(uint64_t result)
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

  result = sub_100002BE0(result, v11, 1, v3);
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

void *sub_100002B6C(uint64_t a1, uint64_t a2)
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

  sub_100002410(&qword_1000254F0, &qword_100017E40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002BE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002410(&qword_1000254F0, &qword_100017E40);
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

uint64_t sub_100002D04(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  if (qword_100025250 != -1)
  {
    swift_once();
  }

  v6 = qword_100026910;
  result = os_log_type_enabled(qword_100026910, v5);
  if (result)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000272C(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v6, v5, "%s", v8, 0xCu);
    sub_100002E24(v9);
  }

  return result;
}

uint64_t sub_100002E24(void *a1)
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

uint64_t sub_100002E70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100002ED0()
{
  result = qword_1000254F8;
  if (!qword_1000254F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000254F8);
  }

  return result;
}

uint64_t sub_100002F1C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = static os_log_type_t.debug.getter();
  if (qword_100025250 != -1)
  {
    swift_once();
  }

  v11 = qword_100026910;
  result = os_log_type_enabled(qword_100026910, v10);
  if (result)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_10000272C(a3, a4, &v14);
    *(v13 + 12) = 2048;
    *(v13 + 14) = a5;
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_10000272C(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, v11, v10, "%s:%ld  %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  return result;
}

uint64_t sub_10000308C@<X0>(uint64_t a1@<X8>)
{
  v3 = static Alignment.center.getter();
  v5 = v4;
  sub_10000341C(&v45);
  v40 = v47;
  v41 = v48;
  v42[0] = v49[0];
  *(v42 + 9) = *(v49 + 9);
  v38 = v45;
  v39 = v46;
  *(v44 + 9) = *(v49 + 9);
  v43[2] = v47;
  v43[3] = v48;
  v44[0] = v49[0];
  v43[0] = v45;
  v43[1] = v46;
  sub_100011764(&v38, v37, &qword_100025670, &qword_100018008);
  sub_100012120(v43, &qword_100025670, &qword_100018008);
  v47 = v40;
  v48 = v41;
  v49[0] = v42[0];
  *(v49 + 9) = *(v42 + 9);
  v45 = v38;
  v46 = v39;
  v6 = swift_allocObject();
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = *(v1 + 80);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  sub_10000E880(v1, v37);
  v9 = static Alignment.center.getter();
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(sub_100002410(&qword_100025678, &qword_100018038) + 36));
  v14 = sub_100002410(&qword_100025680, &qword_100018040);
  sub_100003BDC(v13 + *(v14 + 28));
  *v13 = KeyPath;
  *a1 = v3;
  *(a1 + 8) = v5;
  v15 = v48;
  *(a1 + 48) = v47;
  *(a1 + 64) = v15;
  *(a1 + 80) = v49[0];
  *(a1 + 89) = *(v49 + 9);
  v16 = v46;
  *(a1 + 16) = v45;
  *(a1 + 32) = v16;
  *(a1 + 112) = sub_10000E878;
  *(a1 + 120) = v6;
  *(a1 + 128) = v9;
  *(a1 + 136) = v11;
  v17 = swift_getKeyPath();
  v18 = (a1 + *(sub_100002410(&qword_100025688, &qword_100018078) + 36));
  v19 = *(sub_100002410(&qword_100025690, &qword_100018080) + 28);
  v20 = enum case for LayoutDirection.leftToRight(_:);
  v21 = type metadata accessor for LayoutDirection();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = v17;
  v22 = sub_100003F70();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v17) = static Edge.Set.all.getter();
  v29 = a1 + *(sub_100002410(&qword_100025698, &qword_100018088) + 36);
  *v29 = v17;
  *(v29 + 8) = v22;
  *(v29 + 16) = v24;
  *(v29 + 24) = v26;
  *(v29 + 32) = v28;
  *(v29 + 40) = 0;
  v30 = sub_100002410(&qword_1000256A0, &qword_100018090);
  dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
  v31 = (a1 + *(v30 + 56));
  *v31 = sub_1000043F0;
  v31[1] = 0;
  v32 = sub_100002410(&qword_1000256A8, &qword_100018098);
  dispatch thunk of CAUAssetLibraryManager.$assetLibrary.getter();
  v33 = (a1 + *(v32 + 56));
  *v33 = sub_100004504;
  v33[1] = 0;
  v34 = sub_100002410(&qword_1000256B0, &qword_1000180A0);
  result = dispatch thunk of CARSessionStatusObservable.$session.getter();
  v36 = (a1 + *(v34 + 56));
  *v36 = sub_1000045D8;
  v36[1] = 0;
  return result;
}

double sub_10000341C@<D0>(_OWORD *a1@<X8>)
{
  v2 = dispatch thunk of CAFCarManagerObservable.currentCar.getter();
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = dispatch thunk of CARSessionStatusObservable.session.getter();
  if (!v4)
  {
LABEL_6:

LABEL_7:
    LOBYTE(v19) = 1;
    *&v26 = sub_10000389C;
    *(&v26 + 1) = 0;
    v27 = 0uLL;
    v30[24] = 1;
    sub_100002410(&qword_100025700, &qword_100018118);
    sub_100002410(&qword_100025708, &qword_100018120);
    sub_10000F02C(&qword_100025710, &qword_100025700, &qword_100018118, sub_10000EE68);
    sub_10000F02C(&qword_100025760, &qword_100025708, &qword_100018120, sub_10000F0B0);
    _ConditionalContent<>.init(storage:)();
    goto LABEL_8;
  }

  v5 = v4;
  v6 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (!v6)
  {

    v3 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  sub_100002458(0, &qword_100025770, CAFCar_ptr);
  sub_10000F104(&qword_100025778, &qword_100025770, CAFCar_ptr, &protocol conformance descriptor for CAFCar);
  CAFObserved<>.observable.getter();
  type metadata accessor for CAFCarObservable();
  sub_10000EC84(&qword_100025780, &type metadata accessor for CAFCarObservable, &protocol conformance descriptor for CAFCarObservable);
  v18 = v7;
  v17 = ObservedObject.init(wrappedValue:)();
  v9 = v8;
  v10 = CAFCar.dimesionObservable.getter();
  type metadata accessor for CAFDimensionObservable();
  sub_10000EC84(&qword_100025788, &type metadata accessor for CAFDimensionObservable, &protocol conformance descriptor for CAFDimensionObservable);
  v11 = static ObservableObject.environmentStore.getter();
  KeyPath = swift_getKeyPath();
  v13 = [v5 configuration];
  LOBYTE(v7) = [v13 rightHandDrive];

  *&v19 = v17;
  *(&v19 + 1) = v9;
  *&v20 = v18;
  *(&v20 + 1) = v11;
  *&v21 = v10;
  *(&v21 + 1) = KeyPath;
  LOBYTE(v22) = v7;
  v24 = 0;
  *(&v22 + 1) = sub_100003880;
  v23 = 0uLL;
  v33 = v21;
  v34 = v22;
  memset(v35, 0, 25);
  v31 = v19;
  v32 = v20;
  v25 = 0;
  sub_100011764(&v19, &v26, &qword_100025700, &qword_100018118);
  sub_100011764(&v19, &v26, &qword_100025700, &qword_100018118);
  sub_100002410(&qword_100025700, &qword_100018118);
  sub_100002410(&qword_100025708, &qword_100018120);
  sub_10000F02C(&qword_100025710, &qword_100025700, &qword_100018118, sub_10000EE68);
  sub_10000F02C(&qword_100025760, &qword_100025708, &qword_100018120, sub_10000F0B0);
  _ConditionalContent<>.init(storage:)();

  sub_100012120(&v19, &qword_100025700, &qword_100018118);
  sub_100012120(&v19, &qword_100025700, &qword_100018118);
  v33 = v28;
  v34 = v29;
  v35[0] = *v30;
  *(v35 + 9) = *&v30[9];
  v31 = v26;
  v32 = v27;
LABEL_8:
  v14 = v34;
  a1[2] = v33;
  a1[3] = v14;
  a1[4] = v35[0];
  *(a1 + 73) = *(v35 + 9);
  result = *&v31;
  v16 = v32;
  *a1 = v31;
  a1[1] = v16;
  return result;
}

uint64_t sub_1000038B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = static Color.clear.getter();
  (*(v7 + 16))(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v6);
  v10 = (*(v7 + 80) + 104) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = *(a2 + 48);
  *(v11 + 48) = *(a2 + 32);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(a2 + 64);
  *(v11 + 96) = *(a2 + 80);
  v13 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v13;
  (*(v7 + 32))(v11 + v10, &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v6);
  *a3 = v9;
  a3[1] = sub_10000EE04;
  a3[2] = v11;
  a3[3] = 0;
  a3[4] = 0;
  return sub_10000E880(a2, v16);
}

uint64_t sub_100003A30(uint64_t a1)
{
  GeometryProxy.size.getter();
  sub_100002410(&qword_1000256F8, &qword_100018110);
  return State.wrappedValue.setter();
}

uint64_t sub_100003A98(uint64_t a1)
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
  sub_10000ECCC();
  EnvironmentValues.subscript.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100003BDC@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_100002410(&qword_1000256D0, &qword_1000180F8);
  __chkstk_darwin(v1 - 8);
  v20 = &v19 - v2;
  v3 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CAUAppUIConfiguration.App();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CAUAppUIConfiguration.Mode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (v14)
  {
    v15 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = &enum case for CAUAppUIConfiguration.Mode.popover(_:);
    if (v22 != 3)
    {
      v16 = &enum case for CAUAppUIConfiguration.Mode.dca(_:);
    }

    (*(v11 + 104))(v13, *v16, v10);
    (*(v7 + 104))(v9, enum case for CAUAppUIConfiguration.App.tirePressure(_:), v6);
    dispatch thunk of CAUAssetLibrary.configuration(app:mode:)();

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    (*(v19 + 104))(v5, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v3);
    v18 = type metadata accessor for CAUWidgetContentMargins();
    (*(*(v18 - 8) + 56))(v20, 1, 1, v18);
    sub_10000EA64(&_swiftEmptyArrayStorage);
    return CAUAppUIConfiguration.Configuration.init(layoutStyle:padding:elementData:)();
  }
}

double sub_100003F70()
{
  v0 = type metadata accessor for CAUWidgetContentMargins();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v24 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for CAUResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for CAUVehicleLayout();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = 0.0;
  if (v29 != 3)
  {
    v13 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
    if (v13)
    {
      v14 = v13;
      (*(v3 + 104))(v5, enum case for CAUResource.vehicleLayout(_:), v2);
      sub_10000E968();
      dispatch thunk of CAUAssetLibrary.asset<A>(for:)();
      (*(v3 + 8))(v5, v2);

      v17 = v27;
      v16 = v28;
      if ((*(v27 + 48))(v8, 1, v28) != 1)
      {
        (*(v17 + 32))(v11, v8, v16);
        v18 = v24;
        CAUVehicleLayout.widgetContentMargins.getter();
        CAUWidgetContentMargins.top.getter();
        v20 = v19;
        v21 = v26;
        v22 = *(v25 + 8);
        v22(v18, v26);
        v12 = v20;
        CAUVehicleLayout.widgetContentMargins.getter();
        CAUWidgetContentMargins.leading.getter();
        v22(v18, v21);
        CAUVehicleLayout.widgetContentMargins.getter();
        CAUWidgetContentMargins.bottom.getter();
        v22(v18, v21);
        CAUVehicleLayout.widgetContentMargins.getter();
        CAUWidgetContentMargins.trailing.getter();
        v22(v18, v21);
        (*(v17 + 8))(v11, v16);
        return v12;
      }
    }

    else
    {
      (*(v27 + 56))(v8, 1, 1, v28);
    }

    sub_100012120(v8, &qword_1000256B8, &qword_1000180A8);
  }

  return v12;
}

uint64_t sub_1000043F0(id *a1)
{
  if (*a1)
  {
    v1 = *a1;
    _StringGuts.grow(_:)(22);

    v2 = [v1 description];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    String.append(_:)(v6);

    sub_100002CEC(0xD000000000000014, 0x8000000100018CA0);
  }

  else
  {

    return sub_100002CEC(0xD00000000000001CLL, 0x8000000100018C80);
  }
}

uint64_t sub_100004504(uint64_t *a1)
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
  sub_100002CEC(0xD000000000000010, 0x8000000100018C60);
}

uint64_t sub_1000045D8(id *a1)
{
  if (*a1)
  {
    v1 = *a1;
    _StringGuts.grow(_:)(41);

    v2 = [v1 configuration];
    v3 = [v2 rightHandDrive];

    if (v3)
    {
      v4 = 29545;
    }

    else
    {
      v4 = 0x746F6E207369;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    v6 = v5;
    String.append(_:)(*&v4);

    v7._countAndFlagsBits = 0x444852206120;
    v7._object = 0xE600000000000000;
    String.append(_:)(v7);
    sub_100002CEC(0xD000000000000021, 0x8000000100018C30);
  }

  else
  {

    return sub_100002CEC(0xD000000000000020, 0x8000000100018C00);
  }
}

uint64_t sub_1000047A0@<X0>(void *a1@<X8>)
{
  v61 = a1;
  v51 = type metadata accessor for CarView(0);
  v1 = __chkstk_darwin(v51);
  v54 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v1);
  v53 = &v50 - v3;
  v60 = sub_100002410(&qword_1000257B8, &qword_100018280);
  v4 = __chkstk_darwin(v60);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v50 - v6;
  v58 = sub_100002410(&qword_1000257C0, &qword_100018288);
  __chkstk_darwin(v58);
  v59 = &v50 - v7;
  v8 = type metadata accessor for CAUResource();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v50 - v13;
  v15 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
  v16 = __chkstk_darwin(v15);
  v50 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v50 - v18;
  v57 = CAFCarObservable.observed.getter();
  v20 = *(v9 + 104);
  v20(v14, enum case for CAUResource.vehicleLayout(_:), v8);
  sub_10000E968();
  dispatch thunk of CAUAssetLibrary.asset<A>(for:)();
  v56 = v9;
  v21 = *(v9 + 8);
  v21(v14, v8);
  v22 = v19;
  v20(v12, enum case for CAUResource.topDownExterior(_:), v8);
  v23 = CAUAssetLibrary.asset(for:)();
  v21(v12, v8);
  v24 = v50;
  sub_100011764(v19, v50, &qword_1000256B8, &qword_1000180A8);
  KeyPath = swift_getKeyPath();
  v26 = v54;
  *v54 = KeyPath;
  sub_100002410(&qword_1000257D8, &qword_100018290);
  swift_storeEnumTagMultiPayload();
  v27 = v51;
  v28 = v26 + *(v51 + 20);
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  v29 = v27[6];
  v56 = v22;
  v30 = v26 + v29;
  v62 = 0;
  v31 = v57;
  v32 = v23;
  v57 = v32;
  State.init(wrappedValue:)();
  v33 = v64;
  *v30 = v63;
  *(v30 + 8) = v33;
  *(v26 + v27[7]) = v31;
  type metadata accessor for CarPressureResetMonitor();
  swift_allocObject();
  v34 = v31;
  v35 = sub_10000F498(v34);

  *(v26 + v27[8]) = v35;
  sub_100011764(v24, v26 + v27[9], &qword_1000256B8, &qword_1000180A8);
  *(v26 + v27[10]) = v32;
  v36 = 0xE000000000000000;
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v63 = 0xD00000000000001FLL;
  v64 = 0x8000000100018D20;
  v37 = type metadata accessor for CAUVehicleLayout();
  v38 = (*(*(v37 - 8) + 48))(v24, 1, v37);
  v39 = v38 == 1;
  if (v38 == 1)
  {
    v40 = 544501614;
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v36 = 0xE400000000000000;
  }

  v41 = v36;
  String.append(_:)(*&v40);

  v42._countAndFlagsBits = 0x6C62616C69617661;
  v42._object = 0xEA00000000002E65;
  String.append(_:)(v42);
  sub_100002CEC(v63, v64);

  sub_100012120(v24, &qword_1000256B8, &qword_1000180A8);
  v43 = v53;
  sub_10000F638(v26, v53);
  v44 = v52;
  sub_10000F638(v43, v52);
  v45 = (v44 + *(v60 + 36));
  *v45 = sub_100004F80;
  v45[1] = 0;
  v45[2] = 0;
  v45[3] = 0;
  v46 = v44;
  v47 = v55;
  sub_1000116FC(v46, v55, &qword_1000257B8, &qword_100018280);
  sub_100011764(v47, v59, &qword_1000257B8, &qword_100018280);
  swift_storeEnumTagMultiPayload();
  sub_100002410(&qword_100025708, &qword_100018120);
  sub_10000F3DC();
  v48 = v56;
  sub_10000F02C(&qword_100025760, &qword_100025708, &qword_100018120, sub_10000F0B0);
  _ConditionalContent<>.init(storage:)();

  sub_100012120(v47, &qword_1000257B8, &qword_100018280);
  return sub_100012120(v48, &qword_1000256B8, &qword_1000180A8);
}

uint64_t sub_100004FB8()
{
  _StringGuts.grow(_:)(30);

  v0 = dispatch thunk of CAFCarObservable.tire.getter();
  if (v0)
  {

    v1 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
    v1 = 544501614;
  }

  v3 = v2;
  String.append(_:)(*&v1);

  v4._countAndFlagsBits = 0x6C62616C69617661;
  v4._object = 0xEA00000000002E65;
  String.append(_:)(v4);
  sub_100002CEC(0xD000000000000012, 0x8000000100018D00);
}

uint64_t sub_100005094(uint64_t *a1)
{
  v1 = *a1;
  _StringGuts.grow(_:)(30);

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
  sub_100002CEC(0xD000000000000012, 0x8000000100018D00);
}

uint64_t sub_100005168@<X0>(uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  *a2 = static Alignment.center.getter();
  a2[1] = v7;
  v8 = sub_100002410(&qword_1000257A0, &qword_100018268);
  sub_1000047A0((a2 + *(v8 + 44)));
  v9 = swift_allocObject();
  *(v9 + 2) = v5;
  *(v9 + 3) = v4;
  *(v9 + 4) = v6;
  v10 = (a2 + *(sub_100002410(&qword_1000257A8, &qword_100018270) + 36));
  *v10 = sub_10000F3B0;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  v11 = sub_100002410(&qword_1000257B0, &qword_100018278);
  v12 = v4;
  v13 = v6;
  result = dispatch thunk of CAFCarObservable.$tire.getter();
  v15 = (a2 + *(v11 + 56));
  *v15 = sub_100005094;
  v15[1] = 0;
  return result;
}

uint64_t sub_100005278(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = Notification.userInfo.getter();
  if (!v3)
  {
  }

  v4 = v3;
  strcpy(v7, "ClusterEvent");
  BYTE13(v7[0]) = 0;
  HIWORD(v7[0]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_1000153E0(v8), (v6 & 1) == 0))
  {

    return sub_10000F6DC(v8);
  }

  sub_100002E70(*(v4 + 56) + 32 * v5, v7);
  sub_10000F6DC(v8);

  sub_10000F730(v7, v9);
  sub_100002E70(v9, v8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100002E24(v9);
  }

  if (LOBYTE(v7[0]) == 1)
  {
    sub_1000055A0();
  }

  return sub_100002E24(v9);
}

uint64_t sub_1000053D8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000054CC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100025278 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:qword_100026928];

  return _swift_deallocClassInstance(v0, 24, 7);
}

void sub_1000055A0()
{
  v1 = [*(v0 + 16) tire];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 tirePressureMonitoringSystem];

    if (v3)
    {
      if ([v3 hasReset])
      {
        sub_100002CEC(0xD000000000000016, 0x8000000100018B60);
        v5[4] = sub_100005704;
        v5[5] = 0;
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 1107296256;
        v5[2] = sub_100005964;
        v5[3] = &unk_1000212F0;
        v4 = _Block_copy(v5);
        [v3 resetWithCompletion:v4];
        _Block_release(v4);

        return;
      }
    }
  }

  sub_100002CD4(0xD000000000000027, 0x8000000100018B30);
}

uint64_t sub_100005704(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    _StringGuts.grow(_:)(44);
    v1._countAndFlagsBits = 0xD00000000000002ALL;
    v1._object = 0x8000000100018BD0;
    String.append(_:)(v1);
    sub_100002410(&qword_100025668, &qword_100017F58);
    _print_unlocked<A, B>(_:_:)();
    sub_100002CD4(0, 0xE000000000000000);
  }

  else
  {

    return sub_100002CEC(0xD000000000000020, 0x8000000100018BA0);
  }
}

uint64_t sub_10000580C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CarView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000FED8(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

void sub_100005964(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void *sub_1000059D0@<X0>(void *a1@<X8>)
{
  v78 = a1;
  v2 = type metadata accessor for CarView(0);
  v57 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v58 = v3;
  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100002410(&qword_100025900, &qword_100018328);
  __chkstk_darwin(v71);
  v60 = (&v56 - v4);
  v75 = sub_100002410(&qword_100025908, &qword_100018330);
  __chkstk_darwin(v75);
  v77 = (&v56 - v5);
  v68 = sub_100002410(&qword_100025910, &qword_100018338);
  __chkstk_darwin(v68);
  v70 = &v56 - v6;
  v76 = sub_100002410(&qword_100025918, &qword_100018340);
  __chkstk_darwin(v76);
  v72 = &v56 - v7;
  v69 = sub_100002410(&qword_100025920, &qword_100018348);
  __chkstk_darwin(v69);
  v67 = (&v56 - v8);
  v9 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v73 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v66 = &v56 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v56 - v16;
  __chkstk_darwin(v15);
  v19 = &v56 - v18;
  v20 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v63 = (&v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v25 = &v56 - v24;
  v74 = v1;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, (&v56 - v24));
  CAUAppUIConfiguration.Configuration.layoutStyle.getter();
  v26 = *(v21 + 8);
  v64 = v21 + 8;
  v65 = v20;
  v62 = v26;
  v26(v25, v20);
  v61 = *(v10 + 104);
  v61(v17, enum case for CAUAppUIConfiguration.LayoutStyle.landscape(_:), v9);
  sub_10000EC84(&qword_100025928, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle, &protocol conformance descriptor for CAUAppUIConfiguration.LayoutStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v81 == v79 && v82 == v80)
  {
    v27 = 1;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v28 = *(v10 + 8);
  v28(v17, v9);
  v28(v19, v9);

  if (v27)
  {
    v29 = static VerticalAlignment.center.getter();
    v30 = v67;
    *v67 = v29;
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    v31 = sub_100002410(&qword_100025970, &qword_100018368);
    sub_100008728(v74, v30 + *(v31 + 44));
    sub_100011764(v30, v70, &qword_100025920, &qword_100018348);
    swift_storeEnumTagMultiPayload();
    sub_100012468(&qword_100025940, &qword_100025920, &qword_100018348, &protocol conformance descriptor for HStack<A>);
    sub_10001001C();
    v32 = v72;
    _ConditionalContent<>.init(storage:)();
    sub_100011764(v32, v77, &qword_100025918, &qword_100018340);
    swift_storeEnumTagMultiPayload();
    sub_100002410(&qword_100025930, &qword_100018350);
    sub_10000FF64();
    sub_100012468(&qword_100025960, &qword_100025930, &qword_100018350, &protocol conformance descriptor for GeometryReader<A>);
    _ConditionalContent<>.init(storage:)();
    sub_100012120(v32, &qword_100025918, &qword_100018340);
    v33 = v30;
    v34 = &qword_100025920;
    v35 = &qword_100018348;
  }

  else
  {
    v36 = v63;
    v37 = v74;
    sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v63);
    v38 = v66;
    CAUAppUIConfiguration.Configuration.layoutStyle.getter();
    v62(v36, v65);
    v61(v73, enum case for CAUAppUIConfiguration.LayoutStyle.portraitCompressed(_:), v9);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v81 == v79 && v82 == v80)
    {
      v28(v73, v9);
      v28(v38, v9);
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v28(v73, v9);
      v28(v38, v9);

      if ((v39 & 1) == 0)
      {
        v52 = v59;
        sub_100010158(v37, v59, type metadata accessor for CarView);
        v53 = (*(v57 + 80) + 16) & ~*(v57 + 80);
        v54 = swift_allocObject();
        sub_10000F638(v52, v54 + v53);
        v55 = v77;
        *v77 = sub_10000FEE4;
        v55[1] = v54;
        swift_storeEnumTagMultiPayload();
        sub_100002410(&qword_100025930, &qword_100018350);
        sub_10000FF64();
        sub_100012468(&qword_100025960, &qword_100025930, &qword_100018350, &protocol conformance descriptor for GeometryReader<A>);
        return _ConditionalContent<>.init(storage:)();
      }
    }

    v40 = static VerticalAlignment.center.getter();
    v41 = v60;
    *v60 = v40;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    v42 = sub_100002410(&qword_100025968, &qword_100018360);
    sub_10000755C(v37, v41 + *(v42 + 44));
    v43 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v44 = v70;
    v45 = v41 + *(v71 + 36);
    *v45 = v43;
    *(v45 + 8) = v46;
    *(v45 + 16) = v47;
    *(v45 + 24) = v48;
    *(v45 + 32) = v49;
    *(v45 + 40) = 0;
    sub_100011764(v41, v44, &qword_100025900, &qword_100018328);
    swift_storeEnumTagMultiPayload();
    sub_100012468(&qword_100025940, &qword_100025920, &qword_100018348, &protocol conformance descriptor for HStack<A>);
    sub_10001001C();
    v50 = v72;
    _ConditionalContent<>.init(storage:)();
    sub_100011764(v50, v77, &qword_100025918, &qword_100018340);
    swift_storeEnumTagMultiPayload();
    sub_100002410(&qword_100025930, &qword_100018350);
    sub_10000FF64();
    sub_100012468(&qword_100025960, &qword_100025930, &qword_100018350, &protocol conformance descriptor for GeometryReader<A>);
    _ConditionalContent<>.init(storage:)();
    sub_100012120(v50, &qword_100025918, &qword_100018340);
    v33 = v41;
    v34 = &qword_100025900;
    v35 = &qword_100018328;
  }

  return sub_100012120(v33, v34, v35);
}

uint64_t sub_1000064C8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for CarView(0);
  GeometryProxy.size.getter();
  UIImage.fit(to:)();
  v4 = v14;
  v8 = v13;
  v9 = v12;
  *a2 = static Alignment.center.getter();
  a2[1] = v5;
  v6 = *(sub_100002410(&qword_100025A30, &qword_100018420) + 44);
  v10[0] = v9;
  v10[1] = v8;
  v11 = v4;
  return sub_100006574(a1, v10, a2 + v6);
}

uint64_t sub_100006574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v5 = *a2;
  v4 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v67 = sub_100002410(&qword_100025A38, &qword_100018428);
  __chkstk_darwin(v67);
  v60 = (v56 - v9);
  v63 = sub_100002410(&qword_100025A40, &qword_100018430);
  __chkstk_darwin(v63);
  v64 = v56 - v10;
  v11 = type metadata accessor for CarView(0);
  v56[0] = *(v11 - 1);
  __chkstk_darwin(v11);
  v56[1] = v12;
  v57 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100002410(&qword_100025A48, &qword_100018438);
  v59 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = v56 - v13;
  v14 = sub_100002410(&qword_100025A50, &qword_100018440);
  v15 = __chkstk_darwin(v14 - 8);
  v66 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v65 = v56 - v17;
  v18 = type metadata accessor for Image.Interpolation();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Image.ResizingMode();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + v11[10]);
  Image.init(uiImage:)();
  (*(v23 + 104))(v25, enum case for Image.ResizingMode.stretch(_:), v22);
  Image.resizable(capInsets:resizingMode:)();

  (*(v23 + 8))(v25, v22);
  (*(v19 + 104))(v21, enum case for Image.Interpolation.high(_:), v18);
  v61 = Image.interpolation(_:)();

  (*(v19 + 8))(v21, v18);
  v80.origin.x = v5;
  v80.origin.y = v4;
  v80.size.width = v7;
  v80.size.height = v6;
  CGRectGetWidth(v80);
  v81.origin.x = v5;
  v81.origin.y = v4;
  v81.size.width = v7;
  v81.size.height = v6;
  CGRectGetHeight(v81);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v71[0]) = 1;
  *&v76[6] = v77;
  *&v76[22] = v78;
  *&v76[38] = v79;
  v27 = [*(a1 + v11[7]) tire];
  if (!v27)
  {
    goto LABEL_7;
  }

  v28 = v27;
  v29 = [v27 tirePressures];
  sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v30 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v31)
  {

LABEL_7:
    v41 = v11[9];
    v42 = type metadata accessor for RedactedTiresView(0);
    v43 = a1 + v41;
    v44 = v60;
    sub_100011764(v43, v60 + *(v42 + 24), &qword_1000256B8, &qword_1000180A8);
    *v44 = swift_getKeyPath();
    sub_100002410(&qword_1000257D8, &qword_100018290);
    swift_storeEnumTagMultiPayload();
    v45 = (v44 + *(v42 + 20));
    *v45 = v5;
    v45[1] = v4;
    v45[2] = v7;
    v45[3] = v6;
    v46 = (v44 + *(v67 + 36));
    *v46 = sub_100007540;
    v46[1] = 0;
    v46[2] = 0;
    v46[3] = 0;
    sub_100011764(v44, v64, &qword_100025A38, &qword_100018428);
    swift_storeEnumTagMultiPayload();
    sub_1000102B0();
    sub_100010448();
    v40 = v65;
    _ConditionalContent<>.init(storage:)();
    sub_100012120(v44, &qword_100025A38, &qword_100018428);
    goto LABEL_8;
  }

  v32 = [v28 tirePressures];
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v71[0] = v33;
  v34 = v57;
  sub_100010158(a1, v57, type metadata accessor for CarView);
  v35 = (*(v56[0] + 80) + 56) & ~*(v56[0] + 80);
  v36 = swift_allocObject();
  v36[2] = v5;
  v36[3] = v4;
  v36[4] = v7;
  v36[5] = v6;
  *(v36 + 6) = v8;
  sub_10000F638(v34, v36 + v35);
  sub_100002410(&qword_100025A98, &qword_100018460);
  type metadata accessor for UUID();
  sub_100002410(&qword_100025A68, &qword_100018448);
  sub_100012468(&qword_100025AA0, &qword_100025A98, &qword_100018460, &protocol conformance descriptor for [A]);
  sub_100010334();
  sub_10000F104(&qword_100025AA8, &qword_1000259F8, CAFTirePressure_ptr, &protocol conformance descriptor for CAFService);
  v37 = v58;
  ForEach<>.init(_:content:)();
  v38 = v59;
  v39 = v62;
  (*(v59 + 16))(v64, v37, v62);
  swift_storeEnumTagMultiPayload();
  sub_1000102B0();
  sub_100010448();
  v40 = v65;
  _ConditionalContent<>.init(storage:)();

  (*(v38 + 8))(v37, v39);
LABEL_8:
  v47 = v66;
  sub_100011764(v40, v66, &qword_100025A50, &qword_100018440);
  v48 = v61;
  v69[0] = v61;
  v69[1] = 0;
  v70[0] = 1;
  v70[1] = 0;
  *&v70[2] = *v76;
  *&v70[18] = *&v76[16];
  *&v70[34] = *&v76[32];
  *&v70[48] = *&v76[46];
  v49 = v61;
  v50 = *v70;
  v51 = *&v70[16];
  v52 = *&v70[32];
  v53 = v68;
  *(v68 + 64) = *&v76[46];
  v53[2] = v51;
  v53[3] = v52;
  *v53 = v49;
  v53[1] = v50;
  v54 = sub_100002410(&qword_100025A88, &qword_100018450);
  sub_100011764(v47, v53 + *(v54 + 48), &qword_100025A50, &qword_100018440);
  sub_100011764(v69, v71, &qword_100025A90, &qword_100018458);
  sub_100012120(v40, &qword_100025A50, &qword_100018440);
  sub_100012120(v47, &qword_100025A50, &qword_100018440);
  v71[0] = v48;
  v71[1] = 0;
  v72 = 1;
  v73 = *v76;
  v74 = *&v76[16];
  *v75 = *&v76[32];
  *&v75[14] = *&v76[46];
  return sub_100012120(v71, &qword_100025A90, &qword_100018458);
}

id sub_100007010@<X0>(void **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CarView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v25 = *a1;
  sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
  sub_10000F104(&qword_100025A08, &qword_1000259F8, CAFTirePressure_ptr, &protocol conformance descriptor for CAFTirePressure);
  v12 = *a2;
  v23 = a2[1];
  v24 = v12;
  CAFObserved<>.observable.getter();
  v13 = *(v9 + 44);
  v14 = type metadata accessor for PositionedTireInfoView(0);
  sub_100011764(a3 + v13, a4 + *(v14 + 28), &qword_1000256B8, &qword_1000180A8);
  type metadata accessor for CAFDimensionObservable();
  sub_10000EC84(&qword_100025788, &type metadata accessor for CAFDimensionObservable, &protocol conformance descriptor for CAFDimensionObservable);
  *(a4 + 16) = EnvironmentObject.init()();
  *(a4 + 24) = v15;
  type metadata accessor for CAFTirePressureObservable();
  sub_10000EC84(&qword_1000259D8, &type metadata accessor for CAFTirePressureObservable, &protocol conformance descriptor for CAFTirePressureObservable);
  *a4 = ObservedObject.init(wrappedValue:)();
  *(a4 + 8) = v16;
  v17 = v23;
  *(a4 + 32) = v24;
  *(a4 + 48) = v17;
  sub_100010158(a3, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CarView);
  v18 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v25;
  sub_10000F638(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = (a4 + *(sub_100002410(&qword_100025A68, &qword_100018448) + 36));
  *v20 = sub_10001095C;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  v21 = v25;

  return v21;
}

void sub_1000072C0()
{
  v0 = type metadata accessor for CAUVehicleLayoutKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  v6 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);
  v4._object = 0x8000000100018E60;
  v4._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v4);
  sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
  CAFPositionedRequired.layoutKey.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v1 + 8))(v3, v0);
  sub_100002F1C(v5, v6, 0x7469617274726F70, 0xEC00000077656956, 226);

  sub_100007444();
}

void sub_100007444()
{
  v1 = type metadata accessor for CarView(0);
  sub_100002410(&qword_100025AB0, &qword_100018468);
  State.wrappedValue.getter();
  if ((v4 & 1) == 0)
  {
    v2 = [*(v0 + *(v1 + 28)) tire];
    if (v2)
    {
      v3 = v2;
      if ([v2 receivedAllValues])
      {
        CAFSignpostEmit_Finalized();

        State.wrappedValue.setter();
      }
    }
  }
}

uint64_t sub_10000755C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v67 = type metadata accessor for Image.Interpolation();
  v3 = *(v67 - 8);
  __chkstk_darwin(v67);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002410(&qword_100025978, &qword_100018370);
  v75 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v66 - v11;
  v13 = sub_100002410(&qword_100025A10, &qword_100018400);
  v14 = __chkstk_darwin(v13 - 8);
  v71 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v72 = &v66 - v17;
  v18 = __chkstk_darwin(v16);
  v70 = &v66 - v19;
  __chkstk_darwin(v18);
  v76 = &v66 - v20;
  v21 = type metadata accessor for CarView(0);
  v66 = *(a1 + *(v21 + 28));
  v22 = [v66 tire];
  v74 = a1;
  if (v22)
  {
    v23 = v22;
    v69 = v10;
    v24 = [v22 tirePressures];
    sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v25 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v26)
    {
      *v12 = static HorizontalAlignment.trailing.getter();
      *(v12 + 1) = 0;
      v12[16] = 1;
      v27 = sub_100002410(&qword_100025990, &qword_100018388);
      v28 = v74;
      sub_10000901C(&v12[*(v27 + 44)]);

      v29 = v76;
      sub_1000116FC(v12, v76, &qword_100025978, &qword_100018370);
      v30 = *(v75 + 56);
      v31 = v29;
      a1 = v28;
      v32 = 0;
      v10 = v69;
      goto LABEL_8;
    }

    a1 = v74;
    v10 = v69;
  }

  v30 = *(v75 + 56);
  v31 = v76;
  v32 = 1;
LABEL_8:
  v68 = v30;
  v30(v31, v32, 1, v10);
  v33 = *(a1 + *(v21 + 40));
  Image.init(uiImage:)();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v9, v6);
  v34 = v67;
  (*(v3 + 104))(v5, enum case for Image.Interpolation.high(_:), v67);
  v69 = Image.interpolation(_:)();

  (*(v3 + 8))(v5, v34);
  sub_100002410(&qword_100025A18, &qword_100018408);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100017E50;
  v36 = static Edge.Set.leading.getter();
  *(inited + 32) = v36;
  v37 = static Edge.Set.trailing.getter();
  *(inited + 33) = v37;
  v38 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v36)
  {
    v38 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v37)
  {
    LODWORD(v67) = v38;
  }

  else
  {
    LODWORD(v67) = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v98 = 1;
  v94 = 0;
  v47 = [v66 tire];
  if (!v47)
  {
    goto LABEL_19;
  }

  v48 = v47;
  v49 = [v47 tirePressures];
  sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
  v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v50 >> 62)
  {
    v51 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v51)
  {

LABEL_19:
    v54 = 1;
    v53 = v70;
    goto LABEL_20;
  }

  *v12 = static HorizontalAlignment.leading.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v52 = sub_100002410(&qword_100025990, &qword_100018388);
  sub_1000094AC(&v12[*(v52 + 44)]);

  v53 = v70;
  sub_1000116FC(v12, v70, &qword_100025978, &qword_100018370);
  v54 = 0;
LABEL_20:
  v68(v53, v54, 1, v10);
  v55 = v76;
  v56 = v72;
  sub_100011764(v76, v72, &qword_100025A10, &qword_100018400);
  v57 = v71;
  sub_100011764(v53, v71, &qword_100025A10, &qword_100018400);
  v58 = v73;
  sub_100011764(v56, v73, &qword_100025A10, &qword_100018400);
  v59 = sub_100002410(&qword_100025A20, &qword_100018410);
  v60 = v58 + *(v59 + 48);
  v61 = v69;
  v77 = v69;
  LOWORD(v78) = 1;
  *(&v78 + 2) = v96;
  WORD3(v78) = v97;
  v62 = v67;
  BYTE8(v78) = v67;
  HIDWORD(v78) = *&v95[3];
  *(&v78 + 9) = *v95;
  *&v79 = v40;
  *(&v79 + 1) = v42;
  *&v80 = v44;
  *(&v80 + 1) = v46;
  v81 = 0;
  *(v60 + 64) = 0;
  v63 = v80;
  *(v60 + 32) = v79;
  *(v60 + 48) = v63;
  v64 = v78;
  *v60 = v77;
  *(v60 + 16) = v64;
  sub_100011764(v57, v58 + *(v59 + 64), &qword_100025A10, &qword_100018400);
  sub_100011764(&v77, v82, &qword_100025A28, &qword_100018418);
  sub_100012120(v53, &qword_100025A10, &qword_100018400);
  sub_100012120(v55, &qword_100025A10, &qword_100018400);
  sub_100012120(v57, &qword_100025A10, &qword_100018400);
  v82[0] = v61;
  v82[1] = 0;
  v83 = 1;
  v84 = 0;
  v85 = v96;
  v86 = v97;
  v87 = v62;
  *v88 = *v95;
  *&v88[3] = *&v95[3];
  v89 = v40;
  v90 = v42;
  v91 = v44;
  v92 = v46;
  v93 = 0;
  sub_100012120(v82, &qword_100025A28, &qword_100018418);
  return sub_100012120(v56, &qword_100025A10, &qword_100018400);
}

uint64_t sub_100007EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  v47 = a3;
  v49 = a2;
  v48 = a1;
  v57 = a4;
  v51 = sub_100002410(&qword_1000259B8, &qword_1000183B0);
  __chkstk_darwin(v51);
  v55 = &v46 - v5;
  v53 = type metadata accessor for TireInfoView(0);
  __chkstk_darwin(v53);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for CAUVehicleLayoutKey();
  v54 = *(v56 - 1);
  v8 = __chkstk_darwin(v56);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v46 - v11;
  v12 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v19 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = v4;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v22);
  CAUAppUIConfiguration.Configuration.layoutStyle.getter();
  (*(v20 + 8))(v22, v19);
  (*(v13 + 104))(v16, enum case for CAUAppUIConfiguration.LayoutStyle.landscape(_:), v12);
  sub_10000EC84(&qword_100025928, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle, &protocol conformance descriptor for CAUAppUIConfiguration.LayoutStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v59[0] == v60)
  {
    v23 = *(v13 + 8);
    v23(v16, v12);
    v23(v18, v12);
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v25 = *(v13 + 8);
    v25(v16, v12);
    v25(v18, v12);

    if ((v24 & 1) == 0)
    {
      v27 = v54;
      v28 = v56;
      (*(v54 + 104))(v10, *v47, v56);
      v30 = v52;
      goto LABEL_9;
    }
  }

  v26 = sub_10000580C();
  v27 = v54;
  v28 = v56;
  if (v26)
  {
    v29 = &v61;
  }

  else
  {
    v29 = &v62;
  }

  (*(v54 + 104))(v10, **(v29 - 32), v56);
  v30 = v52;
LABEL_9:
  (*(v27 + 32))(v30, v10, v28);
  v31 = sub_100009FA8(v30);
  if (v31)
  {
    v32 = v31;
    type metadata accessor for CAFDimensionObservable();
    sub_10000EC84(&qword_100025788, &type metadata accessor for CAFDimensionObservable, &protocol conformance descriptor for CAFDimensionObservable);
    v56 = v32;
    v33 = EnvironmentObject.init()();
    v35 = v34;
    KeyPath = swift_getKeyPath();
    v37 = v53;
    *(v7 + *(v53 + 24)) = KeyPath;
    sub_100002410(&qword_1000257D8, &qword_100018290);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CAFTirePressureObservable();
    sub_10000EC84(&qword_1000259D8, &type metadata accessor for CAFTirePressureObservable, &protocol conformance descriptor for CAFTirePressureObservable);
    *v7 = ObservedObject.init(wrappedValue:)();
    v7[1] = v38;
    v7[2] = v33;
    v7[3] = v35;
    v39 = *(v37 + 28);
    *(v7 + v39) = swift_getKeyPath();
    sub_100002410(&qword_1000259E0, &qword_1000183F0);
    swift_storeEnumTagMultiPayload();
    sub_100010158(v7, v55, type metadata accessor for TireInfoView);
    swift_storeEnumTagMultiPayload();
    sub_100002410(&qword_1000259C0, &qword_1000183B8);
    sub_10000EC84(&qword_1000259C8, type metadata accessor for TireInfoView, &unk_100018568);
    sub_100012468(&qword_1000259D0, &qword_1000259C0, &qword_1000183B8, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();

    sub_1000101C0(v7);
  }

  else
  {
    v41 = static VerticalAlignment.center.getter();
    LOBYTE(v60) = 1;
    sub_100009B54(v59);
    *&v58[55] = v59[3];
    *&v58[39] = v59[2];
    *&v58[23] = v59[1];
    *&v58[7] = v59[0];
    v42 = *v58;
    v43 = v55;
    *(v55 + 33) = *&v58[16];
    v44 = *&v58[48];
    *(v43 + 49) = *&v58[32];
    *(v43 + 65) = v44;
    v45 = v60;
    *v43 = v41;
    *(v43 + 8) = 0;
    *(v43 + 16) = v45;
    *(v43 + 80) = *&v58[63];
    *(v43 + 17) = v42;
    swift_storeEnumTagMultiPayload();
    sub_100002410(&qword_1000259C0, &qword_1000183B8);
    sub_10000EC84(&qword_1000259C8, type metadata accessor for TireInfoView, &unk_100018568);
    sub_100012468(&qword_1000259D0, &qword_1000259C0, &qword_1000183B8, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
  }

  return (*(v27 + 8))(v30, v28);
}

uint64_t sub_100008728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = type metadata accessor for Image.Interpolation();
  v97 = *(v3 - 8);
  v98 = v3;
  __chkstk_darwin(v3);
  v95 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Image.ResizingMode();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v91 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002410(&qword_100025978, &qword_100018370);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v90 - v11;
  v13 = sub_100002410(&qword_100025980, &qword_100018378);
  v14 = __chkstk_darwin(v13);
  v99 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v90 - v16;
  v18 = sub_100002410(&qword_100025988, &qword_100018380);
  v19 = __chkstk_darwin(v18);
  v101 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v102 = &v90 - v22;
  v23 = __chkstk_darwin(v21);
  v96 = &v90 - v24;
  v25 = __chkstk_darwin(v23);
  v100 = &v90 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v90 - v28;
  __chkstk_darwin(v27);
  v31 = &v90 - v30;
  *v12 = static HorizontalAlignment.trailing.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v90 = sub_100002410(&qword_100025990, &qword_100018388);
  sub_10000901C(&v12[*(v90 + 44)]);
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000116FC(v12, v17, &qword_100025978, &qword_100018370);
  v32 = v13;
  v33 = &v17[*(v13 + 36)];
  v34 = v131;
  v35 = v133;
  *(v33 + 4) = v132;
  *(v33 + 5) = v35;
  *(v33 + 6) = v134;
  v36 = v129;
  *v33 = v128;
  *(v33 + 1) = v36;
  *(v33 + 2) = v130;
  *(v33 + 3) = v34;
  v37 = sub_1000096A8(&enum case for CAUAppUIConfiguration.Element.tpms_leftTop_label_top_padding(_:), &enum case for CAUAppUIConfiguration.Element.tpms_leftBottom_label_bottom_padding(_:));
  v39 = v38;
  v41 = v40;
  v43 = v42;
  LOBYTE(v12) = static Edge.Set.all.getter();
  sub_1000116FC(v17, v29, &qword_100025980, &qword_100018378);
  v44 = v18;
  v45 = &v29[*(v18 + 36)];
  *v45 = v12;
  *(v45 + 1) = v37;
  *(v45 + 2) = v39;
  *(v45 + 3) = v41;
  *(v45 + 4) = v43;
  v45[40] = 0;
  v92 = v31;
  sub_1000116FC(v29, v31, &qword_100025988, &qword_100018380);
  v46 = *(a1 + *(type metadata accessor for CarView(0) + 40));
  v47 = sub_10000580C();
  if (!UIImage.rotated90Degrees(clockwise:)(v47 & 1))
  {
    v48 = v46;
  }

  Image.init(uiImage:)();
  v50 = v93;
  v49 = v94;
  v51 = v91;
  (*(v93 + 104))(v91, enum case for Image.ResizingMode.stretch(_:), v94);
  Image.resizable(capInsets:resizingMode:)();

  (*(v50 + 8))(v51, v49);
  v53 = v97;
  v52 = v98;
  v54 = v95;
  (*(v97 + 104))(v95, enum case for Image.Interpolation.high(_:), v98);
  v55 = Image.interpolation(_:)();
  v94 = v55;

  (*(v53 + 8))(v54, v52);
  v56 = sub_100009218();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  LODWORD(v98) = static Edge.Set.all.getter();
  v126 = 1;
  v122 = 0;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1000094AC(&v10[*(v90 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v63 = v10;
  v64 = v99;
  sub_1000116FC(v63, v99, &qword_100025978, &qword_100018370);
  v65 = (v64 + *(v32 + 36));
  v66 = v140;
  v65[4] = v139;
  v65[5] = v66;
  v65[6] = v141;
  v67 = v136;
  *v65 = v135;
  v65[1] = v67;
  v68 = v138;
  v65[2] = v137;
  v65[3] = v68;
  v69 = sub_1000096A8(&enum case for CAUAppUIConfiguration.Element.tpms_rightTop_label_top_padding(_:), &enum case for CAUAppUIConfiguration.Element.tpms_rightBottom_label_bottom_padding(_:));
  v71 = v70;
  v73 = v72;
  v75 = v74;
  LOBYTE(v52) = static Edge.Set.all.getter();
  v76 = v96;
  sub_1000116FC(v64, v96, &qword_100025980, &qword_100018378);
  v77 = v76 + *(v44 + 36);
  *v77 = v52;
  *(v77 + 8) = v69;
  *(v77 + 16) = v71;
  *(v77 + 24) = v73;
  *(v77 + 32) = v75;
  *(v77 + 40) = 0;
  v78 = v100;
  sub_1000116FC(v76, v100, &qword_100025988, &qword_100018380);
  v79 = v92;
  v80 = v102;
  sub_100011764(v92, v102, &qword_100025988, &qword_100018380);
  v81 = v101;
  sub_100011764(v78, v101, &qword_100025988, &qword_100018380);
  v82 = v103;
  sub_100011764(v80, v103, &qword_100025988, &qword_100018380);
  v83 = sub_100002410(&qword_100025998, &qword_100018390);
  v84 = (v82 + *(v83 + 48));
  v104[0] = v55;
  v104[1] = 0;
  LOWORD(v105) = 1;
  *(&v105 + 2) = v124;
  WORD3(v105) = v125;
  v85 = v98;
  BYTE8(v105) = v98;
  HIDWORD(v105) = *&v123[3];
  *(&v105 + 9) = *v123;
  *&v106 = v56;
  *(&v106 + 1) = v58;
  *&v107 = v60;
  *(&v107 + 1) = v62;
  LOBYTE(v108) = 0;
  *(&v108 + 1) = *v127;
  DWORD1(v108) = *&v127[3];
  *(&v108 + 1) = 0x3FF0000000000000;
  v86 = v105;
  v87 = v108;
  v84[3] = v107;
  v84[4] = v87;
  v88 = v106;
  v84[1] = v86;
  v84[2] = v88;
  *v84 = v55;
  sub_100011764(v81, v82 + *(v83 + 64), &qword_100025988, &qword_100018380);
  sub_100011764(v104, v109, &qword_1000259A0, &qword_100018398);
  sub_100012120(v78, &qword_100025988, &qword_100018380);
  sub_100012120(v79, &qword_100025988, &qword_100018380);
  sub_100012120(v81, &qword_100025988, &qword_100018380);
  v109[0] = v94;
  v109[1] = 0;
  v110 = 1;
  v111 = v124;
  v112 = v125;
  v113 = v85;
  *v114 = *v123;
  *&v114[3] = *&v123[3];
  v115 = v56;
  v116 = v58;
  v117 = v60;
  v118 = v62;
  v119 = 0;
  *v120 = *v127;
  *&v120[3] = *&v127[3];
  v121 = 0x3FF0000000000000;
  sub_100012120(v109, &qword_1000259A0, &qword_100018398);
  return sub_100012120(v80, &qword_100025988, &qword_100018380);
}

uint64_t sub_10000901C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002410(&qword_1000259A8, &qword_1000183A0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v17 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = (&v17 - v10);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_100007EA4(&enum case for CAUVehicleLayoutKey.tire_rear_left(_:), &enum case for CAUVehicleLayoutKey.tire_front_right(_:), &enum case for CAUVehicleLayoutKey.tire_front_left(_:), (&v17 - v12));
  sub_100007EA4(&enum case for CAUVehicleLayoutKey.tire_rear_right(_:), &enum case for CAUVehicleLayoutKey.tire_front_left(_:), &enum case for CAUVehicleLayoutKey.tire_rear_left(_:), v11);
  sub_100011764(v13, v8, &qword_1000259A8, &qword_1000183A0);
  sub_100011764(v11, v5, &qword_1000259A8, &qword_1000183A0);
  sub_100011764(v8, a1, &qword_1000259A8, &qword_1000183A0);
  v14 = sub_100002410(&qword_1000259B0, &qword_1000183A8);
  v15 = a1 + *(v14 + 48);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_100011764(v5, a1 + *(v14 + 64), &qword_1000259A8, &qword_1000183A0);
  sub_100012120(v11, &qword_1000259A8, &qword_1000183A0);
  sub_100012120(v13, &qword_1000259A8, &qword_1000183A0);
  sub_100012120(v5, &qword_1000259A8, &qword_1000183A0);
  return sub_100012120(v8, &qword_1000259A8, &qword_1000183A0);
}

double sub_100009218()
{
  v0 = sub_100002410(&qword_1000256D0, &qword_1000180F8);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CAUWidgetContentMargins();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v6);
  CAUAppUIConfiguration.Configuration.padding.getter();
  (*(v4 + 8))(v6, v3);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_100012120(v2, &qword_1000256D0, &qword_1000180F8);
    return 0.0;
  }

  else
  {
    (*(v8 + 32))(v10, v2, v7);
    CAUWidgetContentMargins.top.getter();
    v11 = v12;
    CAUWidgetContentMargins.leading.getter();
    CAUWidgetContentMargins.bottom.getter();
    CAUWidgetContentMargins.trailing.getter();
    (*(v8 + 8))(v10, v7);
  }

  return v11;
}

uint64_t sub_1000094AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002410(&qword_1000259A8, &qword_1000183A0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v17 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = (&v17 - v10);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_100007EA4(&enum case for CAUVehicleLayoutKey.tire_front_left(_:), &enum case for CAUVehicleLayoutKey.tire_rear_right(_:), &enum case for CAUVehicleLayoutKey.tire_front_right(_:), (&v17 - v12));
  sub_100007EA4(&enum case for CAUVehicleLayoutKey.tire_front_right(_:), &enum case for CAUVehicleLayoutKey.tire_rear_left(_:), &enum case for CAUVehicleLayoutKey.tire_rear_right(_:), v11);
  sub_100011764(v13, v8, &qword_1000259A8, &qword_1000183A0);
  sub_100011764(v11, v5, &qword_1000259A8, &qword_1000183A0);
  sub_100011764(v8, a1, &qword_1000259A8, &qword_1000183A0);
  v14 = sub_100002410(&qword_1000259B0, &qword_1000183A8);
  v15 = a1 + *(v14 + 48);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_100011764(v5, a1 + *(v14 + 64), &qword_1000259A8, &qword_1000183A0);
  sub_100012120(v11, &qword_1000259A8, &qword_1000183A0);
  sub_100012120(v13, &qword_1000259A8, &qword_1000183A0);
  sub_100012120(v5, &qword_1000259A8, &qword_1000183A0);
  return sub_100012120(v8, &qword_1000259A8, &qword_1000183A0);
}

double sub_1000096A8(unsigned int *a1, unsigned int *a2)
{
  v50 = a2;
  v47 = a1;
  v3 = type metadata accessor for CAUAppUIConfiguration.Element();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  v9 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = (&v43 - v14);
  v16 = type metadata accessor for CAUAppUIConfiguration.ElementData();
  v45 = *(v16 - 8);
  v46 = v16;
  v17 = __chkstk_darwin(v16);
  v44 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v43 - v19;
  v49 = v2;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v15);
  v21 = CAUAppUIConfiguration.Configuration.elementData.getter();
  v22 = *(v10 + 8);
  v48 = v9;
  v22(v15, v9);
  v23 = *(v4 + 104);
  v23(v8, *v47, v3);
  v24 = *(v21 + 16);
  v52 = v4;
  if (v24 && (v25 = sub_100015424(v8), (v26 & 1) != 0))
  {
    v27 = *(v21 + 56);
    v47 = v3;
    v28 = v45;
    (*(v45 + 16))(v20, v27 + *(v45 + 72) * v25, v46);
    v29 = *(v4 + 8);
    v29(v8, v47);

    v30 = COERCE_DOUBLE(CAUAppUIConfiguration.ElementData.cgFloatValue.getter());
    v32 = v31;
    v33 = v28;
    v3 = v47;
    (*(v33 + 8))(v20, v46);
    if (v32)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = v30;
    }
  }

  else
  {

    v29 = *(v4 + 8);
    v29(v8, v3);
    v34 = 0.0;
  }

  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v13);
  v35 = CAUAppUIConfiguration.Configuration.elementData.getter();
  v22(v13, v48);
  v36 = v51;
  v23(v51, *v50, v3);
  if (*(v35 + 16) && (v37 = sub_100015424(v36), (v38 & 1) != 0))
  {
    v40 = v44;
    v39 = v45;
    v41 = v46;
    (*(v45 + 16))(v44, *(v35 + 56) + *(v45 + 72) * v37, v46);
    v29(v36, v3);

    CAUAppUIConfiguration.ElementData.cgFloatValue.getter();
    (*(v39 + 8))(v40, v41);
  }

  else
  {

    v29(v36, v3);
  }

  return v34;
}

uint64_t sub_100009B54@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_100002410(&qword_1000259E8, &qword_1000183F8);
  __chkstk_darwin(v1 - 8);
  v50 = (&v44 - v2);
  v3 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = 11565;
  v54 = 0xE200000000000000;
  v44 = sub_10001021C();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v6);
  sub_100012BD0(v6);
  v46 = v4;
  v47 = v3;
  (*(v4 + 8))(v6, v3);
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;

  sub_100010270(v7, v9, v11 & 1);

  if (qword_100025268 != -1)
  {
    swift_once();
  }

  v48 = Text.foregroundColor(_:)();
  v49 = v17;
  v19 = v18;
  v45 = v20;
  sub_100010270(v12, v14, v16 & 1);

  v53 = 0x2020202020;
  v54 = 0xE500000000000000;
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  v26 = v50;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v50);
  (*(v46 + 56))(v26, 0, 1, v47);
  sub_1000138A4(v26);
  sub_100012120(v26, &qword_1000259E8, &qword_1000183F8);
  v27 = Text.font(_:)();
  v29 = v28;
  v31 = v30;

  sub_100010270(v21, v23, v25 & 1);

  if (qword_100025270 != -1)
  {
    swift_once();
  }

  v32 = Text.foregroundColor(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_100010270(v27, v29, v31 & 1);

  v39 = v45 & 1;
  v52 = v45 & 1;
  LOBYTE(v53) = v45 & 1;
  v55 = v36 & 1;
  v40 = v51;
  v42 = v48;
  v41 = v49;
  *v51 = v48;
  v40[1] = v19;
  *(v40 + 16) = v39;
  v40[3] = v41;
  v40[4] = v32;
  v40[5] = v34;
  *(v40 + 48) = v36 & 1;
  v40[7] = v38;
  sub_100010280(v42, v19, v39);

  sub_100010280(v32, v34, v36 & 1);

  sub_100010270(v32, v34, v36 & 1);

  sub_100010270(v42, v19, v52);
}

id sub_100009FA8(uint64_t a1)
{
  v21 = a1;
  v22 = type metadata accessor for CAUVehicleLayoutKey();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v1 + *(type metadata accessor for CarView(0) + 28)) tire];
  if (result)
  {
    v6 = result;
    v7 = [result tirePressures];
    v20 = sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = v6;
    if (v8 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      v18 = v8 & 0xFFFFFFFFFFFFFF8;
      v19 = v8 & 0xC000000000000001;
      v11 = (v2 + 8);
      while (1)
      {
        if (v19)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *(v18 + 16))
          {
            goto LABEL_18;
          }

          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        CAFPositionedRequired.layoutKey.getter();
        sub_10000EC84(&qword_100025A00, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v2 = v26;
        if (v25 == v23 && v26 == v24)
        {
          (*v11)(v4, v22);

LABEL_16:

          sub_10000F104(&qword_100025A08, &qword_1000259F8, CAFTirePressure_ptr, &protocol conformance descriptor for CAFTirePressure);
          v16 = CAFObserved<>.observable.getter();

          return v16;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        (*v11)(v4, v22);

        if (v15)
        {
          goto LABEL_16;
        }

        ++v10;
        if (v14 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:

    return 0;
  }

  return result;
}

uint64_t sub_10000A2E4@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002410(&qword_1000257D8, &qword_100018290);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TireInfoView(0);
  sub_100011764(v1 + *(v10 + 24), v9, &qword_1000257D8, &qword_100018290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for CAUAppUIConfiguration.Configuration();
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

uint64_t sub_10000A4F0@<X0>(uint64_t a1@<X8>)
{
  *&v229 = a1;
  v221 = sub_100002410(&qword_100025CB0, &qword_1000185B8);
  __chkstk_darwin(v221);
  v203 = (v193 - v2);
  v219 = sub_100002410(&qword_100025CB8, &qword_1000185C0);
  __chkstk_darwin(v219);
  v220 = v193 - v3;
  v4 = sub_100002410(&qword_1000259E8, &qword_1000183F8);
  __chkstk_darwin(v4 - 8);
  v210 = (v193 - v5);
  v225 = sub_100002410(&qword_100025CC0, &qword_1000185C8);
  __chkstk_darwin(v225);
  v227 = (v193 - v6);
  v226 = sub_100002410(&qword_100025CC8, &qword_1000185D0);
  __chkstk_darwin(v226);
  v212 = v193 - v7;
  v8 = sub_100002410(&qword_100025CD0, &qword_1000185D8);
  v9 = __chkstk_darwin(v8 - 8);
  v200 = v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v201 = v193 - v12;
  v13 = __chkstk_darwin(v11);
  v199 = v193 - v14;
  v15 = __chkstk_darwin(v13);
  v202 = v193 - v16;
  v17 = __chkstk_darwin(v15);
  v215 = v193 - v18;
  v19 = __chkstk_darwin(v17);
  v216 = v193 - v20;
  v21 = __chkstk_darwin(v19);
  v205 = v193 - v22;
  v23 = __chkstk_darwin(v21);
  v206 = v193 - v24;
  v25 = __chkstk_darwin(v23);
  *&v204 = v193 - v26;
  __chkstk_darwin(v25);
  *&v222 = v193 - v27;
  v218 = sub_100002410(&qword_100025CD8, &qword_1000185E0);
  __chkstk_darwin(v218);
  v223 = (v193 - v28);
  v29 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v207 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v32 = v193 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = v193 - v33;
  v35 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  *&v224 = *(v35 - 8);
  v36 = __chkstk_darwin(v35);
  *&v208 = v193 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = (v193 - v38);
  v40 = sub_100002410(&qword_100025CE0, &qword_1000185E8);
  v228 = *(v40 - 8);
  __chkstk_darwin(v40);
  v217 = v193 - v41;
  v42 = v1;
  v43 = CAFTirePressureObservable.observed.getter();
  v44 = [v43 receivedAllValues];

  if (v44)
  {
    v198 = v40;
    v45 = sub_10000BF0C();
    v213 = v47;
    v214 = v46;
    v196 = v48;
    sub_10000C3E0(&v235);
    v195 = v235;
    sub_10000C6E0(&v242);
    v197 = v242;
    *&v211 = v42;
    sub_10000A2E4(v39);
    CAUAppUIConfiguration.Configuration.layoutStyle.getter();
    v49 = *(v224 + 8);
    v209 = v35;
    v193[1] = v224 + 8;
    v194 = v49;
    v49(v39, v35);
    v50 = v207;
    (*(v207 + 104))(v32, enum case for CAUAppUIConfiguration.LayoutStyle.landscape(_:), v29);
    sub_10000EC84(&qword_100025928, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle, &protocol conformance descriptor for CAUAppUIConfiguration.LayoutStyle);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v254 == v249)
    {
      v51 = *(v50 + 8);
      v51(v32, v29);
      v51(v34, v29);
    }

    else
    {
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v56 = *(v50 + 8);
      v56(v32, v29);
      v56(v34, v29);

      if ((v55 & 1) == 0)
      {
        v126 = static HorizontalAlignment.center.getter();
        v127 = v203;
        *v203 = v126;
        v127[1] = 0;
        *(v127 + 16) = 1;
        *&v254 = v45;
        *(&v254 + 1) = v214;
        v128 = sub_10001021C();

        v223 = v128;
        v129 = Text.init<A>(_:)();
        v131 = v130;
        v133 = v132;
        v134 = v208;
        sub_10000A2E4(v208);
        sub_100012BD0(v134);
        v194(v134, v209);
        v135 = Text.font(_:)();
        v137 = v136;
        v139 = v138;
        v141 = v140;

        sub_100010270(v129, v131, v133 & 1);

        if (v195)
        {
          v142 = Text.foregroundColor(_:)();
          v144 = v143;
          *&v249 = v142;
          *(&v249 + 1) = v143;
          v146 = v145 & 1;
          *&v250 = v145 & 1;
          *(&v250 + 1) = v147;
          LOBYTE(v251) = 0;
          sub_100010280(v142, v143, v145 & 1);

          sub_100010280(v142, v144, v146);

          _ConditionalContent<>.init(storage:)();
          sub_100010270(v135, v137, v139 & 1);

          sub_100010270(v142, v144, v146);

          sub_100010270(v142, v144, v146);
        }

        else
        {
          *&v249 = v135;
          *(&v249 + 1) = v137;
          *&v250 = v139 & 1;
          *(&v250 + 1) = v141;
          LOBYTE(v251) = 1;
          _ConditionalContent<>.init(storage:)();
        }

        v148 = v255;
        v149 = v256;
        v150 = v199;
        if (v241)
        {
          v151 = v227;
          *v227 = v254;
          v151[1] = v148;
          *(v151 + 32) = v149;
          swift_storeEnumTagMultiPayload();
          sub_100002410(&qword_100025CE8, &qword_1000185F0);
          sub_1000115C8();
          sub_100011680();
          _ConditionalContent<>.init(storage:)();
        }

        else
        {
          v152 = v212;
          v153 = &v212[*(v226 + 36)];
          v222 = v254;
          v208 = v255;
          v256 = v238;
          v257 = v239;
          v258 = v240;
          v254 = v236;
          v255 = v237;
          View._colorMatrix(_:)();
          v154 = &v153[*(sub_100002410(&qword_100025808, &qword_1000182C0) + 36)];
          *v154 = 0x403E000000000000;
          v154[8] = 1;
          v155 = v208;
          *v152 = v222;
          *(v152 + 16) = v155;
          *(v152 + 32) = v149;
          sub_100011764(v152, v227, &qword_100025CC8, &qword_1000185D0);
          swift_storeEnumTagMultiPayload();
          sub_100002410(&qword_100025CE8, &qword_1000185F0);
          sub_1000115C8();
          sub_100011680();
          _ConditionalContent<>.init(storage:)();
          sub_100012120(v152, &qword_100025CC8, &qword_1000185D0);
        }

        v156 = v209;
        v157 = v224;
        sub_1000116FC(v150, v202, &qword_100025CD0, &qword_1000185D8);
        *&v249 = v196;
        *(&v249 + 1) = v213;

        v158 = Text.init<A>(_:)();
        v160 = v159;
        v162 = v161;
        v163 = v210;
        sub_10000A2E4(v210);
        (*(v157 + 56))(v163, 0, 1, v156);
        sub_1000138A4(v163);
        sub_100012120(v163, &qword_1000259E8, &qword_1000183F8);
        v164 = Text.font(_:)();
        v166 = v165;
        v168 = v167;
        v170 = v169;

        sub_100010270(v158, v160, v162 & 1);

        if (v197)
        {
          v171 = Text.foregroundColor(_:)();
          v173 = v172;
          v230 = v171;
          v231 = v172;
          v175 = v174 & 1;
          v232 = v174 & 1;
          v233 = v176;
          v234 = 0;
          sub_100010280(v171, v172, v174 & 1);

          sub_100010280(v171, v173, v175);

          _ConditionalContent<>.init(storage:)();
          sub_100010270(v164, v166, v168 & 1);

          sub_100010270(v171, v173, v175);

          sub_100010270(v171, v173, v175);
        }

        else
        {
          v230 = v164;
          v231 = v166;
          v232 = v168 & 1;
          v233 = v170;
          v234 = 1;
          _ConditionalContent<>.init(storage:)();
        }

        v177 = v250;
        v178 = v251;
        v125 = v229;
        v179 = v200;
        if (v248)
        {
          v180 = v227;
          *v227 = v249;
          v180[1] = v177;
          *(v180 + 32) = v178;
          swift_storeEnumTagMultiPayload();
          sub_100002410(&qword_100025CE8, &qword_1000185F0);
          sub_1000115C8();
          sub_100011680();
          _ConditionalContent<>.init(storage:)();
        }

        else
        {
          v181 = v212;
          v182 = &v212[*(v226 + 36)];
          v229 = v249;
          v224 = v250;
          v251 = v245;
          v252 = v246;
          v253 = v247;
          v249 = v243;
          v250 = v244;
          View._colorMatrix(_:)();
          v183 = &v182[*(sub_100002410(&qword_100025808, &qword_1000182C0) + 36)];
          *v183 = 0x403E000000000000;
          v183[8] = 1;
          v184 = v224;
          *v181 = v229;
          *(v181 + 16) = v184;
          *(v181 + 32) = v178;
          sub_100011764(v181, v227, &qword_100025CC8, &qword_1000185D0);
          swift_storeEnumTagMultiPayload();
          sub_100002410(&qword_100025CE8, &qword_1000185F0);
          sub_1000115C8();
          sub_100011680();
          _ConditionalContent<>.init(storage:)();
          sub_100012120(v181, &qword_100025CC8, &qword_1000185D0);
        }

        v185 = sub_100002410(&qword_100025D10, &qword_100018600);
        v186 = v203;
        v187 = v203 + *(v185 + 44);
        v188 = v201;
        sub_1000116FC(v179, v201, &qword_100025CD0, &qword_1000185D8);
        v189 = v202;
        v190 = v216;
        sub_100011764(v202, v216, &qword_100025CD0, &qword_1000185D8);
        v191 = v215;
        sub_100011764(v188, v215, &qword_100025CD0, &qword_1000185D8);
        sub_100011764(v190, v187, &qword_100025CD0, &qword_1000185D8);
        v192 = sub_100002410(&qword_100025D18, &qword_100018608);
        sub_100011764(v191, v187 + *(v192 + 48), &qword_100025CD0, &qword_1000185D8);
        sub_100012120(v188, &qword_100025CD0, &qword_1000185D8);
        sub_100012120(v189, &qword_100025CD0, &qword_1000185D8);
        sub_100012120(v191, &qword_100025CD0, &qword_1000185D8);
        sub_100012120(v190, &qword_100025CD0, &qword_1000185D8);

        sub_100011764(v186, v220, &qword_100025CB0, &qword_1000185B8);
        swift_storeEnumTagMultiPayload();
        sub_100012468(&qword_100025D20, &qword_100025CD8, &qword_1000185E0, &protocol conformance descriptor for HStack<A>);
        sub_100012468(&qword_100025D28, &qword_100025CB0, &qword_1000185B8, &protocol conformance descriptor for VStack<A>);
        v110 = v217;
        _ConditionalContent<>.init(storage:)();
        sub_100012120(&v235, &qword_100025D30, &qword_100018610);
        sub_100012120(&v242, &qword_100025D30, &qword_100018610);
        sub_100012120(v186, &qword_100025CB0, &qword_1000185B8);
        goto LABEL_34;
      }
    }

    v57 = static VerticalAlignment.center.getter();
    v58 = v223;
    *v223 = v57;
    v58[1] = 0;
    *(v58 + 16) = 1;
    *&v254 = v45;
    *(&v254 + 1) = v214;
    v59 = sub_10001021C();

    v207 = v59;
    v60 = Text.init<A>(_:)();
    v62 = v61;
    v64 = v63;
    v65 = v208;
    sub_10000A2E4(v208);
    sub_100012BD0(v65);
    v194(v65, v209);
    v66 = Text.font(_:)();
    v68 = v67;
    v70 = v69;
    v72 = v71;

    sub_100010270(v60, v62, v64 & 1);

    if (v195)
    {
      v73 = Text.foregroundColor(_:)();
      v75 = v74;
      *&v249 = v73;
      *(&v249 + 1) = v74;
      v77 = v76 & 1;
      *&v250 = v76 & 1;
      *(&v250 + 1) = v78;
      LOBYTE(v251) = 0;
      sub_100010280(v73, v74, v76 & 1);

      sub_100010280(v73, v75, v77);

      _ConditionalContent<>.init(storage:)();
      sub_100010270(v66, v68, v70 & 1);

      sub_100010270(v73, v75, v77);

      sub_100010270(v73, v75, v77);
    }

    else
    {
      *&v249 = v66;
      *(&v249 + 1) = v68;
      *&v250 = v70 & 1;
      *(&v250 + 1) = v72;
      LOBYTE(v251) = 1;
      _ConditionalContent<>.init(storage:)();
    }

    v79 = v255;
    v80 = v256;
    v81 = v204;
    if (v241)
    {
      v82 = v227;
      *v227 = v254;
      v82[1] = v79;
      *(v82 + 32) = v80;
      swift_storeEnumTagMultiPayload();
      sub_100002410(&qword_100025CE8, &qword_1000185F0);
      sub_1000115C8();
      sub_100011680();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v83 = v212;
      v84 = &v212[*(v226 + 36)];
      v208 = v254;
      v204 = v255;
      v256 = v238;
      v257 = v239;
      v258 = v240;
      v254 = v236;
      v255 = v237;
      View._colorMatrix(_:)();
      v85 = &v84[*(sub_100002410(&qword_100025808, &qword_1000182C0) + 36)];
      *v85 = 0x403E000000000000;
      v85[8] = 1;
      v86 = v204;
      *v83 = v208;
      *(v83 + 16) = v86;
      *(v83 + 32) = v80;
      sub_100011764(v83, v227, &qword_100025CC8, &qword_1000185D0);
      swift_storeEnumTagMultiPayload();
      sub_100002410(&qword_100025CE8, &qword_1000185F0);
      sub_1000115C8();
      sub_100011680();
      _ConditionalContent<>.init(storage:)();
      sub_100012120(v83, &qword_100025CC8, &qword_1000185D0);
    }

    v87 = v209;
    v88 = v224;
    sub_1000116FC(v81, v222, &qword_100025CD0, &qword_1000185D8);
    *&v249 = v196;
    *(&v249 + 1) = v213;

    v89 = Text.init<A>(_:)();
    v91 = v90;
    v93 = v92;
    v94 = v210;
    sub_10000A2E4(v210);
    (*(v88 + 56))(v94, 0, 1, v87);
    sub_1000138A4(v94);
    sub_100012120(v94, &qword_1000259E8, &qword_1000183F8);
    v95 = Text.font(_:)();
    v97 = v96;
    v99 = v98;
    v101 = v100;

    sub_100010270(v89, v91, v93 & 1);

    if (v197)
    {
      v102 = Text.foregroundColor(_:)();
      v104 = v103;
      v230 = v102;
      v231 = v103;
      v106 = v105 & 1;
      v232 = v105 & 1;
      v233 = v107;
      v234 = 0;
      sub_100010280(v102, v103, v105 & 1);

      sub_100010280(v102, v104, v106);

      _ConditionalContent<>.init(storage:)();
      sub_100010270(v95, v97, v99 & 1);

      sub_100010270(v102, v104, v106);

      sub_100010270(v102, v104, v106);
    }

    else
    {
      v230 = v95;
      v231 = v97;
      v232 = v99 & 1;
      v233 = v101;
      v234 = 1;
      _ConditionalContent<>.init(storage:)();
    }

    v108 = v250;
    v109 = v251;
    v110 = v217;
    v111 = v205;
    if (v248)
    {
      v112 = v227;
      *v227 = v249;
      v112[1] = v108;
      *(v112 + 32) = v109;
      swift_storeEnumTagMultiPayload();
      sub_100002410(&qword_100025CE8, &qword_1000185F0);
      sub_1000115C8();
      sub_100011680();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v113 = v212;
      v114 = &v212[*(v226 + 36)];
      v224 = v249;
      v211 = v250;
      v251 = v245;
      v252 = v246;
      v253 = v247;
      v249 = v243;
      v250 = v244;
      View._colorMatrix(_:)();
      v115 = &v114[*(sub_100002410(&qword_100025808, &qword_1000182C0) + 36)];
      *v115 = 0x403E000000000000;
      v115[8] = 1;
      v116 = v211;
      *v113 = v224;
      *(v113 + 16) = v116;
      *(v113 + 32) = v109;
      sub_100011764(v113, v227, &qword_100025CC8, &qword_1000185D0);
      swift_storeEnumTagMultiPayload();
      sub_100002410(&qword_100025CE8, &qword_1000185F0);
      sub_1000115C8();
      sub_100011680();
      _ConditionalContent<>.init(storage:)();
      sub_100012120(v113, &qword_100025CC8, &qword_1000185D0);
    }

    v117 = sub_100002410(&qword_100025D38, &qword_100018618);
    v118 = v223;
    v119 = v223 + *(v117 + 44);
    v120 = v206;
    sub_1000116FC(v111, v206, &qword_100025CD0, &qword_1000185D8);
    v121 = v222;
    v122 = v216;
    sub_100011764(v222, v216, &qword_100025CD0, &qword_1000185D8);
    v123 = v215;
    sub_100011764(v120, v215, &qword_100025CD0, &qword_1000185D8);
    sub_100011764(v122, v119, &qword_100025CD0, &qword_1000185D8);
    v124 = sub_100002410(&qword_100025D18, &qword_100018608);
    sub_100011764(v123, v119 + *(v124 + 48), &qword_100025CD0, &qword_1000185D8);
    sub_100012120(v120, &qword_100025CD0, &qword_1000185D8);
    sub_100012120(v121, &qword_100025CD0, &qword_1000185D8);
    sub_100012120(v123, &qword_100025CD0, &qword_1000185D8);
    sub_100012120(v122, &qword_100025CD0, &qword_1000185D8);

    sub_100011764(v118, v220, &qword_100025CD8, &qword_1000185E0);
    swift_storeEnumTagMultiPayload();
    sub_100012468(&qword_100025D20, &qword_100025CD8, &qword_1000185E0, &protocol conformance descriptor for HStack<A>);
    sub_100012468(&qword_100025D28, &qword_100025CB0, &qword_1000185B8, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    sub_100012120(&v235, &qword_100025D30, &qword_100018610);
    sub_100012120(&v242, &qword_100025D30, &qword_100018610);
    sub_100012120(v118, &qword_100025CD8, &qword_1000185E0);
    v125 = v229;
LABEL_34:
    sub_1000116FC(v110, v125, &qword_100025CE0, &qword_1000185E8);
    return (*(v228 + 56))(v125, 0, 1, v198);
  }

  v52 = v229;
  v53 = *(v228 + 56);

  return v53(v52, 1, 1, v40);
}

uint64_t sub_10000BF0C()
{
  v1 = v0;
  v2 = sub_100002410(&qword_100025D40, &qword_100018620);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v34 - v6;
  v8 = sub_100002410(&qword_100025D48, &qword_100018628);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = CAFTirePressureObservable.observed.getter();
  v16 = [v15 receivedAllValues];

  if (!v16 || (dispatch thunk of CAFTirePressureObservable.sensorState.getter() & 0x1FF) != 1)
  {
    goto LABEL_5;
  }

  dispatch thunk of CAFTirePressureObservable.pressure.getter();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100012120(v7, &qword_100025D40, &qword_100018620);
LABEL_5:
    if ((dispatch thunk of CAFTirePressureObservable.sensorState.getter() & 0x100) == 0)
    {
      dispatch thunk of CAFTirePressureObservable.pressure.getter();
      sub_100012120(v5, &qword_100025D40, &qword_100018620);
    }

    v17 = *(v0 + 16);
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v22 = *(v0 + 16);
  if (v22)
  {
    v23 = v22;
    Measurement<>.toTirePressureUnit(using:)();

    v35 = *(v9 + 8);
    v35(v7, v8);
    (*(v9 + 32))(v14, v12, v8);
    v24 = [objc_allocWithZone(NSNumberFormatter) init];
    sub_100002458(0, &qword_100025D50, NSUnitPressure_ptr);
    v25 = Measurement.unit.getter();
    v26 = [objc_opt_self() poundsForcePerSquareInch];
    v27 = static NSObject.== infix(_:_:)();

    if (v27)
    {
      [v24 setMaximumFractionDigits:0];
      [v24 setRoundingMode:6];
    }

    else
    {
      [v24 setMaximumFractionDigits:2];
    }

    Measurement.value.getter();
    v29 = [objc_allocWithZone(NSNumber) initWithDouble:v28];
    v30 = [v24 stringFromNumber:v29];

    if (v30)
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = Measurement.unit.getter();
      v33 = [v32 symbol];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35(v14, v8);
      return v31;
    }

    v35(v14, v8);

    v17 = *(v1 + 16);
    if (v17)
    {
LABEL_8:
      v18 = v17;
      v19 = dispatch thunk of CAFDimensionObservable.tirePressureUnit.getter();

      v20 = [v19 symbol];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return 11565;
    }
  }

LABEL_16:
  type metadata accessor for CAFDimensionObservable();
  sub_10000EC84(&qword_100025788, &type metadata accessor for CAFDimensionObservable, &protocol conformance descriptor for CAFDimensionObservable);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10000C3E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v22[-v7];
  v9 = CAFTirePressureObservable.observed.getter();
  v10 = [v9 receivedAllValues];

  if (!v10 || (dispatch thunk of CAFTirePressureObservable.sensorState.getter() & 0x1FF) != 1)
  {
    result = static Color.primary.getter();
    v14 = 1;
    v22[28] = 1;
    goto LABEL_8;
  }

  v11 = dispatch thunk of CAFTirePressureObservable.pressureState.getter();
  if (v11 <= 5)
  {
    v12 = 1 << v11;
    if ((v12 & 5) != 0)
    {
      type metadata accessor for TireInfoView(0);
      sub_10000D49C(&qword_1000259E0, &qword_1000183F0, &type metadata accessor for ColorScheme, v8);
      (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
      v20 = static ColorScheme.== infix(_:_:)();
      v21 = *(v3 + 8);
      v21(v6, v2);
      v21(v8, v2);
      if (v20)
      {
        if (qword_100025258 != -1)
        {
          swift_once();
        }

        v14 = 0;
        result = 0;
        v15 = xmmword_100025500;
        v16 = *algn_100025510;
        v17 = xmmword_100025520;
        v18 = unk_100025530;
        v19 = xmmword_100025540;
        v22[20] = 0;
        goto LABEL_9;
      }

      result = static Color.primary.getter();
      v14 = 1;
      v22[24] = 1;
    }

    else if ((v12 & 0xA) != 0)
    {
      result = static Color.orange.getter();
      v14 = 1;
      v22[16] = 1;
    }

    else
    {
      result = static Color.red.getter();
      v14 = 1;
      v22[12] = 1;
    }

LABEL_8:
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
LABEL_9:
    *a1 = result;
    *(a1 + 8) = v15;
    *(a1 + 24) = v16;
    *(a1 + 40) = v17;
    *(a1 + 56) = v18;
    *(a1 + 72) = v19;
    *(a1 + 88) = v14;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000C6E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v22[-v7];
  v9 = CAFTirePressureObservable.observed.getter();
  v10 = [v9 receivedAllValues];

  if (!v10 || (dispatch thunk of CAFTirePressureObservable.sensorState.getter() & 0x1FF) != 1)
  {
    result = static Color.secondary.getter();
    v14 = 1;
    v22[28] = 1;
    goto LABEL_8;
  }

  v11 = dispatch thunk of CAFTirePressureObservable.pressureState.getter();
  if (v11 <= 5)
  {
    v12 = 1 << v11;
    if ((v12 & 5) != 0)
    {
      type metadata accessor for TireInfoView(0);
      sub_10000D49C(&qword_1000259E0, &qword_1000183F0, &type metadata accessor for ColorScheme, v8);
      (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
      v20 = static ColorScheme.== infix(_:_:)();
      v21 = *(v3 + 8);
      v21(v6, v2);
      v21(v8, v2);
      if (v20)
      {
        if (qword_100025260 != -1)
        {
          swift_once();
        }

        v14 = 0;
        result = 0;
        v15 = xmmword_100025550;
        v16 = unk_100025560;
        v17 = xmmword_100025570;
        v18 = unk_100025580;
        v19 = xmmword_100025590;
        v22[20] = 0;
        goto LABEL_9;
      }

      result = static Color.secondary.getter();
      v14 = 1;
      v22[24] = 1;
    }

    else if ((v12 & 0xA) != 0)
    {
      result = static Color.orange.getter();
      v14 = 1;
      v22[16] = 1;
    }

    else
    {
      result = static Color.red.getter();
      v14 = 1;
      v22[12] = 1;
    }

LABEL_8:
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
LABEL_9:
    *a1 = result;
    *(a1 + 8) = v15;
    *(a1 + 24) = v16;
    *(a1 + 40) = v17;
    *(a1 + 56) = v18;
    *(a1 + 72) = v19;
    *(a1 + 88) = v14;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_10000C9E0()
{
  xmmword_100025500 = xmmword_100017E60;
  *algn_100025510 = xmmword_100017E70;
  xmmword_100025520 = xmmword_100017E80;
  unk_100025530 = xmmword_100017E90;
  result = 0.0;
  xmmword_100025540 = xmmword_100017EA0;
  return result;
}

double sub_10000CA20()
{
  xmmword_100025550 = xmmword_100017EB0;
  unk_100025560 = xmmword_100017EC0;
  xmmword_100025570 = xmmword_100017ED0;
  unk_100025580 = xmmword_100017EE0;
  result = 0.0;
  xmmword_100025590 = xmmword_100017EA0;
  return result;
}

uint64_t sub_10000CA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10000CB34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002410(&qword_100025D58, &qword_100018630);
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = (&v33 - v9);
  v11 = *(v1 + 8);
  v12 = CAFTirePressureObservable.observed.getter();
  v13 = [v12 receivedAllValues];

  if (v13)
  {
    type metadata accessor for CAFDimensionObservable();
    sub_10000EC84(&qword_100025788, &type metadata accessor for CAFDimensionObservable, &protocol conformance descriptor for CAFDimensionObservable);
    v14 = v11;
    v33 = EnvironmentObject.init()();
    v16 = v15;
    v17 = v5;
    KeyPath = swift_getKeyPath();
    v19 = type metadata accessor for TireInfoView(0);
    v34 = v4;
    v35 = a1;
    v20 = v19;
    *(v10 + *(v19 + 24)) = KeyPath;
    sub_100002410(&qword_1000257D8, &qword_100018290);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CAFTirePressureObservable();
    sub_10000EC84(&qword_1000259D8, &type metadata accessor for CAFTirePressureObservable, &protocol conformance descriptor for CAFTirePressureObservable);
    *v10 = ObservedObject.init(wrappedValue:)();
    v10[1] = v21;
    v10[2] = v33;
    v10[3] = v16;
    v22 = *(v20 + 28);
    *(v10 + v22) = swift_getKeyPath();
    sub_100002410(&qword_1000259E0, &qword_1000183F0);
    swift_storeEnumTagMultiPayload();
    v23 = CAFTirePressureObservable.observed.getter();
    sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
    CAFPositionedRequired.layoutKey.getter();

    v24 = type metadata accessor for PositionedTireInfoView(0);
    sub_1000117CC(v7, (v2 + *(v24 + 28)));
    v26 = v25;
    v28 = v27;
    (*(v17 + 8))(v7, v34);
    v29 = (v10 + *(v8 + 36));
    *v29 = v26;
    v29[1] = v28;
    v30 = v35;
    sub_1000116FC(v10, v35, &qword_100025D58, &qword_100018630);
    return (*(v36 + 56))(v30, 0, 1, v8);
  }

  else
  {
    v32 = *(v36 + 56);

    return v32(a1, 1, 1, v8);
  }
}

__n128 sub_10000CEFC@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100002410(&qword_1000257E0, &qword_100018298);
  __chkstk_darwin(v2 - 8);
  v4 = (v11 - v3);
  *v4 = static Alignment.center.getter();
  v4[1] = v5;
  v6 = sub_100002410(&qword_1000257E8, &qword_1000182A0);
  sub_10000D048(v4 + *(v6 + 44));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000116FC(v4, a1, &qword_1000257E0, &qword_100018298);
  v7 = a1 + *(sub_100002410(&qword_1000257F0, &qword_1000182A8) + 36);
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

uint64_t sub_10000D048@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.Interpolation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002410(&qword_1000257F8, &qword_1000182B0);
  v26 = *(v10 - 8);
  v27 = v10;
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() imageNamed:v13];

  if (v14)
  {
    v25 = v14;
    Image.init(uiImage:)();
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    Image.resizable(capInsets:resizingMode:)();

    (*(v7 + 8))(v9, v6);
    (*(v3 + 104))(v5, enum case for Image.Interpolation.high(_:), v2);
    v15 = Image.interpolation(_:)();

    (*(v3 + 8))(v5, v2);
    v16 = &v12[*(sub_100002410(&qword_100025800, &qword_1000182B8) + 36)];
    v31 = xmmword_100017EF0;
    v32 = xmmword_100017F00;
    v33 = xmmword_100017F10;
    v34 = xmmword_100017F20;
    v35 = xmmword_100017EA0;
    View._colorMatrix(_:)();
    v17 = &v16[*(sub_100002410(&qword_100025808, &qword_1000182C0) + 36)];
    *v17 = 0x403E000000000000;
    v17[8] = 0;
    *v12 = v15;
    *(v12 + 1) = 0;
    *(v12 + 8) = 1;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v18 = v27;
    v19 = &v12[*(v27 + 36)];
    v20 = v29;
    *v19 = v28;
    *(v19 + 1) = v20;
    *(v19 + 2) = v30;
    sub_1000116FC(v12, a1, &qword_1000257F8, &qword_1000182B0);
    return (*(v26 + 56))(a1, 0, 1, v18);
  }

  else
  {
    v22 = v27;
    v23 = *(v26 + 56);

    return v23(a1, 1, 1, v22);
  }
}

uint64_t sub_10000D49C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002410(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100011764(v8, &v20 - v15, a1, a2);
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

uint64_t sub_10000D6A0()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  result = Color.init(_:)();
  qword_100026918 = result;
  return result;
}

uint64_t sub_10000D6E0(uint64_t a1)
{
  result = static Color.secondary.getter();
  qword_100026920 = result;
  return result;
}

uint64_t sub_10000D700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002410(&qword_100025D70, &qword_100018648) - 8;
  v8 = __chkstk_darwin(v7);
  v77 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v76 = v69 - v11;
  v12 = __chkstk_darwin(v10);
  v75 = v69 - v13;
  v14 = __chkstk_darwin(v12);
  v74 = v69 - v15;
  v16 = __chkstk_darwin(v14);
  v73 = (v69 - v17);
  v18 = __chkstk_darwin(v16);
  v81 = (v69 - v19);
  v20 = __chkstk_darwin(v18);
  v22 = v69 - v21;
  __chkstk_darwin(v20);
  v24 = v69 - v23;
  *v24 = static HorizontalAlignment.center.getter();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v71 = sub_100002410(&qword_100025D78, &qword_100018650);
  v25 = &v24[*(v71 + 44)];
  v82 = v24;
  sub_10000DD34(a1, v25);
  v26 = *(v4 + 104);
  v80 = v4 + 104;
  v26(v6, enum case for CAUVehicleLayoutKey.tire_front_left(_:), v3);
  v70 = *(type metadata accessor for RedactedTiresView(0) + 24);
  sub_1000117CC(v6, (a1 + v70));
  v28 = v27;
  v30 = v29;
  v79 = *(v4 + 8);
  v31 = v3;
  v79(v6, v3);
  v32 = v7;
  v69[0] = v7;
  v33 = &v24[*(v7 + 44)];
  *v33 = v28;
  *(v33 + 1) = v30;
  *v22 = static HorizontalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v34 = v71;
  v35 = &v22[*(v71 + 44)];
  v72 = v22;
  sub_10000DD34(a1, v35);
  v36 = v26;
  v26(v6, enum case for CAUVehicleLayoutKey.tire_front_right(_:), v3);
  v37 = v70;
  sub_1000117CC(v6, (a1 + v70));
  v39 = v38;
  v41 = v40;
  v42 = v3;
  v69[1] = v4 + 8;
  v43 = v79;
  v79(v6, v42);
  v44 = &v22[*(v32 + 44)];
  *v44 = v39;
  *(v44 + 1) = v41;
  v45 = static HorizontalAlignment.center.getter();
  v46 = v81;
  *v81 = v45;
  v46[1] = 0;
  *(v46 + 16) = 1;
  sub_10000DD34(a1, v46 + *(v34 + 44));
  v36(v6, enum case for CAUVehicleLayoutKey.tire_rear_left(_:), v31);
  sub_1000117CC(v6, (a1 + v37));
  v48 = v47;
  v50 = v49;
  v43(v6, v31);
  v51 = v69[0];
  v52 = (v46 + *(v69[0] + 44));
  v53 = v46;
  *v52 = v48;
  v52[1] = v50;
  v54 = static HorizontalAlignment.center.getter();
  v55 = v73;
  *v73 = v54;
  *(v55 + 8) = 0;
  *(v55 + 16) = 1;
  sub_10000DD34(a1, v55 + *(v34 + 44));
  v36(v6, enum case for CAUVehicleLayoutKey.tire_rear_right(_:), v31);
  sub_1000117CC(v6, (a1 + v37));
  v57 = v56;
  v59 = v58;
  v79(v6, v31);
  v60 = (v55 + *(v51 + 44));
  *v60 = v57;
  v60[1] = v59;
  v61 = v74;
  sub_100011764(v82, v74, &qword_100025D70, &qword_100018648);
  v62 = v72;
  v63 = v75;
  sub_100011764(v72, v75, &qword_100025D70, &qword_100018648);
  v64 = v76;
  sub_100011764(v53, v76, &qword_100025D70, &qword_100018648);
  v65 = v77;
  sub_100011764(v55, v77, &qword_100025D70, &qword_100018648);
  v66 = v78;
  sub_100011764(v61, v78, &qword_100025D70, &qword_100018648);
  v67 = sub_100002410(&qword_100025D80, &qword_100018658);
  sub_100011764(v63, v66 + v67[12], &qword_100025D70, &qword_100018648);
  sub_100011764(v64, v66 + v67[16], &qword_100025D70, &qword_100018648);
  sub_100011764(v65, v66 + v67[20], &qword_100025D70, &qword_100018648);
  sub_100012120(v55, &qword_100025D70, &qword_100018648);
  sub_100012120(v81, &qword_100025D70, &qword_100018648);
  sub_100012120(v62, &qword_100025D70, &qword_100018648);
  sub_100012120(v82, &qword_100025D70, &qword_100018648);
  sub_100012120(v65, &qword_100025D70, &qword_100018648);
  sub_100012120(v64, &qword_100025D70, &qword_100018648);
  sub_100012120(v63, &qword_100025D70, &qword_100018648);
  return sub_100012120(v61, &qword_100025D70, &qword_100018648);
}

uint64_t sub_10000DD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v67 = type metadata accessor for RedactionReasons();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002410(&qword_1000259E8, &qword_1000183F8);
  __chkstk_darwin(v4 - 8);
  v61 = (&v55 - v5);
  v63 = sub_100002410(&qword_100025D88, &qword_100018660);
  v6 = __chkstk_darwin(v63);
  v69 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = &v55 - v8;
  v9 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100002410(&qword_100025D90, &qword_100018668);
  v14 = v13 - 8;
  v15 = __chkstk_darwin(v13);
  v65 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  *&v76 = 11565;
  *(&v76 + 1) = 0xE200000000000000;
  v57 = sub_10001021C();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  v62 = a1;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v12);
  sub_100012BD0(v12);
  v24 = *(v10 + 8);
  v60 = v9;
  v24(v12, v9);
  v55 = Text.font(_:)();
  v26 = v25;
  v28 = v27;
  v56 = v29;

  sub_100010270(v19, v21, v23 & 1);

  v30 = *(v14 + 44);
  if (qword_100025260 != -1)
  {
    swift_once();
  }

  v78 = xmmword_100025570;
  v79 = unk_100025580;
  v80 = xmmword_100025590;
  v76 = xmmword_100025550;
  v77 = unk_100025560;
  View._colorMatrix(_:)();
  v59 = sub_100002410(&qword_100025808, &qword_1000182C0);
  v31 = &v18[v30 + *(v59 + 36)];
  *v31 = 0x403E000000000000;
  v31[8] = 1;
  v58 = v18;
  *v18 = v55;
  *(v18 + 1) = v26;
  v18[16] = v28 & 1;
  *(v18 + 3) = v56;
  *&v71 = 0x2020202020;
  *(&v71 + 1) = 0xE500000000000000;
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  v37 = v61;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v61);
  (*(v10 + 56))(v37, 0, 1, v60);
  sub_1000138A4(v37);
  sub_100012120(v37, &qword_1000259E8, &qword_1000183F8);
  v38 = Text.font(_:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;

  sub_100010270(v32, v34, v36 & 1);

  *&v71 = v38;
  *(&v71 + 1) = v40;
  LOBYTE(v72) = v42 & 1;
  *(&v72 + 1) = v44;
  v45 = v64;
  static RedactionReasons.placeholder.getter();
  v46 = v68;
  View.redacted(reason:)();
  (*(v66 + 8))(v45, v67);
  sub_100010270(v38, v40, v42 & 1);

  v47 = v46 + *(v63 + 36);
  v73 = xmmword_100025570;
  v74 = unk_100025580;
  v75 = xmmword_100025590;
  v71 = xmmword_100025550;
  v72 = unk_100025560;
  View._colorMatrix(_:)();
  v48 = v47 + *(v59 + 36);
  *v48 = 0x403E000000000000;
  *(v48 + 8) = 1;
  v49 = v58;
  v50 = v65;
  sub_100011764(v58, v65, &qword_100025D90, &qword_100018668);
  v51 = v69;
  sub_100011764(v46, v69, &qword_100025D88, &qword_100018660);
  v52 = v70;
  sub_100011764(v50, v70, &qword_100025D90, &qword_100018668);
  v53 = sub_100002410(&qword_100025D98, &qword_100018670);
  sub_100011764(v51, v52 + *(v53 + 48), &qword_100025D88, &qword_100018660);
  sub_100012120(v46, &qword_100025D88, &qword_100018660);
  sub_100012120(v49, &qword_100025D90, &qword_100018668);
  sub_100012120(v51, &qword_100025D88, &qword_100018660);
  return sub_100012120(v50, &qword_100025D90, &qword_100018668);
}

uint64_t sub_10000E478@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_100002410(&qword_100025D68, &qword_100018640);
  return sub_10000D700(v2, a2 + *(v5 + 44));
}

unint64_t sub_10000E4C4(uint64_t a1)
{
  type metadata accessor for CAUAppUIConfiguration.Element();
  sub_10000EC84(&unk_1000260A0, &type metadata accessor for CAUAppUIConfiguration.Element, &protocol conformance descriptor for CAUAppUIConfiguration.Element);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000E55C(a1, v2);
}

unint64_t sub_10000E55C(uint64_t a1, uint64_t a2)
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
      sub_10000EC84(&qword_1000256E8, &type metadata accessor for CAUAppUIConfiguration.Element, &protocol conformance descriptor for CAUAppUIConfiguration.Element);
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

uint64_t sub_10000E71C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10000E734(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10000E758(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10000E7A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000E820()
{

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t sub_10000E968()
{
  result = qword_1000256C0;
  if (!qword_1000256C0)
  {
    sub_10000EA1C(&qword_1000256B8, &qword_1000180A8);
    sub_10000EC84(&qword_1000256C8, &type metadata accessor for CAUVehicleLayout, &protocol conformance descriptor for CAUVehicleLayout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000256C0);
  }

  return result;
}

uint64_t sub_10000EA1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000EA64(uint64_t a1)
{
  v2 = sub_100002410(&qword_1000256D8, &qword_100018100);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002410(&qword_1000256E0, &qword_100018108);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100011764(v9, v5, &qword_1000256D8, &qword_100018100);
      result = sub_10000E4C4(v5);
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

uint64_t sub_10000EC84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000ECCC()
{
  result = qword_1000256F0;
  if (!qword_1000256F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000256F0);
  }

  return result;
}

uint64_t sub_10000ED20()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000EE04()
{
  type metadata accessor for GeometryProxy();

  return sub_100003A30(v0 + 16);
}

unint64_t sub_10000EE68()
{
  result = qword_100025718;
  if (!qword_100025718)
  {
    sub_10000EA1C(&qword_100025720, &qword_100018128);
    sub_10000EF20();
    sub_100012468(&qword_100025750, &qword_100025758, &qword_100018140, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025718);
  }

  return result;
}

unint64_t sub_10000EF20()
{
  result = qword_100025728;
  if (!qword_100025728)
  {
    sub_10000EA1C(&qword_100025730, &qword_100018130);
    sub_10000EFD8();
    sub_100012468(&qword_100025740, &qword_100025748, &qword_100018138, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025728);
  }

  return result;
}

unint64_t sub_10000EFD8()
{
  result = qword_100025738;
  if (!qword_100025738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025738);
  }

  return result;
}

uint64_t sub_10000F02C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000EA1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000F0B0()
{
  result = qword_100025768;
  if (!qword_100025768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025768);
  }

  return result;
}

uint64_t sub_10000F104(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002458(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F148@<X0>(_BYTE *a1@<X8>)
{
  sub_10000F1E4();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10000F1E4()
{
  result = qword_100025790;
  if (!qword_100025790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025790);
  }

  return result;
}

__n128 sub_10000F248(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000F25C(uint64_t a1, int a2)
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

uint64_t sub_10000F2A4(uint64_t result, int a2, int a3)
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

uint64_t sub_10000F370()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10000F3DC()
{
  result = qword_1000257C8;
  if (!qword_1000257C8)
  {
    sub_10000EA1C(&qword_1000257B8, &qword_100018280);
    sub_10000EC84(&qword_1000257D0, type metadata accessor for CarView, &unk_1000182D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000257C8);
  }

  return result;
}

uint64_t sub_10000F498(void *a1)
{
  *(v1 + 16) = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 defaultCenter];
  if (qword_100025278 != -1)
  {
    swift_once();
  }

  v6 = qword_100026928;
  v7 = [objc_opt_self() mainQueue];
  v8 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_10000F6D4;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000053D8;
  v12[3] = &unk_1000214E8;
  v9 = _Block_copy(v12);

  v10 = [v5 addObserverForName:v6 object:0 queue:v7 usingBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_10000F638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F69C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_10000F730(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000F754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002410(&qword_100025810, &qword_1000182C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10000F8A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002410(&qword_100025810, &qword_1000182C8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10000F9E0(uint64_t a1)
{
  sub_100011454(319, &qword_100025880, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10000FB88(319, &qword_100025888, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10000FB88(319, &qword_100025890, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100002458(319, &qword_100025770, CAFCar_ptr);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CarPressureResetMonitor();
          sub_100011454(319, &qword_100025898, &type metadata accessor for CAUVehicleLayout, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100002458(319, &unk_1000258A0, UIImage_ptr);
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

void sub_10000FB88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
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

unint64_t sub_10000FC24()
{
  result = qword_1000258F0;
  if (!qword_1000258F0)
  {
    sub_10000EA1C(&qword_1000257F0, &qword_1000182A8);
    sub_100012468(&qword_1000258F8, &qword_1000257E0, &qword_100018298, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258F0);
  }

  return result;
}

uint64_t sub_10000FCF8()
{
  v1 = type metadata accessor for CarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100002410(&qword_1000257D8, &qword_100018290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_10000FED8(*(v5 + v1[5]), *(v5 + v1[5] + 8));

  v7 = v1[9];
  v8 = type metadata accessor for CAUVehicleLayout();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000FED8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_10000FEE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for CarView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000064C8(v4, a1);
}

unint64_t sub_10000FF64()
{
  result = qword_100025938;
  if (!qword_100025938)
  {
    sub_10000EA1C(&qword_100025918, &qword_100018340);
    sub_100012468(&qword_100025940, &qword_100025920, &qword_100018348, &protocol conformance descriptor for HStack<A>);
    sub_10001001C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025938);
  }

  return result;
}

unint64_t sub_10001001C()
{
  result = qword_100025948;
  if (!qword_100025948)
  {
    sub_10000EA1C(&qword_100025900, &qword_100018328);
    sub_100012468(&qword_100025950, &qword_100025958, &qword_100018358, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025948);
  }

  return result;
}

uint64_t sub_100010158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000101C0(uint64_t a1)
{
  v2 = type metadata accessor for TireInfoView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001021C()
{
  result = qword_1000259F0;
  if (!qword_1000259F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000259F0);
  }

  return result;
}

uint64_t sub_100010270(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100010280(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000102B0()
{
  result = qword_100025A58;
  if (!qword_100025A58)
  {
    sub_10000EA1C(&qword_100025A48, &qword_100018438);
    sub_100010334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A58);
  }

  return result;
}

unint64_t sub_100010334()
{
  result = qword_100025A60;
  if (!qword_100025A60)
  {
    sub_10000EA1C(&qword_100025A68, &qword_100018448);
    sub_10000EC84(&qword_100025A70, type metadata accessor for PositionedTireInfoView, &unk_100018518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A60);
  }

  return result;
}

uint64_t sub_100010410(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100010448()
{
  result = qword_100025A78;
  if (!qword_100025A78)
  {
    sub_10000EA1C(&qword_100025A38, &qword_100018428);
    sub_10000EC84(&qword_100025A80, type metadata accessor for RedactedTiresView, &unk_1000184C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A78);
  }

  return result;
}

uint64_t sub_100010504()
{
  v1 = type metadata accessor for CarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100002410(&qword_1000257D8, &qword_100018290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_10000FED8(*(v5 + v1[5]), *(v5 + v1[5] + 8));

  v7 = v1[9];
  v8 = type metadata accessor for CAUVehicleLayout();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_1000106E4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(type metadata accessor for CarView(0) - 8) + 80);
  v6 = *(v2 + 48);
  v7 = *(v2 + 32);
  v9[0] = *(v2 + 16);
  v9[1] = v7;
  v10 = v6;
  return sub_100007010(a1, v9, v2 + ((v5 + 56) & ~v5), a2);
}

uint64_t sub_100010774()
{
  v1 = type metadata accessor for CarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  sub_100002410(&qword_1000257D8, &qword_100018290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_10000FED8(*(v5 + v1[5]), *(v5 + v1[5] + 8));

  v7 = v1[9];
  v8 = type metadata accessor for CAUVehicleLayout();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10001095C()
{
  type metadata accessor for CarView(0);

  sub_1000072C0();
}

uint64_t sub_1000109D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002410(&qword_100025810, &qword_1000182C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100010AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002410(&qword_100025810, &qword_1000182C8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100010C04(uint64_t a1)
{
  sub_100011454(319, &qword_100025880, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      sub_100011454(319, &qword_100025898, &type metadata accessor for CAUVehicleLayout, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100010D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100010DE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100010E94(uint64_t a1)
{
  sub_100010F78(319);
  if (v1 <= 0x3F)
  {
    sub_10001100C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v3 <= 0x3F)
      {
        sub_100011454(319, &qword_100025898, &type metadata accessor for CAUVehicleLayout, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100010F78(uint64_t a1)
{
  if (!qword_100025BB8)
  {
    type metadata accessor for CAFTirePressureObservable();
    sub_10000EC84(&qword_1000259D8, &type metadata accessor for CAFTirePressureObservable, &protocol conformance descriptor for CAFTirePressureObservable);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100025BB8);
    }
  }
}

void sub_10001100C(uint64_t a1)
{
  if (!qword_100025BC0)
  {
    type metadata accessor for CAFDimensionObservable();
    sub_10000EC84(&qword_100025788, &type metadata accessor for CAFDimensionObservable, &protocol conformance descriptor for CAFDimensionObservable);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100025BC0);
    }
  }
}

uint64_t sub_1000110B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002410(&qword_100025810, &qword_1000182C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100002410(&qword_100025BF8, "D:");
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100011204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100002410(&qword_100025810, &qword_1000182C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100002410(&qword_100025BF8, "D:");
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100011340(uint64_t a1)
{
  sub_100010F78(319);
  if (v1 <= 0x3F)
  {
    sub_10001100C(319);
    if (v2 <= 0x3F)
    {
      sub_100011454(319, &qword_100025880, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100011454(319, &unk_100025C68, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100011454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000114BC()
{
  result = qword_100025CA0;
  if (!qword_100025CA0)
  {
    sub_10000EA1C(&qword_100025CA8, &qword_1000184C0);
    sub_10000FF64();
    sub_100012468(&qword_100025960, &qword_100025930, &qword_100018350, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025CA0);
  }

  return result;
}

unint64_t sub_1000115C8()
{
  result = qword_100025CF0;
  if (!qword_100025CF0)
  {
    sub_10000EA1C(&qword_100025CC8, &qword_1000185D0);
    sub_100011680();
    sub_100012468(&qword_100025D00, &qword_100025D08, &qword_1000185F8, &protocol conformance descriptor for _BackdropEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025CF0);
  }

  return result;
}

unint64_t sub_100011680()
{
  result = qword_100025CF8;
  if (!qword_100025CF8)
  {
    sub_10000EA1C(&qword_100025CE8, &qword_1000185F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025CF8);
  }

  return result;
}

uint64_t sub_1000116FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002410(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002410(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000117CC(uint64_t a1, char *a2)
{
  v70 = a2;
  v71 = a1;
  v68 = type metadata accessor for CAUVehicleLayoutKey.End();
  v2 = *(v68 - 8);
  v3 = __chkstk_darwin(v68);
  v67 = (&v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v6 = &v59 - v5;
  v69 = type metadata accessor for CAUVehicleLayoutKey.Side();
  v7 = *(v69 - 8);
  v8 = __chkstk_darwin(v69);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v59 - v11;
  v13 = sub_100002410(&qword_100025D60, &qword_100018638);
  __chkstk_darwin(v13 - 8);
  v60 = &v59 - v14;
  v66 = type metadata accessor for CAUBaselineAnchor();
  v61 = *(v66 - 8);
  __chkstk_darwin(v66);
  v59 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for CAUVehicleLayoutInfo();
  v62 = *(v65 - 8);
  v16 = __chkstk_darwin(v65);
  v63 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v59 - v19;
  __chkstk_darwin(v18);
  v64 = &v59 - v21;
  v22 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
  __chkstk_darwin(v22 - 8);
  v24 = &v59 - v23;
  v25 = type metadata accessor for CAUVehicleLayout();
  __chkstk_darwin(v25);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v28;
  v31 = v30;
  sub_100011764(v70, v24, &qword_1000256B8, &qword_1000180A8);
  if (v29[6](v24, 1, v31) == 1)
  {
    sub_100012120(v24, &qword_1000256B8, &qword_1000180A8);
LABEL_9:
    CAUVehicleLayoutKey.side.getter();
    v47 = v69;
    (*(v7 + 104))(v10, enum case for CAUVehicleLayoutKey.Side.left(_:), v69);
    static CAUVehicleLayoutKey.Side.== infix(_:_:)();
    v48 = *(v7 + 8);
    v48(v10, v47);
    v48(v12, v47);
    CAUVehicleLayoutKey.end.getter();
    v50 = v67;
    v49 = v68;
    (*(v2 + 104))(v67, enum case for CAUVehicleLayoutKey.End.front(_:), v68);
    static CAUVehicleLayoutKey.End.== infix(_:_:)();
    v51 = *(v2 + 8);
    v51(v50, v49);
    return (v51)(v6, v49);
  }

  v29[4](v27, v24, v31);
  v70 = v27;
  v32 = CAUVehicleLayout.infos.getter();
  if (!*(v32 + 16) || (v33 = sub_1000154F8(v71), (v34 & 1) == 0))
  {

    (v29[1])(v70, v31);
    goto LABEL_9;
  }

  v67 = v29;
  v68 = v31;
  v35 = v62;
  v36 = v65;
  (*(v62 + 16))(v20, *(v32 + 56) + *(v62 + 72) * v33, v65);

  v37 = v64;
  (*(v35 + 32))(v64, v20, v36);
  v38 = v60;
  CAUVehicleLayoutInfo.baselineAnchor.getter();
  v39 = v61;
  v40 = v66;
  if ((*(v61 + 48))(v38, 1, v66) != 1)
  {
    v53 = v59;
    (*(v39 + 32))(v59, v38, v40);
    CAUBaselineAnchor.x.getter();
    v54 = v35;
    v55 = v63;
    v56 = v70;
    CAUVehicleLayout.topDownExteriorImage.getter();
    CAUVehicleLayoutInfo.width.getter();
    v57 = *(v54 + 8);
    v57(v55, v36);
    CAUBaselineAnchor.y.getter();
    CAUVehicleLayout.topDownExteriorImage.getter();
    CAUVehicleLayoutInfo.height.getter();
    v57(v55, v36);
    (*(v39 + 8))(v53, v66);
    v57(v37, v36);
    return v67[1](v56, v68);
  }

  sub_100012120(v38, &qword_100025D60, &qword_100018638);
  CAUVehicleLayoutKey.side.getter();
  v41 = v69;
  (*(v7 + 104))(v10, enum case for CAUVehicleLayoutKey.Side.left(_:), v69);
  v42 = static CAUVehicleLayoutKey.Side.== infix(_:_:)();
  v43 = *(v7 + 8);
  v43(v10, v41);
  v43(v12, v41);
  v44 = v63;
  if (v42)
  {
    CAUVehicleLayoutInfo.x.getter();
    v45 = v70;
    CAUVehicleLayout.topDownExteriorImage.getter();
    CAUVehicleLayoutInfo.width.getter();
    v46 = *(v35 + 8);
    v46(v44, v36);
LABEL_13:
    CAUVehicleLayoutInfo.y.getter();
    CAUVehicleLayoutInfo.height.getter();
    CAUVehicleLayout.topDownExteriorImage.getter();
    CAUVehicleLayoutInfo.height.getter();
    v46(v44, v36);
    v46(v37, v36);
    return v67[1](v45, v68);
  }

  v45 = v70;
  CAUVehicleLayout.topDownExteriorImage.getter();
  CAUVehicleLayoutInfo.width.getter();
  v46 = *(v35 + 8);
  v46(v44, v36);
  v58 = CAUVehicleLayoutInfo.x.getter();
  result = CAUVehicleLayoutInfo.width.getter();
  if (!__OFADD__(v58, result))
  {
    CAUVehicleLayout.topDownExteriorImage.getter();
    CAUVehicleLayoutInfo.width.getter();
    v46(v44, v36);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100012120(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002410(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000121C4()
{
  result = qword_100025DB0;
  if (!qword_100025DB0)
  {
    sub_10000EA1C(&qword_100025CE0, &qword_1000185E8);
    sub_100012468(&qword_100025D20, &qword_100025CD8, &qword_1000185E0, &protocol conformance descriptor for HStack<A>);
    sub_100012468(&qword_100025D28, &qword_100025CB0, &qword_1000185B8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025DB0);
  }

  return result;
}

uint64_t sub_1000122EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000EA1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100012368()
{
  result = qword_100025DC8;
  if (!qword_100025DC8)
  {
    sub_10000EA1C(&qword_100025D58, &qword_100018630);
    sub_10000EC84(&qword_1000259C8, type metadata accessor for TireInfoView, &unk_100018568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025DC8);
  }

  return result;
}

uint64_t sub_100012468(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000EA1C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000124C4()
{
  sub_10000F1E4();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_100012500()
{
  sub_10000ECCC();

  return EnvironmentValues.subscript.getter();
}

NSString sub_100012548()
{
  result = String._bridgeToObjectiveC()();
  qword_100026928 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ClusterEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClusterEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000126FC()
{
  result = qword_100025DF8;
  if (!qword_100025DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025DF8);
  }

  return result;
}

Swift::Int sub_100012768()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000127DC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100012854()
{
  v0 = sub_100002410(&qword_1000256D0, &qword_1000180F8);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  sub_100012B6C(v7, qword_100025DE0);
  sub_100012B34(v7, qword_100025DE0);
  (*(v4 + 104))(v6, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v3);
  v8 = type metadata accessor for CAUWidgetContentMargins();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_10000EA64(&_swiftEmptyArrayStorage);
  return CAUAppUIConfiguration.Configuration.init(layoutStyle:padding:elementData:)();
}

uint64_t sub_1000129F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025280 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v3 = sub_100012B34(v2, qword_100025DE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100012AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10001481C(&qword_100025E00, &type metadata accessor for CAUAppUIConfiguration.Configuration, &protocol conformance descriptor for CAUAppUIConfiguration.Configuration);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100012B34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100012B6C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100012BD0(uint64_t a1)
{
  v2 = sub_100002410(&qword_100025E08, &qword_1000187B0);
  __chkstk_darwin(v2 - 8);
  v97 = &v79 - v3;
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  v98 = v4;
  v99 = v5;
  v6 = __chkstk_darwin(v4);
  v96 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v88 = &v79 - v8;
  v9 = sub_100002410(&qword_100025E10, &qword_1000187B8);
  __chkstk_darwin(v9 - 8);
  v92 = &v79 - v10;
  v11 = type metadata accessor for CAUAppUIConfiguration.FontWeight();
  v93 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v86 = &v79 - v15;
  __chkstk_darwin(v14);
  v89 = &v79 - v16;
  v17 = type metadata accessor for CAUAppUIConfiguration.Element();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v90 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v79 - v21;
  v23 = type metadata accessor for CAUAppUIConfiguration.ElementData();
  v95 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v87 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v79 - v26;
  v28 = sub_100002410(&qword_100025E18, &unk_1000187C0);
  __chkstk_darwin(v28 - 8);
  v30 = &v79 - v29;
  v31 = type metadata accessor for CAUAppUIConfiguration.FontStyle();
  v32 = *(v31 - 8);
  v100 = v31;
  v101 = v32;
  v33 = __chkstk_darwin(v31);
  v85 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v94 = &v79 - v35;
  v91 = a1;
  v36 = CAUAppUIConfiguration.Configuration.elementData.getter();
  v37 = *(v18 + 104);
  v37(v22, enum case for CAUAppUIConfiguration.Element.tpms_pressureValue_font_style(_:), v17);
  if (*(v36 + 16) && (v38 = sub_100015424(v22), (v39 & 1) != 0))
  {
    v83 = v11;
    v40 = *(v36 + 56);
    v41 = v95;
    v79 = *(v95 + 72);
    v42 = *(v95 + 16);
    v81 = v95 + 16;
    v80 = v42;
    v42(v27, v40 + v79 * v38, v23);
    v82 = *(v18 + 8);
    v82(v22, v17);

    CAUAppUIConfiguration.ElementData.fontStyle.getter();
    v43 = *(v41 + 8);
    v95 = v41 + 8;
    v43(v27, v23);
    v45 = v100;
    v44 = v101;
    if ((*(v101 + 48))(v30, 1, v100) != 1)
    {
      (*(v44 + 32))(v94, v30, v45);
      v46 = CAUAppUIConfiguration.Configuration.elementData.getter();
      v47 = v90;
      v37(v90, enum case for CAUAppUIConfiguration.Element.tpms_pressureValue_font_weight(_:), v17);
      if (!*(v46 + 16) || (v48 = sub_100015424(v47), (v49 & 1) == 0))
      {

        v82(v47, v17);
        (*(v101 + 8))(v94, v45);
        v51 = v92;
        (*(v93 + 56))(v92, 1, 1, v83);
        v55 = v98;
        goto LABEL_13;
      }

      v50 = v87;
      v80(v87, *(v46 + 56) + v48 * v79, v23);
      v82(v47, v17);

      v51 = v92;
      CAUAppUIConfiguration.ElementData.fontWeight.getter();
      v43(v50, v23);
      v52 = v93;
      v53 = v83;
      v54 = (*(v93 + 48))(v51, 1, v83);
      v55 = v98;
      if (v54 == 1)
      {
        (*(v101 + 8))(v94, v100);
LABEL_13:
        v56 = v99;
        sub_100012120(v51, &qword_100025E10, &qword_1000187B8);
        goto LABEL_10;
      }

      (*(v52 + 32))(v89, v51, v53);
      v62 = v85;
      (*(v101 + 104))(v85, enum case for CAUAppUIConfiguration.FontStyle.body(_:), v100);
      sub_10001481C(&qword_100025E20, &type metadata accessor for CAUAppUIConfiguration.FontStyle, &protocol conformance descriptor for CAUAppUIConfiguration.FontStyle);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v63 = &enum case for Font.TextStyle.body(_:);
      v64 = v99;
      if ((v104 != v102 || v105 != v103) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v63 = &enum case for Font.TextStyle.footnote(_:);
      }

      v65 = *(v101 + 8);
      v101 += 8;
      v96 = v65;
      (v65)(v62, v100);

      (*(v64 + 104))(v88, *v63, v55);
      v66 = *(v52 + 104);
      v67 = v86;
      v66(v86, enum case for CAUAppUIConfiguration.FontWeight.regular(_:), v83);
      sub_10001481C(&qword_100025E28, &type metadata accessor for CAUAppUIConfiguration.FontWeight, &protocol conformance descriptor for CAUAppUIConfiguration.FontWeight);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v104 == v102 && v105 == v103)
      {
        v68 = 1;
      }

      else
      {
        v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v69 = *(v93 + 8);
      v70 = v67;
      v71 = v83;
      v69(v70, v83);

      if (v68)
      {
        static Font.Weight.regular.getter();
      }

      else
      {
        v72 = v84;
        v66(v84, enum case for CAUAppUIConfiguration.FontWeight.bold(_:), v71);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v104 == v102 && v105 == v103)
        {
          v69(v72, v71);
        }

        else
        {
          v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v69(v72, v71);

          if ((v73 & 1) == 0)
          {
            static Font.Weight.semibold.getter();
            goto LABEL_30;
          }
        }

        static Font.Weight.bold.getter();
      }

LABEL_30:
      v74 = enum case for Font.Design.default(_:);
      v75 = type metadata accessor for Font.Design();
      v76 = *(v75 - 8);
      v77 = v97;
      (*(v76 + 104))(v97, v74, v75);
      (*(v76 + 56))(v77, 0, 1, v75);
      v78 = v88;
      static Font.system(_:design:weight:)();
      sub_100012120(v77, &qword_100025E08, &qword_1000187B0);
      v60 = Font.weight(_:)();

      (*(v99 + 8))(v78, v55);
      v69(v89, v71);
      (v96)(v94, v100);
      return v60;
    }
  }

  else
  {

    (*(v18 + 8))(v22, v17);
    (*(v101 + 56))(v30, 1, 1, v100);
  }

  sub_100012120(v30, &qword_100025E18, &unk_1000187C0);
  v55 = v98;
  v56 = v99;
LABEL_10:
  v57 = v96;
  (*(v56 + 104))(v96, enum case for Font.TextStyle.body(_:), v55);
  v58 = type metadata accessor for Font.Design();
  v59 = v97;
  (*(*(v58 - 8) + 56))(v97, 1, 1, v58);
  static Font.Weight.bold.getter();
  v60 = static Font.system(_:design:weight:)();
  sub_100012120(v59, &qword_100025E08, &qword_1000187B0);
  (*(v56 + 8))(v57, v55);
  return v60;
}

uint64_t sub_1000138A4(uint64_t a1)
{
  v2 = sub_100002410(&qword_100025E08, &qword_1000187B0);
  __chkstk_darwin(v2 - 8);
  v117 = &v92 - v3;
  v4 = type metadata accessor for Font.TextStyle();
  v118 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v116 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v105 = &v92 - v7;
  v8 = sub_100002410(&qword_100025E10, &qword_1000187B8);
  __chkstk_darwin(v8 - 8);
  v108 = &v92 - v9;
  v10 = type metadata accessor for CAUAppUIConfiguration.FontWeight();
  v109 = *(v10 - 8);
  v110 = v10;
  v11 = __chkstk_darwin(v10);
  v99 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v101 = &v92 - v14;
  __chkstk_darwin(v13);
  v106 = &v92 - v15;
  v16 = type metadata accessor for CAUAppUIConfiguration.Element();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v107 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v92 - v20;
  v22 = type metadata accessor for CAUAppUIConfiguration.ElementData();
  v23 = *(v22 - 8);
  v112 = v22;
  v113 = v23;
  v24 = __chkstk_darwin(v22);
  v104 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v92 - v26;
  v28 = sub_100002410(&qword_100025E18, &unk_1000187C0);
  __chkstk_darwin(v28 - 8);
  v30 = &v92 - v29;
  v31 = type metadata accessor for CAUAppUIConfiguration.FontStyle();
  v32 = *(v31 - 8);
  v114 = v31;
  v115 = v32;
  v33 = __chkstk_darwin(v31);
  v100 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v111 = &v92 - v35;
  v36 = sub_100002410(&qword_1000259E8, &qword_1000183F8);
  __chkstk_darwin(v36 - 8);
  v38 = &v92 - v37;
  v39 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v92 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v45 = v44;
  sub_1000147AC(v43, v38);
  if ((*(v40 + 48))(v38, 1, v45) != 1)
  {
    v103 = v4;
    v102 = v40;
    v47 = *(v40 + 32);
    v98 = v45;
    v47(v42, v38, v45);
    v48 = CAUAppUIConfiguration.Configuration.elementData.getter();
    v49 = *(v17 + 104);
    v49(v21, enum case for CAUAppUIConfiguration.Element.tpms_pressureUnit_font_style(_:), v16);
    if (!*(v48 + 16) || (v50 = sub_100015424(v21), (v51 & 1) == 0))
    {

      (*(v17 + 8))(v21, v16);
      (*(v102 + 8))(v42, v98);
      (*(v115 + 56))(v30, 1, 1, v114);
      goto LABEL_8;
    }

    v97 = v42;
    v52 = *(v48 + 56);
    v53 = v113;
    v93 = *(v113 + 72);
    v54 = *(v113 + 16);
    v55 = v112;
    v95 = v113 + 16;
    v94 = v54;
    v54(v27, v52 + v93 * v50, v112);
    v96 = *(v17 + 8);
    v96(v21, v16);

    CAUAppUIConfiguration.ElementData.fontStyle.getter();
    v56 = *(v53 + 8);
    v113 = v53 + 8;
    v56(v27, v55);
    v57 = v114;
    v58 = v115;
    if ((*(v115 + 48))(v30, 1, v114) == 1)
    {
      (*(v102 + 8))(v97, v98);
LABEL_8:
      v46 = v118;
      sub_100012120(v30, &qword_100025E18, &unk_1000187C0);
      v4 = v103;
      goto LABEL_9;
    }

    v64 = v111;
    (*(v58 + 32))(v111, v30, v57);
    v65 = CAUAppUIConfiguration.Configuration.elementData.getter();
    v66 = v107;
    v49(v107, enum case for CAUAppUIConfiguration.Element.tpms_pressureUnit_font_weight(_:), v16);
    v46 = v118;
    if (!*(v65 + 16) || (v67 = sub_100015424(v66), (v68 & 1) == 0))
    {

      v96(v66, v16);
      (*(v115 + 8))(v64, v114);
      (*(v102 + 8))(v97, v98);
      v71 = v108;
      (*(v109 + 56))(v108, 1, 1, v110);
      v4 = v103;
      goto LABEL_16;
    }

    v69 = v104;
    v70 = v112;
    v94(v104, *(v65 + 56) + v67 * v93, v112);
    v96(v66, v16);

    v71 = v108;
    CAUAppUIConfiguration.ElementData.fontWeight.getter();
    v56(v69, v70);
    v72 = v109;
    v73 = v110;
    v74 = (*(v109 + 48))(v71, 1, v110);
    v4 = v103;
    v75 = v102;
    if (v74 == 1)
    {
      (*(v115 + 8))(v111, v114);
      (*(v75 + 8))(v97, v98);
LABEL_16:
      sub_100012120(v71, &qword_100025E10, &qword_1000187B8);
      goto LABEL_9;
    }

    (*(v72 + 32))(v106, v71, v73);
    v76 = v100;
    (*(v115 + 104))(v100, enum case for CAUAppUIConfiguration.FontStyle.body(_:), v114);
    sub_10001481C(&qword_100025E20, &type metadata accessor for CAUAppUIConfiguration.FontStyle, &protocol conformance descriptor for CAUAppUIConfiguration.FontStyle);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v77 = &enum case for Font.TextStyle.body(_:);
    if ((v121 != v119 || v122 != v120) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v77 = &enum case for Font.TextStyle.footnote(_:);
    }

    v78 = *(v115 + 8);
    v115 += 8;
    v116 = v78;
    (v78)(v76, v114);

    (*(v46 + 104))(v105, *v77, v4);
    v79 = *(v72 + 104);
    v80 = v101;
    v79(v101, enum case for CAUAppUIConfiguration.FontWeight.regular(_:), v73);
    sub_10001481C(&qword_100025E28, &type metadata accessor for CAUAppUIConfiguration.FontWeight, &protocol conformance descriptor for CAUAppUIConfiguration.FontWeight);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v121 == v119 && v122 == v120)
    {
      v81 = 1;
    }

    else
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v82 = *(v72 + 8);
    v82(v80, v73);

    if (v81)
    {
      static Font.Weight.regular.getter();
      v83 = v103;
      v84 = v102;
    }

    else
    {
      v85 = v99;
      v79(v99, enum case for CAUAppUIConfiguration.FontWeight.bold(_:), v73);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v121 == v119 && v122 == v120)
      {
        v82(v85, v73);

        v83 = v103;
        v84 = v102;
      }

      else
      {
        v86 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v82(v85, v73);

        v83 = v103;
        v84 = v102;
        if ((v86 & 1) == 0)
        {
          static Font.Weight.semibold.getter();
          goto LABEL_33;
        }
      }

      static Font.Weight.bold.getter();
    }

LABEL_33:
    v87 = enum case for Font.Design.default(_:);
    v88 = type metadata accessor for Font.Design();
    v89 = *(v88 - 8);
    v90 = v117;
    (*(v89 + 104))(v117, v87, v88);
    (*(v89 + 56))(v90, 0, 1, v88);
    v91 = v105;
    static Font.system(_:design:weight:)();
    sub_100012120(v90, &qword_100025E08, &qword_1000187B0);
    v62 = Font.weight(_:)();

    (*(v46 + 8))(v91, v83);
    v82(v106, v73);
    (v116)(v111, v114);
    (*(v84 + 8))(v97, v98);
    return v62;
  }

  sub_100012120(v38, &qword_1000259E8, &qword_1000183F8);
  v46 = v118;
LABEL_9:
  v59 = v116;
  (*(v46 + 104))(v116, enum case for Font.TextStyle.body(_:), v4);
  v60 = type metadata accessor for Font.Design();
  v61 = v117;
  (*(*(v60 - 8) + 56))(v117, 1, 1, v60);
  static Font.Weight.regular.getter();
  v62 = static Font.system(_:design:weight:)();
  sub_100012120(v61, &qword_100025E08, &qword_1000187B0);
  (*(v46 + 8))(v59, v4);
  return v62;
}

uint64_t sub_1000147AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002410(&qword_1000259E8, &qword_1000183F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001481C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100014864()
{
  v1 = OBJC_IVAR____TtC12TirePressure23TirePressureAppDelegate____lazy_storage___carManager;
  v2 = *(v0 + OBJC_IVAR____TtC12TirePressure23TirePressureAppDelegate____lazy_storage___carManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12TirePressure23TirePressureAppDelegate____lazy_storage___carManager);
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

uint64_t sub_1000148D8()
{
  v1 = OBJC_IVAR____TtC12TirePressure23TirePressureAppDelegate____lazy_storage___assetManager;
  if (*(v0 + OBJC_IVAR____TtC12TirePressure23TirePressureAppDelegate____lazy_storage___assetManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TirePressure23TirePressureAppDelegate____lazy_storage___assetManager);
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

id sub_1000149C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TirePressureAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for TirePressureAppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_100014AF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t type metadata accessor for ScenePresentationTypeObserver(uint64_t a1)
{
  result = qword_100025F60;
  if (!qword_100025F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014DE0(uint64_t a1)
{
  sub_100014E70(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100014E70(uint64_t a1)
{
  if (!qword_100025F70)
  {
    type metadata accessor for CRSUIHostedAltScreenPresentationType(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100025F70);
    }
  }
}

uint64_t sub_100014EC8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ScenePresentationTypeObserver(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100014F08()
{
  sub_1000164AC();
  result = NSString.init(stringLiteral:)();
  qword_100026930 = result;
  return result;
}

void sub_100014FE0(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v9 = a1;
    v5 = [v4 _FBSScene];
    v6 = [v5 settings];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v7 = *(v1 + OBJC_IVAR____TtC12TirePressure25TirePressureSceneDelegate_clusterWindowManager);
      *(v1 + OBJC_IVAR____TtC12TirePressure25TirePressureSceneDelegate_clusterWindowManager) = 0;

      if (qword_100025288 != -1)
      {
        swift_once();
      }

      [v4 _unregisterSceneActionsHandlerArray:qword_100026930];
      v8 = v9;
    }

    else
    {

      v8 = v6;
    }
  }
}

id sub_100015270(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000152F0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_100015370(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t sub_1000153E0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000155CC(a1, v4);
}

unint64_t sub_100015424(uint64_t a1)
{
  type metadata accessor for CAUAppUIConfiguration.Element();
  sub_100016500(&unk_1000260A0, &type metadata accessor for CAUAppUIConfiguration.Element, &protocol conformance descriptor for CAUAppUIConfiguration.Element);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100015694(a1, v2, &type metadata accessor for CAUAppUIConfiguration.Element, &qword_1000256E8, &type metadata accessor for CAUAppUIConfiguration.Element, &protocol conformance descriptor for CAUAppUIConfiguration.Element);
}

unint64_t sub_1000154F8(uint64_t a1)
{
  type metadata accessor for CAUVehicleLayoutKey();
  sub_100016500(&qword_1000260B0, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100015694(a1, v2, &type metadata accessor for CAUVehicleLayoutKey, &qword_1000260B8, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
}

unint64_t sub_1000155CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100016450(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000F6DC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100015694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_100016500(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

void sub_100015834(void *a1)
{
  v5 = [a1 settings];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v6 != [v3 hostedAltScreenPresentationType])
    {
      [v3 hostedAltScreenPresentationType];
      swift_getKeyPath();
      swift_getKeyPath();
      v4 = v1;
      static Published.subscript.setter();
    }
  }
}

void sub_100015974(void *a1, void *a2)
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
      sub_100002CEC(0xD000000000000024, 0x80000001000190E0);
LABEL_19:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }
  }

  v15 = v7;
  v16 = [v6 _FBSScene];
  v17 = [v16 settings];

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

    sub_100002CD4(0xD000000000000021, 0x8000000100019140);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [objc_opt_self() sharedApplication];
  v21 = [v20 delegate];

  if (!v21)
  {
LABEL_18:
    sub_100002CD4(0xD000000000000026, 0x8000000100019170);
    goto LABEL_19;
  }

  v47 = v17;
  v48 = v2;
  type metadata accessor for TirePressureAppDelegate();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v22 = [objc_allocWithZone(type metadata accessor for ScenePresentationTypeObserver(0)) init];
  v23 = [v19 hostedAltScreenPresentationType];
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = v23;
  v24 = v22;
  static Published.subscript.setter();
  v25 = [v6 _FBSScene];

  [v25 addObserver:v24];
  v26 = v15;
  v27 = v24;
  v28 = sub_100014864();
  v29 = sub_1000148D8();
  v30 = type metadata accessor for TirePressureWindowManager();
  v31 = objc_allocWithZone(v30);
  v32 = [objc_allocWithZone(UIWindow) initWithWindowScene:v6];
  v33 = OBJC_IVAR____TtC12TirePressure25TirePressureWindowManager_window;
  *&v31[OBJC_IVAR____TtC12TirePressure25TirePressureWindowManager_window] = v32;
  [v32 setAutoresizesSubviews:1];
  [*&v31[v33] setAutoresizingMask:18];
  [*&v31[v33] makeKeyAndVisible];
  [*&v31[v33] setHidden:0];
  v50.receiver = v31;
  v50.super_class = v30;
  v34 = objc_msgSendSuper2(&v50, "init");
  v35 = *&v34[OBJC_IVAR____TtC12TirePressure25TirePressureWindowManager_window];
  v36 = type metadata accessor for TirePressureViewController();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_carManager] = v28;
  *&v37[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_assetManager] = v29;
  *&v37[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_scenePresentationTypeObserver] = v27;
  type metadata accessor for CARSessionStatusObservable();
  v38 = v27;
  v46 = v6;
  v39 = v34;
  v40 = v35;
  v41 = v28;

  *&v37[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_sessionStatusObservable] = CARSessionStatusObservable.__allocating_init()();
  v49.receiver = v37;
  v49.super_class = v36;
  v42 = objc_msgSendSuper2(&v49, "initWithNibName:bundle:", 0, 0);
  [v40 setRootViewController:v42];

  v43 = *(v48 + OBJC_IVAR____TtC12TirePressure25TirePressureSceneDelegate_clusterWindowManager);
  *(v48 + OBJC_IVAR____TtC12TirePressure25TirePressureSceneDelegate_clusterWindowManager) = v39;

  sub_100002410(&qword_100025378, &qword_100017DB0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000187F0;
  *(v44 + 32) = [objc_allocWithZone(CRSUIClusterPressBSActionsHandler) initWithDelegate:v48];
  sub_100002410(&qword_100026090, &qword_100018908);
  v45.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (qword_100025288 != -1)
  {
    swift_once();
  }

  [v46 _registerSceneActionsHandlerArray:v45.super.isa forKey:qword_100026930];

  swift_unknownObjectRelease();
}

unint64_t sub_100015F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002410(&qword_100026078, &qword_1000188A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000163E0(v4, v13);
      result = sub_1000153E0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000F730(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void sub_10001609C(uint64_t a1)
{
  if (a1 == 2)
  {
    sub_100002CEC(0xD00000000000001CLL, 0x8000000100019090);
    v1 = [objc_opt_self() defaultCenter];
    if (qword_100025278 != -1)
    {
      swift_once();
    }

    v2 = qword_100026928;
    sub_100002410(&qword_100026068, &qword_100018898);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100018800;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for ClusterEventType;
    *(inited + 72) = 1;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    sub_100002CEC(0xD00000000000001ELL, 0x80000001000190B0);
    v1 = [objc_opt_self() defaultCenter];
    if (qword_100025278 != -1)
    {
      swift_once();
    }

    v2 = qword_100026928;
    sub_100002410(&qword_100026068, &qword_100018898);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100018800;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for ClusterEventType;
    *(inited + 72) = 0;
LABEL_9:
    sub_100015F80(inited);
    swift_setDeallocating();
    sub_100016378(inited + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 postNotificationName:v2 object:0 userInfo:isa];

    return;
  }

  sub_100002CEC(0xD00000000000001FLL, 0x8000000100019070);
}

uint64_t sub_100016378(uint64_t a1)
{
  v2 = sub_100002410(&qword_100026070, &qword_1000188A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000163E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002410(&qword_100026070, &qword_1000188A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000164AC()
{
  result = qword_100026080;
  if (!qword_100026080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100026080);
  }

  return result;
}

uint64_t sub_100016500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

UIImage_optional __swiftcall UIImage.rotated90Degrees(clockwise:)(Swift::Bool clockwise)
{
  v1 = UIImage.rotated90Degrees(clockwise:)(clockwise);
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}