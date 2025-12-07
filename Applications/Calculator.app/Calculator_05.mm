double sub_100082EC4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = type metadata accessor for InsetListStyle();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CalculatorHistoryListView(0);
  v61 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v55 = v6;
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003AE84(&qword_1001566C8, &qword_10010F830);
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v72 = &v50 - v9;
  v10 = sub_10003AE84(&qword_1001566D0, &qword_10010F838);
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin(v10);
  v63 = &v50 - v11;
  v69 = sub_10003AE84(&qword_1001566D8, &qword_10010F840);
  __chkstk_darwin(v69);
  v70 = &v50 - v12;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 40) == 1)
  {
    v76 = *(v2 + 32);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
  }

  v18 = swift_allocBox();
  v20 = v19;
  v59 = v19;
  type metadata accessor for CalculatorHistoryViewModel(0);
  v62 = sub_10000F2E8(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  Bindable<A>.init(wrappedValue:)();
  v21 = v73;
  v22 = *(v73 + 16);
  v58 = v73 + 16;
  v60 = v22;
  v23 = v72;
  v22(v72, v20, v8);
  Bindable.wrappedValue.getter();
  v24 = *(v21 + 8);
  v73 = v21 + 8;
  v57 = v24;
  v24(v23, v8);
  v25 = *(v76 + 16);

  swift_getKeyPath();
  v76 = v25;
  sub_10000F2E8(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v51 = *(v25 + 48);

  type metadata accessor for MainActor();

  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v18;
  sub_10008B4C8(v2, v7);
  v56 = v18;

  v28 = static MainActor.shared.getter();
  v54 = v8;
  v29 = *(v61 + 80);
  v53 = v2;
  v30 = v55;
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = &protocol witness table for MainActor;
  v31[4] = v18;
  sub_10008B52C(v7, v31 + ((v29 + 40) & ~v29));
  sub_10003AE84(&qword_1001566E0, &qword_10010F870);
  Binding.init(get:set:)();
  sub_10008B4C8(v2, v7);
  v55 = ((v29 + 16) & ~v29) + v30;
  v61 = (v29 + 16) & ~v29;
  v32 = swift_allocObject();
  v52 = v7;
  v33 = sub_10008B52C(v7, v32 + ((v29 + 16) & ~v29));
  v74 = v51;
  __chkstk_darwin(v33);
  *(&v50 - 4) = &v74;
  *(&v50 - 3) = sub_10008B694;
  sub_10003AE84(&qword_1001566E8, &qword_10010F878);
  v49 = sub_10008C51C();
  v34 = v63;
  List.init(selection:content:)();

  v35 = v66;
  InsetListStyle.init()();
  sub_100004880(&qword_1001567B0, &qword_1001566D0, &qword_10010F838, &protocol conformance descriptor for List<A, B>);
  v36 = v70;
  v37 = v65;
  v38 = v68;
  View.listStyle<A>(_:)();
  (*(v67 + 8))(v35, v38);
  (*(v64 + 8))(v34, v37);
  v39 = static Color.gray.getter();
  KeyPath = swift_getKeyPath();
  v41 = (v36 + *(v69 + 36));
  *v41 = KeyPath;
  v41[1] = v39;
  v42 = v72;
  v43 = v54;
  v60(v72, v59, v54);
  Bindable.wrappedValue.getter();
  v57(v42, v43);
  v44 = v75;
  swift_getKeyPath();
  v75 = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v42) = *(v44 + 32);

  LOBYTE(v75) = v42;
  v45 = v52;
  sub_10008B4C8(v53, v52);
  v46 = (v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  sub_10008B52C(v45, v47 + v61);
  *(v47 + v46) = v56;
  sub_10008CC04();

  View.onChange<A>(of:initial:_:)();

  sub_1000035CC(v36, &qword_1001566D8, &qword_10010F840);

  return result;
}

void sub_10008387C(void *a2@<X8>)
{
  v3 = sub_10003AE84(&qword_1001566C8, &qword_10010F830);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = swift_projectBox();
  (*(v4 + 16))(v6, v7, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  v8 = v11;
  swift_getKeyPath();
  v11 = v8;
  sub_10000F2E8(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v9 = *(v8 + 24);

  *a2 = v9;
}

double sub_100083A24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10003AE84(&qword_1001566C8, &qword_10010F830);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = *a1;
  v10 = swift_projectBox();
  v11 = *(v6 + 16);
  v11(v8, v10, v5);
  Bindable.wrappedValue.getter();
  v12 = *(v6 + 8);
  v12(v8, v5);

  sub_10004CDFC(v13);

  if (*(v9 + 16))
  {
    v11(v8, v10, v5);
    Bindable.wrappedValue.getter();
    v12(v8, v5);
    v15 = v18;
    swift_getKeyPath();
    v18 = v15;
    sub_10000F2E8(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *(v15 + 40);

    if (v16)
    {
      sub_100083C44(v16);
    }
  }

  return result;
}

void sub_100083C44(uint64_t a1)
{
  v58 = a1;
  v2 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v55 = *(v2 - 8);
  v56 = v2;
  __chkstk_darwin(v2);
  v54 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EnvironmentValues();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EditMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003AE84(&qword_1001569C8, &qword_10010FC70);
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v12 = sub_10003AE84(&qword_100156660, &qword_10010F7C0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v53 - v13);
  v15 = sub_10003AE84(&qword_1001569D0, &qword_10010FC78);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  type metadata accessor for CalculatorHistoryListView(0);
  v59 = v1;
  sub_1000E7544(v14);
  v24 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
  if ((*(*(v24 - 8) + 48))(v14, 1, v24) == 1)
  {
    sub_1000035CC(v14, &qword_100156660, &qword_10010F7C0);
    v25 = 1;
  }

  else
  {
    Binding.wrappedValue.getter();
    sub_1000035CC(v14, &qword_1001566B8, &qword_10010F820);
    v25 = 0;
  }

  v26 = *(v7 + 56);
  v26(v23, v25, 1, v6);
  (*(v7 + 104))(v20, enum case for EditMode.active(_:), v6);
  v26(v20, 0, 1, v6);
  v27 = *(v9 + 48);
  sub_100008E68(v23, v11, &qword_1001569D0, &qword_10010FC78);
  sub_100008E68(v20, &v11[v27], &qword_1001569D0, &qword_10010FC78);
  v28 = *(v7 + 48);
  if (v28(v11, 1, v6) == 1)
  {
    sub_1000035CC(v20, &qword_1001569D0, &qword_10010FC78);
    sub_1000035CC(v23, &qword_1001569D0, &qword_10010FC78);
    if (v28(&v11[v27], 1, v6) == 1)
    {
      sub_1000035CC(v11, &qword_1001569D0, &qword_10010FC78);
      return;
    }
  }

  else
  {
    sub_100008E68(v11, v17, &qword_1001569D0, &qword_10010FC78);
    if (v28(&v11[v27], 1, v6) != 1)
    {
      v50 = v57;
      (*(v7 + 32))(v57, &v11[v27], v6);
      sub_10000F2E8(&qword_1001569D8, &type metadata accessor for EditMode, &protocol conformance descriptor for EditMode);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v7 + 8);
      v52(v50, v6);
      sub_1000035CC(v20, &qword_1001569D0, &qword_10010FC78);
      sub_1000035CC(v23, &qword_1001569D0, &qword_10010FC78);
      v52(v17, v6);
      sub_1000035CC(v11, &qword_1001569D0, &qword_10010FC78);
      v30 = v61;
      v29 = v62;
      v31 = v60;
      if (v51)
      {
        return;
      }

      goto LABEL_10;
    }

    sub_1000035CC(v20, &qword_1001569D0, &qword_10010FC78);
    sub_1000035CC(v23, &qword_1001569D0, &qword_10010FC78);
    (*(v7 + 8))(v17, v6);
  }

  sub_1000035CC(v11, &qword_1001569C8, &qword_10010FC70);
  v30 = v61;
  v29 = v62;
  v31 = v60;
LABEL_10:
  v32 = v59;
  v33 = *(v59 + 8);

  if ((v33 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v30 + 8))(v31, v29);
  }

  v35 = *(v32 + 24);

  if ((v35 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v30 + 8))(v31, v29);
  }

  v37 = sub_100074054();

  sub_10005C034(v58, v37, v38);

  v39 = *(v32 + 48);
  v40 = *(v32 + 56);

  v41 = v39;
  if ((v40 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v30 + 8))(v31, v29);
    v41 = v63;
  }

  swift_getKeyPath();
  *&v63 = v41;
  sub_10000F2E8(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = *(v41 + 17);

  if ((v43 & 1) == 0)
  {

    v44 = v39;
    if ((v40 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v45 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v30 + 8))(v31, v29);
      v44 = v63;
    }

    swift_getKeyPath();
    *&v63 = v44;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = *(v44 + 16);

    if (v46 == 1)
    {

      if ((v40 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v47 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v30 + 8))(v31, v29);
      }

      if (qword_100154728 != -1)
      {
        swift_once();
      }

      sub_10000362C();
      sub_100091C5C(0);

      v63 = 0u;
      v64 = 0u;
      v48 = v54;
      AccessibilityNotification.ScreenChanged.init(_:)();
      v49 = v56;
      _AccessibilityNotifications.post()();
      (*(v55 + 8))(v48, v49);
    }
  }
}

uint64_t sub_100084710(unint64_t *a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100156710, &qword_10010F888);
  __chkstk_darwin(v4);
  v6 = &v14[-v5];
  v7 = sub_10003AE84(&qword_1001566F8, &qword_10010F880);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-v9];
  v11 = a1[1];
  v12 = a1[2];
  v15 = *a1;
  v16 = v11;
  v17 = v12;
  v18 = a2;
  sub_100085EEC(v15, v11, a2, v6);
  sub_10003AE84(&qword_100156758, &qword_10010F8A8);
  sub_10008C674();
  sub_10008C838();
  Section<>.init(header:content:)();
  static VerticalEdge.Set.all.getter();
  sub_10008C5DC();
  View.listSectionSeparator(_:edges:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000848E0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CalculatorHistoryListView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_10003AE84(&qword_100156768, &qword_10010F8B0);
  v31 = *(v12 - 8);
  v32 = v12;
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v34 = a1;
  sub_10008B4C8(a2, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  sub_10008B52C(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);

  sub_10003AE84(&qword_100154E28, &unk_10010C590);
  sub_10003AE84(&qword_100156778, &qword_10010F8B8);
  sub_100004880(&qword_1001567F0, &qword_100154E28, &unk_10010C590, &protocol conformance descriptor for [A]);
  sub_10008C974();
  sub_10000F2E8(&qword_100156210, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EC2C);
  ForEach<>.init(_:content:)();
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);

  v19 = v17;
  if ((v18 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v19 = v34;
  }

  v30 = v5;
  swift_getKeyPath();
  v34 = v19;
  sub_10000F2E8(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v19 + 17);

  if ((v18 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v30);
    v17 = v34;
  }

  swift_getKeyPath();
  v34 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v17 + 17);

  if (v21)
  {
    v24 = 0x402C000000000000;
  }

  else
  {
    v24 = 0x4034000000000000;
  }

  if (v23)
  {
    v25 = 0x402C000000000000;
  }

  else
  {
    v25 = 0x4034000000000000;
  }

  v26 = v33;
  (*(v31 + 32))(v33, v14, v32);
  result = sub_10003AE84(&qword_100156758, &qword_10010F8A8);
  v28 = v26 + *(result + 36);
  *v28 = 0x4024000000000000;
  *(v28 + 8) = v24;
  *(v28 + 16) = 0x4036000000000000;
  *(v28 + 24) = v25;
  *(v28 + 32) = 0;
  return result;
}

uint64_t sub_100084E0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v16 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003AE84(&qword_100156790, &qword_10010F8C8);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = sub_10003AE84(&qword_1001567F8, &qword_10010F9E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  sub_1000850C0(*a1, v8);
  static AccessibilityChildBehavior.combine.getter();
  v13 = sub_100004880(&qword_100156798, &qword_100156790, &qword_10010F8C8, &protocol conformance descriptor for SubscriptionView<A, B>);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v16);
  sub_1000035CC(v8, &qword_100156790, &qword_10010F8C8);
  v18 = v6;
  v19 = v13;
  swift_getOpaqueTypeConformance2();
  v14 = v17;
  View.accessibilityIdentifier(_:)();
  (*(v10 + 8))(v12, v9);
  result = sub_10003AE84(&qword_100156778, &qword_10010F8B8);
  *(v14 + *(result + 36)) = 1;
  return result;
}

double sub_1000850C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v102 = a2;
  v3 = type metadata accessor for CalculatorHistoryListView(0);
  v99 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v100 = v4;
  v101 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for AccessibilityChildBehavior();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10003AE84(&qword_100156800, &qword_10010F9E8);
  __chkstk_darwin(v76);
  v7 = &v75 - v6;
  v77 = sub_10003AE84(&qword_100156808, &qword_10010F9F0);
  __chkstk_darwin(v77);
  v83 = &v75 - v8;
  v81 = sub_10003AE84(&qword_100156810, &qword_10010F9F8);
  __chkstk_darwin(v81);
  v85 = &v75 - v9;
  v84 = sub_10003AE84(&qword_100156818, &qword_10010FA00);
  __chkstk_darwin(v84);
  v82 = &v75 - v10;
  v87 = sub_10003AE84(&qword_100156820, &qword_10010FA08);
  __chkstk_darwin(v87);
  v86 = &v75 - v11;
  v91 = sub_10003AE84(&qword_100156828, &qword_10010FA10);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v75 - v12;
  v93 = sub_10003AE84(&qword_100156830, &qword_10010FA18);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v75 - v13;
  v98 = sub_10003AE84(&qword_100156838, &qword_10010FA20);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v75 - v14;
  v95 = sub_10003AE84(&qword_100156790, &qword_10010F8C8);
  __chkstk_darwin(v95);
  v94 = &v75 - v15;
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v21 = v2[40];

  if ((v21 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
  }

  v23 = swift_allocObject();

  v24 = sub_100046CA8(v105);

  v104 = v23;
  *(v23 + 16) = v24;
  v25 = (v23 + 16);

  if ((v21 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
  }

  v27 = swift_allocObject();

  v28 = v105;
  v29 = sub_100047188(v105);

  *(v27 + 16) = v29;

  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0x4010000000000000;
  v7[16] = 0;
  v30 = sub_10003AE84(&qword_100156840, &qword_10010FA28);
  sub_100086D10(v20, v25, v28, (v27 + 16), &v7[*(v30 + 44)]);
  LOBYTE(v29) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v31 = &v7[*(v76 + 36)];
  *v31 = v29;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = v78;
  static AccessibilityChildBehavior.ignore.getter();
  sub_10008CE78();
  v37 = v83;
  View.accessibilityElement(children:)();
  (*(v79 + 8))(v36, v80);
  sub_1000035CC(v7, &qword_100156800, &qword_10010F9E8);
  v38 = sub_100086810(v28, v20, &unk_10010FB88);
  v39 = sub_100086810(v28, v20, &unk_10010FB30);
  v40 = (v37 + *(v77 + 36));
  *v40 = v28;
  v40[1] = v38;
  v40[2] = v39;

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v41 = v85;
  sub_10000D5B8(v37, v85, &qword_100156808, &qword_10010F9F0);
  v42 = (v41 + *(v81 + 36));
  v43 = v115;
  v42[4] = v114;
  v42[5] = v43;
  v42[6] = v116;
  v44 = v111;
  *v42 = v110;
  v42[1] = v44;
  v45 = v113;
  v42[2] = v112;
  v42[3] = v45;
  v46 = v41;
  v47 = v82;
  sub_10000D5B8(v46, v82, &qword_100156810, &qword_10010F9F8);
  *(v47 + *(v84 + 36)) = 0;
  v48 = v86;
  v49 = sub_10000D5B8(v47, v86, &qword_100156818, &qword_10010FA00);
  v50 = v87;
  *(v48 + *(v87 + 36)) = 0;
  __chkstk_darwin(v49);
  v103 = v27;
  v51 = sub_10003AE84(&qword_100156860, &qword_10010FA38);
  v52 = sub_10008CF40();
  v53 = sub_100004880(&qword_100156890, &qword_100156860, &qword_10010FA38, &protocol conformance descriptor for TupleView<A>);
  v54 = v88;
  View.contextMenu<A>(menuItems:)();
  v55 = sub_1000035CC(v48, &qword_100156820, &qword_10010FA08);
  __chkstk_darwin(v55);
  v56 = sub_10003AE84(&qword_100156898, &qword_10010FA48);
  v106 = v50;
  v107 = v51;
  v108 = v52;
  v109 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = sub_10008D234();
  v59 = v90;
  v60 = v91;
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  v61 = (*(v89 + 8))(v54, v60);
  __chkstk_darwin(v61);
  v106 = v60;
  v107 = v56;
  v108 = OpaqueTypeConformance2;
  v109 = v58;
  swift_getOpaqueTypeConformance2();
  v62 = v96;
  v63 = v93;
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  (*(v92 + 8))(v59, v63);
  if (qword_1001544E8 != -1)
  {
    swift_once();
  }

  v64 = v101;
  sub_10008B4C8(v20, v101);
  v65 = (*(v99 + 80) + 24) & ~*(v99 + 80);
  v66 = (v100 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  *(v67 + 16) = v104;
  sub_10008B52C(v64, v67 + v65);
  *(v67 + v66) = v28;
  *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v103;
  v68 = objc_opt_self();

  v69 = [v68 defaultCenter];
  v70 = v95;
  v71 = v94;
  NSNotificationCenter.publisher(for:object:)();

  v72 = swift_allocObject();
  *(v72 + 16) = sub_10008D3E0;
  *(v72 + 24) = v67;
  (*(v97 + 32))(v71, v62, v98);
  v73 = (v71 + *(v70 + 56));
  *v73 = sub_10008D47C;
  v73[1] = v72;
  sub_10000D5B8(v71, v102, &qword_100156790, &qword_10010F8C8);

  return result;
}

uint64_t sub_100085EEC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EnvironmentValues();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - v12;
  v14 = sub_10003AE84(&qword_100156720, &qword_10010F890);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v39 = a4;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v17 = 0x8000000100105860;
        v18 = 0xD000000000000010;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v17 = 0xEF73796144203720;
    v18 = 0x73756F6976657250;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v17 = 0xE900000000000079;
        v18 = 0x6164726574736559;
        goto LABEL_11;
      }

LABEL_8:
      v18 = a1;
      v17 = a2;
      goto LABEL_11;
    }

    v17 = 0xE500000000000000;
    v18 = 0x7961646F54;
  }

LABEL_11:
  type metadata accessor for CalculatorHistoryListView(0);
  sub_100048EE4(a1, a2);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.medium.getter();
  v19 = type metadata accessor for Font.Design();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = static Font.system(size:weight:design:)();
  sub_1000035CC(v13, &qword_1001567E0, &qword_10010F970);
  if (qword_1001545A0 != -1)
  {
    swift_once();
  }

  v21 = qword_100160BC8;
  v22 = &v16[*(v14 + 36)];
  v23 = *(sub_10003AE84(&qword_100156738, &qword_10010F898) + 28);
  v24 = type metadata accessor for Text.Case();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  *v22 = swift_getKeyPath();
  *v16 = v18;
  *(v16 + 1) = v17;
  *(v16 + 2) = v20;
  *(v16 + 3) = v21;
  v16[32] = a2 < 4;
  v25 = *(a3 + 48);
  v26 = *(a3 + 56);

  v27 = v25;
  if ((v26 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v37 + 8))(v10, v38);
    v27 = v40;
  }

  swift_getKeyPath();
  v40 = v27;
  sub_10000F2E8(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v27 + 17);

  if ((v26 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v37 + 8))(v10, v38);
    v25 = v40;
  }

  swift_getKeyPath();
  v40 = v25;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = *(v25 + 17);

  if (v29)
  {
    v32 = 0x403C000000000000;
  }

  else
  {
    v32 = 0x4034000000000000;
  }

  if (v31)
  {
    v33 = 0x403C000000000000;
  }

  else
  {
    v33 = 0x4034000000000000;
  }

  v34 = v39;
  sub_10000D5B8(v16, v39, &qword_100156720, &qword_10010F890);
  result = sub_10003AE84(&qword_100156710, &qword_10010F888);
  v36 = v34 + *(result + 36);
  *v36 = 0x4028000000000000;
  *(v36 + 8) = v32;
  *(v36 + 16) = 0x4028000000000000;
  *(v36 + 24) = v33;
  *(v36 + 32) = 0;
  return result;
}

double sub_1000864B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10003AE84(&qword_1001566C8, &qword_10010F830);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  LOBYTE(a3) = *(a3 + 8);

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v13 = v21;
  }

  v15 = swift_projectBox();
  (*(v6 + 16))(v8, v15, v5);
  Bindable.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  v16 = sub_10004EC90();

  swift_getKeyPath();
  v21 = v13;
  sub_10000F2E8(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v13 + 54);
  if (v17 == 11)
  {
    if (v16 != 11)
    {
LABEL_5:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v20 - 2) = v13;
      *(&v20 - 8) = v16;
      v21 = v13;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return result;
    }
  }

  else if (v17 != v16)
  {
    goto LABEL_5;
  }

  return result;
}

id sub_100086810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  swift_getKeyPath();
  sub_10000F2E8(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10000F2E8(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  sub_10004B3E8();
  PersistentModel.getValue<A>(forKey:)();

  if (!v17[1])
  {
    return 0;
  }

  v9 = *(a2 + 24);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v11 = sub_100074054();

  v12 = *(v11 + 16);

  swift_getKeyPath();
  v17[0] = v12;
  sub_10000F2E8(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + 16);

  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 findUnitWithName:v14];

  return v15;
}

uint64_t sub_100086B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100086810(a1, a2, a4);
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();

    v6 = CalculateExpression.copyableExpression.getter();

    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);

    v8 = [v5 shortName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    return v6;
  }

  else
  {
    swift_beginAccess();

    v14 = CalculateExpression.copyableExpression.getter();

    return v14;
  }
}

