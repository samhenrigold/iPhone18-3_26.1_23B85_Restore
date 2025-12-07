void sub_10005FAE4(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_10006054C(0, &qword_1002235B0, SBUIRemoteAlertButtonAction_ptr);
      sub_100060594();
      Set.Iterator.init(_cocoa:)();
      v1 = v15;
      v2 = v16;
      v3 = v17;
      v4 = v18;
      v5 = v19;
    }

    else
    {
      v6 = -1 << *(a1 + 32);
      v2 = a1 + 56;
      v3 = ~v6;
      v7 = -v6;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v5 = v8 & *(a1 + 56);

      v4 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!__CocoaSet.Iterator.next()() || (sub_10006054C(0, &qword_1002235B0, SBUIRemoteAlertButtonAction_ptr), swift_dynamicCast(), v13 = v14, v11 = v4, v12 = v5, !v14))
        {
LABEL_20:
          sub_1000605FC(v1);
          return;
        }
      }

      else
      {
        v9 = v4;
        v10 = v5;
        v11 = v4;
        if (!v5)
        {
          while (1)
          {
            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              break;
            }

            if (v11 >= ((v3 + 64) >> 6))
            {
              goto LABEL_20;
            }

            v10 = *(v2 + 8 * v11);
            ++v9;
            if (v10)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          break;
        }

LABEL_14:
        v12 = (v10 - 1) & v10;
        v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      if (([v13 events] & 0x10) != 0)
      {
        sub_10005FE74();
      }

      v4 = v11;
      v5 = v12;
    }
  }

  __break(1u);
}

void *sub_10005FD8C()
{
  v0 = sub_10005F128();
  if (v0)
  {
    [v0 setAllowsMenuButtonDismissal:1];
    swift_unknownObjectRelease();
  }

  v1 = sub_10005F128();
  if (v1)
  {
    [v1 setAllowsSiri:1];
    swift_unknownObjectRelease();
  }

  v2 = sub_10005F128();
  if (v2)
  {
    [v2 setDesiredHardwareButtonEvents:16];
    swift_unknownObjectRelease();
  }

  v3 = sub_10005F128();
  if (v3)
  {
    [v3 setDismissalAnimationStyle:2];
    swift_unknownObjectRelease();
  }

  result = sub_10005F128();
  if (result)
  {
    [result setSwipeDismissalStyle:1];

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_10005FE74()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000BE10(v10, qword_100239158);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Dismissing and invalidating event remote view controller.", v13, 2u);
  }

  sub_10006054C(0, &qword_100225DD0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_1000604C8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100185774;
  aBlock[3] = &unk_1002139C8;
  v16 = _Block_copy(aBlock);
  v17 = v1;
  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_1000606B0(&qword_1002265B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000024C4(qword_100225DE0, &qword_1001BC490);
  sub_1000604E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  return result;
}

void *sub_1000601E8(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  result = sub_10005F128();
  if (result)
  {
    [result invalidate];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10006036C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000603E8(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100221730, qword_1001B6530);
  __chkstk_darwin(v2 - 8);
  sub_10000BEB8(a1, &v5 - v3, &qword_100221730, qword_1001B6530);
  return EnvironmentValues.verticalSizeClass.setter();
}

uint64_t sub_100060490()
{

  return swift_deallocObject();
}

double sub_1000604D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1000604E8()
{
  result = qword_1002265C0;
  if (!qword_1002265C0)
  {
    sub_10000460C(qword_100225DE0, &qword_1001BC490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002265C0);
  }

  return result;
}

uint64_t sub_10006054C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100060594()
{
  result = qword_1002235B8;
  if (!qword_1002235B8)
  {
    sub_10006054C(255, &qword_1002235B0, SBUIRemoteAlertButtonAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002235B8);
  }

  return result;
}

double sub_100060604(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100060614()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000606B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1000606F8(uint64_t a1, unint64_t a2)
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

uint64_t sub_100060774(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_100060954(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v10 = *(v4 + 96);
  v9 = *(v4 + 104);
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v9;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 12;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v12 = *(a4 + 64);
    v13 = *(a4 + 72);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v20 = v12;
  v21 = v13;

  sub_100006C80(a1, a2, a3);

  v14 = sub_1001894F4(1, 5, 1, inited);
  v18 = v14;
  sub_100006C98(&aBlock, v25);
  sub_100118768(4, v25, &v18, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001C4640;
  v16[4] = v14;
  v23 = sub_100006D88;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10015B4A4;
  v22 = &unk_100213AF8;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

uint64_t sub_100060C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = a4;
  v12 = swift_allocObject();
  sub_1000611A4(a1, a2, a3, v6, a5, a6);
  return v12;
}

double sub_100060CD4()
{
  KeyPath = swift_getKeyPath();
  sub_100060E90(KeyPath, v2, v3);

  return *(v0 + 120);
}

void sub_100060D48(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = *v4;
  v7 = *(v4 + 15);
  v13 = a4;
  v14 = v7;
  v12 = *(*&v6 + 80);
  sub_100010E88(a1, a2, a3);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    v4[15] = a4;
  }

  else
  {
    __chkstk_darwin(v8);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v4;
    *&v11[3] = a4;
    sub_100060F20(v10, sub_1000617C8, v11, &type metadata for () + 8);
  }
}

double sub_100060FE8()
{
  KeyPath = swift_getKeyPath();
  sub_100060E90(KeyPath, v2, v3);

  return *(v0 + 128);
}

void sub_10006105C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = *v4;
  v7 = *(v4 + 16);
  v13 = a4;
  v14 = v7;
  v12 = *(*&v6 + 80);
  sub_100010E88(a1, a2, a3);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    v4[16] = a4;
  }

  else
  {
    __chkstk_darwin(v8);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v4;
    *&v11[3] = a4;
    sub_100060F20(v10, sub_100061838, v11, &type metadata for () + 8);
  }
}

uint64_t sub_1000611A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  *(v6 + 16) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 24) = v13;
  *(v6 + 32) = v14 & 1;
  *(v6 + 40) = v15;
  *(v6 + 48) = 0x7A65426863746177;
  *(v6 + 56) = 0xEA00000000006C65;
  *(v6 + 64) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 72) = v16;
  *(v6 + 80) = v17 & 1;
  *(v6 + 88) = v18;
  ObservationRegistrar.init()();
  *(v6 + 96) = a1;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 136) = a4;
  return v6;
}

char *sub_10006128C()
{

  v1 = qword_1002235D8;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10006132C()
{
  sub_10006128C();

  return swift_deallocClassInstance();
}

uint64_t sub_10006139C()
{

  return swift_deallocObject();
}

double sub_1000613DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

__n128 sub_100061454(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100061460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v5;
  v3[12] = v4;

  return _swift_task_switch(sub_1000614FC, v5, v4);
}

uint64_t sub_1000614FC()
{
  v1 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 40) = v5;
  v2 = sub_10005EC40((v0 + 16));
  (*(*(v5 - 8) + 16))(v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1000615DC;

  return sub_10006BB74(v0 + 16);
}

uint64_t sub_1000615DC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_10006175C;
  }

  else
  {
    sub_100012A7C(v2 + 2);
    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_1000616F8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000616F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006175C()
{

  sub_100012A7C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

double sub_1000617C8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 120) = result;
  return result;
}

double sub_100061838()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 128) = result;
  return result;
}

uint64_t sub_100061864(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_1002236B0, &unk_1001B76C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100061934(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_1002236B0, &unk_1001B76C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PlayButtonView(uint64_t a1)
{
  result = qword_100223710;
  if (!qword_100223710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100061A30(uint64_t a1)
{
  sub_100061AAC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100061AAC(uint64_t a1)
{
  if (!qword_100223720)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100223720);
    }
  }
}

uint64_t sub_100061B60(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for DynamicTypeSize();
  sub_1000640DC(v5, a2);
  v6 = sub_10000BE10(v5, a2);
  v7 = *a3;
  v8 = *(*(v5 - 8) + 104);

  return v8(v6, v7, v5);
}

uint64_t sub_100061C00()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_1002236A0 = result;
  return result;
}

uint64_t sub_100061C38()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_1002236A8 = result;
  return result;
}

