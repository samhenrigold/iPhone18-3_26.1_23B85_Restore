id sub_10005211C(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithScene:a1];
  swift_unknownObjectRelease();
  return v2;
}

id sub_100052164(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RemoteAlertRootViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithScene:", a1);
  swift_unknownObjectRelease();
  return v3;
}

id sub_100052200(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for RemoteAlertRootViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100052320(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RemoteAlertRootViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100052400(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteAlertRootViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100052458()
{
  result = [objc_allocWithZone(SecureUIManager) init];
  qword_1000B1028 = result;
  return result;
}

id sub_100052540()
{
  if (qword_1000B1020 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B1028;

  return v0;
}

uint64_t sub_1000525E4()
{
  v1 = OBJC_IVAR___SecureUIManager_isRecording;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10005268C(char a1)
{
  v3 = OBJC_IVAR___SecureUIManager_isRecording;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1000526E0();
}

void sub_1000526E0()
{
  v1 = [v0 controllers];
  v2 = [v1 allObjects];

  sub_1000282B4(&qword_1000AFA28, &qword_100078CE8);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v6 setIsRecording:{objc_msgSend(v0, "isRecording")}];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

char *sub_1000528A8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  type metadata accessor for SecureUIControllerDynamicIsland();
  swift_unknownObjectRetain();
  v9 = sub_100035EA8(v8, a2, a3);
  v10 = v9;
  [v10 setIsRecording:{objc_msgSend(v4, "isRecording")}];
  v11 = [v4 controllers];
  [v11 addObject:v10];

  return v9;
}

unint64_t type metadata accessor for SecureUIManager()
{
  result = qword_1000B1030;
  if (!qword_1000B1030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B1030);
  }

  return result;
}

id sub_100052A9C(void *a1, uint64_t a2)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(a1);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100052B1C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AuthorizationViewModel(0);
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);

  return EnvironmentObject.projectedValue.getter();
}

void *sub_100052BA8@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  sub_10002B4A4(0, &qword_1000AF5C0, UIDevice_ptr);
  if (sub_100069D50())
  {
    goto LABEL_4;
  }

  if (a1)
  {
    v5 = a1;
    sub_1000624A4();

LABEL_4:
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    EnvironmentObject.init()();
    sub_100052D68();
    sub_100052DBC();
    result = _ConditionalContent<>.init(storage:)();
    *a3 = v7;
    *(a3 + 16) = v8;
    return result;
  }

  type metadata accessor for AuthorizationViewModel(0);
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t sub_100052D68()
{
  result = qword_1000B1040;
  if (!qword_1000B1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B1040);
  }

  return result;
}

unint64_t sub_100052DBC()
{
  result = qword_1000B1048[0];
  if (!qword_1000B1048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1048);
  }

  return result;
}

uint64_t sub_100052E10()
{
  type metadata accessor for AuthorizationViewModel(0);
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);

  return EnvironmentObject.init()();
}

__n128 sub_100052EA8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_100052EC8()
{
  result = qword_1000AFA30;
  if (!qword_1000AFA30)
  {
    sub_10002CC44(&qword_1000AFA38, &unk_100078DA0);
    sub_100052D68();
    sub_100052DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA30);
  }

  return result;
}

void sub_100052F98(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1000282B4(&qword_1000AFAF0, &qword_100078F00);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  type metadata accessor for AuthorizationViewModel(0);
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
  v11 = EnvironmentObject.init()();
  if (a1)
  {
    v13 = v11;
    v14 = v12;
    v15 = a1;
    v16 = sub_10005E784();

    if (v16)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.0;
    }

    *v10 = static HorizontalAlignment.center.getter();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v18 = sub_1000282B4(&qword_1000AFAF8, &qword_100078F08);
    sub_1000531E8(a1, &v10[*(v18 + 44)]);
    sub_100034F7C(v10, v8, &qword_1000AFAF0, &qword_100078F00);
    *a3 = v13;
    *(a3 + 8) = v14;
    *(a3 + 16) = sub_1000531C0;
    *(a3 + 24) = 0;
    *(a3 + 32) = v17;
    v19 = sub_1000282B4(&qword_1000AFB00, &qword_100078F10);
    sub_100034F7C(v8, a3 + *(v19 + 48), &qword_1000AFAF0, &qword_100078F00);
    v20 = v13;
    sub_10002B444(v10, &qword_1000AFAF0, &qword_100078F00);
    sub_10002B444(v8, &qword_1000AFAF0, &qword_100078F00);
  }

  else
  {
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000531E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for MoveTransition();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v34 = sub_1000282B4(&qword_1000AFB08, &qword_100078F18);
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = (&v34 - v11);
  v13 = sub_1000282B4(&qword_1000AFB10, &qword_100078F20);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = a1;
  v20 = sub_10005E784();

  if (v20)
  {
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    v21 = EnvironmentObject.init()();
    v23 = v22;
    MoveTransition.init(edge:)();
    (*(v4 + 16))(v7, v9, v3);
    sub_10005B42C(&qword_1000AFB20, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
    v24 = AnyTransition.init<A>(_:)();
    (*(v4 + 8))(v9, v3);
    v25 = v12 + *(sub_1000282B4(&qword_1000AFB28, &qword_100078F30) + 36);
    static Material.thick.getter();
    v26 = static Edge.Set.all.getter();
    v25[*(sub_1000282B4(&qword_1000AFB30, &qword_100078F38) + 36)] = v26;
    *v12 = v21;
    v12[1] = v23;
    v12[2] = v24;
    v27 = static SafeAreaRegions.container.getter();
    v28 = static Edge.Set.bottom.getter();
    v29 = v34;
    v30 = v12 + *(v34 + 36);
    *v30 = v27;
    v30[8] = v28;
    sub_10005AE14(v12, v18, &qword_1000AFB08, &qword_100078F18);
    (*(v10 + 56))(v18, 0, 1, v29);
  }

  else
  {
    (*(v10 + 56))(v18, 1, 1, v34);
  }

  sub_100034F7C(v18, v16, &qword_1000AFB10, &qword_100078F20);
  v31 = v35;
  *v35 = 0;
  *(v31 + 8) = 1;
  v32 = sub_1000282B4(&qword_1000AFB18, &qword_100078F28);
  sub_100034F7C(v16, v31 + *(v32 + 48), &qword_1000AFB10, &qword_100078F20);
  sub_10002B444(v18, &qword_1000AFB10, &qword_100078F20);
  return sub_10002B444(v16, &qword_1000AFB10, &qword_100078F20);
}

uint64_t sub_1000535F8(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_10005E7C0(1);
    sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
    v10 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    aBlock[4] = sub_100054F88;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B620;
    aBlock[3] = &unk_100098698;
    v12 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10005B42C(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
    sub_100034E8C(&qword_1000AE810, &unk_1000AF5B0, &unk_100079C60, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v15 + 8))(v5, v3);
    return (*(v6 + 8))(v8, v14);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id sub_100053968@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v10 = v3;
  *a1 = static Alignment.center.getter();
  a1[1] = v5;
  v6 = sub_1000282B4(&qword_1000AFAE0, &qword_100078EE8);
  sub_100052F98(v10, a1 + *(v6 + 44));
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  *(v7 + 24) = v4;
  v8 = (a1 + *(sub_1000282B4(&qword_1000AFAE8, &unk_100078EF0) + 36));
  *v8 = sub_100054EAC;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;

  return v10;
}

unsigned __int8 *sub_100053A54@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  sub_100053B4C(a1, a2, &v15);
  v14 = v15;
  v9 = v16;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v14;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = v9;
  *(a3 + 56) = sub_100054614;
  *(a3 + 64) = v10;
  *(a3 + 72) = sub_100054754;
  *(a3 + 80) = v11;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  v12 = a1;

  return v12;
}

void sub_100053B4C(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Material();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000282B4(&qword_1000AFA40, &qword_100078E90);
  __chkstk_darwin(v41);
  v10 = &v39 - v9;
  v11 = sub_1000282B4(&qword_1000AFA48, &qword_100078E98);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v39 = sub_1000282B4(&qword_1000AFA50, &qword_100078EA0);
  __chkstk_darwin(v39);
  v15 = &v39 - v14;
  v16 = sub_1000282B4(&qword_1000AFA58, &qword_100078EA8);
  v17 = __chkstk_darwin(v16);
  v19 = &v39 - v18;
  if (a1)
  {
    v40 = v17;
    v43 = v6;
    v44 = a3;
    if (a1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad])
    {
      type metadata accessor for AuthorizationViewModel(0);
      sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
      v20 = a1;
      v21 = EnvironmentObject.init()();
      v23 = v22;
      v24 = v21;
    }

    else
    {
      v21 = a1;
      v23 = 0;
      v24 = 1;
    }

    v25 = v21;
    *v13 = static HorizontalAlignment.center.getter();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v26 = sub_1000282B4(&qword_1000AFA60, &qword_100078EB0);
    sub_100054068(a1, a2, &v13[*(v26 + 44)]);
    static Material.thick.getter();
    v27 = a1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad];

    if (v27 == 1)
    {
      v28 = sub_1000624A4();

      v29 = 1.0;
      if (!v28)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v29 = 0.0;
LABEL_10:
    (*(v42 + 32))(v10, v8, v43);
    *&v10[*(v41 + 36)] = v29;
    v30 = static Edge.Set.all.getter();
    v31 = &v15[*(v39 + 36)];
    sub_10005AE14(v10, v31, &qword_1000AFA40, &qword_100078E90);
    *(v31 + *(sub_1000282B4(&qword_1000AFA68, &qword_100078EB8) + 36)) = v30;
    sub_10005AE14(v13, v15, &qword_1000AFA48, &qword_100078E98);
    v32 = sub_100061FA4();

    v33 = &v19[*(v40 + 36)];
    v34 = *(type metadata accessor for RoundedRectangle() + 20);
    v35 = enum case for RoundedCornerStyle.continuous(_:);
    v36 = type metadata accessor for RoundedCornerStyle();
    (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
    *v33 = v32;
    v33[1] = v32;
    *(v33 + *(sub_1000282B4(&qword_1000AFA70, &qword_100078EC0) + 36)) = 256;
    sub_10005AE14(v15, v19, &qword_1000AFA50, &qword_100078EA0);
    v37 = sub_1000543C0();
    sub_10002B444(v19, &qword_1000AFA58, &qword_100078EA8);
    sub_10005482C(v24);

    sub_10005483C(v24);
    v38 = v44;
    *v44 = v24;
    v38[1] = v23;
    v38[2] = v37;

    sub_10005483C(v24);
    return;
  }

  type metadata accessor for AuthorizationViewModel(0);
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t sub_100054068@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AuthorizationHeaderView(0);
  v7 = __chkstk_darwin(v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (&v30 - v9);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  type metadata accessor for AuthorizationViewModel(0);
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
  v12 = a1;
  *v10 = EnvironmentObject.init()();
  v10[1] = v13;
  v10[2] = sub_100054C24;
  v10[3] = v11;
  *&v40 = 0x4034000000000000;
  sub_100054C28();
  ScaledMetric.init(wrappedValue:)();
  v14 = v12;
  v33 = sub_1000624A4();
  LOBYTE(v12) = sub_100062894();
  v15 = EnvironmentObject.init()();
  v17 = v15;
  v18 = v16;
  if (v12)
  {
    v35 = v15;
    v36 = v16;
    sub_100054C7C();
    sub_100054CD0();
    v38 = 0;
    v37 = 0uLL;
    v39 = 0;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    State.init(wrappedValue:)();
    v35 = v17;
    v36 = v18;
    v37 = v40;
    v38 = v41;
    v39 = 1;
    sub_100054C7C();
    sub_100054CD0();
  }

  _ConditionalContent<>.init(storage:)();
  v19 = v42;
  v20 = v43;
  v30 = v41;
  v31 = v40;
  v21 = v40;
  v22 = v41;
  sub_100054D24(v40, *(&v40 + 1), v41, *(&v41 + 1), v42, v43);
  v32 = sub_1000624A4();

  v23 = v34;
  sub_100054D88(v10, v34);
  sub_100054D88(v23, a3);
  v24 = sub_1000282B4(&qword_1000AFAD8, &qword_100078EE0);
  v25 = a3 + v24[12];
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 9) = !v33;
  v26 = a3 + v24[16];
  v27 = v30;
  *v26 = v31;
  *(v26 + 16) = v27;
  *(v26 + 32) = v19;
  *(v26 + 40) = v20;
  v28 = a3 + v24[20];
  sub_100054D24(v21, *(&v21 + 1), v22, *(&v22 + 1), v19, v20);
  sub_100054DEC(v21, *(&v21 + 1), v22, *(&v22 + 1), v19, v20);
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 9) = !v32;
  sub_100054E50(v10);
  sub_100054DEC(v21, *(&v21 + 1), v22, *(&v22 + 1), v19, v20);
  return sub_100054E50(v23);
}

uint64_t sub_1000543C0()
{
  v1 = v0;
  v2 = sub_1000282B4(&qword_1000AFA78, &qword_100078EC8);
  __chkstk_darwin(v2);
  v4 = &v23 - v3;
  v5 = sub_1000282B4(&qword_1000AFA80, &qword_100078ED0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  sub_10002B4A4(0, &qword_1000AF5C0, UIDevice_ptr);
  if (sub_100069D50())
  {
    v8 = objc_opt_self();
    v9 = [v8 mainScreen];
    [v9 nativeBounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v24.origin.x = v11;
    v24.origin.y = v13;
    v24.size.width = v15;
    v24.size.height = v17;
    Width = CGRectGetWidth(v24);
    v19 = [v8 mainScreen];
    [v19 nativeScale];
    v21 = v20;

    sub_100034F7C(v1, v7, &qword_1000AFA58, &qword_100078EA8);
    *&v7[*(v5 + 36)] = Width / v21 * 0.55;
    sub_100054AF8();
  }

  else
  {
    sub_100034F7C(v0, v4, &qword_1000AFA58, &qword_100078EA8);
    sub_10005484C();
  }

  return AnyView.init<A>(_:)();
}

uint64_t sub_1000545DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100054614()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if (*(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad))
    {
      v2 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_expectsDismissOnIpad;
      swift_beginAccess();
      if ((*(v1 + v2) & 1) == 0)
      {
        v3 = objc_opt_self();
        v4 = LACErrorCodeUserCancel;
        v5 = v1;
        v6 = [v3 errorWithCode:v4];
        v7 = sub_100045B10();
        sub_100065254(v6, v7, v8);
      }
    }
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100054754()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad];
    v1;
    if ((v2 & 1) != 0 || sub_1000624A4())
    {
      sub_10005F6B0(1);
    }
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    EnvironmentObject.error()();
    __break(1u);
  }

  return _objc_release_x1();
}

id sub_10005482C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_10005483C(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_10005484C()
{
  result = qword_1000AFA88;
  if (!qword_1000AFA88)
  {
    sub_10002CC44(&qword_1000AFA78, &qword_100078EC8);
    sub_1000548D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA88);
  }

  return result;
}

unint64_t sub_1000548D8()
{
  result = qword_1000AFA90;
  if (!qword_1000AFA90)
  {
    sub_10002CC44(&qword_1000AFA58, &qword_100078EA8);
    sub_100054990();
    sub_100034E8C(&qword_1000AFAC0, &qword_1000AFA70, &qword_100078EC0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA90);
  }

  return result;
}

unint64_t sub_100054990()
{
  result = qword_1000AFA98;
  if (!qword_1000AFA98)
  {
    sub_10002CC44(&qword_1000AFA50, &qword_100078EA0);
    sub_100054A48();
    sub_100034E8C(&qword_1000AFAB8, &qword_1000AFA68, &qword_100078EB8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA98);
  }

  return result;
}

