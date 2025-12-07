uint64_t sub_10093D0B4(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[7];
  v5 = (*(*(v3 - 8) + 80) + 80) & ~*(*(v3 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_10093CA20(a1, v6, v7, v4, v8, v9, v1 + v5, v3);
}

double View.alertPresenting(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{

  sub_10010FC20(&qword_1011A94E0, &qword_100EF04C0);
  sub_100020674(&qword_1011A94E8, &qword_1011A94E0, &qword_100EF04C0, &protocol conformance descriptor for PresentedViewState<A>);
  ObservedObject.init(wrappedValue:)();
  v7 = sub_10093D2C0();
  View.viewPresenting<A, B>(_:modifier:)(a1, a3, v7, x8_0);

  return result;
}

unint64_t sub_10093D2C0()
{
  result = qword_1011A94F0;
  if (!qword_1011A94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A94F0);
  }

  return result;
}

uint64_t sub_10093D340@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_10010FC20(&qword_1011A9520, &qword_100EF0568);
  v56 = *(v5 - 8);
  __chkstk_darwin();
  v58 = &v44 - v6;
  v59 = sub_10010FC20(&qword_1011A9528, &qword_100EF0570);
  __chkstk_darwin();
  v60 = &v44 - v7;
  v8 = sub_10010FC20(&qword_1011A9530, &qword_100EF0578);
  v55 = *(v8 - 8);
  __chkstk_darwin();
  v57 = &v44 - v9;
  v10 = sub_10010FC20(&qword_1011A9538, &qword_100EF0580);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v61 = &v44 - v12;
  v13 = (a2 + *(*a2 + 96));
  swift_beginAccess();
  v14 = v13[3];
  v82 = v13[2];
  v83 = v14;
  v84 = *(v13 + 8);
  v15 = v13[1];
  v81[0] = *v13;
  v81[1] = v15;
  if (!*(&v83 + 1))
  {
    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  v50 = v8;
  v51 = v11;
  v52 = v10;
  v53 = v5;
  v54 = a3;
  v16 = v82;
  v17 = v81[0];
  v75 = v81[0];
  *v78 = *(v13 + 33);
  v18 = v13[3];
  v73[2] = v13[2];
  v73[3] = v18;
  v19 = *v13;
  v76 = v13[1];
  v77 = v82;
  *&v78[15] = *(v13 + 6);
  v79 = *(&v83 + 1);
  v80 = v84;
  v74 = *(v13 + 8);
  v73[0] = v19;
  v73[1] = v76;
  sub_10053A574(v73, &v65);
  v20 = static Color.clear.getter();
  if (*(&v17 + 1))
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (*(&v17 + 1))
  {
    v22 = *(&v17 + 1);
  }

  v48 = v22;
  v49 = v20;
  v63 = v22;
  v64 = v20;
  v62 = v21;

  sub_10010FC20(&qword_1011A94E0, &qword_100EF04C0);
  sub_100020674(&qword_1011A94E8, &qword_1011A94E0, &qword_100EF04C0, &protocol conformance descriptor for PresentedViewState<A>);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  if (v16)
  {
    v58 = &v44;
    LODWORD(v56) = v67;
    __chkstk_darwin();
    __chkstk_darwin();
    v23 = sub_10010FC20(&qword_1011A9540, &qword_100EF05B0);
    v24 = sub_10010FC20(&qword_1011A9548, &qword_100EF05B8);
    v45 = sub_10000988C();
    v46 = sub_10093E868();
    v47 = sub_10093E95C();
    v25 = v57;
    View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)();

    v26 = v55;
    v27 = v50;
    (*(v55 + 16))(v60, v25, v50);
    swift_storeEnumTagMultiPayload();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v23;
    v68 = v24;
    v28 = v23;
    v29 = v45;
    v30 = v46;
    v69 = &protocol witness table for Color;
    v70 = v45;
    v31 = v47;
    v71 = v46;
    v72 = v47;
    swift_getOpaqueTypeConformance2();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v28;
    v68 = v24;
    v69 = &protocol witness table for Color;
    v70 = v29;
    v71 = v30;
    v72 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v61;
    _ConditionalContent<>.init(storage:)();

    sub_1000095E8(v81, &qword_1011A9570, &qword_100EF47C0);
    (*(v26 + 8))(v57, v27);
  }

  else
  {
    v57 = &v44;
    LODWORD(v55) = v67;
    __chkstk_darwin();
    __chkstk_darwin();
    v34 = sub_10010FC20(&qword_1011A9540, &qword_100EF05B0);
    v35 = sub_10010FC20(&qword_1011A9548, &qword_100EF05B8);
    v45 = sub_10000988C();
    v46 = sub_10093E868();
    v47 = sub_10093E95C();
    v36 = v35;
    v37 = v58;
    View.alert<A, B, C>(_:isPresented:actions:message:)();

    v38 = v56;
    v39 = v53;
    (*(v56 + 16))(v60, v37, v53);
    swift_storeEnumTagMultiPayload();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v34;
    v68 = v36;
    v40 = v45;
    v41 = v46;
    v69 = &protocol witness table for Color;
    v70 = v45;
    v42 = v47;
    v71 = v46;
    v72 = v47;
    swift_getOpaqueTypeConformance2();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v34;
    v68 = v36;
    v69 = &protocol witness table for Color;
    v70 = v40;
    v71 = v41;
    v72 = v42;
    swift_getOpaqueTypeConformance2();
    v32 = v61;
    _ConditionalContent<>.init(storage:)();

    sub_1000095E8(v81, &qword_1011A9570, &qword_100EF47C0);
    (*(v38 + 8))(v58, v39);
  }

  v43 = v54;
  sub_1000B8834(v32, v54);
  return (*(v51 + 56))(v43, 0, 1, v52);
}

void sub_10093DCE8(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_10093DD80(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10093DE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[9] = *(a1 + 56);
  swift_getKeyPath();
  v7 = swift_allocObject();
  v8 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a1 + 64);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = v7;

  sub_10053A574(a1, v14);
  sub_10010FC20(&qword_1011A9578, &qword_100EF05F0);
  sub_10010FC20(&qword_1011A9580, &qword_100EF05F8);
  sub_10093EA54();
  v11 = sub_1001109D0(&qword_1011A9558, &qword_100EF05C0);
  v12 = sub_100020674(&qword_1011A9560, &qword_1011A9558, &qword_100EF05C0, &protocol conformance descriptor for Button<A>);
  v14[0] = v11;
  v14[1] = v12;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10093DFAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    sub_10000988C();

    result = Text.init<A>(_:)();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_10093E030@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a4;
  sub_10010FC20(&qword_1011A95A0, &qword_100EF0608);
  __chkstk_darwin();
  v7 = &v26 - v6;
  sub_10010FC20(&qword_1011A8340, &qword_100EED418);
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = sub_10010FC20(&qword_1011A9558, &qword_100EF05C0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v26 - v12;
  v32 = a2[1];
  v30 = a2[1];
  v14 = *(a2 + 32);
  if (v14 == 2)
  {
    v15 = type metadata accessor for ButtonRole();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  else
  {

    if (v14)
    {
      static ButtonRole.destructive.getter();
    }

    else
    {
      static ButtonRole.cancel.getter();
    }

    v16 = type metadata accessor for ButtonRole();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  }

  v31 = *a2;
  v18 = *(a2 + 5);
  v17 = *(a2 + 6);
  v19 = swift_allocObject();
  v20 = a2[1];
  *(v19 + 16) = *a2;
  *(v19 + 32) = v20;
  *(v19 + 48) = a2[2];
  v21 = *a3;
  *(v19 + 88) = a3[1];
  v22 = a3[3];
  *(v19 + 104) = a3[2];
  *(v19 + 120) = v22;
  *(v19 + 64) = *(a2 + 6);
  *(v19 + 136) = *(a3 + 8);
  *(v19 + 72) = v21;
  sub_100118E9C(&v32, v29);
  sub_100118E9C(&v31, v29);
  sub_100030444(v18, v17);
  sub_10053A574(a3, v29);
  sub_10000988C();
  Button<>.init<A>(_:role:action:)();
  v23 = 1;
  if ((a3[3] & 1) == 0 && *(a3 + 5) == v27)
  {
    static KeyboardShortcut.defaultAction.getter();
    v23 = 0;
  }

  v24 = type metadata accessor for KeyboardShortcut();
  (*(*(v24 - 8) + 56))(v7, v23, 1, v24);
  sub_100020674(&qword_1011A9560, &qword_1011A9558, &qword_100EF05C0, &protocol conformance descriptor for Button<A>);
  View.keyboardShortcut(_:)();
  sub_1000095E8(v7, &qword_1011A95A0, &qword_100EF0608);
  return (*(v11 + 8))(v13, v10);
}

double sub_10093E3FC(__int128 *a1, __int128 *a2)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v5 = &v17[-v4 - 8];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *a1;
  v18 = a1[1];
  v19 = v7;
  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  type metadata accessor for MainActor();
  sub_100118E9C(&v19, v17);
  sub_100118E9C(&v18, v17);
  sub_100030444(v8, v9);
  sub_10053A574(a2, v17);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v12;
  *(v11 + 64) = a1[2];
  v13 = *a2;
  *(v11 + 104) = a2[1];
  v14 = a2[3];
  *(v11 + 120) = a2[2];
  *(v11 + 136) = v14;
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 80) = *(a1 + 6);
  *(v11 + 152) = *(a2 + 8);
  *(v11 + 88) = v13;
  sub_100969440(0, 0, v5, &unk_100EF0618, v11);

  return result;
}

uint64_t sub_10093E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 48);
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = v7;
  *(v5 + 80) = *(a5 + 64);
  v8 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v8;
  *(v5 + 88) = type metadata accessor for MainActor();
  *(v5 + 96) = static MainActor.shared.getter();
  v9 = *(a4 + 40);
  if (v9)
  {
    v14 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v5 + 104) = v10;
    *v10 = v5;
    v10[1] = sub_1001AEF9C;

    return v14(a4, v5 + 16);
  }

  else
  {
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001AF0E0, v13, v12);
  }
}

uint64_t sub_10093E728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = a2 + *(sub_10010FC20(&qword_1011A9508, &qword_100EF0550) + 36);
  sub_10093D340(v5, v9);
  v10 = (v9 + *(sub_10010FC20(&qword_1011A9510, &qword_100EF0558) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = sub_10010FC20(&qword_1011A9518, &qword_100EF0560);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

unint64_t sub_10093E868()
{
  result = qword_1011A9550;
  if (!qword_1011A9550)
  {
    sub_1001109D0(&qword_1011A9540, &qword_100EF05B0);
    sub_1001109D0(&qword_1011A9558, &qword_100EF05C0);
    sub_100020674(&qword_1011A9560, &qword_1011A9558, &qword_100EF05C0, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9550);
  }

  return result;
}

unint64_t sub_10093E95C()
{
  result = qword_1011A9568;
  if (!qword_1011A9568)
  {
    sub_1001109D0(&qword_1011A9548, &qword_100EF05B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9568);
  }

  return result;
}

unint64_t sub_10093EA54()
{
  result = qword_1011A9588;
  if (!qword_1011A9588)
  {
    sub_1001109D0(&qword_1011A9578, &qword_100EF05F0);
    sub_100020674(&qword_1011A9590, &qword_1011A9598, &qword_100EF0600, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9588);
  }

  return result;
}

uint64_t sub_10093EB10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_10093E59C(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_10093EBC4()
{

  return swift_deallocObject();
}

uint64_t sub_10093EC14(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  v7 = a1[7];
  return v2(v3, v6);
}

unint64_t sub_10093EC6C()
{
  result = qword_1011A95A8;
  if (!qword_1011A95A8)
  {
    sub_1001109D0(&qword_1011A9508, &qword_100EF0550);
    sub_100020674(&qword_1011A95B0, &qword_1011A9518, &qword_100EF0560, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100020674(&qword_1011A95B8, &qword_1011A9510, &qword_100EF0558, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A95A8);
  }

  return result;
}

double sub_10093ED70(uint64_t a1, __int128 *a2, __int128 *a3)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v6 = &v18[-v5 - 8];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *a2;
  v19 = a2[1];
  v20 = v8;
  v9 = *(a2 + 5);
  v10 = *(a2 + 6);
  type metadata accessor for MainActor();
  sub_100118E9C(&v20, v18);
  sub_100118E9C(&v19, v18);
  sub_100030444(v9, v10);
  sub_10053A574(a3, v18);
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v13;
  *(v12 + 64) = a2[2];
  v14 = *a3;
  *(v12 + 104) = a3[1];
  v15 = a3[3];
  *(v12 + 120) = a3[2];
  *(v12 + 136) = v15;
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 80) = *(a2 + 6);
  *(v12 + 152) = *(a3 + 8);
  *(v12 + 88) = v14;
  sub_100969440(0, 0, v6, &unk_100EF0688, v12);

  return result;
}

id static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v40 = a7;
  v41 = a8;
  v42 = type metadata accessor for URL();
  v15 = *(v42 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v38 - v17;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v38 - v20;
  if (qword_1011A70E8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_1009AC87C(a1, a2, a3, a4, a5, a6, v40, v41, v21, a9 & 1);
    sub_10093F768(v21, v19);
    v22 = v42;
    if ((*(v15 + 48))(v19, 1, v42) == 1)
    {
      sub_100028B08(v21);
      v23 = v19;
    }

    else
    {
      v24 = *(v15 + 32);
      v25 = v39;
      v24();
      v26 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v30 = [v26 canOpenURL:v28];

      if (v30)
      {
        v31 = v38;
        (*(v15 + 16))(v38, v25, v22);
        v32 = (*(v15 + 80) + 16) & ~*(v15 + 80);
        v33 = swift_allocObject();
        (v24)(v33 + v32, v31, v22);
        v34 = String._bridgeToObjectiveC()();
        aBlock[4] = sub_10093F7D8;
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10027D328;
        aBlock[3] = &unk_1010D0928;
        v35 = _Block_copy(aBlock);

        v36 = [swift_getObjCClassFromMetadata() actionWithTitle:v34 style:0 handler:v35];
        _Block_release(v35);

        (*(v15 + 8))(v25, v22);
        sub_100028B08(v21);
        return v36;
      }

      (*(v15 + 8))(v25, v22);
      v23 = v21;
    }

    sub_100028B08(v23);
  }

  return 0;
}

void sub_10093F330()
{
  v0 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  sub_1008BD18C(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_10093F848();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v0 openURL:v3 options:isa completionHandler:0];
}

id sub_10093F41C(__int128 *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    a2 = ~*(a1 + 32) & 1;
  }

  if (*(a1 + 1))
  {
    v5 = String._bridgeToObjectiveC()();
    if (*(a1 + 3))
    {
LABEL_5:
      v6 = String._bridgeToObjectiveC()();
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (*(a1 + 3))
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_8:
  v29 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:a2];

  v7 = *(a1 + 7);
  v28 = *(v7 + 16);
  if (v28)
  {
    v8 = 0;
    v9 = (v7 + 80);
    do
    {
      v31 = v8;
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v9 - 16);
      v15 = *(v9 - 4);
      v14 = *(v9 - 3);
      v16 = *(v9 - 6);
      v17 = *(v9 - 5);
      v18 = 1;
      if (v13)
      {
        v18 = 2;
      }

      if (v13 == 2)
      {
        v18 = 0;
      }

      v30 = v18;
      v19 = swift_allocObject();
      v20 = *a1;
      *(v19 + 88) = a1[1];
      v21 = a1[3];
      *(v19 + 104) = a1[2];
      *(v19 + 120) = v21;
      *(v19 + 16) = v16;
      *(v19 + 24) = v17;
      v22 = v12;
      v23 = v11;
      *(v19 + 32) = v15;
      *(v19 + 40) = v14;
      *(v19 + 48) = v13;
      *(v19 + 49) = *v33;
      *(v19 + 52) = *&v33[3];
      *(v19 + 56) = v11;
      *(v19 + 64) = v22;
      *(v19 + 136) = *(a1 + 8);
      *(v19 + 72) = v20;

      sub_100030444(v11, v22);

      sub_100030444(v11, v22);
      sub_10053A574(a1, aBlock);
      v24 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_10093F8A0;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10027D328;
      aBlock[3] = &unk_1010D0978;
      v25 = _Block_copy(aBlock);

      v26 = [objc_opt_self() actionWithTitle:v24 style:v30 handler:v25];
      _Block_release(v25);

      [v29 addAction:v26];
      if (a1[3])
      {

        sub_100020438(v11, v22);
        v10 = v31;
      }

      else
      {
        v10 = v31;
        if (v31 == *(a1 + 5))
        {
          [v29 setPreferredAction:v26];

          sub_100020438(v23, v22);
        }

        else
        {

          sub_100020438(v23, v22);
        }
      }

      v8 = v10 + 1;
      v9 += 7;
    }

    while (v28 != v8);
  }

  return v29;
}

uint64_t sub_10093F768(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10093F7D8()
{
  type metadata accessor for URL();

  sub_10093F330();
}

unint64_t sub_10093F848()
{
  result = qword_1011A79E0;
  if (!qword_1011A79E0)
  {
    _s3__C25OpenExternalURLOptionsKeyVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A79E0);
  }

  return result;
}

uint64_t sub_10093F8AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_10093E59C(a1, v4, v5, v1 + 32, v1 + 88);
}

void Alert.Action.init(id:title:role:perform:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a7;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v19;
    (*(v16 + 8))(v18, v15);
  }

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  v20 = v22;
  *(a8 + 40) = a6;
  *(a8 + 48) = v20;
}

void __swiftcall Alert.init(title:message:image:style:preferredActionIndex:actions:)(MusicCore::Alert *__return_ptr retstr, Swift::String_optional title, Swift::String_optional message, UIImage_optional image, MusicCore::Alert::Style style, Swift::Int_optional preferredActionIndex, Swift::OpaquePointer actions)
{
  retstr->title = title;
  retstr->message = message;
  retstr->style = image.is_nil;
  *(&retstr->preferredActionIndex.value + 7) = style;
  LOBYTE(retstr->actions._rawValue) = preferredActionIndex.value & 1;
  retstr->image.value.super.isa = *&preferredActionIndex.is_nil;
  *&retstr->image.is_nil = image.value.super.isa;
}

uint64_t Alert.Action.perform(from:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v8 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v2 + 16) = v5;
    *v5 = v2;
    v5[1] = sub_10002F3F4;

    return v8(v1, a1);
  }

  else
  {
    v7 = *(v2 + 8);

    return v7();
  }
}

void *Alert.image.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

unint64_t sub_10093FC38()
{
  result = qword_1011A95C0;
  if (!qword_1011A95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A95C0);
  }

  return result;
}

unint64_t sub_10093FC90()
{
  result = qword_1011A95C8;
  if (!qword_1011A95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A95C8);
  }

  return result;
}