uint64_t sub_100086C6C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();

  v5 = CalculateExpression.prefersRTL.getter();

  if (v5)
  {
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    return 9404642;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_100086D10@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, uint64_t a5@<X8>)
{
  v155 = a4;
  v162 = a5;
  v8 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  __chkstk_darwin(v8 - 8);
  v163 = &v138 - v9;
  v176 = sub_10003AE84(&qword_100156938, &qword_10010FBB0);
  v173 = *(v176 - 8);
  __chkstk_darwin(v176);
  v164 = &v138 - v10;
  v11 = sub_10003AE84(&qword_100156940, &qword_10010FBB8);
  __chkstk_darwin(v11 - 8);
  v159 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v174 = &v138 - v14;
  __chkstk_darwin(v15);
  v169 = &v138 - v16;
  v17 = sub_10003AE84(&qword_100156948, &qword_10010FBC0);
  __chkstk_darwin(v17 - 8);
  v19 = &v138 - v18;
  v20 = type metadata accessor for CalculateExpressionView();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10003AE84(&qword_100156950, &qword_10010FBC8);
  __chkstk_darwin(v24 - 8);
  v170 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v171 = &v138 - v27;
  __chkstk_darwin(v28);
  v168 = &v138 - v29;
  v172 = sub_10003AE84(&qword_100156958, &qword_10010FBD0);
  __chkstk_darwin(v172);
  v161 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v160 = &v138 - v32;
  __chkstk_darwin(v33);
  v175 = (&v138 - v34);
  __chkstk_darwin(v35);
  v37 = &v138 - v36;
  v38 = *a2;

  v157 = a3;
  v167 = sub_100086810(a3, a1, &unk_10010FB88);
  v151 = type metadata accessor for CalculatorHistoryListView(0);
  v39 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v158 = a1;
  v150 = v39;
  ScaledMetric.wrappedValue.getter();
  if (qword_100154590 != -1)
  {
    swift_once();
  }

  *v37 = static VerticalAlignment.firstTextBaseline.getter();
  *(v37 + 1) = 0x4014000000000000;
  v37[16] = 0;
  v40 = qword_100154388;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Text.TruncationMode();
  v42 = sub_1000048C8(v41, qword_100160890);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v146 = v42;
  v145 = v43 + 16;
  v144 = v44;
  (v44)(v19);
  v45 = *(v43 + 56);
  v148 = v41;
  v147 = v43 + 56;
  v143 = v45;
  v45(v19, 0, 1, v41);
  v153 = v19;
  v149 = v38;
  CalculateExpressionView.init(expression:isEditable:fontSize:minFontSizeRatio:textAlignment:textColor:truncationMode:operationCallback:)();
  v142 = sub_10000F2E8(&qword_100156960, &type metadata accessor for CalculateExpressionView, &protocol conformance descriptor for CalculateExpressionView);
  View.accessibilityIdentifier(_:)();
  v46 = *(v21 + 8);
  v152 = v23;
  v156 = v20;
  v154 = v21 + 8;
  v141 = v46;
  v46(v23, v20);
  v166 = v37;
  if (v167)
  {
    v165 = v167;
    v47 = [v165 shortName];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    *&v177 = v48;
    *(&v177 + 1) = v50;
    sub_10006345C();
    v51 = Text.init<A>(_:)();
    v53 = v52;
    v55 = v54;
    v56 = Text.foregroundColor(_:)();
    v58 = v57;
    v60 = v59;
    sub_10000C6AC(v51, v53, v55 & 1);

    v61 = type metadata accessor for Font.Design();
    v62 = v163;
    (*(*(v61 - 8) + 56))(v163, 1, 1, v61);
    static Font.system(size:weight:design:)();
    sub_1000035CC(v62, &qword_1001567E0, &qword_10010F970);
    v63 = Text.font(_:)();
    v65 = v64;
    v67 = v66;
    v69 = v68;

    v70 = v56;
    v71 = v169;
    sub_10000C6AC(v70, v58, v60 & 1);

    KeyPath = swift_getKeyPath();
    v185[0] = v67 & 1;
    LOBYTE(v183[0]) = 0;
    *&v177 = v63;
    *(&v177 + 1) = v65;
    LOBYTE(v178) = v67 & 1;
    *(&v178 + 1) = v186;
    DWORD1(v178) = *(&v186 + 3);
    *(&v178 + 1) = v69;
    *&v179 = 0x4000000000000000;
    *(&v179 + 1) = KeyPath;
    v180 = 1;
    v181 = 0;
    sub_10003AE84(&qword_100156988, &qword_10010FC28);
    sub_10008DDD8();
    v73 = v164;
    View.accessibilityIdentifier(_:)();

    sub_10000C6AC(v63, v65, v67 & 1);
    v37 = v166;

    sub_10000D5B8(v73, v71, &qword_100156938, &qword_10010FBB0);
    v138 = *(v173 + 56);
    v138(v71, 0, 1, v176);
  }

  else
  {
    v138 = *(v173 + 56);
    v138(v169, 1, 1, v176);
    v165 = 0;
  }

  v140 = sub_10003AE84(&qword_100156968, &qword_10010FBD8);
  v74 = &v37[*(v140 + 44)];
  v75 = v168;
  v76 = v171;
  sub_100008E68(v168, v171, &qword_100156950, &qword_10010FBC8);
  v77 = v169;
  v78 = v174;
  sub_100008E68(v169, v174, &qword_100156940, &qword_10010FBB8);
  sub_100008E68(v76, v74, &qword_100156950, &qword_10010FBC8);
  v139 = sub_10003AE84(&qword_100156970, &qword_10010FBE0);
  sub_100008E68(v78, v74 + *(v139 + 48), &qword_100156940, &qword_10010FBB8);
  sub_1000035CC(v77, &qword_100156940, &qword_10010FBB8);
  sub_1000035CC(v75, &qword_100156950, &qword_10010FBC8);
  sub_1000035CC(v78, &qword_100156940, &qword_10010FBB8);
  sub_1000035CC(v76, &qword_100156950, &qword_10010FBC8);
  v79 = CalculateExpression.copyableExpression.getter();
  v81 = v80;
  v168 = sub_10003AE84(&qword_100156978, &qword_10010FBE8);
  v82 = &v37[*(v168 + 36)];
  *v82 = v79;
  v82[1] = v81;
  v82[2] = v167;
  v83 = v165;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  v84 = &v37[*(v172 + 36)];
  v85 = v187;
  *v84 = v186;
  *(v84 + 1) = v85;
  *(v84 + 2) = v188;
  v86 = v155;
  swift_beginAccess();
  v87 = *v86;

  v88 = sub_100086810(v157, v158, &unk_10010FB30);
  ScaledMetric.wrappedValue.getter();
  if (qword_100154598 != -1)
  {
    swift_once();
  }

  v89 = static VerticalAlignment.firstTextBaseline.getter();
  v90 = v175;
  *v175 = v89;
  v90[1] = 0x4014000000000000;
  *(v90 + 16) = 0;
  v91 = v153;
  v92 = v148;
  v144(v153, v146, v148);
  v143(v91, 0, 1, v92);

  v93 = v152;
  v167 = v87;
  CalculateExpressionView.init(expression:isEditable:fontSize:minFontSizeRatio:textAlignment:textColor:truncationMode:operationCallback:)();
  v94 = v156;
  View.accessibilityIdentifier(_:)();
  v141(v93, v94);
  v165 = v88;
  if (v88)
  {
    v158 = "le for Copy Expression";
    v169 = v88;
    v95 = [v169 shortName];
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    *&v177 = v96;
    *(&v177 + 1) = v98;
    sub_10006345C();
    v99 = Text.init<A>(_:)();
    v101 = v100;
    v103 = v102;
    v104 = Text.foregroundColor(_:)();
    v106 = v105;
    LOBYTE(v95) = v107;
    sub_10000C6AC(v99, v101, v103 & 1);

    v108 = type metadata accessor for Font.Design();
    v109 = v163;
    (*(*(v108 - 8) + 56))(v163, 1, 1, v108);
    static Font.system(size:weight:design:)();
    sub_1000035CC(v109, &qword_1001567E0, &qword_10010F970);
    v110 = Text.font(_:)();
    v112 = v111;
    v114 = v113;
    v116 = v115;

    sub_10000C6AC(v104, v106, v95 & 1);

    v117 = swift_getKeyPath();
    v184 = v114 & 1;
    v182 = 0;
    *&v177 = v110;
    *(&v177 + 1) = v112;
    LOBYTE(v178) = v114 & 1;
    *(&v178 + 1) = v183[0];
    DWORD1(v178) = *(v183 + 3);
    *(&v178 + 1) = v116;
    *&v179 = 0x4000000000000000;
    *(&v179 + 1) = v117;
    v180 = 1;
    v181 = 0;
    sub_10003AE84(&qword_100156988, &qword_10010FC28);
    sub_10008DDD8();
    v118 = v164;
    View.accessibilityIdentifier(_:)();

    sub_10000C6AC(v110, v112, v114 & 1);

    v119 = v118;
    v120 = v159;
    sub_10000D5B8(v119, v159, &qword_100156938, &qword_10010FBB0);
    (*(v173 + 56))(v120, 0, 1, v176);
  }

  else
  {
    v120 = v159;
    v138(v159, 1, 1, v176);
    v169 = 0;
  }

  v121 = v175;
  v122 = v175 + *(v140 + 44);
  v123 = v170;
  v124 = v171;
  sub_100008E68(v170, v171, &qword_100156950, &qword_10010FBC8);
  v125 = v174;
  sub_100008E68(v120, v174, &qword_100156940, &qword_10010FBB8);
  sub_100008E68(v124, v122, &qword_100156950, &qword_10010FBC8);
  sub_100008E68(v125, v122 + *(v139 + 48), &qword_100156940, &qword_10010FBB8);
  sub_1000035CC(v120, &qword_100156940, &qword_10010FBB8);
  sub_1000035CC(v123, &qword_100156950, &qword_10010FBC8);
  sub_1000035CC(v125, &qword_100156940, &qword_10010FBB8);
  sub_1000035CC(v124, &qword_100156950, &qword_10010FBC8);
  v126 = CalculateExpression.copyableExpression.getter();
  v127 = (v121 + *(v168 + 36));
  *v127 = v126;
  v127[1] = v128;
  v127[2] = v165;
  v129 = v169;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  v130 = (v121 + *(v172 + 36));
  v131 = v178;
  *v130 = v177;
  v130[1] = v131;
  v130[2] = v179;
  v132 = v166;
  v133 = v160;
  sub_100008E68(v166, v160, &qword_100156958, &qword_10010FBD0);
  v134 = v161;
  sub_100008E68(v121, v161, &qword_100156958, &qword_10010FBD0);
  v135 = v162;
  sub_100008E68(v133, v162, &qword_100156958, &qword_10010FBD0);
  v136 = sub_10003AE84(&qword_100156980, &qword_10010FBF0);
  sub_100008E68(v134, v135 + *(v136 + 48), &qword_100156958, &qword_10010FBD0);
  sub_1000035CC(v121, &qword_100156958, &qword_10010FBD0);
  sub_1000035CC(v132, &qword_100156958, &qword_10010FBD0);
  sub_1000035CC(v134, &qword_100156958, &qword_10010FBD0);
  return sub_1000035CC(v133, &qword_100156958, &qword_10010FBD0);
}

uint64_t sub_100088038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v83 = a6;
  v95 = a5;
  v80 = a4;
  v97 = a2;
  v93 = a7;
  v10 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  __chkstk_darwin(v10 - 8);
  v85 = &v73 - v11;
  v91 = sub_10003AE84(&qword_1001568C8, &qword_10010FA68);
  v92 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = &v73 - v12;
  v13 = sub_10003AE84(&qword_1001568D0, &qword_10010FA70);
  __chkstk_darwin(v13 - 8);
  v90 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v104 = &v73 - v16;
  v89 = type metadata accessor for Divider();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v102 = &v73 - v19;
  v20 = type metadata accessor for CalculatorHistoryListView(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20 - 8);
  v100 = v22;
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10003AE84(&qword_1001568D8, &qword_10010FA78);
  v105 = *(v96 - 8);
  __chkstk_darwin(v96);
  v25 = &v73 - v24;
  v81 = sub_10003AE84(&qword_1001568E0, &qword_10010FA80);
  v106 = *(v81 - 8);
  __chkstk_darwin(v81);
  v27 = &v73 - v26;
  v28 = sub_10003AE84(&qword_1001568E8, &qword_10010FA88);
  __chkstk_darwin(v28 - 8);
  v84 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v103 = &v73 - v31;
  __chkstk_darwin(v32);
  v98 = &v73 - v33;
  __chkstk_darwin(v34);
  v101 = &v73 - v35;
  v94 = a3;
  v79 = v23;
  sub_10008B4C8(a3, v23);
  v99 = *(v21 + 80);
  v36 = (v99 + 32) & ~v99;
  v37 = swift_allocObject();
  v38 = v97;
  *(v37 + 16) = a1;
  *(v37 + 24) = v38;
  sub_10008B52C(v23, v37 + v36);
  v112 = a4;
  v113 = v95;
  v114 = v38;
  v115 = a3;
  v116 = a1;

  v78 = sub_10003AE84(&qword_1001568F0, &qword_10010FA90);
  v77 = sub_100004880(&qword_1001568F8, &qword_1001568F0, &qword_10010FA90, &protocol conformance descriptor for TupleView<A>);
  v39 = v25;
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  v82 = &protocol conformance descriptor for Button<A>;
  v40 = sub_100004880(&qword_100156900, &qword_1001568D8, &qword_10010FA78, &protocol conformance descriptor for Button<A>);
  v41 = v96;
  View.help(_:)();

  v42 = *(v105 + 8);
  v105 += 8;
  v76 = v42;
  v42(v25, v41);
  v117 = v41;
  v118 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v81;
  View.accessibilityIdentifier(_:)();
  v44 = *(v106 + 8);
  v106 += 8;
  v74 = v44;
  v44(v27, v43);
  v45 = v94;
  v46 = v79;
  sub_10008B4C8(v94, v79);
  v47 = swift_allocObject();
  v48 = v83;
  v49 = v97;
  *(v47 + 16) = v83;
  *(v47 + 24) = v49;
  sub_10008B52C(v46, v47 + v36);
  v107 = v80;
  v108 = v95;
  v109 = v49;
  v110 = v45;
  v111 = v48;

  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  v50 = v96;
  View.help(_:)();

  v76(v39, v50);
  v51 = v98;
  View.accessibilityIdentifier(_:)();
  v74(v27, v43);
  v52 = v102;
  Divider.init()();
  v53 = v85;
  static ButtonRole.destructive.getter();
  v54 = type metadata accessor for ButtonRole();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  sub_10008B4C8(v94, v46);
  v55 = (v99 + 16) & ~v99;
  v56 = (v100 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  sub_10008B52C(v46, v57 + v55);
  *(v57 + v56) = v49;

  sub_10003AE84(&qword_100156908, &qword_10010FA98);
  sub_10008DA98();
  v58 = v87;
  Button.init(role:action:label:)();
  sub_100004880(&qword_100156928, &qword_1001568C8, &qword_10010FA68, v82);
  v59 = v104;
  v60 = v91;
  View.accessibilityIdentifier(_:)();
  (*(v92 + 8))(v58, v60);
  v61 = v103;
  sub_100034DE0(v101, v103);
  v62 = v84;
  sub_100034DE0(v51, v84);
  v63 = v88;
  v64 = *(v88 + 16);
  v65 = v86;
  v66 = v89;
  v64(v86, v52, v89);
  v67 = v90;
  sub_100008E68(v59, v90, &qword_1001568D0, &qword_10010FA70);
  v68 = v61;
  v69 = v93;
  sub_100034DE0(v68, v93);
  v70 = sub_10003AE84(&qword_100156930, &qword_10010FAA8);
  sub_100034DE0(v62, v69 + v70[12]);
  v64((v69 + v70[16]), v65, v66);
  sub_100008E68(v67, v69 + v70[20], &qword_1001568D0, &qword_10010FA70);
  sub_1000035CC(v104, &qword_1001568D0, &qword_10010FA70);
  v71 = *(v63 + 8);
  v71(v102, v66);
  sub_1000035CC(v98, &qword_1001568E8, &qword_10010FA88);
  sub_1000035CC(v101, &qword_1001568E8, &qword_10010FA88);
  sub_1000035CC(v67, &qword_1001568D0, &qword_10010FA70);
  v71(v65, v66);
  sub_1000035CC(v62, &qword_1001568E8, &qword_10010FA88);
  return sub_1000035CC(v103, &qword_1001568E8, &qword_10010FA88);
}

uint64_t sub_100088C84@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_100086B28(a2, a3, a4, &unk_10010FB88);
  v18 = a1(v17);
  v20 = v19;

  if (qword_100154428 != -1)
  {
    swift_once();
  }

  v21 = qword_100160960;
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = v14 & 1;
  *(a5 + 24) = v16;
  *(a5 + 32) = v18;
  *(a5 + 40) = v20;
  *(a5 + 48) = 0;
  *(a5 + 56) = _swiftEmptyArrayStorage;
  *(a5 + 64) = v21;

  sub_10006564C(v10, v12, v14 & 1);

  sub_10006564C(v18, v20, 0);

  sub_10000C6AC(v18, v20, 0);

  sub_10000C6AC(v10, v12, v14 & 1);
}

uint64_t sub_100088E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  v8.value._countAndFlagsBits = sub_100086B28(a2, a3, a1, a4);
  CalculateExpression.copyToClipboard(overridePlaintext:)(v8);
}

uint64_t sub_100088EE0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_100086B28(a2, a3, a4, &unk_10010FB30);
  v18 = a1(v17);
  v20 = v19;

  if (qword_100154428 != -1)
  {
    swift_once();
  }

  v21 = qword_100160960;
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = v14 & 1;
  *(a5 + 24) = v16;
  *(a5 + 32) = v18;
  *(a5 + 40) = v20;
  *(a5 + 48) = 0;
  *(a5 + 56) = _swiftEmptyArrayStorage;
  *(a5 + 64) = v21;

  sub_10006564C(v10, v12, v14 & 1);

  sub_10006564C(v18, v20, 0);

  sub_10000C6AC(v18, v20, 0);

  sub_10000C6AC(v10, v12, v14 & 1);
}

uint64_t sub_1000890A4(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for CalculatorHistoryListView(0);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v41 = v4;
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  v40 = a1;
  v13 = *(a1 + 40);

  v14 = v12;
  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v14 = v44;
  }

  v38 = v8;
  swift_getKeyPath();
  v44 = v14;
  sub_10000F2E8(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v16 = *(v14 + 24);

  v17 = *(v16 + 16);

  if (v17 < 2)
  {

    if ((v13 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v30 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v9 + 8))(v11, v38);
    }

    sub_10004E430(v37);

    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
    v32 = v42;
    sub_10008B4C8(v40, v42);
    v33 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    sub_10008B52C(v32, v34 + v33);
    sub_1000502A0(0, 0, v7, &unk_10010FB18, v34);
  }

  else
  {

    v18 = v12;
    if ((v13 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v9 + 8))(v11, v38);
      v18 = v43;
    }

    swift_getKeyPath();
    v43 = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v20 = *(v18 + 24);

    v21 = *(v20 + 16);

    v22 = [objc_allocWithZone(NSNumber) initWithInteger:v21];

    if ((v13 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v9 + 8))(v11, v38);
    }

    sub_10004E65C();

    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
    v25 = v42;
    sub_10008B4C8(v40, v42);
    v26 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v27 = (v41 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    sub_10008B52C(v25, v28 + v26);
    *(v28 + v27) = v22;
    v29 = v22;
    sub_1000502A0(0, 0, v7, &unk_10010FB28, v28);
  }

  return sub_1000035CC(v7, &qword_100154BB0, &qword_10010FAE0);
}

uint64_t sub_100089768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = type metadata accessor for EnvironmentValues();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_100089828, 0, 0);
}

uint64_t sub_100089828()
{
  *(v0 + 184) = type metadata accessor for MainActor();
  *(v0 + 192) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000898C0, v2, v1);
}

uint64_t sub_1000898C0()
{
  v1 = v0[18];

  v2 = *(v1 + 32);
  LOBYTE(v1) = *(v1 + 40);

  if ((v1 & 1) == 0)
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = v0[15];
  }

  v0[25] = v2;

  return _swift_task_switch(sub_1000899D8, 0, 0);
}

uint64_t sub_1000899D8()
{
  v1 = *(v0[25] + 16);

  swift_getKeyPath();
  v0[16] = v1;
  sub_10000F2E8(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v1 + 48);

  v3 = sub_100082A40(v2);

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v0[19];

  sub_10003AE84(&qword_1001568B8, &qword_10010FA58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  strcpy((inited + 32), "deleteElement");
  *(inited + 46) = -4864;
  *(inited + 48) = v5;
  strcpy((inited + 56), "elementCount");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  v7 = objc_allocWithZone(NSNumber);
  v8 = v5;
  *(inited + 72) = [v7 initWithInteger:v4];
  v0[26] = sub_100077104(inited, v9);
  swift_setDeallocating();
  sub_10003AE84(&qword_1001568C0, &qword_10010FA60);
  swift_arrayDestroy();
  v0[27] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100089C64, v11, v10);
}

uint64_t sub_100089C64()
{
  v1 = v0[18];

  v2 = *v1;
  LOBYTE(v1) = *(v1 + 8);

  if ((v1 & 1) == 0)
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = v0[17];
  }

  v0[28] = v2;

  return _swift_task_switch(sub_100089D7C, 0, 0);
}

uint64_t sub_100089D7C()
{
  v1 = sub_1000574F4(*(v0 + 208));

  sub_100062CB8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100089E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_100089EDC, 0, 0);
}

uint64_t sub_100089EDC()
{
  *(v0 + 176) = type metadata accessor for MainActor();
  *(v0 + 184) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100089F74, v2, v1);
}

uint64_t sub_100089F74()
{
  v1 = v0[18];

  v2 = *(v1 + 32);
  LOBYTE(v1) = *(v1 + 40);

  if ((v1 & 1) == 0)
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[19];
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = v0[15];
  }

  v0[24] = v2;

  return _swift_task_switch(sub_10008A08C, 0, 0);
}

uint64_t sub_10008A08C()
{
  v1 = *(v0[24] + 16);

  swift_getKeyPath();
  v0[16] = v1;
  sub_10000F2E8(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v1 + 48);

  v3 = sub_100082A40(v2);

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_10003AE84(&qword_1001568B8, &qword_10010FA58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  strcpy((inited + 32), "deleteElement");
  *(inited + 46) = -4864;
  sub_10008DD8C();
  *(inited + 48) = NSNumber.init(integerLiteral:)(1);
  strcpy((inited + 56), "elementCount");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:v4];
  v0[25] = sub_100077104(inited, v6);
  swift_setDeallocating();
  sub_10003AE84(&qword_1001568C0, &qword_10010FA60);
  swift_arrayDestroy();
  v0[26] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008A318, v8, v7);
}

uint64_t sub_10008A318()
{
  v1 = v0[18];

  v2 = *v1;
  LOBYTE(v1) = *(v1 + 8);

  if ((v1 & 1) == 0)
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[19];
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = v0[17];
  }

  v0[27] = v2;

  return _swift_task_switch(sub_10008A430, 0, 0);
}

uint64_t sub_10008A430()
{
  v1 = sub_1000574F4(*(v0 + 200));

  sub_100062CB8(v1);

  v2 = *(v0 + 8);

  return v2();
}