uint64_t sub_100061D20@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for AccessibilityTraits();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlainButtonStyle();
  v7 = *(v6 - 8);
  v42 = v6;
  v43 = v7;
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlayButtonView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = sub_1000024C4(&qword_100223750, &qword_1001B7730);
  v36 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_1000024C4(&qword_100223758, &qword_1001B7738);
  v17 = *(v16 - 8);
  v37 = v16;
  v38 = v17;
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  v39 = sub_1000024C4(&qword_100223760, &qword_1001B7740);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v21 = &v35 - v20;
  v40 = sub_1000024C4(&qword_100223768, &unk_1001B7748);
  __chkstk_darwin(v40);
  v23 = &v35 - v22;
  sub_100063C10(v1, &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v25 = swift_allocObject();
  sub_100063D90(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v51 = v1;
  sub_1000024C4(&qword_100223770, &qword_1001B7758);
  sub_100063E60();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v26 = sub_10000BFFC(&qword_1002237C0, &qword_100223750, &qword_1001B7730, &protocol conformance descriptor for Button<A>);
  v27 = sub_100064834(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v28 = v42;
  View.buttonStyle<A>(_:)();
  (*(v43 + 8))(v9, v28);
  (*(v36 + 8))(v15, v13);
  v29 = v44;
  static AccessibilityChildBehavior.ignore.getter();
  v52 = v13;
  v53 = v28;
  v54 = v26;
  v55 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v37;
  View.accessibilityElement(children:)();
  (*(v45 + 8))(v29, v46);
  (*(v38 + 8))(v19, v31);
  v32 = v47;
  static AccessibilityTraits.isButton.getter();
  v52 = v31;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  View.accessibilityAddTraits(_:)();
  (*(v48 + 8))(v32, v49);
  (*(v41 + 8))(v21, v33);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_100064074(v23);
}

uint64_t sub_1000623C0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000024C4(&qword_1002237C8, &qword_1001B7780);
  v5 = __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = sub_1000024C4(&qword_100223798, &qword_1001B7770);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v51 = sub_1000024C4(&qword_100223790, &qword_1001B7768);
  __chkstk_darwin(v51);
  v14 = (&v46 - v13);
  *v14 = static Alignment.center.getter();
  v14[1] = v15;
  v16 = v14 + *(sub_1000024C4(&qword_1002237D0, &qword_1001B7788) + 44);
  v50 = a1;
  sub_1000629E8(a1, v16);
  if (qword_100220B50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for DynamicTypeSize();
  v18 = sub_10000BE10(v17, qword_100223660);
  if (qword_100220B60 != -1)
  {
    swift_once();
  }

  v19 = sub_10000BE10(v17, qword_100223680);
  sub_100064834(&qword_1002237D8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = *(v17 - 8);
  v49 = a2;
  v48 = v14;
  v21 = v20;
  v22 = *(v20 + 16);
  v47 = v10;
  v22(v9, v18, v17);
  v22(&v9[*(v4 + 48)], v19, v17);
  sub_10000BEB8(v9, v7, &qword_1002237C8, &qword_1001B7780);
  v23 = *(v4 + 48);
  v24 = *(v21 + 32);
  v24(v12, v7, v17);
  v25 = v12;
  v26 = *(v21 + 8);
  v26(&v7[v23], v17);
  sub_10001AE00(v9, v7, &qword_1002237C8, &qword_1001B7780);
  v24((v25 + *(v47 + 36)), &v7[*(v4 + 48)], v17);
  v26(v7, v17);
  v14 = v49;
  sub_10000BFFC(&qword_1002237A0, &qword_100223790, &qword_1001B7768, &protocol conformance descriptor for ZStack<A>);
  sub_10000BFFC(&qword_1002237A8, &qword_100223798, &qword_1001B7770, &protocol conformance descriptor for ClosedRange<A>);
  v27 = v48;
  View.dynamicTypeSize<A>(_:)();
  sub_1000050C4(v25, &qword_100223798, &qword_1001B7770);
  sub_1000050C4(v27, &qword_100223790, &qword_1001B7768);
  sub_10006370C();
  LOBYTE(v25) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v14 + *(sub_1000024C4(&qword_100223788, &qword_1001B7760) + 36);
  *v36 = v25;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v17 = static Alignment.center.getter();
  v9 = v37;
  if (qword_100220B78 != -1)
  {
LABEL_9:
    swift_once();
  }

  v38 = Color.opacity(_:)();
  v39 = static Alignment.center.getter();
  v41 = v40;
  *&v55 = v17;
  *(&v55 + 1) = v9;
  *&v56 = 11;
  WORD4(v56) = 256;
  *(&v56 + 10) = v53;
  HIWORD(v56) = v54;
  *&v57 = v38;
  WORD4(v57) = 256;
  *&v58 = v39;
  *(&v58 + 1) = v40;
  v42 = (v14 + *(sub_1000024C4(&qword_100223770, &qword_1001B7758) + 36));
  v43 = v56;
  *v42 = v55;
  v42[1] = v43;
  v44 = v58;
  v42[2] = v57;
  v42[3] = v44;
  v59[0] = v17;
  v59[1] = v9;
  v59[2] = 11;
  v60 = 256;
  v61 = v53;
  v62 = v54;
  v63 = v38;
  v64 = 256;
  v65 = v39;
  v66 = v41;
  sub_10000BEB8(&v55, v52, &qword_1002237B8, &qword_1001B7778);
  return sub_1000050C4(v59, &qword_1002237B8, &qword_1001B7778);
}

uint64_t sub_1000629E8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a1;
  v136 = a2;
  v131 = sub_1000024C4(&qword_1002237F8, &qword_1001B77A0);
  __chkstk_darwin(v131);
  v129 = &v108 - v2;
  v3 = sub_1000024C4(&qword_100223800, &qword_1001B77A8);
  __chkstk_darwin(v3 - 8);
  v127 = &v108 - v4;
  v125 = sub_1000024C4(&qword_100223808, &qword_1001B77B0);
  __chkstk_darwin(v125);
  v124 = &v108 - v5;
  v123 = sub_1000024C4(&qword_100223810, &qword_1001B77B8);
  __chkstk_darwin(v123);
  v122 = &v108 - v6;
  v120 = sub_1000024C4(&qword_100223818, &qword_1001B77C0);
  v7 = __chkstk_darwin(v120);
  v135 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v118 = &v108 - v10;
  __chkstk_darwin(v9);
  v139 = &v108 - v11;
  v12 = sub_1000024C4(&qword_100223820, &qword_1001B77C8);
  __chkstk_darwin(v12);
  v14 = (&v108 - v13);
  v15 = sub_1000024C4(&qword_100223828, &qword_1001B77D0);
  v16 = __chkstk_darwin(v15 - 8);
  v130 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v109 = &v108 - v18;
  v138 = sub_1000024C4(&qword_100223830, &qword_1001B77D8);
  v19 = __chkstk_darwin(v138);
  v126 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v108 - v21;
  v137 = sub_1000024C4(&qword_100223838, &qword_1001B77E0);
  v23 = __chkstk_darwin(v137);
  v121 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v108 - v25;
  v119 = sub_1000024C4(&qword_100223840, &qword_1001B77E8);
  v27 = __chkstk_darwin(v119);
  v133 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v134 = &v108 - v30;
  v31 = __chkstk_darwin(v29);
  v117 = &v108 - v32;
  v33 = __chkstk_darwin(v31);
  v128 = &v108 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v108 - v36;
  __chkstk_darwin(v35);
  v140 = &v108 - v38;
  v39 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v40 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v115 = sub_1000024C4(&qword_100223848, &qword_1001B7820);
  v42 = (v14 + *(v115 + 36));
  v114 = sub_1000024C4(&qword_100223850, &qword_1001B7828);
  v43 = *(v114 + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v44 = type metadata accessor for SymbolRenderingMode();
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v113 = v44;
  v112 = v46;
  v111 = v45 + 56;
  (v46)(v42 + v43, 0, 1);
  *v42 = swift_getKeyPath();
  *v14 = v39;
  v14[1] = KeyPath;
  v14[2] = v40;
  *(v14 + *(v12 + 36)) = static Color.white.getter();
  v47 = sub_100064218();
  v48 = v109;
  v132 = v12;
  v110 = v47;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v14, &qword_100223820, &qword_1001B77C8);
  v49 = *v116;
  v50 = 0.0;
  if (v49 == 2)
  {
    v51 = 1.0;
  }

  else
  {
    v51 = 0.0;
  }

  sub_10001AE00(v48, v22, &qword_100223828, &qword_1001B77D0);
  *&v22[*(v138 + 36)] = v51;
  static UnitPoint.center.getter();
  v53 = v52;
  v55 = v54;
  sub_10001AE00(v22, v26, &qword_100223830, &qword_1001B77D8);
  v56 = &v26[*(v137 + 36)];
  *v56 = v51;
  *(v56 + 1) = v51;
  *(v56 + 2) = v53;
  *(v56 + 3) = v55;
  if (qword_100220B70 != -1)
  {
    swift_once();
  }

  v57 = qword_1002236A0;
  sub_10001AE00(v26, v37, &qword_100223838, &qword_1001B77E0);
  v58 = v119;
  v59 = &v37[*(v119 + 36)];
  *v59 = v57;
  v59[8] = v49 == 2;
  sub_10001AE00(v37, v140, &qword_100223840, &qword_1001B77E8);

  v60 = v129;
  ProgressView<>.init<>()();
  v61 = static Color.white.getter();
  v62 = swift_getKeyPath();
  v63 = (v60 + *(sub_1000024C4(&qword_100223880, &unk_1001B7C30) + 36));
  *v63 = v62;
  v63[1] = v61;
  *(v60 + *(sub_1000024C4(&qword_100223888, &unk_1001B78A0) + 36)) = 257;
  v64 = (v60 + *(v131 + 36));
  v65 = *(sub_1000024C4(&qword_100223890, &qword_1001B7C40) + 28);
  v66 = enum case for ControlSize.small(_:);
  v67 = type metadata accessor for ControlSize();
  (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
  *v64 = swift_getKeyPath();
  sub_100064450();
  v68 = v127;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v60, &qword_1002237F8, &qword_1001B77A0);
  if (v49 == 1)
  {
    v69 = 1.0;
  }

  else
  {
    v69 = 0.0;
  }

  v70 = v124;
  sub_10001AE00(v68, v124, &qword_100223800, &qword_1001B77A8);
  *(v70 + *(v125 + 36)) = v69;
  static UnitPoint.center.getter();
  v72 = v71;
  v74 = v73;
  v75 = v70;
  v76 = v122;
  sub_10001AE00(v75, v122, &qword_100223808, &qword_1001B77B0);
  v77 = v76 + *(v123 + 36);
  *v77 = v69;
  *(v77 + 8) = v69;
  *(v77 + 16) = v72;
  *(v77 + 24) = v74;
  v78 = v76;
  v79 = v118;
  sub_10001AE00(v78, v118, &qword_100223810, &qword_1001B77B8);
  v80 = v79 + *(v120 + 36);
  *v80 = v57;
  *(v80 + 8) = v49 == 1;
  sub_10001AE00(v79, v139, &qword_100223818, &qword_1001B77C0);
  v116 = v57;

  v81 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v82 = Font.weight(_:)();

  v83 = swift_getKeyPath();
  v84 = (v14 + *(v115 + 36));
  v85 = *(v114 + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v112(v84 + v85, 0, 1, v113);
  *v84 = swift_getKeyPath();
  *v14 = v81;
  v14[1] = v83;
  v14[2] = v82;
  *(v14 + *(v132 + 36)) = static Color.white.getter();
  v86 = v130;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v14, &qword_100223820, &qword_1001B77C8);
  v87 = v49 == 3 || v49 == 0;
  v88 = v87;
  if (v87)
  {
    v50 = 1.0;
  }

  v89 = v126;
  sub_10001AE00(v86, v126, &qword_100223828, &qword_1001B77D0);
  *(v89 + *(v138 + 36)) = v50;
  static UnitPoint.center.getter();
  v91 = v90;
  v93 = v92;
  v94 = v89;
  v95 = v121;
  sub_10001AE00(v94, v121, &qword_100223830, &qword_1001B77D8);
  v96 = v95 + *(v137 + 36);
  *v96 = v50;
  *(v96 + 8) = v50;
  *(v96 + 16) = v91;
  *(v96 + 24) = v93;
  v97 = v95;
  v98 = v117;
  sub_10001AE00(v97, v117, &qword_100223838, &qword_1001B77E0);
  v99 = v98 + *(v58 + 36);
  *v99 = v57;
  *(v99 + 8) = v88;
  v100 = v128;
  sub_10001AE00(v98, v128, &qword_100223840, &qword_1001B77E8);
  v101 = v134;
  sub_10000BEB8(v140, v134, &qword_100223840, &qword_1001B77E8);
  v102 = v139;
  v103 = v135;
  sub_10000BEB8(v139, v135, &qword_100223818, &qword_1001B77C0);
  v104 = v133;
  sub_10000BEB8(v100, v133, &qword_100223840, &qword_1001B77E8);
  v105 = v136;
  sub_10000BEB8(v101, v136, &qword_100223840, &qword_1001B77E8);
  v106 = sub_1000024C4(&qword_1002238D8, &unk_1001B78F0);
  sub_10000BEB8(v103, v105 + *(v106 + 48), &qword_100223818, &qword_1001B77C0);
  sub_10000BEB8(v104, v105 + *(v106 + 64), &qword_100223840, &qword_1001B77E8);

  sub_1000050C4(v100, &qword_100223840, &qword_1001B77E8);
  sub_1000050C4(v102, &qword_100223818, &qword_1001B77C0);
  sub_1000050C4(v140, &qword_100223840, &qword_1001B77E8);
  sub_1000050C4(v104, &qword_100223840, &qword_1001B77E8);
  sub_1000050C4(v103, &qword_100223818, &qword_1001B77C0);
  return sub_1000050C4(v101, &qword_100223840, &qword_1001B77E8);
}

double sub_10006370C()
{
  v0 = sub_1000024C4(&qword_1002237E0, &qword_1001B7790);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = sub_1000024C4(&qword_1002237E8, &qword_1001B7798);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PlayButtonView(0);
  sub_10003A0D8(v9);
  if (qword_100220B50 != -1)
  {
    swift_once();
  }

  v10 = sub_10000BE10(v6, qword_100223660);
  sub_100064834(&qword_1002237F0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v11 = v6;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = *(v7 + 16);
  v12(v5, v10, v6);
  sub_100064834(&qword_1002237D8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v13 = dispatch thunk of static Comparable.< infix(_:_:)();
  sub_1000050C4(v5, &qword_1002237E8, &qword_1001B7798);
  if ((v13 & 1) == 0)
  {
    if (qword_100220B60 != -1)
    {
      swift_once();
    }

    v16 = sub_10000BE10(v6, qword_100223680);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v12(v2, v16, v6);
      v17 = dispatch thunk of static Comparable.<= infix(_:_:)();
      sub_1000050C4(v2, &qword_1002237E0, &qword_1001B7790);
      (*(v7 + 8))(v9, v6);
      v18 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      v2 = v18;
      if ((v17 & 1) == 0)
      {
        [v18 scaledValueForValue:1.0];
        v15 = v21;
        goto LABEL_14;
      }

      if (qword_100220B68 == -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_12:
    v19 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:qword_100223698];
    [v2 scaledValueForValue:v19 compatibleWithTraitCollection:1.0];
    v15 = v20;

    v2 = v19;
    goto LABEL_14;
  }

  (*(v7 + 8))(v9, v6);
  v11 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  if (qword_100220B58 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:qword_100223678];
  [v11 scaledValueForValue:v2 compatibleWithTraitCollection:1.0];
  v15 = v14;

LABEL_14:
  return v15;
}

uint64_t sub_100063C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100063C74()
{
  v1 = (type metadata accessor for PlayButtonView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_1000024C4(&qword_100222A00, &unk_1001B65F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DynamicTypeSize();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100063D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100063E60()
{
  result = qword_100223778;
  if (!qword_100223778)
  {
    sub_10000460C(&qword_100223770, &qword_1001B7758);
    sub_100063F18();
    sub_10000BFFC(&qword_1002237B0, &qword_1002237B8, &qword_1001B7778, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223778);
  }

  return result;
}

unint64_t sub_100063F18()
{
  result = qword_100223780;
  if (!qword_100223780)
  {
    sub_10000460C(&qword_100223788, &qword_1001B7760);
    sub_10000460C(&qword_100223790, &qword_1001B7768);
    sub_10000460C(&qword_100223798, &qword_1001B7770);
    sub_10000BFFC(&qword_1002237A0, &qword_100223790, &qword_1001B7768, &protocol conformance descriptor for ZStack<A>);
    sub_10000BFFC(&qword_1002237A8, &qword_100223798, &qword_1001B7770, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223780);
  }

  return result;
}

uint64_t sub_100064074(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100223768, &unk_1001B7748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1000640DC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10006416C(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100221A50, &qword_1001B4D70);
  __chkstk_darwin(v2 - 8);
  sub_10000BEB8(a1, &v5 - v3, &qword_100221A50, &qword_1001B4D70);
  return EnvironmentValues.symbolRenderingMode.setter();
}

unint64_t sub_100064218()
{
  result = qword_100223858;
  if (!qword_100223858)
  {
    sub_10000460C(&qword_100223820, &qword_1001B77C8);
    sub_1000642D0();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8, &qword_1001B6490, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223858);
  }

  return result;
}

unint64_t sub_1000642D0()
{
  result = qword_100223860;
  if (!qword_100223860)
  {
    sub_10000460C(&qword_100223848, &qword_1001B7820);
    sub_100064388();
    sub_10000BFFC(&qword_100223878, &qword_100223850, &qword_1001B7828, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223860);
  }

  return result;
}

unint64_t sub_100064388()
{
  result = qword_100223868;
  if (!qword_100223868)
  {
    sub_10000460C(&qword_100223870, &qword_1001B7860);
    sub_10000BFFC(&qword_100222260, &qword_100222268, &unk_1001B6970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223868);
  }

  return result;
}

unint64_t sub_100064450()
{
  result = qword_100223898;
  if (!qword_100223898)
  {
    sub_10000460C(&qword_1002237F8, &qword_1001B77A0);
    sub_100064508();
    sub_10000BFFC(&qword_1002238D0, &qword_100223890, &qword_1001B7C40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223898);
  }

  return result;
}

unint64_t sub_100064508()
{
  result = qword_1002238A0;
  if (!qword_1002238A0)
  {
    sub_10000460C(&qword_100223888, &unk_1001B78A0);
    sub_100064594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002238A0);
  }

  return result;
}

unint64_t sub_100064594()
{
  result = qword_1002238A8;
  if (!qword_1002238A8)
  {
    sub_10000460C(&qword_100223880, &unk_1001B7C30);
    sub_10000BFFC(&qword_1002238B0, &qword_1002238B8, &unk_1001B78E0, &protocol conformance descriptor for ProgressView<A, B>);
    sub_10000BFFC(&qword_1002238C0, &qword_1002238C8, &unk_1001BA4F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002238A8);
  }

  return result;
}

unint64_t sub_10006467C()
{
  result = qword_1002238E0;
  if (!qword_1002238E0)
  {
    sub_10000460C(&qword_100223768, &unk_1001B7748);
    sub_10000460C(&qword_100223758, &qword_1001B7738);
    sub_10000460C(&qword_100223750, &qword_1001B7730);
    type metadata accessor for PlainButtonStyle();
    sub_10000BFFC(&qword_1002237C0, &qword_100223750, &qword_1001B7730, &protocol conformance descriptor for Button<A>);
    sub_100064834(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100064834(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002238E0);
  }

  return result;
}

uint64_t sub_100064834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10006488C(uint64_t a1, void (*a2)(void, void), void *a3, uint64_t a4, uint64_t a5)
{
  v130 = a2;
  v9 = sub_1000024C4(&qword_100221E38, &qword_1001B53C0);
  __chkstk_darwin(v9 - 8);
  v105 = &v97 - v10;
  v126 = type metadata accessor for Sport();
  v106 = *(v126 - 8);
  __chkstk_darwin(v126);
  v101 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v13 = __chkstk_darwin(v12 - 8);
  v100 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v103 = &v97 - v15;
  v16 = type metadata accessor for URL();
  v124 = *(v16 - 8);
  v125 = v16;
  v17 = __chkstk_darwin(v16);
  v98 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v99 = &v97 - v19;
  v20 = sub_1000024C4(&qword_100221710, &unk_1001B4470);
  v21 = __chkstk_darwin(v20 - 8);
  v119 = &v97 - v22;
  v122 = *(a4 - 8);
  v23 = __chkstk_darwin(v21);
  v104 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v118 = &v97 - v25;
  v26 = type metadata accessor for Music();
  v120 = *(v26 - 8);
  v121 = v26;
  __chkstk_darwin(v26);
  v102 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TimeZone();
  v116 = *(v28 - 8);
  v117 = v28;
  __chkstk_darwin(v28);
  v115 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Date();
  v114 = *(v132 - 8);
  __chkstk_darwin(v132);
  v113 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for DateInterval();
  v110 = *(v131 - 8);
  __chkstk_darwin(v131);
  v109 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v127 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v111 = &v97 - v32;
  v33 = type metadata accessor for String.Encoding();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = objc_opt_self();
  v123 = a3;
  v38 = [v37 eventWithEventStore:a3];
  v39 = *(a5 + 136);
  v40 = v38;
  v39(a4, a5);
  v41 = String._bridgeToObjectiveC()();

  [v40 setTitle:v41];

  v42 = *(a5 + 120);
  v134 = a1;
  v43 = a4;
  v44 = a4;
  v45 = a5;
  v42(v44, a5);
  static String.Encoding.utf8.getter();
  v46 = String.data(using:allowLossyConversion:)();
  v48 = v47;

  (*(v34 + 8))(v36, v33);
  if (v48 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v40 setStructuredData:isa];

    v49.n128_f64[0] = sub_100065724(v46, v48);
  }

  v51 = v130;
  if (v130)
  {
    v52 = objc_opt_self();
    v53 = v51;
    v54 = [v52 locationWithMapItem:v53];
    [v40 setStructuredLocation:v54];
  }

  v55 = *(v45 + 168);
  v128 = v45;
  v129 = v45 + 168;
  v130 = v55;
  v56 = v111;
  v57 = v43;
  v55(v43, v45, v49);
  v58 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v135 = v40;
  v107 = AssociatedConformanceWitness;
  v108 = *(AssociatedConformanceWitness + 16);
  v60 = v109;
  v108(v58, AssociatedConformanceWitness);
  v127 = *(v127 + 8);
  (v127)(v56, v58);
  v61 = v113;
  DateInterval.start.getter();
  v133 = v57;
  v110 = *(v110 + 8);
  (v110)(v60, v131);
  v62 = Date._bridgeToObjectiveC()().super.isa;
  v114 = *(v114 + 8);
  (v114)(v61, v132);
  [v135 setStartDate:v62];

  v130(v133, v128);
  v63 = v107;
  v108(v58, v107);
  (v127)(v56, v58);
  DateInterval.end.getter();
  (v110)(v60, v131);
  v64 = v133;
  v65 = Date._bridgeToObjectiveC()().super.isa;
  (v114)(v61, v132);
  [v135 setEndDate:v65];

  v66 = v134;
  v130(v64, v128);
  v67 = v115;
  v68 = v135;
  (*(v63 + 24))(v58, v63);
  (v127)(v56, v58);
  v69 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v116 + 8))(v67, v117);
  [v68 setTimeZone:v69];

  v70 = [v123 defaultCalendarForNewEvents];
  [v68 setCalendar:v70];

  v71 = *(v122 + 16);
  v71(v118, v66, v64);
  v72 = v119;
  v73 = v121;
  v74 = swift_dynamicCast();
  v75 = v120;
  v76 = *(v120 + 56);
  if (v74)
  {
    v76(v72, 0, 1, v73);
    v77 = v102;
    (*(v75 + 32))(v102, v72, v73);
    v78 = v103;
    Music.webURL.getter();
    v79 = v124;
    v80 = v125;
    v81 = (*(v124 + 48))(v78, 1, v125);
    v82 = v126;
    if (v81 != 1)
    {
      v88 = v99;
      (*(v79 + 32))(v99, v78, v80);
      URL.absoluteString.getter();
      v89 = String._bridgeToObjectiveC()();

      v90 = v135;
      [v135 setNotes:v89];

      (*(v79 + 8))(v88, v80);
      (*(v75 + 8))(v77, v73);
      return v135;
    }

    (*(v75 + 8))(v77, v73);
    sub_1000050C4(v78, &qword_1002214F8, &qword_1001B3D20);
  }

  else
  {
    v76(v72, 1, 1, v73);
    sub_1000050C4(v72, &qword_100221710, &unk_1001B4470);
    v80 = v125;
    v82 = v126;
    v79 = v124;
  }

  v71(v104, v134, v133);
  v83 = v105;
  v84 = swift_dynamicCast();
  v85 = v106;
  if (v84)
  {
    (*(v106 + 56))(v83, 0, 1, v82);
    v86 = v101;
    (*(v85 + 32))(v101, v83, v82);
    v87 = v100;
    Sport.webURL.getter();
    if ((*(v79 + 48))(v87, 1, v80) == 1)
    {

      (*(v85 + 8))(v86, v82);
      sub_1000050C4(v87, &qword_1002214F8, &qword_1001B3D20);
    }

    else
    {
      v91 = v80;
      v92 = v98;
      (*(v79 + 32))(v98, v87, v91);
      URL.absoluteString.getter();
      v93 = v86;
      v94 = String._bridgeToObjectiveC()();

      v95 = v135;
      [v135 setNotes:v94];

      (*(v79 + 8))(v92, v91);
      (*(v85 + 8))(v93, v82);
    }
  }

  else
  {

    (*(v85 + 56))(v83, 1, 1, v82);
    sub_1000050C4(v83, &qword_100221E38, &qword_1001B53C0);
  }

  return v135;
}

double sub_100065724(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000606F8(a1, a2);
  }

  return result;
}

uint64_t sub_100065738()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_1002390A0 = result;
  return result;
}

uint64_t sub_100065880(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(_:)();
  *a3 = result;
  return result;
}

uint64_t sub_1000658DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006599C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DesignTimeEventAttribution(uint64_t a1)
{
  result = qword_100223940;
  if (!qword_100223940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100065A8C(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100065B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_100065B7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_100065E78(&qword_100221260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100065C24(uint64_t a1)
{
  String.hash(into:)();
  type metadata accessor for URL();
  sub_100065E78(&qword_100221260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100065CB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_100065E78(&qword_100221260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100065D54(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static URL.== infix(_:_:)();
}

uint64_t sub_100065E20(uint64_t a1)
{
  result = sub_100065E78(&qword_100223980, type metadata accessor for DesignTimeEventAttribution, &unk_1001B7994);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100065E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100065EC8(uint64_t a1)
{
  result = sub_100065EF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100065EF0()
{
  result = qword_100223988;
  if (!qword_100223988)
  {
    type metadata accessor for TicketAttribution();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223988);
  }

  return result;
}

uint64_t sub_100065F54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100065F9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100066008(uint64_t a1)
{
  static Color.black.getter();
  v1 = Color.opacity(_:)();

  qword_100223990 = v1;
}

uint64_t sub_100066048()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_100223998 = result;
  return result;
}

uint64_t sub_100066080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v7 = sub_1000024C4(&qword_1002239A0, &qword_1001B7B00);
  __chkstk_darwin(v7 - 8);
  v9 = (&v38 - v8);
  v10 = sub_1000024C4(&qword_1002239A8, &qword_1001B7B08);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_1000024C4(&qword_1002239B0, &qword_1001B7B10);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v39 = sub_1000024C4(&qword_1002239B8, &qword_1001B7B18);
  __chkstk_darwin(v39);
  v40 = &v38 - v17;
  *v9 = static Alignment.center.getter();
  v9[1] = v18;
  v19 = sub_1000024C4(&qword_1002239C0, &qword_1001B7B20);
  sub_100066518(a1, a2, a3 & 1, v9 + *(v19 + 44));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v9, v13, &qword_1002239A0, &qword_1001B7B00);
  v20 = &v13[*(v11 + 44)];
  v21 = v47;
  *(v20 + 4) = v46;
  *(v20 + 5) = v21;
  *(v20 + 6) = v48;
  v22 = v43;
  *v20 = v42;
  *(v20 + 1) = v22;
  v23 = v45;
  *(v20 + 2) = v44;
  *(v20 + 3) = v23;
  v24 = *(a1 + 16);
  v25 = v24[5];
  v26 = v24[6];
  sub_10001BED0(v24 + 2, v25);
  if ((*(v26 + 32))(v25, v26))
  {
    if (qword_100220BB0 != -1)
    {
      swift_once();
    }

    v27 = qword_100223990;
  }

  else
  {
    v27 = 0;
  }

  v28 = static Alignment.center.getter();
  v30 = v29;
  sub_10001AE00(v13, v16, &qword_1002239A8, &qword_1001B7B08);
  v31 = &v16[*(v14 + 36)];
  *v31 = v27;
  v31[1] = v28;
  v31[2] = v30;
  LocalizedStringKey.init(stringLiteral:)();
  v33 = v24[5];
  v32 = v24[6];
  sub_10001BED0(v24 + 2, v33);
  (*(v32 + 32))(v33, v32);
  sub_100067D10();
  v34 = v40;
  View.accessibilityLabel(_:isEnabled:)();

  sub_1000050C4(v16, &qword_1002239B0, &qword_1001B7B10);
  LocalizedStringKey.init(stringLiteral:)();
  v35 = v24[5];
  v36 = v24[6];
  sub_10001BED0(v24 + 2, v35);
  (*(v36 + 32))(v35, v36);
  ModifiedContent<>.accessibilityLabel(_:isEnabled:)();

  return sub_1000050C4(v34, &qword_1002239B8, &qword_1001B7B18);
}

uint64_t sub_100066518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v81 = a2;
  v92 = a4;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin(v5);
  v88 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1000024C4(&qword_1002239F0, &qword_1001B7B30);
  __chkstk_darwin(v80);
  v8 = (&v67 - v7);
  v84 = sub_1000024C4(&qword_1002239F8, &qword_1001B7B38);
  __chkstk_darwin(v84);
  v82 = &v67 - v9;
  v87 = sub_1000024C4(&qword_100223A00, &qword_1001B7B40);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v67 - v10;
  v11 = sub_1000024C4(&qword_100223A08, &qword_1001B7B48);
  v12 = __chkstk_darwin(v11 - 8);
  v89 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v67 - v14;
  v70 = type metadata accessor for EnvironmentValues();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AnimationTimelineSchedule();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v67 - v21;
  v75 = sub_1000024C4(&qword_100223A10, &qword_1001B7B50);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v67 - v23;
  v77 = sub_1000024C4(&qword_100223A18, &qword_1001B7B58);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v67 - v24;
  v25 = sub_1000024C4(&qword_100223A20, &qword_1001B7B60);
  v26 = __chkstk_darwin(v25 - 8);
  v79 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v78 = &v67 - v28;
  v29 = *(a1 + 16);
  v30 = v29[5];
  v31 = v29[6];
  sub_10001BED0(v29 + 2, v30);
  if ((*(v31 + 32))(v30, v31) == 3 || (v32 = v29[5], v33 = v29[6], sub_10001BED0(v29 + 2, v32), (*(v33 + 32))(v32, v33) == 2))
  {
    v71 = v8;
    v34 = v16;
    v35 = v17;
    v36 = a1;
    v37 = v29[5];
    v38 = v29[6];
    sub_10001BED0(v29 + 2, v37);
    if ((*(v38 + 32))(v37, v38) == 3)
    {
      v39 = v81;
      v40 = v93;
    }

    else
    {
      v39 = v81;
      v40 = v93;
      if ((v93 & 1) == 0)
      {

        static os_log_type_t.fault.getter();
        v42 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v43 = v68;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10001BC5C(v39, 0);
        (*(v69 + 8))(v43, v70);
      }
    }

    AnimationTimelineSchedule.init(minimumInterval:paused:)();
    v44 = swift_allocObject();
    *(v44 + 16) = a1;
    *(v44 + 24) = v39;
    *(v44 + 32) = v40 & 1;
    (*(v35 + 16))(v20, v22, v34);
    v45 = swift_allocObject();
    *(v45 + 16) = sub_100068034;
    *(v45 + 24) = v44;

    sub_1000681C8(v39, v40 & 1);
    sub_1000024C4(&qword_100223A58, &qword_1001B7B88);
    sub_1000685B8(&qword_100223A60, &type metadata accessor for AnimationTimelineSchedule, &protocol conformance descriptor for AnimationTimelineSchedule);
    sub_1000681D4();
    v46 = v73;
    TimelineView<>.init(_:content:)();
    (*(v35 + 8))(v22, v34);
    sub_1000683AC();
    v47 = v72;
    v48 = v75;
    View.accessibilityHidden(_:)();
    (*(v74 + 8))(v46, v48);
    v41 = v78;
    sub_10001AE00(v47, v78, &qword_100223A18, &qword_1001B7B58);
    (*(v76 + 56))(v41, 0, 1, v77);
    v8 = v71;
  }

  else
  {
    v41 = v78;
    (*(v76 + 56))(v78, 1, 1, v77);
    v36 = a1;
  }

  *v8 = static Alignment.center.getter();
  v8[1] = v49;
  v50 = sub_1000024C4(&qword_100223A28, &qword_1001B7B68);
  sub_10006749C(v36, (v8 + *(v50 + 44)));
  *(v8 + *(v80 + 36)) = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v51 = v82;
  sub_10001AE00(v8, v82, &qword_1002239F0, &qword_1001B7B30);
  v52 = v84;
  v53 = (v51 + *(v84 + 36));
  v54 = v101;
  v53[4] = v100;
  v53[5] = v54;
  v53[6] = v102;
  v55 = v97;
  *v53 = v96;
  v53[1] = v55;
  v56 = v99;
  v53[2] = v98;
  v53[3] = v56;
  v57 = v88;
  static AccessibilityChildBehavior.combine.getter();
  v58 = sub_100067E80();
  v59 = v83;
  View.accessibilityElement(children:)();
  (*(v90 + 8))(v57, v91);
  sub_1000050C4(v51, &qword_1002239F8, &qword_1001B7B38);
  v94 = v52;
  v95 = v58;
  swift_getOpaqueTypeConformance2();
  v60 = v86;
  v61 = v87;
  View.accessibilityIdentifier(_:)();
  (*(v85 + 8))(v59, v61);
  v62 = v79;
  sub_10000BEB8(v41, v79, &qword_100223A20, &qword_1001B7B60);
  v63 = v89;
  sub_10000BEB8(v60, v89, &qword_100223A08, &qword_1001B7B48);
  v64 = v92;
  sub_10000BEB8(v62, v92, &qword_100223A20, &qword_1001B7B60);
  v65 = sub_1000024C4(&qword_100223A50, &qword_1001B7B80);
  sub_10000BEB8(v63, v64 + *(v65 + 48), &qword_100223A08, &qword_1001B7B48);
  sub_1000050C4(v60, &qword_100223A08, &qword_1001B7B48);
  sub_1000050C4(v41, &qword_100223A20, &qword_1001B7B60);
  sub_1000050C4(v63, &qword_100223A08, &qword_1001B7B48);
  return sub_1000050C4(v62, &qword_100223A20, &qword_1001B7B60);
}

uint64_t sub_1000670FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = type metadata accessor for Font.TextStyle();
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CircularProgressViewStyle(0);
  __chkstk_darwin(v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000024C4(&qword_1002238B8, &unk_1001B78E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = *(a1 + 16);
  v14 = v13[5];
  v15 = v13[6];
  sub_10001BED0(v13 + 2, v14);
  v16 = (*(v15 + 24))(v14, v15);
  *&v29 = v17;
  BYTE8(v29) = 0;
  v28 = 0x3FF0000000000000;
  sub_100068430(v16, v18, v19);
  ProgressView.init<A>(value:total:)();
  *v8 = static Color.white.getter();
  *&v29 = 0x4000000000000000;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.body(_:), v26);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  sub_10000BFFC(&qword_1002238B0, &qword_1002238B8, &unk_1001B78E0, &protocol conformance descriptor for ProgressView<A, B>);
  sub_1000685B8(&qword_100223A80, type metadata accessor for CircularProgressViewStyle, &unk_1001BC9FC);
  v20 = v27;
  View.progressViewStyle<A>(_:)();
  sub_100068484(v8);
  (*(v10 + 8))(v12, v9);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = (v20 + *(sub_1000024C4(&qword_100223A78, &unk_1001B7B90) + 36));
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;
  v21[2] = v31;
  result = sub_1000024C4(&qword_100223A58, &qword_1001B7B88);
  v24 = (v20 + *(result + 36));
  *v24 = sub_100067474;
  v24[1] = 0;
  return result;
}

uint64_t sub_10006749C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v87 = a2;
  v81 = sub_1000024C4(&qword_1002237F8, &qword_1001B77A0);
  __chkstk_darwin(v81);
  v4 = &v80 - v3;
  v82 = sub_1000024C4(&qword_100223AA8, &qword_1001B7BB8);
  __chkstk_darwin(v82);
  v6 = &v80 - v5;
  v83 = sub_1000024C4(&qword_100223AB0, &qword_1001B7BC0);
  __chkstk_darwin(v83);
  v8 = &v80 - v7;
  v84 = sub_1000024C4(&qword_100223AB8, &qword_1001B7BC8);
  v9 = __chkstk_darwin(v84);
  v86 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v80 - v12;
  __chkstk_darwin(v11);
  v89 = &v80 - v14;
  v92 = Image.init(systemName:)();
  v91 = static Font.caption2.getter();
  KeyPath = swift_getKeyPath();
  v15 = *(a1 + 16);
  v17 = v15[5];
  v16 = v15[6];
  sub_10001BED0(v15 + 2, v17);
  v18 = (*(v16 + 32))(v17, v16);
  v20 = v15[5];
  v19 = v15[6];
  sub_10001BED0(v15 + 2, v20);
  v21 = (*(v19 + 32))(v20, v19);
  static UnitPoint.center.getter();
  v85 = v22;
  v24 = v23;
  if (qword_100220BB8 != -1)
  {
    swift_once();
  }

  v25 = 0.0;
  if (v21 == 2)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  if (v18 == 2)
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  v28 = qword_100223998;
  v29 = v15[5];
  v30 = v15[6];
  sub_10001BED0(v15 + 2, v29);
  v88 = (*(v30 + 32))(v29, v30) == 2;

  ProgressView<>.init<>()();
  v31 = static Color.white.getter();
  v32 = swift_getKeyPath();
  v33 = &v4[*(sub_1000024C4(&qword_100223880, &unk_1001B7C30) + 36)];
  *v33 = v32;
  v33[1] = v31;
  *&v4[*(sub_1000024C4(&qword_100223888, &unk_1001B78A0) + 36)] = 257;
  v34 = &v4[*(v81 + 36)];
  v35 = *(sub_1000024C4(&qword_100223890, &qword_1001B7C40) + 28);
  v36 = enum case for ControlSize.small(_:);
  v37 = type metadata accessor for ControlSize();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  v38 = v15[5];
  v39 = v15[6];
  sub_10001BED0(v15 + 2, v38);
  if ((*(v39 + 32))(v38, v39) == 1)
  {
    v40 = 1.0;
  }

  else
  {
    v40 = 0.0;
  }

  sub_10001AE00(v4, v6, &qword_1002237F8, &qword_1001B77A0);
  *&v6[*(v82 + 36)] = v40;
  v41 = v15[5];
  v42 = v15[6];
  sub_10001BED0(v15 + 2, v41);
  if ((*(v42 + 32))(v41, v42) == 1)
  {
    v43 = 1.0;
  }

  else
  {
    v43 = 0.0;
  }

  static UnitPoint.center.getter();
  v45 = v44;
  v47 = v46;
  sub_10001AE00(v6, v8, &qword_100223AA8, &qword_1001B7BB8);
  v48 = &v8[*(v83 + 36)];
  *v48 = v43;
  *(v48 + 1) = v43;
  *(v48 + 2) = v45;
  *(v48 + 3) = v47;
  v49 = v15[5];
  v50 = v15[6];
  sub_10001BED0(v15 + 2, v49);
  v51 = (*(v50 + 32))(v49, v50) == 1;
  sub_10001AE00(v8, v13, &qword_100223AB0, &qword_1001B7BC0);
  v52 = &v13[*(v84 + 36)];
  v53 = v28;
  *v52 = v28;
  v52[8] = v51;
  v54 = v89;
  sub_10001AE00(v13, v89, &qword_100223AB8, &qword_1001B7BC8);

  v55 = Image.init(systemName:)();
  v84 = static Font.caption2.getter();
  v83 = swift_getKeyPath();
  v57 = v15[5];
  v56 = v15[6];
  sub_10001BED0(v15 + 2, v57);
  if ((*(v56 + 32))(v57, v56) == 3)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = v15[5];
  v60 = v15[6];
  sub_10001BED0(v15 + 2, v59);
  if ((*(v60 + 32))(v59, v60) == 3)
  {
    v25 = 1.0;
  }

  static UnitPoint.center.getter();
  v62 = v61;
  v64 = v63;
  v65 = v15[5];
  v66 = v15[6];
  sub_10001BED0(v15 + 2, v65);
  LODWORD(v65) = (*(v66 + 32))(v65, v66) == 3;
  LODWORD(v82) = v65;
  v67 = v86;
  sub_10000BEB8(v54, v86, &qword_100223AB8, &qword_1001B7BC8);
  *&v93 = v92;
  *(&v93 + 1) = KeyPath;
  *&v94 = v91;
  *(&v94 + 1) = v27;
  *&v95 = v26;
  v68 = v85;
  *(&v95 + 1) = v26;
  *&v96[0] = v85;
  *(&v96[0] + 1) = v24;
  *&v96[1] = v53;
  BYTE8(v96[1]) = v88;
  v69 = v96[0];
  v70 = v87;
  v87[2] = v95;
  v70[3] = v69;
  *(v70 + 57) = *(v96 + 9);
  v71 = v94;
  *v70 = v93;
  v70[1] = v71;
  v72 = sub_1000024C4(&qword_100223AC0, &qword_1001B7C78);
  sub_10000BEB8(v67, v70 + *(v72 + 48), &qword_100223AB8, &qword_1001B7BC8);
  v73 = (v70 + *(v72 + 64));
  v74 = v55;
  *&v97 = v55;
  v76 = v83;
  v75 = v84;
  *(&v97 + 1) = v83;
  *&v98 = v84;
  *(&v98 + 1) = v58;
  *&v99 = v25;
  *(&v99 + 1) = v25;
  *&v100[0] = v62;
  *(&v100[0] + 1) = v64;
  *&v100[1] = v53;
  BYTE8(v100[1]) = v65;
  v77 = v100[0];
  v73[2] = v99;
  v73[3] = v77;
  v78 = v98;
  *v73 = v97;
  v73[1] = v78;
  *(v73 + 57) = *(v100 + 9);

  sub_10000BEB8(&v93, v103, &qword_100223AC8, &unk_1001B7C80);
  sub_10000BEB8(&v97, v103, &qword_100223AC8, &unk_1001B7C80);
  sub_1000050C4(v89, &qword_100223AB8, &qword_1001B7BC8);
  v101[0] = v74;
  v101[1] = v76;
  v101[2] = v75;
  *&v101[3] = v58;
  *&v101[4] = v25;
  *&v101[5] = v25;
  v101[6] = v62;
  v101[7] = v64;
  v101[8] = v53;
  v102 = v82;
  sub_1000050C4(v101, &qword_100223AC8, &unk_1001B7C80);
  sub_1000050C4(v67, &qword_100223AB8, &qword_1001B7BC8);
  v103[0] = v92;
  v103[1] = KeyPath;
  v103[2] = v91;
  *&v103[3] = v27;
  *&v103[4] = v26;
  *&v103[5] = v26;
  v103[6] = v68;
  v103[7] = v24;
  v103[8] = v53;
  v104 = v88;
  return sub_1000050C4(v103, &qword_100223AC8, &unk_1001B7C80);
}

unint64_t sub_100067D10()
{
  result = qword_1002239C8;
  if (!qword_1002239C8)
  {
    sub_10000460C(&qword_1002239B0, &qword_1001B7B10);
    sub_100067DC8();
    sub_10000BFFC(&qword_1002239E0, &qword_1002239E8, &qword_1001B7B28, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002239C8);
  }

  return result;
}

unint64_t sub_100067DC8()
{
  result = qword_1002239D0;
  if (!qword_1002239D0)
  {
    sub_10000460C(&qword_1002239A8, &qword_1001B7B08);
    sub_10000BFFC(&qword_1002239D8, &qword_1002239A0, &qword_1001B7B00, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002239D0);
  }

  return result;
}

unint64_t sub_100067E80()
{
  result = qword_100223A30;
  if (!qword_100223A30)
  {
    sub_10000460C(&qword_1002239F8, &qword_1001B7B38);
    sub_100067F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223A30);
  }

  return result;
}

unint64_t sub_100067F0C()
{
  result = qword_100223A38;
  if (!qword_100223A38)
  {
    sub_10000460C(&qword_1002239F0, &qword_1001B7B30);
    sub_10000BFFC(&qword_100223A40, &qword_100223A48, &unk_1001B7B70, &protocol conformance descriptor for ZStack<A>);
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8, &qword_1001B6490, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223A38);
  }

  return result;
}

uint64_t sub_100067FF0()
{

  sub_10001BC5C(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100068040(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_1000024C4(&qword_100223A90, &qword_1001B7BA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = sub_1000024C4(&qword_100223A98, &unk_1001B7BA8);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100068188()
{

  return swift_deallocObject();
}

double sub_1000681C8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1000681D4()
{
  result = qword_100223A68;
  if (!qword_100223A68)
  {
    sub_10000460C(&qword_100223A58, &qword_1001B7B88);
    sub_100068260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223A68);
  }

  return result;
}

unint64_t sub_100068260()
{
  result = qword_100223A70;
  if (!qword_100223A70)
  {
    sub_10000460C(&qword_100223A78, &unk_1001B7B90);
    sub_10000460C(&qword_1002238B8, &unk_1001B78E0);
    type metadata accessor for CircularProgressViewStyle(255);
    sub_10000BFFC(&qword_1002238B0, &qword_1002238B8, &unk_1001B78E0, &protocol conformance descriptor for ProgressView<A, B>);
    sub_1000685B8(&qword_100223A80, type metadata accessor for CircularProgressViewStyle, &unk_1001BC9FC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223A70);
  }

  return result;
}

unint64_t sub_1000683AC()
{
  result = qword_100223A88;
  if (!qword_100223A88)
  {
    sub_10000460C(&qword_100223A10, &qword_1001B7B50);
    sub_1000681D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223A88);
  }

  return result;
}

unint64_t sub_100068430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100223AA0;
  if (!qword_100223AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223AA0);
  }

  return result;
}

uint64_t sub_100068484(uint64_t a1)
{
  v2 = type metadata accessor for CircularProgressViewStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000684FC()
{
  result = qword_100223AD0;
  if (!qword_100223AD0)
  {
    sub_10000460C(&qword_1002239B8, &qword_1001B7B18);
    sub_100067D10();
    sub_1000685B8(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223AD0);
  }

  return result;
}

uint64_t sub_1000685B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100068600(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10006862C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100068674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000686F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_1000024C4(&qword_100223B08, &qword_1001B7D68);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v93 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v80 - v7;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0x4000000000000000;
  v8[16] = 0;
  v9 = sub_1000024C4(&qword_100223B10, &qword_1001B7D70);
  sub_100068D9C(a1, &v8[*(v9 + 44)]);
  v10 = static Edge.Set.bottom.getter();
  v11 = EdgeInsets.init(_all:)();
  v14 = *(v4 + 44);
  v92 = v8;
  v15 = &v8[v14];
  *v15 = v10;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  v20 = a1[9];
  if (v20)
  {
    v119 = a1[8];
    v120 = v20;
    sub_10001877C(v11, v12, v13);

    v21 = Text.init<A>(_:)();
    v23 = v22;
    v82 = a1;
    v25 = v24;
    static Font.largeTitle.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v26 = Text.font(_:)();
    v28 = v27;
    v30 = v29;

    sub_100017398(v21, v23, v25 & 1);

    v119 = static Color.white.getter();
    v31 = Text.foregroundStyle<A>(_:)();
    v90 = v32;
    v91 = v31;
    LOBYTE(v23) = v33;
    v89 = v34;
    sub_100017398(v26, v28, v30 & 1);

    KeyPath = swift_getKeyPath();
    v35 = swift_getKeyPath();
    LOBYTE(v96) = v23 & 1;
    LOBYTE(v109[0]) = 0;
    v86 = v23 & 1;
    *&v87 = 0;
    *(&v87 + 1) = v35;
    LOBYTE(v21) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    LOBYTE(v119) = 0;
    *&v85 = 1;
    *(&v85 + 1) = v21;
    v84 = 2;
  }

  else
  {
    v90 = 0;
    v91 = 0;
    KeyPath = 0;
    v89 = 0;
    v84 = 0;
    v85 = 0uLL;
    v87 = 0uLL;
    v86 = 0;
    v37 = 0;
    v39 = 0;
    v41 = 0;
    v43 = 0;
  }

  v44 = Text.init(_:tableName:bundle:comment:)();
  v46 = v45;
  v48 = v47;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v49 = Text.font(_:)();
  v51 = v50;
  v53 = v52;

  sub_100017398(v44, v46, v48 & 1);

  static Color.white.getter();
  v54 = Color.opacity(_:)();

  v119 = v54;
  v55 = Text.foregroundStyle<A>(_:)();
  v81 = v56;
  v82 = v57;
  LOBYTE(v44) = v58;
  sub_100017398(v49, v51, v53 & 1);

  v59 = swift_getKeyPath();
  v80 = v59;
  v60 = swift_getKeyPath();
  v61 = v44 & 1;
  LOBYTE(v119) = v44 & 1;
  LOBYTE(v96) = 0;
  v62 = v93;
  sub_10000BEB8(v92, v93, &qword_100223B08, &qword_1001B7D68);
  v63 = v62;
  v64 = v83;
  sub_10000BEB8(v63, v83, &qword_100223B08, &qword_1001B7D68);
  v65 = sub_1000024C4(&qword_100223B18, &qword_1001B7DD8);
  v66 = v64 + *(v65 + 48);
  *&v96 = v91;
  *(&v96 + 1) = v90;
  *&v97 = v86;
  *(&v97 + 1) = v89;
  *&v98 = KeyPath;
  *(&v98 + 1) = v84;
  v99 = v87;
  v100 = v85;
  *&v101 = v37;
  *(&v101 + 1) = v39;
  *&v102 = v41;
  *(&v102 + 1) = v43;
  v103 = 0;
  *(v66 + 112) = 0;
  v67 = v101;
  *(v66 + 64) = v100;
  *(v66 + 80) = v67;
  *(v66 + 96) = v102;
  v68 = v96;
  v69 = v97;
  v70 = v99;
  *(v66 + 32) = v98;
  *(v66 + 48) = v70;
  *v66 = v68;
  *(v66 + 16) = v69;
  v71 = v64 + *(v65 + 64);
  v72 = v55;
  *&v104 = v55;
  v74 = v81;
  v73 = v82;
  *(&v104 + 1) = v81;
  LOBYTE(v105) = v61;
  DWORD1(v105) = *&v95[3];
  *(&v105 + 1) = *v95;
  *(&v105 + 1) = v82;
  *&v106 = v59;
  *(&v106 + 1) = 2;
  LOBYTE(v107) = 0;
  DWORD1(v107) = *&v94[3];
  *(&v107 + 1) = *v94;
  *(&v107 + 1) = v60;
  v108 = 1;
  v75 = v104;
  v76 = v105;
  v77 = v106;
  v78 = v107;
  *(v71 + 64) = 1;
  *(v71 + 32) = v77;
  *(v71 + 48) = v78;
  *v71 = v75;
  *(v71 + 16) = v76;
  sub_10000BEB8(&v96, &v119, &qword_100223B20, &unk_1001B7DE0);
  sub_10000BEB8(&v104, &v119, &qword_100223100, &qword_1001C0600);
  sub_1000050C4(v92, &qword_100223B08, &qword_1001B7D68);
  v109[0] = v72;
  v109[1] = v74;
  v110 = v61;
  *v111 = *v95;
  *&v111[3] = *&v95[3];
  v112 = v73;
  v113 = v80;
  v114 = 2;
  v115 = 0;
  *v116 = *v94;
  *&v116[3] = *&v94[3];
  v117 = v60;
  v118 = 1;
  sub_1000050C4(v109, &qword_100223100, &qword_1001C0600);
  v119 = v91;
  v120 = v90;
  v121 = v86;
  v122 = v89;
  v123 = KeyPath;
  v124 = v84;
  v125 = v87;
  v126 = v85;
  v127 = v37;
  v128 = v39;
  v129 = v41;
  v130 = v43;
  v131 = 0;
  sub_1000050C4(&v119, &qword_100223B20, &unk_1001B7DE0);
  return sub_1000050C4(v93, &qword_100223B08, &qword_1001B7D68);
}

uint64_t sub_100068D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = sub_1000024C4(&qword_100223B28, &qword_1001B7DF0) - 8;
  v3 = __chkstk_darwin(v49);
  v50 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v6 = &v45[-v5];
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000024C4(&qword_100223B30, &qword_1001B7DF8);
  v12 = __chkstk_darwin(v11 - 8);
  v52 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v48 = &v45[-v14];
  Image.init(_:bundle:)();
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
  v15 = Image.resizable(capInsets:resizingMode:)();

  (*(v8 + 8))(v10, v7);
  v53 = *(a1 + 5);
  *&v54[0] = a1[12];
  sub_1000024C4(&qword_100223B38, &qword_1001B7E00);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v55[38] = v59;
  *&v55[22] = v58;
  *&v55[6] = v57;
  *(v54 + 2) = *v55;
  *(&v54[1] + 2) = *&v55[16];
  v56 = 1;
  v53 = v15;
  LOWORD(v54[0]) = 1;
  *(&v54[2] + 2) = *&v55[32];
  *&v54[3] = *(&v59 + 1);
  sub_1000024C4(&qword_100223B40, &qword_1001B7E08);
  sub_1000697E4();
  View.accessibilityHidden(_:)();
  v60[2] = v54[1];
  v60[3] = v54[2];
  v61 = *&v54[3];
  v60[0] = v53;
  v60[1] = v54[0];
  sub_1000050C4(v60, &qword_100223B40, &qword_1001B7E08);

  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  v46 = v19;
  v47 = v20;
  v21 = &v6[*(sub_1000024C4(&qword_100221B68, &unk_1001B4FF0) + 36)];
  v22 = *(sub_1000024C4(&qword_100221B70, &qword_1001B7140) + 28);
  v23 = enum case for Text.Case.uppercase(_:);
  v24 = type metadata accessor for Text.Case();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v21 + v22, v23, v24);
  (*(v25 + 56))(v21 + v22, 0, 1, v24);
  *v21 = swift_getKeyPath();
  *v6 = v16;
  *(v6 + 1) = v18;
  v6[16] = v46 & 1;
  *(v6 + 3) = v47;
  v26 = v6;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  v27 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v29 = &v6[*(sub_1000024C4(&qword_100223B60, &qword_1001B8DF0) + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = swift_getKeyPath();
  v31 = &v6[*(sub_1000024C4(&qword_100223B68, &qword_1001B7E80) + 36)];
  *v31 = v30;
  *(v31 + 1) = 1;
  v31[16] = 0;
  static Color.white.getter();
  v32 = Color.opacity(_:)();

  *&v6[*(sub_1000024C4(&qword_100223B70, &qword_1001B7E88) + 36)] = v32;
  v33 = swift_allocObject();
  v34 = *(a1 + 5);
  *(v33 + 80) = *(a1 + 4);
  *(v33 + 96) = v34;
  *(v33 + 112) = a1[12];
  v35 = *(a1 + 1);
  *(v33 + 16) = *a1;
  *(v33 + 32) = v35;
  v36 = *(a1 + 3);
  *(v33 + 48) = *(a1 + 2);
  *(v33 + 64) = v36;
  v37 = &v6[*(v49 + 44)];
  *v37 = sub_100069438;
  v37[1] = 0;
  v37[2] = sub_100069964;
  v37[3] = v33;
  v38 = v48;
  v39 = v52;
  sub_10000BEB8(v48, v52, &qword_100223B30, &qword_1001B7DF8);
  v40 = v50;
  sub_10000BEB8(v26, v50, &qword_100223B28, &qword_1001B7DF0);
  v41 = v39;
  v42 = v51;
  sub_10000BEB8(v41, v51, &qword_100223B30, &qword_1001B7DF8);
  v43 = sub_1000024C4(&qword_100223B78, &unk_1001B7E90);
  sub_10000BEB8(v40, v42 + *(v43 + 48), &qword_100223B28, &qword_1001B7DF0);
  sub_10006996C(a1, &v53);
  sub_1000050C4(v26, &qword_100223B28, &qword_1001B7DF0);
  sub_1000050C4(v38, &qword_100223B30, &qword_1001B7DF8);
  sub_1000050C4(v40, &qword_100223B28, &qword_1001B7DF0);
  return sub_1000050C4(v52, &qword_100223B30, &qword_1001B7DF8);
}

void sub_100069438(void *a1@<X8>)
{
  GeometryProxy.size.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000694C0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_100223AD8, &qword_1001B7D48);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = *(v1 + 80);
  v18[4] = *(v1 + 64);
  v18[5] = v10;
  v19 = *(v1 + 96);
  v11 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v11;
  v12 = *(v1 + 48);
  v18[2] = *(v1 + 32);
  v18[3] = v12;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v13 = sub_1000024C4(&qword_100223AE0, &qword_1001B7D50);
  sub_1000686F8(v18, &v9[*(v13 + 44)]);
  v14 = *(v7 + 36);
  v15 = enum case for BlendMode.plusLighter(_:);
  v16 = type metadata accessor for BlendMode();
  (*(*(v16 - 8) + 104))(&v9[v14], v15, v16);
  static AccessibilityChildBehavior.combine.getter();
  sub_1000696E4();
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v3);
  sub_1000050C4(v9, &qword_100223AD8, &qword_1001B7D48);
  result = sub_1000024C4(&qword_100223B00, &qword_1001B7D60);
  *(a1 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_1000696E4()
{
  result = qword_100223AE8;
  if (!qword_100223AE8)
  {
    sub_10000460C(&qword_100223AD8, &qword_1001B7D48);
    sub_100069770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223AE8);
  }

  return result;
}

unint64_t sub_100069770()
{
  result = qword_100223AF0;
  if (!qword_100223AF0)
  {
    sub_10000460C(&qword_100223AF8, &qword_1001B7D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223AF0);
  }

  return result;
}

unint64_t sub_1000697E4()
{
  result = qword_100223B48;
  if (!qword_100223B48)
  {
    sub_10000460C(&qword_100223B40, &qword_1001B7E08);
    sub_100069870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223B48);
  }

  return result;
}

unint64_t sub_100069870()
{
  result = qword_100223B50;
  if (!qword_100223B50)
  {
    sub_10000460C(&qword_100223B58, &qword_1001B7E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223B50);
  }

  return result;
}

uint64_t sub_100069904()
{

  return swift_deallocObject();
}

unint64_t sub_1000699A8()
{
  result = qword_100223B80;
  if (!qword_100223B80)
  {
    sub_10000460C(&qword_100223B00, &qword_1001B7D60);
    sub_10000460C(&qword_100223AD8, &qword_1001B7D48);
    sub_1000696E4();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_10005DDFC(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223B80);
  }

  return result;
}

uint64_t sub_100069A70(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100069B24()
{
  sub_10006A4B0();
}

uint64_t sub_100069B4C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[4];
  v10[6] = a1;
  v10[7] = v5;
  type metadata accessor for Array();
  v10[5] = *(*(*(v4 + 88) + 8) + 8);
  swift_getWitnessTable();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    v2[4] = a1;
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    v10[2] = v2;
    v10[3] = a1;
    sub_100069D58(v9, sub_10006A5A4, v10, &type metadata for () + 8);
  }
}