uint64_t sub_10093FD04(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_10093FD3C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v38 = a2;
  ObjectType = swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v38 - v11;
  *&v4[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction] = 0;
  v13 = &v4[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration];
  v14 = a1[3];
  *(v13 + 2) = a1[2];
  *(v13 + 3) = v14;
  *(v13 + 4) = a1[4];
  v15 = a1[1];
  *v13 = *a1;
  *(v13 + 1) = v15;
  sub_100940ABC(a1, v42);
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
  v17 = String._bridgeToObjectiveC()();
  [v16 setTitle:v17];

  if (*(a1 + 5))
  {

    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  [v16 setMessage:{v18, v38, v39}];

  v19 = v16;
  [v19 setPreferredStyle:1];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v22 = *a1;
  *(v21 + 40) = a1[1];
  v23 = a1[3];
  *(v21 + 56) = a1[2];
  *(v21 + 72) = v23;
  *(v21 + 88) = a1[4];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  aBlock[4] = sub_100940AF4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010D0CE0;
  v24 = _Block_copy(aBlock);
  sub_100940ABC(a1, v42);

  [v19 addTextFieldWithConfigurationHandler:v24];
  _Block_release(v24);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v8 + 16))(v10, v12, v7);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v25 = qword_101219808;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v8 + 8))(v12, v7);
  v26 = String._bridgeToObjectiveC()();

  v27 = objc_opt_self();
  v28 = [v27 actionWithTitle:v26 style:1 handler:0];

  [v19 addAction:v28];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = swift_allocObject();
  v31 = v38;
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v39;

  v32 = String._bridgeToObjectiveC()();
  v42[4] = sub_100940B00;
  v42[5] = v30;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 1107296256;
  v42[2] = sub_10027D328;
  v42[3] = &unk_1010D0D30;
  v33 = _Block_copy(v42);

  v34 = [v27 actionWithTitle:v32 style:0 handler:v33];
  _Block_release(v33);

  sub_100940B0C(a1);
  [v34 setEnabled:0];
  v35 = *(v19 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction);
  *(v19 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction) = v34;
  v36 = v34;

  [v19 addAction:v36];
  [v19 setPreferredAction:v36];

  return v19;
}

void sub_100940330(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  v8 = *(Strong + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration + 8);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_6;
  }

  if (v8 != 1)
  {
    v9 = *(Strong + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration);

    v10 = String._bridgeToObjectiveC()();
    v6 = sub_10089840C(v9, v8);
LABEL_6:
    [a1 setText:{v10, v6}];
  }

  if (*(a3 + 56))
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [a1 setPlaceholder:v11];

  [a1 setAutocapitalizationType:2];
  [a1 setReturnKeyType:9];
  [a1 setDelegate:v7];
}

void sub_10094046C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong textFields];
    if (!v6)
    {

      return;
    }

    v7 = v6;
    sub_100940B3C();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      v11 = [v10 text];
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      a3(v13, v15);
      goto LABEL_14;
    }

LABEL_14:
  }
}

uint64_t sub_10094060C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 text];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = objc_allocWithZone(NSString);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithString:v9];

  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringByReplacingCharactersInRange:a2 withString:{a3, v11}];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = String.trim()();

  v17 = v16._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v16._object & 0x2000000000000000) != 0)
  {
    v17 = (v16._object >> 56) & 0xF;
  }

  v18 = v17 != 0;
  v19 = *(v3 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration + 8);
  if (v19 == 1)
  {

    goto LABEL_14;
  }

  if (!v17)
  {
    goto LABEL_11;
  }

  if (v19)
  {
    if (v13 == *(v3 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration) && v19 == v15)
    {
LABEL_11:

      v18 = 0;
      goto LABEL_14;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v20 ^ 1;
  }

  else
  {

    v18 = 1;
  }

LABEL_14:
  v21 = *(v3 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction);
  if (v21)
  {
    [v21 setEnabled:v18 & 1];
  }

  return 1;
}

uint64_t sub_1009409D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1009409F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100940A10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100940A58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100940B3C()
{
  result = qword_1011A9668[0];
  if (!qword_1011A9668[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1011A9668);
  }

  return result;
}

uint64_t sub_100940B88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_100940BE4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t ArtworkVideoReportingController.__allocating_init()()
{
  v0 = swift_allocObject();
  ArtworkVideoReportingController.init()();
  return v0;
}

uint64_t *ArtworkVideoReportingController.init()()
{
  v1 = *v0;
  *(v0 + 16) = 0;
  v0[3] = 0;
  v0[4] = 0;
  v2 = *(v1 + 80);
  swift_getTupleTypeMetadata2();
  v3 = static Array._allocateUninitialized(_:)();
  v4 = sub_10003B32C(v3, v2, &type metadata for ComponentRenderEventSignposts, *(v1 + 88));

  v0[5] = v4;
  return v0;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_100030444(v1, *(v0 + 32));
  return v1;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_100020438(v5, v6);
}

void ArtworkVideoReportingController.componentWillAppear(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v33 = *(v4 - 8);
  __chkstk_darwin();
  v35 = &v25[-v5];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v10 = *(v3 + 88);

  v34 = a1;
  v32 = v10;
  Dictionary.subscript.getter();

  v11 = v36;
  if (v36 == 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v26 = 4;
LABEL_6:
    v17 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v9, v6);
    v19 = [v17 serverTimeFromDate:isa];

    (*(v33 + 16))(v35, v34, v4);
    v20 = v30;
    v21 = v31;
    v36 = v19;
    v37 = v30;
    v23 = v28;
    v22 = v29;
    v38 = v31;
    v39 = v29;
    v24 = v27;
    v40 = v28;
    v41 = v27;
    v42 = v26;
    swift_beginAccess();
    v34 = type metadata accessor for Dictionary();
    v11 = v19;
    v15 = v20;
    v16 = v21;
    v14 = v22;
    v12 = v23;
    v13 = v24;
    Dictionary.subscript.setter();
    swift_endAccess();
    goto LABEL_7;
  }

  v12 = v40;
  v13 = v41;
  v14 = v39;
  if (!v36)
  {
    v26 = v42;
    v30 = v37;
    v31 = v38;
    v28 = v40;
    v29 = v39;
    v27 = v41;
    goto LABEL_6;
  }

  v15 = v37;
  v16 = v38;
LABEL_7:
}

void ArtworkVideoReportingController.placeholderDidAppear(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v29[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v32 = v12;
    v33 = a1;
    Dictionary.subscript.getter();

    v13 = v37;
    if (v37 == 1)
    {
      v31 = v1;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v14 = 0;
      v13 = 0;
      v15 = 4;
    }

    else
    {
      v35 = v41;
      v36 = v42;
      v14 = v39;
      v34 = v40;
      v16 = v38;
      if (v38)
      {

        v17 = v36;
LABEL_8:

        return;
      }

      v31 = v1;
      v15 = v43;
    }

    v30 = v15;
    v18 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v11, v8);
    v20 = [v18 serverTimeFromDate:isa];

    (*(v5 + 16))(v7, v33, v4);
    v37 = v13;
    v38 = v20;
    v21 = v34;
    v22 = v35;
    v39 = v14;
    v40 = v34;
    v23 = v36;
    v41 = v35;
    v42 = v36;
    v43 = v30;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v17 = v13;
    v24 = v20;
    v25 = v14;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    Dictionary.subscript.setter();
    swift_endAccess();

    goto LABEL_8;
  }
}

void ArtworkVideoReportingController.videoArtworkWasSelectedForPlayback(at:isReadyForDisplay:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v38 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    v39 = a2;
    swift_beginAccess();
    v15 = *(v6 + 88);

    v38[1] = v15;
    Dictionary.subscript.getter();

    v16 = v41;
    v40 = a1;
    if (v41 == 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0uLL;
      v20 = 4;
      v21 = 0uLL;
    }

    else
    {
      v20 = v45;
      v21 = v44;
      v19 = v43;
      v17 = v42;
      v18 = v43;
    }

    v46 = v16;
    v47 = v17;
    v48 = v19;
    v49 = v21;
    v50 = v20;
    v22 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v14, v11);
    v24 = [v22 serverTimeFromDate:isa];

    *&v48 = v24;
    sub_1009418D4(v39 & 1);
    (*(v8 + 16))(v10, v40, v7);
    v25 = v46;
    v26 = v47;
    v27 = v48;
    v28 = v49;
    v41 = v46;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = *(&v27 + 1);
    v33 = v28;
    v34 = *(&v28 + 1);
    Dictionary.subscript.setter();
    swift_endAccess();
    v35 = v47;
    v36 = v48;
    v37 = v49;
  }
}

void sub_1009418D4(char a1)
{
  v3 = *(v1 + 48);
  if (v3 <= 2)
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      return;
    }
  }

  else if (v3 == 3)
  {

    return;
  }

  if (a1)
  {
    *(v1 + 48) = 0;
    return;
  }

  if (*(v1 + 24))
  {
    v5 = 1;
  }

  else
  {
    if (!*(v1 + 8))
    {
      return;
    }

    v5 = 2;
  }

  *(v1 + 48) = v5;
}

void ArtworkVideoReportingController.videoArtworkWillBeginLoading(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v29 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    v35 = v8;
    swift_beginAccess();
    v13 = *(v4 + 88);

    v33 = v13;
    Dictionary.subscript.getter();

    v14 = v36;
    v34 = a1;
    if (v36 == 1)
    {
      v14 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v15 = 0;
    }

    else
    {
      v31 = v40;
      v32 = v41;
      v15 = v39;
      v30 = v38;
      v29 = v37;
    }

    v16 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v12, v9);
    v18 = [v16 serverTimeFromDate:isa];

    (*(v6 + 16))(v35, v34, v5);
    v19 = v29;
    v36 = v14;
    v37 = v29;
    v20 = v30;
    v38 = v30;
    v39 = v18;
    v21 = v31;
    v22 = v32;
    v40 = v31;
    v41 = v32;
    v42 = 4;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v23 = v14;
    v24 = v19;
    v25 = v20;
    v26 = v18;
    v27 = v21;
    v28 = v22;
    Dictionary.subscript.setter();
    swift_endAccess();
  }
}

void ArtworkVideoReportingController.videoArtworkDidCancelLoading(at:)(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v29 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v36 = v12;
    Dictionary.subscript.getter();

    v13 = v37;
    if (v37 != 1)
    {
      v34 = v43;
      v29[0] = v42;
      v32 = v40;
      v33 = v41;
      v31 = v39;
      v30 = v38;
      v14 = objc_opt_self();
      Date.init()();
      v29[1] = v1;
      v15.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v16 = a1;
      v35 = a1;
      isa = v15.super.isa;
      (*(v9 + 8))(v11, v8);
      v18 = [v14 serverTimeFromDate:isa];

      (*(v5 + 16))(v7, v16, v4);
      v19 = v30;
      v37 = v13;
      v38 = v30;
      v20 = v31;
      v22 = v32;
      v21 = v33;
      v39 = v31;
      v40 = v32;
      v41 = v33;
      v42 = v18;
      v43 = v34;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      v36 = v13;
      v23 = v19;
      v24 = v20;
      v25 = v22;
      v26 = v21;
      v27 = v18;
      Dictionary.subscript.setter();
      swift_endAccess();
      v28 = v35;
      sub_100942480(v35);
      _s9MusicCore31ArtworkVideoReportingControllerC05videoC15DidStopPlayback2atyx_tF_0(v28);
    }
  }
}

void ArtworkVideoReportingController.videoArtworkDidStartPlayback(at:)(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v28 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v35 = v12;
    Dictionary.subscript.getter();

    v13 = v36;
    if (v36 != 1)
    {
      v33 = v42;
      v32 = v41;
      v28[0] = v40;
      v31 = v39;
      v30 = v38;
      v29 = v37;
      v14 = objc_opt_self();
      Date.init()();
      v28[1] = v1;
      v15.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v16 = a1;
      v34 = a1;
      isa = v15.super.isa;
      (*(v9 + 8))(v11, v8);
      v18 = [v14 serverTimeFromDate:isa];

      (*(v5 + 16))(v7, v16, v4);
      v19 = v29;
      v36 = v13;
      v37 = v29;
      v20 = v30;
      v22 = v31;
      v21 = v32;
      v38 = v30;
      v39 = v31;
      v40 = v18;
      v41 = v32;
      v42 = v33;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      v35 = v13;
      v23 = v19;
      v24 = v20;
      v25 = v22;
      v26 = v18;
      v27 = v21;
      Dictionary.subscript.setter();
      swift_endAccess();
      sub_100942480(v34);
    }
  }
}

void sub_100942480(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v52[-v7];
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    swift_beginAccess();

    Dictionary.subscript.getter();

    v9 = v81;
    if (v81 != 1)
    {
      v66 = a1;
      v59 = v6;
      v60 = v4;
      v64 = v8;
      v61 = v3;
      v10 = *(&v81 + 1);
      v11 = *(&v82 + 1);
      v12 = v82;
      v13 = *(&v83 + 1);
      v14 = v83;
      v15 = v84;
      v87[0] = v81;
      v87[1] = v82;
      v87[2] = v83;
      v88 = v84;
      swift_beginAccess();
      v16 = *(v1 + 24);
      if (v16)
      {
        v65 = v15;
        v17 = *(v1 + 32);

        v18 = v16(v66);
        v62 = v19;
        v63 = v18;
        v21 = v20;
        sub_100020438(v16, v17);
        v22 = v13;
        v23 = v9;
        v24 = v10;
        v25 = v12;
        v26 = v11;
        v27 = v14;
        sub_100943010(v87, v63, v62, v21, &v77);
        v75 = v79;
        v76[0] = *v80;
        *(v76 + 9) = *&v80[9];
        v73 = v77;
        v74 = v78;
        v28 = *v80;
        if (*v80)
        {
          v81 = v77;
          v82 = v78;
          v83 = v79;
          v84 = *v80;
          v85 = *&v80[8];
          v86 = v80[24];
          if (*&v80[8])
          {
            v55 = v10;
            v56 = v12;
            v57 = v9;
            v58 = v11;
            v62 = v14;
            v63 = v13;
            v29 = *&v80[8];
            [v29 doubleValue];
            v31 = v30;
            [v28 doubleValue];
            v33 = v32;
            if (qword_1011A6948 != -1)
            {
              swift_once();
            }

            v34 = type metadata accessor for Logger();
            sub_1000060E4(v34, static Logger.motion);
            v36 = v60;
            v35 = v61;
            v37 = *(v60 + 16);
            v38 = v64;
            v37(v64, v66, v61);
            v71[2] = v75;
            v72[0] = v76[0];
            *(v72 + 9) = *(v76 + 9);
            v71[0] = v73;
            v71[1] = v74;
            sub_100943298(v71, v70);
            v39 = Logger.logObject.getter();
            v40 = static os_log_type_t.debug.getter();
            sub_100943230(&v77);
            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v66 = v29;
              v42 = v36;
              v43 = v41;
              v54 = swift_slowAlloc();
              v69 = v54;
              *v43 = 136315650;
              v70[0] = v81;
              v68 = v81;
              v53 = v40;
              sub_1000089F8(v70, &v67, &unk_1011ACB70, &qword_100EEEF60);
              sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
              v44 = String.init<A>(describing:)();
              v46 = sub_100010678(v44, v45, &v69);

              *(v43 + 4) = v46;
              *(v43 + 12) = 2080;
              v47 = v64;
              v37(v59, v64, v35);
              v48 = String.init<A>(describing:)();
              v50 = v49;
              (*(v42 + 8))(v47, v35);
              v51 = sub_100010678(v48, v50, &v69);

              *(v43 + 14) = v51;
              *(v43 + 22) = 2048;
              *(v43 + 24) = v31 - v33;
              _os_log_impl(&_mh_execute_header, v39, v53, "Item with id: %s at index: %s loaded enough data to start playback in %f ms.", v43, 0x20u);
              swift_arrayDestroy();
            }

            else
            {

              (*(v36 + 8))(v38, v35);
            }

            v14 = v62;
            v13 = v63;
            v9 = v57;
            v11 = v58;
            v10 = v55;
            v12 = v56;
          }

          if (qword_1011A6810 != -1)
          {
            swift_once();
          }

          MetricsReportingController.recordComponentRenderEvent(_:)(&v81);
          sub_100943230(&v77);
        }
      }

      sub_1009431BC(v9, v10, v12, v11, v14, v13);
    }
  }
}

void _s9MusicCore31ArtworkVideoReportingControllerC05videoC15DidStopPlayback2atyx_tF_0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v16 - v5;
  swift_beginAccess();

  Dictionary.subscript.getter();

  v7 = v19;
  if (v19 != 1)
  {
    v17 = v20;
    v8 = v23;
    v18 = v22;
    v9 = v24;
    v10 = v25;

    if (v8)
    {

      v10 = 3;
    }

    (*(v4 + 16))(v6, a1, v3);
    v12 = v17;
    v11 = v18;
    v19 = v7;
    v20 = v17;
    v21 = 0;
    v22 = v18;
    v23 = 0;
    v24 = 0;
    v25 = v10;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v13 = v7;
    v14 = v12;
    v15 = v11;
    Dictionary.subscript.setter();
    swift_endAccess();
  }
}