double sub_10008A4D0@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  if (qword_1001545A8 != -1)
  {
    swift_once();
  }

  v2 = qword_100160BD0;
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(sub_10003AE84(&qword_100156908, &qword_10010FA98) + 36));
  *v4 = KeyPath;
  v4[1] = v2;

  return result;
}

uint64_t sub_10008A5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = type metadata accessor for CalculatorHistoryListView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = sub_10003AE84(&qword_1001568B0, &qword_10010FA50);
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  v14 = sub_10003AE84(&qword_100156898, &qword_10010FA48);
  __chkstk_darwin(v14);
  v16 = v24 - v15;
  static ButtonRole.destructive.getter();
  v17 = type metadata accessor for ButtonRole();
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  sub_10008B4C8(a1, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_10008B52C(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  *(v19 + ((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  Button.init(role:action:label:)();
  if (qword_1001545A8 != -1)
  {
    swift_once();
  }

  v20 = qword_100160BD0;
  KeyPath = swift_getKeyPath();
  v22 = &v13[*(v11 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;

  LocalizedStringKey.init(stringLiteral:)();
  sub_10008D2F0();
  View.accessibilityLabel(_:)();

  sub_1000035CC(v13, &qword_1001568B0, &qword_10010FA50);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_1000035CC(v16, &qword_100156898, &qword_10010FA48);
}

double sub_10008A948(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  v9 = *(a1 + 40);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  sub_10004E430(a2);

  sub_10003AE84(&qword_1001568B8, &qword_10010FA58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  strcpy((inited + 32), "deleteElement");
  *(inited + 46) = -4864;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  strcpy((inited + 56), "elementCount");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v8 = v23;
  }

  v13 = *(v8 + 16);

  swift_getKeyPath();
  v23 = v13;
  sub_10000F2E8(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v14 = *(v13 + 48);

  v15 = *(v14 + 16);

  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:v15];
  v17 = sub_100077104(inited, v16);
  swift_setDeallocating();
  sub_10003AE84(&qword_1001568C0, &qword_10010FA60);
  swift_arrayDestroy();
  v18 = *(a1 + 8);

  if ((v18 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v20 = sub_1000574F4(v17);

  sub_100062CB8(v20);

  return result;
}

uint64_t sub_10008ADC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = type metadata accessor for CalculatorHistoryListView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_10003AE84(&qword_1001568B0, &qword_10010FA50);
  __chkstk_darwin(v10);
  v12 = v22 - v11;
  v13 = sub_10003AE84(&qword_100156898, &qword_10010FA48);
  __chkstk_darwin(v13);
  v15 = v22 - v14;
  sub_10008B4C8(a3, v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_10008B52C(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);

  Button.init(action:label:)();
  if (qword_1001545B0 != -1)
  {
    swift_once();
  }

  v18 = qword_100160BD8;
  KeyPath = swift_getKeyPath();
  v20 = &v12[*(v10 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;

  LocalizedStringKey.init(stringLiteral:)();
  sub_10008D2F0();
  View.accessibilityLabel(_:)();

  sub_1000035CC(v12, &qword_1001568B0, &qword_10010FA50);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_1000035CC(v15, &qword_100156898, &qword_10010FA48);
}

double sub_10008B100@<D0>(void *a1@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;

  return result;
}

double sub_10008B15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 40);

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
  }

  v14 = sub_100046CA8(a3);

  swift_beginAccess();
  *(a1 + 16) = v14;

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
  }

  v16 = sub_100047188(a3);

  swift_beginAccess();
  *(a4 + 16) = v16;

  return result;
}

uint64_t sub_10008B3DC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10008B4C8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10008B52C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10008B590;
  a2[1] = v7;
  return result;
}

uint64_t sub_10008B4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorHistoryListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008B52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorHistoryListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008B590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CalculatorHistoryListView(0);

  return sub_100082D18(a1, a2);
}

double sub_10008B61C(uint64_t *a1)
{
  type metadata accessor for CalculatorHistoryListView(0);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  return sub_100083A24(a1, v3, v4, v5);
}

uint64_t sub_10008B694(unint64_t *a1)
{
  v3 = *(type metadata accessor for CalculatorHistoryListView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100084710(a1, v4);
}

uint64_t sub_10008B714@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a3;
  v85 = a4;
  v89 = a5;
  v90 = a1;
  v78 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v78);
  v77 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003AE84(&qword_100155210, &qword_100111700);
  __chkstk_darwin(v7 - 8);
  v76 = v69 - v8;
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v75 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AttributedString.InterpolationOptions();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v69[3] = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Locale();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v86 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  v69[1] = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  __chkstk_darwin(v17 - 8);
  v93 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CalculateExpression.Base();
  v80 = v19;
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v92 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AttributedString();
  v87 = *(v22 - 8);
  v88 = v22;
  __chkstk_darwin(v22);
  v69[2] = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v94 = v69 - v25;
  __chkstk_darwin(v26);
  v28 = v69 - v27;
  v83 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
  v95 = a2;
  swift_getKeyPath();
  v82 = sub_10000F2E8(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v81 = sub_10000F2E8(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  PersistentModel.getValue<A>(forKey:)();

  sub_1000DC17C(_swiftEmptyArrayStorage);
  v29 = enum case for CalculateExpression.Base.base10(_:);
  v30 = v20 + 104;
  v31 = *(v20 + 104);
  v79 = v30;
  v31(v92, enum case for CalculateExpression.Base.base10(_:), v19);
  UUID.init()();
  type metadata accessor for CalculateExpression();
  swift_allocObject();
  CalculateExpression.init(_:options:base:id:)();
  v91 = v28;
  CalculateExpression.accessibilityMathEquationDescription.getter();

  v95 = a2;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  sub_1000DC17C(_swiftEmptyArrayStorage);
  v31(v92, v29, v80);
  UUID.init()();
  swift_allocObject();
  v32 = v84;
  v33 = v85;
  CalculateExpression.init(_:options:base:id:)();
  CalculateExpression.accessibilityMathEquationDescription.getter();

  if (v32 && v33)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v34._countAndFlagsBits = 0x202C7475706E49;
    v34._object = 0xE700000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v34);
    v35 = v91;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v36._countAndFlagsBits = 32;
    v36._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v36);
    v37 = [v32 displayName];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v41);

    v42._countAndFlagsBits = 0x746C75736572202CLL;
    v42._object = 0xE900000000000020;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v42);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v43._countAndFlagsBits = 32;
    v43._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v43);
    v44 = [v33 displayName];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48._countAndFlagsBits = v45;
    v48._object = v47;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v48);

    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
    LocalizedStringKey.init(stringInterpolation:)();
    v50 = Text.init(_:tableName:bundle:comment:)();
  }

  else
  {
    static Locale.current.getter();
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v53._countAndFlagsBits = 0x202C7475706E49;
    v53._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v53);
    v95 = _swiftEmptyArrayStorage;
    sub_10000F2E8(&qword_1001569F0, &type metadata accessor for AttributedString.InterpolationOptions, &protocol conformance descriptor for AttributedString.InterpolationOptions);
    sub_10003AE84(&qword_1001569F8, &unk_10010FDB0);
    sub_100004880(&qword_100156A00, &qword_1001569F8, &unk_10010FDB0, &protocol conformance descriptor for [A]);
    v54 = v70;
    v55 = v72;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
    v56 = *(v71 + 8);
    v56(v54, v55);
    v57._countAndFlagsBits = 0x746C75736572202CLL;
    v57._object = 0xEA0000000000202CLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
    v95 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
    v56(v54, v55);
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v58);
    String.LocalizationValue.init(stringInterpolation:)();
    v59 = v73;
    v60 = v76;
    v61 = v86;
    v62 = v74;
    (*(v73 + 16))(v76, v86, v74);
    (*(v59 + 56))(v60, 0, 1, v62);
    v95 = _swiftEmptyArrayStorage;
    sub_10000F2E8(&qword_100155228, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
    sub_10003AE84(&qword_100155230, &qword_10010CF20);
    sub_100004880(&qword_100155238, &qword_100155230, &qword_10010CF20, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    AttributedString.init(localized:options:table:bundle:locale:comment:)();
    (*(v59 + 8))(v61, v62);
    v35 = v91;
    v50 = Text.init(_:)();
  }

  v63 = v50;
  v64 = v51;
  v65 = v52;
  sub_10003AE84(&qword_100156A08, &qword_10010FDC0);
  sub_100004880(&qword_100156A10, &qword_100156A08, &qword_10010FDC0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.accessibilityLabel(_:)();
  sub_10000C6AC(v63, v64, v65 & 1);

  v66 = v88;
  v67 = *(v87 + 8);
  v67(v94, v88);
  return (v67)(v35, v66);
}

uint64_t sub_10008C308(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001567E8, &unk_10010F9D0);
  __chkstk_darwin(v2 - 8);
  sub_100008E68(a1, &v5 - v3, &qword_1001567E8, &unk_10010F9D0);
  return EnvironmentValues.textCase.setter();
}

uint64_t sub_10008C3B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_10003AE84(&qword_1001567C0, &qword_10010F960);
  sub_10003AE84(&qword_1001567C8, &qword_10010F968);
  sub_100004880(&qword_1001567D0, &qword_1001567C0, &qword_10010F960, &protocol conformance descriptor for [A]);
  sub_10003AECC(&qword_1001566F8, &qword_10010F880);
  sub_10008C5DC();
  swift_getOpaqueTypeConformance2();
  sub_10008CD90();
  return ForEach<>.init(_:content:)();
}

unint64_t sub_10008C51C()
{
  result = qword_1001566F0;
  if (!qword_1001566F0)
  {
    sub_10003AECC(&qword_1001566E8, &qword_10010F878);
    sub_10003AECC(&qword_1001566F8, &qword_10010F880);
    sub_10008C5DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001566F0);
  }

  return result;
}

unint64_t sub_10008C5DC()
{
  result = qword_100156700;
  if (!qword_100156700)
  {
    sub_10003AECC(&qword_1001566F8, &qword_10010F880);
    sub_10008C674();
    sub_10008C838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156700);
  }

  return result;
}

unint64_t sub_10008C674()
{
  result = qword_100156708;
  if (!qword_100156708)
  {
    sub_10003AECC(&qword_100156710, &qword_10010F888);
    sub_10008C72C();
    sub_100004880(&qword_100156740, &qword_100156748, &qword_10010F8A0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156708);
  }

  return result;
}

unint64_t sub_10008C72C()
{
  result = qword_100156718;
  if (!qword_100156718)
  {
    sub_10003AECC(&qword_100156720, &qword_10010F890);
    sub_10008C7E4();
    sub_100004880(&qword_100156730, &qword_100156738, &qword_10010F898, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156718);
  }

  return result;
}

unint64_t sub_10008C7E4()
{
  result = qword_100156728;
  if (!qword_100156728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156728);
  }

  return result;
}

unint64_t sub_10008C838()
{
  result = qword_100156750;
  if (!qword_100156750)
  {
    sub_10003AECC(&qword_100156758, &qword_10010F8A8);
    sub_10008C8F0();
    sub_100004880(&qword_100156740, &qword_100156748, &qword_10010F8A0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156750);
  }

  return result;
}

unint64_t sub_10008C8F0()
{
  result = qword_100156760;
  if (!qword_100156760)
  {
    sub_10003AECC(&qword_100156768, &qword_10010F8B0);
    sub_10008C974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156760);
  }

  return result;
}

unint64_t sub_10008C974()
{
  result = qword_100156770;
  if (!qword_100156770)
  {
    sub_10003AECC(&qword_100156778, &qword_10010F8B8);
    sub_10008CA2C();
    sub_100004880(&qword_1001567A0, &qword_1001567A8, &qword_10010F8D0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156770);
  }

  return result;
}

unint64_t sub_10008CA2C()
{
  result = qword_100156780;
  if (!qword_100156780)
  {
    sub_10003AECC(&qword_100156788, &qword_10010F8C0);
    sub_10003AECC(&qword_100156790, &qword_10010F8C8);
    sub_100004880(&qword_100156798, &qword_100156790, &qword_10010F8C8, &protocol conformance descriptor for SubscriptionView<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_10000F2E8(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156780);
  }

  return result;
}

double sub_10008CB58(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CalculatorHistoryListView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000864B0(a1, a2, v2 + v6, v7);
}

unint64_t sub_10008CC04()
{
  result = qword_1001567B8;
  if (!qword_1001567B8)
  {
    sub_10003AECC(&qword_1001566D8, &qword_10010F840);
    sub_10003AECC(&qword_1001566D0, &qword_10010F838);
    type metadata accessor for InsetListStyle();
    sub_100004880(&qword_1001567B0, &qword_1001566D0, &qword_10010F838, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001567B8);
  }

  return result;
}

uint64_t sub_10008CD4C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 2);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

unint64_t sub_10008CD90()
{
  result = qword_1001567D8;
  if (!qword_1001567D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001567D8);
  }

  return result;
}

uint64_t sub_10008CDF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CalculatorHistoryListView(0);

  return sub_100084E0C(a1, a2);
}

unint64_t sub_10008CE78()
{
  result = qword_100156848;
  if (!qword_100156848)
  {
    sub_10003AECC(&qword_100156800, &qword_10010F9E8);
    sub_100004880(&qword_100156850, &qword_100156858, &qword_10010FA30, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156848);
  }

  return result;
}

unint64_t sub_10008CF40()
{
  result = qword_100156868;
  if (!qword_100156868)
  {
    sub_10003AECC(&qword_100156820, &qword_10010FA08);
    sub_10008CFF8();
    sub_100004880(&qword_1001553E0, &qword_1001553E8, &qword_10010FA40, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156868);
  }

  return result;
}

unint64_t sub_10008CFF8()
{
  result = qword_100156870;
  if (!qword_100156870)
  {
    sub_10003AECC(&qword_100156818, &qword_10010FA00);
    sub_10008D084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156870);
  }

  return result;
}

unint64_t sub_10008D084()
{
  result = qword_100156878;
  if (!qword_100156878)
  {
    sub_10003AECC(&qword_100156810, &qword_10010F9F8);
    sub_10008D110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156878);
  }

  return result;
}

unint64_t sub_10008D110()
{
  result = qword_100156880;
  if (!qword_100156880)
  {
    sub_10003AECC(&qword_100156808, &qword_10010F9F0);
    sub_10003AECC(&qword_100156800, &qword_10010F9E8);
    sub_10008CE78();
    swift_getOpaqueTypeConformance2();
    sub_10008D1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156880);
  }

  return result;
}

unint64_t sub_10008D1D8()
{
  result = qword_100156888;
  if (!qword_100156888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156888);
  }

  return result;
}

unint64_t sub_10008D234()
{
  result = qword_1001568A0;
  if (!qword_1001568A0)
  {
    sub_10003AECC(&qword_100156898, &qword_10010FA48);
    sub_10008D2F0();
    sub_10000F2E8(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001568A0);
  }

  return result;
}

unint64_t sub_10008D2F0()
{
  result = qword_1001568A8;
  if (!qword_1001568A8)
  {
    sub_10003AECC(&qword_1001568B0, &qword_10010FA50);
    sub_100004880(&qword_100155960, &qword_100155948, &qword_10010DC60, &protocol conformance descriptor for Button<A>);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001568A8);
  }

  return result;
}

double sub_10008D3E0()
{
  v1 = *(type metadata accessor for CalculatorHistoryListView(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10008B15C(v4, v0 + v2, v5, v6);
}

uint64_t sub_10008D4C0()
{
  v1 = type metadata accessor for CalculatorHistoryListView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v0 + v2 + v1[8];
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {

      v6 = *(v5 + 32);
      v7 = type metadata accessor for EditMode();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
    }
  }

  else
  {
  }

  v8 = v1[9];
  v9 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v10 = *(*(v9 - 8) + 8);
  v10(v3 + v8, v9);
  v10(v3 + v1[10], v9);
  v10(v3 + v1[11], v9);

  return swift_deallocObject();
}

uint64_t sub_10008D7A0()
{
  v1 = type metadata accessor for CalculatorHistoryListView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[8];
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
    {

      v5 = *(v4 + 32);
      v6 = type metadata accessor for EditMode();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v7 = v1[9];
  v8 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v9 = *(*(v8 - 8) + 8);
  v9(v2 + v7, v8);
  v9(v2 + v1[10], v8);
  v9(v2 + v1[11], v8);

  return swift_deallocObject();
}

uint64_t sub_10008D9F8(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CalculatorHistoryListView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_10008DA98()
{
  result = qword_100156910;
  if (!qword_100156910)
  {
    sub_10003AECC(&qword_100156908, &qword_10010FA98);
    sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0, &protocol conformance descriptor for Label<A, B>);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156910);
  }

  return result;
}

uint64_t sub_10008DB7C(uint64_t a1)
{
  v4 = *(type metadata accessor for CalculatorHistoryListView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030CEC;

  return sub_100089E1C(a1, v6, v7, v1 + v5);
}

uint64_t sub_10008DC6C(uint64_t a1)
{
  v4 = *(type metadata accessor for CalculatorHistoryListView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030DE0;

  return sub_100089768(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_10008DD8C()
{
  result = qword_100155280;
  if (!qword_100155280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100155280);
  }

  return result;
}

unint64_t sub_10008DDD8()
{
  result = qword_100156990;
  if (!qword_100156990)
  {
    sub_10003AECC(&qword_100156988, &qword_10010FC28);
    sub_10008DE90();
    sub_100004880(&qword_1001569B8, &qword_1001569C0, &qword_10010FC40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156990);
  }

  return result;
}

unint64_t sub_10008DE90()
{
  result = qword_100156998;
  if (!qword_100156998)
  {
    sub_10003AECC(&qword_1001569A0, &qword_10010FC30);
    sub_100004880(&qword_1001569A8, &qword_1001569B0, &qword_10010FC38, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156998);
  }

  return result;
}

unint64_t sub_10008DF74()
{
  result = qword_100156A18;
  if (!qword_100156A18)
  {
    sub_10003AECC(&qword_100156A20, &qword_10010FDC8);
    sub_100004880(&qword_100156A10, &qword_100156A08, &qword_10010FDC0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10000F2E8(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156A18);
  }

  return result;
}

uint64_t sub_10008E060(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10008E078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10008E0C0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_10008E110()
{
  result = qword_100156A28;
  if (!qword_100156A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156A28);
  }

  return result;
}

double sub_10008E164@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_100048EE4(v2, v3);
}

unint64_t sub_10008E170()
{
  result = qword_100156A30;
  if (!qword_100156A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156A30);
  }

  return result;
}

Swift::Int sub_10008E1C4()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      Hasher._combine(_:)(v2);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_10008E27C(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_13;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_13;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_13:
      Hasher._combine(_:)(v3);
      return;
    }
  }

  Hasher._combine(_:)(4uLL);

  String.hash(into:)();
}

Swift::Int sub_10008E32C(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      Hasher._combine(_:)(v3);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10008E3E0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return v6 == 3;
      }

LABEL_10:
      if (v6 >= 4)
      {
        if (v4 != *a2 || v5 != v6)
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return 1;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return v6 == 1;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10008E46C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008E4C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_10008E51C(void *result, int a2)
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

BOOL sub_10008E574(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      if (a2 != 2)
      {
        v4 = 2;
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    if (a4 == 3)
    {
      if (a2 != 3)
      {
        v4 = 3;
        goto LABEL_16;
      }

LABEL_21:
      v6 = 0;
      return (v6 & 1) == 0;
    }

LABEL_10:
    if (a2 < 4)
    {
      v4 = 4;
      goto LABEL_16;
    }

    if (a3 != a1 || a4 != a2)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v6 = 0;
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return (v6 & 1) == 0;
    }

    goto LABEL_21;
  }

  if (!a4)
  {
    if (a2)
    {
      v4 = 0;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (a4 != 1)
  {
    goto LABEL_10;
  }

  if (a2 == 1)
  {
    goto LABEL_21;
  }

  v4 = 1;
LABEL_16:
  v5 = 4;
  if (a2 < 4)
  {
    v5 = a2;
  }

  v6 = v4 < v5;
  return (v6 & 1) == 0;
}

BOOL sub_10008E6A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        v4 = 2;
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    if (a2 == 3)
    {
      if (a4 != 3)
      {
        v4 = 3;
        goto LABEL_16;
      }

LABEL_21:
      v6 = 0;
      return (v6 & 1) == 0;
    }

LABEL_10:
    if (a4 < 4)
    {
      v4 = 4;
      goto LABEL_16;
    }

    if (a1 != a3 || a2 != a4)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v6 = 0;
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return (v6 & 1) == 0;
    }

    goto LABEL_21;
  }

  if (!a2)
  {
    if (a4)
    {
      v4 = 0;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (a2 != 1)
  {
    goto LABEL_10;
  }

  if (a4 == 1)
  {
    goto LABEL_21;
  }

  v4 = 1;
LABEL_16:
  v5 = 4;
  if (a4 < 4)
  {
    v5 = a4;
  }

  v6 = v4 < v5;
  return (v6 & 1) == 0;
}

uint64_t sub_10008E7C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      if (a2 != 2)
      {
        v4 = 2;
        goto LABEL_16;
      }

      return 0;
    }

    if (a4 == 3)
    {
      if (a2 != 3)
      {
        v4 = 3;
        goto LABEL_16;
      }

      return 0;
    }
  }

  else
  {
    if (!a4)
    {
      if (a2)
      {
        v4 = 0;
        goto LABEL_16;
      }

      return 0;
    }

    if (a4 == 1)
    {
      if (a2 != 1)
      {
        v4 = 1;
LABEL_16:
        v5 = 4;
        if (a2 < 4)
        {
          v5 = a2;
        }

        return v4 < v5;
      }

      return 0;
    }
  }

  if (a2 < 4)
  {
    v4 = 4;
    goto LABEL_16;
  }

  if (a3 == a1 && a4 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10008E8E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        v4 = 2;
        goto LABEL_16;
      }

      return 0;
    }

    if (a2 == 3)
    {
      if (a4 != 3)
      {
        v4 = 3;
        goto LABEL_16;
      }

      return 0;
    }
  }

  else
  {
    if (!a2)
    {
      if (a4)
      {
        v4 = 0;
        goto LABEL_16;
      }

      return 0;
    }

    if (a2 == 1)
    {
      if (a4 != 1)
      {
        v4 = 1;
LABEL_16:
        v5 = 4;
        if (a4 < 4)
        {
          v5 = a4;
        }

        return v4 < v5;
      }

      return 0;
    }
  }

  if (a4 < 4)
  {
    v4 = 4;
    goto LABEL_16;
  }

  if (a1 == a3 && a2 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10008E9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = sub_10003AE84(&qword_100156B20, &qword_1001103E0);
  v13 = v12[9];
  *(a6 + v13) = swift_getKeyPath();
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  swift_storeEnumTagMultiPayload();
  v14 = v12[10];
  *(a6 + v14) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v15 = a6 + v12[11];
  type metadata accessor for CalculatorViewModel(0);
  sub_100090A7C(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  *v15 = Environment.init<A>(_:)();
  v15[8] = v16 & 1;
  v17 = a6 + v12[12];
  type metadata accessor for CalculatorUnitConversionViewModelWrapper(0);
  sub_100090A7C(&qword_1001553F8, type metadata accessor for CalculatorUnitConversionViewModelWrapper, &unk_10010E2D4);
  *v17 = Environment.init<A>(_:)();
  v17[8] = v18 & 1;
  v19 = a6 + v12[13];
  type metadata accessor for CalculatorLayout(0);
  sub_100090A7C(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  *v19 = Environment.init<A>(_:)();
  v19[8] = v20 & 1;
  v21 = a6 + v12[14];
  State.init(wrappedValue:)();
  *v21 = v25;
  *(v21 + 1) = v26;
  v22 = a6 + v12[15];
  State.init(wrappedValue:)();
  *v22 = v25;
  *(v22 + 1) = v26;
  *(a6 + v12[17]) = 0x403B000000000000;
  *(a6 + v12[18]) = 0x4059000000000000;
  sub_1000103CC();
  result = ScaledMetric.init(wrappedValue:)();
  v24 = a6 + v12[16];
  *v24 = a1;
  *(v24 + 1) = a2;
  v24[16] = a3;
  *a6 = a4;
  a6[1] = a5;
  return result;
}

uint64_t sub_10008ECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008ED44, v5, v4);
}