unint64_t sub_100054A48()
{
  result = qword_1000AFAA0;
  if (!qword_1000AFAA0)
  {
    sub_10002CC44(&qword_1000AFA48, &qword_100078E98);
    sub_100034E8C(&qword_1000AFAA8, &qword_1000AFAB0, &qword_100078ED8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFAA0);
  }

  return result;
}

unint64_t sub_100054AF8()
{
  result = qword_1000AFAC8;
  if (!qword_1000AFAC8)
  {
    sub_10002CC44(&qword_1000AFA80, &qword_100078ED0);
    sub_1000548D8();
    sub_100054B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFAC8);
  }

  return result;
}

unint64_t sub_100054B84()
{
  result = qword_1000B11D0;
  if (!qword_1000B11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B11D0);
  }

  return result;
}

uint64_t type metadata accessor for AuthorizationHeaderView(uint64_t a1)
{
  result = qword_1000B11E8;
  if (!qword_1000B11E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100054C28()
{
  result = qword_1000AFAD0;
  if (!qword_1000AFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFAD0);
  }

  return result;
}

unint64_t sub_100054C7C()
{
  result = qword_1000B11D8;
  if (!qword_1000B11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B11D8);
  }

  return result;
}

unint64_t sub_100054CD0()
{
  result = qword_1000B11E0;
  if (!qword_1000B11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B11E0);
  }

  return result;
}

id sub_100054D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v7 = a1;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_100054D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthorizationHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100054DEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

uint64_t sub_100054E50(uint64_t a1)
{
  v2 = type metadata accessor for AuthorizationHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100054EAC()
{
  static Animation.easeOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100054F50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100054F88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10005F6B0(1);
  }
}

uint64_t sub_100054FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100054FF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100055044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100055098(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1000550B0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000550F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10005514C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000551DC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000282B4(&qword_1000AFB38, &qword_100079018);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1000552B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1000282B4(&qword_1000AFB38, &qword_100079018);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100055368(uint64_t a1)
{
  sub_100055404(319);
  if (v1 <= 0x3F)
  {
    sub_100055498(319);
    if (v2 <= 0x3F)
    {
      sub_1000554FC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100055404(uint64_t a1)
{
  if (!qword_1000AFB98)
  {
    type metadata accessor for AuthorizationViewModel(255);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AFB98);
    }
  }
}

void sub_100055498(uint64_t a1)
{
  if (!qword_1000AFBA0)
  {
    sub_10002CC44(&qword_1000AFBA8, &qword_100079038);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AFBA0);
    }
  }
}

void sub_1000554FC(uint64_t a1)
{
  if (!qword_1000AFBB0)
  {
    sub_100054C28();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AFBB0);
    }
  }
}

uint64_t sub_100055558(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000555B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100055618()
{
  result = qword_1000AFBE8;
  if (!qword_1000AFBE8)
  {
    sub_10002CC44(&qword_1000AFBF0, &qword_100079060);
    sub_1000556A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBE8);
  }

  return result;
}

unint64_t sub_1000556A4()
{
  result = qword_1000AFBF8;
  if (!qword_1000AFBF8)
  {
    sub_10002CC44(&qword_1000AFC00, &qword_100079068);
    sub_100034E8C(&qword_1000AFC08, &qword_1000AFC10, &qword_100079070, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBF8);
  }

  return result;
}

unint64_t sub_100055760()
{
  result = qword_1000AFC18;
  if (!qword_1000AFC18)
  {
    sub_10002CC44(&qword_1000AFAE8, &unk_100078EF0);
    sub_100034E8C(&qword_1000AFC20, &qword_1000AFC28, qword_100079078, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFC18);
  }

  return result;
}

uint64_t sub_100055834@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v119 = a2;
  v132 = a3;
  v4 = sub_1000282B4(&qword_1000AFC48, &qword_100079250);
  v128 = *(v4 - 8);
  __chkstk_darwin(v4);
  v116 = &v102 - v5;
  v6 = sub_1000282B4(&qword_1000AFC50, &qword_100079258);
  v7 = __chkstk_darwin(v6 - 8);
  v131 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v130 = &v102 - v9;
  v110 = sub_1000282B4(&qword_1000AFC58, &qword_100079260);
  __chkstk_darwin(v110);
  v111 = &v102 - v10;
  v126 = sub_1000282B4(&qword_1000AFC60, &qword_100079268);
  __chkstk_darwin(v126);
  v112 = &v102 - v11;
  v117 = sub_1000282B4(&qword_1000AFC68, &qword_100079270);
  __chkstk_darwin(v117);
  v104 = &v102 - v12;
  v105 = sub_1000282B4(&qword_1000AFC70, &qword_100079278);
  v13 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v102 - v14;
  v109 = sub_1000282B4(&qword_1000AFC78, &qword_100079280);
  __chkstk_darwin(v109);
  v106 = &v102 - v15;
  v16 = type metadata accessor for BorderedProminentButtonStyle();
  v114 = *(v16 - 8);
  v115 = v16;
  __chkstk_darwin(v16);
  v113 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000282B4(&qword_1000AFC80, &qword_100079288);
  v107 = *(v18 - 8);
  v108 = v18;
  __chkstk_darwin(v18);
  v20 = &v102 - v19;
  v118 = sub_1000282B4(&qword_1000AFC88, &qword_100079290);
  __chkstk_darwin(v118);
  v22 = &v102 - v21;
  v121 = sub_1000282B4(&qword_1000AFC90, &qword_100079298);
  __chkstk_darwin(v121);
  v123 = &v102 - v23;
  v24 = sub_1000282B4(&qword_1000AFC98, &qword_1000792A0);
  __chkstk_darwin(v24);
  v26 = (&v102 - v25);
  v122 = sub_1000282B4(&qword_1000AFCA0, &qword_1000792A8);
  __chkstk_darwin(v122);
  v28 = &v102 - v27;
  v29 = sub_1000282B4(&qword_1000AFCA8, &qword_1000792B0);
  v30 = __chkstk_darwin(v29 - 8);
  v127 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v133 = &v102 - v32;
  if (a1)
  {
    v120 = a1;
    v33 = a1;
    v124 = sub_100060060();
    v125 = v34;
    v35 = sub_1000622DC();
    v129 = v4;
    if (v35)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = v33;
      type metadata accessor for AuthorizationViewModel(0);
      sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
      v37 = EnvironmentObject.init()();
      *v26 = v37;
      v26[1] = v38;
      v26[2] = sub_100059F64;
      v26[3] = v36;
      swift_storeEnumTagMultiPayload();
      sub_100059A4C();
      sub_100059AA0();
      v39 = v37;

      _ConditionalContent<>.init(storage:)();
      sub_100034F7C(v28, v123, &qword_1000AFCA0, &qword_1000792A8);
      swift_storeEnumTagMultiPayload();
      sub_1000599C0();
      sub_100059BEC();
      _ConditionalContent<>.init(storage:)();

      v40 = v28;
      v41 = &qword_1000AFCA0;
      v42 = &qword_1000792A8;
    }

    else if (sub_10005EB3C())
    {

      v43 = swift_allocObject();
      v44 = v119;
      *(v43 + 16) = v120;
      *(v43 + 24) = v44;
      __chkstk_darwin(v43);
      *(&v102 - 2) = v46;
      *(&v102 - 1) = v45;
      v47 = v33;
      Button.init(action:label:)();
      v48 = v113;
      BorderedProminentButtonStyle.init()();
      sub_100034E8C(&qword_1000AFCD0, &qword_1000AFC80, &qword_100079288, &protocol conformance descriptor for Button<A>);
      sub_10005B42C(&qword_1000AFCD8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
      v112 = v24;
      v49 = v22;
      v50 = v108;
      v51 = v115;
      View.buttonStyle<A>(_:)();
      (*(v114 + 8))(v48, v51);
      (*(v107 + 8))(v20, v50);
      v52 = static Edge.Set.bottom.getter();
      v53 = v49 + *(v118 + 36);
      *v53 = v52;
      *(v53 + 8) = 0u;
      *(v53 + 24) = 0u;
      *(v53 + 40) = 1;
      sub_100034F7C(v49, v26, &qword_1000AFC88, &qword_100079290);
      swift_storeEnumTagMultiPayload();
      sub_100059A4C();
      sub_100059AA0();
      _ConditionalContent<>.init(storage:)();
      sub_100034F7C(v28, v123, &qword_1000AFCA0, &qword_1000792A8);
      swift_storeEnumTagMultiPayload();
      sub_1000599C0();
      sub_100059BEC();
      _ConditionalContent<>.init(storage:)();
      sub_10002B444(v28, &qword_1000AFCA0, &qword_1000792A8);
      v40 = v49;
      v41 = &qword_1000AFC88;
      v42 = &qword_100079290;
    }

    else if (sub_1000610A0())
    {
      v54 = sub_1000610A0();

      if (v54)
      {
        *&v150 = sub_10002773C();
        *(&v150 + 1) = v55;
        v56 = swift_allocObject();
        v57 = v119;
        *(v56 + 16) = v120;
        *(v56 + 24) = v57;
        sub_10004FA24();
        v58 = v33;
        v59 = v104;
        Button<>.init<A>(_:action:)();
        v60 = static Edge.Set.all.getter();
        v61 = v59 + *(v117 + 36);
        *v61 = v60;
        *(v61 + 8) = 0u;
        *(v61 + 24) = 0u;
        *(v61 + 40) = 1;
        v62 = v113;
        BorderedProminentButtonStyle.init()();
        sub_100059908();
        sub_10005B42C(&qword_1000AFCD8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
        v63 = v103;
        v64 = v115;
        View.buttonStyle<A>(_:)();
        (*(v114 + 8))(v62, v64);
        sub_10002B444(v59, &qword_1000AFC68, &qword_100079270);
        v66 = v105;
        v65 = v106;
        (*(v13 + 32))(v106, v63, v105);
        (*(v13 + 56))(v65, 0, 1, v66);
      }

      else
      {
        v65 = v106;
        (*(v13 + 56))(v106, 1, 1, v105);
      }

      sub_100034F7C(v65, v111, &qword_1000AFC78, &qword_100079280);
      swift_storeEnumTagMultiPayload();
      sub_1000282B4(&qword_1000AFCB8, &qword_1000792C0);
      sub_1000597F8();
      sub_100034E8C(&qword_1000AFCE0, &qword_1000AFCB8, &qword_1000792C0, &protocol conformance descriptor for VStack<A>);
      v77 = v112;
      _ConditionalContent<>.init(storage:)();
      sub_100034F7C(v77, v123, &qword_1000AFC60, &qword_100079268);
      swift_storeEnumTagMultiPayload();
      sub_1000599C0();
      sub_100059BEC();
      _ConditionalContent<>.init(storage:)();
      sub_10002B444(v77, &qword_1000AFC60, &qword_100079268);
      v40 = v65;
      v41 = &qword_1000AFC78;
      v42 = &qword_100079280;
    }

    else
    {

      v67 = static HorizontalAlignment.center.getter();
      v135 = 1;
      sub_100056AAC(v120, &v150);
      v146 = v151[9];
      v147[0] = v151[10];
      *(v147 + 9) = *(&v151[10] + 9);
      v142 = v151[5];
      v143 = v151[6];
      v144 = v151[7];
      v145 = v151[8];
      v138 = v151[1];
      v139 = v151[2];
      v140 = v151[3];
      v141 = v151[4];
      v136 = v150;
      v137 = v151[0];
      v148[10] = v151[9];
      v149[0] = v151[10];
      *(v149 + 9) = *(&v151[10] + 9);
      v148[6] = v151[5];
      v148[7] = v151[6];
      v148[8] = v151[7];
      v148[9] = v151[8];
      v148[2] = v151[1];
      v148[3] = v151[2];
      v148[4] = v151[3];
      v148[5] = v151[4];
      v148[0] = v150;
      v148[1] = v151[0];
      sub_100034F7C(&v136, v134, &qword_1000AFCB0, &qword_1000792B8);
      sub_10002B444(v148, &qword_1000AFCB0, &qword_1000792B8);
      *&v134[151] = v145;
      *&v134[167] = v146;
      *&v134[183] = v147[0];
      *&v134[192] = *(v147 + 9);
      *&v134[87] = v141;
      *&v134[103] = v142;
      *&v134[119] = v143;
      *&v134[135] = v144;
      *&v134[23] = v137;
      *&v134[39] = v138;
      *&v134[55] = v139;
      *&v134[71] = v140;
      *&v134[7] = v136;
      *(&v151[9] + 1) = *&v134[144];
      *(&v151[10] + 1) = *&v134[160];
      *(&v151[11] + 1) = *&v134[176];
      *(&v151[12] + 1) = *(v147 + 9);
      *(&v151[5] + 1) = *&v134[80];
      *(&v151[6] + 1) = *&v134[96];
      *(&v151[7] + 1) = *&v134[112];
      *(&v151[8] + 1) = *&v134[128];
      *(&v151[1] + 1) = *&v134[16];
      *(&v151[2] + 1) = *&v134[32];
      *(&v151[3] + 1) = *&v134[48];
      v150 = v67;
      LOBYTE(v151[0]) = v135;
      *(&v151[4] + 1) = *&v134[64];
      *(v151 + 1) = *v134;
      v68 = v151[12];
      v69 = v111;
      *(v111 + 192) = v151[11];
      *(v69 + 208) = v68;
      *(v69 + 224) = v151[13];
      v70 = v151[8];
      *(v69 + 128) = v151[7];
      *(v69 + 144) = v70;
      v71 = v151[10];
      *(v69 + 160) = v151[9];
      *(v69 + 176) = v71;
      v72 = v151[4];
      *(v69 + 64) = v151[3];
      *(v69 + 80) = v72;
      v73 = v151[6];
      *(v69 + 96) = v151[5];
      *(v69 + 112) = v73;
      v74 = v151[0];
      *v69 = v150;
      *(v69 + 16) = v74;
      v75 = v151[2];
      *(v69 + 32) = v151[1];
      *(v69 + 48) = v75;
      swift_storeEnumTagMultiPayload();
      sub_100034F7C(&v150, v134, &qword_1000AFCB8, &qword_1000792C0);
      sub_1000282B4(&qword_1000AFCB8, &qword_1000792C0);
      sub_1000597F8();
      sub_100034E8C(&qword_1000AFCE0, &qword_1000AFCB8, &qword_1000792C0, &protocol conformance descriptor for VStack<A>);
      v76 = v112;
      _ConditionalContent<>.init(storage:)();
      sub_100034F7C(v76, v123, &qword_1000AFC60, &qword_100079268);
      swift_storeEnumTagMultiPayload();
      sub_1000599C0();
      sub_100059BEC();
      _ConditionalContent<>.init(storage:)();
      sub_10002B444(&v150, &qword_1000AFCB8, &qword_1000792C0);
      v40 = v76;
      v41 = &qword_1000AFC60;
      v42 = &qword_100079268;
    }

    sub_10002B444(v40, v41, v42);
    v78 = v130;
    v79 = sub_100061458();

    v80 = v129;
    if (v79)
    {
      v81 = sub_100062D78();
      v83 = v82;

      *&v150 = v81;
      *(&v150 + 1) = v83;
      v84 = swift_allocObject();
      v85 = v119;
      *(v84 + 16) = v120;
      *(v84 + 24) = v85;
      sub_10004FA24();
      v86 = v33;
      v87 = v116;
      Button<>.init<A>(_:action:)();
      v88 = static Edge.Set.bottom.getter();
      v89 = v87 + *(v117 + 36);
      *v89 = v88;
      *(v89 + 8) = 0u;
      *(v89 + 24) = 0u;
      *(v89 + 40) = 1;
      v90 = static Font.subheadline.getter();
      KeyPath = swift_getKeyPath();
      v92 = (v87 + *(v80 + 36));
      *v92 = KeyPath;
      v92[1] = v90;
      sub_10005AE14(v87, v78, &qword_1000AFC48, &qword_100079250);
      v93 = 0;
    }

    else
    {

      v93 = 1;
    }

    (*(v128 + 56))(v78, v93, 1, v80);
    v94 = v133;
    v95 = v127;
    sub_100034F7C(v133, v127, &qword_1000AFCA8, &qword_1000792B0);
    v96 = v131;
    sub_100034F7C(v78, v131, &qword_1000AFC50, &qword_100079258);
    v97 = v132;
    v98 = v125;
    *v132 = v124;
    v97[1] = v98;
    v99 = v78;
    v100 = sub_1000282B4(&qword_1000AFD00, &qword_1000792C8);
    sub_100034F7C(v95, v97 + *(v100 + 48), &qword_1000AFCA8, &qword_1000792B0);
    sub_100034F7C(v96, v97 + *(v100 + 64), &qword_1000AFC50, &qword_100079258);

    sub_10002B444(v99, &qword_1000AFC50, &qword_100079258);
    sub_10002B444(v94, &qword_1000AFCA8, &qword_1000792B0);
    sub_10002B444(v96, &qword_1000AFC50, &qword_100079258);
    sub_10002B444(v95, &qword_1000AFCA8, &qword_1000792B0);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100056AAC@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1000282B4(&qword_1000AF8A0, &qword_1000788D0);
  __chkstk_darwin(v4 - 8);
  v58 = &v54[-v5];
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *&a1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context];
  v11 = a1;
  v12 = v10;
  v13 = v11;
  v62 = sub_10005D978(v12, a1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v64 = v133;
  LODWORD(v12) = v134;
  v66 = v135;
  LODWORD(a1) = v136;
  v60 = v138;
  v61 = v137;
  v59 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v65 = v12;
  v132 = v12;
  v67 = a1;
  v131 = a1;
  v130 = 0;
  sub_100060B68();

  sub_100051930();
  sub_10004FFD4();
  nullsub_18();
  v23 = v22;
  v63 = v24;
  v26 = v25;
  v57 = sub_100062188();

  (*(v7 + 104))(v9, enum case for Font.TextStyle.subheadline(_:), v6);
  v27 = type metadata accessor for Font.Design();
  v28 = v58;
  (*(*(v27 - 8) + 56))(v58, 1, 1, v27);
  static Font.system(_:design:weight:)();
  sub_10002B444(v28, &qword_1000AF8A0, &qword_1000788D0);
  (*(v7 + 8))(v9, v6);
  v29 = Text.font(_:)();
  v56 = v30;
  v57 = v29;
  LOBYTE(v12) = v31;
  v58 = v32;

  v55 = static Edge.Set.bottom.getter();
  sub_10006212C();

  EdgeInsets.init(_all:)();
  v125 = v12 & 1;
  v122 = 0;
  v34 = v61;
  v33 = v62;
  *&v80 = v62;
  *(&v80 + 1) = v64;
  LOBYTE(v81) = v65;
  *(&v81 + 1) = *v129;
  DWORD1(v81) = *&v129[3];
  *(&v81 + 1) = v66;
  LOBYTE(v82) = v67;
  DWORD1(v82) = *&v128[3];
  *(&v82 + 1) = *v128;
  v35 = v60;
  *(&v82 + 1) = v61;
  *&v83 = v60;
  LOBYTE(v6) = v59;
  BYTE8(v83) = v59;
  HIDWORD(v83) = *&v127[3];
  *(&v83 + 9) = *v127;
  *&v84 = v15;
  *(&v84 + 1) = v17;
  *&v85 = v19;
  *(&v85 + 1) = v21;
  LOBYTE(v86) = 0;
  DWORD1(v86) = *&v126[3];
  *(&v86 + 1) = *v126;
  *(&v86 + 1) = v23;
  *&v87 = v63;
  *(&v87 + 1) = v26;
  v70 = v82;
  v71 = v83;
  v68 = v80;
  v69 = v81;
  v74 = v86;
  v75 = v87;
  v72 = v84;
  v73 = v85;
  v37 = v56;
  v36 = v57;
  *&v88 = v57;
  *(&v88 + 1) = v56;
  LOBYTE(v89) = v12 & 1;
  DWORD1(v89) = *&v124[3];
  *(&v89 + 1) = *v124;
  v38 = v58;
  *(&v89 + 1) = v58;
  v39 = v55;
  LOBYTE(v90) = v55;
  DWORD1(v90) = *&v123[3];
  *(&v90 + 1) = *v123;
  *(&v90 + 1) = v40;
  *&v91[0] = v41;
  *(&v91[0] + 1) = v42;
  *&v91[1] = v43;
  BYTE8(v91[1]) = 0;
  *(v79 + 9) = *(v91 + 9);
  v78 = v90;
  v79[0] = v91[0];
  v76 = v88;
  v77 = v89;
  v44 = v80;
  v45 = v81;
  v46 = v83;
  a2[2] = v82;
  a2[3] = v46;
  *a2 = v44;
  a2[1] = v45;
  v47 = v72;
  v48 = v73;
  v49 = v75;
  a2[6] = v74;
  a2[7] = v49;
  a2[4] = v47;
  a2[5] = v48;
  v50 = v76;
  v51 = v77;
  *(a2 + 185) = *(v79 + 9);
  v52 = v79[0];
  a2[10] = v78;
  a2[11] = v52;
  a2[8] = v50;
  a2[9] = v51;
  v92[0] = v36;
  v92[1] = v37;
  v93 = v12 & 1;
  *v94 = *v124;
  *&v94[3] = *&v124[3];
  v95 = v38;
  v96 = v39;
  *v97 = *v123;
  *&v97[3] = *&v123[3];
  v98 = v40;
  v99 = v41;
  v100 = v42;
  v101 = v43;
  v102 = 0;
  sub_100034F7C(&v80, v103, &qword_1000AFD08, &qword_100079308);
  sub_100034F7C(&v88, v103, &qword_1000AFD10, &qword_100079310);
  sub_10002B444(v92, &qword_1000AFD10, &qword_100079310);
  v103[0] = v33;
  v103[1] = v64;
  v104 = v65;
  *v105 = *v129;
  *&v105[3] = *&v129[3];
  v106 = v66;
  v107 = v67;
  *v108 = *v128;
  *&v108[3] = *&v128[3];
  v109 = v34;
  v110 = v35;
  v111 = v6;
  *&v112[3] = *&v127[3];
  *v112 = *v127;
  v113 = v15;
  v114 = v17;
  v115 = v19;
  v116 = v21;
  v117 = 0;
  *v118 = *v126;
  *&v118[3] = *&v126[3];
  v119 = v23;
  v120 = v63;
  v121 = v26;
  return sub_10002B444(v103, &qword_1000AFD08, &qword_100079308);
}

uint64_t sub_1000570C0@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_1000282B4(&qword_1000AFC40, &qword_100079248);
  return sub_100055834(v5, v4, (a2 + *(v6 + 44)));
}