uint64_t sub_100069E20()
{
  KeyPath = swift_getKeyPath();
  sub_100069CC8(KeyPath, v2, v3);

  return *(v0 + 40);
}

double sub_100069E94(char a1)
{
  v2 = *v1;
  v12 = *(v1 + 40);
  v3 = a1 & 1;
  v11 = a1;
  v10 = *(v2 + 80);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + 40) = v3;
  }

  else
  {
    __chkstk_darwin(v4);
    v9 = *(&v10 + 1);
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8[2] = v1;
    LOBYTE(v9) = v3;
    sub_100069D58(v7, sub_10006A69C, v8, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_100069FD8()
{
  sub_10006A034();

  return LocalizedStringKey.init(stringLiteral:)();
}

BOOL sub_10006A034()
{
  sub_10006A4B0();

  v0 = Array.count.getter();

  return v0 > 1;
}

BOOL sub_10006A098()
{
  sub_10006A4B0();

  v0 = Array.count.getter();

  return v0 == 1;
}

uint64_t sub_10006A0FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return v8;
}

void sub_10006A16C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 15;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = xmmword_1001B7EA0;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v14 = v6;
  v15 = v7;

  v8 = sub_1001894F4(1, 5, 1, inited);
  v12 = v8;
  sub_100006C98(&aBlock, v19);
  sub_100118768(4, v19, &v12, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001ELL;
  v10[3] = 0x80000001001C4640;
  v10[4] = v8;
  v17 = sub_100006D88;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10015B4A4;
  v16 = &unk_100213E10;
  v11 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_10006A3D0()
{

  v1 = qword_100223B88;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10006A440()
{
  sub_10006A3D0();

  return swift_deallocClassInstance();
}

uint64_t sub_10006A4B0()
{
  KeyPath = swift_getKeyPath();
  sub_100069CC8(KeyPath, v2, v3);

  return *(v0 + 32);
}

uint64_t sub_10006A524@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10006A4B0();
}

__n128 sub_10006A598(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10006A5A4()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_10006A5E0()
{

  return swift_deallocObject();
}

double sub_10006A620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10006A638@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100069E20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10006A6B0()
{
  sub_10006A9A0(v0 + OBJC_IVAR____TtC16EventViewService34DesignTimePromotionalAssetsFetcher_event);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for DesignTimePromotionalAssetsFetcher(uint64_t a1)
{
  result = qword_100223C38;
  if (!qword_100223C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006A744(uint64_t a1)
{
  result = type metadata accessor for DesignTimeMusicEvent(319);
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

unint64_t sub_10006A7E4()
{
  result = qword_100223CD8;
  if (!qword_100223CD8)
  {
    type metadata accessor for DesignTimeMusicEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223CD8);
  }

  return result;
}

uint64_t sub_10006A848(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10006A9FC, v3, 0);
}

uint64_t sub_10006A868(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10006A888, v3, 0);
}

uint64_t sub_10006A888()
{
  v1 = v0[2];
  sub_10006A93C(v0[3] + OBJC_IVAR____TtC16EventViewService34DesignTimePromotionalAssetsFetcher_event, v1);
  v2 = type metadata accessor for DesignTimeMusicEvent(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10006A93C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeMusicEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A9A0(uint64_t a1)
{
  v2 = type metadata accessor for DesignTimeMusicEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006AA00()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10006AAE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006AB4C()
{
  v1.n128_f64[0] = sub_100121ABC(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10006AC14(uint64_t a1)
{
  result = sub_10006BB1C(&qword_100223DF8, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10006ACA4(uint64_t a1)
{
  result = sub_10006BB1C(&qword_100223E00, &type metadata accessor for Image, &protocol conformance descriptor for Image);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10006ACFC@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = type metadata accessor for URLError.Code();
  __chkstk_darwin(v1 - 8);
  v22 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URLError();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Artwork.ImageFormat();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Artwork.CropStyle();
  v9 = *(v25 - 8);
  __chkstk_darwin(v25);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  Artwork.maximumWidth.getter();
  Artwork.maximumHeight.getter();
  static Artwork.CropStyle.boundedBox.getter();
  (*(v6 + 104))(v8, enum case for Artwork.ImageFormat.png(_:), v5);
  Artwork.url(width:height:cropStyle:format:)();
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v25);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    return (*(v16 + 32))(v20, v14, v15);
  }

  sub_1000050C4(v14, &qword_1002214F8, &qword_1001B3D20);
  static URLError.Code.badURL.getter();
  sub_1000586C4(_swiftEmptyArrayStorage);
  sub_10006BB1C(&qword_1002232E8, &type metadata accessor for URLError, &protocol conformance descriptor for URLError);
  v17 = v21;
  v18 = v24;
  _BridgedStoredNSError.init(_:userInfo:)();
  URLError._nsError.getter();
  (*(v23 + 8))(v17, v18);
  return swift_willThrow();
}

uint64_t sub_10006B10C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v23[0] = a3;
  v3 = type metadata accessor for URLError.Code();
  __chkstk_darwin(v3 - 8);
  v23[1] = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLError();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artwork.ImageFormat();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Artwork.CropStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v16 - 8);
  v18 = v23 - v17;
  static Artwork.CropStyle.boundedBox.getter();
  (*(v9 + 104))(v11, enum case for Artwork.ImageFormat.png(_:), v8);
  Artwork.url(width:height:cropStyle:format:)();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    return (*(v20 + 32))(v23[0], v18, v19);
  }

  sub_1000050C4(v18, &qword_1002214F8, &qword_1001B3D20);
  static URLError.Code.badURL.getter();
  sub_1000586C4(_swiftEmptyArrayStorage);
  sub_10006BB1C(&qword_1002232E8, &type metadata accessor for URLError, &protocol conformance descriptor for URLError);
  v21 = v25;
  _BridgedStoredNSError.init(_:userInfo:)();
  URLError._nsError.getter();
  (*(v24 + 8))(v7, v21);
  return swift_willThrow();
}

uint64_t sub_10006B510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v44 = a2;
  v35 = a4;
  v40 = a3;
  v6 = type metadata accessor for URLError.Code();
  __chkstk_darwin(v6 - 8);
  v37 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLError();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v36 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Artwork.ImageFormat();
  v41 = *(v10 - 8);
  v42 = v10;
  __chkstk_darwin(v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000024C4(&qword_100223E10, &unk_1001B8160);
  __chkstk_darwin(v13 - 8);
  v15 = v34 - v14;
  v16 = type metadata accessor for Artwork.CropStyle();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v34 - v21;
  v23 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v23 - 8);
  v25 = v34 - v24;
  if (v40 == 2)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    static Artwork.CropStyle.boundedBox.getter();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_1000050C4(v15, &qword_100223E10, &unk_1001B8160);
    }
  }

  else
  {
    v34[1] = v4;
    if (a3)
    {
      static Artwork.CropStyle.squareCenterCrop.getter();
    }

    else
    {
      static Artwork.CropStyle.boundedBox.getter();
    }

    v26 = *(v17 + 32);
    v26(v15, v20, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
    v26(v22, v15, v16);
  }

  v28 = v41;
  v27 = v42;
  (*(v41 + 104))(v12, enum case for Artwork.ImageFormat.png(_:), v42);
  Artwork.url(width:height:cropStyle:format:)();
  (*(v28 + 8))(v12, v27);
  (*(v17 + 8))(v22, v16);
  v29 = type metadata accessor for URL();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v25, 1, v29) != 1)
  {
    return (*(v30 + 32))(v35, v25, v29);
  }

  sub_1000050C4(v25, &qword_1002214F8, &qword_1001B3D20);
  static URLError.Code.badURL.getter();
  sub_1000586C4(_swiftEmptyArrayStorage);
  sub_10006BB1C(&qword_1002232E8, &type metadata accessor for URLError, &protocol conformance descriptor for URLError);
  v31 = v36;
  v32 = v39;
  _BridgedStoredNSError.init(_:userInfo:)();
  URLError._nsError.getter();
  (*(v38 + 8))(v31, v32);
  return swift_willThrow();
}

uint64_t sub_10006BAC4(uint64_t a1)
{
  result = sub_10006BB1C(&qword_100223E08, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10006BB1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006BB74(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v4 = swift_task_alloc();
  v1[20] = v4;
  v5 = swift_task_alloc();
  v1[21] = v5;
  *v5 = v1;
  v5[1] = sub_10006BC70;

  return sub_10006C1AC(v4, a1);
}

uint64_t sub_10006BC70()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10006C088;
  }

  else
  {
    v2 = sub_10006BD84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006BD84()
{
  v1 = [objc_allocWithZone(CLKWatchFaceLibrary) init];
  v0[23] = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_10006BED0;
  v5 = swift_continuation_init();
  v0[17] = sub_1000024C4(&qword_100223E20, &unk_1001B81A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10006CA30;
  v0[13] = &unk_100213F60;
  v0[14] = v5;
  [v1 addWatchFaceAtURL:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10006BED0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_10006C0EC;
  }

  else
  {
    v2 = sub_10006BFE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006BFE0()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);

  sub_10006DE44(v2, "Failed to remove file at %s possibly does not exist", v7);
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10006C088()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006C0EC(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[23];
  v5 = v1[19];
  v4 = v1[20];
  v6 = v1[18];
  swift_willThrow();

  sub_10006DE44(v4, "Failed to remove file at %s possibly does not exist", v9);
  (*(v5 + 8))(v4, v6);

  v7 = v1[1];

  return v7();
}

uint64_t sub_10006C1AC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for URL();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10006C2B0, 0, 0);
}

uint64_t sub_10006C2B0()
{
  v1 = v0[5];
  v2 = [objc_opt_self() defaultSessionConfiguration];
  v0[11] = [objc_opt_self() sessionWithConfiguration:v2];

  v3 = v1[3];
  v4 = v1[4];
  sub_10001BED0(v1, v3);
  (*(v4 + 40))(v3, v4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_10006C498;
  v7 = v0[9];
  v6 = v0[10];

  return NSURLSession.download(from:delegate:)(v6, v7, 0);
}

uint64_t sub_10006C498(void *a1)
{
  v4 = *v2;
  v4[13] = v1;

  v5 = v4[9];
  v6 = v4[7];
  v7 = v4[6];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_10006C97C;
  }

  else
  {

    v9 = *(v6 + 8);
    v4[14] = v9;
    v4[15] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v8 = sub_10006C670;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10006C670()
{
  v1 = *(v0 + 104);
  sub_10006DBD8(*(v0 + 64));
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 88);
    (*(v0 + 112))(*(v0 + 80), *(v0 + 48));

LABEL_3:

    v4 = *(v0 + 8);
    goto LABEL_4;
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 64);
  URL.appendingPathComponent(_:isDirectory:)();
  v6(v7, v2);
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  *(v0 + 16) = 0;
  LODWORD(v6) = [v9 copyItemAtURL:v12 toURL:v14 error:v0 + 16];

  v16 = *(v0 + 16);
  if (!v6)
  {
    v22 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = [v8 defaultManager];
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    *(v0 + 24) = 0;
    v27 = [v23 removeItemAtURL:v25 error:v0 + 24];

    v28 = *(v0 + 112);
    v29 = *(v0 + 88);
    v35 = *(v0 + 80);
    v30 = *(v0 + 48);
    v32 = *(v0 + 24);
    v31 = *(v0 + 32);
    if (v27)
    {
      swift_willThrow();
      v33 = v32;
    }

    else
    {
      v34 = v32;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v28(v31, v30);
    v28(v35, v30);
    goto LABEL_3;
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  v20 = *(v0 + 48);
  v21 = v16;
  v17(v18, v20);

  v4 = *(v0 + 8);
LABEL_4:

  return v4();
}

uint64_t sub_10006C97C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006CA30(uint64_t a1, void *a2)
{
  v3 = sub_10001BED0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000024C4(qword_1002220B8, &unk_1001B5710);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10006CADC(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for URL();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10006CC04, 0, 0);
}

uint64_t sub_10006CC04()
{
  v1 = v0[4];
  v2 = [objc_opt_self() defaultSessionConfiguration];
  v0[13] = [objc_opt_self() sessionWithConfiguration:v2];

  v3 = v1[3];
  v4 = v1[4];
  sub_10001BED0(v1, v3);
  (*(v4 + 16))(v3, v4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_10006CE14;
  v7 = v0[11];
  v6 = v0[12];

  return NSURLSession.download(from:delegate:)(v6, v7, 0);
}

uint64_t sub_10006CE14(void *a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[11];
  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_10006DAF8;
  }

  else
  {

    v9 = *(v6 + 8);
    v4[16] = v9;
    v4[17] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v8 = sub_10006CFEC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10006CFEC()
{
  v71 = v0;
  v1 = *(v0 + 120);
  sub_10006DBD8(*(v0 + 72));
  if (v1)
  {
    v2 = *(v0 + 104);
    (*(v0 + 128))(*(v0 + 96), *(v0 + 40));

LABEL_4:

    v8 = *(v0 + 8);
LABEL_5:

    return v8();
  }

  v3 = *(v0 + 32);
  v4 = v3[3];
  v5 = v3[4];
  sub_10001BED0(v3, v4);
  (*(v5 + 16))(v4, v5);
  v6 = *(v0 + 128);
  v7 = *(v0 + 72);
  v10 = *(v0 + 64);
  v11 = *(v0 + 40);
  URL.lastPathComponent.getter();
  v6(v10, v11);
  URL.appendingPathComponent(_:isDirectory:)();

  v6(v7, v11);
  v12 = objc_opt_self();
  *(v0 + 144) = v12;
  v13 = [v12 defaultManager];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  *(v0 + 16) = 0;
  v20 = [v13 copyItemAtURL:v16 toURL:v18 error:v0 + 16];

  v21 = *(v0 + 16);
  if (!v20)
  {
    v25 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = [*(v0 + 144) defaultManager];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    *(v0 + 24) = 0;
    v30 = [v26 removeItemAtURL:v28 error:v0 + 24];

    v31 = *(v0 + 24);
    v32 = *(v0 + 128);
    v33 = *(v0 + 104);
    v69 = *(v0 + 96);
    v34 = *(v0 + 80);
    v35 = *(v0 + 40);
    if (v30)
    {
      swift_willThrow();
      v36 = v31;
    }

    else
    {
      v37 = v31;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v32(v34, v35);
    v32(v69, v35);
    goto LABEL_4;
  }

  v22 = v21;
  v23 = Data.init(contentsOf:options:)();
  *(v0 + 152) = v23;
  *(v0 + 160) = v24;
  v38 = v23;
  v39 = v24;
  v40 = objc_allocWithZone(UIImage);
  sub_10006E18C(v38, v39);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v42 = [v40 initWithData:isa];
  *(v0 + 168) = v42;

  sub_1000606F8(v38, v39);
  if (!v42)
  {
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 80);
    v46 = *(v0 + 48);
    v45 = *(v0 + 56);
    v47 = *(v0 + 40);
    v48 = type metadata accessor for Logger();
    sub_10000BE10(v48, qword_100239158);
    (*(v46 + 16))(v45, v44, v47);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 128);
    v53 = *(v0 + 56);
    v54 = *(v0 + 40);
    if (v51)
    {
      v55 = swift_slowAlloc();
      v67 = v52;
      v56 = swift_slowAlloc();
      v70 = v56;
      *v55 = 136315138;
      sub_10006E2EC();
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v49;
      v59 = v58;
      v67(v53, v54);
      v60 = sub_100139F7C(v57, v59, &v70);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, log, v50, "Failed to create image from %s", v55, 0xCu);
      sub_100012A7C(v56);

      sub_1000606F8(v38, v39);
    }

    else
    {
      sub_1000606F8(v38, v39);

      v52(v53, v54);
    }

    v61 = *(v0 + 128);
    v62 = *(v0 + 96);
    v63 = *(v0 + 104);
    v64 = *(v0 + 80);
    v65 = *(v0 + 40);
    sub_10006DE44(v64, "Failed to delete wallpaper at %s", v66);

    v61(v64, v65);
    v61(v62, v65);

    v8 = *(v0 + 8);
    goto LABEL_5;
  }

  v43 = swift_task_alloc();
  *(v0 + 176) = v43;
  *v43 = v0;
  v43[1] = sub_10006D6A0;

  return sub_10006E344(v42);
}

uint64_t sub_10006D6A0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10006D918;
  }

  else
  {
    v2 = sub_10006D7E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006D7E0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);

  sub_1000606F8(v2, v1);
  v3 = *(v0 + 128);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  sub_10006DE44(v6, "Failed to delete wallpaper at %s", v10);

  v3(v6, v7);
  v3(v4, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10006D918()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 80);

  sub_1000606F8(v2, v1);
  sub_10006DE44(v3, "Failed to delete wallpaper at %s", v18);
  v4 = [*(v0 + 144) defaultManager];
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  *(v0 + 24) = 0;
  v8 = [v4 removeItemAtURL:v6 error:v0 + 24];

  v9 = *(v0 + 24);
  v10 = *(v0 + 128);
  v11 = *(v0 + 104);
  v19 = *(v0 + 96);
  v12 = *(v0 + 80);
  v13 = *(v0 + 40);
  if (v8)
  {
    swift_willThrow();
    v14 = v9;
  }

  else
  {
    v15 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v10(v12, v13);
  v10(v19, v13);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10006DAF8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_10006DBD8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  static URL.temporaryDirectory.getter();
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 globallyUniqueString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:isDirectory:)();

  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v20 = 0;
  LOBYTE(v10) = [v12 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v20];

  v16 = v20;
  if (v10)
  {
    (*(v3 + 32))(a1, v8, v2);
    return v16;
  }

  else
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (v11)(v8, v2);
  }
}

void sub_10006DE44(uint64_t a1, char *a2, ...)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v27 = 0;
  v12 = [v8 removeItemAtURL:v10 error:&v27];

  v13 = v27;
  if (v12)
  {

    v14 = v13;
  }

  else
  {
    v26 = v27;
    v15 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000BE10(v16, qword_100239158);
    (*(v5 + 16))(v7, a1, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = a2;
      v21 = v20;
      v27 = v20;
      *v19 = 136315138;
      sub_10006E2EC();
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v5 + 8))(v7, v4);
      v25 = sub_100139F7C(v22, v24, &v27);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, v26, v19, 0xCu);
      sub_100012A7C(v21);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

double sub_10006E18C(uint64_t a1, unint64_t a2)
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

void sub_10006E1E0(uint64_t a1)
{
  v1 = [objc_opt_self() creationRequestForAssetFromImage:a1];
}

uint64_t sub_10006E234(uint64_t a1, int a2, void *a3)
{
  v5 = sub_10001BED0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return _swift_continuation_throwingResume(v5);
  }

  if (!a3)
  {
    __break(1u);
    return _swift_continuation_throwingResume(v5);
  }

  sub_1000024C4(qword_1002220B8, &unk_1001B5710);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return _swift_continuation_throwingResumeWithError(v6, v7);
}

unint64_t sub_10006E2EC()
{
  result = qword_100223E18;
  if (!qword_100223E18)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223E18);
  }

  return result;
}