uint64_t sub_10008ED44()
{

  sub_1000311AC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008EDA8@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v96 = a1;
  v104 = a8;
  v103 = sub_10003AE84(&qword_100156C88, &qword_1001104E8);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v91 = &v90 - v10;
  v11 = sub_10003AE84(&qword_100156C90, &qword_1001104F0);
  __chkstk_darwin(v11 - 8);
  v101 = &v90 - v12;
  v13 = sub_10003AE84(&qword_100156C00, &qword_100110480);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v90 - v15;
  v17 = sub_10003AE84(&qword_100156BF0, &qword_100110478);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v90 - v19;
  v92 = sub_10003AE84(&qword_100156BE0, &qword_100110470);
  __chkstk_darwin(v92);
  v94 = &v90 - v21;
  v93 = sub_10003AE84(&qword_100156BD0, &qword_100110468);
  __chkstk_darwin(v93);
  v100 = &v90 - v22;
  v95 = sub_10003AE84(&qword_100156BC0, &qword_100110460);
  __chkstk_darwin(v95);
  v99 = &v90 - v23;
  v97 = sub_10003AE84(&qword_100156BB0, &qword_100110458);
  __chkstk_darwin(v97);
  v98 = &v90 - v24;
  *&v105 = a2;
  *(&v105 + 1) = a3;
  LOBYTE(v106) = 0;
  *(&v106 + 1) = _swiftEmptyArrayStorage;

  LocalizedStringKey.init(stringLiteral:)();
  v25 = Text.init(_:tableName:bundle:comment:)();
  v27 = v26;
  v29 = v28;
  View.help(_:)();
  sub_10000C6AC(v25, v27, v29 & 1);

  *&v16[*(v14 + 44)] = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000D5B8(v16, v20, &qword_100156C00, &qword_100110480);
  v30 = &v20[*(v18 + 44)];
  v31 = v110;
  *(v30 + 4) = v109;
  *(v30 + 5) = v31;
  *(v30 + 6) = v111;
  v32 = v106;
  *v30 = v105;
  *(v30 + 1) = v32;
  v33 = v108;
  *(v30 + 2) = v107;
  *(v30 + 3) = v33;
  sub_10003AE84(&qword_100156C98, &qword_1001104F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  LOBYTE(v16) = static Edge.Set.vertical.getter();
  *(inited + 32) = v16;
  v35 = static Edge.Set.leading.getter();
  *(inited + 33) = v35;
  v36 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v36 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v35)
  {
    v36 = Edge.Set.init(rawValue:)();
  }

  v37 = v100;
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v94;
  sub_10000D5B8(v20, v94, &qword_100156BF0, &qword_100110478);
  v47 = v46 + *(v92 + 36);
  *v47 = v36;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  v48 = static Edge.Set.trailing.getter();
  v49 = v96;
  EdgeInsets.init(_all:)();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_10000D5B8(v46, v37, &qword_100156BE0, &qword_100110470);
  v58 = v37 + *(v93 + 36);
  *v58 = v48;
  *(v58 + 8) = v51;
  *(v58 + 16) = v53;
  *(v58 + 24) = v55;
  *(v58 + 32) = v57;
  *(v58 + 40) = 0;
  if (v49)
  {
    v59 = v91;
    static Material.ultraThin.getter();
    v60 = static Edge.Set.all.getter();
    *(v59 + *(sub_10003AE84(&qword_100156CA0, &qword_100110500) + 36)) = v60;
    *(v59 + *(sub_10003AE84(&qword_100156CA8, &qword_100110508) + 36)) = 0x3FC999999999999ALL;
    v61 = v103;
    v62 = (v59 + *(v103 + 36));
    v63 = *(type metadata accessor for RoundedRectangle() + 20);
    v64 = enum case for RoundedCornerStyle.continuous(_:);
    v65 = type metadata accessor for RoundedCornerStyle();
    (*(*(v65 - 8) + 104))(&v62[v63], v64, v65);
    __asm { FMOV            V0.2D, #4.0 }

    *v62 = _Q0;
    *&v62[*(sub_10003AE84(&qword_100156CB0, &unk_100110510) + 36)] = 256;
    v71 = v101;
    sub_10000D5B8(v59, v101, &qword_100156C88, &qword_1001104E8);
    v72 = 0;
  }

  else
  {
    v72 = 1;
    v61 = v103;
    v71 = v101;
  }

  (*(v102 + 56))(v71, v72, 1, v61);
  v73 = v99;
  v74 = &v99[*(v95 + 36)];
  sub_10000D5B8(v71, v74, &qword_100156C90, &qword_1001104F0);
  v75 = static Alignment.center.getter();
  v77 = v76;
  v78 = (v74 + *(sub_10003AE84(&qword_100156C20, &qword_100110490) + 36));
  *v78 = v75;
  v78[1] = v77;
  sub_10000D5B8(v37, v73, &qword_100156BD0, &qword_100110468);
  LOBYTE(v74) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v87 = v98;
  sub_10000D5B8(v73, v98, &qword_100156BC0, &qword_100110460);
  v88 = v87 + *(v97 + 36);
  *v88 = v74;
  *(v88 + 8) = v80;
  *(v88 + 16) = v82;
  *(v88 + 24) = v84;
  *(v88 + 32) = v86;
  *(v88 + 40) = 0;
  sub_10000D5B8(v87, v104, &qword_100156BB0, &qword_100110458);
}

uint64_t sub_10008F650@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v86 = a2;
  v85 = sub_10003AE84(&qword_100156C88, &qword_1001104E8);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v80 = &v79 - v2;
  v3 = sub_10003AE84(&qword_100156C90, &qword_1001104F0);
  __chkstk_darwin(v3 - 8);
  v83 = &v79 - v4;
  v5 = sub_10003AE84(&qword_100156C80, &qword_1001104B8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v79 - v7;
  v9 = sub_10003AE84(&qword_100156C70, &qword_1001104B0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v79 - v11;
  v13 = sub_10003AE84(&qword_100156C60, &qword_1001104A8);
  __chkstk_darwin(v13);
  v15 = &v79 - v14;
  v16 = sub_10003AE84(&qword_100156C50, &qword_1001104A0);
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  v81 = sub_10003AE84(&qword_100156C40, &qword_100110498);
  __chkstk_darwin(v81);
  v20 = &v79 - v19;
  sub_10008FD78();
  *&v8[*(v6 + 44)] = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000D5B8(v8, v12, &qword_100156C80, &qword_1001104B8);
  v21 = &v12[*(v10 + 44)];
  v22 = v92;
  *(v21 + 4) = v91;
  *(v21 + 5) = v22;
  *(v21 + 6) = v93;
  v23 = v88;
  *v21 = v87;
  *(v21 + 1) = v23;
  v24 = v90;
  *(v21 + 2) = v89;
  *(v21 + 3) = v24;
  sub_10003AE84(&qword_100156C98, &qword_1001104F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  v26 = static Edge.Set.vertical.getter();
  *(inited + 32) = v26;
  v27 = static Edge.Set.leading.getter();
  *(inited + 33) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  v29 = v85;
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_10000D5B8(v12, v15, &qword_100156C70, &qword_1001104B0);
  v38 = &v15[*(v13 + 36)];
  *v38 = v28;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = static Edge.Set.trailing.getter();
  v40 = v82;
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_10000D5B8(v15, v18, &qword_100156C60, &qword_1001104A8);
  v49 = &v18[*(v16 + 36)];
  *v49 = v39;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  if (v40)
  {
    v50 = v80;
    static Material.ultraThin.getter();
    v51 = static Edge.Set.all.getter();
    *(v50 + *(sub_10003AE84(&qword_100156CA0, &qword_100110500) + 36)) = v51;
    *(v50 + *(sub_10003AE84(&qword_100156CA8, &qword_100110508) + 36)) = 0x3FC999999999999ALL;
    v52 = (v50 + *(v29 + 36));
    v53 = *(type metadata accessor for RoundedRectangle() + 20);
    v54 = enum case for RoundedCornerStyle.continuous(_:);
    v55 = type metadata accessor for RoundedCornerStyle();
    (*(*(v55 - 8) + 104))(&v52[v53], v54, v55);
    __asm { FMOV            V0.2D, #4.0 }

    *v52 = _Q0;
    *&v52[*(sub_10003AE84(&qword_100156CB0, &unk_100110510) + 36)] = 256;
    v61 = v83;
    sub_10000D5B8(v50, v83, &qword_100156C88, &qword_1001104E8);
    v62 = 0;
  }

  else
  {
    v62 = 1;
    v61 = v83;
  }

  (*(v84 + 56))(v61, v62, 1, v29);
  v63 = &v20[*(v81 + 36)];
  sub_10000D5B8(v61, v63, &qword_100156C90, &qword_1001104F0);
  v64 = static Alignment.center.getter();
  v66 = v65;
  v67 = (v63 + *(sub_10003AE84(&qword_100156C20, &qword_100110490) + 36));
  *v67 = v64;
  v67[1] = v66;
  sub_10000D5B8(v18, v20, &qword_100156C50, &qword_1001104A0);
  LOBYTE(v63) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = v86;
  sub_10000D5B8(v20, v86, &qword_100156C40, &qword_100110498);
  result = sub_10003AE84(&qword_100156B80, &qword_100110448);
  v78 = v76 + *(result + 36);
  *v78 = v63;
  *(v78 + 8) = v69;
  *(v78 + 16) = v71;
  *(v78 + 24) = v73;
  *(v78 + 32) = v75;
  *(v78 + 40) = 0;
  return result;
}

uint64_t sub_10008FD78()
{
  v0 = type metadata accessor for LocalizedStringResource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v11[1] = v4;
  v11[2] = v5;
  v8 = v7 & 1;
  v12 = v7 & 1;
  v13 = v9;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.key.getter();
  (*(v1 + 8))(v3, v0);
  LocalizedStringKey.init(_:)();
  View.help(_:)();

  sub_10000C6AC(v4, v6, v8);
}

uint64_t sub_10008FF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003AE84(&qword_100156A38, &qword_100110068);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10008FFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38[1] = a1;
  v50 = a5;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v47 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v45 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessibilityTraits();
  v39 = *(v12 - 8);
  v40 = v12;
  __chkstk_darwin(v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10003AE84(&qword_100156A48, &qword_100110118);
  __chkstk_darwin(v46);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v41 = v38 - v18;
  __chkstk_darwin(v19);
  v42 = v38 - v20;
  __chkstk_darwin(v21);
  v43 = v38 - v22;
  __chkstk_darwin(v23);
  v44 = v38 - v24;
  v25 = CalculateExpression.activeError.getter();
  v48 = a3;
  v49 = a4;
  if (v25)
  {
    swift_getErrorValue();
    Error.localizedDescription.getter();
  }

  else
  {
  }

  LocalizedStringKey.init(_:)();
  sub_10003AE84(&qword_100156A50, &unk_100110120);
  sub_100004880(&qword_100156A58, &qword_100156A50, &unk_100110120, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.accessibilityLabel(_:)();

  v26 = a2;
  if (CalculateExpression.activeError.getter())
  {

    v51 = _swiftEmptyArrayStorage;
    sub_100090A7C(&qword_100156A68, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_10003AE84(&qword_100156A70, &qword_100112040);
    sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040, &protocol conformance descriptor for [A]);
    v27 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    static AccessibilityTraits.isMathEquation.getter();
    v27 = v40;
  }

  v28 = v41;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v39 + 8))(v14, v27);
  sub_1000035CC(v16, &qword_100156A48, &qword_100110118);
  if (CalculateExpression.activeError.getter())
  {

    sub_100090800();
    isa = NSDictionary.init(dictionaryLiteral:)();
  }

  else
  {
    CalculateExpression.accessibilityMathEquation.getter();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v30 = v42;
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)();

  sub_1000035CC(v28, &qword_100156A48, &qword_100110118);
  v31 = v43;
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)();
  sub_1000035CC(v30, &qword_100156A48, &qword_100110118);
  v32 = v44;
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)();
  sub_1000035CC(v31, &qword_100156A48, &qword_100110118);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v51 = String.init(localized:table:bundle:locale:comment:)();
  v52 = v33;
  v34 = swift_allocObject();
  v35 = v48;
  v36 = v49;
  v34[2] = v26;
  v34[3] = v35;
  v34[4] = v36;
  sub_10006345C();

  ModifiedContent<>.accessibilityAction<A>(named:_:)();

  return sub_1000035CC(v32, &qword_100156A48, &qword_100110118);
}

uint64_t sub_100090628()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for AccessibilityNotification.Announcement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CalculateExpression.copyToClipboard(overridePlaintext:)(0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  AccessibilityNotification.Announcement.init(_:)();
  _AccessibilityNotifications.post()();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100090800()
{
  result = qword_100156A60;
  if (!qword_100156A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100156A60);
  }

  return result;
}

uint64_t sub_10009084C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1000908A8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_10009090C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100030CEC;

  return sub_10008ECAC(v2, v3, v0 + 32);
}

unint64_t sub_1000909B0()
{
  result = qword_100156AC0;
  if (!qword_100156AC0)
  {
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_10001B814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156AC0);
  }

  return result;
}

uint64_t sub_100090A34()
{

  return swift_deallocObject();
}

uint64_t sub_100090A7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100090AC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_100090B58@<W0>(Calculator::CalculatorButtonRepresentable *a1@<X0>, uint64_t a2@<X1>, Calculator::CalculatorButtonRepresentable *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = *(a2 + 11);
  v7 = *(a2 + 12);
  v8 = *(a2 + 10);
  v9 = *(a2 + 16);
  v10 = *a1;
  if (v5 == 1)
  {
    v10 = CalculatorButtonRepresentable.shiftedButton(isRPN:)(*(a2 + 10));
  }

  result = sub_100027A90(v10, v9);
  *a3 = v4;
  *(a3 + 1) = v5;
  *(a3 + 2) = v8;
  *(a3 + 3) = v6;
  *(a3 + 4) = v7;
  *(a3 + 5) = result;
  *(a3 + 6) = 0;
  return result;
}

void *sub_100090BF0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v16 = _swiftEmptyArrayStorage;
  sub_10001B380(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;

    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = v6[2];
    v11 = v6[3];
    if (v12 >= v11 >> 1)
    {
      sub_10001B380((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    v6[2] = v12 + 1;
    v6[v12 + 4] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_100090D1C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v26 = _swiftEmptyArrayStorage;
    sub_10001B4E4(0, v4, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v24 = v8;
      a1(&v25, &v24);
      if (v3)
      {
        break;
      }

      v9 = v25;
      v10 = BYTE1(v25);
      v11 = BYTE2(v25);
      v12 = BYTE3(v25);
      v13 = BYTE4(v25);
      v14 = BYTE5(v25);
      v15 = BYTE6(v25);
      v26 = v6;
      v17 = v6[2];
      v16 = v6[3];
      if (v17 >= v16 >> 1)
      {
        v19 = BYTE2(v25);
        v21 = BYTE5(v25);
        v22 = BYTE4(v25);
        v20 = BYTE6(v25);
        sub_10001B4E4((v16 > 1), v17 + 1, 1);
        v15 = v20;
        v14 = v21;
        v13 = v22;
        v11 = v19;
        v6 = v26;
      }

      v6[2] = v17 + 1;
      v18 = &v6[v17] - v17;
      v18[32] = v9;
      v18[33] = v10;
      v18[34] = v11;
      v18[35] = v12;
      v18[36] = v13;
      v18[37] = v14;
      v18[38] = v15;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

BOOL sub_100090E74@<W0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = v4;
  if (v4 == 47)
  {
    if (*(a2 + 9))
    {
      v5 = 47;
    }

    else
    {
      v5 = 55;
    }
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 10);
  v8 = *(a2 + 16);
  if (v6 == 1)
  {
    LOBYTE(v4) = CalculatorButtonRepresentable.shiftedButton(isRPN:)(v7);
  }

  result = sub_100027A90(v4, v8);
  *a3 = v5;
  *(a3 + 1) = v6;
  *(a3 + 2) = v7;
  *(a3 + 3) = 0;
  *(a3 + 5) = result;
  *(a3 + 6) = 0;
  return result;
}

void *sub_100090F14(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  if (*a1)
  {
    v3 = type metadata accessor for CalculatorKeypadConfiguration(0);
    v4 = sub_10003C9A0(v1 + *(v3 + 48));
    if ((v1[3] & 1) == 0)
    {
      swift_getKeyPath();
      v16 = v2;
      sub_10001B204(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v9 = *(v2 + 96);
      swift_getKeyPath();
      v16 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = v9 / *(v2 + 104);

      if (v10 <= 0.98)
      {
        v8 = &off_100149458;
      }

      else
      {
        v8 = &off_100149540;
      }

      v6 = _swiftEmptyArrayStorage;
      goto LABEL_22;
    }

    if (v4)
    {
      if (qword_100154728 != -1)
      {
        swift_once();
      }

      v5 = qword_100160D98;
      swift_getKeyPath();
      v16 = v5;
      sub_10001B204(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v5 + 73))
      {
        v6 = &off_100149978;
      }

      else
      {
        v6 = &off_100149758;
      }

      goto LABEL_21;
    }
  }

  else if ((a1[3] & 1) == 0)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_21:
    v8 = &off_100149458;
    goto LABEL_22;
  }

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v7 = qword_100160D98;
  swift_getKeyPath();
  v16 = v7;
  sub_10001B204(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v7 + 73))
  {
    v6 = &off_100149868;
  }

  else
  {
    v6 = &off_100149648;
  }

  v8 = &off_100149348;
LABEL_22:
  __chkstk_darwin(a1);
  v15 = v1;
  v11 = sub_100090BF0(sub_1000912E8, v14, v8);

  if (v6[2])
  {
    __chkstk_darwin(v12);
    v15 = v1;
    sub_100090BF0(sub_100091314, v14, v6);
  }

  return v11;
}

void sub_100091340(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X2>, void *a3@<X8>)
{
  v6 = *a1;
  v8[2] = *(v3 + 16);
  sub_100090D1C(a2, v8, v6);
  *a3 = v7;
}

uint64_t type metadata accessor for CalculatorKeypadConfiguration(uint64_t a1)
{
  result = qword_100156D28;
  if (!qword_100156D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009143C(uint64_t a1)
{
  sub_1000914EC(319);
  if (v1 <= 0x3F)
  {
    sub_100091544(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CalculatorSizeClass(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000914EC(uint64_t a1)
{
  if (!qword_100156D38)
  {
    type metadata accessor for CalculatorLayout(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100156D38);
    }
  }
}

void sub_100091544(uint64_t a1)
{
  if (!qword_100156D40)
  {
    sub_100023E60();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_100156D40);
    }
  }
}

void sub_1000915A0(char a1)
{
  v2 = v1;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v4 = qword_100160D98;
  sub_10000362C();
  if ((a1 & 1) != 0 && (swift_getKeyPath(), sub_100011678(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v4 + 72) == 1))
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = 1;

    sub_1000F7484(sub_10006C1F4, v5);
  }

  else
  {
    sub_100091C5C(a1 & 1);
  }
}

uint64_t sub_1000916FC()
{
  swift_getKeyPath();
  sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_10009179C()
{
  swift_getKeyPath();
  sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_10009183C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

void sub_10009190C(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_100091A1C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  *&result = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v13 - v8;
  if (!a1)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    type metadata accessor for MainActor();

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3 & 1;
    sub_100050560(0, 0, v9, &unk_100110800, v12);
  }

  return result;
}

uint64_t sub_100091B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100091BF0, v7, v6);
}

uint64_t sub_100091BF0()
{
  v1 = *(v0 + 32);

  sub_100091C5C(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_100091C5C(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  v12 = v1;
  sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000048C8(v4, qword_100160D38);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 16))
      {
        v9 = 1702195828;
      }

      else
      {
        v9 = 0x65736C6166;
      }

      if (*(v1 + 16))
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      v11 = sub_100006E5C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "History View toggled with %{public}s", v7, 0xCu);
      sub_100003F80(v8);
    }
  }
}

void sub_100091F18(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
}

void sub_100091FE8(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000920F8()
{
  v1 = OBJC_IVAR____TtC10Calculator26CalculatorToolbarViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10009219C()
{
  _StringGuts.grow(_:)(43);
  v1._object = 0x80000001001070D0;
  v1._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v1);
  swift_getKeyPath();
  sub_100011678(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 16))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 0xD000000000000014;
  v5._object = 0x80000001001070F0;
  String.append(_:)(v5);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100092378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030CEC;

  return sub_100091B54(a1, v4, v5, v6, v7);
}

uint64_t sub_100092458()
{
  v0 = sub_10003AE84(&qword_100156EF8, &qword_100110CA8);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100004078(v10, static CalculatorAppView.typeDisplayRepresentation);
  sub_1000048C8(v10, static CalculatorAppView.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t CalculatorAppView.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100154670 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_1000048C8(v0, static CalculatorAppView.typeDisplayRepresentation);
}

uint64_t static CalculatorAppView.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100154670 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1000048C8(v2, static CalculatorAppView.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10009284C()
{
  v0 = sub_10003AE84(&qword_100156F08, &qword_100110CB8);
  __chkstk_darwin(v0 - 8);
  v19 = &v17 - v1;
  v2 = sub_10003AE84(&qword_100156EF8, &qword_100110CA8);
  __chkstk_darwin(v2 - 8);
  v18 = &v17 - v3;
  v17 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_10003AE84(&qword_100156F10, &qword_100110CC0);
  v11 = *(sub_10003AE84(&qword_100156038, &qword_10010E3F0) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10010BDE0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v17);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v10 + 56))(v18, 1, 1, v9);
  v14 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v14 - 8) + 56))(v19, 1, 1, v14);
  DisplayRepresentation.init(title:subtitle:image:)();
  v15 = sub_1000772A0(v13);
  swift_setDeallocating();
  sub_1000940B4(v13 + v12);
  result = swift_deallocClassInstance();
  static CalculatorAppView.caseDisplayRepresentations = v15;
  return result;
}