uint64_t *ArtworkVideoReportingController.deinit()
{
  sub_100020438(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t ArtworkVideoReportingController.__deallocating_deinit()
{
  sub_100020438(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_100942CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100942D28(a1, v6, a2, a3);
}

unint64_t sub_100942D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

__n128 sub_100942F24(uint64_t a1, uint64_t a2)
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

uint64_t sub_100942F40(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_100942F9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100943010@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = a1[3];
  v43 = v8;
  if (v8)
  {
    v11 = *a1;
    v41 = a1[1];
    v42 = v11;
    v12 = a1[2];
    v13 = a1[5];
    v39 = a1[4];
    v40 = v12;
    v38 = v13;
    sub_1000089F8(&v43, v29, &qword_1011A96F8, &unk_100EF0A20);
    sub_1000089F8(&v42, v29, &qword_1011A96F8, &unk_100EF0A20);
    sub_1000089F8(&v41, v29, &qword_1011A96F8, &unk_100EF0A20);
    sub_1000089F8(&v40, v29, &qword_1011A96F8, &unk_100EF0A20);
    sub_1000089F8(&v39, v29, &qword_1011A96F8, &unk_100EF0A20);
    sub_1000089F8(&v38, v29, &qword_1011A96F8, &unk_100EF0A20);
    sub_1009432F4(a1);
    v14 = *(a1 + 48);
    *&v23 = a2;
    *(&v23 + 1) = a3;
    LOBYTE(v24) = a4;
    *(&v24 + 1) = v42;
    *&v25 = v41;
    *(&v25 + 1) = v40;
    *&v26 = v8;
    *(&v26 + 1) = v39;
    v27 = v38;
    v28 = v14;
    v29[0] = a2;
    v29[1] = a3;
    v30 = a4;
    v31 = v42;
    v32 = v41;
    v33 = v40;
    v34 = v8;
    v35 = v39;
    v36 = v38;
    v37 = v14;
    sub_100943298(&v23, &v22);
    result = sub_100943324(v29);
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
  }

  else
  {

    result = sub_1009432F4(a1);
    v20 = 0;
    v21 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a5 = v16;
  *(a5 + 16) = v17;
  *(a5 + 32) = v18;
  *(a5 + 48) = v19;
  *(a5 + 64) = v20;
  *(a5 + 72) = v21;
  return result;
}

void sub_1009431BC(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_100943230(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A96F0, &unk_100EF0A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CarNowPlayingMetrics.Data.init(timePlayed:tracksPlayed:rangeStartTime:sharedSessionIds:sharedSessionMaxParticipants:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_100943410()
{
  v1 = *v0;
  v2 = 0x79616C50656D6974;
  v3 = 0x61745365676E6172;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50736B63617274;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1009434C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1009450D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1009434F0(uint64_t a1)
{
  v2 = sub_1009437C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10094352C(uint64_t a1)
{
  v2 = sub_1009437C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CarNowPlayingMetrics.Data.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011A9700, &qword_100EF0A30);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_10000954C(a1, a1[3]);
  sub_1009437C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 24);
    v10[15] = 3;
    sub_10010FC20(&qword_1011A9710, &unk_100EF0A38);
    sub_100945C1C(&qword_1011A9718, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[14] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1009437C0()
{
  result = qword_1011A9708;
  if (!qword_1011A9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9708);
  }

  return result;
}

double CarNowPlayingMetrics.Data.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1009452A8(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double static CarNowPlayingMetrics.persistedMetricsData(for:)@<D0>(uint64_t a2@<X8>)
{
  sub_100945534(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t Logger.carMetrics.unsafeMutableAddressor()
{
  if (qword_1011A6768 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.carMetrics);
}

void static CarNowPlayingMetrics.storeMetricsData(_:for:)(__n128 *a1, char a2)
{
  if (a1[1].n128_u64[1])
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_1009458DC();
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v5 = v4;

    v6 = [objc_opt_self() standardUserDefaults];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = String._bridgeToObjectiveC()();

    [v6 setValue:isa forKey:v8];

    sub_10002C064(v3, v5);
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v9 = String._bridgeToObjectiveC()();

    [v2 setValue:0 forKey:v9];
  }
}

void sub_100943CE0(int a1)
{
  v62 = *v1;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v61 = &v58 - v3;
  v4 = type metadata accessor for Calendar();
  v59 = *(v4 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v64 = *(v6 - 8);
  __chkstk_darwin();
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v58 - v8;
  if (qword_1011A6768 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, static Logger.carMetrics);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v65 = a1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v68 = v15;
    *v14 = 136446210;
    LOBYTE(v72) = a1 & 1;
    v16 = String.init<A>(describing:)();
    v18 = v9;
    v19 = sub_100010678(v16, v17, &v68);

    *(v14 + 4) = v19;
    v9 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reporting %{public}s playsSummary event if needed", v14, 0xCu);
    sub_10000959C(v15);
  }

  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v20 = COERCE_DOUBLE(sub_10095107C());
  if (v21)
  {
    v22 = 86400000.0;
  }

  else
  {
    v22 = v20;
  }

  v23 = v65 & 1;
  sub_100945534(&v68);
  v24 = v70;
  if (v70)
  {
    v25 = v69;
    v26 = v71;
    v72 = v68;
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v28 = v27;
    v29 = *(v64 + 8);
    v29(v9, v6);
    v30 = (v28 - v25) * 1000.0;
    if (v22 < v30)
    {
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v32 = v31;
      v29(v9, v6);
      v33 = v63;
      static Calendar.current.getter();
      v34 = v60;
      static Date.now.getter();
      Calendar.startOfDay(for:)();
      v29(v34, v6);
      (*(v59 + 8))(v33, v4);
      Date.timeIntervalSince1970.getter();
      v36 = v35;
      v29(v9, v6);
      v37 = type metadata accessor for TaskPriority();
      v38 = v61;
      (*(*(v37 - 8) + 56))(v61, 1, 1, v37);
      type metadata accessor for MainActor();
      v39 = static MainActor.shared.getter();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = &protocol witness table for MainActor;
      *(v40 + 32) = v72;
      *(v40 + 48) = v25;
      *(v40 + 56) = v24;
      *(v40 + 64) = v26;
      *(v40 + 72) = v36;
      *(v40 + 80) = v23;
      *(v40 + 88) = v32;
      *(v40 + 96) = v62;
      sub_100969440(0, 0, v38, &unk_100EF0C90, v40);

      return;
    }

    sub_1000095E8(&v68, &qword_1011A97E8, &qword_100EF0C80);
    v41 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v53))
    {
      v54 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v67 = v44;
      *v54 = 136446722;
      v66 = v23;
      v55 = String.init<A>(describing:)();
      v57 = sub_100010678(v55, v56, &v67);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2050;
      *(v54 + 14) = v30;
      *(v54 + 22) = 2050;
      *(v54 + 24) = v22;
      v48 = "❌ Failed to configure %{public}s playsSummary event: range=%{public}f ms isn't greater than post frequency=%{public}f ms";
      v49 = v53;
      v50 = v41;
      v51 = v54;
      v52 = 32;
      goto LABEL_17;
    }
  }

  else
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v72 = v44;
      *v43 = 136446210;
      LOBYTE(v67) = v23;
      v45 = String.init<A>(describing:)();
      v47 = sub_100010678(v45, v46, &v72);

      *(v43 + 4) = v47;
      v48 = "❌ Failed to configure %{public}s playsSummary event: no persisted metrics data";
      v49 = v42;
      v50 = v41;
      v51 = v43;
      v52 = 12;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v50, v49, v48, v51, v52);
      sub_10000959C(v44);
    }
  }
}

uint64_t sub_1009443E4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 624) = a2;
  *(v7 + 688) = a7;
  *(v7 + 616) = a1;
  *(v7 + 608) = a6;
  v8 = type metadata accessor for UUID();
  *(v7 + 632) = v8;
  *(v7 + 640) = *(v8 - 8);
  *(v7 + 648) = swift_task_alloc();
  v9 = type metadata accessor for DispatchPredicate();
  *(v7 + 656) = v9;
  *(v7 + 664) = *(v9 - 8);
  *(v7 + 672) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 680) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100944540, v11, v10);
}

uint64_t sub_100944540()
{

  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 688);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v35 = static MetricsReportingController.shared;
  sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_100ED1A70;
  strcpy((inited + 32), "totalDuration");
  *(inited + 46) = -4864;
  *(inited + 48) = round(*v7 * 1000.0);
  *(inited + 72) = &type metadata for Double;
  *(inited + 80) = 0x6E756F4379616C70;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = *(v7 + 8);
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0x6D6954746E657665;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = round(v6 * 1000.0);
  *(inited + 168) = &type metadata for Double;
  *(inited + 176) = 0x707954746E657665;
  *(inited + 184) = 0xE900000000000065;
  strcpy((inited + 192), "playsSummary");
  *(inited + 205) = 0;
  *(inited + 206) = -5120;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x6F436E6F69746361;
  v10 = v5 & 1;
  v11 = 0x79616C50726143;
  if (v10)
  {
    v11 = 0x746F6F7465756C62;
  }

  v12 = 0xE900000000000068;
  if (!v10)
  {
    v12 = 0xE700000000000000;
  }

  *(inited + 232) = 0xED0000747865746ELL;
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 264) = &type metadata for String;
  strcpy((inited + 272), "rangeStartTime");
  *(inited + 287) = -18;
  *(inited + 288) = round(*(v7 + 16) * 1000.0);
  *(inited + 312) = &type metadata for Double;
  strcpy((inited + 320), "rangeEndTime");
  *(inited + 333) = 0;
  *(inited + 334) = -5120;
  *(inited + 336) = round(v4 * 1000.0);
  *(inited + 360) = &type metadata for Double;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x8000000100E5BED0;
  *(inited + 384) = *(*(v7 + 24) + 16);
  *(inited + 408) = &type metadata for Int;
  *(inited + 416) = 0xD000000000000018;
  *(inited + 424) = 0x8000000100E5BEF0;
  v13 = sub_100952368(*(v7 + 32));
  v9[57] = &type metadata for String;
  v9[54] = v13;
  v9[55] = v14;
  sub_1008BC8D8(v9);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A8618, &qword_100EED8E0);
  swift_arrayDestroy();
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  sub_10002705C();
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v1, v3);
  if (v16)
  {
    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v34 = *(v0 + 632);
    v20 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:0];
    [v20 setShouldSuppressDSIDHeader:0];

    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_100EBC6B0;
    strcpy((v22 + 32), "clientEventId");
    *(v22 + 46) = -4864;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v19 + 8))(v18, v34);
    *(v22 + 72) = &type metadata for String;
    *(v22 + 48) = v23;
    *(v22 + 56) = v25;
    sub_1008BC8D8(v22);
    swift_setDeallocating();
    sub_1000095E8(v22 + 32, &qword_1011A8618, &qword_100EED8E0);
    v26 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 addPropertiesWithDictionary:v26];

    v27 = *&v35[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v28 = swift_allocObject();
    v28[2] = v20;
    v28[3] = 0xD000000000000014;
    v28[4] = 0x8000000100E5BEB0;
    v28[5] = v35;
    v28[6] = sub_100945BB0;
    v28[7] = v15;
    *(v0 + 592) = sub_100945BB8;
    *(v0 + 600) = v28;
    *(v0 + 560) = _NSConcreteStackBlock;
    *(v0 + 568) = 1107296256;
    *(v0 + 576) = sub_10002BC98;
    *(v0 + 584) = &unk_1010D11A8;
    v29 = _Block_copy((v0 + 560));
    v30 = v27;
    v31 = v35;

    v32 = v20;

    [v32 setStandardPropertiesWith:v30 completionHandler:v29];
    _Block_release(v29);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100944BF8(uint64_t a1, char a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1011A6768 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, static Logger.carMetrics);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v5 = 136446466;
      v6 = String.init<A>(describing:)();
      v8 = sub_100010678(v6, v7, &v22);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2082;
      swift_errorRetain();
      sub_10010FC20(&qword_1011AB640, L"D\v\a");
      v9 = String.init<A>(describing:)();
      v11 = sub_100010678(v9, v10, &v22);

      *(v5 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "❌ Failed to report %{public}s playsSummary event with error=%{public}s", v5, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1011A6768 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, static Logger.carMetrics);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      v17 = String.init<A>(describing:)();
      v19 = sub_100010678(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "✅ Reported %{public}s playsSummary event", v15, 0xCu);
      sub_10000959C(v16);
    }

    v20 = [objc_opt_self() standardUserDefaults];
    v21 = String._bridgeToObjectiveC()();

    [v20 setValue:0 forKey:v21];
  }
}

uint64_t sub_100944FB4()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.carMetrics);
  sub_1000060E4(v0, static Logger.carMetrics);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.carMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A6768 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.carMetrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1009450D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50736B63617274 && a2 == 0xEC00000064657961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61745365676E6172 && a2 == 0xEE00656D69547472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100E5BE70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000100E5BE90 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1009452A8(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10010FC20(&qword_1011A97F8, &unk_100EF0CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v16 - v7;
  sub_10000954C(a1, a1[3]);
  sub_1009437C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000959C(a1);
  }

  else
  {
    v21 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v20 = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    sub_10010FC20(&qword_1011A9710, &unk_100EF0A38);
    v18 = 3;
    sub_100945C1C(&qword_1011A9800, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v16[1];
    v17 = 4;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    sub_10000959C(a1);
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v13;
    a2[3] = v14;
    a2[4] = v15;
  }
}

void sub_100945534(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v10 = v15;
  v11 = v16;
  if (!*(&v16 + 1))
  {
    sub_1000095E8(&v10, &qword_1011ABB20, &unk_100EF1530);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0uLL;
    goto LABEL_9;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100945BC8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10002C064(v13, v14);

  v6 = v10;
  v8 = *(&v11 + 1);
  v7 = v11;
  v9 = v12;
LABEL_9:
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
}

unint64_t sub_1009458DC()
{
  result = qword_1011A9720;
  if (!qword_1011A9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9720);
  }

  return result;
}

unint64_t sub_100945934()
{
  result = qword_1011A9728;
  if (!qword_1011A9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9728);
  }

  return result;
}

unint64_t sub_1009459CC()
{
  result = qword_1011A97D0;
  if (!qword_1011A97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A97D0);
  }

  return result;
}

unint64_t sub_100945A24()
{
  result = qword_1011A97D8;
  if (!qword_1011A97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A97D8);
  }

  return result;
}

unint64_t sub_100945A7C()
{
  result = qword_1011A97E0;
  if (!qword_1011A97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A97E0);
  }

  return result;
}

uint64_t sub_100945AD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1009443E4(v6, v8, a1, v4, v5, v1 + 32, v7);
}

unint64_t sub_100945BC8()
{
  result = qword_1011A97F0;
  if (!qword_1011A97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A97F0);
  }

  return result;
}

uint64_t sub_100945C1C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011A9710, &unk_100EF0A38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *MPModelObject.metricsDictionary.getter()
{
  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v1 = v0;
  v2 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 effectiveStorePlatformDictionary];

    if (v4)
    {
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 anyObject];
    goto LABEL_8;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v7 = [v8 innerObject];
LABEL_8:
    v9 = v7;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v9 = v1;
LABEL_10:
  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = [v10 identifiers];
  v13 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v12);
  v15 = v14;

  if (v15)
  {
    sub_10010FC20(&qword_1011A9808, &unk_100EF0CB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v17;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v13;
    *(inited + 80) = v15;
    v5 = sub_100060DEC(inited);
    swift_setDeallocating();
    sub_100946490(inited + 32);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      AnyHashable.init<A>(_:)();
      v29 = &type metadata for String;
      *&v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v28 + 1) = v18;
      sub_100016270(&v28, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100068158(v27, &v30, isUniquelyReferenced_nonNull_native);
      sub_10001621C(&v30);
    }
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v20 = MPModelPropertyPlaylistType;
      v21 = v1;
      if ([v5 hasLoadedValueForKey:v20] && objc_msgSend(v5, "type") == 9)
      {
        sub_10010FC20(&qword_1011A9808, &unk_100EF0CB0);
        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_100EBDC20;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        AnyHashable.init<A>(_:)();
        *(v22 + 96) = &type metadata for String;
        strcpy((v22 + 72), "FavoriteSongs");
        *(v22 + 86) = -4864;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v23;
        AnyHashable.init<A>(_:)();
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v22 + 168) = &type metadata for String;
        *(v22 + 144) = v24;
        *(v22 + 152) = v25;
        v5 = sub_100060DEC(v22);
        swift_setDeallocating();
        sub_10010FC20(&unk_1011A8630, &qword_100EED8F8);
        swift_arrayDestroy();
      }

      else
      {

        return 0;
      }
    }
  }

  return v5;
}

id static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, id a4)
{
  v5 = a2;
  if (a3 > 1u)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        result = [a4 library];
        if (!result)
        {
          return result;
        }

        v10 = result;
        if (![result persistentID])
        {
          goto LABEL_55;
        }

        [v10 persistentID];
        v11.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      sub_100009F78(0, &qword_1011A9810, MPModelPlaylist_ptr);
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_27;
      }

      sub_100009F78(0, &unk_1011AAA40, MPModelSocialPerson_ptr);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (a2)
      {
        result = [a4 personalizedStore];
        if (!result)
        {
          return result;
        }

        v13 = result;
        if (![result cloudID])
        {
          goto LABEL_55;
        }

        [v13 cloudID];
        v11.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      sub_100009F78(0, &qword_1011A9810, MPModelPlaylist_ptr);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_27;
      }
    }

    sub_100009F78(v8, qword_1011A9818, MPModelRadioStation_ptr);
    if (!swift_dynamicCastMetatype())
    {
      return MPIdentifierSet.bestStoreIdentifier.getter();
    }

LABEL_43:
    result = [a4 radio];
    if (!result)
    {
      return result;
    }

    v23 = result;
    v24 = [result stationStringID];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        goto LABEL_53;
      }
    }

    if (![v23 stationID])
    {
LABEL_55:
      swift_unknownObjectRelease();
      return 0;
    }

    [v23 stationID];
    v11.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
    v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
LABEL_51:
    v30 = v12;

    if (v30)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_53:
      swift_unknownObjectRelease();
      return v26;
    }

    goto LABEL_55;
  }

  sub_100009F78(0, &qword_1011A9810, MPModelPlaylist_ptr);
  if (!swift_dynamicCastMetatype())
  {
    sub_100009F78(0, &unk_1011AAA40, MPModelSocialPerson_ptr);
    if (swift_dynamicCastMetatype())
    {
      if (v5)
      {
        result = MPIdentifierSet.bestLibraryIdentifier.getter();
        if (v9)
        {
          return result;
        }
      }

      if ((v5 & 2) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a4 universalStore];
      if (v17)
      {
        v15 = [v17 socialProfileID];
LABEL_36:
        v18 = v15;
        swift_unknownObjectRelease();
        if (v18)
        {
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          v22 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v22 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v22)
          {
            return v19;
          }
        }
      }

      return MPIdentifierSet.bestStoreIdentifier.getter();
    }

    sub_100009F78(0, qword_1011A9818, MPModelRadioStation_ptr);
    if (!swift_dynamicCastMetatype())
    {
      if ((v5 & 1) == 0 || (result = MPIdentifierSet.bestLibraryIdentifier.getter(), !v16))
      {
        if ((v5 & 2) == 0)
        {
          return 0;
        }

        return MPIdentifierSet.bestStoreIdentifier.getter();
      }

      return result;
    }

    if ((v5 & 2) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  if ((v5 & 1) == 0 || (result = MPIdentifierSet.bestLibraryIdentifier.getter(), !v7))
  {
    if ((v5 & 2) == 0)
    {
      return 0;
    }

LABEL_27:
    v14 = [a4 universalStore];
    if (v14)
    {
      v15 = [v14 globalPlaylistID];
      goto LABEL_36;
    }

    return MPIdentifierSet.bestStoreIdentifier.getter();
  }

  return result;
}