uint64_t sub_10006E364()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v1[18];
  v5 = [objc_opt_self() sharedPhotoLibrary];
  v1[19] = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v1[14] = sub_10006E75C;
  v1[15] = v6;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100185774;
  v1[13] = &unk_100213F10;
  v7 = _Block_copy(v3);
  v1[20] = v7;
  v8 = v4;

  v1[2] = v1;
  v1[3] = sub_10006E52C;
  v9 = swift_continuation_init();
  v1[17] = sub_1000024C4(&qword_100223E20, &unk_1001B81A0);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10006E234;
  v1[13] = &unk_100213F38;
  v1[14] = v9;
  [v5 performChanges:v7 completionHandler:v3];

  return _swift_continuation_await(v2);
}

uint64_t sub_10006E52C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_10006E6A8;
  }

  else
  {
    v2 = sub_10006E63C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006E63C()
{
  v1 = *(v0 + 160);

  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006E6A8(uint64_t a1)
{
  v2 = v1[20];
  v3 = v1[19];
  swift_willThrow();

  _Block_release(v2);
  v4 = v1[1];

  return v4();
}

uint64_t sub_10006E724()
{

  return swift_deallocObject();
}

double sub_10006E764(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10006E79C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10006E7E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006E90C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006E96C()
{
  sub_1000024C4(&qword_100223E90, &qword_1001B8238);
  v0 = *(type metadata accessor for DesignTimeImage(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001B3B50;
  sub_100057B70((v3 + v2));
  sub_100057B70((v3 + v2 + v1));
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001B3B50;
  v5 = v4 + v2;
  sub_100057B70((v4 + v2));
  sub_100057B70((v5 + v1));
  sub_1000024C4(&qword_100223E98, &qword_1001B8240);
  v6 = *(type metadata accessor for DesignTimeWatchFace(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001B3B50;
  v10 = v9 + v8;
  sub_1000AD0FC(v10);
  sub_1000AD0FC(v10 + v7);
  sub_1000024C4(&qword_100223EA0, &qword_1001B8248);
  v11 = *(type metadata accessor for DesignTimeVideo(0) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001B3B50;
  v15 = (v14 + v13);
  sub_10014013C(v15);
  sub_10014013C((v15 + v12));
  return v3;
}

uint64_t sub_10006EC2C(uint64_t a1)
{
  *(a1 + 8) = sub_10006ECB0(&qword_100223EE0, &type metadata accessor for PromotionalContent.WatchFace, &protocol conformance descriptor for PromotionalContent.WatchFace);
  result = sub_10006ECB0(qword_100223EE8, &type metadata accessor for PromotionalContent.WatchFace, &protocol conformance descriptor for PromotionalContent.WatchFace);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10006ECB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10006ECF8(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    sub_10000693C(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10006EE8C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100071A3C(a1);
  return v2;
}

uint64_t sub_10006EECC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 574;
  }

  else
  {
    return 312;
  }
}

uint64_t sub_10006EF30()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 1020;
  }

  else
  {
    return 555;
  }
}

uint64_t sub_10006EF94@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10006F07C(KeyPath, v4, v5);

  v6 = *(*v1 + 96);
  swift_beginAccess();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a1, v1 + v6, v7);
}

uint64_t sub_10006F11C(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 96);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

uint64_t sub_10006F2BC()
{
  v0 = sub_100074440();

  return v0;
}

uint64_t sub_10006F2F4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (v2 + *(*v2 + 104));
  v7 = v6[1];
  v16 = *v6;
  v17 = v7;
  v14 = a1;
  v15 = a2;
  v13 = *(v5 + 80);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    __chkstk_darwin(v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v12[2] = v2;
    v12[3] = a1;
    v12[4] = a2;
    sub_10006F1E4(v11, sub_100074F40, v12, &type metadata for () + 8);
  }
}

uint64_t sub_10006F46C()
{
  KeyPath = swift_getKeyPath();
  sub_10006F07C(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 112));
}

double sub_10006F4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *v3;
  v6 = *(*v3 + 112);
  v15 = *(v3 + v6);
  v14 = a1;
  v13 = *(v5 + 80);
  sub_100011044(a1, a2, a3);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    *(v3 + v6) = v4;
  }

  else
  {
    __chkstk_darwin(v7);
    v12 = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v3;
    LOBYTE(v12) = v4;
    sub_10006F1E4(v10, sub_100074E90, v11, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_10006F654()
{
  sub_1000744CC();
}

uint64_t sub_10006F67C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 120);
  v6 = *(v2 + v5);
  v11[6] = a1;
  v11[7] = v6;
  type metadata accessor for Array();
  v11[5] = *(*(*(*(v4 + 88) + 8) + 8) + 8);
  swift_getWitnessTable();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    *(v2 + v5) = a1;
  }

  else
  {
    __chkstk_darwin(v7);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v2;
    v11[3] = a1;
    sub_10006F1E4(v10, sub_100074A60, v11, &type metadata for () + 8);
  }
}