uint64_t sub_100057124(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

void sub_100057168(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v23 = *(a1 + 1);
  *&v24 = v4;
  sub_1000282B4(&qword_1000AFD18, &qword_100079318);
  State.wrappedValue.getter();
  if (v22)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = [*&v5[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration] verifyPrompt];
      if (v6)
      {
        v7 = v6;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v27 = *(a1 + 1);
      v28 = v4;
      v11 = swift_allocObject();
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      v12 = *(a1 + 1);
      *(v11 + 32) = *a1;
      *(v11 + 48) = v12;
      *(v11 + 64) = a1[4];
      v13 = v5;
      sub_10005A23C(&v27, &v23);
      sub_100034F7C(&v28, &v23, &qword_1000AFD20, &qword_100079320);
      type metadata accessor for AuthorizationViewModel(0);
      sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
      v14 = EnvironmentObject.init()();

LABEL_10:
      sub_1000282B4(&qword_1000AFD28, &qword_100079328);
      sub_100034E8C(&qword_1000AFD30, &qword_1000AFD28, &qword_100079328, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();

      v18 = v24;
      v19 = v25;
      v20 = v26;
      *a2 = v23;
      *(a2 + 16) = v18;
      *(a2 + 32) = v19;
      *(a2 + 48) = v20;
      return;
    }
  }

  else
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = [*&v8[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration] prompt];
      if (v9)
      {
        v10 = v9;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v27 = *(a1 + 1);
      v28 = v4;
      v15 = swift_allocObject();
      v16 = *(a1 + 1);
      *(v15 + 16) = *a1;
      *(v15 + 32) = v16;
      *(v15 + 48) = a1[4];
      v17 = v8;
      sub_10005A23C(&v27, &v23);
      sub_100034F7C(&v28, &v23, &qword_1000AFD20, &qword_100079320);
      type metadata accessor for AuthorizationViewModel(0);
      sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
      v14 = EnvironmentObject.init()();

      goto LABEL_10;
    }
  }

  type metadata accessor for AuthorizationViewModel(0);
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
  EnvironmentObject.error()();
  __break(1u);
}

__n128 sub_100057548@<Q0>(uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v12 = 1;
  sub_100057168(v2, v10);
  v5 = v11;
  result = v10[0];
  v7 = v10[1];
  v8 = v10[2];
  v9 = v12;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = result;
  *(a2 + 40) = v7;
  *(a2 + 56) = v8;
  *(a2 + 72) = v5;
  return result;
}