uint64_t sub_100946490(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011A8630, &qword_100EED8F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, unsigned __int16 a12, uint64_t a13, uint64_t a14)
{
  v69 = a8;
  v64 = a6;
  v65 = a7;
  v61 = a5;
  v60 = a4;
  v63 = a12;
  v62 = a10;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v67 = &v59[-v18];
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  __chkstk_darwin();
  v71 = &v59[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v70 = &v59[-v20];
  __chkstk_darwin();
  v68 = &v59[-v21];
  __chkstk_darwin();
  v66 = &v59[-v22];
  __chkstk_darwin();
  v24 = &v59[-v23];
  __chkstk_darwin();
  v26 = &v59[-v25];
  __chkstk_darwin();
  v28 = &v59[-v27];
  v29 = type metadata accessor for MetricsEvent.Click(0);
  *(a9 + v29[19]) = 0;
  v30 = (a9 + v29[20]);
  *v30 = 0;
  v30[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = v60;
  sub_10003D17C(v61, a9 + v29[7], &qword_1011A77F0, &unk_100EEAA20);
  v31 = v65;
  *(a9 + v29[8]) = v64;
  v32 = (a9 + v29[9]);
  v33 = v69;
  *v32 = v31;
  v32[1] = v33;
  v34 = a9 + v29[10];
  *v34 = v62;
  *(v34 + 16) = a11;
  *(v34 + 24) = v63;
  v69 = a13;
  sub_1000089F8(a13, v28, &qword_1011A7F08, &unk_100EECDE0);
  v35 = type metadata accessor for MetricsEvent.Page(0);
  v36 = *(*(v35 - 1) + 48);
  if (v36(v28, 1, v35) == 1)
  {
    sub_1000095E8(v28, &qword_1011A7F08, &unk_100EECDE0);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v37 = *v28;
    v38 = v28[1];

    sub_100952678(v28, type metadata accessor for MetricsEvent.Page);
  }

  v39 = (a9 + v29[12]);
  *v39 = v37;
  v39[1] = v38;
  v40 = v69;
  sub_1000089F8(v69, v26, &qword_1011A7F08, &unk_100EECDE0);
  if (v36(v26, 1, v35) == 1)
  {
    sub_1000095E8(v26, &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v41 = *(v26 + 2);
    v42 = *(v26 + 3);

    sub_100952678(v26, type metadata accessor for MetricsEvent.Page);
  }

  v43 = (a9 + v29[13]);
  *v43 = v41;
  v43[1] = v42;
  sub_1000089F8(v40, v24, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v36(v24, 1, v35);
  v45 = v67;
  if (v44 == 1)
  {
    sub_1000095E8(v24, &qword_1011A7F08, &unk_100EECDE0);
    v46 = type metadata accessor for URL();
    (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  }

  else
  {
    sub_1000089F8(v24 + v35[6], v67, &qword_1011A77F0, &unk_100EEAA20);
    sub_100952678(v24, type metadata accessor for MetricsEvent.Page);
  }

  v47 = v70;
  v48 = v68;
  sub_10003D17C(v45, a9 + v29[14], &qword_1011A77F0, &unk_100EEAA20);
  v49 = v66;
  sub_1000089F8(v40, v66, &qword_1011A7F08, &unk_100EECDE0);
  if (v36(v49, 1, v35) == 1)
  {
    sub_1000095E8(v49, &qword_1011A7F08, &unk_100EECDE0);
    v50 = 0;
  }

  else
  {
    v50 = *(v49 + v35[7]);

    sub_100952678(v49, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[15]) = v50;
  sub_1000089F8(v40, v48, &qword_1011A7F08, &unk_100EECDE0);
  if (v36(v48, 1, v35) == 1)
  {
    sub_1000095E8(v48, &qword_1011A7F08, &unk_100EECDE0);
    v51 = 1;
  }

  else
  {
    v51 = *(v48 + v35[9]);
    sub_100952678(v48, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[16]) = v51;
  sub_1000089F8(v40, v47, &qword_1011A7F08, &unk_100EECDE0);
  if (v36(v47, 1, v35) == 1)
  {
    sub_1000095E8(v47, &qword_1011A7F08, &unk_100EECDE0);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v54 = (v47 + v35[8]);
    v52 = *v54;
    v53 = v54[1];

    sub_100952678(v47, type metadata accessor for MetricsEvent.Page);
  }

  v55 = (a9 + v29[18]);
  *v55 = v52;
  v55[1] = v53;
  v56 = v71;
  sub_10003D17C(v40, v71, &qword_1011A7F08, &unk_100EECDE0);
  if (v36(v56, 1, v35) == 1)
  {
    result = sub_1000095E8(v56, &qword_1011A7F08, &unk_100EECDE0);
    v58 = 2;
  }

  else
  {
    v58 = *(v56 + v35[11]);
    result = sub_100952678(v56, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[17]) = v58;
  *(a9 + v29[11]) = a14;
  return result;
}

unint64_t MetricsEvent.Click.ActionContext.rawValue.getter(unint64_t a1, int64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          v2 = 0x6E654D6570697773;
          goto LABEL_27;
        case 10:
          v2 = 0xD000000000000010;
          goto LABEL_27;
        case 11:
          v2 = 0x6E65746E49707061;
          goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a2 == 6)
    {
      v2 = 0xD000000000000010;
    }

    else if (a2 == 7)
    {
      v2 = 0xD000000000000015;
    }

    else
    {
      v2 = 0x6853686372616573;
    }
  }

  else
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          v2 = 0x6E6F74747562;
          goto LABEL_27;
        case 1:
          v2 = 0x6472616F6279656BLL;
          goto LABEL_27;
        case 2:
          v2 = 0x79726F7473;
          goto LABEL_27;
      }

LABEL_26:
      v2 = a1;
      goto LABEL_27;
    }

    if (a2 == 3)
    {
      v2 = 1701998445;
    }

    else if (a2 == 4)
    {
      v2 = 0x636972796CLL;
    }

    else
    {
      v2 = 0x6B63617274;
    }
  }

LABEL_27:
  sub_1006334A0(a1, a2);
  return v2;
}

__n128 MetricsEvent.ComponentRender.init(componentIdentifier:componentType:componentAppearTime:componentPlaceholderAppearTime:componentMotionActivationTime:componentRequestTime:componentEndTime:componentInterruptTime:preloadStatus:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v16.n128_u8[0] = a3;
  v16.n128_u64[1] = a4;
  *&v17 = a5;
  *(&v17 + 1) = a6;
  *v18 = a7;
  *&v18[8] = a8;
  *&v18[16] = a10;
  v18[24] = a11;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a10;
  v27 = a11;
  sub_100943298(&v15, &v14);
  sub_100943324(v19);
  v12 = *v18;
  *(a9 + 32) = v17;
  *(a9 + 48) = v12;
  *(a9 + 57) = *&v18[9];
  result = v16;
  *a9 = v15;
  *(a9 + 16) = result;
  return result;
}

uint64_t sub_100946E94()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v36 - v3;
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = type metadata accessor for Date();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  __chkstk_darwin();
  v13 = &v36 - v12;
  __chkstk_darwin();
  v15 = &v36 - v14;
  swift_beginAccess();
  v16 = *(v0 + 16);
  v17 = sub_1009571B8();

  if (v17)
  {
    return 1;
  }

  v19 = sub_100957510();
  v18 = 1;
  if (v19)
  {
    v40 = 0.0;
    v41 = 1;
    v20 = v19;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v41 != 1)
    {
      v21 = v40;
      v22 = sub_100956FD4();
      if (v22)
      {
        v40 = 0.0;
        v41 = 1;
        v23 = v22;
        static Double._conditionallyBridgeFromObjectiveC(_:result:)();

        if ((v41 & 1) == 0)
        {
          Date.init()();
          v24 = *(v1 + 16);
          sub_100957260(v4);
          sub_10003D17C(v4, v6, &qword_1011A9B20, &qword_100EF1560);

          v25 = v38;
          v26 = v39;
          if ((*(v38 + 48))(v6, 1, v39))
          {
            sub_1000095E8(v6, &qword_1011A9B20, &qword_100EF1560);
            v27 = v26;
            v28 = v25;
          }

          else
          {
            (*(v25 + 16))(v9, v6, v26);
            sub_1000095E8(v6, &qword_1011A9B20, &qword_100EF1560);
            Date.addingTimeInterval(_:)();
            v29 = v9;
            v30 = *(v25 + 8);
            v30(v29, v26);
            (*(v25 + 32))(v13, v11, v26);
            v31 = static Date.< infix(_:_:)();
            v30(v13, v26);
            v27 = v26;
            v28 = v25;
            if (v31)
            {
              v30(v15, v26);
              return 1;
            }
          }

          v32 = sub_100173A78(0x20000000000001uLL);
          if (v32 == 0x20000000000000)
          {
            if (v21 >= 1.0)
            {
LABEL_17:
              (*(v28 + 16))(v4, v15, v27);
              v18 = 1;
              (*(v28 + 56))(v4, 0, 1, v27);
              swift_beginAccess();
              v34 = v37;
              sub_1000089F8(v4, v37, &qword_1011A9B20, &qword_100EF1560);
              sub_10095737C(v34);
              swift_endAccess();
              sub_1000095E8(v4, &qword_1011A9B20, &qword_100EF1560);
              (*(v28 + 8))(v15, v27);
              return v18;
            }
          }

          else
          {
            v33 = vcvtd_n_f64_u64(v32, 0x35uLL);
            if (v33 > 0.0 && v33 <= v21)
            {
              goto LABEL_17;
            }
          }

          (*(v28 + 8))(v15, v27);
          return 0;
        }
      }
    }
  }

  return v18;
}

uint64_t sub_10094737C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v36 - v3;
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = type metadata accessor for Date();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  __chkstk_darwin();
  v13 = &v36 - v12;
  __chkstk_darwin();
  v15 = &v36 - v14;
  swift_beginAccess();
  v16 = *(v0 + 16);
  v17 = sub_100957888();

  if (v17)
  {
    return 1;
  }

  v19 = sub_10095212C();
  v18 = 1;
  if (v19)
  {
    v40 = 0.0;
    v41 = 1;
    v20 = v19;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v41 != 1)
    {
      v21 = v40;
      v22 = sub_10095212C();
      if (v22)
      {
        v40 = 0.0;
        v41 = 1;
        v23 = v22;
        static Double._conditionallyBridgeFromObjectiveC(_:result:)();

        if ((v41 & 1) == 0)
        {
          Date.init()();
          v24 = *(v1 + 16);
          sub_100957930(v4);
          sub_10003D17C(v4, v6, &qword_1011A9B20, &qword_100EF1560);

          v25 = v38;
          v26 = v39;
          if ((*(v38 + 48))(v6, 1, v39))
          {
            sub_1000095E8(v6, &qword_1011A9B20, &qword_100EF1560);
            v27 = v26;
            v28 = v25;
          }

          else
          {
            (*(v25 + 16))(v9, v6, v26);
            sub_1000095E8(v6, &qword_1011A9B20, &qword_100EF1560);
            Date.addingTimeInterval(_:)();
            v29 = v9;
            v30 = *(v25 + 8);
            v30(v29, v26);
            (*(v25 + 32))(v13, v11, v26);
            v31 = static Date.< infix(_:_:)();
            v30(v13, v26);
            v27 = v26;
            v28 = v25;
            if (v31)
            {
              v30(v15, v26);
              return 1;
            }
          }

          v32 = sub_100173A78(0x20000000000001uLL);
          if (v32 == 0x20000000000000)
          {
            if (v21 >= 1.0)
            {
LABEL_17:
              (*(v28 + 16))(v4, v15, v27);
              v18 = 1;
              (*(v28 + 56))(v4, 0, 1, v27);
              swift_beginAccess();
              v34 = v37;
              sub_1000089F8(v4, v37, &qword_1011A9B20, &qword_100EF1560);
              sub_100957A4C(v34);
              swift_endAccess();
              sub_1000095E8(v4, &qword_1011A9B20, &qword_100EF1560);
              (*(v28 + 8))(v15, v27);
              return v18;
            }
          }

          else
          {
            v33 = vcvtd_n_f64_u64(v32, 0x35uLL);
            if (v33 > 0.0 && v33 <= v21)
            {
              goto LABEL_17;
            }
          }

          (*(v28 + 8))(v15, v27);
          return 0;
        }
      }
    }
  }

  return v18;
}

uint64_t MetricsEvent.TargetType.init(contentItem:)(void *a1)
{
  v2 = [a1 itemType];
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 == 7)
      {

        return 21;
      }

      goto LABEL_8;
    }

    return 17;
  }

  else
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {

        return 3;
      }

LABEL_8:
      v4 = static os_log_type_t.error.getter();
      sub_10010FC20(&qword_1011A98A0, &qword_100EF0D80);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100EBC6B0;
      [a1 itemType];
      type metadata accessor for MPModelStoreBrowseContentItemType(0);
      v6 = String.init<A>(describing:)();
      v8 = v7;
      *(v5 + 56) = &type metadata for String;
      *(v5 + 64) = sub_10001CE24();
      *(v5 + 32) = v6;
      *(v5 + 40) = v8;
      sub_100009F78(0, &qword_1011AFB00, OS_os_log_ptr);
      v9 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v9, "MPModelStoreBrowseContentItem.Kind.targetType: Returning nil for [targetType for this kind not yet implemented] self=%@", 119, 2, v5);

      return 27;
    }

    return 0;
  }
}

unint64_t MetricsEvent.TargetType.rawValue.getter(char a1)
{
  result = 0x6D75626C41;
  switch(a1)
  {
    case 1:
      result = 0x7465446D75626C41;
      break;
    case 2:
      result = 7368801;
      break;
    case 3:
      result = 0x747369747241;
      break;
    case 4:
      result = 0x72656E6E6162;
      break;
    case 5:
      result = 0x6E6F74747562;
      break;
    case 6:
      result = 0x6954656C62627562;
      break;
    case 7:
      result = 1685217603;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x7265746C6966;
      break;
    case 10:
      result = 0x7449726564616548;
      break;
    case 11:
      result = 0x7473694C746E6948;
      break;
    case 12:
      result = 7955819;
      break;
    case 13:
      result = 1802398060;
      break;
    case 14:
      result = 0x6E694C636972796CLL;
      break;
    case 15:
      result = 0x6D6574497473694CLL;
      break;
    case 16:
      result = 7235952;
      break;
    case 17:
    case 18:
      result = 0x7473696C79616C50;
      break;
    case 19:
      result = 0x4C746E65746E6F43;
      break;
    case 20:
      result = 0x726564696C73;
      break;
    case 21:
      result = 1735290707;
      break;
    case 22:
      result = 0x6974736567677573;
      break;
    case 23:
      result = 0x786F4274786574;
      break;
    case 24:
      result = 0x6C6C65737055;
      break;
    case 25:
      result = 0x657449666C656853;
      break;
    case 26:
      result = 0x6D65744964697247;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100947D10@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsEvent::TargetType_optional *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV10TargetTypeO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_100947D40@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsEvent.TargetType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double static MetricsEvent.Page.contextualActionMenu(storeID:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0x8000000100E5BFF0;
  }

  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = v6[6];
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  *a3 = v4;
  *(a3 + 1) = v5;
  *(a3 + 2) = 0xD000000000000014;
  *(a3 + 3) = 0x8000000100E5BFF0;
  *&a3[v6[7]] = 0;
  v9 = &a3[v6[8]];
  *v9 = 0;
  *(v9 + 1) = 0;
  a3[v6[9]] = 1;
  v10 = &a3[v6[10]];
  *v10 = 0;
  *(v10 + 1) = 0;
  a3[v6[11]] = 2;

  return result;
}

uint64_t sub_100947E9C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryMenuEdit);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryMenuEdit);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x4D7972617262694CLL;
  *(v1 + 1) = 0xEF74696445756E65;
  *(v1 + 2) = 0x72656B636950;
  *(v1 + 3) = 0xE600000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100947FE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = sub_1000060E4(v6, a2);

  return sub_100363C68(v7, a4);
}

uint64_t sub_100948048()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryMadeForYou);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryMadeForYou);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x59726F466564614DLL;
  *(v1 + 1) = 0xEA0000000000756FLL;
  *(v1 + 2) = 0x7972617262694CLL;
  *(v1 + 3) = 0xE700000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948190()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryAlbumsList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryAlbumsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x8000000100E5C510;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1009482D8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryArtistsList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryArtistsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x8000000100E5C4F0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948420()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryCompilationsList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryCompilationsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000017;
  *(v1 + 1) = 0x8000000100E5C4D0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948568()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryComposersList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryComposersList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x8000000100E5C4B0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1009486B0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryGenresList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryGenresList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x8000000100E5C490;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1009487F8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000016;
  *(v1 + 1) = 0x8000000100E5C470;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948940()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x8000000100E5C450;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948A88()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.librarySongsList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.librarySongsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000010;
  *(v1 + 1) = 0x8000000100E5C430;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948BD0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000018;
  *(v1 + 1) = 0x8000000100E5C410;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948D18()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD00000000000001DLL;
  *(v1 + 1) = 0x8000000100E5C3F0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948E60()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "LibraryAlbum");
  *(v1 + 13) = 0;
  *(v1 + 14) = -5120;
  *(v1 + 16) = 0x6D75626C41;
  *(v1 + 24) = 0xE500000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 1;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t sub_100948FA8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryArtistDetail);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryArtistDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "LibraryArtist");
  *(v1 + 14) = -4864;
  *(v1 + 16) = 0x747369747241;
  *(v1 + 24) = 0xE600000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 1;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t sub_1009490F4()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x507972617262694CLL;
  *(v1 + 1) = 0xEF7473696C79616CLL;
  *(v1 + 2) = 0x7473696C79616C50;
  *(v1 + 3) = 0xE800000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100949244()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryComposerDetail);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryComposerDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x437972617262694CLL;
  *(v1 + 1) = 0xEF7265736F706D6FLL;
  *(v1 + 2) = 0x747369747241;
  *(v1 + 3) = 0xE600000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100949390()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryGenreDetail);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryGenreDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x8000000100E5C3D0;
  *(v1 + 2) = 0x65726E6547;
  *(v1 + 3) = 0xE500000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1009494DC()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.playlistCreation);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.playlistCreation);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x6C79616C5077654ELL;
  *(v1 + 1) = 0xEB00000000747369;
  *(v1 + 2) = 0x7473696C79616C50;
  *(v1 + 3) = 0xE800000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 0;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100949624()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.playlistPicker);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.playlistPicker);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "PlaylistPicker");
  *(v1 + 15) = -18;
  *(v1 + 16) = 0x72656B636950;
  *(v1 + 24) = 0xE600000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 0;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

BOOL MetricsEvent.Page.DisplayType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6840, v2);

  return v3 != 0;
}

Swift::Int sub_1009497CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100949838(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_100949888(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6878, *a1);

  *a2 = v3 != 0;
}