uint64_t sub_10006F818@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10006F07C(KeyPath, v4, v5);

  v6 = *(*v1 + 128);
  swift_beginAccess();
  return sub_100073F10(v1 + v6, a1);
}

uint64_t sub_10006F8C8(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100073F10(a1, &v6 - v3);
  return sub_10006F95C(v4);
}

uint64_t sub_10006F95C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v5);
  v7 = v14 - v6;
  v8 = *(v4 + 128);
  swift_beginAccess();
  sub_100073F10(v1 + v8, v7);
  v14[0] = *(v4 + 80);
  sub_100074048();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = sub_1000050C4(v7, &qword_1002214F8, &qword_1001B3D20);
  if (v9)
  {
    swift_beginAccess();
    sub_1000740FC(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v10);
    v14[-1] = v14[0];
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    *&v14[-1] = v2;
    *(&v14[-1] + 1) = a1;
    sub_10006F1E4(v12, sub_1000741AC, &v14[-2], &type metadata for () + 8);
  }

  return sub_1000050C4(a1, &qword_1002214F8, &qword_1001B3D20);
}

uint64_t sub_10006FB84(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 128);
  swift_beginAccess();
  sub_1000740FC(a2, a1 + v4);
  return swift_endAccess();
}

void *sub_10006FBFC()
{
  v0 = sub_100074554();
  v1 = v0;
  return v0;
}

void sub_10006FC28(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 136);
  v6 = *(v2 + v5);
  v13 = a1;
  v14 = v6;
  sub_1000024C4(&qword_100223F78, &qword_1001C2F50);
  v12 = *(v4 + 80);
  sub_100074C20();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    v8 = *(v2 + v5);
    *(v2 + v5) = a1;
  }

  else
  {
    __chkstk_darwin(v7);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v2;
    v11[3] = a1;
    sub_10006F1E4(v10, sub_100074D98, v11, &type metadata for () + 8);
  }
}

uint64_t sub_10006FDA0@<X0>(uint64_t a1@<X8>)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  sub_10006F07C(KeyPath, v4, v5);

  v6 = *(*v1 + 144);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a1, v1 + v6);
}

uint64_t sub_10006FE7C(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 144);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(&a1[v5], a2);
  return swift_endAccess();
}

double sub_10006FF38@<D0>(_OWORD *a1@<X8>)
{
  sub_100074814(v6);
  sub_10002089C(v6, &v5);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  result = *&v7;
  v4 = v8;
  a1[2] = v7;
  a1[3] = v4;
  return result;
}

double sub_10006FF84(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_10006F1E4(KeyPath, sub_100074960, &v5, &type metadata for () + 8);
  sub_100006C2C(a1);

  return result;
}

uint64_t sub_100070034(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + *(*a1 + 152));
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  sub_10002089C(a2, &v6);
}