uint64_t sub_1000575C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = type metadata accessor for OpacityTransition();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  static Color.black.getter();
  if (a1)
  {
    v12 = a1;
    sub_100062064();

    v13 = Color.opacity(_:)();

    v14 = static SafeAreaRegions.all.getter();
    v15 = static Edge.Set.all.getter();
    OpacityTransition.init()();
    (*(v6 + 16))(v9, v11, v5);
    sub_10005B42C(&qword_1000AFDB8, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v16 = AnyTransition.init<A>(_:)();
    (*(v6 + 8))(v11, v5);
    v20[2] = v13;
    v20[3] = v14;
    v21 = v15;
    v22 = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = v12;
    sub_1000282B4(&qword_1000AFDC0, &qword_100079410);
    sub_10005A8EC();
    View.onTapGesture(count:perform:)();
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005788C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = sub_1000282B4(&qword_1000AF8A0, &qword_1000788D0);
  __chkstk_darwin(v3 - 8);
  v110 = &v104 - v4;
  v111 = type metadata accessor for Font.TextStyle();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Image.ResizingMode();
  v6 = *(v112 - 8);
  __chkstk_darwin(v112);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000282B4(&qword_1000AFD40, &qword_100079338);
  v113 = *(v9 - 8);
  v114 = v9;
  __chkstk_darwin(v9);
  v11 = &v104 - v10;
  v12 = sub_1000282B4(&qword_1000AFD48, &qword_100079340);
  v13 = __chkstk_darwin(v12 - 8);
  v116 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v118 = &v104 - v15;
  v16 = sub_1000282B4(&qword_1000AFD50, &qword_100079348);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v104 - v18;
  v20 = sub_1000282B4(&qword_1000AFD58, &qword_100079350);
  v21 = __chkstk_darwin(v20 - 8);
  v115 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v119 = &v104 - v23;
  v24 = a1;
  if (*a1)
  {
    v25 = *a1;
    v26 = sub_1000624D8();

    if (v26)
    {
      (*(v17 + 56))(v119, 1, 1, v16);
    }

    else
    {
      *v19 = static HorizontalAlignment.center.getter();
      *(v19 + 1) = 0;
      v19[16] = 0;
      v27 = sub_1000282B4(&qword_1000AFD60, &qword_100079358);
      sub_100058348(v24, &v19[*(v27 + 44)]);
      v28 = v19;
      v29 = v119;
      sub_10005AE14(v28, v119, &qword_1000AFD50, &qword_100079348);
      (*(v17 + 56))(v29, 0, 1, v16);
    }

    v30 = v25;
    v31 = sub_100062608();

    if (v31)
    {
      v107 = v31;
      Image.init(uiImage:)();
      v32 = v112;
      (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v112);
      v106 = Image.resizable(capInsets:resizingMode:)();

      (*(v6 + 8))(v8, v32);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v112 = v153;
      v33 = v154;
      v34 = v155;
      v35 = v156;
      v36 = v157;
      v105 = v158;
      v37 = &v11[*(sub_1000282B4(&qword_1000AFD78, &qword_1000793D0) + 36)];
      v38 = *(type metadata accessor for RoundedRectangle() + 20);
      v39 = enum case for RoundedCornerStyle.continuous(_:);
      v40 = type metadata accessor for RoundedCornerStyle();
      (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
      __asm { FMOV            V0.2D, #10.0 }

      *v37 = _Q0;
      *&v37[*(sub_1000282B4(&qword_1000AFA70, &qword_100078EC0) + 36)] = 256;
      v46 = v112;
      *v11 = v106;
      *(v11 + 1) = v46;
      v11[16] = v33;
      *(v11 + 3) = v34;
      v11[32] = v35;
      v47 = v105;
      *(v11 + 5) = v36;
      *(v11 + 6) = v47;
      LOBYTE(v36) = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v56 = v114;
      v57 = &v11[*(v114 + 36)];
      *v57 = v36;
      *(v57 + 1) = v49;
      *(v57 + 2) = v51;
      *(v57 + 3) = v53;
      *(v57 + 4) = v55;
      v57[40] = 0;
      v58 = v118;
      sub_10005AE14(v11, v118, &qword_1000AFD40, &qword_100079338);
      v59 = 0;
    }

    else
    {
      v59 = 1;
      v58 = v118;
      v56 = v114;
    }

    (*(v113 + 56))(v58, v59, 1, v56);
    v60 = v30;
    v61 = sub_100062574();
    v63 = v62;

    if (v63)
    {
      v64 = HIBYTE(v63) & 0xF;
      if ((v63 & 0x2000000000000000) == 0)
      {
        v64 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (v64)
      {
        v66 = v108;
        v65 = v109;
        v67 = v111;
        (*(v109 + 104))(v108, enum case for Font.TextStyle.body(_:), v111);
        v68 = type metadata accessor for Font.Design();
        v69 = v110;
        (*(*(v68 - 8) + 56))(v110, 1, 1, v68);
        static Font.system(_:design:weight:)();
        sub_10002B444(v69, &qword_1000AF8A0, &qword_1000788D0);
        (*(v65 + 8))(v66, v67);
        v70 = Text.font(_:)();
        v72 = v71;
        LOBYTE(v69) = v73;
        v75 = v74;

        KeyPath = swift_getKeyPath();
        v77 = static Edge.Set.vertical.getter();
        EdgeInsets.init(_all:)();
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v85 = v84;
        LOBYTE(v66) = v69 & 1;
        LOBYTE(v133) = v69 & 1;
        LOBYTE(v131[0]) = 0;
        LOBYTE(v69) = static Edge.Set.horizontal.getter();
        LOBYTE(v142) = 1;
        v86 = swift_getKeyPath();
        *&v133 = v70;
        *(&v133 + 1) = v72;
        LOBYTE(v134) = v66;
        v58 = v118;
        *(&v134 + 1) = v75;
        *&v135 = KeyPath;
        BYTE8(v135) = 1;
        LOBYTE(v136) = v77;
        *(&v136 + 1) = v79;
        *&v137 = v81;
        *(&v137 + 1) = v83;
        *&v138 = v85;
        BYTE8(v138) = 0;
        LOBYTE(v139[0]) = v69;
        *(v139 + 8) = 0u;
        *(&v139[1] + 8) = 0u;
        BYTE8(v139[2]) = 1;
        *&v140 = v86;
        *(&v140 + 1) = 5;
        v141 = 0;
        nullsub_18();
        v150 = v139[2];
        v151 = v140;
        v152 = v141;
        v146 = v137;
        v147 = v138;
        v148 = v139[0];
        v149 = v139[1];
        v142 = v133;
        v143 = v134;
        v144 = v135;
        v145 = v136;
LABEL_15:
        v87 = v119;
        v88 = v115;
        sub_100034F7C(v119, v115, &qword_1000AFD58, &qword_100079350);
        v89 = v116;
        sub_100034F7C(v58, v116, &qword_1000AFD48, &qword_100079340);
        v128 = v150;
        v129 = v151;
        v130 = v152;
        v124 = v146;
        v125 = v147;
        v126 = v148;
        v127 = v149;
        v120 = v142;
        v121 = v143;
        v122 = v144;
        v123 = v145;
        v90 = v117;
        sub_100034F7C(v88, v117, &qword_1000AFD58, &qword_100079350);
        v91 = sub_1000282B4(&qword_1000AFD68, &qword_100079360);
        sub_100034F7C(v89, v90 + *(v91 + 48), &qword_1000AFD48, &qword_100079340);
        v92 = *(v91 + 64);
        v93 = v129;
        v131[8] = v128;
        v131[9] = v129;
        v94 = v124;
        v95 = v125;
        v131[4] = v124;
        v131[5] = v125;
        v97 = v126;
        v96 = v127;
        v131[6] = v126;
        v131[7] = v127;
        v98 = v120;
        v99 = v121;
        v131[0] = v120;
        v131[1] = v121;
        v101 = v122;
        v100 = v123;
        v131[2] = v122;
        v131[3] = v123;
        v102 = v90 + v92;
        *(v102 + 128) = v128;
        *(v102 + 144) = v93;
        *(v102 + 64) = v94;
        *(v102 + 80) = v95;
        *(v102 + 96) = v97;
        *(v102 + 112) = v96;
        *v102 = v98;
        *(v102 + 16) = v99;
        v132 = v130;
        *(v102 + 160) = v130;
        *(v102 + 32) = v101;
        *(v102 + 48) = v100;
        sub_100034F7C(v131, &v133, &qword_1000AFD70, &qword_100079368);
        sub_10002B444(v58, &qword_1000AFD48, &qword_100079340);
        sub_10002B444(v87, &qword_1000AFD58, &qword_100079350);
        v139[2] = v128;
        v140 = v129;
        v141 = v130;
        v137 = v124;
        v138 = v125;
        v139[0] = v126;
        v139[1] = v127;
        v133 = v120;
        v134 = v121;
        v135 = v122;
        v136 = v123;
        sub_10002B444(&v133, &qword_1000AFD70, &qword_100079368);
        sub_10002B444(v89, &qword_1000AFD48, &qword_100079340);
        return sub_10002B444(v88, &qword_1000AFD58, &qword_100079350);
      }
    }

    sub_10005A56C(&v142);
    goto LABEL_15;
  }

  type metadata accessor for AuthorizationViewModel(0);
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100058348@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = type metadata accessor for Divider();
  v3 = *(v35 - 8);
  v4 = __chkstk_darwin(v35);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = sub_1000282B4(&qword_1000AFD80, &qword_1000793D8);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = sub_1000282B4(&qword_1000AFD88, &qword_1000793E0);
  sub_10005862C(a1, &v14[*(v15 + 44)]);
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  v16 = &v14[*(sub_1000282B4(&qword_1000AFD90, &qword_1000793E8) + 36)];
  *v16 = a1;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v17 = &v14[*(v9 + 44)];
  *v17 = a1;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  Divider.init()();
  v22 = v12;
  v33 = v12;
  sub_100034F7C(v14, v12, &qword_1000AFD80, &qword_1000793D8);
  v23 = *(v3 + 16);
  v24 = v34;
  v25 = v7;
  v26 = v7;
  v27 = v35;
  v23(v34, v25, v35);
  v28 = v22;
  v29 = v36;
  sub_100034F7C(v28, v36, &qword_1000AFD80, &qword_1000793D8);
  v30 = sub_1000282B4(&qword_1000AFD98, &qword_1000793F0);
  v23((v29 + *(v30 + 48)), v24, v27);
  v31 = *(v3 + 8);
  v31(v26, v27);
  sub_10002B444(v14, &qword_1000AFD80, &qword_1000793D8);
  v31(v24, v27);
  return sub_10002B444(v33, &qword_1000AFD80, &qword_1000793D8);
}

uint64_t sub_10005862C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AuthorizationHeaderView(0);
  v53 = *(v6 - 8);
  __chkstk_darwin(v6);
  v54 = v7;
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000282B4(&qword_1000AFDA0, &qword_1000793F8);
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v57 = &v52 - v9;
  v10 = sub_1000282B4(&qword_1000AFDA8, &qword_100079400);
  v11 = __chkstk_darwin(v10 - 8);
  v65 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v52 - v13;
  v14 = sub_1000282B4(&qword_1000AF8A0, &qword_1000788D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v52 - v15;
  if (*a1)
  {
    v17 = *a1;
    sub_100062504();

    sub_1000282B4(&qword_1000AFB38, &qword_100079018);
    v56 = a1;
    ScaledMetric.wrappedValue.getter();
    static Font.Weight.semibold.getter();
    v18 = enum case for Font.Design.default(_:);
    v19 = type metadata accessor for Font.Design();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v16, v18, v19);
    v52 = *(v20 + 56);
    v52(v16, 0, 1, v19);
    static Font.system(size:weight:design:)();
    sub_10002B444(v16, &qword_1000AF8A0, &qword_1000788D0);
    v21 = Text.font(_:)();
    v23 = v22;
    v61 = v24;
    v26 = v25;

    v27 = v17;
    v28 = sub_100062564();
    v30 = v29;

    if (v30)
    {
      v31 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v31 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v66 = v28;
        v67 = v30;
        v32 = v55;
        sub_100054D88(v56, v55);
        v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
        v34 = swift_allocObject();
        sub_10005ADAC(v32, v34 + v33, type metadata accessor for AuthorizationHeaderView);
        sub_10004FA24();
        v56 = v26;
        v35 = v57;
        Button<>.init<A>(_:action:)();
        v37 = v59;
        v36 = v60;
        v38 = *(v59 + 104);
        v55 = v21;
        v39 = v58;
        v38(v58, enum case for Font.TextStyle.body(_:), v60);
        v52(v16, 1, 1, v19);
        v40 = static Font.system(_:design:weight:)();
        sub_10002B444(v16, &qword_1000AF8A0, &qword_1000788D0);
        v41 = v39;
        v21 = v55;
        (*(v37 + 8))(v41, v36);
        KeyPath = swift_getKeyPath();
        v43 = v63;
        v44 = v64;
        v45 = &v35[*(v63 + 36)];
        *v45 = KeyPath;
        v45[1] = v40;
        v46 = v35;
        v26 = v56;
        sub_10005AE14(v46, v44, &qword_1000AFDA0, &qword_1000793F8);
        v47 = 0;
LABEL_9:
        (*(v62 + 56))(v44, v47, 1, v43);
        v48 = v65;
        sub_100034F7C(v44, v65, &qword_1000AFDA8, &qword_100079400);
        *a2 = v21;
        *(a2 + 8) = v23;
        v49 = v61 & 1;
        *(a2 + 16) = v61 & 1;
        *(a2 + 24) = v26;
        *(a2 + 32) = 0;
        *(a2 + 40) = 1;
        v50 = sub_1000282B4(&qword_1000AFDB0, &qword_100079408);
        sub_100034F7C(v48, a2 + *(v50 + 64), &qword_1000AFDA8, &qword_100079400);
        sub_10005A644(v21, v23, v49);

        sub_10002B444(v44, &qword_1000AFDA8, &qword_100079400);
        sub_10002B444(v48, &qword_1000AFDA8, &qword_100079400);
        sub_10005A654(v21, v23, v49);
      }
    }

    v47 = 1;
    v43 = v63;
    v44 = v64;
    goto LABEL_9;
  }

  type metadata accessor for AuthorizationViewModel(0);
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100058CFC@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1000282B4(&qword_1000AFD38, &qword_100079330);
  return sub_10005788C(v2, a2 + *(v4 + 44));
}

uint64_t sub_100058DA4@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v36 = a3;
  v39 = a5;
  v6 = sub_1000282B4(&qword_1000AF6D8, &qword_100078558);
  __chkstk_darwin(v6 - 8);
  v8 = &v28[-v7];
  v9 = type metadata accessor for PasscodeEmbeddedView(0);
  __chkstk_darwin(v9 - 8);
  v38 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = sub_1000282B4(&qword_1000AFE38, &qword_100079570);
  __chkstk_darwin(v37);
  v12 = &v28[-v11];
  if (a1)
  {
    v13 = a1;
    v33 = sub_1000625F0();
    v14 = sub_1000623A4();
    v34 = LACustomPasswordTypeAlphanumeric;
    v32 = v14 == LACustomPasswordTypeAlphanumeric;
    v15 = sub_1000605E4();
    v30 = v16;
    v31 = v15;
    v29 = sub_100069D44();
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    v17 = EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    v18 = v40;
    v19 = v41;
    v20 = EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    v22 = v38;
    sub_100047A2C(v33, v32, v31, v30, v29, v18, *(&v18 + 1), v19, v38, v8, v36, v21);
    sub_1000623A4();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_10005ADAC(v22, v12, type metadata accessor for PasscodeEmbeddedView);
    v23 = &v12[*(v37 + 36)];
    v24 = v41;
    *v23 = v40;
    v23[1] = v24;
    v23[2] = v42;
    LOBYTE(v20) = static Edge.Set.horizontal.getter();
    v25 = v39;
    sub_10005AE14(v12, v39, &qword_1000AFE38, &qword_100079570);
    result = sub_1000282B4(&qword_1000AFE40, &unk_1000795C8);
    v27 = v25 + *(result + 36);
    *v27 = v20;
    *(v27 + 8) = 0u;
    *(v27 + 24) = 0u;
    *(v27 + 40) = 1;
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100059188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005F69C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100059204(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100034F7C(a1, &v6 - v3, &qword_1000B00F0, &qword_100078560);
  return sub_10005FBBC(v4);
}

uint64_t sub_1000592B0@<X0>(uint64_t a1@<X8>)
{
  sub_100058DA4(*v1, *(v1 + 16), *(v1 + 24), a1);
  v3 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = sub_1000282B4(&qword_1000AFE30, &unk_100079560);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

double sub_100059338@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1000282B4(&qword_1000AF8A0, &qword_1000788D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_6;
  }

  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    (*(v10 + 104))(v12, enum case for Font.TextStyle.body(_:), v9);
    v14 = type metadata accessor for Font.Design();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);

    static Font.system(_:design:weight:)();
    sub_10002B444(v8, &qword_1000AF8A0, &qword_1000788D0);
    (*(v10 + 8))(v12, v9);
    v15 = Text.font(_:)();
    v43 = v16;
    v44 = v15;
    v18 = v17;
    v20 = v19;

    KeyPath = swift_getKeyPath();
    v22 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = v18 & 1;
    LOBYTE(v65) = v18 & 1;
    LOBYTE(v45) = 0;
    v32 = static Edge.Set.horizontal.getter();
    LOBYTE(v56) = 1;
    v33 = swift_getKeyPath();
    LOBYTE(v65) = 0;
    v34 = static Color.secondary.getter();
    v35 = swift_getKeyPath();
    *&v56 = v44;
    *(&v56 + 1) = v43;
    LOBYTE(v57) = v31;
    *(&v57 + 1) = v20;
    *&v58 = KeyPath;
    BYTE8(v58) = 1;
    LOBYTE(v59) = v22;
    *(&v59 + 1) = v24;
    *&v60 = v26;
    *(&v60 + 1) = v28;
    *&v61 = v30;
    BYTE8(v61) = 0;
    LOBYTE(v62[0]) = v32;
    *(v62 + 8) = 0u;
    *(&v62[1] + 8) = 0u;
    BYTE8(v62[2]) = 1;
    *&v63 = v33;
    *(&v63 + 1) = 3;
    LOBYTE(v64[0]) = 0;
    *(&v64[0] + 1) = v35;
    *&v64[1] = v34;
    sub_10005B1C8(&v56);
  }

  else
  {
LABEL_6:
    sub_10005AE7C(&v56);
  }

  v53 = v62[2];
  v54 = v63;
  v55[0] = v64[0];
  *(v55 + 9) = *(v64 + 9);
  v49 = v60;
  v50 = v61;
  v51 = v62[0];
  v52 = v62[1];
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v48 = v59;
  sub_1000282B4(&qword_1000AFE48, &qword_1000795D8);
  sub_10005AE88();
  _ConditionalContent<>.init(storage:)();
  v36 = v74;
  a3[8] = v73;
  a3[9] = v36;
  a3[10] = v75[0];
  *(a3 + 169) = *(v75 + 9);
  v37 = v70;
  a3[4] = v69;
  a3[5] = v37;
  v38 = v72;
  a3[6] = v71;
  a3[7] = v38;
  v39 = v66;
  *a3 = v65;
  a3[1] = v39;
  result = *&v67;
  v41 = v68;
  a3[2] = v67;
  a3[3] = v41;
  return result;
}

double sub_100059728@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = sub_1000282B4(&qword_1000AFC30, &qword_100079238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_1000282B4(&qword_1000AFC38, &qword_100079240) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

unint64_t sub_1000597F8()
{
  result = qword_1000AFCC0;
  if (!qword_1000AFCC0)
  {
    sub_10002CC44(&qword_1000AFC78, &qword_100079280);
    sub_10002CC44(&qword_1000AFC68, &qword_100079270);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_100059908();
    sub_10005B42C(&qword_1000AFCD8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCC0);
  }

  return result;
}

unint64_t sub_100059908()
{
  result = qword_1000AFCC8;
  if (!qword_1000AFCC8)
  {
    sub_10002CC44(&qword_1000AFC68, &qword_100079270);
    sub_100034E8C(&qword_1000AFCD0, &qword_1000AFC80, &qword_100079288, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCC8);
  }

  return result;
}

unint64_t sub_1000599C0()
{
  result = qword_1000AFCE8;
  if (!qword_1000AFCE8)
  {
    sub_10002CC44(&qword_1000AFCA0, &qword_1000792A8);
    sub_100059A4C();
    sub_100059AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCE8);
  }

  return result;
}

unint64_t sub_100059A4C()
{
  result = qword_1000B1500[0];
  if (!qword_1000B1500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1500);
  }

  return result;
}

unint64_t sub_100059AA0()
{
  result = qword_1000AFCF0;
  if (!qword_1000AFCF0)
  {
    sub_10002CC44(&qword_1000AFC88, &qword_100079290);
    sub_10002CC44(&qword_1000AFC80, &qword_100079288);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_100034E8C(&qword_1000AFCD0, &qword_1000AFC80, &qword_100079288, &protocol conformance descriptor for Button<A>);
    sub_10005B42C(&qword_1000AFCD8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCF0);
  }

  return result;
}

unint64_t sub_100059BEC()
{
  result = qword_1000AFCF8;
  if (!qword_1000AFCF8)
  {
    sub_10002CC44(&qword_1000AFC60, &qword_100079268);
    sub_1000597F8();
    sub_100034E8C(&qword_1000AFCE0, &qword_1000AFCB8, &qword_1000792C0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCF8);
  }

  return result;
}