uint64_t MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v29 = type metadata accessor for MetricsEvent.Click(0);
  *(a9 + v29[19]) = 0;
  v30 = (a9 + v29[20]);
  *v30 = 0;
  v30[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_10003D17C(a5, a9 + v29[7], &qword_1011A77F0, &unk_100EEAA20);
  *(a9 + v29[8]) = a6;
  v31 = (a9 + v29[9]);
  *v31 = a7;
  v31[1] = a8;
  v32 = a9 + v29[10];
  *v32 = a10;
  *(v32 + 16) = a11;
  *(v32 + 24) = a12;
  v33 = (a9 + v29[12]);
  *v33 = a13;
  v33[1] = a14;
  v34 = (a9 + v29[13]);
  *v34 = a15;
  v34[1] = a16;
  result = sub_10003D17C(a17, a9 + v29[14], &qword_1011A77F0, &unk_100EEAA20);
  *(a9 + v29[15]) = a18;
  *(a9 + v29[16]) = a19 & 1;
  *(a9 + v29[17]) = a20;
  *(a9 + v29[11]) = a21;
  v36 = (a9 + v29[18]);
  *v36 = a22;
  v36[1] = a23;
  return result;
}

__n128 MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, unint64_t a11, unsigned __int16 a12, uint64_t *a13, uint64_t a14)
{
  v18 = a13[1];
  v33 = *a13;
  v19 = a13[3];
  v35 = a13[2];
  v20 = type metadata accessor for MetricsPageProperties(0);
  v21 = *(v20 + 24);
  v22 = type metadata accessor for MetricsEvent.Click(0);
  sub_1000089F8(a13 + v21, a9 + v22[14], &qword_1011A77F0, &unk_100EEAA20);
  v23 = *(a13 + *(v20 + 28));

  sub_100952678(a13, type metadata accessor for MetricsPageProperties);
  *(a9 + v22[19]) = 0;
  v24 = (a9 + v22[20]);
  *v24 = 0;
  v24[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_10003D17C(a5, a9 + v22[7], &qword_1011A77F0, &unk_100EEAA20);
  *(a9 + v22[8]) = a6;
  v25 = (a9 + v22[9]);
  *v25 = a7;
  v25[1] = a8;
  v26 = (a9 + v22[10]);
  result = a10;
  *v26 = a10;
  v26[1].n128_u64[0] = a11;
  v26[1].n128_u16[4] = a12;
  v28 = (a9 + v22[12]);
  *v28 = v33;
  v28[1] = v18;
  v29 = (a9 + v22[13]);
  *v29 = v35;
  v29[1] = v19;
  *(a9 + v22[15]) = v23;
  *(a9 + v22[16]) = 1;
  *(a9 + v22[17]) = 2;
  *(a9 + v22[11]) = a14;
  v30 = (a9 + v22[18]);
  *v30 = 0;
  v30[1] = 0;
  return result;
}

uint64_t MetricsEvent.Click.isSharedContent.setter(char a1)
{
  result = type metadata accessor for MetricsEvent.Click(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t MetricsEvent.Click.dataRecoDataSetId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetricsEvent.Click(0) + 80));

  return v1;
}

void MetricsEvent.Click.dataRecoDataSetId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricsEvent.Click(0) + 80));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t MetricsEvent.Click.ActionType.rawValue.getter(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      return 0x68536E6F69746361;
    case 2:
      return 0x6574617669746361;
    case 3:
      return 6579297;
    case 4:
      return 0x73676E6F53646461;
    case 5:
      return 0x62694C6F54646461;
    case 6:
      return 0x6575516F54646461;
    case 7:
      return 0x7473756A6461;
    case 8:
      return 0x616C506E69676562;
    case 9:
      return 0x6C65636E6163;
    case 10:
      return 0x726F62616C6C6F63;
    case 11:
      return 0x657461657263;
    case 12:
      return 0x7453657461657263;
    case 13:
      v4 = 5;
      goto LABEL_64;
    case 14:
      return 0x64616F6C6E776F64;
    case 15:
      return 0x6176697463616564;
    case 16:
      return 0x6574656C6564;
    case 17:
      return 0x7463656C65736564;
    case 18:
      return 0x7470697263736564;
    case 19:
      return 0x7373696D736964;
    case 20:
      return 1953064037;
    case 21:
      return 0x65766F4374696465;
    case 22:
      return 0x657469726F766166;
    case 23:
      return 0x69726F7661666E75;
    case 24:
      return 1702125928;
    case 25:
      return 0x657461686E75;
    case 26:
      return 1953393000;
    case 27:
      return 0x7475706E69;
    case 28:
      return 0x657461676976616ELL;
    case 29:
      return 7235952;
    case 30:
      return 0x6E69706E75;
    case 31:
      return 2036427888;
    case 32:
      v3 = 0x664179616C70;
      goto LABEL_49;
    case 33:
      v3 = 0x614C79616C70;
LABEL_49:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 34:
      result = 0x7478654E79616C70;
      break;
    case 35:
      result = 0x7463616572;
      break;
    case 36:
      result = 1868850546;
      break;
    case 37:
      result = 0x6F4465766F6D6572;
      break;
    case 38:
      v4 = 11;
LABEL_64:
      result = v4 | 0xD000000000000010;
      break;
    case 39:
      result = 0xD000000000000012;
      break;
    case 40:
      result = 0x726564726F6572;
      break;
    case 41:
      result = 0x6F4374726F706572;
      break;
    case 42:
      result = 0x686372616573;
      break;
    case 43:
      result = 1801807219;
      break;
    case 44:
      result = 0x7463656C6573;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    case 48:
      result = 0x6572616873;
      break;
    case 49:
      result = 0x694C646572616873;
      break;
    case 50:
      result = 0x72794C6572616873;
      break;
    case 51:
      result = 0x6972794C776F6873;
      break;
    case 52:
      result = 0x72506E4F776F6873;
      break;
    case 53:
      result = 0x656C6666756873;
      break;
    case 54:
      result = 0x74696D627573;
      break;
    case 55:
      result = 0x656C67676F74;
      break;
    case 56:
      result = 1868852853;
      break;
    case 57:
      result = 0x75626C4177656976;
      break;
    case 58:
      result = 0x6974724177656976;
      break;
    case 59:
      result = 0x6465724377656976;
      break;
    case 60:
      result = 0x79616C5077656976;
      break;
    case 61:
      result = 0x77656976657270;
      break;
    case 62:
      result = 0x6573756170;
      break;
    case 63:
      result = 0x68736572666572;
      break;
    case 64:
      result = 1735289203;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10094A474(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_10094A520(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10094A5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();

  return result;
}

Swift::Int sub_10094A614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10094A67C@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsEvent::Click::ActionType_optional *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV5ClickV10ActionTypeO8rawValueAGSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_10094A6AC@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsEvent.Click.ActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void MetricsEvent.Click.ActionContext.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 5)
  {
    if (a3 <= 8)
    {
      if (a3 == 6)
      {
        v3 = 6;
      }

      else if (a3 == 7)
      {
        v3 = 7;
      }

      else
      {
        v3 = 8;
      }

      goto LABEL_26;
    }

    switch(a3)
    {
      case 9:
        v3 = 9;
        goto LABEL_26;
      case 10:
        v3 = 11;
        goto LABEL_26;
      case 11:
        v3 = 12;
        goto LABEL_26;
    }
  }

  else
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v3 = 3;
      }

      else if (a3 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_26;
    }

    switch(a3)
    {
      case 0:
        v3 = 0;
        goto LABEL_26;
      case 1:
        v3 = 1;
        goto LABEL_26;
      case 2:
        v3 = 2;
LABEL_26:
        Hasher._combine(_:)(v3);
        return;
    }
  }

  Hasher._combine(_:)(0xAuLL);

  String.hash(into:)();
}

Swift::Int MetricsEvent.Click.ActionContext.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MetricsEvent.Click.ActionContext.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10094A864()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MetricsEvent.Click.ActionContext.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_10094A8B8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  MetricsEvent.Click.ActionContext.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