uint64_t sub_1000700D8()
{
  v0 = sub_100074B94();

  return v0;
}

uint64_t sub_100070110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v3 + *(v6 + 160);
  v16 = *v7;
  v14 = a1;
  v15 = a2;
  sub_1000024C4(&qword_10022AF10, &qword_1001B5980);
  v13 = *(v6 + 80);
  sub_10002FC90();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *v7 = a1;
    *(v7 + 1) = a2;
  }

  else
  {
    __chkstk_darwin(v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = a2;
    sub_10006F1E4(v11, sub_100074B3C, v12, &type metadata for () + 8);
  }
}

uint64_t sub_10007029C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_10006FDA0(&v9 - v5);
  v7 = (*(*(*(v2 + 88) + 8) + 136))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1000703D0(uint64_t a1, uint64_t a2)
{
  v29[0] = a1;
  v29[1] = a2;
  v3 = *(*(*v2 + 88) + 8);
  v4 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = __chkstk_darwin(AssociatedTypeWitness);
  v9 = v29 - v8;
  v10 = *(v4 - 8);
  v11 = __chkstk_darwin(v7);
  v13 = v29 - v12;
  v14 = sub_100070FD8(v11);
  v15 = 0;
  v16 = 0;
  if ((v14 & 1) == 0)
  {
    sub_10006FDA0(v13);
    (*(v3 + 168))(v4, v3);
    (*(v10 + 8))(v13, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = sub_100023254(AssociatedTypeWitness, AssociatedConformanceWitness);
    v16 = v18;
    v14 = (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  v19 = v15;
  v20 = sub_100070FD8(v14);
  if (v20)
  {
    result = sub_1000719AC();
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    result = sub_1000708C8(v20);
    if (!v16)
    {
      return result;
    }
  }

  if (!v22)
  {
    return v15;
  }

  v23 = result;
  v24 = v22;
  sub_1000024C4(&qword_100221A38, &qword_1001BA820);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001B3B50;
  *(v25 + 56) = &type metadata for String;
  v28 = sub_100017D20(v25, v26, v27);
  *(v25 + 32) = v19;
  *(v25 + 40) = v16;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v28;
  *(v25 + 64) = v28;
  *(v25 + 72) = v23;
  *(v25 + 80) = v24;
  return String.init(format:_:)();
}

uint64_t sub_1000706A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_10006FDA0(&v9 - v5);
  v7 = (*(*(*(v2 + 88) + 8) + 120))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1000707BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - v5;
  sub_10006FDA0(&v8 - v5);
  (*(*(*(v2 + 88) + 8) + 176))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000708C8(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v17 - v4;
  v7 = *(v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  sub_10006FDA0(v5);
  (*(v7 + 80))(v2, v7);
  (*(v3 + 8))(v5, v2);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v13 + 8))(v12, AssociatedTypeWitness);
    return v16;
  }
}

uint64_t sub_100070B58(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - v5;
  sub_10006FDA0(&v8 - v5);
  (*(*(v2 + 88) + 64))(v3);
  return (*(v4 + 8))(v6, v3);
}

void *sub_100070C60()
{
  sub_100074814(v3);
  if (!v4 || !v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000024C4(&qword_100221500, qword_1001B3D30);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001B3B50;
  sub_10002089C(v3, &v2);
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  sub_100006C2C(v3);
  return v0;
}

uint64_t sub_100070DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v16 - v7;
  v9 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  sub_10006FDA0(v8);
  (*(*(v4 + 88) + 64))(v5);
  (*(v6 + 8))(v8, v5);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000050C4(v11, &qword_1002214F8, &qword_1001B3D20);
    v14 = 1;
  }

  else
  {
    sub_100070C60();
    URL.appending(queryItems:)();

    (*(v13 + 8))(v11, v12);
    v14 = 0;
  }

  return (*(v13 + 56))(a2, v14, 1, v12);
}

uint64_t sub_100070FD8(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v24[-v4];
  v7 = *(v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11];
  v13 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v13 - 8);
  v15 = &v24[-v14];
  sub_10006FDA0(v5);
  (*(v7 + 96))(v2, v7);
  (*(v3 + 8))(v5, v2);
  v16 = *(AssociatedTypeWitness - 8);
  v17 = 1;
  if ((*(v16 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v18 = 0;
    AssociatedTypeWitness = v9;
  }

  else
  {
    v19 = sub_10006EF30();
    v20 = sub_10006EECC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(v19, v20, AssociatedTypeWitness, AssociatedConformanceWitness);
    v17 = 0;
    v18 = 1;
    v10 = v16;
  }

  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v15, v17, 1, v22);
  sub_1000050C4(v15, &qword_1002214F8, &qword_1001B3D20);
  return v18;
}

uint64_t sub_100071340(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v11 - v6;
  v8 = sub_100070FD8(v5);
  sub_10006FDA0(v7);
  v9 = *(v2 + 88);
  if (v8)
  {
    (*(v9 + 96))(v3);
  }

  else
  {
    (*(v9 + 88))(v3);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10007147C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v10 - v6;
  if (sub_100070FD8(v5))
  {
    v8 = 0;
  }

  else
  {
    sub_10006FDA0(v7);
    v8 = sub_10008C468(v3, *(*(v2 + 88) + 8));
    (*(v4 + 8))(v7, v3);
  }

  return v8 & 1;
}

uint64_t sub_1000715A0()
{
  v0 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  sub_100070B58(v1);
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  v6 = sub_1000050C4(v3, &qword_1002214F8, &qword_1001B3D20);
  if (v5 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_100070FD8(v6);
  }

  return v7 & 1;
}

uint64_t sub_100071694()
{
  v1 = *(*(*v0 + 88) + 8);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = __chkstk_darwin(AssociatedTypeWitness);
  v5 = *(v2 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-v6];
  sub_10006FDA0(&v23[-v6]);
  (*(v1 + 128))(v2, v1);
  (*(v5 + 8))(v7, v2);
  sub_1000024C4(&qword_100223F90, &qword_1001B85C8);
  if (swift_dynamicCast())
  {
    v9 = v24;
    v8 = v25;
    v11 = v26;
    v10 = v27;
    sub_1000024C4(&qword_100223F98, &unk_1001B85D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B3B50;
    *(inited + 32) = static EventCategory<>.tennis.getter();
    *(inited + 40) = v13;
    *(inited + 48) = v14;
    *(inited + 56) = v15;
    *(inited + 64) = static EventCategory<>.golf.getter();
    *(inited + 72) = v16;
    *(inited + 80) = v17;
    *(inited + 88) = v18;
    v24 = sub_1000744CC();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v19 = Collection.isEmpty.getter();
    if ((v19 & 1) == 0)
    {
      v24 = v9;
      v25 = v8;
      v26 = v11;
      v27 = v10;
      __chkstk_darwin(v19);
      *&v23[-16] = &v24;
      v21 = sub_100189290(sub_100075210, &v23[-32], inited);
      swift_setDeallocating();
      swift_arrayDestroy();

      v20 = v21 ^ 1;
      return v20 & 1;
    }

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  v20 = 0;
  return v20 & 1;
}

id sub_1000719AC()
{
  result = sub_100074554();
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v1 = result;
      v2 = [result cityName];

      if (v2)
      {
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_100071A3C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v4 - 8);
  v6 = &v36[-v5];
  v7 = *(v3 + 80);
  v8 = type metadata accessor for Optional();
  __chkstk_darwin(v8 - 8);
  v10 = &v36[-v9];
  (*(*(v7 - 8) + 56))(&v36[-v9], 1, 1, v7);
  v11 = *(*v1 + 96);
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 32))(v1 + v11, v10, v12);
  v13 = (v1 + *(*v1 + 104));
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v1 + *(*v1 + 112)) = 1;
  *(v1 + *(*v1 + 120)) = static Array._allocateUninitialized(_:)();
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_100073EA0(v6, v1 + *(*v1 + 128));
  *(v1 + *(*v1 + 136)) = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v41, 0, 64);
  sub_10002089C(&v37, v36);
  sub_100006C2C(v41);
  v15 = (v1 + *(*v1 + 152));
  v16 = v40;
  v15[2] = v39;
  v15[3] = v16;
  v17 = v38;
  *v15 = v37;
  v15[1] = v17;
  v18 = (v1 + *(*v1 + 160));
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + *(*v1 + 168));
  v20 = objc_opt_self();
  v21 = [v20 mainBundle];
  v42._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD00000000000002ALL;
  v22._object = 0x80000001001C4970;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v42);

  *v19 = v24;
  v25 = (v1 + *(*v1 + 176));
  v26 = [v20 mainBundle];
  v43._object = 0xE000000000000000;
  v27._object = 0x80000001001C49C0;
  v27._countAndFlagsBits = 0xD000000000000029;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v43);

  *v25 = v29;
  v30 = (v1 + *(*v1 + 184));
  v31 = [v20 mainBundle];
  v44._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD000000000000037;
  v32._object = 0x80000001001C49F0;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v44);

  *v30 = v34;
  ObservationRegistrar.init()();
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 144), a1);
  return v1;
}

uint64_t sub_100071F10(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10007029C(a1);
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  return sub_10006F2F4(v1, v2);
}

uint64_t sub_100071F48()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*v0 + 88);
  v3 = *(v2 + 80);
  v1[4] = v3;
  v1[5] = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v1[6] = v4;
  v1[7] = *(v4 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v6;
  v1[14] = v5;

  return _swift_task_switch(sub_1000720F0, v6, v5);
}

uint64_t sub_1000720F0()
{
  v1 = v0[3];
  sub_10006FDA0(v0[11]);
  v2 = *(v1 + 8);
  v6 = (*(v2 + 184) + **(v2 + 184));
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_100072218;
  v4 = v0[4];

  return v6(v4, v2);
}

uint64_t sub_100072218(uint64_t a1)
{
  v4 = *v2;
  v4[16] = v1;

  v5 = v4[11];
  v6 = v4[9];
  v7 = v4[4];
  if (v1)
  {
    v8 = *(v6 + 8);
    v4[18] = v8;
    v4[19] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v7);
    v9 = v4[13];
    v10 = v4[14];
    v11 = sub_100072438;
  }

  else
  {
    v4[17] = a1;
    (*(v6 + 8))(v5, v7);
    v9 = v4[13];
    v10 = v4[14];
    v11 = sub_1000723AC;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1000723AC()
{
  v1 = *(v0 + 136);

  sub_10006F67C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100072438()
{
  v26 = v0;
  v1 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BE10(v2, qword_100239158);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0 + 5;
    v6 = v1[5];
    v22 = v1[18];
    v7 = v1[10];
    v8 = v1[8];
    v10 = v1[3];
    v9 = v1[4];
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v11 = 136315394;
    sub_10006FDA0(v7);
    (*(v10 + 80))(v9, v10);
    v22(v7, v9);
    v12 = *(v6 - 8);
    if ((*(v12 + 48))(v8, 1, v6) == 1)
    {
      v12 = v1[7];
      v5 = v1 + 6;
      v13 = 0xE100000000000000;
      v14 = 45;
    }

    else
    {
      v15 = v1[5];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v14 = (*(AssociatedConformanceWitness + 40))(v15, AssociatedConformanceWitness);
      v13 = v17;
    }

    (*(v12 + 8))(v1[8], *v5);
    v18 = sub_100139F7C(v14, v13, &v25);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v19;
    *v23 = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch schedule for league: %s, error: %@", v11, 0x16u);
    sub_1000050C4(v23, &qword_100221718, &qword_1001B8890);

    sub_100012A7C(v24);
  }

  else
  {
  }

  v20 = v1[1];

  return v20();
}

uint64_t sub_1000727B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v20 - v6;
  v8 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100011730(a1);
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = v11;
  v14 = v12;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
LABEL_5:
    sub_100070B58(v11);
    v16 = type metadata accessor for URL();
    v17 = (*(*(v16 - 8) + 48))(v10, 1, v16);
    sub_1000050C4(v10, &qword_1002214F8, &qword_1001B3D20);
    if (v17 == 1)
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      sub_10006FDA0(v7);
      v18 = sub_10008C468(v4, *(*(v3 + 88) + 8));
      (*(v5 + 8))(v7, v4);
      LOBYTE(v15) = v18 ^ 1;
    }
  }

  return v15 & 1;
}

uint64_t sub_1000729C4()
{
  v1[42] = v0;
  v1[43] = *v0;
  v2 = type metadata accessor for URLComponents();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[47] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[48] = v4;
  v1[49] = v3;

  return _swift_task_switch(sub_100072AE0, v4, v3);
}

uint64_t sub_100072AE0()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_100072C0C;

  return sub_1001537FC(v0 + 144, v4, v6);
}

uint64_t sub_100072C0C()
{
  v1 = *v0;

  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return _swift_task_switch(sub_100072D2C, v3, v2);
}

uint64_t sub_100072D2C()
{

  sub_10006FF84((v0 + 18));
  sub_100074814((v0 + 10));
  if (v0[15] && v0[17])
  {
    sub_1000024C4(&qword_100221500, qword_1001B3D30);
    type metadata accessor for URLQueryItem();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1001B3B50;
    sub_10002089C((v0 + 10), (v0 + 34));
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    sub_100006C2C((v0 + 10));
    v2 = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = v2[2];

  if (v3)
  {
    URLComponents.init()();
    sub_100074814((v0 + 2));
    if (v0[7] && v0[9])
    {
      sub_1000024C4(&qword_100221500, qword_1001B3D30);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_1001B3B50;
      sub_10002089C((v0 + 2), (v0 + 26));
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      sub_100006C2C((v0 + 2));
    }

    v5 = v0[45];
    v4 = v0[46];
    v6 = v0[44];
    URLComponents.queryItems.setter();
    v7 = URLComponents.percentEncodedQuery.getter();
    sub_100070110(v7, v8);
    (*(v5 + 8))(v4, v6);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100073010()
{
  v0 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v5 - v2;
  sub_100070DA0(v1, &v5 - v2);
  return sub_10006F95C(v3);
}

uint64_t sub_10007308C()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*(*v0 + 88) + 8);
  v1[4] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[5] = AssociatedTypeWitness;
  v1[6] = *(AssociatedTypeWitness - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v5;
  v1[10] = v4;

  return _swift_task_switch(sub_1000731C8, v5, v4);
}

uint64_t sub_1000731C8()
{
  if (sub_100074554())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    sub_1000707BC(0);
    v3 = swift_task_alloc();
    v0[11] = v3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v0;
    v3[1] = sub_1000732EC;
    v5 = v0[7];
    v6 = v0[5];

    return sub_1000C5148(v5, v6, AssociatedConformanceWitness);
  }
}

uint64_t sub_1000732EC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);

  v7 = (v6 + 8);
  v8 = v4[7];
  v9 = v4[5];
  if (v1)
  {

    (*v7)(v8, v9);
    v10 = v5[9];
    v11 = v5[10];
    v12 = sub_10007350C;
  }

  else
  {
    v5[12] = a1;
    (*v7)(v8, v9);
    v10 = v5[9];
    v11 = v5[10];
    v12 = sub_100073494;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100073494()
{
  v1 = *(v0 + 96);

  sub_10006FC28(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007350C()
{

  sub_10006FC28(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100073580(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_10006FDA0(&v9 - v5);
  v7 = sub_10012BCC8(v6, v3, *(*(v2 + 88) + 8));
  (*(v4 + 8))(v6, v3);
  return v7;
}

void sub_10007367C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v9 = a1;
  v10 = sub_1000706A8(a1);
  v12 = v11;
  v13 = sub_100073580(v10);
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v12;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = v9;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a2;
  *(inited + 160) = a3;
  *(inited + 168) = a4;
  if (*(a5 + 72))
  {
    v15 = *(a5 + 64);
    v16 = *(a5 + 72);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  sub_100006C80(a2, a3, a4);

  v17 = sub_1001894F4(1, 5, 1, inited);
  v21 = v17;
  sub_100006C98(&aBlock, v28);
  sub_100118768(4, v28, &v21, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001C4640;
  v19[4] = v17;
  v26 = sub_100026FEC;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10015B4A4;
  v25 = &unk_100214140;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v20);
}

void sub_100073914(uint64_t a1)
{
  v2 = sub_1000706A8(a1);
  v4 = v3;
  v5 = sub_100073580(v2);
  sub_10015B530(v2, v4, v5, a1);

  v7 = sub_100070FD8(v6);
  if ((v7 & 1) == 0)
  {
    v8 = sub_1000706A8(v7);
    v10 = v9;
    v11 = sub_100073580(v8);
    sub_1000024C4(&qword_100221508, &qword_1001B5C20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B3B60;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_100228B70;
    *(inited + 32) = 0;
    *(inited + 40) = v8;
    *(inited + 48) = v10;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_100228B48;
    *(inited + 72) = v11;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_100228BD0;
    *(inited + 112) = 1;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_100228BA8;
    *(inited + 152) = xmmword_1001B8290;
    *(inited + 168) = 3;
    if (*(a1 + 72))
    {
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
    }

    else
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    v21 = v13;
    v22 = v14;

    v15 = sub_1001894F4(1, 5, 1, inited);
    v19 = v15;
    sub_100006C98(&aBlock, v26);
    sub_100118768(4, v26, &v19, &type metadata for AnalyticsString, &off_100228B70);
    sub_100006CF4(&aBlock);
    v16 = String._bridgeToObjectiveC()();
    v17 = swift_allocObject();
    v17[2] = 0xD00000000000001ELL;
    v17[3] = 0x80000001001C4640;
    v17[4] = v15;
    v24 = sub_100006D88;
    v25 = v17;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10015B4A4;
    v23 = &unk_1002140F0;
    v18 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v18);
  }
}

uint64_t sub_100073BC8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);

  sub_1000050C4(v0 + *(*v0 + 128), &qword_1002214F8, &qword_1001B3D20);

  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 144), v2);

  v4 = *(*v0 + 192);
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_100073E30()
{
  sub_100073BC8();

  return swift_deallocClassInstance();
}

uint64_t sub_100073EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100073F10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100073F80(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Sport();
  sub_100075230(qword_100223FA0, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  return static EventCategory.== infix<A, B>(_:_:)() & 1;
}

unint64_t sub_100074048()
{
  result = qword_100223F70;
  if (!qword_100223F70)
  {
    sub_10000460C(&qword_1002214F8, &qword_1001B3D20);
    sub_100075230(&qword_100222A78, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223F70);
  }

  return result;
}

uint64_t sub_1000740FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 sub_1000741A0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1000741C8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  v10 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  v11 = *(v4 + 88);
  v16[4] = *(*(*(v11 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = (*(v7 + 8))(v9, v6);
  if (v4)
  {
    swift_beginAccess();
    (*(v7 + 24))(v2 + v10, a1, v6);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v12);
    v16[-2] = v5;
    v16[-1] = v11;
    KeyPath = swift_getKeyPath();
    v15 = __chkstk_darwin(KeyPath);
    v16[-2] = v2;
    v16[-1] = a1;
    sub_10006F1E4(v15, sub_100074E14, &v16[-4], &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_100074440()
{
  KeyPath = swift_getKeyPath();
  sub_10006F07C(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 104));
}

uint64_t sub_1000744CC()
{
  KeyPath = swift_getKeyPath();
  sub_10006F07C(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 120));
}

uint64_t sub_100074554()
{
  KeyPath = swift_getKeyPath();
  sub_10006F07C(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 136));
}

double sub_1000745DC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v15[-v7];
  v9 = *(v4 + 144);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = *(v4 + 88);
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = (*(v6 + 8))(v8, v5);
  if (v4)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, a1, v5);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    *&v15[-16] = v5;
    *&v15[-8] = v10;
    KeyPath = swift_getKeyPath();
    v14 = __chkstk_darwin(KeyPath);
    *&v15[-16] = v2;
    *&v15[-8] = a1;
    sub_10006F1E4(v14, sub_1000749D0, &v15[-32], &type metadata for () + 8);
  }

  return result;
}

__n128 sub_100074814@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10006F07C(KeyPath, v4, v5);

  v6 = v1 + *(*v1 + 152);
  v7 = *(v6 + 16);
  *a1 = *v6;
  *(a1 + 16) = v7;
  result = *(v6 + 32);
  v9 = *(v6 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_1000748B8@<X0>(_OWORD *a1@<X8>)
{
  sub_100074814(v6);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  v3 = v6[3];
  a1[2] = v6[2];
  a1[3] = v3;
  return sub_10002089C(v6, &v5);
}

double sub_100074908(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_10002089C(v5, &v4);
  return sub_10006FF84(v5);
}

uint64_t sub_1000749EC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000744CC();
}

uint64_t sub_100074A60()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 120)) = *(v0 + 24);
}