void sub_100059CA4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    canShowWhile = LACUIDTOViewController._canShowWhileLocked()();
    sub_100066068(canShowWhile);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_100059D58()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    sub_100065FDC();
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100059E04()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

void sub_100059E74(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = sub_100062570();
    v7 = v6;

    *a1 = v5;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    *(a1 + 24) = &_swiftEmptyArrayStorage;
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100059F2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100059F88()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    sub_10005EB78(0);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10005A024()
{

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10005A074(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(v4 + 16) == a1 && *(v4 + 24) == a2;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = *(v4 + 32);
    if (v10)
    {
      v15 = *(v4 + 48);
      v17 = *(v4 + 64);
      v11 = swift_allocObject();
      v12 = *(v4 + 48);
      *(v11 + 16) = *(v4 + 32);
      *(v11 + 32) = v12;
      *(v11 + 48) = *(v4 + 64);
      *(v11 + 56) = a3;
      *(v11 + 64) = a4;
      v13 = v10;
      sub_10005A23C(&v15, v14);
      sub_100034F7C(&v17, v14, &qword_1000AFD20, &qword_100079320);

      sub_100065CC0(a1, a2, sub_10005A454, v11);
    }

    else
    {
      type metadata accessor for AuthorizationViewModel(0);
      sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
      EnvironmentObject.error()();
      __break(1u);
    }
  }

  else
  {
    v15 = *(v4 + 48);
    v16 = *(v4 + 64);
    v14[0] = 0;
    v14[1] = 0;
    sub_1000282B4(&qword_1000AFD18, &qword_100079318);
    State.wrappedValue.setter();
    a3(0);
  }
}

uint64_t sub_10005A274()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005A2BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = v4;
    if (sub_1000625F0() <= 0)
    {
    }

    else
    {
      v7 = String.count.getter();
      v8 = sub_1000625F0();

      if (v7 != v8)
      {
        v9 = 0;
        return a3(v9);
      }
    }

    sub_1000282B4(&qword_1000AFD18, &qword_100079318);
    State.wrappedValue.setter();
    v9 = 1;
    return a3(v9);
  }

  type metadata accessor for AuthorizationViewModel(0);
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10005A404()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005A454(char a1)
{
  v2 = *(v1 + 56);
  if ((a1 & 1) == 0)
  {
    sub_1000282B4(&qword_1000AFD18, &qword_100079318);
    State.wrappedValue.setter();
    v7 = 0;
    return v2(v7);
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = sub_100045B10();
    sub_100065254(0, v5, v6);

    v7 = 1;
    return v2(v7);
  }

  type metadata accessor for AuthorizationViewModel(0);
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

double sub_10005A56C(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10005A58C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005A5E0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10005A644(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10005A654(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10005A664()
{
  v1 = type metadata accessor for AuthorizationHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 16))
  {
  }

  v5 = *(v1 + 24);
  v6 = sub_1000282B4(&qword_1000AFB38, &qword_100079018);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005A76C()
{
  v1 = type metadata accessor for AuthorizationHeaderView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 16);
  if (v4)
  {
    return v4();
  }

  return result;
}

void sub_10005A7D8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = LACErrorCodeUserCancel;
    v7 = v1;
    v4 = [v2 errorWithCode:v3];
    v5 = sub_100045B10();
    sub_100065254(v4, v5, v6);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel(0);
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel, &unk_100079C80);
    EnvironmentObject.error()();
    __break(1u);
  }
}

unint64_t sub_10005A8EC()
{
  result = qword_1000AFDC8;
  if (!qword_1000AFDC8)
  {
    sub_10002CC44(&qword_1000AFDC0, &qword_100079410);
    sub_10005A9A4();
    sub_100034E8C(&qword_1000AFDE0, &qword_1000AFDE8, &qword_100079420, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFDC8);
  }

  return result;
}

unint64_t sub_10005A9A4()
{
  result = qword_1000AFDD0;
  if (!qword_1000AFDD0)
  {
    sub_10002CC44(&qword_1000AFDD8, &qword_100079418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFDD0);
  }

  return result;
}

__n128 sub_10005AA28(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005AA34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005AA7C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10005AACC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10005AB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10005AB8C()
{
  result = qword_1000AFDF0;
  if (!qword_1000AFDF0)
  {
    sub_10002CC44(&qword_1000AFC38, &qword_100079240);
    sub_100034E8C(&qword_1000AFDF8, &qword_1000AFC30, &qword_100079238, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFDF0);
  }

  return result;
}

uint64_t sub_10005AD10()
{
  sub_10002CC44(&qword_1000AFDC0, &qword_100079410);
  sub_10005A8EC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10005ADAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005AE14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000282B4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10005AE88()
{
  result = qword_1000AFE50;
  if (!qword_1000AFE50)
  {
    sub_10002CC44(&qword_1000AFE48, &qword_1000795D8);
    sub_10005AF40();
    sub_100034E8C(&qword_1000AFEB8, &qword_1000AFEC0, &qword_100079610, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFE50);
  }

  return result;
}

unint64_t sub_10005AF40()
{
  result = qword_1000AFE58;
  if (!qword_1000AFE58)
  {
    sub_10002CC44(&qword_1000AFE60, &qword_1000795E0);
    sub_10005AFF8();
    sub_100034E8C(&qword_1000AFEA8, &qword_1000AFEB0, &qword_100079608, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFE58);
  }

  return result;
}

unint64_t sub_10005AFF8()
{
  result = qword_1000AFE68;
  if (!qword_1000AFE68)
  {
    sub_10002CC44(&qword_1000AFE70, &qword_1000795E8);
    sub_10005B084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFE68);
  }

  return result;
}

unint64_t sub_10005B084()
{
  result = qword_1000AFE78;
  if (!qword_1000AFE78)
  {
    sub_10002CC44(&qword_1000AFE80, &qword_1000795F0);
    sub_10005B110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFE78);
  }

  return result;
}

unint64_t sub_10005B110()
{
  result = qword_1000AFE88;
  if (!qword_1000AFE88)
  {
    sub_10002CC44(&qword_1000AFE90, &qword_1000795F8);
    sub_100034E8C(&qword_1000AFE98, &qword_1000AFEA0, &qword_100079600, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFE88);
  }

  return result;
}

unint64_t sub_10005B1D4()
{
  result = qword_1000AFEC8;
  if (!qword_1000AFEC8)
  {
    sub_10002CC44(&qword_1000AFE30, &unk_100079560);
    sub_10005B260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFEC8);
  }

  return result;
}

unint64_t sub_10005B260()
{
  result = qword_1000AFED0;
  if (!qword_1000AFED0)
  {
    sub_10002CC44(&qword_1000AFED8, &qword_100079648);
    sub_10005B2E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFED0);
  }

  return result;
}

unint64_t sub_10005B2E4()
{
  result = qword_1000AFEE0;
  if (!qword_1000AFEE0)
  {
    sub_10002CC44(&qword_1000AFE40, &unk_1000795C8);
    sub_10005B370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFEE0);
  }

  return result;
}

unint64_t sub_10005B370()
{
  result = qword_1000AFEE8;
  if (!qword_1000AFEE8)
  {
    sub_10002CC44(&qword_1000AFE38, &qword_100079570);
    sub_10005B42C(&qword_1000AF6F0, type metadata accessor for PasscodeEmbeddedView, &unk_100078618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFEE8);
  }

  return result;
}

uint64_t sub_10005B42C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005B478()
{
  result = qword_1000AFEF0;
  if (!qword_1000AFEF0)
  {
    sub_10002CC44(&qword_1000AFEF8, &unk_100079650);
    sub_10005AE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFEF0);
  }

  return result;
}

void sub_10005B53C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  if ([objc_opt_self() isSharedIPad])
  {
    v1 = [objc_allocWithZone(LACLocalBackoffCounter) init];
    [v0 setBackoffCounter:v1];
  }
}

void sub_10005B66C(char a1)
{
  v2 = v1;
  v76.receiver = v2;
  v76.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v76, "viewDidAppear:", a1 & 1);
  v4 = [v2 cachedExternalizedContext];
  v5 = [v4 externalizedContext];

  if (!v5)
  {
    __break(1u);
    goto LABEL_43;
  }

  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v7;
  v68 = v6;

  v8 = [v2 internalInfo];
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v78 = 0x644972657355;
  *(&v78 + 1) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v9 + 16) && (v10 = sub_10002AB74(&aBlock), (v11 & 1) != 0))
  {
    sub_10002B308(*(v9 + 56) + 32 * v10, &v78);
    sub_10002ABB8(&aBlock);

    sub_100028350();
    if (swift_dynamicCast())
    {
      v12 = v77;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    sub_10002ABB8(&aBlock);
    v12 = 0;
  }

  [v2 policy];
  nullsub_18();
  v14 = v13;
  v15 = [v2 options];
  if (v15)
  {
    v16 = v15;
    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = sub_10002AEB4(&_swiftEmptyArrayStorage);
  }

  v18 = [v2 backoffCounter];
  if (!v18)
  {
    v18 = [objc_allocWithZone(LACLocalBackoffCounter) init];
  }

  v19 = [v2 internalInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = objc_allocWithZone(LACInternalInfoParser);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = [v20 initWithInternalInfo:isa];

  v23 = [v22 callerAuditToken];
  v24 = type metadata accessor for PasscodeAlertViewController();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v26 = &v25[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_externalizedContext];
  *v26 = v68;
  v26[1] = v67;
  *&v25[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_userId] = v12;
  *&v25[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_policy] = v14;
  *&v25[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_options] = v17;
  *&v25[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_backoffCounter] = v18;
  *&v25[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_auditToken] = v23;
  v75.receiver = v25;
  v75.super_class = v24;
  v27 = objc_msgSendSuper2(&v75, "initWithNibName:bundle:", 0, 0);
  swift_getObjectType();
  v28 = [v2 options];
  if (!v28)
  {
    v78 = 0u;
    v79 = 0u;
    v31 = &selRef__FBSScene;
    goto LABEL_21;
  }

  v29 = v28;
  v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = LACPolicyOptionPasscodeTitle;
  AnyHashable.init<A>(_:)();
  v31 = &selRef__FBSScene;
  if (!*(v30 + 16) || (v32 = sub_10002AB74(&aBlock), (v33 & 1) == 0))
  {

    sub_10002ABB8(&aBlock);
    v78 = 0u;
    v79 = 0u;
    goto LABEL_21;
  }

  sub_10002B308(*(v30 + 56) + 32 * v32, &v78);
  sub_10002ABB8(&aBlock);

  if (!*(&v79 + 1))
  {
LABEL_21:
    sub_10004C7CC(&v78);
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_39;
  }

LABEL_22:
  if (([objc_opt_self() isApplePayPolicy:{objc_msgSend(v2, v31[506])}] & 1) == 0)
  {
    v38 = [v2 options];
    if (v38)
    {
      v39 = v38;
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = LACPolicyOptionCheckApplePayEnabled;
      AnyHashable.init<A>(_:)();
      if (*(v40 + 16))
      {
        v41 = sub_10002AB74(&aBlock);
        if (v42)
        {
          sub_10002B308(*(v40 + 56) + 32 * v41, &v78);
          sub_10002ABB8(&aBlock);

          if (*(&v79 + 1))
          {
            if (swift_dynamicCast() & 1) != 0 && (aBlock)
            {
              goto LABEL_23;
            }

            goto LABEL_34;
          }

LABEL_33:
          sub_10004C7CC(&v78);
LABEL_34:
          v43 = [v2 v31[506]];
          if (v43 == LACPolicySoftwareUpdate)
          {
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v35 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
            v66 = 0xE000000000000000;
            v37 = 0x8000000100089710;
            v36 = 0xD000000000000015;
            goto LABEL_36;
          }

          v48 = swift_getObjCClassFromMetadata();
          v49 = [objc_opt_self() bundleForClass:v48];
          v50 = objc_opt_self();
          v51 = String._bridgeToObjectiveC()();
          v52 = [v50 modelSpecificLocalizedStringKeyForKey:v51];

          if (v52)
          {
            v53 = String._bridgeToObjectiveC()();
            v54 = [v49 localizedStringForKey:v52 value:0 table:v53];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            goto LABEL_39;
          }

LABEL_43:
          __break(1u);
          return;
        }
      }

      sub_10002ABB8(&aBlock);
    }

    v78 = 0u;
    v79 = 0u;
    goto LABEL_33;
  }

LABEL_23:
  v34 = swift_getObjCClassFromMetadata();
  v35 = [objc_opt_self() bundleForClass:v34];
  v66 = 0xE000000000000000;
  v36 = 5849424;
  v37 = 0xE300000000000000;
LABEL_36:
  v45.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v45.value._object = 0xE800000000000000;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v47 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v36, v45, v35, v46, *(&v66 - 1));

LABEL_39:
  v55 = String._bridgeToObjectiveC()();

  [v27 setTitle:v55];

  v56 = [v2 callerName];
  if (!v56)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = String._bridgeToObjectiveC()();
  }

  [v27 setMessage:v56];

  [v27 setPreferredStyle:1];
  *&v27[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_delegate + 8] = &off_100098C50;
  swift_unknownObjectWeakAssign();
  v57 = swift_getObjCClassFromMetadata();
  v58 = [objc_opt_self() bundleForClass:v57];
  v80._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0x4C45434E4143;
  v59._object = 0xE600000000000000;
  v60.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v60.value._object = 0xE800000000000000;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v59, v60, v58, v61, v80);

  v62 = String._bridgeToObjectiveC()();

  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = sub_10005CF84;
  v74 = v63;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = sub_10002B620;
  v72 = &unk_100098B88;
  v64 = _Block_copy(&aBlock);

  v73 = variable initialization expression of SecureUIManager.isRecording;
  v74 = 0;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = sub_10004DF88;
  v72 = &unk_100098BB0;
  v65 = _Block_copy(&aBlock);
  [v27 _addActionWithTitle:v62 style:1 handler:v64 shouldDismissHandler:v65];
  _Block_release(v65);
  _Block_release(v64);

  [v2 presentViewController:v27 animated:1 completion:0];
}

void sub_10005C12C(void (*a1)(uint64_t a1), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = [v2 presentedViewController];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    v16 = sub_10005D03C;
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_10002B620;
    v15 = &unk_100098C28;
    v9 = _Block_copy(&v12);
    v10 = v2;
    sub_1000299DC(a1, a2);

    [v7 dismissViewControllerAnimated:0 completion:v9];
    _Block_release(v9);
  }

  else
  {
    if (a1)
    {
      v16 = a1;
      v17 = a2;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v14 = sub_10002B620;
      v15 = &unk_100098BD8;
      v11 = _Block_copy(&v12);
    }

    else
    {
      v11 = 0;
    }

    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "dismissChildWithCompletionHandler:", v11);
    _Block_release(v11);
  }
}

id sub_10005C3A4(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, "initWithRequestID:endpoint:", a1, a2);

  return v5;
}

id sub_10005C464(void *a1, void *a2, uint64_t a3)
{
  v9.receiver = v3;
  v9.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v9, "initWithRequestID:endpoint:remoteAlertPresentationMode:", a1, a2, a3);

  return v7;
}

id sub_10005C534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithInternalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:", isa, a2, a3, a4, a5 & 1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