void *MetricsEvent.Click.ActionDetails.dictionary.getter(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (BYTE1(a4) > 1u)
  {
    if (BYTE1(a4) == 2)
    {
      if (!a2)
      {
        return 0;
      }

      sub_10010FC20(&unk_1011ACB60, &qword_100EF0D88);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      strcpy((inited + 32), "searchPrefix");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = v4;
      *(inited + 56) = a2;
      sub_1005EA59C(v4, a2, a3, a4, 2);
      v4 = sub_1008BC7B0(inited);
      swift_setDeallocating();
      v7 = (inited + 32);
    }

    else
    {
      if (BYTE1(a4) == 3)
      {

        return v4;
      }

      v4 = sub_1008BC7B0(&off_1010C5FC8);
      v7 = &unk_1010C5FE8;
    }

LABEL_10:
    sub_1000095E8(v7, &qword_1011A98B0, &qword_100EF0D90);
    return v4;
  }

  if (!BYTE1(a4))
  {
    sub_10010FC20(&unk_1011ACB60, &qword_100EF0D88);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_100EBC6B0;
    strcpy((v5 + 32), "actionSubType");
    *(v5 + 46) = -4864;
    *(v5 + 48) = MetricsEvent.Click.ActionType.rawValue.getter(v4);
    *(v5 + 56) = v6;
    v4 = sub_1008BC7B0(v5);
    swift_setDeallocating();
    v7 = (v5 + 32);
    goto LABEL_10;
  }

  v13 = a4;
  if (!a1)
  {
    v4 = sub_1008BC7B0(&off_1010C5F68);
    sub_10010FC20(&qword_1011A98B0, &qword_100EF0D90);
    goto LABEL_37;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;

      v22 = [v21 artist];
      if (!v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();

      if (!v23)
      {
LABEL_26:
        v26 = 0;
        goto LABEL_27;
      }

      v22 = [v23 artist];
      if (!v22)
      {
LABEL_25:
        v23 = 0;
        goto LABEL_26;
      }
    }

    v24 = v22;
    v19 = [v22 name];

    if (v19)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v17 = v16;

  v18 = [v17 name];
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
LABEL_24:
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

LABEL_27:
  sub_10010FC20(&unk_1011ACB60, &qword_100EF0D88);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_100EBE260;
  *(v27 + 32) = 1684957547;
  *(v27 + 40) = 0xE400000000000000;
  v28 = sub_100954810(v4);
  *(v27 + 48) = MetricsContentType.rawValue.getter(v28);
  *(v27 + 56) = v29;
  *(v27 + 64) = 0x614E747369747261;
  *(v27 + 72) = 0xEA0000000000656DLL;
  v30 = 16718;
  if (v26)
  {
    v30 = v23;
  }

  v31 = 0xE200000000000000;
  if (v26)
  {
    v31 = v26;
  }

  *(v27 + 80) = v30;
  *(v27 + 88) = v31;
  strcpy((v27 + 96), "lyricSnippet");
  *(v27 + 109) = 0;
  *(v27 + 110) = -5120;
  if (a3)
  {
    v32 = a2;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (a3)
  {
    v33 = a3;
  }

  *(v27 + 112) = v32;
  *(v27 + 120) = v33;
  v4 = sub_1008BC7B0(v27);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A98B0, &qword_100EF0D90);
LABEL_37:
  swift_arrayDestroy();
  if (v13 != 65)
  {
    v35 = MetricsEvent.Click.ActionType.rawValue.getter(v13);
    v36 = v34;
    if (v35 == 0xD000000000000015 && 0x8000000100E59DD0 == v34)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1008B9478(v35, v36, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v4;
}

void __swiftcall MetricsEvent.Dialog.init(dialogID:dialogType:title:message:messageCode:options:subjectID:targetID:actionType:)(MusicCore::MetricsEvent::Dialog *__return_ptr retstr, Swift::String dialogID, MusicCore::MetricsEvent::Dialog::Type dialogType, Swift::String_optional title, Swift::String_optional message, Swift::String messageCode, Swift::OpaquePointer options, Swift::String_optional subjectID, Swift::String targetID, MusicCore::MetricsEvent::Dialog::ActionType actionType)
{
  v17 = dialogID;
  LOBYTE(v18) = dialogType & 1;
  *(&v18 + 1) = title.value._countAndFlagsBits;
  *&v19 = title.value._object;
  *(&v19 + 1) = message.value._countAndFlagsBits;
  *&v20 = message.value._object;
  *(&v20 + 1) = messageCode._countAndFlagsBits;
  *&v21 = messageCode._object;
  *(&v21 + 1) = options;
  v22 = subjectID;
  v23 = targetID;
  v24 = actionType & 1;
  v25 = dialogID;
  v26 = dialogType & 1;
  v27 = title;
  v28 = message;
  v29 = messageCode;
  rawValue = options._rawValue;
  v31 = subjectID;
  v32 = targetID;
  v33 = actionType & 1;
  sub_10095272C(&v17, v16);
  sub_100952764(&v25);
  v11 = v22;
  v12 = v23;
  v13 = v20;
  *&retstr->messageCode._object = v21;
  retstr->subjectID = v11;
  retstr->targetID = v12;
  v14 = v18;
  v15 = v19;
  retstr->dialogID = v17;
  *&retstr->dialogType = v14;
  retstr->actionType = v24;
  *&retstr->title.value._object = v15;
  *&retstr->message.value._object = v13;
}

uint64_t ApplicationCapabilities.RatingWarning.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void MetricsEvent.Dialog.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void MetricsEvent.Dialog.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void MetricsEvent.Dialog.messageCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t PlaylistCovers.Cover.accessibilityLabel.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void MetricsEvent.Dialog.subjectID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t MetricsEvent.Dialog.targetID.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void MetricsEvent.Dialog.targetID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t MetricsEvent.Dialog.Type.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C65636E61436B4FLL;
  }

  else
  {
    return 27471;
  }
}

uint64_t sub_10094B1A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C65636E61436B4FLL;
  }

  else
  {
    v3 = 27471;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C65636E61436B4FLL;
  }

  else
  {
    v5 = 27471;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10094B23C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10094B2B4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10094B318(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10094B398(uint64_t *a1@<X8>)
{
  v2 = 27471;
  if (*v1)
  {
    v2 = 0x6C65636E61436B4FLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10094B3D8(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t MetricsEvent.Dialog.ActionType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C436C65636E6163;
  }

  else
  {
    return 27503;
  }
}

uint64_t sub_10094B460(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C436C65636E6163;
  }

  else
  {
    v3 = 27503;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xED000064656B6369;
  }

  if (*a2)
  {
    v5 = 0x6C436C65636E6163;
  }

  else
  {
    v5 = 27503;
  }

  if (*a2)
  {
    v6 = 0xED000064656B6369;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10094B508()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10094B58C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10094B5FC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10094B688(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

void sub_10094B6E4(uint64_t *a1@<X8>)
{
  v2 = 27503;
  if (*v1)
  {
    v2 = 0x6C436C65636E6163;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xED000064656B6369;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MetricsEvent.ComponentRender.PreloadStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1819047270;
  v2 = 0x6C6F686563616C70;
  if (a1 != 2)
  {
    v2 = 0x73756F6976657270;
  }

  if (a1)
  {
    v1 = 0x6C616974726170;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_10094B7BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10094B88C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10094B948(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10094BA14@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV15ComponentRenderV13PreloadStatusO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10094BA44(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1819047270;
  v4 = 0xEB00000000726564;
  v5 = 0x6C6F686563616C70;
  if (*v1 != 2)
  {
    v5 = 0x73756F6976657270;
    v4 = 0xEF6E776F6853796CLL;
  }

  if (*v1)
  {
    v3 = 0x6C616974726170;
    v2 = 0xE700000000000000;
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

void *Library.Menu.Request.mediaPickerConfiguration.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *MetricsEvent.ComponentRender.componentMotionActivationTime.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *MetricsEvent.ComponentRender.componentEndTime.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id static MetricsReportingController.shared.getter()
{
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v1 = static MetricsReportingController.shared;

  return v1;
}

void MetricsReportingController.recordPerformanceMetrics(for:)(void *a1)
{
  if (a1)
  {
    v1 = [a1 performanceMetrics];
    if (v1)
    {
      v2 = v1;
      sub_100952794(v2, &v3);
      MetricsReportingController.recordLoadUrlEvent(_:)(&v3);
      sub_100952BE4(&v3);
    }
  }
}

void MetricsReportingController.recordPageEvent(_:pageContext:sharedListeningContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v73 = a4;
  v70 = a5;
  v71 = a6;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v9 = &v70 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = [objc_allocWithZone(SSMetricsPageEvent) init];
    v16 = v15;
    if (a3)
    {
      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    [v15 setPageContext:{v17, v70, v71}];

    v19 = *a1;
    v18 = a1[1];
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    [v15 setProperty:v20 forBodyKey:v21];

    v23 = a1[2];
    v22 = a1[3];
    v24 = String._bridgeToObjectiveC()();
    [v15 setPageType:v24];

    v72 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v25 = *&v74[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v25 || (sub_10010FC20(&qword_1011A98C0, &qword_100EF0D98), v26 = swift_allocObject(), *(v26 + 16) = xmmword_100EBDC20, *(v26 + 32) = v23, *(v26 + 40) = v22, *(v26 + 88) = &type metadata for String, *(v26 + 56) = &type metadata for String, *(v26 + 64) = v19, *(v26 + 72) = v18, , , v27 = v25, isa = Array._bridgeToObjectiveC()().super.isa, , v29 = [v27 compoundStringWithElements:isa], v27, isa, !v29))
    {
      v29 = 0;
    }

    [v15 setPageDescription:v29];

    v30 = type metadata accessor for MetricsEvent.Page(0);
    sub_1000089F8(a1 + v30[6], v9, &qword_1011A77F0, &unk_100EEAA20);
    v31 = type metadata accessor for URL();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v9, 1, v31) == 1)
    {
      sub_1000095E8(v9, &qword_1011A77F0, &unk_100EEAA20);
      v33 = 0;
    }

    else
    {
      URL.absoluteString.getter();
      (*(v32 + 8))(v9, v31);
      v33 = String._bridgeToObjectiveC()();
    }

    [v15 setPageURL:v33];

    v34 = *(a1 + v30[7]);
    if (v34)
    {
      v35.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v35.super.isa = 0;
    }

    v36 = String._bridgeToObjectiveC()();
    [v15 setProperty:v35.super.isa forBodyKey:v36];

    swift_unknownObjectRelease();
    v37 = (a1 + v30[8]);
    v38 = v37[1];
    v39 = &selRef_setContacts_;
    if (v38)
    {
      v40 = *v37;
      sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
      inited = swift_initStackObject();
      *(inited + 32) = 0x6554686372616573;
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEA00000000006D72;
      *(inited + 48) = v40;
      *(inited + 56) = v38;

      sub_1008BC8D8(inited);
      swift_setDeallocating();
      v39 = &selRef_setContacts_;
      sub_1000095E8(inited + 32, &qword_1011A8618, &qword_100EED8E0);
      v42 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v15 addPropertiesWithDictionary:v42];
    }

    if ((*(a1 + v30[9]) & 1) == 0)
    {
      sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_100EBC6B0;
      *(v43 + 32) = 0x7073694465676170;
      v44 = v43 + 32;
      *(v43 + 72) = &type metadata for String;
      *(v43 + 40) = 0xEF6570795479616CLL;
      *(v43 + 48) = 0x7765695664726163;
      *(v43 + 56) = 0xE800000000000000;
      sub_1008BC8D8(v43);
      swift_setDeallocating();
      sub_1000095E8(v44, &qword_1011A8618, &qword_100EED8E0);
      v45 = Dictionary._bridgeToObjectiveC()().super.isa;
      v39 = &selRef_setContacts_;

      [v15 addPropertiesWithDictionary:v45];
    }

    v46 = *(a1 + v30[11]);
    if (v46 != 2)
    {
      sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_100EBC6B0;
      *(v47 + 32) = 0xD000000000000014;
      v48 = v47 + 32;
      *(v47 + 40) = 0x8000000100E5C010;
      *(v47 + 72) = &type metadata for Bool;
      *(v47 + 48) = v46 & 1;
      sub_1008BC8D8(v47);
      swift_setDeallocating();
      sub_1000095E8(v48, &qword_1011A8618, &qword_100EED8E0);
      v49 = Dictionary._bridgeToObjectiveC()().super.isa;
      v39 = &selRef_setContacts_;

      [v15 addPropertiesWithDictionary:v49];
    }

    if (v34)
    {
      if (*(v34 + 16))
      {
        v50 = sub_100019C28(0x4974655361746164, 0xE900000000000064);
        if (v51)
        {
          v52 = (*(v34 + 56) + 16 * v50);
          v54 = *v52;
          v53 = v52[1];
          sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
          v55 = swift_initStackObject();
          *(v55 + 16) = xmmword_100EBC6B0;
          *(v55 + 32) = 0x4974655361746164;
          *(v55 + 72) = &type metadata for String;
          *(v55 + 40) = 0xE900000000000064;
          *(v55 + 48) = v54;
          *(v55 + 56) = v53;

          sub_1008BC8D8(v55);
          swift_setDeallocating();
          v39 = &selRef_setContacts_;
          sub_1000095E8(v55 + 32, &qword_1011A8618, &qword_100EED8E0);
          v56 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v15 addPropertiesWithDictionary:v56];
        }
      }
    }

    if (v73 != 2 && sub_100952474(v73 & 1, v70, v71))
    {
      v57 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v15 v39[465]];
    }

    v58 = (a1 + v30[10]);
    v59 = v58[1];
    if (v59)
    {
      v60 = *v58;
      sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
      v61 = swift_initStackObject();
      *(v61 + 32) = 0x7255666552747865;
      *(v61 + 16) = xmmword_100EBC6B0;
      *(v61 + 72) = &type metadata for String;
      *(v61 + 40) = 0xE90000000000006CLL;
      *(v61 + 48) = v60;
      *(v61 + 56) = v59;

      sub_1008BC8D8(v61);
      swift_setDeallocating();
      sub_1000095E8(v61 + 32, &qword_1011A8618, &qword_100EED8E0);
      v62 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v15 v39[465]];
    }

    v63 = v74;
    v64 = *&v74[v72];
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    *(v65 + 24) = v15;
    aBlock[4] = sub_100952C14;
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010D12C0;
    v66 = _Block_copy(aBlock);
    v67 = v64;
    v68 = v63;
    v69 = v15;

    [v69 setStandardPropertiesWith:v67 completionHandler:v66];
    _Block_release(v66);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordImpressionsEvent(_:with:pageContext:sharedListeningContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v53 = a6;
  v57 = a5;
  v58 = a2;
  v56 = a1;
  sub_10010FC20(&qword_1011A98C8, &unk_100EF0DB0);
  __chkstk_darwin();
  v54 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v11 = &v51 - v10;
  __chkstk_darwin();
  v13 = &v51 - v12;
  __chkstk_darwin();
  v15 = &v51 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v20 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v21 = [objc_allocWithZone(SSMetricsBaseEvent) init];
    v52 = a7;
    if (a4)
    {
      v22 = String._bridgeToObjectiveC()();
    }

    else
    {
      v22 = 0;
    }

    v23 = v58;
    [v21 setPageContext:v22];

    sub_1000089F8(v23, v15, &qword_1011A98C8, &unk_100EF0DB0);
    v24 = type metadata accessor for MetricsPageProperties(0);
    v25 = *(*(v24 - 8) + 48);
    if (v25(v15, 1, v24) == 1)
    {
      sub_1000095E8(v15, &qword_1011A98C8, &unk_100EF0DB0);
      v26 = 0;
    }

    else
    {

      sub_100952678(v15, type metadata accessor for MetricsPageProperties);
      v26 = String._bridgeToObjectiveC()();
    }

    v27 = String._bridgeToObjectiveC()();
    [v21 setProperty:v26 forBodyKey:v27];
    swift_unknownObjectRelease();

    sub_1000089F8(v23, v13, &qword_1011A98C8, &unk_100EF0DB0);
    if (v25(v13, 1, v24) == 1)
    {
      sub_1000095E8(v13, &qword_1011A98C8, &unk_100EF0DB0);
      v28 = 0;
    }

    else
    {

      sub_100952678(v13, type metadata accessor for MetricsPageProperties);
      v28 = String._bridgeToObjectiveC()();
    }

    [v21 setPageType:v28];

    v55 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v29 = *&v59[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v29)
    {
      goto LABEL_19;
    }

    sub_10010FC20(&qword_1011A98C0, &qword_100EF0D98);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100EBDC20;
    v31 = sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    *(v30 + 56) = v31;
    sub_1000089F8(v23, v11, &qword_1011A98C8, &unk_100EF0DB0);
    if (v25(v11, 1, v24) == 1)
    {
      v32 = v29;
      sub_1000095E8(v11, &qword_1011A98C8, &unk_100EF0DB0);
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v33 = *(v11 + 2);
      v34 = *(v11 + 3);
      v35 = v29;

      sub_100952678(v11, type metadata accessor for MetricsPageProperties);
    }

    *(v30 + 32) = v33;
    *(v30 + 40) = v34;
    *(v30 + 88) = v31;
    v36 = v54;
    sub_1000089F8(v58, v54, &qword_1011A98C8, &unk_100EF0DB0);
    if (v25(v36, 1, v24) == 1)
    {
      sub_1000095E8(v36, &qword_1011A98C8, &unk_100EF0DB0);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v37 = *v36;
      v38 = v36[1];

      sub_100952678(v36, type metadata accessor for MetricsPageProperties);
    }

    *(v30 + 64) = v37;
    *(v30 + 72) = v38;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v40 = [v29 compoundStringWithElements:isa];

    if (!v40)
    {
LABEL_19:
      v40 = 0;
    }

    [v21 setPageDescription:v40];

    [v21 setEventType:SSMetricsEventTypeImpressions];
    sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0x6973736572706D69;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 72) = sub_10010FC20(&qword_1011A7FD8, &qword_100EED050);
    *(inited + 48) = v56;

    sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011A8618, &qword_100EED8E0);
    v42 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v21 addPropertiesWithDictionary:v42];

    if (v57 != 2)
    {
      if (sub_100952474(v57 & 1, v53, v52))
      {
        v43 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v21 addPropertiesWithDictionary:v43];
      }
    }

    v44 = v59;
    v45 = *&v59[v55];
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v21;
    aBlock[4] = sub_100952C4C;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010D1310;
    v47 = _Block_copy(aBlock);
    v48 = v45;
    v49 = v44;
    v50 = v21;

    [v50 setStandardPropertiesWith:v48 completionHandler:v47];
    _Block_release(v47);
  }

  else
  {
    __break(1u);
  }
}

double sub_10094D04C(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = a1;
  v9 = a2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a4, v7);

  return result;
}

void MetricsReportingController.recordSearchEvent(_:pageContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v8 = aBlock - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v14 = [objc_allocWithZone(SSMetricsSearchEvent) init];
    v15 = v14;
    if (a3)
    {
      v16 = String._bridgeToObjectiveC()();
    }

    else
    {
      v16 = 0;
    }

    [v14 setPageContext:v16];

    v17 = type metadata accessor for MetricsEvent.Click(0);
    v18 = a1 + v17[10];
    v19 = *(v18 + 24);
    if (v19 >> 8 <= 0xFE && (v20 = MetricsEvent.Click.ActionDetails.dictionary.getter(*v18, *(v18 + 8), *(v18 + 16), v19)) != 0)
    {
      aBlock[0] = v20;
      sub_10010FC20(&qword_1011A98D0, &unk_100EF0DC0);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      sub_1000095E8(aBlock, &qword_1011A98D0, &unk_100EF0DC0);
    }

    else
    {
      v21 = 0;
    }

    [v14 setActionDetails:v21];
    swift_unknownObjectRelease();
    MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
    v22 = String._bridgeToObjectiveC()();

    [v14 setActionType:v22];

    v23 = String._bridgeToObjectiveC()();
    [v14 setTargetIdentifier:v23];

    sub_1000089F8(a1 + v17[7], v8, &qword_1011A77F0, &unk_100EEAA20);
    v24 = type metadata accessor for URL();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v8, 1, v24) == 1)
    {
      sub_1000095E8(v8, &qword_1011A77F0, &unk_100EEAA20);
      v26 = 0;
    }

    else
    {
      URL.absoluteString.getter();
      (*(v25 + 8))(v8, v24);
      v26 = String._bridgeToObjectiveC()();
    }

    [v14 setTargetURL:v26];

    MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
    v27 = String._bridgeToObjectiveC()();

    [v14 setTargetType:v27];

    if (*(a1 + v17[13] + 8))
    {
      v28 = String._bridgeToObjectiveC()();
    }

    else
    {
      v28 = 0;
    }

    [v14 setPageType:v28];

    v29 = (a1 + v17[9]);
    v30 = v29[1];
    if (v30 == 12)
    {
      v31 = 0;
    }

    else
    {
      MetricsEvent.Click.ActionContext.rawValue.getter(*v29, v30);
      v31 = String._bridgeToObjectiveC()();
    }

    v32 = String._bridgeToObjectiveC()();
    [v14 setProperty:v31 forBodyKey:v32];

    swift_unknownObjectRelease();
    if (*(a1 + v17[15]))
    {
      v33.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    v34 = String._bridgeToObjectiveC()();
    [v14 setProperty:v33.super.isa forBodyKey:v34];

    swift_unknownObjectRelease();
    if (*(a1 + v17[12] + 8))
    {
      v35 = String._bridgeToObjectiveC()();
    }

    else
    {
      v35 = 0;
    }

    v36 = String._bridgeToObjectiveC()();
    [v14 setProperty:v35 forBodyKey:v36];

    swift_unknownObjectRelease();
    isa = *(a1 + v17[8]);
    if (isa)
    {
      sub_10010FC20(&unk_1011ACC30, &unk_100EF1E50);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v38 = String._bridgeToObjectiveC()();
    [v14 setProperty:isa forBodyKey:v38];

    swift_unknownObjectRelease();
    if (*(a1 + v17[18] + 8))
    {
      v39 = String._bridgeToObjectiveC()();
    }

    else
    {
      v39 = 0;
    }

    [v14 setSearchTerm:v39];

    v40 = *&v4[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v41 = swift_allocObject();
    *(v41 + 16) = v4;
    *(v41 + 24) = v14;
    aBlock[4] = sub_100952C84;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010D1360;
    v42 = _Block_copy(aBlock);
    v43 = v40;
    v44 = v4;
    v45 = v14;

    [v45 setStandardPropertiesWith:v43 completionHandler:v42];
    _Block_release(v42);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  v100 = a5;
  v101 = a6;
  v108 = a4;
  v102 = a2;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v99 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    if (qword_1011A6818 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v107 = v11;
  v19 = type metadata accessor for Logger();
  sub_1000060E4(v19, qword_101219A28);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "[MetricsReportingController] Recording click event", v22, 2u);
  }

  v23 = [objc_allocWithZone(SSMetricsClickEvent) init];
  v24 = String._bridgeToObjectiveC()();
  [v23 setTargetIdentifier:v24];

  MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
  v25 = String._bridgeToObjectiveC()();

  [v23 setTargetType:v25];

  MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
  v26 = String._bridgeToObjectiveC()();

  [v23 setActionType:v26];

  v27 = type metadata accessor for MetricsEvent.Click(0);
  sub_1000089F8(a1 + v27[7], v13, &qword_1011A77F0, &unk_100EEAA20);
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v104 = *(v29 + 48);
  v105 = v29 + 48;
  v30 = v104(v13, 1, v28);
  v106 = v28;
  v99 = v29;
  if (v30 == 1)
  {
    sub_1000095E8(v13, &qword_1011A77F0, &unk_100EEAA20);
    v31 = 0;
  }

  else
  {
    URL.absoluteString.getter();
    (*(v29 + 8))(v13, v28);
    v31 = String._bridgeToObjectiveC()();
  }

  [v23 setTargetURL:{v31, v99}];

  isa = *(a1 + v27[8]);
  v33 = v23;
  v34 = v33;
  if (isa)
  {
    sub_10010FC20(&unk_1011ACC30, &unk_100EF1E50);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v35 = String._bridgeToObjectiveC()();
  [v33 setProperty:isa forBodyKey:v35];
  swift_unknownObjectRelease();

  v36 = (a1 + v27[9]);
  v37 = v36[1];
  if (v37 == 12)
  {
    v38 = 0;
  }

  else
  {
    MetricsEvent.Click.ActionContext.rawValue.getter(*v36, v37);
    v38 = String._bridgeToObjectiveC()();
  }

  v39 = String._bridgeToObjectiveC()();
  [v33 setProperty:v38 forBodyKey:v39];

  swift_unknownObjectRelease();
  v40 = a1 + v27[10];
  v41 = *(v40 + 24);
  if (v41 >> 8 <= 0xFE && (v42 = MetricsEvent.Click.ActionDetails.dictionary.getter(*v40, *(v40 + 8), *(v40 + 16), v41)) != 0)
  {
    aBlock[0] = v42;
    sub_10010FC20(&qword_1011A98D0, &unk_100EF0DC0);
    v43 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_1000095E8(aBlock, &qword_1011A98D0, &unk_100EF0DC0);
  }

  else
  {
    v43 = 0;
  }

  [v33 setActionDetails:v43];
  swift_unknownObjectRelease();
  v44 = *(a1 + v27[11]);
  v109 = v7;
  if (v44)
  {
    sub_10010FC20(&qword_1011A98D8, &qword_100EF1730);
    v44 = Array._bridgeToObjectiveC()().super.isa;
  }

  v103 = a3;
  [v33 setImpressions:v44];
  swift_unknownObjectRelease();
  if (*(a1 + v27[19]) == 1)
  {
    sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6F43646572616873;
    v46 = inited + 32;
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 40) = 0xED0000746E65746ELL;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_1000095E8(v46, &qword_1011A8618, &qword_100EED8E0);
    v47 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 addPropertiesWithDictionary:v47];
  }

  v48 = (a1 + v27[20]);
  v49 = v48[1];
  if (v49)
  {
    v50 = *v48;
    sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_100EBC6B0;
    *(v51 + 32) = 0xD000000000000013;
    *(v51 + 72) = &type metadata for String;
    *(v51 + 40) = 0x8000000100E5C030;
    *(v51 + 48) = v50;
    *(v51 + 56) = v49;

    sub_1008BC8D8(v51);
    swift_setDeallocating();
    sub_1000095E8(v51 + 32, &qword_1011A8618, &qword_100EED8E0);
    v52 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 addPropertiesWithDictionary:v52];
  }

  v53 = (a1 + v27[18]);
  v54 = v53[1];
  if (v54)
  {
    v55 = *v53;
    sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
    v56 = swift_initStackObject();
    *(v56 + 32) = 0x6554686372616573;
    *(v56 + 16) = xmmword_100EBC6B0;
    *(v56 + 72) = &type metadata for String;
    *(v56 + 40) = 0xEA00000000006D72;
    *(v56 + 48) = v55;
    *(v56 + 56) = v54;

    sub_1008BC8D8(v56);
    swift_setDeallocating();
    sub_1000095E8(v56 + 32, &qword_1011A8618, &qword_100EED8E0);
    v57 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 addPropertiesWithDictionary:v57];
  }

  v58 = v103;
  if (v108 != 2 && sub_100952474(v108 & 1, v100, v101))
  {
    v59 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 addPropertiesWithDictionary:v59];
  }

  v60 = v109;
  if (v58)
  {
    v61 = String._bridgeToObjectiveC()();
  }

  else
  {
    v61 = 0;
  }

  [v33 setPageContext:v61];

  v62 = (a1 + v27[12]);
  v64 = *v62;
  v63 = v62[1];
  v65 = v33;
  if (v63)
  {
    v66 = String._bridgeToObjectiveC()();
    v65 = String._bridgeToObjectiveC()();
    [v33 setProperty:v66 forBodyKey:v65];
  }

  v67 = (a1 + v27[13]);
  v69 = *v67;
  v68 = v67[1];
  v70 = v33;
  if (v68)
  {
    v70 = String._bridgeToObjectiveC()();
    [v33 setPageType:v70];
  }

  v108 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
  v71 = *&v60[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  if (!v71 || (sub_10010FC20(&qword_1011A98C0, &qword_100EF0D98), v72 = swift_allocObject(), *(v72 + 16) = xmmword_100EBDC20, v73 = sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60), *(v72 + 32) = v69, *(v72 + 40) = v68, *(v72 + 88) = v73, *(v72 + 56) = v73, *(v72 + 64) = v64, *(v72 + 72) = v63, , v74 = v71, , v75 = Array._bridgeToObjectiveC()().super.isa, , v76 = [v74 compoundStringWithElements:v75], v74, v75, !v76))
  {
    v76 = 0;
  }

  [v33 setPageDescription:v76];

  v77 = v107;
  sub_1000089F8(a1 + v27[14], v107, &qword_1011A77F0, &unk_100EEAA20);
  v78 = v106;
  if (v104(v77, 1, v106) == 1)
  {
    sub_1000095E8(v77, &qword_1011A77F0, &unk_100EEAA20);
    v79 = 0;
  }

  else
  {
    URL.absoluteString.getter();
    (*(v99 + 8))(v77, v78);
    v79 = String._bridgeToObjectiveC()();
  }

  v80 = v109;
  [v33 setPageURL:v79];

  if (*(a1 + v27[15]))
  {
    v81.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v81.super.isa = 0;
  }

  v82 = String._bridgeToObjectiveC()();
  [v33 setProperty:v81.super.isa forBodyKey:v82];

  swift_unknownObjectRelease();
  if ((*(a1 + v27[16]) & 1) == 0)
  {
    sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
    v83 = swift_initStackObject();
    *(v83 + 16) = xmmword_100EBC6B0;
    *(v83 + 32) = 0x7073694465676170;
    v84 = v83 + 32;
    *(v83 + 72) = &type metadata for String;
    *(v83 + 40) = 0xEF6570795479616CLL;
    *(v83 + 48) = 0x7765695664726163;
    *(v83 + 56) = 0xE800000000000000;
    sub_1008BC8D8(v83);
    swift_setDeallocating();
    sub_1000095E8(v84, &qword_1011A8618, &qword_100EED8E0);
    v85 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 addPropertiesWithDictionary:v85];
  }

  v86 = *(a1 + v27[17]);
  if (v86 != 2)
  {
    sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_100EBC6B0;
    *(v87 + 32) = 0xD000000000000014;
    v88 = v87 + 32;
    *(v87 + 40) = 0x8000000100E5C010;
    *(v87 + 72) = &type metadata for Bool;
    *(v87 + 48) = v86 & 1;
    sub_1008BC8D8(v87);
    swift_setDeallocating();
    sub_1000095E8(v88, &qword_1011A8618, &qword_100EED8E0);
    v89 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 addPropertiesWithDictionary:v89];
  }

  v90 = objc_allocWithZone(NSNumber);
  v91 = v33;
  v92 = [v90 initWithInteger:5];
  [v91 setEventVersion:v92];

  v93 = *&v80[v108];
  v94 = swift_allocObject();
  *(v94 + 16) = v80;
  *(v94 + 24) = v91;
  aBlock[4] = sub_100952CBC;
  aBlock[5] = v94;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D13B0;
  v95 = _Block_copy(aBlock);
  v96 = v93;
  v97 = v80;
  v98 = v91;

  [v98 setStandardPropertiesWith:v96 completionHandler:v95];
  _Block_release(v95);
}