uint64_t *CalculatorAppView.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_100154678 != -1)
  {
    swift_once();
  }

  return &static CalculatorAppView.caseDisplayRepresentations;
}

double static CalculatorAppView.caseDisplayRepresentations.getter()
{
  if (qword_100154678 != -1)
  {
    swift_once();
  }

  return result;
}

BOOL CalculatorAppView.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001499C0, v2);

  return v3 != 0;
}

uint64_t sub_100092D88@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100149A20, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_100092DF4()
{
  result = qword_100156E58;
  if (!qword_100156E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E58);
  }

  return result;
}

Swift::Int sub_100092E48()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100092EA4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100092EEC()
{
  result = qword_100156E60;
  if (!qword_100156E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E60);
  }

  return result;
}

unint64_t sub_100092F44()
{
  result = qword_100156E68;
  if (!qword_100156E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E68);
  }

  return result;
}

unint64_t sub_100092F9C()
{
  result = qword_100156E70;
  if (!qword_100156E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E70);
  }

  return result;
}

unint64_t sub_100093000()
{
  result = qword_100156E78;
  if (!qword_100156E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E78);
  }

  return result;
}

unint64_t sub_100093054()
{
  result = qword_100156E80;
  if (!qword_100156E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E80);
  }

  return result;
}

unint64_t sub_1000930A8()
{
  result = qword_100156E88;
  if (!qword_100156E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E88);
  }

  return result;
}

unint64_t sub_100093100()
{
  result = qword_100156E90;
  if (!qword_100156E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E90);
  }

  return result;
}

unint64_t sub_1000931BC()
{
  result = qword_100156E98;
  if (!qword_100156E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156E98);
  }

  return result;
}

uint64_t sub_100093210(uint64_t a1)
{
  v2 = sub_1000931BC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100093260()
{
  result = qword_100156EA0;
  if (!qword_100156EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EA0);
  }

  return result;
}

unint64_t sub_1000932B8()
{
  result = qword_100156EA8;
  if (!qword_100156EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EA8);
  }

  return result;
}

unint64_t sub_100093310()
{
  result = qword_100156EB0;
  if (!qword_100156EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EB0);
  }

  return result;
}

uint64_t sub_100093364(uint64_t a1)
{
  v2 = sub_100093100();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000933B4()
{
  result = qword_100156EB8;
  if (!qword_100156EB8)
  {
    sub_10003AECC(&qword_100156EC0, &qword_100110A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EB8);
  }

  return result;
}

unint64_t sub_10009342C()
{
  result = qword_100156EC8;
  if (!qword_100156EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EC8);
  }

  return result;
}

uint64_t sub_100093480()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100004078(v6, qword_100160CB0);
  sub_1000048C8(v6, qword_100160CB0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10009366C()
{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  sub_100004078(v0, qword_100160CC8);
  v1 = sub_1000048C8(v0, qword_100160CC8);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t (*sub_10009373C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1000937B0;
}

void sub_1000937B0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100093800()
{
  result = qword_100156ED0;
  if (!qword_100156ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156ED0);
  }

  return result;
}

unint64_t sub_100093858()
{
  result = qword_100156ED8;
  if (!qword_100156ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156ED8);
  }

  return result;
}

unint64_t sub_1000938B0()
{
  result = qword_100156EE0;
  if (!qword_100156EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EE0);
  }

  return result;
}

unint64_t sub_100093930()
{
  result = qword_100156EE8;
  if (!qword_100156EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156EE8);
  }

  return result;
}

uint64_t sub_100093A6C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_1000048C8(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100093B20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100093930();
  *v5 = v2;
  v5[1] = sub_100030CEC;

  return OpenIntent.perform()(a1, a2, v6);
}

uint64_t sub_100093BD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100093C38();
  *a1 = result;
  return result;
}