id sub_10005C724(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_10005C86C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10005C950(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10002A658(a2, a2[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithInternalInfo:parent:", isa, v6);

  swift_unknownObjectRelease();
  sub_10002A69C(a2);
  return v7;
}

void sub_10005CB28()
{
  v1 = [v0 mechanism];
  if (v1)
  {
    [v1 uiEvent:8 options:0];
    swift_unknownObjectRelease();
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v0 uiSuccessWithResult:isa];
}

void sub_10005CBE4(uint64_t a1)
{
  v2 = _convertErrorToNSError(_:)();
  [v1 uiFailureWithError:v2];
}

void sub_10005CCA4()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewDidLoad");
  type metadata accessor for PasscodeAlertContentViewController(0);
  v2 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_externalizedContext];
  v3 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_externalizedContext + 8];
  v4 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_userId];
  v5 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_policy];
  v6 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_options];
  v7 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_backoffCounter];
  v8 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_auditToken];
  sub_10002FD64(*&v1[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_externalizedContext], *&v1[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_externalizedContext + 8]);
  v9 = v4;

  swift_unknownObjectRetain();
  v10 = sub_10002E158(v2, v3, v4, v5, v6, v7, v8);
  v11 = &v1[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_delegate];
  swift_unknownObjectWeakLoadStrong();
  v12 = *(v11 + 1);
  v13 = &v10[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_delegate];
  swift_beginAccess();
  *(v13 + 1) = v12;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  [v1 setContentViewController:v10];
}

uint64_t sub_10005CF4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10005CF84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong uiCancel];
  }
}

uint64_t sub_10005CFDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005CFF4()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10005D03C(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  if (v2)
  {
    v4 = v1[4];
    v10 = v2;
    v11 = v4;
    v7.receiver = _NSConcreteStackBlock;
    v7.super_class = 1107296256;
    v8 = sub_10002B620;
    v9 = &unk_100098CA0;
    v5 = _Block_copy(&v7);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ComplementaryPasscodeViewController();
  v7.receiver = v3;
  v7.super_class = v6;
  objc_msgSendSuper2(&v7, "dismissChildWithCompletionHandler:", v5);
  _Block_release(v5);
}

uint64_t sub_10005D12C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D188()
{
  v0 = type metadata accessor for Logger();
  sub_10005D914(v0, qword_1000B1640);
  sub_10005D8DC(v0, qword_1000B1640);
  v1 = sub_10004FFD4();
  return sub_10004FFF4(v1);
}

id sub_10005D2D0()
{
  *&v0[OBJC_IVAR____TtC10CoreAuthUI13SceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10005D35C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10005D3A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 usesFrontBoardServicesForRemoteUI];

  if (v7)
  {
    if (qword_1000B1638 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10005D8DC(v8, qword_1000B1640);
    v9 = a1;
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v13 = 138412546;
      *(v13 + 4) = v9;
      *v14 = v9;
      *(v13 + 12) = 2080;
      v16 = v9;
      v17 = [v10 persistentIdentifier];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_10002FDB8(v18, v20, &v32);

      *(v13 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "scene: %@ willConnectTo session: %s", v13, 0x16u);
      sub_10002C8A0(v14);

      sub_10002A69C(v15);
    }

    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      v24 = objc_allocWithZone(UIWindow);
      v31 = v9;
      v25 = [v24 initWithWindowScene:v23];
      v26 = OBJC_IVAR____TtC10CoreAuthUI13SceneDelegate_window;
      v27 = *(v3 + OBJC_IVAR____TtC10CoreAuthUI13SceneDelegate_window);
      *(v3 + OBJC_IVAR____TtC10CoreAuthUI13SceneDelegate_window) = v25;
      v28 = v25;

      if (v28)
      {
        v29 = [objc_allocWithZone(TransitionViewController) initWithRequestID:0 endpoint:0];
        [v28 setRootViewController:v29];
      }

      v30 = *(v3 + v26);
      [v30 makeKeyAndVisible];
    }
  }
}

void sub_10005D6B4(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 usesFrontBoardServicesForRemoteUI];

  if (v3)
  {
    if (qword_1000B1638 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10005D8DC(v4, qword_1000B1640);
    v5 = a1;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315138;
      v9 = [v5 session];
      v10 = [v9 persistentIdentifier];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10002FDB8(v11, v13, &v16);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Did disconnect from scene: %s", v7, 0xCu);
      sub_10002A69C(v8);
    }

    else
    {
    }
  }
}

uint64_t sub_10005D8DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10005D914(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10005DA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005DE64();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10005DADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005DE64();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10005DB40(uint64_t a1)
{
  sub_10005DE64();
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *sub_10005DB68(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [objc_allocWithZone(LAUIAuthenticationView) initWithFrame:4 mechanisms:a1 context:{0.0, 0.0, 50.0, 50.0}];
  v8 = OBJC_IVAR____TtC10CoreAuthUI24AuthenticationParentView_authenticationView;
  *&v3[OBJC_IVAR____TtC10CoreAuthUI24AuthenticationParentView_authenticationView] = v7;
  [v7 setStyle:1];
  [*&v3[v8] setDelegate:a2];
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC10CoreAuthUI24AuthenticationParentView_authenticationView];
  v11 = v9;
  [v11 addSubview:v10];

  swift_unknownObjectRelease();
  return v11;
}

id sub_10005DD28(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

unint64_t sub_10005DE00()
{
  result = qword_1000B0028;
  if (!qword_1000B0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0028);
  }

  return result;
}

unint64_t sub_10005DE64()
{
  result = qword_1000B0058;
  if (!qword_1000B0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0058);
  }

  return result;
}

id sub_10005DFAC(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_10005E544(a1);

  return v4;
}

id sub_10005DFEC(void *a1)
{
  v2 = sub_10005E544(a1);

  return v2;
}