Swift::Void __swiftcall MetricsReportingController.recordLoadUrlEvent(_:)(MusicCore::MetricsEvent::LoadUrl *a1)
{
  v3 = [objc_allocWithZone(SSMetricsLoadURLEvent) init];
  object_low = LOBYTE(a1->environmentDataCenter.value._object);
  [v3 setCachedResponse:object_low];
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  [v3 setOriginalApp:v6];
  if (a1->domainLookupStartTime.is_nil)
  {
    if (BYTE6(a1->connectionStartTime.value))
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v3 setDomainLookupStartTime:a1->domainLookupStartTime.value];
    if (BYTE6(a1->connectionStartTime.value))
    {
LABEL_3:
      if (BYTE4(a1->connectionEndTime.value))
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  [v3 setDomainLookupEndTime:*(&a1->domainLookupEndTime.value + 7)];
  if (BYTE4(a1->connectionEndTime.value))
  {
LABEL_4:
    if (BYTE2(a1->responseStartTime.value))
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setConnectionStartTime:*(&a1->secureConnectionStartTime.value + 5)];
  if (BYTE2(a1->responseStartTime.value))
  {
LABEL_5:
    if (LOBYTE(a1->fetchStartTime.value))
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 setSecureConnectionStartTime:*(&a1->requestStartTime.value + 3)];
  if (LOBYTE(a1->fetchStartTime.value))
  {
LABEL_6:
    if ((a1->redirectCount.value & 0x100000000000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setConnectionEndTime:*(&a1->responseEndTime.value + 1)];
  if ((a1->redirectCount.value & 0x100000000000000) != 0)
  {
LABEL_7:
    if (a1->requestUrl.value._object)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setRequestStartTime:*&a1->fetchStartTime.is_nil];
  if (a1->requestUrl.value._object)
  {
LABEL_8:
    if (a1->appleTimingApp.value._countAndFlagsBits)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setResponseStartTime:*&a1->requestUrl.value._countAndFlagsBits];
  if (a1->appleTimingApp.value._countAndFlagsBits)
  {
LABEL_9:
    if (a1->connectionType.value._countAndFlagsBits)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setResponseEndTime:*&a1->cachedResponse];
  if (a1->connectionType.value._countAndFlagsBits)
  {
LABEL_10:
    if (!a1->environmentDataCenter.value._countAndFlagsBits)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_38:
  [v3 setFetchStartTime:*&a1->appleTimingApp.value._object];
  if (a1->environmentDataCenter.value._countAndFlagsBits)
  {
LABEL_11:
    v7 = String._bridgeToObjectiveC()();
    [v3 setRequestURL:v7];
  }

LABEL_12:
  if ((a1->edgeNodeCacheStatus.value._countAndFlagsBits & 1) == 0)
  {
    if ((a1->connectionType.value._object & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

    [v3 setRedirectCount:?];
  }

  if (a1->responseDate.value._object)
  {
    v8 = String._bridgeToObjectiveC()();
    [v3 setAppleTimingApp:v8];
  }

  if (a1->requestMessageSize)
  {
    v9 = String._bridgeToObjectiveC()();
    [v3 setConnectionType:v9];
  }

  if (a1->resolvedIPAddress.value._countAndFlagsBits)
  {
    v10 = String._bridgeToObjectiveC()();
    [v3 setEdgeNodeCacheStatus:v10];
  }

  if (*(&a1[1].domainLookupEndTime.value + 7))
  {
    v11 = String._bridgeToObjectiveC()();
    [v3 setResponseDate:v11];
  }

  if (*(&a1[1].responseStartTime.value + 2))
  {
    v12 = String._bridgeToObjectiveC()();
    [v3 setResolvedIPAddress:v12];
  }

  v24 = *&a1->resolvedIPAddress.value._object;
  v13 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v14 = v24;
    sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x8000000100E5C050;
    *(inited + 48) = v14;
    *(inited + 56) = v13;
    sub_1000089F8(&v24, aBlock, &unk_1011ACB70, &qword_100EEEF60);
    sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011A8618, &qword_100EED8E0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 addPropertiesWithDictionary:isa];
  }

  [v3 setCachedResponse:object_low];
  [v3 setConnectionReused:BYTE1(a1->environmentDataCenter.value._object)];
  [v3 setStatusCode:*(&a1[1].connectionStartTime.value + 6)];
  if ((*(&a1[1].secureConnectionStartTime.value + 5) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [v3 setRequestMessageSize:?];
    if ((*(&a1[1].connectionEndTime.value + 4) & 0x8000000000000000) == 0)
    {
      [v3 setResponseMessageSize:?];
      v17 = *&v1[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
      v18 = swift_allocObject();
      *(v18 + 16) = v3;
      *(v18 + 24) = v1;
      aBlock[4] = sub_100952CF4;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010D1400;
      v19 = _Block_copy(aBlock);
      v20 = v17;
      v21 = v3;
      v22 = v1;

      [v21 setStandardPropertiesWith:v20 completionHandler:v19];
      _Block_release(v19);

      return;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_10094ED18(void *a1)
{
  if (sub_100954FAC())
  {
    sub_100951734(a1, UIScreen.Dimensions.size.getter, 0);
  }
}

void MetricsReportingController.recordComponentRenderEvent(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsComponentRenderEvent()) init];
    if (*(a1 + 8))
    {
      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = 0;
    }

    v11 = String._bridgeToObjectiveC()();
    [v9 setProperty:v10 forBodyKey:v11];
    swift_unknownObjectRelease();

    v12 = *(a1 + 16);
    if (v12 == 27)
    {
      v13 = 0;
    }

    else
    {
      MetricsEvent.TargetType.rawValue.getter(v12);
      v13 = String._bridgeToObjectiveC()();
    }

    v14 = String._bridgeToObjectiveC()();
    [v9 setProperty:v13 forBodyKey:v14];
    swift_unknownObjectRelease();

    v15 = *(a1 + 24);
    v16 = String._bridgeToObjectiveC()();
    [v9 setProperty:v15 forBodyKey:v16];

    v17 = *(a1 + 32);
    v18 = String._bridgeToObjectiveC()();
    [v9 setProperty:v17 forBodyKey:v18];

    v19 = *(a1 + 40);
    v20 = String._bridgeToObjectiveC()();
    [v9 setProperty:v19 forBodyKey:v20];

    v21 = *(a1 + 48);
    v22 = String._bridgeToObjectiveC()();
    [v9 setProperty:v21 forBodyKey:v22];

    v23 = *(a1 + 56);
    v24 = String._bridgeToObjectiveC()();
    [v9 setProperty:v23 forBodyKey:v24];

    v25 = *(a1 + 64);
    v26 = String._bridgeToObjectiveC()();
    [v9 setProperty:v25 forBodyKey:v26];

    v27 = *(a1 + 72);
    if (v27 >= 4)
    {
      v28 = 0;
    }

    else
    {
      v28 = String._bridgeToObjectiveC()();
    }

    v29 = String._bridgeToObjectiveC()();
    [v9 setProperty:v28 forBodyKey:v29];
    swift_unknownObjectRelease();

    v30 = *&v2[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    *(v31 + 24) = v9;
    aBlock[4] = sub_1009536C8;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010D1450;
    v32 = _Block_copy(aBlock);
    v33 = v30;
    v34 = v2;
    v35 = v9;

    [v35 setStandardPropertiesWith:v33 completionHandler:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v9 = &v99 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v101 = v9;
    v100 = a2;
    v103 = v4;
    v15 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsPageRenderEvent()) init];
    swift_beginAccess();
    v16 = *(a1 + 16);
    swift_beginAccess();
    v17 = *(a1 + 32);
    v102 = a3;
    if (v17)
    {
      v18 = v16;
      v19 = 0;
    }

    else
    {
      v20 = *(a1 + 24);
      v21 = objc_opt_self();
      v22 = v16;
      v23 = [v21 serverTimeFromTimeInterval:v20];
      v24 = [v23 unsignedLongLongValue];

      v106[15] = v24;
      v19 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v25 = String._bridgeToObjectiveC()();
    [v15 setProperty:v19 forBodyKey:v25];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v26 = 0;
    if ((*(a1 + 48) & 1) == 0)
    {
      v27 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 40)];
      v28 = [v27 unsignedLongLongValue];

      v106[12] = v28;
      v26 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v29 = String._bridgeToObjectiveC()();
    [v15 setProperty:v26 forBodyKey:v29];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v30 = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      v31 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 56)];
      v32 = [v31 unsignedLongLongValue];

      v106[9] = v32;
      v30 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v33 = String._bridgeToObjectiveC()();
    [v15 setProperty:v30 forBodyKey:v33];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v34 = 0;
    if ((*(a1 + 80) & 1) == 0)
    {
      v35 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 72)];
      v36 = [v35 unsignedLongLongValue];

      v106[6] = v36;
      v34 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v37 = String._bridgeToObjectiveC()();
    [v15 setProperty:v34 forBodyKey:v37];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v38 = 0;
    if ((*(a1 + 96) & 1) == 0)
    {
      v39 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 88)];
      v40 = [v39 unsignedLongLongValue];

      v106[3] = v40;
      v38 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v41 = String._bridgeToObjectiveC()();
    [v15 setProperty:v38 forBodyKey:v41];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v42 = 0;
    if ((*(a1 + 112) & 1) == 0)
    {
      v43 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 104)];
      v44 = [v43 unsignedLongLongValue];

      v106[0] = v44;
      v42 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v45 = String._bridgeToObjectiveC()();
    [v15 setProperty:v42 forBodyKey:v45];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v46 = 0;
    if ((*(a1 + 128) & 1) == 0)
    {
      v47 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 120)];
      v48 = [v47 unsignedLongLongValue];

      v104 = v48;
      v46 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v49 = String._bridgeToObjectiveC()();
    [v15 setProperty:v46 forBodyKey:v49];
    swift_unknownObjectRelease();

    if (v16)
    {
      [v16 requestStartTime];
      v51 = [objc_opt_self() serverTimeFromTimeInterval:v50];
      v52 = [v51 unsignedLongLongValue];

      v104 = v52;
      v53 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v53 = 0;
    }

    v54 = String._bridgeToObjectiveC()();
    [v15 setProperty:v53 forBodyKey:v54];
    swift_unknownObjectRelease();

    if (v16)
    {
      [v16 responseStartTime];
      v56 = [objc_opt_self() serverTimeFromTimeInterval:v55];
      v57 = [v56 unsignedLongLongValue];

      v104 = v57;
      v58 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v58 = 0;
    }

    v59 = String._bridgeToObjectiveC()();
    [v15 setProperty:v58 forBodyKey:v59];
    swift_unknownObjectRelease();

    if (v16)
    {
      [v16 responseEndTime];
      v61 = [objc_opt_self() serverTimeFromTimeInterval:v60];
      v62 = [v61 unsignedLongLongValue];

      v104 = v62;
      v63 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v64 = String._bridgeToObjectiveC()();
      [v15 setProperty:v63 forBodyKey:v64];
      swift_unknownObjectRelease();

      v65 = [v16 cachedResponse];
    }

    else
    {
      v66 = String._bridgeToObjectiveC()();
      [v15 setProperty:0 forBodyKey:v66];

      v65 = 0;
    }

    LOBYTE(v104) = v65;
    v67 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v68 = String._bridgeToObjectiveC()();
    [v15 setProperty:v67 forBodyKey:v68];
    swift_unknownObjectRelease();

    v69 = (a1 + *(*a1 + 160));
    v70 = v69[1];
    v104 = *v69;
    v105 = v70;

    v71 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v72 = String._bridgeToObjectiveC()();
    [v15 setProperty:v71 forBodyKey:v72];
    swift_unknownObjectRelease();

    v73 = v69[3];
    v104 = v69[2];
    v105 = v73;

    v74 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v75 = String._bridgeToObjectiveC()();
    [v15 setProperty:v74 forBodyKey:v75];
    swift_unknownObjectRelease();

    v76 = type metadata accessor for MetricsPageProperties(0);
    v77 = v101;
    sub_1000089F8(v69 + *(v76 + 24), v101, &qword_1011A77F0, &unk_100EEAA20);
    v78 = type metadata accessor for URL();
    v79 = *(v78 - 8);
    if ((*(v79 + 48))(v77, 1, v78) == 1)
    {
      sub_1000095E8(v77, &qword_1011A77F0, &unk_100EEAA20);
      v80 = 0;
    }

    else
    {
      v81 = URL.absoluteString.getter();
      v83 = v82;
      (*(v79 + 8))(v77, v78);
      v104 = v81;
      v105 = v83;
      v80 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v84 = v102;
    v85 = String._bridgeToObjectiveC()();
    [v15 setProperty:v80 forBodyKey:v85];
    swift_unknownObjectRelease();

    if (*(v69 + *(v76 + 28)))
    {
      v104 = *(v69 + *(v76 + 28));

      sub_10010FC20(&qword_1011A98D0, &unk_100EF0DC0);
      v86 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v86 = 0;
    }

    v87 = String._bridgeToObjectiveC()();
    [v15 setProperty:v86 forBodyKey:v87];
    swift_unknownObjectRelease();

    if (v84)
    {
      v104 = v100;
      v105 = v84;

      v88 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v88 = 0;
    }

    v89 = String._bridgeToObjectiveC()();
    [v15 setProperty:v88 forBodyKey:v89];
    swift_unknownObjectRelease();

    v90 = v103;
    v91 = *&v103[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v92 = swift_allocObject();
    *(v92 + 16) = v90;
    *(v92 + 24) = v15;
    v93 = v91;
    v94 = v15;
    v95 = v93;
    v96 = v94;

    v97 = v90;
    v98 = v96;
    sub_100958528(v91, v98, v98, v91, sub_100953700, v92);
  }

  else
  {
    __break(1u);
  }
}

void sub_100950048(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a4(a2))
  {
    sub_100951734(a2, UIScreen.Dimensions.size.getter, 0);
  }
}

void MetricsReportingController.recordCustomEvent(with:properties:sharedListeningContext:shouldSuppressUserInfo:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v23 = a6;
  v22 = a5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v17 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v18 = String._bridgeToObjectiveC()();
    [v17 setTopic:v18];

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v17 addPropertiesWithDictionary:isa];

    [v17 setShouldSuppressUserInfo:a7 & 1];
    [v17 setShouldSuppressDSIDHeader:a7 & 1];

    if (a4 != 2)
    {
      if (sub_100952474(a4 & 1, v22, v23))
      {
        v20 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v17 addPropertiesWithDictionary:v20];
      }
    }

    sub_100951734(v17, a8, a9);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordCarPlayCustomEvent(with:properties:shouldSuppressUserInfo:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a5;
  v40 = a2;
  v38 = a1;
  v37 = type metadata accessor for UUID();
  v10 = *(v37 - 8);
  __chkstk_darwin();
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v18 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v36 = a6;
    v19 = v7;
    v20 = v18;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:a4 & 1];
    [v20 setShouldSuppressDSIDHeader:a4 & 1];

    sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v10 + 8))(v12, v37);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v23;
    *(inited + 56) = v25;
    sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011A8618, &qword_100EED8E0);
    v26 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 addPropertiesWithDictionary:v26];

    v27 = *&v19[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v28 = swift_allocObject();
    v30 = v38;
    v29 = v39;
    v28[2] = v20;
    v28[3] = v30;
    v28[4] = v40;
    v28[5] = v19;
    v31 = v36;
    v28[6] = v29;
    v28[7] = v31;
    aBlock[4] = sub_100945BB8;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010D14C8;
    v32 = _Block_copy(aBlock);
    v33 = v27;

    v34 = v19;

    v35 = v20;

    [v35 setStandardPropertiesWith:v33 completionHandler:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

void sub_10095078C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = String._bridgeToObjectiveC()();
  [a1 setTopic:v12];

  if (qword_1011A6768 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000060E4(v13, static Logger.carMetrics);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_100010678(a2, a3, v20);
    _os_log_impl(&_mh_execute_header, v14, v15, "Inserting carPlay custom event with topic=%{public}s in metrics controller", v16, 0xCu);
    sub_10000959C(v17);
  }

  v18 = *(a4 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
  v20[4] = a5;
  v20[5] = a6;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1001D5D0C;
  v20[3] = &unk_1010D1CF8;
  v19 = _Block_copy(v20);

  [v18 insertEvent:a1 withCompletionHandler:v19];
  _Block_release(v19);
}

Swift::Void __swiftcall MetricsReportingController.reportEventForLocalEvaluation(with:)(Swift::OpaquePointer with)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v5 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v6 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v6 addPropertiesWithDictionary:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100950B54()
{
  if (qword_1011A6818 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = sub_1000060E4(v1, qword_101219A28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MetricsReportingController] Attempting to flush unreported events", v4, 2u);
  }

  v5 = v0[18];

  v6 = *(v5 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
  v0[2] = v0;
  v0[3] = sub_100950D28;
  v7 = swift_continuation_init();
  v0[17] = sub_10010FC20(&unk_1011AD160, &unk_100EF0DD8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100950FD0;
  v0[13] = &unk_1010D14F0;
  v0[14] = v7;
  [v6 flushUnreportedEventsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2, v8);
}

uint64_t sub_100950D28()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_100950E38;
  }

  else
  {
    v2 = sub_1006E1274;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100950E38(uint64_t a1)
{
  v13 = v1;
  swift_willThrow();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[20];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v1[10] = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v7 = String.init<A>(describing:)();
    v9 = sub_100010678(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MetricsReportingController] Failed to flush unreported events with error=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  else
  {
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_100950FD0(uint64_t a1, void *a2)
{
  sub_10000954C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    swift_allocError();
    *v3 = a2;
    v4 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10095107C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_1000095E8(&v8, &qword_1011ABB20, &unk_100EF1530);
    return 0;
  }

  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForConfigurationKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

double sub_1009511AC(void *a1, uint64_t a2)
{
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  v5 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1009546F8, v4);

  return result;
}

uint64_t sub_100951250(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v3 = &v13 - v2;
  if (qword_1011A6818 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101219A28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
  }

  static TaskPriority.low.getter();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  sub_1008A3074(0, 0, v3, &unk_100EF1558, v11);

  return sub_1000095E8(v3, &qword_1011A7F00, &qword_100EEDE10);
}

uint64_t sub_100951498()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    sub_100943CE0(0);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;

    sub_100943CE0(1);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  v0[12] = v5;
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_100951628;

    return MetricsReportingController.flushUnreportedEvents()();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100951628()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100951734(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_100951B78(a1);
    sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v17;
    *(inited + 56) = v19;
    sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011A8618, &qword_100EED8E0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 addPropertiesWithDictionary:isa];

    if (qword_1011A6818 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_101219A28);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "[MetricsReportingController] Inserting main window related event.", v24, 2u);
  }

  v25 = *(v4 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
  v26 = swift_allocObject();
  *(v26 + 16) = v29;
  *(v26 + 24) = a3;
  aBlock[4] = sub_10095456C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D5D0C;
  aBlock[3] = &unk_1010D1D48;
  v27 = _Block_copy(aBlock);

  [v25 insertEvent:a1 withCompletionHandler:v27];
  _Block_release(v27);
}

void sub_100951B78(void *a1)
{
  v3 = [a1 eventType];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_10;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v7)
  {
LABEL_10:

    return;
  }

  if (v5 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return;
    }
  }

  v12 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory;
  swift_beginAccess();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = String._bridgeToObjectiveC()();
  [a1 setProperty:isa forBodyKey:v14];

  v15 = v1;
  v16 = sub_1009550F8();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v20 = *(v15 + v12);
    if (*(v20 + 16) >= 5uLL)
    {

      sub_100951DF0(4, v20);
      *(v15 + v12) = v21;
    }

    swift_beginAccess();
    v22 = *(v15 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + v12) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_10089C4F8(0, *(v22 + 2) + 1, 1, v22);
      *(v15 + v12) = v22;
    }

    v24 = *(v22 + 2);
    v25 = *(v22 + 3);
    v26 = v24 + 1;
    if (v24 >= v25 >> 1)
    {
      v28 = v22;
      v29 = *(v22 + 2);
      v30 = sub_10089C4F8((v25 > 1), v24 + 1, 1, v28);
      v24 = v29;
      v22 = v30;
    }

    *(v22 + 2) = v26;
    v27 = &v22[16 * v24];
    *(v27 + 4) = v18;
    *(v27 + 5) = v19;
    *(v15 + v12) = v22;
    swift_endAccess();
  }
}