uint64_t sub_100093C38()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10003AE84(&qword_100156EF0, &qword_100110CA0);
  __chkstk_darwin(v2 - 8);
  v22 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v21 = v20 - v5;
  v6 = sub_10003AE84(&qword_100156EF8, &qword_100110CA8);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for LocalizedStringResource();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v20[1] = sub_10003AE84(&qword_100156F00, &qword_100110CB0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v16 + 56))(v8, 1, 1, v15);
  v26[0] = 0;
  v17 = type metadata accessor for IntentDialog();
  v18 = *(*(v17 - 8) + 56);
  v18(v21, 1, 1, v17);
  v18(v22, 1, 1, v17);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_1000931BC();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t sub_1000940B4(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100156038, &qword_10010E3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100094150(uint64_t a1)
{
  sub_100002B70(319);
  if (v1 <= 0x3F)
  {
    sub_100002BD4(319, &unk_100156F88, &type metadata accessor for LayoutDirection);
    if (v2 <= 0x3F)
    {
      sub_100002BD4(319, &qword_100156648, type metadata accessor for CalculatorViewModel);
      if (v3 <= 0x3F)
      {
        sub_100002BD4(319, &qword_1001557F0, type metadata accessor for CalculatorLayout);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

double sub_10009425C(uint64_t a1)
{
  v1 = sub_10003AE84(&qword_100157088, &unk_100110E60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  Bindable.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  v6 = v10;
  if (*(v10 + 51) == 1)
  {
    *(v10 + 51) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v9 - 2) = v6;
    *(&v9 - 8) = 1;
    v10 = v6;
    sub_10000F330(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100094450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorDetailsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000944B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorDetailsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094550(uint64_t *a1, int a2)
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

uint64_t sub_100094598(uint64_t result, int a2, int a3)
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

uint64_t sub_1000945D8()
{
  v1[28] = v0;
  sub_10003AE84(&qword_100157268, &qword_100111098);
  v1[29] = swift_task_alloc();
  v2 = sub_10003AE84(&qword_1001572D0, &qword_1001110F0);
  v1[30] = v2;
  v1[31] = *(v2 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = type metadata accessor for StoreContext();
  sub_100097AE0(&qword_100157258, v3, type metadata accessor for StoreContext, &unk_100111070);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100094730, v5, v4);
}

uint64_t sub_100094730()
{
  v45 = v0;
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000048C8(v1, qword_100160D38);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to fetch all existing records from db.", v4, 2u);
  }

  v5 = *(v0 + 232);

  v6 = sub_10003AE84(&qword_100157270, &qword_1001110A0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_10003AE84(&qword_1001572D8, &qword_1001110F8);
  sub_10003AE84(&qword_1001572E0, &qword_100111100);
  *(swift_allocObject() + 16) = xmmword_10010BDE0;
  swift_getKeyPath();
  sub_100097AE0(&qword_1001572E8, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  SortDescriptor.init<A>(_:order:)();
  type metadata accessor for SchemaV1.HistoryRecord(0);
  sub_100097AE0(&qword_100154BC8, 255, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  FetchDescriptor.init(predicate:sortBy:)();
  sub_100097AE0(&qword_100157260, v7, type metadata accessor for StoreContext, &unk_100111038);
  ModelActor.modelContext.getter();
  v8 = dispatch thunk of ModelContext.fetch<A>(_:)();

  v9 = v8;
  if (v8 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v9 = v8;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_25:
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_7:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  v39 = v9 & 0xC000000000000001;
  v12 = _swiftEmptyArrayStorage;
  v40 = result;
  v41 = v9;
  do
  {
    v42 = v11;
    if (v39)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v9 + 8 * v11 + 32);
    }

    *(v0 + 144) = v13;
    swift_getKeyPath();
    sub_100097AE0(&qword_100154BC0, 255, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    *(&v44 + 1) = &type metadata for String;
    *&v43 = v14;
    *(&v43 + 1) = v15;
    sub_100071F2C(&v43, 0);
    *(v0 + 152) = v13;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v16 = *(v0 + 64);
    v17 = *(v0 + 72);
    *(&v44 + 1) = &type metadata for String;
    *&v43 = v16;
    *(&v43 + 1) = v17;
    sub_100071F2C(&v43, 1);
    *(v0 + 160) = v13;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v18 = *(v0 + 272);
    *(&v44 + 1) = &type metadata for Bool;
    LOBYTE(v43) = v18;
    sub_100071F2C(&v43, 2);
    *(v0 + 168) = v13;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v19 = *(v0 + 273);
    *(&v44 + 1) = &type metadata for Bool;
    LOBYTE(v43) = v19;
    sub_100071F2C(&v43, 3);
    *(v0 + 176) = v13;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v20 = *(v0 + 274);
    *(&v44 + 1) = &type metadata for Bool;
    LOBYTE(v43) = v20;
    sub_100071F2C(&v43, 4);
    *(v0 + 184) = v13;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v21 = *(v0 + 80);
    v22 = *(v0 + 88);
    *(&v44 + 1) = &type metadata for String;
    *&v43 = v21;
    *(&v43 + 1) = v22;
    sub_100071F2C(&v43, 5);
    *(v0 + 192) = v13;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v23 = *(v0 + 96);
    v24 = *(v0 + 104);
    *(&v44 + 1) = &type metadata for String;
    *&v43 = v23;
    *(&v43 + 1) = v24;
    sub_100071F2C(&v43, 6);
    *(v0 + 200) = v13;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_10004B3E8();
    PersistentModel.getValue<A>(forKey:)();

    v25 = *(v0 + 120);
    if (v25)
    {
      v26 = *(v0 + 112);
      *(&v44 + 1) = &type metadata for String;
      *&v43 = v26;
      *(&v43 + 1) = v25;
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    sub_100071F2C(&v43, 7);
    *(v0 + 208) = v13;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v27 = *(v0 + 136);
    if (v27)
    {
      v28 = *(v0 + 128);
      *(&v44 + 1) = &type metadata for String;
      *&v43 = v28;
      *(&v43 + 1) = v27;
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    sub_100071F2C(&v43, 8);
    *(v0 + 40) = type metadata accessor for Date();
    sub_100019850((v0 + 16));
    *(v0 + 216) = v13;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100097AE0(&qword_100154BD0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    PersistentModel.getValue<A>(forKey:)();

    sub_100071F2C(v0 + 16, 9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1000AC17C(0, v12[2] + 1, 1, v12);
    }

    v30 = v12[2];
    v29 = v12[3];
    if (v30 >= v29 >> 1)
    {
      v12 = sub_1000AC17C((v29 > 1), v30 + 1, 1, v12);
    }

    ++v11;

    v12[2] = v30 + 1;
    v12[v30 + 4] = &_swiftEmptyDictionarySingleton;
    v9 = v41;
  }

  while (v40 != v42 + 1);
LABEL_26:

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v35 = *(v0 + 248);
  v34 = *(v0 + 256);
  v36 = *(v0 + 240);
  if (v33)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Successfully fetched all existing records from db.", v37, 2u);
  }

  (*(v35 + 8))(v34, v36);

  v38 = *(v0 + 8);

  return v38(v12);
}

uint64_t sub_100095308(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  type metadata accessor for GenericRecord(0);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for StoreContext();
  sub_100097AE0(&qword_100157258, v3, type metadata accessor for StoreContext, &unk_100111070);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000953EC, v5, v4);
}

uint64_t sub_1000953EC()
{
  v13 = v0;
  v1 = v0[10];
  sub_100045810(v0[8], v1);
  type metadata accessor for SchemaV1.HistoryRecord(0);
  swift_allocObject();
  v2 = sub_10007A434(v1);
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000048C8(v3, qword_100160D38);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v7 = v12;
    *v6 = 136315138;
    v0[7] = v2;
    swift_getKeyPath();
    sub_100097AE0(&qword_100154BC0, 255, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100097AE0(&qword_100154BC8, 255, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
    PersistentModel.getValue<A>(forKey:)();

    v8 = sub_100006E5C(v0[4], v0[5], &v12);

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Adding record: %s to db.", v6, 0xCu);
    sub_100003F80(v7);
  }

  sub_100097AE0(&qword_100157260, v9, type metadata accessor for StoreContext, &unk_100111038);
  ModelActor.modelContext.getter();
  sub_100097AE0(&qword_100154BC8, 255, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  dispatch thunk of ModelContext.insert<A>(_:)();

  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10009597C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 96) = a3;
  *(v4 + 24) = a1;
  sub_10003AE84(&qword_100157268, &qword_100111098);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v5 = sub_10003AE84(&qword_100157270, &qword_1001110A0);
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = type metadata accessor for StoreContext();
  sub_100097AE0(&qword_100157258, v6, type metadata accessor for StoreContext, &unk_100111070);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100095AE8, v8, v7);
}

uint64_t sub_100095AE8()
{
  v27 = v0;
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000048C8(v1, qword_100160D38);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100006E5C(v5, v4, &v26);
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting record: %s from db.", v6, 0xCu);
    sub_100003F80(v7);
  }

  v8 = *(v0 + 72);
  v9 = *(v0 + 32);
  v10 = *(v0 + 96);
  v11 = *(v0 + 24);
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v9;
  *(v0 + 16) = type metadata accessor for SchemaV1.HistoryRecord(0);
  Predicate.init(_:)();
  sub_100097AE0(&qword_100157260, v13, type metadata accessor for StoreContext, &unk_100111038);
  ModelActor.modelContext.getter();
  v14 = *(v8 + 16);
  v15 = (v8 + 56);
  v16 = *(v0 + 80);
  v17 = *(v0 + 64);
  if (v10 == 1)
  {
    v18 = *(v0 + 56);
    v14(v18, v16, *(v0 + 64));
    (*v15)(v18, 0, 1, v17);
    sub_100097AE0(&qword_100154BC8, 255, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 56);
    v22 = *(v0 + 64);

    sub_1000035CC(v21, &qword_100157268, &qword_100111098);
    (*(v20 + 8))(v19, v22);
  }

  else
  {
    v23 = *(v0 + 48);
    v14(v23, v16, *(v0 + 64));
    (*v15)(v23, 0, 1, v17);
    sub_100097AE0(&qword_100154BC8, 255, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    sub_1000035CC(*(v0 + 48), &qword_100157268, &qword_100111098);

    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100096154@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v21 = a3;
  v6 = sub_10003AE84(&qword_100157278, &qword_1001110A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = sub_10003AE84(&qword_100157280, &qword_1001110B0);
  v11 = *(v10 - 8);
  v22 = v10;
  v23 = v11;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = sub_10003AE84(&qword_100157288, &qword_1001110B8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v20 - v16;
  v24 = a2;
  v25 = v21;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100004880(&qword_100157290, &qword_100157278, &qword_1001110A8, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  a4[3] = sub_10003AE84(&qword_100157298, &qword_1001110E8);
  a4[4] = sub_100097920();
  sub_100019850(a4);
  sub_100004880(&qword_1001572C0, &qword_100157288, &qword_1001110B8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_100004880(&qword_1001572C8, &qword_100157280, &qword_1001110B0, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v18 = v22;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v23 + 8))(v13, v18);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1000964C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for StoreContext();
  sub_100097AE0(&qword_100157258, v3, type metadata accessor for StoreContext, &unk_100111070);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v5;
  v2[6] = v4;

  return _swift_task_switch(sub_10009657C, v5, v4);
}

uint64_t sub_10009657C()
{
  v25 = v0;
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_1000048C8(v1, qword_100160D38);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24[0] = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = sub_100006E5C(v6, v7, v24);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting records with identifiers: %s from db.", v4, 0xCu);
    sub_100003F80(v5);
  }

  v10 = v0[2];
  v11 = v10[2];
  v0[8] = v11;
  if (v11)
  {
    v0[9] = 0;
    v12 = v10[5];
    v0[10] = v12;
    v13 = v10[4];

    v14 = swift_task_alloc();
    v0[11] = v14;
    *v14 = v0;
    v14[1] = sub_100096A90;

    return sub_10009597C(v13, v12, 1);
  }

  else
  {
    sub_100097AE0(&qword_100157260, v9, type metadata accessor for StoreContext, &unk_100111038);
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 136315138;
      v20 = Array.description.getter();
      v22 = sub_100006E5C(v20, v21, v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully deleted records with identifiers: %s from db.", v18, 0xCu);
      sub_100003F80(v19);
    }

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100096A90()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100096FD0;
  }

  else
  {
    v5 = sub_100096BE4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100096BE4(uint64_t a1, uint64_t a2)
{
  v27 = v2;
  v3 = v2[9] + 1;
  if (v3 == v2[8])
  {
    v4 = v2[12];
    sub_100097AE0(&qword_100157260, a2, type metadata accessor for StoreContext, &unk_100111038);
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
    if (v4)
    {

      swift_errorRetain();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v5, v6))
      {

        goto LABEL_12;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26[0] = v9;
      *v7 = 138412546;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      *(v7 + 12) = 2080;
      v11 = Array.description.getter();
      v13 = sub_100006E5C(v11, v12, v26);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error: %@ deleting records with identifiers: %s from datastore.", v7, 0x16u);
      sub_1000035CC(v8, &qword_100154BE8, &qword_10010C010);

      sub_100003F80(v9);
    }

    else
    {

      v5 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26[0] = v21;
        *v20 = 136315138;
        v22 = Array.description.getter();
        v24 = sub_100006E5C(v22, v23, v26);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v5, v19, "Successfully deleted records with identifiers: %s from db.", v20, 0xCu);
        sub_100003F80(v21);
      }
    }

LABEL_12:
    v25 = v2[1];

    return v25();
  }

  v2[9] = v3;
  v14 = v2[2] + 16 * v3;
  v15 = *(v14 + 40);
  v2[10] = v15;
  v16 = *(v14 + 32);

  v17 = swift_task_alloc();
  v2[11] = v17;
  *v17 = v2;
  v17[1] = sub_100096A90;

  return sub_10009597C(v16, v15, 1);
}

uint64_t sub_100096FD0()
{
  v13 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 138412546;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2080;
    v7 = Array.description.getter();
    v9 = sub_100006E5C(v7, v8, &v12);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@ deleting records with identifiers: %s from datastore.", v3, 0x16u);
    sub_1000035CC(v4, &qword_100154BE8, &qword_10010C010);

    sub_100003F80(v5);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000971B8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for StoreContext();
  sub_100097AE0(&qword_100157258, v4, type metadata accessor for StoreContext, &unk_100111070);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100097274, v6, v5);
}

uint64_t sub_100097274()
{
  v28 = v0;
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000048C8(v1, qword_100160D38);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v27[0] = v5;
    *v4 = 136315138;
    dispatch thunk of static PersistentModel.schemaMetadata.getter();
    type metadata accessor for Schema.PropertyMetadata();
    v6 = Array.description.getter();
    v8 = v7;

    v9 = sub_100006E5C(v6, v8, v27);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting all records of type: %s from db.", v4, 0xCu);
    sub_100003F80(v5);
  }

  v10 = v0[3];
  sub_100097AE0(&qword_100157260, v11, type metadata accessor for StoreContext, &unk_100111038);
  ModelActor.modelContext.getter();
  v0[2] = v10;
  v12 = type metadata accessor for Predicate();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  (*(*(v12 - 8) + 56))(v15, 1, 1, v12);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
  (*(v14 + 8))(v15, v13);

  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27[0] = v22;
    *v21 = 136315138;
    dispatch thunk of static PersistentModel.schemaMetadata.getter();
    type metadata accessor for Schema.PropertyMetadata();
    v23 = Array.description.getter();
    v25 = v24;

    v26 = sub_100006E5C(v23, v25, v27);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Successfully deleted all records of type: %s from db.", v21, 0xCu);
    sub_100003F80(v22);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000977CC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100097878()
{
  v0 = type metadata accessor for StoreContext();
  v2 = sub_100097AE0(&qword_100157260, v1, type metadata accessor for StoreContext, &unk_100111038);

  return ModelActor.unownedExecutor.getter(v0, v2);
}

unint64_t sub_100097920()
{
  result = qword_1001572A0;
  if (!qword_1001572A0)
  {
    sub_10003AECC(&qword_100157298, &qword_1001110E8);
    sub_1000979AC();
    sub_100097A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001572A0);
  }

  return result;
}

unint64_t sub_1000979AC()
{
  result = qword_1001572A8;
  if (!qword_1001572A8)
  {
    sub_10003AECC(&qword_100157288, &qword_1001110B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001572A8);
  }

  return result;
}

unint64_t sub_100097A30()
{
  result = qword_1001572B0;
  if (!qword_1001572B0)
  {
    sub_10003AECC(&qword_100157280, &qword_1001110B0);
    sub_100004880(&qword_1001572B8, &qword_100157278, &qword_1001110A8, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001572B0);
  }

  return result;
}

uint64_t sub_100097AE0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100097B28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Tips.EmptyDonation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100097C34@<X0>(uint64_t *a2@<X8>)
{
  sub_10002DD60();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100097C74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100097CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100097D18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v138 = a1;
  v3 = type metadata accessor for LongPressGesture();
  v133 = *(v3 - 8);
  v134 = v3;
  __chkstk_darwin(v3);
  v132 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003AE84(&qword_100157390, &qword_1001115D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v135 = &v108 - v7;
  v144 = type metadata accessor for AccessibilityTraits();
  v129 = *(v144 - 8);
  __chkstk_darwin(v144);
  v127 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v128 = &v108 - v10;
  __chkstk_darwin(v11);
  v126 = &v108 - v12;
  v13 = type metadata accessor for LocalizedStringResource();
  v122 = *(v13 - 8);
  v123 = v13;
  __chkstk_darwin(v13);
  v121 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10003AE84(&qword_1001573B0, &qword_1001115E8);
  v116 = *(v19 - 8);
  v117 = v19;
  __chkstk_darwin(v19);
  v21 = &v108 - v20;
  v141 = sub_10003AE84(&qword_1001573A8, &qword_1001115E0);
  __chkstk_darwin(v141);
  v119 = &v108 - v22;
  v131 = sub_10003AE84(&qword_100157388, &qword_1001115D0);
  __chkstk_darwin(v131);
  v120 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v124 = &v108 - v25;
  __chkstk_darwin(v26);
  v125 = &v108 - v27;
  __chkstk_darwin(v28);
  v142 = &v108 - v29;
  __chkstk_darwin(v30);
  v143 = &v108 - v31;
  __chkstk_darwin(v32);
  v145 = &v108 - v33;
  v34 = swift_allocObject();
  v35 = *(v1 + 48);
  *(v34 + 48) = *(v1 + 32);
  *(v34 + 64) = v35;
  *(v34 + 80) = *(v1 + 64);
  *(v34 + 96) = *(v1 + 80);
  v36 = *(v1 + 16);
  *(v34 + 16) = *v1;
  *(v34 + 32) = v36;
  v146 = v1;
  sub_100027868(v1, v160);
  sub_10003AE84(&qword_1001573E0, &qword_1001115F8);
  sub_100099954();
  v115 = v21;
  Button.init(action:label:)();
  v166 = *(v1 + 24);
  v37 = *(v1 + 16);
  v165 = v37;
  v136 = v6;
  v137 = v5;
  v108 = v16;
  v109 = v15;
  v130 = v18;
  if (v166 == 1)
  {
    v162 = v37;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v38 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v165, &qword_100157408, &qword_100111608);
    (*(v16 + 8))(v18, v15);
    v37 = v162;
  }

  v39 = *(v1 + 57);
  v114 = v39;
  v40 = *(v1 + 58);
  v139 = *(v1 + 59);
  LODWORD(v140) = v40;
  v41 = *(v1 + 60);
  v42 = *(v1 + 61);
  v111 = v42;
  v43 = *(v1 + 62);
  v112 = *(v1 + 63);
  v113 = v41;
  v44 = *(v1 + 64);
  v45 = *(v1 + 72);
  swift_getKeyPath();
  *&v160[0] = v37;
  sub_1000999E8(&qword_100157410, type metadata accessor for CalculatorKeypadViewModel, &unk_1001124E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v110 = *(v37 + 16);

  KeyPath = swift_getKeyPath();
  type metadata accessor for CalculatorViewModel(0);
  v118 = sub_1000999E8(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  v47 = Environment.init<A>(_:)();
  v49 = v48;
  v50 = swift_getKeyPath();
  type metadata accessor for CalculatorToolbarViewModel(0);
  sub_1000999E8(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  v51 = Environment.init<A>(_:)();
  v158 = 0;
  v156 = v49 & 1;
  v154 = 0;
  v152 = v52 & 1;
  LOBYTE(v147) = v39;
  BYTE1(v147) = v140;
  BYTE2(v147) = v139;
  v53 = v112;
  v54 = v113;
  BYTE3(v147) = v113;
  BYTE4(v147) = v42;
  BYTE5(v147) = v43;
  BYTE6(v147) = v112;
  *(&v147 + 1) = v44;
  *&v148 = v45;
  BYTE8(v148) = v110;
  *(&v148 + 9) = *v159;
  HIDWORD(v148) = *&v159[3];
  *&v149 = KeyPath;
  BYTE8(v149) = 0;
  HIDWORD(v149) = *&v157[3];
  *(&v149 + 9) = *v157;
  *&v150 = v47;
  BYTE8(v150) = v49 & 1;
  HIDWORD(v150) = *&v155[3];
  *(&v150 + 9) = *v155;
  *&v151[0] = v50;
  BYTE8(v151[0]) = 0;
  HIDWORD(v151[0]) = *&v153[3];
  *(v151 + 9) = *v153;
  *&v151[1] = v51;
  BYTE8(v151[1]) = v52 & 1;
  sub_100004880(&qword_1001573B8, &qword_1001573B0, &qword_1001115E8, &protocol conformance descriptor for Button<A>);
  sub_100026B34();
  v55 = v119;
  v56 = v117;
  v57 = v115;
  View.buttonStyle<A>(_:)();
  v160[2] = v149;
  v160[3] = v150;
  v161[0] = v151[0];
  *(v161 + 9) = *(v151 + 9);
  v160[0] = v147;
  v160[1] = v148;
  sub_100027BD0(v160);
  (*(v116 + 8))(v57, v56);
  LOBYTE(v56) = *(v2 + 80);
  v58 = swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = v56;
  v60 = (v55 + *(v141 + 36));
  *v60 = v58;
  v60[1] = sub_1000296E4;
  v60[2] = v59;
  v61 = 0x1000000000000;
  if (!v53)
  {
    v61 = 0;
  }

  v62 = 0x10000000000;
  if (!v43)
  {
    v62 = 0;
  }

  v63 = &_mh_execute_header;
  if (!v111)
  {
    v63 = 0;
  }

  v64 = 0x1000000;
  if (!v54)
  {
    v64 = 0;
  }

  v65 = 0x10000;
  if (!v139)
  {
    v65 = 0;
  }

  v66 = 256;
  if (!v140)
  {
    v66 = 0;
  }

  v140 = v66 | v114 | v65 | v64;
  v67 = v63 | v62 | v61;
  v68 = sub_100025D2C(v140 | v67);
  v69 = v121;
  sub_100027C24(v68);
  LocalizedStringResource.key.getter();
  (*(v122 + 8))(v69, v123);
  LocalizedStringKey.init(_:)();
  v70 = Text.init(_:tableName:bundle:comment:)();
  v72 = v71;
  v74 = v73;
  sub_1000269F8();
  v75 = v120;
  View.accessibilityLabel(_:)();
  sub_10000C6AC(v70, v72, v74 & 1);

  sub_1000035CC(v55, &qword_1001573A8, &qword_1001115E0);
  v76 = v140;
  v77 = sub_100025D2C(v140 | v67);
  sub_10002866C(v77);
  v78 = v124;
  ModifiedContent<>.accessibilityIdentifier(_:)();

  sub_1000035CC(v75, &qword_100157388, &qword_1001115D0);
  v79 = sub_100025D2C(v76 | v67);
  sub_100029028(v79);
  v80 = v125;
  ModifiedContent<>.accessibilityHint(_:)();

  sub_1000035CC(v78, &qword_100157388, &qword_1001115D0);
  v81 = v126;
  static AccessibilityTraits.isButton.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v82 = v129;
  v83 = *(v129 + 8);
  v84 = v81;
  v85 = v67;
  v83(v84, v144);
  v86 = v80;
  v87 = v140;
  sub_1000035CC(v86, &qword_100157388, &qword_1001115D0);
  if (sub_100025D2C(v87 | v67) == 28)
  {
    v88 = v127;
    static AccessibilityTraits.isToggle.getter();
  }

  else
  {
    v88 = v127;
    static AccessibilityTraits.isKeyboardKey.getter();
  }

  v89 = v128;
  v90 = v88;
  v91 = v144;
  (*(v82 + 32))(v128, v90, v144);
  v92 = v142;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v83(v89, v91);
  sub_1000035CC(v92, &qword_100157388, &qword_1001115D0);
  v164 = *(v2 + 8);
  v163 = *v2;
  v93 = v163;
  LOBYTE(v92) = v164;

  v94 = v130;
  if ((v92 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v95 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v163, &qword_100154810, &qword_10010DF90);
    (*(v108 + 8))(v94, v109);
    v93 = v147;
  }

  swift_getKeyPath();
  *&v147 = v93;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LocalizedStringKey.init(stringLiteral:)();
  sub_100025D2C(v87 | v85);
  v96 = v143;
  ModifiedContent<>.accessibilityValue(_:isEnabled:)();

  sub_1000035CC(v96, &qword_100157388, &qword_1001115D0);
  v97 = v132;
  LongPressGesture.init(minimumDuration:maximumDistance:)();
  v98 = swift_allocObject();
  v99 = *(v2 + 48);
  *(v98 + 48) = *(v2 + 32);
  *(v98 + 64) = v99;
  *(v98 + 80) = *(v2 + 64);
  *(v98 + 96) = *(v2 + 80);
  v100 = *(v2 + 16);
  *(v98 + 16) = *v2;
  *(v98 + 32) = v100;
  sub_100027868(v2, &v147);
  sub_1000999E8(&qword_100157418, &type metadata accessor for LongPressGesture, &protocol conformance descriptor for LongPressGesture);
  v101 = v134;
  v102 = v135;
  Gesture.onEnded(_:)();

  (*(v133 + 8))(v97, v101);
  v103 = sub_100025D2C(v87 | v85);
  if (v103 == 53 || v103 == 2)
  {
    static GestureMask.all.getter();
  }

  else
  {
    static GestureMask.subviews.getter();
  }

  v104 = v137;
  v105 = v136;
  sub_10002693C();
  sub_100004880(&qword_1001573D8, &qword_100157390, &qword_1001115D8, &protocol conformance descriptor for _EndedGesture<A>);
  v106 = v145;
  View.simultaneousGesture<A>(_:including:)();
  (*(v105 + 8))(v102, v104);
  return sub_1000035CC(v106, &qword_100157388, &qword_1001115D0);
}

void sub_100098CB4(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v37 + 9) = *(a1 + 41);
  v37[0] = *(a1 + 32);
  v6 = *&v37[0];
  if (BYTE8(v37[1]) == 1)
  {
    v7 = *&v37[1];
    sub_100023D3C(*&v37[0], *(&v37[0] + 1), *&v37[1]);
    if (!v6)
    {
      goto LABEL_25;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(v37, &qword_100157420, &qword_1001116F8);
    (*(v3 + 8))(v5, v2);
    v6 = v36[0];
    v7 = v36[2];
    if (!v36[0])
    {
      goto LABEL_25;
    }
  }

  v9 = 0x1000000000000;
  if (!*(a1 + 63))
  {
    v9 = 0;
  }

  v10 = 0x10000000000;
  if (!*(a1 + 62))
  {
    v10 = 0;
  }

  v11 = &_mh_execute_header;
  if (!*(a1 + 61))
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if (!*(a1 + 60))
  {
    v12 = 0;
  }

  v13 = 0x10000;
  if (!*(a1 + 59))
  {
    v13 = 0;
  }

  v14 = 256;
  if (!*(a1 + 58))
  {
    v14 = 0;
  }

  v15 = sub_100025D2C(v14 | *(a1 + 57) | v13 | v12 | v11 | v10 | v9);
  v16 = v15;
  v6(v15, 0);
  if (v7)
  {
    v17 = 3;
    if (v16 != 53)
    {
      v17 = 1;
    }

    if (v16 == 11)
    {
      v18 = 6;
    }

    else
    {
      v18 = v17;
    }

    v19 = v7;
    [v19 actionOccurred:v18];
  }

LABEL_25:
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000048C8(v20, qword_100160D38);
  sub_100027868(a1, v36);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  sub_100099A30(a1);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36[0] = v24;
    *v23 = 136380675;
    v25 = 0x1000000000000;
    if (!*(a1 + 63))
    {
      v25 = 0;
    }

    v26 = 0x10000000000;
    if (!*(a1 + 62))
    {
      v26 = 0;
    }

    v27 = &_mh_execute_header;
    if (!*(a1 + 61))
    {
      v27 = 0;
    }

    v28 = 0x1000000;
    if (!*(a1 + 60))
    {
      v28 = 0;
    }

    v29 = 0x10000;
    if (!*(a1 + 59))
    {
      v29 = 0;
    }

    v30 = 256;
    if (!*(a1 + 58))
    {
      v30 = 0;
    }

    v31 = sub_100025D2C(v30 | *(a1 + 57) | v29 | v28 | v27 | v26 | v25);
    sub_10007D46C(0, v31);
    v34 = sub_100006E5C(v32, v33, v36);

    *(v23 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v21, v22, "%{private}s tapped", v23, 0xCu);
    sub_100003F80(v24);
  }
}

__n128 sub_1000990C0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_10003AE84(&qword_1001573F8, &qword_100111600);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - v3;
  sub_1000991E0(v9 - v3);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100027B5C(v4, a1);
  v5 = a1 + *(sub_10003AE84(&qword_1001573E0, &qword_1001115F8) + 36);
  v6 = v9[5];
  *(v5 + 64) = v9[4];
  *(v5 + 80) = v6;
  *(v5 + 96) = v9[6];
  v7 = v9[1];
  *v5 = v9[0];
  *(v5 + 16) = v7;
  result = v9[3];
  *(v5 + 32) = v9[2];
  *(v5 + 48) = result;
  return result;
}

double sub_1000991E0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003AE84(&qword_100155210, &qword_100111700);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v10 = qword_100160D68;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    v13 = type metadata accessor for Locale();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for Locale();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  sub_1000035CC(v9, &qword_100155210, &qword_100111700);
  v15 = 0x1000000000000;
  if (!*(v2 + 63))
  {
    v15 = 0;
  }

  v16 = 0x10000000000;
  if (!*(v2 + 62))
  {
    v16 = 0;
  }

  v17 = &_mh_execute_header;
  if (!*(v2 + 61))
  {
    v17 = 0;
  }

  v18 = 0x1000000;
  if (!*(v2 + 60))
  {
    v18 = 0;
  }

  v19 = 0x10000;
  if (!*(v2 + 59))
  {
    v19 = 0;
  }

  v20 = 256;
  if (!*(v2 + 58))
  {
    v20 = 0;
  }

  v21 = v20 | *(v2 + 57) | v19 | v18;
  v22 = v17 | v16 | v15;
  v23 = sub_100025D2C(v21 | v22);
  v31 = *v2;
  v24 = v31;
  v32 = *(v2 + 8);
  v25 = v32;

  if ((v25 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v31, &qword_100154810, &qword_10010DF90);
    (*(v4 + 8))(v6, v3);
    v24 = v30;
  }

  v27 = *(v24 + 16);
  swift_getKeyPath();
  v30 = v27;
  sub_1000999E8(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100025D2C(v21 | v22);
  sub_10007DDB0(v23, v29);

  return result;
}

double sub_1000996B8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v25 + 9) = *(a2 + 41);
  v25[0] = *(a2 + 32);
  v7 = *&v25[0];
  if (BYTE8(v25[1]) == 1)
  {
    v8 = *&v25[1];
    sub_100023D3C(*&v25[0], *(&v25[0] + 1), *&v25[1]);
    if (!v7)
    {
      return result;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(v25, &qword_100157420, &qword_1001116F8);
    (*(v4 + 8))(v6, v3);
    v7 = v23;
    v8 = v24;
    if (!v23)
    {
      return result;
    }
  }

  v11 = 0x1000000000000;
  if (!*(a2 + 63))
  {
    v11 = 0;
  }

  v12 = 0x10000000000;
  if (!*(a2 + 62))
  {
    v12 = 0;
  }

  v13 = &_mh_execute_header;
  if (!*(a2 + 61))
  {
    v13 = 0;
  }

  v14 = 0x1000000;
  if (!*(a2 + 60))
  {
    v14 = 0;
  }

  v15 = 0x10000;
  if (!*(a2 + 59))
  {
    v15 = 0;
  }

  v16 = 256;
  if (!*(a2 + 58))
  {
    v16 = 0;
  }

  v17 = sub_100025D2C(v16 | *(a2 + 57) | v15 | v14 | v13 | v12 | v11);
  v18 = v17;
  v7(v17, 1);
  if (v8)
  {
    v19 = 4;
    if (v18 != 53)
    {
      v19 = 1;
    }

    if (v18 == 11)
    {
      v20 = 6;
    }

    else
    {
      v20 = v19;
    }

    v21 = v8;
    [v21 actionOccurred:v20];
  }

  return result;
}

unint64_t sub_100099954()
{
  result = qword_1001573E8;
  if (!qword_1001573E8)
  {
    sub_10003AECC(&qword_1001573E0, &qword_1001115F8);
    sub_1000278A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001573E8);
  }

  return result;
}

uint64_t sub_1000999E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100099A60@<D0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for CalculatorKeypadView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  type metadata accessor for CalculatorViewModel(0);
  sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  *v6 = Environment.init<A>(_:)();
  v6[8] = v7 & 1;
  v8 = a2 + v4[7];
  type metadata accessor for CalculatorUnitConversionViewModelWrapper(0);
  sub_1000065C0(&qword_1001553F8, type metadata accessor for CalculatorUnitConversionViewModelWrapper, &unk_10010E2D4);
  *v8 = Environment.init<A>(_:)();
  v8[8] = v9 & 1;
  v10 = a2 + v4[8];
  type metadata accessor for CalculatorLayout(0);
  sub_1000065C0(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  *v10 = Environment.init<A>(_:)();
  v10[8] = v11 & 1;
  *(a2 + v4[9]) = 0;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  v12 = a2 + v4[13];
  sub_10003AE84(&qword_100157438, qword_100111838);
  State.init(wrappedValue:)();
  *v12 = v19;
  *(v12 + 1) = *(&v19 + 1);
  type metadata accessor for CalculatorKeypadViewModel(0);
  swift_allocObject();
  sub_100017834(a1);
  State.init(wrappedValue:)();
  *(a2 + v4[10]) = v19;
  if (qword_100154448 != -1)
  {
    swift_once();
  }

  v13 = qword_100160980 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache;
  swift_beginAccess();
  v14 = type metadata accessor for CalculatorButtonSizeCache(0);
  v15 = *(*(v14 - 8) + 48);
  v15(v13, 1, v14);
  v16 = a2 + v4[11];
  State.init(wrappedValue:)();

  *v16 = v19;
  *(v16 + 2) = v20;
  v15(v13, 1, v14);
  v17 = a2 + v4[12];
  State.init(wrappedValue:)();

  result = *&v19;
  *v17 = v19;
  *(v17 + 2) = v20;
  return result;
}

uint64_t sub_100099E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CalculatorKeypadView(0);
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  v7 = v5 - 8;
  v51 = v5 - 8;
  __chkstk_darwin(v5 - 8);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10003AE84(&qword_100157510, &qword_1001118D8);
  __chkstk_darwin(v49);
  v9 = (&v44 - v8);
  v57 = sub_10003AE84(&qword_100157518, &qword_1001118E0);
  __chkstk_darwin(v57);
  v58 = &v44 - v10;
  v54 = sub_10003AE84(&qword_100157520, &qword_1001118E8);
  __chkstk_darwin(v54);
  v53 = &v44 - v11;
  v56 = a1;
  sub_100019C94(v9);
  v48 = static Animation.easeInOut(duration:)();
  v12 = (a1 + *(v7 + 48));
  v14 = v12[1];
  v59 = *v12;
  v13 = v59;
  v60 = v14;
  sub_10003AE84(&qword_100157528, &qword_1001118F0);
  State.wrappedValue.getter();
  v15 = v61;
  swift_getKeyPath();
  v59 = v15;
  sub_1000065C0(&qword_100157410, type metadata accessor for CalculatorKeypadViewModel, &unk_1001124E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + 16);
  v17 = v50;

  v18 = v9 + *(v49 + 36);
  *v18 = v48;
  v18[8] = v16;
  v59 = v13;
  v60 = v14;
  State.wrappedValue.getter();
  type metadata accessor for CalculatorKeypadViewModel(0);
  sub_10009FE4C();
  v19 = v58;
  View.environment<A>(_:)();

  sub_1000035CC(v9, &qword_100157510, &qword_1001118D8);
  v20 = v56;
  sub_1000A0564(v56, v17, type metadata accessor for CalculatorKeypadView);
  v21 = *(v52 + 80);
  v22 = (v21 + 16) & ~v21;
  v52 = v6;
  v23 = v21;
  v24 = swift_allocObject();
  sub_10009FFE4(v17, v24 + v22);
  v25 = &v19[*(v57 + 36)];
  *v25 = sub_1000A0048;
  v25[1] = v24;
  v26 = v20;
  v27 = v20 + *(v51 + 32);
  v28 = *v27;
  v29 = *(v27 + 8);

  if ((v29 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v31 = v45;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v46 + 8))(v31, v47);
    v28 = v59;
  }

  swift_getKeyPath();
  v59 = v28;
  sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v28 + 48);

  LOBYTE(v59) = v32;
  sub_1000A0564(v26, v17, type metadata accessor for CalculatorKeypadView);
  v49 = v23;
  v33 = swift_allocObject();
  sub_10009FFE4(v17, v33 + v22);
  sub_1000A0138();
  sub_10000482C();
  v34 = v53;
  v35 = v58;
  View.onChange<A>(of:initial:_:)();

  sub_1000035CC(v35, &qword_100157518, &qword_1001118E0);
  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = 1;
  v38 = (v34 + *(sub_10003AE84(&qword_100157590, &qword_100111998) + 36));
  *v38 = KeyPath;
  v38[1] = sub_100023DFC;
  v38[2] = v37;
  sub_1000A0564(v26, v17, type metadata accessor for CalculatorKeypadView);
  v39 = swift_allocObject();
  sub_10009FFE4(v17, v39 + v22);
  v40 = swift_getKeyPath();
  v41 = (v34 + *(v54 + 36));
  *v41 = v40;
  v41[1] = sub_1000A027C;
  v41[2] = v39;
  v41[3] = 0;
  static EventModifiers.shift.getter();
  sub_1000A0564(v56, v17, type metadata accessor for CalculatorKeypadView);
  v42 = swift_allocObject();
  sub_10009FFE4(v17, v42 + v22);
  sub_1000A037C();
  View._onModifierKeysChanged(mask:initial:_:)();

  return sub_1000035CC(v34, &qword_100157520, &qword_1001118E8);
}

unsigned __int8 *sub_10009A5B4(unsigned __int8 *result, uint64_t a2)
{
  if (*result != 94)
  {
    type metadata accessor for CalculatorKeypadView(0);
    sub_10003AE84(&qword_1001575D0, &qword_100111A50);
    return State.wrappedValue.setter();
  }

  return result;
}

double sub_10009A630(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  type metadata accessor for CalculatorKeypadView(0);
  sub_10003AE84(&qword_100157528, &qword_1001118F0);
  State.wrappedValue.getter();
  sub_1000AE8F0(v3);

  return result;
}

double sub_10009A6B0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CalculatorKeypadView(0);
  v11 = *(v10 + 24);
  v26 = a3;
  v12 = (a3 + v11);
  v13 = *v12;
  LODWORD(a3) = *(v12 + 8);

  v25 = v7;
  if (a3 == 1)
  {
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    HIDWORD(v24) = a1;
    v15 = a2;
    v16 = v14;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v17 = *(v7 + 8);
    v17(v9, v6);

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    a2 = v15;
    a1 = HIDWORD(v24);
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v17(v9, v6);
    v13 = v27;
  }

  swift_getKeyPath();
  v27 = v13;
  sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v13 + 50);

  if (v19 == 1)
  {
    v20 = *(v26 + *(v10 + 28) + 8);

    if ((v20 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v25 + 8))(v9, v6);
    }

    v22 = sub_100074054();
  }

  else
  {
    v22 = 0;
  }

  sub_100058F8C(a1, a2 & 1, v22);

  return result;
}

double sub_10009AA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static EventModifiers.shift.getter();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v8)
  {
    goto LABEL_5;
  }

  v9 = (a3 + *(type metadata accessor for CalculatorKeypadView(0) + 24));
  v10 = *v9;
  v11 = *(v9 + 8);

  v12 = v10;
  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v12 = v33;
  }

  swift_getKeyPath();
  v33 = v12;
  sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v12 + 54);

  if (v14 != 4)
  {

    v22 = v10;
    if ((v11 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v22 = v33;
    }

    swift_getKeyPath();
    v33 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v24 = *(v22 + 72);

    v25 = *(v24 + 16);
    v26 = (v24 + 32);
    while (v25)
    {
      v27 = *v26++;
      --v25;
      if (v27 == 28)
      {

        return result;
      }
    }

    if (v11)
    {
      sub_10005FA64(28);
    }

    else
    {
      static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      sub_10005FA64(28);

      static os_log_type_t.fault.getter();
      v29 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v10 = v32;
    }

    v19 = *(v10 + 52);
    if (v19 == 1)
    {
      goto LABEL_9;
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v31 - 2) = v10;
    *(&v31 - 8) = 1;
    v32 = v10;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
LABEL_5:
    v15 = (a3 + *(type metadata accessor for CalculatorKeypadView(0) + 24));
    v10 = *v15;
    v16 = *(v15 + 8);

    if (v16)
    {
      sub_10005FC0C(0x1Cu);
    }

    else
    {
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      sub_10005FC0C(0x1Cu);

      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v10 = v33;
    }

    v19 = *(v10 + 52);
    if (v19 == 1)
    {
LABEL_9:
      *(v10 + 52) = v19;

      return result;
    }

    v21 = swift_getKeyPath();
    __chkstk_darwin(v21);
    *(&v31 - 2) = v10;
    *(&v31 - 8) = 1;
    v33 = v10;
    sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_10009B174(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v137 = a3;
  v122 = type metadata accessor for OpacityTransition();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v120 = v113 - v11;
  v130 = sub_10003AE84(&qword_1001575F0, &qword_100111AE8);
  __chkstk_darwin(v130);
  v123 = (v113 - v12);
  v128 = sub_10003AE84(&qword_100157710, &qword_100111BA0);
  __chkstk_darwin(v128);
  v129 = v113 - v13;
  v14 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v14 - 8);
  v136 = (v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v135 = (v113 - v17);
  v134 = type metadata accessor for CalculatorSizeClass(0);
  __chkstk_darwin(v134);
  v118 = v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v115 = v113 - v20;
  __chkstk_darwin(v21);
  v124 = v113 - v22;
  v23 = type metadata accessor for EnvironmentValues();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_10003AE84(&qword_100157718, &qword_100111BA8);
  __chkstk_darwin(v125);
  v117 = v113 - v27;
  v28 = type metadata accessor for CalculatorKeypadView(0);
  v29 = a2 + v28[8];
  v30 = *v29;
  LODWORD(v31) = *(v29 + 8);
  v131 = a5;
  v132 = v24;
  v133 = v31;
  v126 = a4;
  v127 = a2;
  v116 = v23;
  if ((a1 & 1) == 0)
  {

    v39 = v30;
    if ((v31 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v40 = static Log.runtimeIssuesLog.getter();
      LODWORD(v31) = v133;
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v24 + 8))(v26, v23);
      v39 = v138;
    }

    v115 = v39;
    v117 = *(v137 + 16);
    v41 = (a2 + v28[10]);
    v43 = *v41;
    v42 = v41[1];
    v138 = v43;
    v139 = v42;
    sub_10003AE84(&qword_100157528, &qword_1001118F0);
    State.wrappedValue.getter();

    if (v31)
    {
      v138 = v30;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v31 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      LOBYTE(v31) = v133;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v24 + 8))(v26, v23);
    }

    if (v117 >= 1)
    {
      v114 = *(*(v137 + 32) + 16);

      v81 = v30;
      if ((v31 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v31 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        LOBYTE(v31) = v133;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v24 + 8))(v26, v23);
        v81 = v138;
      }

      sub_10001B504(v81);
      v83 = v82;

      v84 = v30;
      if ((v31 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v85 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v24 + 8))(v26, v23);
        v84 = v138;
      }

      v86 = v135;
      sub_10000D594(v135);
      v113[1] = v28[5];
      v87 = v136;
      sub_10000D594(v136);
      v88 = type metadata accessor for UserInterfaceSizeClass();
      v89 = *(*(v88 - 8) + 56);
      v90 = v124;
      v89(v124, 1, 1, v88);
      v91 = *(v134 + 20);
      v89((v90 + v91), 1, 1, v88);
      sub_10006E758(v86, v90);
      sub_10006E758(v87, v90 + v91);
      sub_1000D399C(v84, 1, v90);
      v93 = v92;

      sub_1000A05CC(v90, type metadata accessor for CalculatorSizeClass);

      if ((v133 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v94 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v132 + 8))(v26, v116);
      }

      v95 = v135;
      v96 = v127;
      sub_10000D594(v135);
      v97 = v136;
      sub_10000D594(v136);
      v98 = v118;
      v89(v118, 1, 1, v88);
      v99 = *(v134 + 20);
      v89((v98 + v99), 1, 1, v88);
      sub_10006E758(v95, v98);
      sub_10006E758(v97, v98 + v99);
      v100 = sub_10003C9A0(v98);
      v101 = [objc_opt_self() currentDevice];
      v102 = [v101 userInterfaceIdiom];

      v103 = 61.0;
      if (v100)
      {
        v103 = 45.0;
      }

      if (v102)
      {
        v104 = v103;
      }

      else
      {
        v104 = 28.0;
      }

      sub_1000A05CC(v98, type metadata accessor for CalculatorSizeClass);
      v105 = v123;
      v106 = v117;
      *v123 = v115;
      *(v105 + 8) = v106;
      *(v105 + 16) = v114;
      *(v105 + 24) = v83;
      *(v105 + 32) = v93;
      *(v105 + 40) = v104;
      v107 = *(sub_10003AE84(&qword_100157608, &qword_100111B00) + 44);

      sub_10009E9B8(v137, v126, v96, 0, sub_1000A10AC, v105 + v107);

      v108 = v120;
      OpacityTransition.init()();
      v109 = v121;
      v110 = v122;
      (*(v121 + 16))(v119, v108, v122);
      sub_1000065C0(&qword_100157610, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
      v111 = AnyTransition.init<A>(_:)();
      (*(v109 + 8))(v108, v110);
      v112 = v129;
      *(v105 + *(v130 + 36)) = v111;
      v78 = &qword_1001575F0;
      v79 = &qword_100111AE8;
      sub_100008E68(v105, v112, &qword_1001575F0, &qword_100111AE8);
      swift_storeEnumTagMultiPayload();
      sub_1000A0780(&qword_100157720, &qword_100157718, &qword_100111BA8, sub_1000A0BB4);
      sub_1000A069C();
      _ConditionalContent<>.init(storage:)();
      v80 = v105;
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  v32 = v30;
  if ((v31 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v33 = a4;
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    a4 = v33;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v132 + 8))(v26, v23);
    v32 = v138;
  }

  v123 = v32;
  v35 = *(v137 + 16);
  v36 = (a2 + v28[10]);
  v38 = *v36;
  v37 = v36[1];
  v138 = v38;
  v139 = v37;
  sub_10003AE84(&qword_100157528, &qword_1001118F0);
  State.wrappedValue.getter();

  if (v31)
  {
    v138 = v30;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    v122 = v26;
    v45 = v35;
    v46 = v44;
    os_log(_:dso:log:_:_:)();

    v35 = v45;
    v26 = v122;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v132 + 8))(v26, v23);
  }

  if (!*(a4 + 16))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v35 < 1)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v47 = *(*(a4 + 32) + 16);
  v48 = *(*(v137 + 32) + 16);
  v49 = __OFADD__(v47, v48);
  v50 = v47 + v48;
  if (!v49)
  {
    v121 = v50;
    v122 = v35;

    v51 = v30;
    if ((v31 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v52 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v132 + 8))(v26, v23);
      v51 = v138;
    }

    sub_10001B504(v51);
    v54 = v53;

    v55 = v30;
    if ((v31 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v56 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v132 + 8))(v26, v23);
      v55 = v138;
    }

    v57 = v135;
    sub_10000D594(v135);
    v120 = v28[5];
    v58 = v136;
    sub_10000D594(v136);
    v59 = type metadata accessor for UserInterfaceSizeClass();
    v60 = *(*(v59 - 8) + 56);
    v61 = v124;
    v60(v124, 1, 1, v59);
    v62 = *(v134 + 20);
    v60((v61 + v62), 1, 1, v59);
    sub_10006E758(v57, v61);
    sub_10006E758(v58, v61 + v62);
    sub_1000D399C(v55, 0, v61);
    v64 = v63;

    sub_1000A05CC(v61, type metadata accessor for CalculatorSizeClass);

    if ((v133 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v65 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v132 + 8))(v26, v116);
    }

    v66 = v135;
    v67 = v127;
    sub_10000D594(v135);
    v68 = v136;
    sub_10000D594(v136);
    v69 = v115;
    v60(v115, 1, 1, v59);
    v70 = *(v134 + 20);
    v60((v69 + v70), 1, 1, v59);
    sub_10006E758(v66, v69);
    sub_10006E758(v68, v69 + v70);
    LOBYTE(v70) = sub_10003C9A0(v69);
    v71 = [objc_opt_self() currentDevice];
    v72 = [v71 userInterfaceIdiom];

    v73 = 45.0;
    if (v70)
    {
      v73 = 22.0;
    }

    if (v72)
    {
      v74 = v73;
    }

    else
    {
      v74 = 28.0;
    }

    sub_1000A05CC(v69, type metadata accessor for CalculatorSizeClass);
    v75 = v117;
    v76 = v122;
    *v117 = v123;
    *(v75 + 8) = v76;
    *(v75 + 16) = v121;
    *(v75 + 24) = v54;
    *(v75 + 32) = v64;
    *(v75 + 40) = v74;
    v77 = *(v125 + 44);

    sub_10009C370(v137, v126, v67, 1, v75 + v77);

    v78 = &qword_100157718;
    v79 = &qword_100111BA8;
    sub_100008E68(v75, v129, &qword_100157718, &qword_100111BA8);
    swift_storeEnumTagMultiPayload();
    sub_1000A0780(&qword_100157720, &qword_100157718, &qword_100111BA8, sub_1000A0BB4);
    sub_1000A069C();
    _ConditionalContent<>.init(storage:)();
    v80 = v75;