id sub_10005E0E4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t sub_10005E168(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_10005E1C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_10005E240(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

Class sub_10005E308(uint64_t a1, uint64_t a2, void *a3)
{

  sub_1000282B4(&qword_1000AEBE0, &qword_100077C98);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id sub_10005E3A4(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_10005E664(a1);

  return v4;
}

id sub_10005E3E4(void *a1)
{
  v2 = sub_10005E664(a1);

  return v2;
}

id sub_10005E48C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10005E4E0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{

  v7 = *(a1 + *a5);
}

id sub_10005E544(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC10CoreAuthUI28SecureUIElementFaceIDRegular_name];
  *v2 = 0xD00000000000001ALL;
  *(v2 + 1) = 0x800000010008B210;
  v3 = [objc_allocWithZone(LAUISecureFaceIDDescriptionGlyph) initWithContainerView:a1 type:0];
  sub_1000282B4(&qword_1000AEE00, &qword_100077990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100079860;
  *(v4 + 32) = v3;
  *&v1[OBJC_IVAR____TtC10CoreAuthUI28SecureUIElementFaceIDRegular_secureViews] = v4;
  v5 = v3;
  v6 = [v5 viewToCapture];
  *&v1[OBJC_IVAR____TtC10CoreAuthUI28SecureUIElementFaceIDRegular_viewToCapture] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SecureUIElementFaceIDRegular();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

id sub_10005E664(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC10CoreAuthUI32SecureUIElementFaceIdLightweight_name];
  *v2 = 0xD00000000000001ELL;
  *(v2 + 1) = 0x800000010008B230;
  v3 = [objc_allocWithZone(LAUISecureFaceIDDescriptionLightweight) initWithContainerView:a1];
  sub_1000282B4(&qword_1000AEE00, &qword_100077990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100079860;
  *(v4 + 32) = v3;
  *&v1[OBJC_IVAR____TtC10CoreAuthUI32SecureUIElementFaceIdLightweight_secureViews] = v4;
  v5 = v3;
  v6 = [v5 viewToCapture];
  *&v1[OBJC_IVAR____TtC10CoreAuthUI32SecureUIElementFaceIdLightweight_viewToCapture] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SecureUIElementFaceIdLightweight();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

uint64_t (*sub_10005E7D4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_10005E894(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10005E9CC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showAuthorizationView[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t (*sub_10005EB8C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_10005EC4C(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10005ED84(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showBiometryIntentButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t (*sub_10005EF74(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10005F018;
}

uint64_t sub_10005F038(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10005F170(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__shouldShowCustomPasswordView[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10005F2E0;
}

uint64_t (*sub_10005F334(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_10005F3F4(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10005F52C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__shouldShowDevicePasscodeView[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t (*sub_10005F6C4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_10005F784(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10005F8BC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__passcodeFocused[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t sub_10005FA2C(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100034F7C(a1, &v9 - v6, &qword_1000B00F0, &qword_100078560);
  sub_100034F7C(v7, v5, &qword_1000B00F0, &qword_100078560);
  Published.init(initialValue:)();
  sub_10002B444(a1, &qword_1000B00F0, &qword_100078560);
  return sub_10002B444(v7, &qword_1000B00F0, &qword_100078560);
}

uint64_t sub_10005FB44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10005FBBC(uint64_t a1)
{
  v3 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100034F7C(a1, v5, &qword_1000B00F0, &qword_100078560);
  v6 = v1;
  static Published.subscript.setter();
  return sub_10002B444(a1, &qword_1000B00F0, &qword_100078560);
}

uint64_t (*sub_10005FCA8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_10005FD68(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B0100, &qword_100079AB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00F8, &qword_100079AA8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10005FEA0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B0100, &qword_100079AB0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__blockedUntilDate;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00F8, &qword_100079AA8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t sub_100060060()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_1000600D4@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100060154(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000601D4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t (*sub_10006024C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_10006030C(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B0118, &qword_100079B10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B0110, &qword_100079B08);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100060444(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B0118, &qword_100079B10);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__promptText[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B0110, &qword_100079B08);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t sub_1000605E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100060658@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000606D8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100060758(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t (*sub_1000607D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_100060890(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B0128, &qword_100079B68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B0120, &qword_100079B60);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1000609C8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B0128, &qword_100079B68);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__passwordFieldPlaceholder[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B0120, &qword_100079B60);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t sub_100060B68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100060BDC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_100060C5C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100060CCC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*sub_100060D38(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_100060DF8(uint64_t a1)
{
  v2 = sub_1000282B4(&unk_1000B0138, &qword_100079BC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B0130, &qword_100079BB8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100060F30(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&unk_1000B0138, &qword_100079BC0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__wrongBioAttempts[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B0130, &qword_100079BB8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t (*sub_1000610F0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_1000611B0(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1000612E8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showBiometryRetryButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t sub_10006146C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1000614EC@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_10006157C(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return static Published.subscript.setter();
}

uint64_t sub_1000615FC(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t (*sub_100061664(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

void sub_100061708(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_10006178C(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_1000282B4(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100061804(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10006193C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showFallbackButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

void sub_100061AAC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_100061C6C()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failures;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100061CB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failures;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100061D70()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_expectsDismissOnIpad;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100061DB4(char a1)
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_expectsDismissOnIpad;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100061EAC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100061F0C(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10003FF8C;
}

double sub_100061FA4()
{
  v1 = (v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___cornerRadius);
  if ((*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___cornerRadius + 8) & 1) == 0)
  {
    return *v1;
  }

  result = 0.0;
  if (*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad))
  {
    result = 8.0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_100061FE8(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___cornerRadius;
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t (*sub_100062000(uint64_t a1))()
{
  *(a1 + 8) = v1;
  *a1 = sub_100061FA4();
  return sub_100062048;
}

void *sub_100062048(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___cornerRadius;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

double sub_100062064()
{
  v1 = (v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___backgroundOpacity);
  if ((*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___backgroundOpacity + 8) & 1) == 0)
  {
    return *v1;
  }

  result = 0.8;
  if (*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad))
  {
    result = 0.000001;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_1000620B0(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___backgroundOpacity;
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t (*sub_1000620C8(uint64_t a1))()
{
  *(a1 + 8) = v1;
  *a1 = sub_100062064();
  return sub_100062110;
}

void *sub_100062110(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___backgroundOpacity;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

id sub_10006212C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
  [v1 canEvaluatePolicy:1 error:0];

  return [v1 biometryType];
}

uint64_t sub_100062188()
{
  v1 = (v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  if (!*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle + 8))
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
    [v3 canEvaluatePolicy:1 error:0];
    v4 = [v3 biometryType];
    if (v4 == 1)
    {
      v5 = sub_100027AB8();
    }

    else
    {
      if (v4 != 2)
      {
        v2 = 0;
        v7 = 0xE000000000000000;
        goto LABEL_9;
      }

      v5 = sub_100027AA4();
    }

    v2 = v5;
    v7 = v6;
LABEL_9:
    *v1 = v2;
    v1[1] = v7;

    goto LABEL_10;
  }

  v2 = *v1;
LABEL_10:

  return v2;
}

uint64_t sub_100062258(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*sub_100062274(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_100062188();
  a1[1] = v3;
  return sub_1000622BC;
}

uint64_t sub_1000622BC(uint64_t *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  *v2 = *a1;
  v2[1] = v1;
}

uint64_t sub_1000622DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000623A4()
{
  v1 = (v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___passwordType);
  if (*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___passwordType + 8) != 1)
  {
    return *v1;
  }

  v2 = [*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration) passcodeLength];
  if (v2 + 1 > 7)
  {
    v3 = &LACustomPasswordTypeAlphanumeric;
  }

  else
  {
    v3 = *(&off_100099220 + v2 + 1);
  }

  result = *v3;
  *v1 = *v3;
  v1[8] = 0;
  return result;
}

uint64_t sub_100062428(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___passwordType;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t (*sub_100062440(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1000623A4();
  return sub_100062488;
}

void *sub_100062488(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___passwordType;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_100062504()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration) title];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100062580(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id sub_100062608()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon;
  v2 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration);
    v5 = [v4 iconPath];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() imageForPath:v5];
    }

    else
    {
      v8 = [v4 bundleIdentifier];
      if (!v8)
      {
        v12 = v0;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "The icon path and bundle identifier are nil", v15, 2u);
        }

        v3 = [objc_opt_self() genericIcon];
        v0 = v12;
        goto LABEL_7;
      }

      v6 = v8;
      v7 = [objc_opt_self() imageForBundleIdentifier:v8];
    }

    v3 = v7;

LABEL_7:
    v9 = *(v0 + v1);
    *(v0 + v1) = v3;
    v10 = v3;
    sub_10005483C(v9);
  }

  sub_10005482C(v2);
  return v3;
}

void sub_1000627B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon);
  *(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon) = a1;
  sub_10005483C(v2);
}

void (*sub_1000627C8(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_100062608();
  return sub_100062810;
}

void sub_100062810(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon);
  *(v3 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_10005483C(v4);
  }

  else
  {

    sub_10005483C(v4);
  }
}

uint64_t sub_1000628C8()
{
  v0 = type metadata accessor for Calendar();
  v31 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DateComponents();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002B444(v7, &qword_1000B00F0, &qword_100078560);
    return 0;
  }

  (*(v9 + 32))(v14, v7, v8);
  static Calendar.current.getter();
  sub_1000282B4(&qword_1000B0148, &qword_100079C58);
  v15 = type metadata accessor for Calendar.Component();
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v27 = v0;
  v18 = (v17 + 32) & ~v17;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000776F0;
  (*(v16 + 104))(v19 + v18, enum case for Calendar.Component.minute(_:), v15);
  sub_1000682E4(v19);
  swift_setDeallocating();
  (*(v16 + 8))(v19 + v18, v15);
  swift_deallocClassInstance();
  Date.init()();
  v20 = v28;
  Calendar.dateComponents(_:from:to:)();

  v21 = *(v9 + 8);
  v21(v12, v8);
  (*(v31 + 8))(v2, v27);
  v22 = DateComponents.minute.getter();
  LOBYTE(v18) = v23;
  (*(v29 + 8))(v20, v30);
  if ((v18 & 1) != 0 || v22 < 0)
  {
    v21(v14, v8);
    return 0;
  }

  result = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    v25 = sub_100027BD8(result);
    v21(v14, v8);
    return v25;
  }

  return result;
}

uint64_t sub_100062D78()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {

    return sub_100027820();
  }

  else if (v1)
  {

    return sub_100027758();
  }

  else
  {

    return sub_1000278E8();
  }
}

void sub_100062E20(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v77 = a8;
  v76 = a7;
  v94 = a6;
  v92 = a1;
  v93 = a5;
  v89 = a4;
  v90 = a2;
  v91 = a3;
  v95 = a10;
  v96 = a11;
  v12 = sub_1000282B4(&qword_1000B0130, &qword_100079BB8);
  v87 = *(v12 - 8);
  v88 = v12;
  __chkstk_darwin(v12);
  v86 = &v76 - v13;
  v85 = sub_1000282B4(&qword_1000B0110, &qword_100079B08);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v76 - v14;
  v82 = sub_1000282B4(&qword_1000B00F8, &qword_100079AA8);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v16 = &v76 - v15;
  v80 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v17 = __chkstk_darwin(v80);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v76 - v20;
  v22 = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v76 - v24;
  v78 = v11;
  v26 = objc_allocWithZone(v11);
  v27 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showAuthorizationView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28 = *(v23 + 32);
  v28(&v26[v27], v25, v22);
  v29 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showBiometryIntentButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v26[v29], v25, v22);
  v30 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__shouldShowCustomPasswordView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v26[v30], v25, v22);
  v31 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__shouldShowDevicePasscodeView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v26[v31], v25, v22);
  v32 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__passcodeFocused;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v26[v32], v25, v22);
  v79 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__blockedUntilDate;
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
  sub_100034F7C(v21, v19, &qword_1000B00F0, &qword_100078560);
  Published.init(initialValue:)();
  sub_10002B444(v21, &qword_1000B00F0, &qword_100078560);
  (*(v81 + 32))(&v26[v79], v16, v82);
  v34 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__promptText;
  aBlock = 0;
  v98 = 0;
  sub_1000282B4(&qword_1000B0108, &qword_100079AB8);
  v35 = v83;
  Published.init(initialValue:)();
  (*(v84 + 32))(&v26[v34], v35, v85);
  v36 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__wrongBioAttempts;
  aBlock = 0;
  v37 = v86;
  Published.init(initialValue:)();
  (*(v87 + 32))(&v26[v36], v37, v88);
  v38 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showBiometryRetryButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v26[v38], v25, v22);
  v39 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showFallbackButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v26[v39], v25, v22);
  v40 = v89;
  v41 = &v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion];
  *v41 = 0;
  v41[1] = 0;
  *&v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissAnimationDuration] = 0x3FC3333333333333;
  v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissed] = 0;
  v42 = sub_10004FFDC();
  sub_10004FFF4(*v42);
  v43 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad;
  sub_10002B4A4(0, &qword_1000AF5C0, UIDevice_ptr);
  v26[v43] = sub_100069D50();
  *&v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failures] = 0;
  v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_expectsDismissOnIpad] = 0;
  swift_unknownObjectWeakInit();
  v44 = &v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___cornerRadius];
  *v44 = 0;
  v44[8] = 1;
  v45 = &v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___backgroundOpacity];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___passwordType];
  *v47 = 0;
  v47[8] = 1;
  *&v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon] = 1;
  v48 = *v41;
  v49 = v41[1];
  v50 = v95;
  v51 = v96;
  *v41 = v95;
  v41[1] = v51;
  sub_1000299DC(v50, v51);
  sub_10002AA04(v48, v49);
  v53 = v90;
  v52 = v91;
  *&v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_auditToken] = v90;
  *&v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_backoffCounter] = v40;
  *&v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_cachedContext] = v52;
  v55 = v92;
  v54 = v93;
  *&v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration] = v92;
  v56 = &v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failureLimit];
  *v56 = v54;
  v56[8] = v94 & 1;
  v57 = v52;
  v58 = v53;
  swift_unknownObjectRetain();
  v59 = v55;
  v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod] = sub_100032EAC([v59 requirement]);
  v60 = [v59 contextData];
  v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  v64 = objc_allocWithZone(LAContext);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10002AFD0(v61, v63);
  v66 = [v64 initWithExternalizedContext:isa];

  if (v66)
  {
    *&v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context] = v66;
    *&v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_policy] = v76;
    v67 = v77;
    *&v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_userId] = v77;
    *&v26[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_options] = a9;
    v68 = v67;
    v69 = [v59 passwordFieldPlaceholder];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    swift_beginAccess();
    v104 = v70;
    v105 = v72;
    Published.init(initialValue:)();
    swift_endAccess();
    v103.receiver = v26;
    v103.super_class = v78;
    v73 = objc_msgSendSuper2(&v103, "init");
    sub_100064208();
    sub_100064500(0);
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v101 = sub_10006863C;
    v102 = v74;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_10002F4C0;
    v100 = &unk_100098D60;
    v75 = _Block_copy(&aBlock);

    [v40 currentBackoffErrorWithReply:v75];
    _Block_release(v75);
    sub_10002AA04(v95, v96);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_100063814(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v77 = a8;
  v76 = a7;
  v94 = a6;
  v92 = a1;
  v93 = a5;
  v89 = a4;
  v90 = a2;
  v91 = a3;
  v95 = a10;
  v96 = a11;
  ObjectType = swift_getObjectType();
  v13 = sub_1000282B4(&qword_1000B0130, &qword_100079BB8);
  v87 = *(v13 - 8);
  v88 = v13;
  __chkstk_darwin(v13);
  v86 = &v76 - v14;
  v85 = sub_1000282B4(&qword_1000B0110, &qword_100079B08);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v76 - v15;
  v82 = sub_1000282B4(&qword_1000B00F8, &qword_100079AA8);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v17 = &v76 - v16;
  v80 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v18 = __chkstk_darwin(v80);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v76 - v21;
  v23 = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v76 - v25;
  v27 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showAuthorizationView[0];
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28 = *(v24 + 32);
  v28(&v11[v27], v26, v23);
  v29 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showBiometryIntentButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v11[v29], v26, v23);
  v30 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__shouldShowCustomPasswordView[0];
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v11[v30], v26, v23);
  v31 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__shouldShowDevicePasscodeView[0];
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v11[v31], v26, v23);
  v32 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__passcodeFocused[0];
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v11[v32], v26, v23);
  v79 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__blockedUntilDate;
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
  sub_100034F7C(v22, v20, &qword_1000B00F0, &qword_100078560);
  Published.init(initialValue:)();
  sub_10002B444(v22, &qword_1000B00F0, &qword_100078560);
  (*(v81 + 32))(&v11[v79], v17, v82);
  v34 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__promptText[0];
  aBlock = 0;
  v98 = 0;
  sub_1000282B4(&qword_1000B0108, &qword_100079AB8);
  v35 = v83;
  Published.init(initialValue:)();
  (*(v84 + 32))(&v12[v34], v35, v85);
  v36 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__wrongBioAttempts[0];
  aBlock = 0;
  v37 = v86;
  Published.init(initialValue:)();
  (*(v87 + 32))(&v12[v36], v37, v88);
  v38 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showBiometryRetryButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v12[v38], v26, v23);
  v39 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showFallbackButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v28(&v12[v39], v26, v23);
  v40 = v89;
  v41 = &v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion];
  *v41 = 0;
  v41[1] = 0;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissAnimationDuration] = 0x3FC3333333333333;
  v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissed] = 0;
  v42 = sub_10004FFDC();
  sub_10004FFF4(*v42);
  v43 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad;
  sub_10002B4A4(0, &qword_1000AF5C0, UIDevice_ptr);
  v12[v43] = sub_100069D50();
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failures] = 0;
  v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_expectsDismissOnIpad] = 0;
  swift_unknownObjectWeakInit();
  v44 = &v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___cornerRadius];
  *v44 = 0;
  v44[8] = 1;
  v45 = &v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___backgroundOpacity];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___passwordType];
  *v47 = 0;
  v47[8] = 1;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon] = 1;
  v48 = *v41;
  v49 = v41[1];
  v50 = v95;
  v51 = v96;
  *v41 = v95;
  v41[1] = v51;
  sub_1000299DC(v50, v51);
  sub_10002AA04(v48, v49);
  v53 = v90;
  v52 = v91;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_auditToken] = v90;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_backoffCounter] = v40;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_cachedContext] = v52;
  v55 = v92;
  v54 = v93;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration] = v92;
  v56 = &v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failureLimit];
  *v56 = v54;
  v56[8] = v94 & 1;
  v57 = v52;
  v58 = v53;
  swift_unknownObjectRetain();
  v59 = v55;
  v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod] = sub_100032EAC([v59 requirement]);
  v60 = [v59 contextData];
  v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  v64 = objc_allocWithZone(LAContext);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10002AFD0(v61, v63);
  v66 = [v64 initWithExternalizedContext:isa];

  if (v66)
  {
    *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context] = v66;
    *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_policy] = v76;
    v67 = v77;
    *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_userId] = v77;
    *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_options] = a9;
    v68 = v67;
    v69 = [v59 passwordFieldPlaceholder];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    swift_beginAccess();
    v104 = v70;
    v105 = v72;
    Published.init(initialValue:)();
    swift_endAccess();
    v103.receiver = v12;
    v103.super_class = ObjectType;
    v73 = objc_msgSendSuper2(&v103, "init");
    sub_100064208();
    sub_100064500(0);
    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v101 = sub_100069D40;
    v102 = v74;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_10002F4C0;
    v100 = &unk_100098D88;
    v75 = _Block_copy(&aBlock);

    [v40 currentBackoffErrorWithReply:v75];
    _Block_release(v75);
    sub_10002AA04(v95, v96);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100064208()
{
  v1 = *&v0[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration];
  result = [v1 requirement];
  if (result > 3)
  {
    if (result != 4)
    {
      if (result == 5)
      {
        goto LABEL_13;
      }

      if (result != 6)
      {
        return result;
      }
    }

    v5 = [objc_opt_self() currentPasscode];
    v6 = [v5 type];

    if ((v6 - 1) > 3)
    {
      v7 = &LACustomPasswordTypeAlphanumeric;
    }

    else
    {
      v7 = *(&off_100099260 + (v6 - 1));
    }

    [v1 setPasscodeLength:*v7];
    goto LABEL_13;
  }

  if (result == 1)
  {
LABEL_13:
    v8 = *&v0[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context];
    [v8 canEvaluatePolicy:1 error:0];
    if ([v8 biometryType] == 2)
    {
      [v1 requiresIntent];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v0;
    return static Published.subscript.setter();
  }

  if (result != 2)
  {
    if (result != 3)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v0;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    return static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  static Published.subscript.setter();
  v12 = [objc_opt_self() currentPasscode];
  v13 = [v12 type];

  if ((v13 - 1) > 3)
  {
    v14 = &LACustomPasswordTypeAlphanumeric;
  }

  else
  {
    v14 = *(&off_100099260 + (v13 - 1));
  }

  return [v1 setPasscodeLength:*v14];
}

uint64_t sub_100064500(char a1)
{
  if (a1)
  {
    sub_100027AF4();
LABEL_19:
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v1;
    return static Published.subscript.setter();
  }

  v2 = *&v1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration];
  if ([v2 mode])
  {
    goto LABEL_4;
  }

  v5 = [v2 prompt];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      goto LABEL_4;
    }
  }

  if (v1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod] == 2 || (v21 = v1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod], sub_100033020(), v11 = v1, (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , (v21 & 1) == 0) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v21 != 1))
  {
LABEL_4:
    v3 = [v2 prompt];
    if (v3)
    {
      v4 = v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    goto LABEL_19;
  }

  v12 = sub_1000623A4();
  v13 = LACustomPasswordTypeFourDigits;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v13 == v12 || LACustomPasswordTypeSixDigits == v12)
  {
    if (v15 == 1)
    {
      sub_100027820();
    }

    else if (v15)
    {
      sub_100027758();
    }

    else
    {
      sub_1000278E8();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v11;
  }

  else
  {
    if (v15 == 1)
    {
      sub_100027820();
    }

    else if (v15)
    {
      sub_100027758();
    }

    else
    {
      sub_1000278E8();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v11;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v19;
  }

  return static Published.subscript.setter();
}

uint64_t sub_100064880(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
    swift_errorRetain();
    v17 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = a1;
    aBlock[4] = sub_100069C48;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B620;
    aBlock[3] = &unk_1000991F8;
    v15 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
    sub_10002CBE0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v17;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_100064BA8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10006865C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B620;
  aBlock[3] = &unk_100098DD8;
  v13 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_10002CBE0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100064E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissed) & 1) == 0)
  {
    *(a2 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissed) = 1;
    v13 = *(a2 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad);
    sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
    v20 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    if (v13)
    {
      v15[2] = v14;
      v15[3] = a1;
      v15[4] = nullsub_18;
      v15[5] = 0;
      v25 = sub_100069D48;
      v26 = v15;
      aBlock = _NSConcreteStackBlock;
      v22 = 1107296256;
      v16 = &unk_100099108;
    }

    else
    {
      v15[2] = 0x3FC3333333333333;
      v15[3] = v14;
      v15[4] = a1;
      v15[5] = nullsub_18;
      v15[6] = 0;
      v25 = sub_100069CF0;
      v26 = v15;
      aBlock = _NSConcreteStackBlock;
      v22 = 1107296256;
      v16 = &unk_1000990B8;
    }

    v23 = sub_10002B620;
    v24 = v16;
    v17 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
    sub_10002CBE0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v20;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_100065254(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissed))
  {
    return a2(v13);
  }

  v25 = v13;
  v26 = v8;
  *(v3 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissed) = 1;
  v17 = *(v3 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad);
  sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  if (v17 == 1)
  {
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    v19[5] = a3;
    v31 = sub_100068668;
    v32 = v19;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v20 = &unk_100098E78;
  }

  else
  {
    v19[2] = 0x3FC3333333333333;
    v19[3] = v18;
    v19[4] = a1;
    v19[5] = a2;
    v19[6] = a3;
    v31 = sub_100068664;
    v32 = v19;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v20 = &unk_100098E28;
  }

  v29 = sub_10002B620;
  v30 = v20;
  v21 = _Block_copy(&aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_10002CBE0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v24;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v26 + 8))(v10, v7);
  return (*(v12 + 8))(v15, v25);
}

uint64_t sub_100065618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_expectsDismissOnIpad;
    v7 = Strong;
    swift_beginAccess();
    v7[v6] = 1;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = (v8 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
    v11 = *(v8 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
    if (v11)
    {
      v12 = v10[1];

      v11(a2);
      sub_10002AA04(v11, v12);
      v13 = *v10;
      v14 = v10[1];
      *v10 = 0;
      v10[1] = 0;
      sub_10002AA04(v13, v14);
    }
  }

  return a3();
}

uint64_t sub_100065784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v35 = a4;
  v34 = a3;
  v33 = a2;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - v14;
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  static Animation.easeIn(duration:)();
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1000282B4(&unk_1000B0240, &qword_100078718);
  withAnimation<A>(_:_:)();

  sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v9 + 8);
  v31 = v8;
  v20(v12, v8);
  + infix(_:_:)();
  v20(v15, v8);
  v21 = swift_allocObject();
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v23 = swift_allocObject();
  v24 = v33;
  v23[2] = v21;
  v23[3] = v24;
  v25 = v35;
  v23[4] = v34;
  v23[5] = v25;
  aBlock[4] = sub_100069B8C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B620;
  aBlock[3] = &unk_100099158;
  v26 = _Block_copy(aBlock);
  swift_errorRetain();

  v27 = v32;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_10002CBE0();
  v29 = v36;
  v28 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v40 + 8))(v29, v28);
  (*(v38 + 8))(v27, v39);
  return (v20)(v17, v31);
}