uint64_t sub_100074AB0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100074B94();
  a1[1] = v2;
}

uint64_t sub_100074AF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100070110(v1, v2);
}

uint64_t sub_100074B3C()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 160));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100074B94()
{
  KeyPath = swift_getKeyPath();
  sub_10006F07C(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 160));
}

unint64_t sub_100074C20()
{
  result = qword_100223F80;
  if (!qword_100223F80)
  {
    sub_10000460C(&qword_100223F78, &qword_1001C2F50);
    sub_100075230(&qword_100223F88, sub_100074CD4, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223F80);
  }

  return result;
}

unint64_t sub_100074CD4()
{
  result = qword_100225D90;
  if (!qword_100225D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100225D90);
  }

  return result;
}

id sub_100074D20@<X0>(void *a1@<X8>)
{
  v2 = sub_100074554();
  *a1 = v2;

  return v2;
}

void sub_100074D5C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10006FC28(v1);
}

void sub_100074D98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 136);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
}

double sub_100074DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100074E30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006F46C();
  *a1 = result;
  return result;
}

uint64_t sub_100074EB4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100074440();
  a1[1] = v2;
}

uint64_t sub_100074EF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10006F2F4(v1, v2);
}

uint64_t sub_100074F40()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 104));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100074F98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a3;
  v8 = *v4;
  v9 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = *(v8 + 80);
  v14 = *(v13 - 8);
  __chkstk_darwin(v10);
  v16 = &v29 - v15;
  sub_10006FDA0(&v29 - v15);
  v17 = sub_10008C468(v13, *(*(v8 + 88) + 8));
  v18 = (*(v14 + 8))(v16, v13);
  sub_100070B58(v18);
  v19 = type metadata accessor for URL();
  v20 = (*(*(v19 - 8) + 48))(v12, 1, v19);
  sub_1000050C4(v12, &qword_1002214F8, &qword_1001B3D20);
  v21 = [a4 isHidden];
  v22 = *(a1 + 72);
  if (!v22)
  {
    v23 = 0;
    v24 = 0;
    if ((v20 == 1 || (v17 & 1) == 0) | v21 & 1)
    {
      return v24 & 1;
    }

    goto LABEL_11;
  }

  if (*(a1 + 64) == a2 && v22 == v30)
  {
    if (!((v20 == 1 || (v17 & 1) == 0) | v21 & 1))
    {
      v23 = 1;
LABEL_11:
      v24 = v23 ^ 1;
      return v24 & 1;
    }
  }

  else
  {
    v25 = v20 == 1;
    v26 = v21;
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (!((v25 || (v17 & 1) == 0) | v26 & 1))
    {
      v23 = v27;
      goto LABEL_11;
    }
  }

  v24 = 0;
  return v24 & 1;
}

uint64_t sub_100075230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000752A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PromotionalAssetsController.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v7 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1000753B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  KeyPath = swift_getKeyPath();
  sub_100075D28(KeyPath, v6, v7);

  v8 = *(*v1 + 96);
  swift_beginAccess();
  v10 = type metadata accessor for PromotionalAssetsController.State(0, v3, v4, v9);
  return (*(*(v10 - 8) + 16))(a1, v1 + v8, v10);
}

uint64_t sub_1000754AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a2;
  v5[4] = v4;
  v5[2] = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[5] = v7;
  v8 = *(v6 + 88);
  v5[6] = v8;
  v9 = type metadata accessor for PromotionalAssetsController.State(0, v7, v8, a4);
  v5[7] = v9;
  v5[8] = *(v9 - 8);
  v5[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[10] = AssociatedTypeWitness;
  v11 = type metadata accessor for Optional();
  v5[11] = v11;
  v5[12] = *(v11 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = *(AssociatedTypeWitness - 8);
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v13;
  v5[18] = v12;

  return _swift_task_switch(sub_1000756B8, v13, v12);
}

uint64_t sub_1000756B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = v4[6];
  sub_100075F7C(v13, a2, a3, a4);
  v12 = (*(v13 + 32) + **(v13 + 32));
  v5 = swift_task_alloc();
  v4[19] = v5;
  *v5 = v4;
  v5[1] = sub_1000757F8;
  v6 = v4[13];
  v7 = v4[5];
  v8 = v4[6];
  v9 = v4[2];
  v10 = v4[3];

  return v12(v6, v9, v10, v7, v8);
}

uint64_t sub_1000757F8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100075B30;
  }

  else
  {
    v5 = sub_100075934;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100075934()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];

  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4 == 1)
  {
    v8 = v0[5];
    v9 = v0[6];
    (*(v0[12] + 8))(v0[13], v0[11]);
    type metadata accessor for PromotionalAssetsController.Error(0, v8, v9, v10);
    swift_getWitnessTable();
    *v5 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v11 = sub_1000765E0(v5);
    (*(v6 + 8))(v5, v7, v11);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[10];
    (*(v13 + 32))(v12, v0[13], v14);
    (*(v13 + 16))(v5, v12, v14);
    swift_storeEnumTagMultiPayload();
    v15 = sub_1000765E0(v5);
    (*(v6 + 8))(v5, v7, v15);
    (*(v13 + 8))(v12, v14);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100075B30()
{

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch artist promotional assets: %@", v4, 0xCu);
    sub_100076688(v5);
  }

  v7 = v0[20];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];

  *v8 = v7;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v11 = sub_1000765E0(v8);
  (*(v9 + 8))(v8, v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100075DC8(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  swift_beginAccess();
  v7 = type metadata accessor for PromotionalAssetsController.State(0, *(v4 + 80), *(v4 + 88), v6);
  (*(*(v7 - 8) + 24))(&a1[v5], a2, v7);
  return swift_endAccess();
}

uint64_t sub_100075F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PromotionalAssetsController.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  swift_storeEnumTagMultiPayload();
  v9 = sub_1000765E0(v8);
  return (*(v6 + 8))(v8, v5, v9);
}

uint64_t sub_100076074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for PromotionalAssetsController.State(0, v6, *(*v4 + 88), a4);
  (*(*(v7 - 8) + 8))(v4 + v5, v7);
  (*(*(v6 - 8) + 8))(v4 + *(*v4 + 104), v6);
  v8 = *(*v4 + 112);
  v9 = type metadata accessor for ObservationRegistrar();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  return v4;
}

uint64_t sub_1000761A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100076074(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

unint64_t sub_100076230(uint64_t a1)
{
  result = sub_100004654();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000762B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 8;
  if (v5 > 8)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 < 2)
    {
LABEL_25:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_25;
  }

LABEL_14:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 254;
}

void sub_100076408(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v7] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

double sub_1000765E0(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_100075EA4(KeyPath, sub_100076728, &v5, &type metadata for () + 8);

  return result;
}

uint64_t sub_100076688(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100221718, &qword_1001B8890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10007671C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100076764(uint64_t a1)
{
  *(a1 + 8) = sub_1000767CC(&qword_100224128, &protocol conformance descriptor for Playlist);
  result = sub_1000767CC(qword_100224130, &protocol conformance descriptor for Playlist);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000767CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Playlist();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100076810(void *a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ObservationRegistrar();
          if (v6 <= 0x3F)
          {
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100076A30@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100076B64(KeyPath, v4, v5);

  v6 = *(*v1 + 144);
  swift_beginAccess();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a1, v1 + v6, v7);
}

uint64_t sub_100076C04(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 144);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

uint64_t sub_100076DA4()
{
  v0 = sub_10007CC40();
  sub_1000088D0(v0, v1);
  return v0;
}

double sub_100076DD8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = (v3 + *(*v3 + 152));
  v27 = *v7;
  v25 = a1;
  v26 = a2;
  v8 = v6[5];
  v23 = v6[6];
  v24 = v8;
  v9 = v6[7];
  v21 = v6[8];
  v22 = v9;
  sub_1000084E4(a1, a2, a3);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v10)
  {
    v11 = *v7;
    v12 = *(v7 + 1);
    *v7 = a1;
    *(v7 + 1) = a2;
    sub_10004921C(v11, v12);
  }

  else
  {
    __chkstk_darwin(v10);
    v16 = v23;
    v20 = *(&v21 + 1);
    KeyPath = swift_getKeyPath();
    v15 = __chkstk_darwin(KeyPath);
    v17 = v3;
    v18 = a1;
    v19 = a2;
    sub_100076CCC(v15, sub_10007D988, &v16, &type metadata for () + 8);
    sub_10004921C(a1, a2);
  }

  return result;
}

uint64_t sub_100076F64@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100076B64(KeyPath, v4, v5);

  v6 = *(*v1 + 160);
  swift_beginAccess();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a1, v1 + v6, v7);
}

uint64_t sub_100077098(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 160);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

uint64_t sub_100077160()
{
  KeyPath = swift_getKeyPath();
  sub_100076B64(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 168));
}

double sub_1000771F0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v19 = *(v1 + v3);
  v4 = a1 & 1;
  v18 = a1;
  v5 = v2[5];
  v16 = v2[6];
  v17 = v5;
  v6 = v2[7];
  v14 = v2[8];
  v15 = v6;
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    *(v1 + v3) = v4;
  }

  else
  {
    __chkstk_darwin(v7);
    v11 = v15;
    v13 = *(&v14 + 1);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v12 = v1;
    LOBYTE(v13) = v4;
    sub_100076CCC(v10, sub_10007D794, &v11, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_100077360()
{
  sub_10007CFDC();
}

uint64_t sub_100077388(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v5 = *(v1 + v4);
  v15 = a1;
  v16 = v5;
  v13 = *(v3 + 88);
  type metadata accessor for Array();
  v12 = *(v3 + 104);
  v11 = *(v3 + 120);
  v14 = *(*(*(v11 + 8) + 8) + 8);
  swift_getWitnessTable();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *(v1 + v4) = a1;
  }

  else
  {
    __chkstk_darwin(v6);
    v10[0] = *(&v12 + 1);
    v10[1] = v11;
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    v10[2] = v1;
    v10[3] = a1;
    sub_100076CCC(v9, sub_10007D82C, v10, &type metadata for () + 8);
  }
}

uint64_t sub_100077580@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100076B64(KeyPath, v4, v5);

  v6 = *(*v1 + 192);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a1, v1 + v6, v7);
}

uint64_t sub_1000776D4(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 192);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

double sub_1000777CC@<D0>(_OWORD *a1@<X8>)
{
  sub_10007D4E8(v6);
  sub_10002089C(v6, &v5);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  result = *&v7;
  v4 = v8;
  a1[2] = v7;
  a1[3] = v4;
  return result;
}

double sub_100077818(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v11 = *(*v1 + 80);
  v12 = v4;
  v5 = *(v3 + 128);
  v13 = *(v3 + 112);
  v14 = v5;
  KeyPath = swift_getKeyPath();
  v9 = v1;
  v10 = a1;
  sub_100076CCC(KeyPath, sub_10007D4CC, &v8, &type metadata for () + 8);
  sub_100006C2C(a1);

  return result;
}

uint64_t sub_1000778D0(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + *(*a1 + 248));
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  sub_10002089C(a2, &v6);
}

BOOL sub_100077A5C()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return (Collection.isEmpty.getter() & 1) == 0;
}

uint64_t sub_100077AF4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = *v2;
  v4 = type metadata accessor for PromotionalAssetsController.State(0, *(*v2 + 96), *(*v2 + 128), a1);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  sub_1000753B4(v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v9 + 32);
    v15(v14, v7, AssociatedTypeWitness);
    v15(v12, v14, AssociatedTypeWitness);
    v16 = *(v3 + 88);
    v17 = v22;
    if (swift_dynamicCast())
    {
      v18 = v17;
      v19 = 0;
    }

    else
    {
      v18 = v17;
      v19 = 1;
    }

    return (*(*(v16 - 8) + 56))(v18, v19, 1);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    return (*(*(*(v3 + 88) - 8) + 56))(v22, 1, 1);
  }
}

uint64_t sub_100077DD4@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v18 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  sub_100077AF4(v12, v18 - v10);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v11, 1, v3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    swift_getAssociatedConformanceWitness();
    v14 = swift_getAssociatedTypeWitness();
    return (*(*(v14 - 8) + 56))(v18[0], 1, 1, v14);
  }

  else
  {
    (*(v2 + 104))(v3, v2);
    (*(v13 + 8))(v11, v3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    v18[1] = v17;
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
  }
}

uint64_t sub_100078144()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  sub_100077AF4(v11, &v16 - v9);
  v12 = *(v2 - 8);
  if ((*(v12 + 48))(v10, 1, v2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v13 = 0;
  }

  else
  {
    (*(v1 + 104))(v2, v1);
    (*(v12 + 8))(v10, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = sub_1000F57B8(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v4 + 8))(v6, AssociatedTypeWitness);
  }

  return v13 & 1;
}