void sub_100951DF0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!a1)
  {

    return;
  }

  if (*(a2 + 16) >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  sub_100015C24(0, v4, 0);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2 + 40;
    v22 = *(a2 + 16);
    v21 = v5 - 1;
    do
    {
      v9 = (v8 + 16 * v6);
      while (1)
      {
        if (v6 >= *(a2 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v10 = *(v9 - 1);
        v11 = *v9;
        v12 = v6 + 1;
        v13 = _swiftEmptyArrayStorage[2];
        if (v13 >= a1)
        {
          break;
        }

        v14 = _swiftEmptyArrayStorage[3];

        if (v13 >= v14 >> 1)
        {
          sub_100015C24((v14 > 1), v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        v15 = &_swiftEmptyArrayStorage[2 * v13];
        v15[4] = v10;
        v15[5] = v11;
        v9 += 2;
        v6 = v12;
        if (v22 == v12)
        {
          goto LABEL_23;
        }
      }

      if (v7 >= v13)
      {
        goto LABEL_33;
      }

      v16 = &_swiftEmptyArrayStorage[2 * v7];
      v16[4] = v10;
      v16[5] = v11;

      if ((v7 + 1) < a1)
      {
        ++v7;
      }

      else
      {
        v7 = 0;
      }

      v8 = a2 + 40;
    }

    while (v21 != v6++);
LABEL_23:

    if (!v7)
    {
      return;
    }

    v18 = _swiftEmptyArrayStorage[2];
    sub_100015C24(0, v18, 0);
    if (v18 >= v7)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v19 = _swiftEmptyArrayStorage[2];
      if (v19 >= v7 && v19 >= v18)
      {

        sub_100952D2C(v20, &_swiftEmptyArrayStorage[4], v7, (2 * v18) | 1);

        sub_100952D2C(_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage[4], 0, (2 * v7) | 1);

        return;
      }

      goto LABEL_36;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }
}

id MetricsReportingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsReportingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10095212C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100016270(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_10010FC20(&qword_1011ABB20, &unk_100EF1530);
  sub_100009F78(0, &qword_1011A9B28, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t _s9MusicCore12MetricsEventV5ClickV13ActionContextO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        if (a4 == 6)
        {
          return 1;
        }
      }

      else if (a2 == 7)
      {
        if (a4 == 7)
        {
          return 1;
        }
      }

      else if (a4 == 8)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        return a4 == 9;
      case 10:
        return a4 == 10;
      case 11:
        return a4 == 11;
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a2 == 4)
      {
        if (a4 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 0xC)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100952368(unint64_t a1)
{
  if (a1 <= 1)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  if (a1 - 5 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 3419442;
  }

  if (a1 - 8 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 3616053;
  }

  if (a1 - 11 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 808529208;
  }

  if (a1 - 16 > 0xFFFFFFFFFFFFFFFALL)
  {
    return 0x35312D3131;
  }

  if (a1 - 21 > 0xFFFFFFFFFFFFFFFALL)
  {
    return 0x30322D3631;
  }

  if (a1 - 26 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0x35322D3132;
  }

  return 2831922;
}

unint64_t sub_100952474(char a1, unint64_t a2, unint64_t a3)
{
  sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBE260;
    strcpy((inited + 32), "sharedActivity");
    *(inited + 47) = -18;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD00000000000001CLL;
    *(inited + 88) = 0x8000000100E5C3B0;
    *(inited + 96) = sub_100952368(a2);
    *(inited + 104) = v7;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0xD000000000000018;
    *(inited + 136) = 0x8000000100E5BEF0;
    v8 = sub_100952368(a3);
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v8;
    *(inited + 152) = v9;
    v10 = sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_10010FC20(&qword_1011A8618, &qword_100EED8E0);
    swift_arrayDestroy();
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 32) = 0x6341646572616873;
    v12 = v11 + 32;
    *(v11 + 16) = xmmword_100EBC6B0;
    *(v11 + 40) = 0xEE00797469766974;
    *(v11 + 72) = &type metadata for Bool;
    *(v11 + 48) = 0;
    v10 = sub_1008BC8D8(v11);
    swift_setDeallocating();
    sub_1000095E8(v12, &qword_1011A8618, &qword_100EED8E0);
  }

  return v10;
}

unint64_t _s9MusicCore12MetricsEventV10TargetTypeO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100952678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t _s9MusicCore12MetricsEventV5ClickV10ActionTypeO8rawValueAGSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x41)
  {
    return 65;
  }

  else
  {
    return v2;
  }
}

double sub_100952794@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 domainLookupStartTime];
  v70 = v4;
  [a1 domainLookupEndTime];
  v6 = v5;
  [a1 connectionStartTime];
  v8 = v7;
  [a1 secureConnectionStartTime];
  v10 = v9;
  [a1 connectionEndTime];
  v12 = v11;
  [a1 requestStartTime];
  v14 = v13;
  [a1 responseStartTime];
  v16 = v15;
  [a1 responseEndTime];
  v18 = v17;
  [a1 fetchStartTime];
  v20 = v19;
  v69 = [a1 redirectCount];
  v21 = [a1 requestUrl];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v24;
    v68 = v23;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v66 = [a1 cachedResponse];
  v65 = [a1 connectionReused];
  v25 = [a1 appleTimingApp];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v28;
    v64 = v27;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v29 = [a1 connectionType];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v32;
    v62 = v31;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v33 = [a1 edgeNodeCacheStatus];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v36;
    v60 = v35;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v37 = [a1 environmentDataCenter];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v40;
    v57 = v39;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v41 = [a1 responseDate];
  if (v41)
  {
    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = [a1 statusCode];
  v47 = [a1 requestMessageSize];
  v48 = [a1 responseMessageSize];
  v49 = [a1 resolvedIPAddress];
  if (v49)
  {
    v50 = v49;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {

    v51 = 0;
    v53 = 0;
  }

  result = v70;
  *a2 = v70;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  *(a2 + 48) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = v12;
  *(a2 + 72) = 0;
  *(a2 + 80) = v14;
  *(a2 + 88) = 0;
  *(a2 + 96) = v16;
  *(a2 + 104) = 0;
  *(a2 + 112) = v18;
  *(a2 + 120) = 0;
  *(a2 + 128) = v20;
  *(a2 + 136) = 0;
  *(a2 + 144) = v69;
  *(a2 + 152) = 0;
  *(a2 + 160) = v68;
  *(a2 + 168) = v67;
  *(a2 + 176) = v66;
  *(a2 + 177) = v65;
  *(a2 + 184) = v64;
  *(a2 + 192) = v63;
  *(a2 + 200) = v62;
  *(a2 + 208) = v61;
  *(a2 + 216) = v60;
  *(a2 + 224) = v59;
  *(a2 + 232) = v58;
  *(a2 + 240) = v56;
  *(a2 + 248) = v43;
  *(a2 + 256) = v45;
  *(a2 + 264) = v46;
  *(a2 + 272) = v47;
  *(a2 + 280) = v48;
  *(a2 + 288) = v51;
  *(a2 + 296) = v53;
  return result;
}

unint64_t _s9MusicCore12MetricsEventV15ComponentRenderV13PreloadStatusO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6F88, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

char *sub_100952D2C(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

LABEL_11:
      result = sub_100015C24(result, v11, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v12 = *(v10 + 16);
    v13 = __OFADD__(v12, v9);
    v14 = v12 + v9;
    if (!v13)
    {
      *(v10 + 16) = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(uint64_t a1)
{
  v2 = type metadata accessor for Date.ISO8601FormatStyle();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin();
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Date();
  v50 = *(v52 - 8);
  __chkstk_darwin();
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SSMetricsDialogEvent) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setDialogId:v6];

  v7 = String._bridgeToObjectiveC()();

  [v5 setDialogType:v7];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 24);
    sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x656C746974;
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011A8618, &qword_100EED8E0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 addPropertiesWithDictionary:isa];
  }

  if (*(a1 + 48))
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v5 setMessage:v12];

  v13 = sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
  v14 = swift_initStackObject();
  v56 = xmmword_100EBC6B0;
  *(v14 + 16) = xmmword_100EBC6B0;
  *(v14 + 32) = 0x436567617373656DLL;
  v16 = *(a1 + 56);
  v15 = *(a1 + 64);
  *(v14 + 72) = &type metadata for String;
  *(v14 + 40) = 0xEB0000000065646FLL;
  *(v14 + 48) = v16;
  *(v14 + 56) = v15;

  sub_1008BC8D8(v14);
  swift_setDeallocating();
  sub_1000095E8(v14 + 32, &qword_1011A8618, &qword_100EED8E0);
  v17 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 addPropertiesWithDictionary:v17];

  v48 = v13;
  v18 = swift_initStackObject();
  *(v18 + 16) = v56;
  *(v18 + 32) = 0x736E6F6974706FLL;
  *(v18 + 40) = 0xE700000000000000;
  v19 = *(a1 + 72);
  *(v18 + 72) = sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
  *(v18 + 48) = v19;

  sub_1008BC8D8(v18);
  swift_setDeallocating();
  sub_1000095E8(v18 + 32, &qword_1011A8618, &qword_100EED8E0);
  v20 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 addPropertiesWithDictionary:v20];

  v21 = String._bridgeToObjectiveC()();
  [v5 setResult:v21];

  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = *(a1 + 80);
    v24 = swift_initStackObject();
    *(v24 + 32) = 0x497463656A627573;
    *(v24 + 16) = v56;
    *(v24 + 72) = &type metadata for String;
    *(v24 + 40) = 0xE900000000000044;
    *(v24 + 48) = v23;
    *(v24 + 56) = v22;

    sub_1008BC8D8(v24);
    swift_setDeallocating();
    sub_1000095E8(v24 + 32, &qword_1011A8618, &qword_100EED8E0);
    v25 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 addPropertiesWithDictionary:v25];
  }

  v27 = *(a1 + 96);
  v26 = *(a1 + 104);

  v28 = String._bridgeToObjectiveC()();
  [v5 setTargetId:v28];

  sub_10010FC20(&qword_1011A98C0, &qword_100EF0D98);
  v29 = swift_allocObject();
  v48 = v5;
  v30 = v29;
  *(v29 + 16) = v56;
  sub_10010FC20(&unk_1011ACB60, &qword_100EF0D88);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_100EBE260;
  strcpy((v31 + 32), "responseTime");
  *(v31 + 45) = 0;
  *(v31 + 46) = -5120;
  v32 = v49;
  static Date.now.getter();
  v33 = v51;
  static FormatStyle<>.iso8601.getter();
  sub_100954604();
  v34 = v54;
  Date.formatted<A>(_:)();
  (*(v53 + 8))(v33, v34);
  (*(v50 + 8))(v32, v52);
  v35 = v58;
  *(v31 + 48) = v57;
  *(v31 + 56) = v35;
  *(v31 + 64) = 0x79546E6F69746361;
  *(v31 + 72) = 0xEA00000000006570;
  v36 = 27503;
  if (*(a1 + 112))
  {
    v36 = 0x6C436C65636E6163;
  }

  v37 = 0xE200000000000000;
  if (*(a1 + 112))
  {
    v37 = 0xED000064656B6369;
  }

  *(v31 + 80) = v36;
  *(v31 + 88) = v37;
  *(v31 + 96) = 0x6449746567726174;
  *(v31 + 104) = 0xE800000000000000;
  *(v31 + 112) = v27;
  *(v31 + 120) = v26;
  v38 = sub_1008BC7B0(v31);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A98B0, &qword_100EF0D90);
  swift_arrayDestroy();
  *(v30 + 56) = sub_10010FC20(&qword_1011A98D0, &unk_100EF0DC0);
  *(v30 + 32) = v38;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  v40 = v48;
  [v48 setUserActions:v39];

  v41 = v55;
  v42 = *&v55[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v40;
  v61 = sub_10095465C;
  v62 = v43;
  v57 = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_10002BC98;
  v60 = &unk_1010D1DE8;
  v44 = _Block_copy(&v57);
  v45 = v42;
  v46 = v41;
  v47 = v40;

  [v47 setStandardPropertiesWith:v45 completionHandler:v44];
  _Block_release(v44);
}

unint64_t sub_100953754()
{
  result = qword_1011A98E8;
  if (!qword_1011A98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A98E8);
  }

  return result;
}

unint64_t sub_1009537AC()
{
  result = qword_1011A98F0;
  if (!qword_1011A98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A98F0);
  }

  return result;
}

unint64_t sub_100953804()
{
  result = qword_1011A98F8;
  if (!qword_1011A98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A98F8);
  }

  return result;
}

unint64_t sub_10095385C()
{
  result = qword_1011A9900;
  if (!qword_1011A9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9900);
  }

  return result;
}

unint64_t sub_1009538B4()
{
  result = qword_1011A9908;
  if (!qword_1011A9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9908);
  }

  return result;
}

unint64_t sub_10095390C()
{
  result = qword_1011A9910;
  if (!qword_1011A9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9910);
  }

  return result;
}

unint64_t sub_100953964()
{
  result = qword_1011A9918;
  if (!qword_1011A9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9918);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsEvent.TargetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsEvent.TargetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100953B64(uint64_t a1)
{
  sub_100039B94(319);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_1011A7FC0, &qword_1011A7FC8, &qword_100EF1250);
    if (v2 <= 0x3F)
    {
      sub_1000308A0(319, &qword_1011A7FB0, &type metadata for MetricsEvent.Click.ActionContext);
      if (v3 <= 0x3F)
      {
        sub_1000308A0(319, &unk_1011A9A50, &type metadata for MetricsEvent.Click.ActionDetails);
        if (v4 <= 0x3F)
        {
          sub_10003920C(319, &qword_1011A7FD0, &qword_1011A7FD8, &qword_100EED050);
          if (v5 <= 0x3F)
          {
            sub_1000308A0(319, &qword_1011AEEF0, &type metadata for String);
            if (v6 <= 0x3F)
            {
              sub_10003920C(319, &qword_1011A9990, &qword_1011A98D0, &unk_100EF0DC0);
              if (v7 <= 0x3F)
              {
                sub_1000308A0(319, &qword_1011A9998, &type metadata for MetricsEvent.Page.DisplayType);
                if (v8 <= 0x3F)
                {
                  sub_1000308A0(319, &unk_1011A99A0, &type metadata for Bool);
                  if (v9 <= 0x3F)
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
  }
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Click.ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC0)
  {
    goto LABEL_17;
  }

  if (a2 + 64 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 64) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 64;
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

      return (*a1 | (v4 << 8)) - 64;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 64;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x41;
  v8 = v6 - 65;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsEvent.Click.ActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 64 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 64) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC0)
  {
    v4 = 0;
  }

  if (a2 > 0xBF)
  {
    v5 = ((a2 - 192) >> 8) + 1;
    *result = a2 + 64;
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
    *result = a2 + 64;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100953EC8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100953EE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100953F38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_100953F88(void *result, int a2)
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

uint64_t sub_100953FB8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100953FD0(uint64_t a1)
{
  if ((*(a1 + 25) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 25) & 7;
  }
}

__n128 sub_100953FEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100954000(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 26))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 25);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100954048(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = -a2;
    }
  }

  return result;
}

uint64_t sub_100954090(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
    *(result + 24) = 0;
  }

  *(result + 25) = a2;
  return result;
}

__n128 sub_1009540C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1009540D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100954124(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}