id sub_100065CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (aBlock == 1)
  {
    v10 = *(v4 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_cachedContext);
    if (v10 && (result = [v10 externalizedContext]) != 0 || (result = objc_msgSend(*(v4 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context), "externalizedContext")) != 0)
    {
      v12 = result;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      sub_100030844(a1, a2, v13, v15, *(v4 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_userId), *(v4 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_policy), *(v4 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_options), *(v4 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_auditToken), a3, a4, ObjectType, &off_100098F40);
      return sub_10002AFD0(v13, v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return a3(0);
  }

  return result;
}

uint64_t sub_100065F88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_100065FDC()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return [*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context) retryProcessedEvent:7 reply:0];
}

uint64_t sub_100066068(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  if (a1)
  {
    v17 = static Animation.linear(duration:)();
    __chkstk_darwin(v17);
    *(&v23 - 2) = v1;
    withAnimation<A>(_:_:)();
  }

  else
  {
    v19 = *(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
    [v19 canEvaluatePolicy:1 error:0];
    [v19 biometryType];
    sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
    v24 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v25 = *(v11 + 8);
    v25(v14, v10);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100068728;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B620;
    aBlock[3] = &unk_100098EC8;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
    sub_10002CBE0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v24;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v21);

    (*(v4 + 8))(v6, v3);
    (*(v26 + 8))(v9, v27);
    return (v25)(v16, v10);
  }
}

uint64_t sub_1000664D8()
{
  if (*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v0 = v0;
    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t sub_100066608(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v53 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v7 = __chkstk_darwin(v6 - 8);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v51 = &v49 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v49 - v15;
  __chkstk_darwin(v14);
  v52 = &v49 - v17;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 0;
    static Published.subscript.setter();
  }

  v49 = a2;
  v18 = _convertErrorToNSError(_:)();
  v19 = [v18 userInfo];

  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v20 + 16))
  {
    v23 = sub_10002AC0C(v21, v22);
    v25 = v24;

    if (v25)
    {
      sub_10002B308(*(v20 + 56) + 32 * v23, aBlock);

      v26 = v52;
      v27 = swift_dynamicCast();
      v28 = v53;
      v29 = *(v53 + 56);
      v29(v26, v27 ^ 1u, 1, v3);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v26 = v52;
  v28 = v53;
  v29 = *(v53 + 56);
  v29(v52, 1, 1, v3);
LABEL_8:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    sub_100034F7C(v26, v16, &qword_1000B00F0, &qword_100078560);
    if ((*(v28 + 48))(v16, 1, v3) == 1)
    {
      sub_10002B444(v16, &qword_1000B00F0, &qword_100078560);
      v32 = 0;
    }

    else
    {
      Date.init()();
      v33 = Date.compare(_:)();
      v34 = *(v53 + 8);
      v34(v5, v3);
      v34(v16, v3);
      v35 = v33 == 1;
      v26 = v52;
      v28 = v53;
      v32 = v35;
    }

    sub_100064500(v32);
  }

  sub_100034F7C(v26, v13, &qword_1000B00F0, &qword_100078560);
  if ((*(v28 + 48))(v13, 1, v3) == 1)
  {
    sub_10002B444(v13, &qword_1000B00F0, &qword_100078560);
LABEL_21:
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v47 = v51;
      v29(v51, 1, 1, v3);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100034F7C(v47, v50, &qword_1000B00F0, &qword_100078560);
      static Published.subscript.setter();
      sub_10002B444(v47, &qword_1000B00F0, &qword_100078560);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v55 = 1;
      static Published.subscript.setter();
    }

    return sub_10002B444(v26, &qword_1000B00F0, &qword_100078560);
  }

  v36 = v28;
  Date.init()();
  v37 = Date.compare(_:)();
  v38 = *(v36 + 8);
  v38(v5, v3);
  v38(v13, v3);
  if (v37 != 1)
  {
    goto LABEL_21;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = v51;
    sub_100034F7C(v26, v51, &qword_1000B00F0, &qword_100078560);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100034F7C(v39, v50, &qword_1000B00F0, &qword_100078560);
    static Published.subscript.setter();
    sub_10002B444(v39, &qword_1000B00F0, &qword_100078560);
  }

  v40 = objc_opt_self();
  v41 = swift_allocObject();
  swift_beginAccess();
  v42 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v43 = swift_allocObject();
  v44 = v49;
  *(v43 + 16) = v41;
  *(v43 + 24) = v44;
  aBlock[4] = sub_100069C48;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002F86C;
  aBlock[3] = &unk_1000991A8;
  v45 = _Block_copy(aBlock);
  swift_errorRetain();

  v46 = [v40 scheduledTimerWithTimeInterval:0 repeats:v45 block:1.0];
  _Block_release(v45);

  return sub_10002B444(v26, &qword_1000B00F0, &qword_100078560);
}

void sub_100066DC4()
{
  v1 = (v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
  v2 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
  if (v2)
  {
    v3 = v1[1];

    v2(0);
    sub_10002AA04(v2, v3);
    v4 = *v1;
    v5 = v1[1];
    *v1 = 0;
    v1[1] = 0;

    sub_10002AA04(v4, v5);
  }
}

void *sub_100066E48()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector:"viewModelDidRejectDevicePasscode:"])
    {
      [v2 viewModelDidRejectDevicePasscode:v0];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100066ED4(uint64_t result)
{
  v2 = (v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
  v3 = *(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
  if (v3)
  {
    v4 = result;
    v5 = v2[1];

    v3(v4);
    sub_10002AA04(v3, v5);
    v6 = *v2;
    v7 = v2[1];
    *v2 = 0;
    v2[1] = 0;

    return sub_10002AA04(v6, v7);
  }

  return result;
}

uint64_t sub_100067318@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100067418()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100068CD4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B620;
  aBlock[3] = &unk_100098EF0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_10002CBE0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100067728()
{
  v1 = sub_1000282B4(&qword_1000B0150, &qword_100078578);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_100067B18(0, 0, v3, &unk_100079C78, v5);
}

uint64_t sub_10006782C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10006784C, 0, 0);
}

uint64_t sub_10006784C()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000678E0, v2, v1);
}

uint64_t sub_1000678E0()
{
  v1 = *(v0 + 24);

  sub_100067980(v1);
  v2 = *(v0 + 8);

  return v2();
}

void (*sub_100067980(uint64_t a1))(id *, void)
{
  v2 = *(a1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
  [v2 canEvaluatePolicy:1 error:0];
  result = [v2 biometryType];
  if (result == 2)
  {
    v4 = *(a1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
    v9[0] = 0;
    [v4 canEvaluatePolicy:1 error:v9];
    v5 = v9[0];
    v6 = v9[0];
    if (v5)
    {
      sub_1000688AC(v6);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      result = static Published.subscript.modify();
      if (__OFADD__(*v7, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v7;
        result(v9, 0);

        __chkstk_darwin(v8);
        static Animation.default.getter();
        withAnimation<A>(_:_:)();
      }
    }
  }

  return result;
}

uint64_t sub_100067B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000282B4(&qword_1000B0150, &qword_100078578);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100034F7C(a3, v25 - v10, &qword_1000B0150, &qword_100078578);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002B444(v11, &qword_1000B0150, &qword_100078578);
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

      sub_10002B444(a3, &qword_1000B0150, &qword_100078578);

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

  sub_10002B444(a3, &qword_1000B0150, &qword_100078578);
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

uint64_t sub_100067F28(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100067F7C(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100067FD4@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100067FFC(uint64_t a1)
{
  sub_1000692F4(&qword_1000B0230, type metadata accessor for LACustomPasswordType, &unk_100079ECC);
  sub_1000692F4(&qword_1000B0238, type metadata accessor for LACustomPasswordType, &unk_100079E74);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000680F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000681EC;

  return v6(a1);
}

uint64_t sub_1000681EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1000682E4(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000282B4(&qword_1000B0260, qword_100079F80);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1000692F4(&qword_1000B0268, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1000692F4(&unk_1000B0270, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100068604()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068674()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100068728(uint64_t a1)
{
  static Animation.linear(duration:)();
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  withAnimation<A>(_:_:)();
}

uint64_t sub_1000687EC()
{
  v1 = *(v0 + 16);
  sub_1000664D8();
  sub_100064500(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000688AC(uint64_t a1)
{
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v24 = v8;
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
  [v15 canEvaluatePolicy:1 error:0];
  [v15 biometryType];
  sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v9 + 8);
  v17(v12, v8);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  aBlock[4] = sub_100069830;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B620;
  aBlock[3] = &unk_100099068;
  v20 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_10002CBE0();
  v21 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v28 + 8))(v4, v21);
  (*(v26 + 8))(v7, v27);
  return (v17)(v14, v24);
}

void sub_100068CD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context;
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context) canEvaluatePolicy:1 error:0];
    v3 = [*&v2[v1] biometryType];

    if (v3 == 1)
    {
      v4 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:2];
      [v4 impactOccurred];

      swift_allocObject();
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      static Animation.default.getter();
      sub_1000282B4(&unk_1000B0240, &qword_100078718);
      withAnimation<A>(_:_:)();
    }
  }
}

uint64_t sub_100068E38(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004AAC0;

  return sub_10006782C(a1, v5, v6, v4);
}

uint64_t type metadata accessor for AuthorizationViewModel(uint64_t a1)
{
  result = qword_1000B1960;
  if (!qword_1000B1960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100068F38(uint64_t a1)
{
  sub_10006925C(319, &qword_1000B0180, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_10003F748(319, &qword_1000B0188, &qword_1000B00F0, &qword_100078560);
    if (v2 <= 0x3F)
    {
      sub_10003F748(319, &qword_1000B0190, &qword_1000B0108, &qword_100079AB8);
      if (v3 <= 0x3F)
      {
        sub_10006925C(319, &qword_1000B0198, &type metadata for String, &type metadata accessor for Published);
        if (v4 <= 0x3F)
        {
          sub_10006925C(319, &qword_1000B01A0, &type metadata for Int, &type metadata accessor for Published);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Logger();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10006925C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000692F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000693D0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004A568;

  return sub_10006782C(a1, v5, v6, v4);
}

uint64_t sub_100069470()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000694A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004AAC0;

  return sub_1000680F4(a1, v4);
}

uint64_t sub_100069560(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004A568;

  return sub_1000680F4(a1, v4);
}

uint64_t sub_100069618()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void sub_100069744(BOOL *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = static Published.subscript.modify();
  if (!__OFADD__(*v4, 1))
  {
    ++*v4;
    v3(v5, 0);

LABEL_4:
    *a1 = Strong == 0;
    return;
  }

  __break(1u);
}

void sub_100069830()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      if (*(Strong + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod) == 2)
      {
        sub_100064E98(v1, Strong);
      }

      else
      {
        sub_100066068(0);
      }
    }

    else
    {
      v4 = (Strong + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
      v5 = *(Strong + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
      if (v5)
      {
        v6 = v4[1];

        v5(0);
        sub_10002AA04(v5, v6);
        v7 = *v4;
        v8 = v4[1];
        *v4 = 0;
        v4[1] = 0;
        sub_10002AA04(v7, v8);
      }
    }
  }
}

uint64_t sub_100069908()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100069964()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000664D8();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_100064500(0);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100069AA8@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = result;
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    result = static Published.subscript.setter();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_100069B44()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100069B8C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (Strong + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
    v6 = *(Strong + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
    if (v6)
    {
      v7 = v5[1];

      v6(v1);
      sub_10002AA04(v6, v7);
      v8 = *v5;
      v9 = v5[1];
      *v5 = 0;
      v5[1] = 0;
      sub_10002AA04(v8, v9);
    }
  }

  return v2();
}

void sub_100069C48()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100064BA8(v1);
  }
}

BOOL sub_100069D50()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

id sub_100069DAC()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000B1C78 = result;
  return result;
}

uint64_t sub_100069E84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ImageResource();
  sub_10005D914(v5, a2);
  sub_10005D8DC(v5, a2);
  if (qword_1000B1C70 != -1)
  {
    swift_once();
  }

  v6 = qword_1000B1C78;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100069F4C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for ImageResource();

  return sub_10005D8DC(v4, a2);
}

uint64_t sub_100069FC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ImageResource();
  v7 = sub_10005D8DC(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void sub_10006A080(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid FaceIdLightweightTrailingViewState: %d", v2, 8u);
}

void sub_10006A0F8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to open URL: %{public}@ error: %{public}@", &v3, 0x16u);
}

void sub_10006A180(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive tint color: %{public}@", &v2, 0xCu);
}

void sub_10006A1F8(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Won't hide secure glyph because %.3f sec minimum display time remains", &v2, 0xCu);
}

void sub_10006A2CC()
{
  WeakRetained = objc_loadWeakRetained(&qword_1000B0330);
  sub_100013F60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10006A378()
{
  WeakRetained = objc_loadWeakRetained(&qword_1000B0330);
  sub_100013F54();
  sub_100013F60();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10006A528(uint64_t a1)
{
  v1 = [*(a1 + 32) requestID];
  sub_100013F54();
  sub_100013F60();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10006A5D0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "executing part 1, tid:%u", v3, 8u);
}

void sub_10006A64C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "executing part 2, tid:%u", v3, 8u);
}

void sub_10006A730(char a1, uint64_t a2, os_log_t log)
{
  v3 = "portrait";
  if (a1)
  {
    v3 = "all";
  }

  v4 = "YES";
  if (!*(a2 + 24))
  {
    v4 = "NO";
  }

  v5 = 136315394;
  v6 = v3;
  v7 = 2080;
  v8 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "supportedInterfaceOrientations: %s, _allowsLandscape: %s", &v5, 0x16u);
}

void sub_10006A85C()
{
  sub_100013F54();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Found error (%{public}@) while destroying %{public}@", v2, 0x16u);
}

void sub_10006A928(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive tint color. Received: '%{public}@'.", &v2, 0xCu);
}

void sub_10006AAA0(uint64_t a1, id *a2)
{
  [*a2 count];
  sub_10001C450();
  sub_10001C4A0(&_mh_execute_header, v2, v3, "%{public}@ was revoked and will complete when the presentable disappears, tracking %u completion handlers.", v4, v5, v6, v7);
}

void sub_10006AB88(uint64_t a1, id *a2)
{
  [*a2 count];
  sub_10001C450();
  sub_10001C4A0(&_mh_execute_header, v2, v3, "%{public}@ already being revoked, tracking %u completion handlers.", v4, v5, v6, v7);
}

void sub_10006AC1C(uint64_t a1, NSObject *a2)
{
  v3 = NSStringFromLAPasscodeType();
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognized passcode type: %@", &v4, 0xCu);
}

void sub_10006ACB4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected type of secure UI controller: %@", &v2, 0xCu);
}

void sub_10006AD70(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@ watchdog for secure UI transitions triggered, dismissing now", &v2, 0xCu);
}

void sub_10006AE10(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not set credential (%@)", &v1, 0xCu);
}

void sub_10006AE90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = 138412546;
  v4 = v2;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not send action: %@ error: %@", &v3, 0x16u);
}

void sub_10006AF20(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not obtain remote proxy: %@", &v1, 0xCu);
}

void sub_10006AFA0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ already verifying passcode", &v2, 0xCu);
}

void sub_10006B044(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}