BOOL sub_1000783BC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_100077580(&v7 - v3);
  v5 = (*(*(AssociatedTypeWitness - 8) + 48))(v4, 1, AssociatedTypeWitness) != 1;
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_10007850C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = *(v1 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v19 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_100077AF4(v12, v6);
  v13 = *(v2 - 8);
  if ((*(v13 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  sub_100187A54(v2, v7, v11);
  (*(v13 + 8))(v6, v2);
  v14 = *(AssociatedTypeWitness - 8);
  if ((*(v14 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v19 + 8))(v11, v9);
    return 0;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v14 + 8))(v11, AssociatedTypeWitness);
  return v17;
}

void *sub_100078814()
{
  sub_10007D4E8(v3);
  if (!v3[3] || !v3[1])
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000024C4(&qword_100221500, qword_1001B3D30);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001B3B50;
  sub_10002089C(v3, &v2);
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  sub_100006C2C(v3);
  return v0;
}

uint64_t sub_100078964()
{
  v0 = type metadata accessor for Optional();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  sub_100077AF4(v4, &v7 - v2);
  v5 = sub_10007CCD4(v3);
  return (*(v1 + 8))(v3, v0, v5);
}

char *sub_100078A3C(char a1)
{
  v3 = *(v1 + *(*v1 + 216));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_100189D1C(*(v3 + 16), 0);
    v6 = sub_1000E2660(&v18, v5 + 4, v4, v3);
    v7 = v18;

    sub_1000605FC(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v18 = v5;
  sub_10007BCE8(&v18);
  v8 = v18;
  v9 = _swiftEmptyArrayStorage;
  if (*(v3 + 16) == 1)
  {
    v18 = _swiftEmptyArrayStorage;
    if ((a1 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1000024C4(&qword_1002241B8, &unk_1001B8A50);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1001B49B0;
    *(v9 + 4) = 0;
    *(v9 + 5) = 0;
    v18 = v9;
    if ((a1 & 1) == 0)
    {
LABEL_7:
      v10 = *(v8 + 2);
      if (!v10)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }
  }

  sub_10007BD54(&off_100211450);
  v9 = v18;
  v10 = *(v8 + 2);
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_8:
  sub_1001959B8(0, v10, 0);
  v11 = (v8 + 40);
  do
  {
    v13 = *(v11 - 1);
    v12 = *v11;
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];

    if (v15 >= v14 >> 1)
    {
      sub_1001959B8((v14 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v13;
    v16[5] = v12;
    v11 += 2;
    --v10;
  }

  while (v10);
LABEL_15:

  sub_10007BD54(_swiftEmptyArrayStorage);
  return v9;
}

uint64_t sub_100078C64(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_100078D28, v5, v4);
}

uint64_t sub_100078D28()
{
  v1 = v0[4];
  sub_100030870();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = swift_task_alloc();
      v0[10] = v2;
      *v2 = v0;
      v2[1] = sub_100078F64;

      return sub_100079190();
    }

    v5 = v0[6];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];

    v0[2] = *(v6 + *(*v6 + 208));
    v9 = swift_task_alloc();
    *(v9 + 16) = *(v5 + 80);
    *(v9 + 24) = *(v5 + 88);
    *(v9 + 32) = *(v5 + 96);
    *(v9 + 48) = *(v5 + 112);
    *(v9 + 56) = *(v5 + 120);
    *(v9 + 72) = *(v5 + 136);
    *(v9 + 80) = v8;
    *(v9 + 88) = v7;
    type metadata accessor for Array();

    swift_getWitnessTable();
    v10 = _ArrayProtocol.filter(_:)();

    v4 = v10;
  }

  else
  {
  }

  sub_100077388(v4);
  v11 = v0[4];
  v12 = v0[3];
  sub_1000088D0(v12, v11);
  v14.n128_f64[0] = sub_100076DD8(v12, v11, v13);
  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_100078F64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_100079124;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_10007908C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10007908C()
{
  v1 = v0[12];

  sub_100077388(v1);
  v2 = v0[4];
  v3 = v0[3];
  sub_1000088D0(v3, v2);
  v5.n128_f64[0] = sub_100076DD8(v3, v2, v4);
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_100079124()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100079190()
{
  v1[3] = v0;
  v1[4] = *v0;
  type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_100079250, v3, v2);
}

uint64_t sub_100079250()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1000792F8;

  return sub_1000302E0();
}

uint64_t sub_1000792F8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2;
  *(v6 + 88) = v3;

  if (v3)
  {
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
    v9 = sub_100042D94;
  }

  else
  {
    *(v6 + 96) = a3;
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
    v9 = sub_100079424;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100079424()
{
  v1 = *(v0 + 96);

  if (v1)
  {
    v2 = static Array._allocateUninitialized(_:)();
  }

  else
  {
    *(v0 + 16) = *(*(v0 + 24) + *(**(v0 + 24) + 208));
    v3 = *(v0 + 80);
    v4 = *(v0 + 72);
    v5 = *(v0 + 32);
    v6 = swift_task_alloc();
    *(v6 + 16) = *(v5 + 80);
    *(v6 + 24) = *(v5 + 88);
    *(v6 + 32) = *(v5 + 96);
    *(v6 + 48) = *(v5 + 112);
    *(v6 + 56) = *(v5 + 120);
    *(v6 + 72) = *(v5 + 136);
    *(v6 + 80) = v4;
    *(v6 + 88) = v3;
    type metadata accessor for Array();

    swift_getWitnessTable();
    v7 = _ArrayProtocol.filter(_:)();

    v2 = v7;
  }

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_100079590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a2;
  v29 = a3;
  v10 = *(a9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v28 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v30 = *(v17 - 8);
  v31 = v17;
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  (*(v10 + 176))(a5, v10);
  (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v20 = *(v16 - 8);
  if ((*(v20 + 48))(v19, 1, v16) == 1)
  {
    (*(v30 + 8))(v19, v31);
    v21 = 0;
  }

  else
  {
    v22 = swift_getAssociatedConformanceWitness();
    v23 = (*(v22 + 40))(v16, v22);
    v25 = v24;
    (*(v20 + 8))(v19, v16);
    if (v25)
    {
      if (v23 == v28 && v25 == v29)
      {

        v21 = 1;
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21 & 1;
}

BOOL sub_1000798B0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v28 - v15;
  (*(v12 + 176))(a5, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  [v18 coordinate];
  v20 = v19;
  v22 = v21;

  v23 = [objc_allocWithZone(CLLocation) initWithLatitude:v20 longitude:v22];
  v24 = [objc_allocWithZone(CLLocation) initWithLatitude:a1 longitude:a2];
  [v24 distanceFromLocation:v23];
  v26 = v25;

  return v26 <= 161000.0;
}

uint64_t sub_100079AA4()
{
  v1[10] = v0;
  v1[11] = *v0;
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v3;
  v1[14] = v2;

  return _swift_task_switch(sub_100079B64, v3, v2);
}

uint64_t sub_100079B64()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_100079C90;

  return sub_1001537FC(v0 + 16, v4, v6);
}

uint64_t sub_100079C90()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_100079DB0, v3, v2);
}

uint64_t sub_100079DB0()
{

  v1.n128_f64[0] = sub_100077818(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100079E1C()
{
  v1[2] = v0;
  v1[3] = *v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_100079EDC, v3, v2);
}

uint64_t sub_100079EDC()
{
  v1 = (*(*(v0[3] + 112) + 40))(*(v0[3] + 80));
  v3 = v2;
  v0[7] = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100079FDC;

  return sub_1000754AC(v1, v3, v5, v6);
}

uint64_t sub_100079FDC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10007A120, v3, v2);
}

uint64_t sub_10007A120()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007A180(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 136);
  v3[6] = *(v4 + 104);
  v3[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[13] = v7;
  v3[14] = v6;

  return _swift_task_switch(sub_10007A2D8, v7, v6);
}

uint64_t sub_10007A2D8()
{
  v1 = v0[3];
  if (v1)
  {
    v21 = v0[5];
    v2 = sub_10007850C();
    v4 = v3;
    v0[15] = v3;
    v20 = (*(v21 + 24) + **(v21 + 24));
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_10007A540;
    v6 = v0[11];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[2];

    return v20(v6, v9, v1, v2, v4, v7, v8);
  }

  else
  {
    v11 = sub_10007850C();
    v0[18] = v12;
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = swift_task_alloc();
      v0[19] = v15;
      *v15 = v0;
      v15[1] = sub_10007A77C;
      v16 = v0[10];
      v18 = v0[5];
      v17 = v0[6];

      return sub_10001219C(v16, v13, v14, v17, v18);
    }

    else
    {

      v19 = v0[1];

      return v19();
    }
  }
}

uint64_t sub_10007A540()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_10007A9B8;
  }

  else
  {
    v5 = sub_10007A698;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10007A698()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = sub_10007D06C(v1);
  (*(v3 + 8))(v1, v2, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007A77C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_10007AC60;
  }

  else
  {
    v5 = sub_10007A8D4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10007A8D4()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = sub_10007D06C(v1);
  (*(v2 + 8))(v1, v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007A9B8()
{
  v19 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000BE10(v2, qword_100239158);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_100139F7C(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_10007850C();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_100139F7C(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_100076688(v8);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10007AC60()
{
  v19 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000BE10(v2, qword_100239158);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_100139F7C(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_10007850C();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_100139F7C(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_100076688(v8);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10007AF08(uint64_t a1)
{
  v3 = (*(*(*v1 + 112) + 40))(*(*v1 + 80));
  sub_10015B530(v3, v4, 7, a1);
}

void sub_10007AFA4(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001B3B60;
  v12 = (*(*(*v5 + 112) + 40))(*(*v5 + 80));
  *(v11 + 56) = &type metadata for AnalyticsString;
  *(v11 + 64) = &off_100228B70;
  *(v11 + 32) = 0;
  *(v11 + 40) = v12;
  *(v11 + 48) = v13;
  *(v11 + 96) = &type metadata for AnalyticsPageName;
  *(v11 + 104) = &off_100228B48;
  *(v11 + 72) = 7;
  *(v11 + 136) = &type metadata for AnalyticsModuleName;
  *(v11 + 144) = &off_100228BD0;
  *(v11 + 112) = a1;
  *(v11 + 176) = &type metadata for AnalyticsModuleAction;
  *(v11 + 184) = &off_100228BA8;
  *(v11 + 152) = a2;
  *(v11 + 160) = a3;
  *(v11 + 168) = a4;
  if (*(a5 + 72))
  {
    v14 = *(a5 + 64);
    v15 = *(a5 + 72);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v29 = &type metadata for AnalyticsString;
  v30 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  v27 = v14;
  v28 = v15;
  sub_100006C80(a2, a3, a4);
  v32 = v11;
  v16 = *(v11 + 16);
  v17 = *(v11 + 24);

  if (v16 >= v17 >> 1)
  {
    v11 = sub_1001894F4((v17 > 1), v16 + 1, 1, v11);
    v32 = v11;
  }

  v18 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  sub_100118768(v16, v20, &v32, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v22 = String._bridgeToObjectiveC()();
  v23 = swift_allocObject();
  v23[2] = 0xD00000000000001ELL;
  v23[3] = 0x80000001001C4640;
  v23[4] = v11;
  v30 = sub_100006D88;
  v31 = v23;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_10015B4A4;
  v29 = &unk_100214400;
  v24 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v24);
}

void sub_10007B2EC(uint64_t a1)
{
  v37 = a1;
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = type metadata accessor for Optional();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = *(v2 + 120);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001B49A0;
  *(v13 + 56) = &type metadata for AnalyticsPageName;
  *(v13 + 64) = &off_100228B48;
  *(v13 + 32) = 7;
  *(v13 + 96) = &type metadata for AnalyticsModuleName;
  *(v13 + 104) = &off_100228BD0;
  *(v13 + 72) = 3;
  sub_100077DD4(v12);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v14 = 12;
  }

  else
  {
    v14 = 11;
  }

  (*(v10 + 8))(v12, v9);
  *(v13 + 136) = &type metadata for AnalyticsModuleAction;
  *(v13 + 144) = &off_100228BA8;
  *(v13 + 112) = v14;
  *(v13 + 120) = 0;
  *(v13 + 128) = 3;
  v43 = v13;
  sub_100077AF4(v15, v6);
  v16 = *(v3 - 8);
  v17 = &type metadata for AnalyticsString;
  v18 = &off_100228B70;
  if ((*(v16 + 48))(v6, 1, v3) == 1)
  {
    (*(v35 + 8))(v6, v36);
  }

  else
  {
    v19 = (*(*(v7 + 8) + 120))(v3);
    v21 = v20;
    (*(v16 + 8))(v6, v3);
    v23 = *(v13 + 16);
    v22 = *(v13 + 24);
    if (v23 >= v22 >> 1)
    {
      v13 = sub_1001894F4((v22 > 1), v23 + 1, 1, v13);
    }

    v40 = &type metadata for AnalyticsString;
    v41 = &off_100228B70;
    LOBYTE(aBlock) = 0;
    *(&aBlock + 1) = v19;
    v39 = v21;
    *(v13 + 16) = v23 + 1;
    sub_10002FF68(&aBlock, v13 + 40 * v23 + 32);
  }

  if (*(v37 + 72))
  {
    v24 = *(v37 + 64);
    v25 = *(v37 + 72);
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  v40 = &type metadata for AnalyticsString;
  v41 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v24;
  v39 = v25;
  v43 = v13;
  v26 = *(v13 + 16);
  v27 = *(v13 + 24);

  if (v26 >= v27 >> 1)
  {
    v13 = sub_1001894F4((v27 > 1), v26 + 1, 1, v13);
    v43 = v13;
    v17 = v40;
    v18 = v41;
  }

  v28 = sub_10002FAD0(&aBlock, v17);
  __chkstk_darwin(v28);
  v30 = &v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_100118768(v26, v30, &v43, v17, v18);
  sub_100012A7C(&aBlock);
  v32 = String._bridgeToObjectiveC()();
  v33 = swift_allocObject();
  v33[2] = 0xD00000000000001ELL;
  v33[3] = 0x80000001001C4640;
  v33[4] = v13;
  v41 = sub_100026FEC;
  v42 = v33;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v39 = sub_10015B4A4;
  v40 = &unk_100214450;
  v34 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v34);
}

char *sub_10007B8AC()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 8);
  v4(&v0[v2], v3);
  sub_10004921C(*&v0[*(*v0 + 152)], *&v0[*(*v0 + 152) + 8]);
  v4(&v0[*(*v0 + 160)], v3);

  v5 = *(*v0 + 192);
  v6 = *(v1 + 104);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(&v0[v5], v7);
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 200)]);

  (*(*(v6 - 8) + 8))(&v0[*(*v0 + 240)], v6);

  v8 = *(*v0 + 288);
  v9 = type metadata accessor for ObservationRegistrar();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  return v0;
}

uint64_t sub_10007BC78()
{
  sub_10007B8AC();

  return swift_deallocClassInstance();
}

Swift::Int sub_10007BCE8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000E2A5C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10007BE48(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_10007BD54(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100189770(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Int sub_10007BE48(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10007C044(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10007BF40(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10007BF40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_10001877C(result, a2, a3);
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v14 = v7;
    v9 = v8;
    while (1)
    {
      result = StringProtocol.localizedStandardCompare<A>(_:)();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v14 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v9;
      v11 = v9[1];
      *v9 = *(v9 - 1);
      *(v9 - 1) = v11;
      *(v9 - 2) = v10;
      v9 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10007C044(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v90 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = sub_10001877C(result, a2, a3);
        result = StringProtocol.localizedStandardCompare<A>(_:)();
        v16 = result;
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          result = StringProtocol.localizedStandardCompare<A>(_:)();
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
            __break(1u);
LABEL_121:
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
            return result;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = sub_10001877C(result, a2, a3);
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                result = StringProtocol.localizedStandardCompare<A>(_:)();
                if (result != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10018987C(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = sub_10018987C((v35 > 1), v36 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *v90;
      if (!*v90)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
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
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          sub_10007C6A8((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1000E2464(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = sub_1000E23D8(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_88:
  v5 = v10;
  v10 = *v90;
  if (!*v90)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_1000E2464(v5);
    v5 = result;
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      sub_10007C6A8((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000E2464(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      result = sub_1000E23D8(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_10007C6A8(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      __src = memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_10001877C(__src, __dst, a3);
LABEL_27:
      v20 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v17 -= 16;
        if (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v20;
          }

          if (v14 <= v4 || (v6 -= 16, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      __src = memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_10001877C(__src, __dst, a3);
      while (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

double sub_10007C938(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = v4[18];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v21 = v4[10];
  v20 = *(v5 + 6);
  v19 = v4[14];
  v12 = *(v5 + 15);
  v13 = v4[17];
  v18 = v12;
  v22 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v18 - 8) = v21;
    *(&v18 - 7) = v6;
    *(&v18 - 3) = v20;
    *(&v18 - 4) = v19;
    *(&v18 - 24) = v18;
    *(&v18 - 1) = v13;
    KeyPath = swift_getKeyPath();
    v17 = __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = a1;
    sub_100076CCC(v17, sub_10007D6F8, (&v18 - 2), &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_10007CC40()
{
  KeyPath = swift_getKeyPath();
  sub_100076B64(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 152));
}

double sub_10007CCD4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = v4[20];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v21 = v4[10];
  v20 = *(v5 + 6);
  v19 = v4[14];
  v12 = *(v5 + 15);
  v13 = v4[17];
  v18 = v12;
  v22 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v18 - 8) = v21;
    *(&v18 - 7) = v6;
    *(&v18 - 3) = v20;
    *(&v18 - 4) = v19;
    *(&v18 - 24) = v18;
    *(&v18 - 1) = v13;
    KeyPath = swift_getKeyPath();
    v17 = __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = a1;
    sub_100076CCC(v17, sub_10007D6C8, (&v18 - 2), &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_10007CFDC()
{
  KeyPath = swift_getKeyPath();
  sub_100076B64(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 184));
}

double sub_10007D06C(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 104);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = v3[24];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v22 = *(v4 + 5);
  v20 = v3[12];
  v21 = *(v4 + 7);
  v12 = v3[16];
  v13 = v23;
  v24 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v3)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, v13, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    v16 = v21;
    *(&v19 - 4) = v22;
    *(&v19 - 6) = v20;
    *(&v19 - 5) = v6;
    *(&v19 - 2) = v16;
    *(&v19 - 2) = v12;
    *(&v19 - 1) = v5;
    KeyPath = swift_getKeyPath();
    v18 = __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = v13;
    sub_100076CCC(v18, sub_10007D408, (&v19 - 4), &type metadata for () + 8);
  }

  return result;
}

__n128 sub_10007D3F4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_10007D424@<X0>(_OWORD *a1@<X8>)
{
  sub_10007D4E8(v6);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  v3 = v6[3];
  a1[2] = v6[2];
  a1[3] = v3;
  return sub_10002089C(v6, &v5);
}

double sub_10007D474(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_10002089C(v5, &v4);
  return sub_100077818(v5);
}

__n128 sub_10007D4E8@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100076B64(KeyPath, v4, v5);

  v6 = v1 + *(*v1 + 248);
  v7 = *(v6 + 16);
  *a1 = *v6;
  *(a1 + 16) = v7;
  result = *(v6 + 32);
  v9 = *(v6 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_10007D594(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 8);
      if (*(v4 - 16) && *(v4 - 16) != 2)
      {

        return v5;
      }

      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v6)
      {
        return v5;
      }

      ++v3;

      v4 += 24;
      if (v2 == v3)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

double sub_10007D718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10007D730@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100077160();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10007D7B8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10007CFDC();
}

uint64_t sub_10007D82C()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 184)) = *(v0 + 24);
}

uint64_t sub_10007D8FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10007CC40();
  *a1 = v2;
  a1[1] = v3;

  return sub_1000088D0(v2, v3);
}

double sub_10007D938(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1000088D0(*a1, v2);
  return sub_100076DD8(v1, v2, v3);
}

uint64_t sub_10007D988()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + *(*v0[2] + 152));
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1000088D0(v1, v2);
  return sub_10004921C(v4, v5);
}

uint64_t sub_10007DA78(uint64_t a1)
{
  *(a1 + 8) = sub_10007DAFC(&qword_100224208, &type metadata accessor for PromotionalContent.Video, &protocol conformance descriptor for PromotionalContent.Video);
  result = sub_10007DAFC(&qword_100224210, &type metadata accessor for PromotionalContent.Video, &protocol conformance descriptor for PromotionalContent.Video);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10007DAFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10007DBD4()
{
  v0 = sub_1000024C4(&qword_1002242A8, &qword_1001B8AF8);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v43 - v4;
  v56 = type metadata accessor for Song();
  v48 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Track();
  v60 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v58 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v43 - v10;
  v61 = sub_1000024C4(&qword_1002242B0, &qword_1001B8B00);
  __chkstk_darwin(v61);
  v12 = &v43 - v11;
  v13 = sub_1000024C4(&qword_1002242B8, &qword_1001B8B08);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_1000024C4(&qword_1002242C0, &unk_1001B8B10);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v43 - v21;
  Playlist.tracks.getter();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000050C4(v15, &qword_1002242B8, &qword_1001B8B08);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    v43 = v17;
    (*(v17 + 16))(v20, v22, v16);
    sub_10007E468(&qword_1002242C8, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v24 = *(v61 + 9);
    sub_10007E468(qword_1002242D0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v12[v24] == v62[0])
    {
      v61 = _swiftEmptyArrayStorage;
    }

    else
    {
      v53 = (v60 + 4);
      v54 = (v60 + 2);
      v52 = (v60 + 11);
      v51 = enum case for Track.song(_:);
      v50 = (v48 + 56);
      v45 = (v60 + 1);
      v44 = (v60 + 12);
      v60 = (v48 + 32);
      v49 = (v48 + 48);
      v61 = _swiftEmptyArrayStorage;
      v46 = v7;
      v47 = v5;
      v55 = v16;
      do
      {
        v25 = v22;
        v26 = v5;
        v27 = v3;
        v28 = dispatch thunk of Collection.subscript.read();
        v29 = v57;
        (*v54)(v57);
        v28(v62, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v30 = v58;
        (*v53)(v58, v29, v7);
        v31 = (*v52)(v30, v7);
        if (v31 == v51)
        {
          (*v44)(v30, v7);
          v3 = v27;
          v32 = v30;
          v33 = v56;
          (*v60)(v27, v32, v56);
          (*v50)(v27, 0, 1, v33);
        }

        else
        {
          v3 = v27;
          v34 = v27;
          v35 = v56;
          (*v50)(v34, 1, 1, v56);
          v36 = v30;
          v33 = v35;
          (*v45)(v36, v7);
        }

        v5 = v26;
        sub_10007E4B8(v3, v26);
        if ((*v49)(v26, 1, v33) == 1)
        {
          sub_1000050C4(v26, &qword_1002242A8, &qword_1001B8AF8);
          v22 = v25;
        }

        else
        {
          v37 = v3;
          v38 = *v60;
          (*v60)(v59, v26, v33);
          v22 = v25;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v39 = v61;
          }

          else
          {
            v39 = sub_10018963C(0, v61[2] + 1, 1, v61);
          }

          v41 = v39[2];
          v40 = v39[3];
          if (v41 >= v40 >> 1)
          {
            v39 = sub_10018963C((v40 > 1), v41 + 1, 1, v39);
          }

          v39[2] = v41 + 1;
          v42 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          v61 = v39;
          v38(v39 + v42 + *(v48 + 72) * v41, v59, v33);
          v3 = v37;
          v7 = v46;
          v5 = v47;
        }

        v16 = v55;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v12[v24] != v62[0]);
    }

    sub_1000050C4(v12, &qword_1002242B0, &qword_1001B8B00);
    (*(v43 + 8))(v22, v16);
    return v61;
  }
}