LABEL_40:
    sub_1000035CC(v80, v78, v79);
    return;
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_10009C370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v30 = a3;
  v36 = a5;
  v35 = type metadata accessor for OpacityTransition();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  v12 = type metadata accessor for CalculatorKeypadView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10003AE84(&qword_100157740, &qword_100111BB8);
  v32 = *(v16 - 8);
  v33 = v16;
  __chkstk_darwin(v16);
  v18 = v29 - v17;
  v19 = *(a1 + 16);
  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = sub_10001B698(*(a1 + 16), 0);
  if (sub_10001B71C(v37, (v20 + 4), v19, 0, v19) != v19)
  {
    __break(1u);
LABEL_4:
    v20 = _swiftEmptyArrayStorage;
  }

  v37[0] = v20;
  v29[1] = swift_getKeyPath();
  sub_1000A0564(v30, v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalculatorKeypadView);
  v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_10009FFE4(v15, v23 + v21);
  v24 = v23 + v22;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = v31 & 1;

  sub_10003AE84(&qword_1001576D8, &qword_100111B88);
  sub_10003AE84(&qword_100157750, &qword_100111BC0);
  sub_100004880(&qword_1001576E0, &qword_1001576D8, &qword_100111B88, &protocol conformance descriptor for [A]);
  sub_100004880(&qword_100157748, &qword_100157750, &qword_100111BC0, &protocol conformance descriptor for TupleView<A>);
  ForEach<>.init(_:id:content:)();
  OpacityTransition.init()();
  v25 = v35;
  (*(v7 + 16))(v34, v11, v35);
  sub_1000065C0(&qword_100157610, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v26 = AnyTransition.init<A>(_:)();
  (*(v7 + 8))(v11, v25);
  v27 = v36;
  (*(v32 + 32))(v36, v18, v33);
  result = sub_10003AE84(&qword_100157730, &qword_100111BB0);
  *(v27 + *(result + 36)) = v26;
  return result;
}

void sub_10009C7C8(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a3;
  v9 = type metadata accessor for CalculatorKeypadView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_10003AE84(&qword_100157658, &qword_100111B18);
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v21 = v38 - v20;
  v22 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v22 >= *(a4 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v42 = v19;
  v43 = v18;
  v44 = v17;
  v45 = a5;
  v48 = *(a4 + 8 * v22 + 32);
  v46 = v16;
  sub_1000A0564(a2, v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalculatorKeypadView);
  v23 = *(v10 + 80);
  v40 = a2;
  v24 = (v23 + 16) & ~v23;
  v25 = swift_allocObject();
  sub_10009FFE4(v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);

  sub_10003AE84(&qword_1001576E8, &qword_100111B90);
  v26 = sub_10003AE84(&qword_100157678, &qword_100111B28);
  v39 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v26;
  sub_100004880(&qword_1001576F0, &qword_1001576E8, &qword_100111B90, &protocol conformance descriptor for [A]);
  v38[1] = v11;
  sub_1000A09C0();
  sub_100023E08();
  v41 = v27;
  ForEach<>.init(_:content:)();
  v28 = v46;
  *&v21[*(v46 + 36)] = 0x4008000000000000;
  if (v22 < *(v47 + 16))
  {
    v48 = *(v47 + 8 * v22 + 32);
    v29 = v21;
    v30 = v28;
    v31 = v39;
    sub_1000A0564(v40, v39, type metadata accessor for CalculatorKeypadView);
    v32 = swift_allocObject();
    sub_10009FFE4(v31, v32 + v24);

    v33 = v42;
    ForEach<>.init(_:content:)();
    *(v33 + *(v30 + 36)) = 0x4000000000000000;
    v34 = v43;
    sub_100008E68(v29, v43, &qword_100157658, &qword_100111B18);
    v35 = v44;
    sub_100008E68(v33, v44, &qword_100157658, &qword_100111B18);
    v36 = v45;
    sub_100008E68(v34, v45, &qword_100157658, &qword_100111B18);
    v37 = sub_10003AE84(qword_100157758, &qword_100111BC8);
    sub_100008E68(v35, v36 + *(v37 + 48), &qword_100157658, &qword_100111B18);
    sub_1000035CC(v33, &qword_100157658, &qword_100111B18);
    sub_1000035CC(v29, &qword_100157658, &qword_100111B18);
    sub_1000035CC(v35, &qword_100157658, &qword_100111B18);
    sub_1000035CC(v34, &qword_100157658, &qword_100111B18);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10009CC34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>, double a6@<D0>)
{
  v91 = a4;
  v89 = a3;
  v92 = a2;
  v80 = type metadata accessor for OpacityTransition();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v78 = &v68 - v11;
  v12 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v12 - 8);
  v85 = (&v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v84 = (&v68 - v15);
  v16 = type metadata accessor for CalculatorSizeClass(0);
  __chkstk_darwin(v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for EnvironmentValues();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10003AE84(&qword_1001575F0, &qword_100111AE8);
  __chkstk_darwin(v90);
  v21 = &v68 - v20;
  v86 = sub_10003AE84(&qword_1001575F8, &qword_100111AF0);
  __chkstk_darwin(v86);
  v88 = &v68 - v22;
  v87 = sub_10003AE84(&qword_100157600, &qword_100111AF8);
  __chkstk_darwin(v87);
  v24 = (&v68 - v23);
  v25 = type metadata accessor for CalculatorKeypadView(0);
  v26 = v25[10];
  v93 = a1;
  v27 = (a1 + v26);
  v29 = *v27;
  v28 = v27[1];
  v95 = v29;
  v96 = v28;
  sub_10003AE84(&qword_100157528, &qword_1001118F0);
  State.wrappedValue.getter();
  v30 = v94;
  swift_getKeyPath();
  v95 = v30;
  sub_1000065C0(&qword_100157410, type metadata accessor for CalculatorKeypadViewModel, &unk_1001124E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = *(v30 + 16);

  if (v31 <= 1 && v31)
  {

LABEL_7:
    *v24 = static HorizontalAlignment.center.getter();
    v24[1] = a6;
    *(v24 + 16) = 0;
    v33 = sub_10003AE84(&qword_1001576C8, &qword_100111B58);
    sub_10009D7AC(v93, v92, v89, v91 & 1, v24 + *(v33 + 44), a6);
    v34 = &qword_100157600;
    v35 = &qword_100111AF8;
    sub_100008E68(v24, v88, &qword_100157600, &qword_100111AF8);
    swift_storeEnumTagMultiPayload();
    sub_100004880(&qword_100157618, &qword_100157600, &qword_100111AF8, &protocol conformance descriptor for VStack<A>);
    sub_1000A069C();
    _ConditionalContent<>.init(storage:)();
    v36 = v24;
LABEL_16:
    sub_1000035CC(v36, v34, v35);
    return;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_7;
  }

  v75 = a5;
  v37 = v93 + v25[8];
  v38 = *v37;
  v39 = *(v37 + 8);

  v76 = v16;
  v74 = v39;
  v73 = v21;
  if (v39 == 1)
  {
    if (*(v92 + 16))
    {
      v71 = *(v92 + 16);
      v70 = *(*(v92 + 32) + 16);

      v40 = v38;
      v72 = v38;
LABEL_13:
      v46 = v91 ^ 1;
      v47 = v84;
      sub_10000D594(v84);
      v68 = v25[5];
      v48 = v85;
      sub_10000D594(v85);
      v49 = type metadata accessor for UserInterfaceSizeClass();
      v50 = *(*(v49 - 8) + 56);
      v50(v18, 1, 1, v49);
      v51 = *(v76 + 20);
      v50(&v18[v51], 1, 1, v49);
      sub_10006E758(v47, v18);
      sub_10006E758(v48, &v18[v51]);
      v69 = v46;
      sub_1000D399C(v40, v46 & 1, v18);
      v53 = v52;

      sub_1000A05CC(v18, type metadata accessor for CalculatorSizeClass);

      if ((v74 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v54 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v55 = v82;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v81 + 8))(v55, v83);
        v38 = v95;
      }

      v56 = v84;
      v57 = v93;
      sub_10000D594(v84);
      v58 = v85;
      sub_10000D594(v85);
      v50(v18, 1, 1, v49);
      v59 = *(v76 + 20);
      v50(&v18[v59], 1, 1, v49);
      sub_10006E758(v56, v18);
      sub_10006E758(v58, &v18[v59]);
      v60 = sub_1000D3BAC(v38, v69 & 1, v18);

      sub_1000A05CC(v18, type metadata accessor for CalculatorSizeClass);
      v61 = v73;
      v62 = v71;
      *v73 = v72;
      *(v61 + 8) = v62;
      *(v61 + 16) = v70;
      *(v61 + 24) = a6;
      *(v61 + 32) = v53;
      *(v61 + 40) = v60;
      v63 = *(sub_10003AE84(&qword_100157608, &qword_100111B00) + 44);

      sub_10009E9B8(v92, v89, v57, v91 & 1, sub_1000A0B94, v61 + v63);

      v64 = v78;
      OpacityTransition.init()();
      v65 = v79;
      v66 = v80;
      (*(v79 + 16))(v77, v64, v80);
      sub_1000065C0(&qword_100157610, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
      v67 = AnyTransition.init<A>(_:)();
      (*(v65 + 8))(v64, v66);
      *(v61 + *(v90 + 36)) = v67;
      v34 = &qword_1001575F0;
      v35 = &qword_100111AE8;
      sub_100008E68(v61, v88, &qword_1001575F0, &qword_100111AE8);
      swift_storeEnumTagMultiPayload();
      sub_100004880(&qword_100157618, &qword_100157600, &qword_100111AF8, &protocol conformance descriptor for VStack<A>);
      sub_1000A069C();
      _ConditionalContent<>.init(storage:)();
      v36 = v61;
      goto LABEL_16;
    }
  }

  else
  {
    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v42 = v82;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v43 = *(v81 + 8);
    v43(v42, v83);
    if (*(v92 + 16))
    {
      v71 = *(v92 + 16);
      v72 = v95;
      v70 = *(*(v92 + 32) + 16);

      static os_log_type_t.fault.getter();
      v44 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v45 = v82;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      v43(v45, v83);
      v40 = v95;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_10009D7AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v119 = a2;
  v109 = a5;
  v116 = type metadata accessor for OpacityTransition();
  v125 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = &v96 - v12;
  v13 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v127 = (&v96 - v17);
  v126 = type metadata accessor for CalculatorSizeClass(0);
  __chkstk_darwin(v126);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EnvironmentValues();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10003AE84(&qword_1001575F0, &qword_100111AE8);
  __chkstk_darwin(v112);
  v108 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v107 = &v96 - v26;
  __chkstk_darwin(v27);
  v106 = (&v96 - v28);
  __chkstk_darwin(v29);
  v113 = (&v96 - v30);
  v31 = type metadata accessor for CalculatorKeypadView(0);
  v32 = *(v31 + 32);
  v128 = a1;
  v33 = a1 + v32;
  v34 = *v33;
  LODWORD(a1) = *(v33 + 8);

  v124 = a1;
  v120 = a3;
  v117 = v23;
  v118 = v20;
  v110 = v21;
  if (a1 == 1)
  {
    if (*(a3 + 16))
    {
      v104 = *(a3 + 16);
      v103 = *(*(a3 + 32) + 16);

      v35 = v34;
      v105 = v34;
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  static os_log_type_t.fault.getter();
  v36 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  v37 = v120;
  EnvironmentValues.init()();
  swift_getAtKeyPath();

  v38 = v23;
  v39 = *(v21 + 8);
  v39(v38, v20);
  if (!*(v37 + 16))
  {
    goto LABEL_16;
  }

  v104 = *(v37 + 16);
  v105 = v129;
  v103 = *(*(v37 + 32) + 16);

  static os_log_type_t.fault.getter();
  v40 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  v41 = v117;
  EnvironmentValues.init()();
  swift_getAtKeyPath();

  v39(v41, v118);
  v35 = v129;
LABEL_6:
  v111 = a4;
  v42 = a4 ^ 1;
  v43 = v127;
  sub_10000D594(v127);
  v121 = *(v31 + 20);
  sub_10000D594(v15);
  v44 = type metadata accessor for UserInterfaceSizeClass();
  v45 = *(*(v44 - 8) + 56);
  v45(v19, 1, 1, v44);
  v46 = *(v126 + 20);
  v122 = v45;
  v45(&v19[v46], 1, 1, v44);
  sub_10006E758(v43, v19);
  sub_10006E758(v15, &v19[v46]);
  v123 = v42;
  sub_1000D399C(v35, v42 & 1, v19);
  v48 = v47;

  sub_1000A05CC(v19, type metadata accessor for CalculatorSizeClass);

  v49 = v34;
  if ((v124 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v50 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v51 = v117;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v110 + 8))(v51, v118);
    v49 = v129;
  }

  v52 = v127;
  v53 = v128;
  sub_10000D594(v127);
  sub_10000D594(v15);
  v54 = v122;
  v122(v19, 1, 1, v44);
  v55 = *(v126 + 20);
  v54(&v19[v55], 1, 1, v44);
  sub_10006E758(v52, v19);
  v102 = v15;
  sub_10006E758(v15, &v19[v55]);
  v56 = sub_1000D3BAC(v49, v123 & 1, v19);

  sub_1000A05CC(v19, type metadata accessor for CalculatorSizeClass);
  v57 = v113;
  v58 = v104;
  *v113 = v105;
  *(v57 + 1) = v58;
  *(v57 + 2) = v103;
  v57[3] = a6;
  *(v57 + 4) = v48;
  v57[5] = v56;
  v103 = sub_10003AE84(&qword_100157608, &qword_100111B00);

  v59 = v119;
  sub_10009E560(v119, v120, v53, v111 & 1);

  v60 = v114;
  OpacityTransition.init()();
  v61 = v125;
  v62 = *(v125 + 16);
  v63 = v116;
  v105 = v125 + 16;
  v104 = v62;
  v62(v115, v60, v116);
  v101 = sub_1000065C0(&qword_100157610, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v64 = AnyTransition.init<A>(_:)();
  v100 = *(v61 + 8);
  v100(v60, v63);
  *(v57 + *(v112 + 36)) = v64;

  v125 = v61 + 8;
  if (!v124)
  {
    static os_log_type_t.fault.getter();
    v66 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v67 = v119;
    v68 = v117;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v69 = *(v110 + 8);
    v69(v68, v118);
    if (*(v67 + 16))
    {
      v98 = *(v67 + 16);
      v99 = v129;
      v97 = *(*(v67 + 32) + 16);

      static os_log_type_t.fault.getter();
      v70 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v71 = v117;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      v69(v71, v118);
      v65 = v129;
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
    return;
  }

  if (!*(v59 + 16))
  {
    goto LABEL_17;
  }

  v98 = *(v59 + 16);
  v97 = *(*(v59 + 32) + 16);

  v65 = v34;
  v99 = v34;
LABEL_13:
  v72 = v127;
  sub_10000D594(v127);
  v73 = v102;
  sub_10000D594(v102);
  v74 = v122;
  v122(v19, 1, 1, v44);
  v75 = *(v126 + 20);
  v74(&v19[v75], 1, 1, v44);
  sub_10006E758(v72, v19);
  sub_10006E758(v73, &v19[v75]);
  sub_1000D399C(v65, v123 & 1, v19);
  v77 = v76;

  sub_1000A05CC(v19, type metadata accessor for CalculatorSizeClass);

  v78 = v116;
  if ((v124 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v79 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v80 = v117;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v110 + 8))(v80, v118);
    v34 = v129;
  }

  v82 = v127;
  v81 = v128;
  sub_10000D594(v127);
  sub_10000D594(v73);
  v83 = v122;
  v122(v19, 1, 1, v44);
  v84 = *(v126 + 20);
  v83(&v19[v84], 1, 1, v44);
  sub_10006E758(v82, v19);
  sub_10006E758(v73, &v19[v84]);
  v85 = sub_1000D3BAC(v34, v123 & 1, v19);

  sub_1000A05CC(v19, type metadata accessor for CalculatorSizeClass);
  v86 = v106;
  v87 = v98;
  *v106 = v99;
  *(v86 + 8) = v87;
  *(v86 + 16) = v97;
  *(v86 + 24) = a6;
  *(v86 + 32) = v77;
  *(v86 + 40) = v85;
  v88 = *(v103 + 44);

  sub_10009E9B8(v119, v120, v81, v111 & 1, sub_1000A0A78, v86 + v88);

  v89 = v114;
  OpacityTransition.init()();
  v104(v115, v89, v78);
  v90 = AnyTransition.init<A>(_:)();
  v100(v89, v78);
  v91 = v113;
  *(v86 + *(v112 + 36)) = v90;
  v92 = v107;
  sub_100008E68(v91, v107, &qword_1001575F0, &qword_100111AE8);
  v93 = v108;
  sub_100008E68(v86, v108, &qword_1001575F0, &qword_100111AE8);
  v94 = v109;
  sub_100008E68(v92, v109, &qword_1001575F0, &qword_100111AE8);
  v95 = sub_10003AE84(&qword_1001576D0, &unk_100111B60);
  sub_100008E68(v93, v94 + *(v95 + 48), &qword_1001575F0, &qword_100111AE8);
  sub_1000035CC(v86, &qword_1001575F0, &qword_100111AE8);
  sub_1000035CC(v91, &qword_1001575F0, &qword_100111AE8);
  sub_1000035CC(v93, &qword_1001575F0, &qword_100111AE8);
  sub_1000035CC(v92, &qword_1001575F0, &qword_100111AE8);
}

double sub_10009E560(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for CalculatorKeypadView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = *(a2 + 16);
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = sub_10001B698(*(a2 + 16), 0);
  if (sub_10001B71C(v18, (v12 + 4), v11, 0, v11) != v11)
  {
    __break(1u);
LABEL_4:
    v12 = _swiftEmptyArrayStorage;
  }

  v18[0] = v12;
  swift_getKeyPath();
  sub_1000A0564(a3, &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalculatorKeypadView);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  sub_10009FFE4(&v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 16) = a4 & 1;

  sub_10003AE84(&qword_1001576D8, &qword_100111B88);
  sub_10003AE84(&qword_100157658, &qword_100111B18);
  sub_100004880(&qword_1001576E0, &qword_1001576D8, &qword_100111B88, &protocol conformance descriptor for [A]);
  sub_1000A0860();
  ForEach<>.init(_:id:content:)();
  return result;
}

void sub_10009E7A8(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CalculatorKeypadView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(a3 + 16))
  {
    v14[1] = *(a3 + 8 * v11 + 32);
    sub_1000A0564(a2, v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalculatorKeypadView);
    v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v13 = swift_allocObject();
    sub_10009FFE4(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);

    sub_10003AE84(&qword_1001576E8, &qword_100111B90);
    sub_10003AE84(&qword_100157678, &qword_100111B28);
    sub_100004880(&qword_1001576F0, &qword_1001576E8, &qword_100111B90, &protocol conformance descriptor for [A]);
    sub_1000A09C0();
    sub_100023E08();
    ForEach<>.init(_:content:)();
    *(a4 + *(sub_10003AE84(&qword_100157658, &qword_100111B18) + 36)) = 0x4008000000000000;
    return;
  }

  __break(1u);
}

double sub_10009E9B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[1] = a7;
  v20[2] = a6;
  v11 = type metadata accessor for CalculatorKeypadView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = *(a1 + 16);
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = sub_10001B698(*(a1 + 16), 0);
  if (sub_10001B71C(v21, (v15 + 4), v14, 0, v14) != v14)
  {
    __break(1u);
LABEL_4:
    v15 = _swiftEmptyArrayStorage;
  }

  v21[0] = v15;
  swift_getKeyPath();
  sub_1000A0564(a3, v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalculatorKeypadView);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  sub_10009FFE4(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = a1;
  *(v18 + 8) = a2;
  *(v18 + 16) = a4 & 1;

  sub_10003AE84(&qword_1001576D8, &qword_100111B88);
  sub_10003AE84(&qword_100157658, &qword_100111B18);
  sub_100004880(&qword_1001576E0, &qword_1001576D8, &qword_100111B88, &protocol conformance descriptor for [A]);
  sub_1000A0860();
  ForEach<>.init(_:id:content:)();
  return result;
}

void sub_10009EBEC(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for CalculatorKeypadView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(a3 + 16))
  {
    v16[1] = *(a3 + 8 * v13 + 32);
    sub_1000A0564(a2, v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CalculatorKeypadView);
    v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v15 = swift_allocObject();
    sub_10009FFE4(v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);

    sub_10003AE84(&qword_1001576E8, &qword_100111B90);
    sub_10003AE84(&qword_100157678, &qword_100111B28);
    sub_100004880(&qword_1001576F0, &qword_1001576E8, &qword_100111B90, &protocol conformance descriptor for [A]);
    sub_1000A09C0();
    sub_100023E08();
    ForEach<>.init(_:content:)();
    *(a6 + *(sub_10003AE84(&qword_100157658, &qword_100111B18) + 36)) = 0x4000000000000000;
    return;
  }

  __break(1u);
}

uint64_t sub_10009EDF8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CalculatorKeypadView(0);
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v6);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v67 = a1[2];
  v68 = v13;
  v14 = a1[3];
  v65 = a1[4];
  v66 = v14;
  v15 = a1[5];
  v63 = a1[6];
  v64 = v15;
  v16 = (a2 + *(v6 + 48));
  v17 = *(v16 + 2);
  v72 = *v16;
  v73 = v17;
  sub_10003AE84(&qword_100157700, &qword_100111B98);
  State.wrappedValue.getter();
  v18 = v70;
  v19 = v71;
  v60 = v6;
  v20 = *(v6 + 24);
  v62 = a2;
  LOBYTE(a1) = *(a2 + v20 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
  }

  v22 = 0x1000000000000;
  if (!v63)
  {
    v22 = 0;
  }

  v23 = 0x10000000000;
  if (!v64)
  {
    v23 = 0;
  }

  v24 = &_mh_execute_header;
  if (!v65)
  {
    v24 = 0;
  }

  v25 = 0x1000000;
  if (!v66)
  {
    v25 = 0;
  }

  v26 = 0x10000;
  if (!v67)
  {
    v26 = 0;
  }

  v27 = 256;
  if (!v68)
  {
    v27 = 0;
  }

  v56 = v24 | v23 | v22;
  v57 = v27 | v12 | v26 | v25;
  v28 = sub_100025D2C(v57 | v56);
  v29 = sub_100025E90(v28);
  v61 = v12;
  if (v29)
  {
    v30 = v29;
    sub_10001B0D8();

    v31 = CalculateExpression.allowedOperations.getter();

    v32 = sub_1000266E4(v30, v31);

    v33 = v32 ^ 1;
  }

  else
  {

    v33 = 0;
  }

  type metadata accessor for CalculatorViewModel(0);
  sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  v55 = Environment.init<A>(_:)();
  LOBYTE(v72) = v34 & 1;
  type metadata accessor for CalculatorKeypadViewModel(0);
  sub_1000065C0(&qword_100157410, type metadata accessor for CalculatorKeypadViewModel, &unk_1001124E8);
  v35 = Environment.init<A>(_:)();
  LOBYTE(v70) = v36 & 1;
  KeyPath = swift_getKeyPath();
  v69 = 0;
  v38 = v33 & 1;
  v39 = v72;
  v40 = v70;
  v41 = v62;
  v42 = v59;
  sub_1000A0564(v62, v59, type metadata accessor for CalculatorKeypadView);
  v43 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v44 = swift_allocObject();
  sub_10009FFE4(v42, v44 + v43);
  v45 = v41 + *(v60 + 52);
  v46 = *v45;
  v47 = *(v45 + 8);
  LOBYTE(v72) = v46;
  *(&v72 + 1) = v47;
  sub_10003AE84(&qword_1001575D0, &qword_100111A50);
  State.wrappedValue.getter();
  v48 = v70;
  result = sub_100025D2C(v57 | v56);
  *a3 = v55;
  *(a3 + 8) = v39;
  v50 = v48 != result || v48 == 94;
  v51 = 0.0;
  *(a3 + 16) = v35;
  if (!v50)
  {
    v51 = 1.0;
  }

  *(a3 + 24) = v40;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = KeyPath;
  *(a3 + 56) = 0;
  *(a3 + 57) = v61;
  v52 = v67;
  *(a3 + 58) = v68;
  *(a3 + 59) = v52;
  v53 = v65;
  *(a3 + 60) = v66;
  *(a3 + 61) = v53;
  v54 = v63;
  *(a3 + 62) = v64;
  *(a3 + 63) = v54;
  *(a3 + 64) = v18;
  *(a3 + 72) = v19;
  *(a3 + 80) = v38;
  *(a3 + 88) = sub_1000A1240;
  *(a3 + 96) = 0;
  *(a3 + 104) = sub_1000A0AF8;
  *(a3 + 112) = v44;
  *(a3 + 120) = v51;
  return result;
}

void *sub_10009F344(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for CalculatorKeypadView(0);
  sub_10003AE84(&qword_100157700, &qword_100111B98);
  result = State.wrappedValue.getter();
  if (v11 != v2 || v12 != v3)
  {
    State.wrappedValue.setter();
    if (qword_100154448 != -1)
    {
      swift_once();
    }

    v6 = (qword_100160980 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache);
    swift_beginAccess();
    v7 = type metadata accessor for CalculatorButtonSizeCache(0);
    v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
    v9 = 0.0;
    v10 = 0.0;
    if (!v8)
    {
      v9 = *v6;
      v10 = v6[1];
    }

    return sub_10002FE38(v9, v10, v2, v3);
  }

  return result;
}

uint64_t sub_10009F4A8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CalculatorKeypadView(0);
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v6);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v67 = a1[2];
  v68 = v13;
  v14 = a1[3];
  v65 = a1[4];
  v66 = v14;
  v15 = a1[5];
  v63 = a1[6];
  v64 = v15;
  v16 = (a2 + *(v6 + 44));
  v17 = *(v16 + 2);
  v72 = *v16;
  v73 = v17;
  sub_10003AE84(&qword_100157700, &qword_100111B98);
  State.wrappedValue.getter();
  v18 = v70;
  v19 = v71;
  v60 = v6;
  v20 = *(v6 + 24);
  v62 = a2;
  LOBYTE(a1) = *(a2 + v20 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
  }

  v22 = 0x1000000000000;
  if (!v63)
  {
    v22 = 0;
  }

  v23 = 0x10000000000;
  if (!v64)
  {
    v23 = 0;
  }

  v24 = &_mh_execute_header;
  if (!v65)
  {
    v24 = 0;
  }

  v25 = 0x1000000;
  if (!v66)
  {
    v25 = 0;
  }

  v26 = 0x10000;
  if (!v67)
  {
    v26 = 0;
  }

  v27 = 256;
  if (!v68)
  {
    v27 = 0;
  }

  v56 = v24 | v23 | v22;
  v57 = v27 | v12 | v26 | v25;
  v28 = sub_100025D2C(v57 | v56);
  v29 = sub_100025E90(v28);
  v61 = v12;
  if (v29)
  {
    v30 = v29;
    sub_10001B0D8();

    v31 = CalculateExpression.allowedOperations.getter();

    v32 = sub_1000266E4(v30, v31);

    v33 = v32 ^ 1;
  }

  else
  {

    v33 = 0;
  }

  type metadata accessor for CalculatorViewModel(0);
  sub_1000065C0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  v55 = Environment.init<A>(_:)();
  LOBYTE(v72) = v34 & 1;
  type metadata accessor for CalculatorKeypadViewModel(0);
  sub_1000065C0(&qword_100157410, type metadata accessor for CalculatorKeypadViewModel, &unk_1001124E8);
  v35 = Environment.init<A>(_:)();
  LOBYTE(v70) = v36 & 1;
  KeyPath = swift_getKeyPath();
  v69 = 0;
  v38 = v33 & 1;
  v39 = v72;
  v40 = v70;
  v41 = v62;
  v42 = v59;
  sub_1000A0564(v62, v59, type metadata accessor for CalculatorKeypadView);
  v43 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v44 = swift_allocObject();
  sub_10009FFE4(v42, v44 + v43);
  v45 = v41 + *(v60 + 52);
  v46 = *v45;
  v47 = *(v45 + 8);
  LOBYTE(v72) = v46;
  *(&v72 + 1) = v47;
  sub_10003AE84(&qword_1001575D0, &qword_100111A50);
  State.wrappedValue.getter();
  v48 = v70;
  result = sub_100025D2C(v57 | v56);
  *a3 = v55;
  *(a3 + 8) = v39;
  v50 = v48 != result || v48 == 94;
  v51 = 0.0;
  *(a3 + 16) = v35;
  if (!v50)
  {
    v51 = 1.0;
  }

  *(a3 + 24) = v40;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = KeyPath;
  *(a3 + 56) = 0;
  *(a3 + 57) = v61;
  v52 = v67;
  *(a3 + 58) = v68;
  *(a3 + 59) = v52;
  v53 = v65;
  *(a3 + 60) = v66;
  *(a3 + 61) = v53;
  v54 = v63;
  *(a3 + 62) = v64;
  *(a3 + 63) = v54;
  *(a3 + 64) = v18;
  *(a3 + 72) = v19;
  *(a3 + 80) = v38;
  *(a3 + 88) = sub_1000A1240;
  *(a3 + 96) = 0;
  *(a3 + 104) = sub_1000A0AB0;
  *(a3 + 112) = v44;
  *(a3 + 120) = v51;
  return result;
}

void *sub_10009F9F4(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for CalculatorKeypadView(0);
  sub_10003AE84(&qword_100157700, &qword_100111B98);
  result = State.wrappedValue.getter();
  if (v11 != v2 || v12 != v3)
  {
    State.wrappedValue.setter();
    if (qword_100154448 != -1)
    {
      swift_once();
    }

    v6 = qword_100160980 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache;
    swift_beginAccess();
    v7 = type metadata accessor for CalculatorButtonSizeCache(0);
    v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
    v9 = 0.0;
    v10 = 0.0;
    if (!v8)
    {
      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    return sub_10002FE38(v2, v3, v9, v10);
  }

  return result;
}

void sub_10009FB80(uint64_t a1)
{
  sub_10009FDCC(319, &qword_100155310, &qword_100154948, qword_1001130B0, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100013EC8(319, &qword_100156648, type metadata accessor for CalculatorViewModel, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100013EC8(319, &qword_100156650, type metadata accessor for CalculatorUnitConversionViewModelWrapper, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100013EC8(319, &qword_1001557F0, type metadata accessor for CalculatorLayout, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100013EC8(319, &qword_1001574A8, type metadata accessor for CalculatorKeypadViewModel, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_100013EC8(319, &qword_1001574B0, type metadata accessor for CGSize, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_10009FDCC(319, &unk_1001574B8, &qword_100157438, qword_100111838, &type metadata accessor for State);
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

void sub_10009FDCC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10003AECC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10009FE4C()
{
  result = qword_100157530;
  if (!qword_100157530)
  {
    sub_10003AECC(&qword_100157510, &qword_1001118D8);
    sub_10009FF04();
    sub_100004880(&qword_100157568, &qword_100157570, &qword_100111938, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157530);
  }

  return result;
}

unint64_t sub_10009FF04()
{
  result = qword_100157538;
  if (!qword_100157538)
  {
    sub_10003AECC(&qword_100157540, &qword_100111920);
    sub_100004880(&qword_100157548, &qword_100157550, &qword_100111928, &protocol conformance descriptor for VStack<A>);
    sub_100004880(&qword_100157558, &qword_100157560, &qword_100111930, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157538);
  }

  return result;
}

uint64_t sub_10009FFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorKeypadView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unsigned __int8 *sub_1000A0048(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for CalculatorKeypadView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10009A5B4(a1, v4);
}

double sub_1000A00B8(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for CalculatorKeypadView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10009A630(a1, a2, v6);
}

unint64_t sub_1000A0138()
{
  result = qword_100157578;
  if (!qword_100157578)
  {
    sub_10003AECC(&qword_100157518, &qword_1001118E0);
    sub_10003AECC(&qword_100157510, &qword_1001118D8);
    type metadata accessor for CalculatorKeypadViewModel(255);
    sub_10009FE4C();
    sub_1000065C0(&qword_100157410, type metadata accessor for CalculatorKeypadViewModel, &unk_1001124E8);
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100157580, &qword_100157588, &qword_100111968, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157578);
  }

  return result;
}

double sub_1000A027C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CalculatorKeypadView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10009A6B0(a1, a2, v6);
}

double sub_1000A02FC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CalculatorKeypadView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10009AA24(a1, a2, v6);
}

unint64_t sub_1000A037C()
{
  result = qword_100157598;
  if (!qword_100157598)
  {
    sub_10003AECC(&qword_100157520, &qword_1001118E8);
    sub_1000A0434();
    sub_100004880(&qword_1001575B8, &qword_1001575C0, &qword_1001119A8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157598);
  }

  return result;
}

unint64_t sub_1000A0434()
{
  result = qword_1001575A0;
  if (!qword_1001575A0)
  {
    sub_10003AECC(&qword_100157590, &qword_100111998);
    sub_10003AECC(&qword_100157518, &qword_1001118E0);
    sub_1000A0138();
    sub_10000482C();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_1001575A8, &qword_1001575B0, &qword_1001119A0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001575A0);
  }

  return result;
}

uint64_t sub_1000A0564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A05CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000A062C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100157560, &qword_100111930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A069C()
{
  result = qword_100157620;
  if (!qword_100157620)
  {
    sub_10003AECC(&qword_1001575F0, &qword_100111AE8);
    sub_1000A0780(&qword_100157628, &qword_100157608, &qword_100111B00, sub_1000A0830);
    sub_100004880(&qword_1001576B8, &qword_1001576C0, &qword_100111B50, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157620);
  }

  return result;
}

uint64_t sub_1000A0780(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    sub_100004880(&qword_100157630, &qword_100157638, &qword_100111B08, &protocol conformance descriptor for _LayoutRoot<A>);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A0860()
{
  result = qword_100157650;
  if (!qword_100157650)
  {
    sub_10003AECC(&qword_100157658, &qword_100111B18);
    sub_1000A0944(&qword_100157660, &qword_100157668, &qword_100111B20, sub_1000A09C0);
    sub_100004880(&qword_1001569A8, &qword_1001569B0, &qword_10010FC38, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157650);
  }

  return result;
}

uint64_t sub_1000A0944(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A09C0()
{
  result = qword_100157670;
  if (!qword_100157670)
  {
    sub_10003AECC(&qword_100157678, &qword_100111B28);
    sub_1000157B4();
    sub_100004880(&qword_1001576A8, &qword_1001576B0, &unk_100111B40, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157670);
  }

  return result;
}

uint64_t sub_1000A0B10(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CalculatorKeypadView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1000A0BB4()
{
  result = qword_100157728;
  if (!qword_100157728)
  {
    sub_10003AECC(&qword_100157730, &qword_100111BB0);
    sub_1000A0C6C();
    sub_100004880(&qword_1001576B8, &qword_1001576C0, &qword_100111B50, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157728);
  }

  return result;
}

unint64_t sub_1000A0C6C()
{
  result = qword_100157738;
  if (!qword_100157738)
  {
    sub_10003AECC(&qword_100157740, &qword_100111BB8);
    sub_100004880(&qword_100157748, &qword_100157750, &qword_100111BC0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157738);
  }

  return result;
}

uint64_t sub_1000A0D34(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CalculatorKeypadView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);

  return a2(a1, v2 + v5, v7, v8, v9);
}

uint64_t sub_1000A0DFC()
{
  v1 = type metadata accessor for CalculatorKeypadView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1000A10CC(unint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v7 = *(type metadata accessor for CalculatorKeypadView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  sub_10009EBEC(a1, v4 + v8, *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a4);
}

uint64_t sub_1000A118C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CalculatorKeypadView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1000A1244(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1000A128C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}