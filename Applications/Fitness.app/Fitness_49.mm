uint64_t sub_10057B5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v107 = sub_100140278(&qword_1008F35C0, &qword_1006FA820);
  __chkstk_darwin(v107);
  v108 = (v90 - v3);
  v104 = type metadata accessor for AccessibilityTraits();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for AccessibilityChildBehavior();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsView = type metadata accessor for LoadDetailsView(0);
  v90[0] = *(DetailsView - 8);
  __chkstk_darwin(DetailsView);
  v90[1] = v7;
  v91 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100140278(&qword_1008F35C8, &qword_1006FA828);
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = v90 - v8;
  v98 = sub_100140278(&qword_1008F35D0, &qword_1006FA830);
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = v90 - v9;
  v106 = sub_100140278(&qword_1008F35D8, &qword_1006FA838);
  __chkstk_darwin(v106);
  v97 = v90 - v10;
  v125 = sub_100140278(&qword_1008F35E0, &qword_1006FA840);
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v105 = v90 - v11;
  v12 = type metadata accessor for OvernightMetricsViewModel();
  v119 = *(v12 - 8);
  v120 = v12;
  __chkstk_darwin(v12);
  v118 = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&qword_1008F35E8, &qword_1006FA848);
  __chkstk_darwin(v14 - 8);
  v124 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v90 - v17;
  DataType = type metadata accessor for TrainingLoadDataType();
  v114 = *(DataType - 8);
  v115 = DataType;
  __chkstk_darwin(DataType);
  v21 = v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for EnvironmentValues();
  v116 = *(v22 - 8);
  v117 = v22;
  __chkstk_darwin(v22);
  v24 = v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v112 = *(ViewModel - 8);
  __chkstk_darwin(ViewModel);
  v26 = v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100140278(&qword_1008F35F0, &qword_1006FA850);
  __chkstk_darwin(v27);
  v121 = v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = v90 - v30;
  *v31 = static HorizontalAlignment.leading.getter();
  *(v31 + 1) = 0x4028000000000000;
  v31[16] = 0;
  v32 = sub_100140278(&qword_1008F35F8, &qword_1006FA858);
  sub_10057C490(a1, &v31[*(v32 + 44)]);
  v33 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v31;
  v43 = &v31[*(sub_100140278(&qword_1008F3600, &qword_1006FA860) + 36)];
  *v43 = v33;
  *(v43 + 1) = v35;
  *(v43 + 2) = v37;
  *(v43 + 3) = v39;
  *(v43 + 4) = v41;
  v43[40] = 0;
  v111 = static Alignment.center.getter();
  v110 = v44;
  v45 = *(DetailsView + 56);
  v127 = a1;
  v46 = a1 + v45;
  v47 = *v46;
  v48 = *(v46 + 8);
  v122 = v18;
  v109 = v24;
  if (v48 == 1)
  {
    v49 = v47;
  }

  else
  {

    v50 = static os_log_type_t.fault.getter();
    v51 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v51, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v52 = sub_1000A73A4(v47, 0);
    (*(v116 + 8))(v24, v117, v52);
    v49 = v128;
  }

  v53 = &v31[*(v27 + 36)];

  sub_100140278(&qword_1008F33F0, &unk_1006FA680);
  State.wrappedValue.getter();
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v114 + 8))(v21, v115);
  TrainingLoadViewModel.loadBandFlavoredGradientBackground(rotated:)();
  (*(v112 + 8))(v26, ViewModel);
  v54 = &v53[*(sub_100140278(&qword_1008F3608, &qword_1006FA868) + 36)];
  v55 = v110;
  *v54 = v111;
  v54[1] = v55;
  if (v48)
  {
    v56 = v47;
  }

  else
  {

    v57 = static os_log_type_t.fault.getter();
    v58 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v59 = v109;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v60 = sub_1000A73A4(v47, 0);
    (*(v116 + 8))(v59, v117, v60);
    v56 = v128;
  }

  v61 = v122;
  v62 = v118;
  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();
  v63 = OvernightMetricsViewModel.isWatchExperienceAvailable.getter();

  (*(v119 + 8))(v62, v120);
  if (v63 == 2 || (v63 & 1) == 0)
  {
    v83 = 1;
  }

  else
  {
    v64 = v127;
    v65 = sub_100579D58();
    type metadata accessor for BalanceDataProvider(0);
    sub_10057E500(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
    v66 = Environment.init<A>(_:)();
    if (v65)
    {
      v128 = v66;
      v68 = v67 & 1;
      LOBYTE(v129) = v67 & 1;
      v69 = v66;
      v70 = v91;
      sub_10057E5D4(v64, v91, type metadata accessor for LoadDetailsView);
      v71 = (*(v90[0] + 80) + 16) & ~*(v90[0] + 80);
      v72 = swift_allocObject();
      sub_10057DCB4(v70, v72 + v71);
      v73 = sub_10057E4AC();
      v74 = v92;
      View.onTapGesture(count:perform:)();

      sub_1000A73A4(v69, v68);
      v75 = v99;
      static AccessibilityChildBehavior.combine.getter();
      v128 = &type metadata for OvernightMetricsView;
      v129 = v73;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v77 = v94;
      v78 = v95;
      View.accessibilityElement(children:)();
      (*(v100 + 8))(v75, v101);
      (*(v93 + 8))(v74, v78);
      v79 = v102;
      static AccessibilityTraits.isLink.getter();
      v128 = v78;
      v129 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v80 = v97;
      v81 = v98;
      View.accessibilityAddTraits(_:)();
      (*(v103 + 8))(v79, v104);
      (*(v96 + 8))(v77, v81);
      sub_10001B104(v80, v108, &qword_1008F35D8, &qword_1006FA838);
      swift_storeEnumTagMultiPayload();
      sub_10057E388();
      v82 = v105;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v80, &qword_1008F35D8, &qword_1006FA838);
    }

    else
    {
      v84 = v108;
      *v108 = v66;
      *(v84 + 8) = v67 & 1;
      swift_storeEnumTagMultiPayload();
      sub_10057E388();
      sub_10057E4AC();
      v82 = v105;
      _ConditionalContent<>.init(storage:)();
    }

    sub_10009EAA0(v82, v61);
    v83 = 0;
  }

  (*(v123 + 56))(v61, v83, 1, v125);
  v85 = v121;
  sub_10001B104(v42, v121, &qword_1008F35F0, &qword_1006FA850);
  v86 = v124;
  sub_10001B104(v61, v124, &qword_1008F35E8, &qword_1006FA848);
  v87 = v126;
  sub_10001B104(v85, v126, &qword_1008F35F0, &qword_1006FA850);
  v88 = sub_100140278(&qword_1008F3610, &qword_1006FA870);
  sub_10001B104(v86, v87 + *(v88 + 48), &qword_1008F35E8, &qword_1006FA848);
  sub_10000EA04(v61, &qword_1008F35E8, &qword_1006FA848);
  sub_10000EA04(v42, &qword_1008F35F0, &qword_1006FA850);
  sub_10000EA04(v86, &qword_1008F35E8, &qword_1006FA848);
  return sub_10000EA04(v85, &qword_1008F35F0, &qword_1006FA850);
}

uint64_t sub_10057C490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for Calendar.Identifier();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin(v5);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Date();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsChartView = type metadata accessor for LoadDetailsChartView(0);
  __chkstk_darwin(DetailsChartView);
  v69 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v51 - v10;
  DataType = type metadata accessor for TrainingLoadDataType();
  v74 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TypeScrollView = type metadata accessor for LoadTypeScrollView(0);
  __chkstk_darwin(TypeScrollView);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v72 = &v51 - v20;
  v21 = *(type metadata accessor for LoadDetailsView(0) + 56);
  v73 = a1;
  v22 = a1 + v21;
  v23 = *v22;
  v55 = *(v22 + 8);
  v53 = v13;
  v52 = v14;
  if (v55 == 1)
  {
    v27 = v23;
  }

  else
  {

    v24 = static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v26 = sub_1000A73A4(v23, 0);
    (*(v14 + 8))(v16, v13, v26);
    v27 = v75;
  }

  sub_100140278(&qword_1008F33F0, &unk_1006FA680);
  State.wrappedValue.getter();
  v28 = v72;
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  v29 = *(v74 + 8);
  v74 += 8;
  v54 = v29;
  v29(v12, DataType);
  State.projectedValue.getter();
  v30 = v28 + *(TypeScrollView + 24);
  type metadata accessor for BalanceDataProvider(0);
  v56 = sub_10057E500(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
  *v30 = Environment.init<A>(_:)();
  *(v30 + 8) = v31 & 1;
  if (v55)
  {
    v32 = v23;
  }

  else
  {

    v33 = static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v34, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v35 = sub_1000A73A4(v23, 0);
    (*(v52 + 8))(v16, v53, v35);
    v32 = v75;
  }

  State.wrappedValue.getter();
  v36 = v68;
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  v54(v12, DataType);
  type metadata accessor for TrainingLoadViewModelProvider();
  v37 = v58;
  static Date.now.getter();
  v39 = v66;
  v38 = v67;
  v40 = v63;
  (*(v66 + 104))(v63, enum case for Calendar.Identifier.gregorian(_:), v67);
  v41 = v61;
  Calendar.init(identifier:)();
  (*(v39 + 8))(v40, v38);
  v42 = DetailsChartView;
  static TrainingLoadViewModelProvider.createDayRange(now:days:gregorianCalendar:)();
  (*(v64 + 8))(v41, v65);
  (*(v60 + 8))(v37, v62);
  *(v36 + *(v42 + 24)) = sub_100579628() & 1;
  v43 = v36 + *(v42 + 28);
  *v43 = Environment.init<A>(_:)();
  *(v43 + 8) = v44 & 1;
  v45 = v72;
  v46 = v57;
  sub_10057E5D4(v72, v57, type metadata accessor for LoadTypeScrollView);
  v47 = v69;
  sub_10057E5D4(v36, v69, type metadata accessor for LoadDetailsChartView);
  v48 = v70;
  sub_10057E5D4(v46, v70, type metadata accessor for LoadTypeScrollView);
  v49 = sub_100140278(&qword_1008F3628, &qword_1006FA878);
  sub_10057E5D4(v47, v48 + *(v49 + 48), type metadata accessor for LoadDetailsChartView);
  sub_10057E63C(v36, type metadata accessor for LoadDetailsChartView);
  sub_10057E63C(v45, type metadata accessor for LoadTypeScrollView);
  sub_10057E63C(v47, type metadata accessor for LoadDetailsChartView);
  return sub_10057E63C(v46, type metadata accessor for LoadTypeScrollView);
}

void sub_10057CCF0(uint64_t a1)
{
  v2 = type metadata accessor for OvernightMetricsViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EffortUtilities.OvernightVitalsState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 56))
  {
    v14 = a1 + *(type metadata accessor for LoadDetailsView(0) + 56);
    v15 = *v14;
    if (*(v14 + 8) == 1)
    {
      v16 = v15;
    }

    else
    {

      v17 = static os_log_type_t.fault.getter();
      v26 = v6;
      v18 = v10;
      v19 = v2;
      v20 = v17;
      v21 = static Log.runtimeIssuesLog.getter();
      v27 = v3;
      v22 = v21;
      v23 = v20;
      v2 = v19;
      v10 = v18;
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v3 = v27;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v24 = sub_1000A73A4(v15, 0);
      (*(v7 + 8))(v9, v26, v24);
      v16 = v28;
    }

    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.overnightVitalsState.getter();
    (*(v3 + 8))(v5, v2);
    sub_10043DBA4(v13);
    (*(v11 + 8))(v13, v10);
  }
}

double sub_10057CFEC(uint64_t a1)
{
  if (sub_100579628())
  {
    type metadata accessor for LoadDetailsView(0);

    sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
    State.wrappedValue.getter();
    State.wrappedValue.setter();
  }

  return result;
}

double sub_10057D0A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = sub_100140278(&qword_1008E04A8, &unk_1006EA860) - 8;
  __chkstk_darwin(v59);
  v58 = &v52 - v4;
  v55 = type metadata accessor for Calendar.Identifier();
  v5 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Calendar();
  v54 = *(v56 - 1);
  __chkstk_darwin(v56);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Date();
  v10 = *(v53 - 8);
  __chkstk_darwin(v53);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GregorianDayRange();
  v60 = *(v13 - 8);
  v61 = v13;
  __chkstk_darwin(v13);
  v57 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008F0320, &qword_1006F5540);
  __chkstk_darwin(v15 - 8);
  v62 = &v52 - v16;
  type metadata accessor for LoadDetailsView(0);
  sub_100140278(&qword_1008F33F0, &unk_1006FA680);
  State.projectedValue.getter();
  type metadata accessor for TrainingLoadViewModelProvider();
  static Date.now.getter();
  v17 = v55;
  (*(v5 + 104))(v7, enum case for Calendar.Identifier.gregorian(_:), v55);
  Calendar.init(identifier:)();
  (*(v5 + 8))(v7, v17);
  static TrainingLoadViewModelProvider.createDayRange(now:days:gregorianCalendar:)();
  (*(v54 + 8))(v9, v56);
  (*(v10 + 8))(v12, v53);
  v18 = *(a1 + 56);
  v19 = *(a1 + 32);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v21 = (a2 + DetailsStackedChartView[7]);
  v63 = _swiftEmptyArrayStorage;
  v22 = v19;
  sub_100140278(&unk_1008E4010, &unk_1006DCBA0);
  State.init(wrappedValue:)();
  v23 = *(&v64 + 1);
  *v21 = v64;
  v21[1] = v23;
  v24 = DetailsStackedChartView[8];
  v63 = 0;
  sub_100140278(&qword_1008F03C0, &qword_1006F5588);
  State.init(wrappedValue:)();
  *(a2 + v24) = v64;
  v25 = a2 + DetailsStackedChartView[10];
  LOBYTE(v63) = 0;
  State.init(wrappedValue:)();
  v26 = *(&v64 + 1);
  *v25 = v64;
  *(v25 + 8) = v26;
  v27 = a2 + DetailsStackedChartView[12];
  LOBYTE(v63) = 0;
  State.init(wrappedValue:)();
  v28 = *(&v64 + 1);
  *v27 = v64;
  *(v27 + 8) = v28;
  v29 = (a2 + DetailsStackedChartView[13]);
  v63 = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008F03D8, &qword_1006F5590);
  State.init(wrappedValue:)();
  v30 = *(&v64 + 1);
  *v29 = v64;
  v29[1] = v30;
  v31 = a2 + DetailsStackedChartView[14];
  LOBYTE(v63) = 0;
  State.init(wrappedValue:)();
  v32 = *(&v64 + 1);
  *v31 = v64;
  *(v31 + 8) = v32;
  v33 = DetailsStackedChartView[15];
  *(a2 + v33) = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
  v34 = a2 + DetailsStackedChartView[17];
  type metadata accessor for BalanceDataProvider(0);
  sub_10057E500(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
  *v34 = Environment.init<A>(_:)();
  *(v34 + 8) = v35 & 1;
  v36 = DetailsStackedChartView[18];
  *(a2 + v36) = swift_getKeyPath();
  sub_100140278(&qword_1008EE800, &qword_1006D7580);
  swift_storeEnumTagMultiPayload();
  v37 = DetailsStackedChartView[19];
  *(a2 + v37) = swift_getKeyPath();
  sub_100140278(&qword_1008E66B8, &qword_1006F5670);
  swift_storeEnumTagMultiPayload();
  sub_10057E20C(v62, a2);
  *(a2 + DetailsStackedChartView[5]) = v18;
  *(a2 + DetailsStackedChartView[6]) = v19;
  v52 = a2;

  v56 = v22;
  v38 = v57;
  v39 = v58;
  GregorianDayRange.dayIndexRange.getter();
  v40 = v59;
  v41 = *(v59 + 44);
  v42 = a2 + DetailsStackedChartView[11];
  v43 = type metadata accessor for DayIndex();
  v44 = *(*(v43 - 8) + 16);
  v44(v42, v39 + v41, v43);
  sub_10000EA04(v39, &qword_1008E04A8, &unk_1006EA860);
  *(v42 + *(sub_100140278(&qword_1008F0328, qword_1006F5548) + 28)) = 0;
  v45 = v38;
  GregorianDayRange.dayIndexRange.getter();
  v46 = *(v40 + 44);
  v47 = v52;
  v44(v52 + DetailsStackedChartView[16], v39 + v46, v43);
  sub_10000EA04(v39, &qword_1008E04A8, &unk_1006EA860);
  v48 = [objc_opt_self() mainScreen];
  [v48 bounds];
  v50 = v49;

  (*(v60 + 8))(v45, v61);
  sub_10000EA04(v62, &qword_1008F0320, &qword_1006F5540);
  result = v50 + -20.0;
  *(v47 + DetailsStackedChartView[9]) = v50 + -20.0;
  return result;
}

void sub_10057D824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v10 = *(DataType - 8);
  v11 = __chkstk_darwin(DataType);
  v13 = (v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, a2, DataType, v11);
  v14 = (*(v10 + 88))(v13, DataType);
  if (v14 == enum case for TrainingLoadDataType.workoutType(_:))
  {
    (*(v10 + 96))(v13, DataType);
    v15 = *v13;
    v16 = a3 + *(type metadata accessor for LoadDetailsView(0) + 56);
    v17 = *v16;
    if (*(v16 + 8) == 1)
    {
      v18 = v17;
    }

    else
    {

      v21 = static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v23 = sub_1000A73A4(v17, 0);
      (*(v6 + 8))(v8, v5, v23);
      v18 = v30[0];
    }

    v24 = v15;
    v25 = 258;
  }

  else
  {
    if (v14 == enum case for TrainingLoadDataType.allDay(_:))
    {
      return;
    }

    if (v14 != enum case for TrainingLoadDataType.workout(_:))
    {
      v30[0] = 0;
      v30[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v29._object = 0x8000000100763220;
      v29._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v29);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v19 = a3 + *(type metadata accessor for LoadDetailsView(0) + 56);
    v20 = *v19;
    if (*(v19 + 8) == 1)
    {
      v18 = v20;
    }

    else
    {

      v26 = static os_log_type_t.fault.getter();
      v27 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v28 = sub_1000A73A4(v20, 0);
      (*(v6 + 8))(v8, v5, v28);
      v18 = v30[0];
    }

    v24 = 0;
    v25 = 768;
  }

  sub_1001D5568(v24, v25);
}

void sub_10057DC08(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      v3 = [v2 navigationController];
      if (v3)
      {
        v4 = v3;
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        v6 = v5;
        if (!v5)
        {

          v5 = 0;
        }

        [v5 detachPalette];
      }
    }
  }
}

uint64_t sub_10057DCB4(uint64_t a1, uint64_t a2)
{
  DetailsView = type metadata accessor for LoadDetailsView(0);
  (*(*(DetailsView - 8) + 32))(a2, a1, DetailsView);
  return a2;
}

double sub_10057DD18@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoadDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10057D0A0(v4, a1);
}

unint64_t sub_10057DD88()
{
  result = qword_1008F34C8;
  if (!qword_1008F34C8)
  {
    sub_100141EEC(&qword_1008F34B8, &qword_1006FA6F8);
    sub_10057DE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F34C8);
  }

  return result;
}

unint64_t sub_10057DE0C()
{
  result = qword_1008F34D0;
  if (!qword_1008F34D0)
  {
    sub_100141EEC(&qword_1008F34D8, &qword_1006FA708);
    sub_10014A6B0(&qword_1008DC0D8, &qword_1008DC0E0, &qword_1006E0810, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100141EEC(&qword_1008F34E0, &qword_1006FA710);
    type metadata accessor for PlainListStyle();
    sub_10057DF20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F34D0);
  }

  return result;
}

unint64_t sub_10057DF20()
{
  result = qword_1008F34E8;
  if (!qword_1008F34E8)
  {
    sub_100141EEC(&qword_1008F34E0, &qword_1006FA710);
    sub_10057DFD8();
    sub_10014A6B0(&qword_1008F3530, &qword_1008F3538, &qword_100703810, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F34E8);
  }

  return result;
}

unint64_t sub_10057DFD8()
{
  result = qword_1008F34F0;
  if (!qword_1008F34F0)
  {
    sub_100141EEC(&qword_1008F34F8, &qword_1006FA718);
    sub_10057E090();
    sub_10014A6B0(&qword_1008F3520, &qword_1008F3528, &qword_1006FA730, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F34F0);
  }

  return result;
}

unint64_t sub_10057E090()
{
  result = qword_1008F3500;
  if (!qword_1008F3500)
  {
    sub_100141EEC(&qword_1008F3508, &qword_1006FA720);
    sub_10014A6B0(&qword_1008F3510, &qword_1008F3518, &qword_1006FA728, &protocol conformance descriptor for List<A, B>);
    sub_10014A6B0(&qword_1008E3198, &qword_1008E3180, &unk_1006E02C0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3500);
  }

  return result;
}

void sub_10057E174(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for LoadDetailsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10057D824(a1, a2, v6);
}

uint64_t sub_10057E20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F0320, &qword_1006F5540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10057E28C()
{
  result = qword_1008F3598;
  if (!qword_1008F3598)
  {
    sub_100141EEC(&qword_1008F3590, &qword_1006FA800);
    sub_10014A6B0(&qword_1008F35A0, &qword_1008F35A8, &qword_1006FA808, &protocol conformance descriptor for VStack<A>);
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0, &unk_1006DC6E0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3598);
  }

  return result;
}

unint64_t sub_10057E388()
{
  result = qword_1008F3618;
  if (!qword_1008F3618)
  {
    sub_100141EEC(&qword_1008F35D8, &qword_1006FA838);
    sub_100141EEC(&qword_1008F35C8, &qword_1006FA828);
    sub_10057E4AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10057E500(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3618);
  }

  return result;
}

unint64_t sub_10057E4AC()
{
  result = qword_1008F3620;
  if (!qword_1008F3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3620);
  }

  return result;
}

uint64_t sub_10057E500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10057E560(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LoadDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10057E5D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10057E63C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10057E69C()
{
  result = qword_1008F3630;
  if (!qword_1008F3630)
  {
    sub_100141EEC(&qword_1008F3550, &qword_1006FA738);
    sub_100141EEC(&qword_1008F34C0, &qword_1006FA700);
    type metadata accessor for TrainingLoadDataType();
    sub_100141EEC(&qword_1008F34B8, &qword_1006FA6F8);
    type metadata accessor for LoadDetailsStackedChartView(255);
    sub_10057DD88();
    sub_10057E500(&qword_1008F3540, type metadata accessor for LoadDetailsStackedChartView, &unk_1006F5598);
    swift_getOpaqueTypeConformance2();
    sub_10057E500(&qword_1008F3548, &type metadata accessor for TrainingLoadDataType, &protocol conformance descriptor for TrainingLoadDataType);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3630);
  }

  return result;
}

double sub_10057E840(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = *(v2 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_10057EB50;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100860B00;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16[1] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);

  return result;
}

void sub_10057EAF4(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1003DE8EC(a2);
  }
}

void sub_10057EB58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for Date();
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  __chkstk_darwin(v16);
  v23 = &v68 - v22;
  v24 = a1 & ~(a1 >> 63);
  v25 = *v3;
  v26 = *(*v3 + 16);
  if (v26 <= a2)
  {
    a2 = v26 - 1;
  }

  if (a2 < v24)
  {
    goto LABEL_31;
  }

  if (!__OFSUB__(a2 + 1, v24))
  {
    v79 = v20;
    v27 = v3[1];
    v28 = *(v27 + 16);
    if (v24 < v28)
    {
      v72 = v25;
      v73 = v18;
      v76 = v21;
      v80 = v27 + 32;
      v81 = a2 + 1 - v24;
      v29 = v17;
      v30 = v19;
      Date.init(timeIntervalSinceReferenceDate:)();
      v77 = v23;
      v78 = v30;
      v31 = v23;
      v32 = *(v30 + 32);
      v32(v31, v15, v29);
      if (a2 < v28)
      {
        Date.init(timeIntervalSinceReferenceDate:)();
        v32(v79, v11, v29);
        v33 = v78;
        v34 = v29;
        v35 = *(v78 + 16);
        v36 = v73;
        v35(v73, v77, v34);
        v37 = v76;
        v35(v76, v79, v34);
        Date.timeIntervalSinceReferenceDate.getter();
        v39 = v38;
        Date.timeIntervalSinceReferenceDate.getter();
        sub_10001C204(v81, v82, v39, v40);
        v41 = v82[0];
        v70 = v82[2];
        v71 = v82[1];
        v80 = v84;
        v81 = v83;
        v74 = v86;
        v75 = *&v85;
        v42 = *(v33 + 8);
        v42(v37, v34);
        v73 = v34;
        v78 = v33 + 8;
        v69 = v42;
        v42(v36, v34);
        v43 = v41;
        v44 = 0;
        v45 = v85;
        v46 = *&v83;
        v47 = v82[0];
        v48 = v72 + 24 * v24;
        v49 = v24 - a2;
        v50 = 48;
        v76 = v48;
        while (1)
        {
          v51 = v24 + v44;
          if (v24 + v44 < v26)
          {
            v52 = v48 + v50;
            if ((*(v48 + v50) & 1) == 0 && v44 < *(v47 + 16))
            {
              v53 = *(v52 - 16);
              v54 = *(v52 - 8);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v43 = v47;
              }

              else
              {
                v43 = sub_10057F5E0(v47);
              }

              if (v44 >= *(v43 + 2))
              {
                goto LABEL_35;
              }

              v55 = &v43[v50];
              *(v55 - 2) = v53;
              *(v55 - 1) = v54;
              *v55 = 0;
              if (v46 >= v53)
              {
                v56 = v80;
              }

              else
              {
                v56 = v54;
              }

              v57 = v81;
              if (v46 < v53)
              {
                v57 = *&v53;
              }

              v80 = v56;
              v81 = v57;
              if (v46 < v53)
              {
                v46 = v53;
              }

              if (v45 < 0.0 || v45 > v53)
              {
                v74 = v54;
                v75 = *&v53;
                v45 = v53;
              }

              v47 = v43;
              v48 = v76;
            }
          }

          if (!(v49 + v44))
          {
            break;
          }

          ++v44;
          v50 += 24;
          if (__OFADD__(v51, 1))
          {
            __break(1u);
            goto LABEL_34;
          }
        }

        v65 = v43;
        v66 = v73;
        v67 = v69;
        v69(v79, v73);
        v67(v77, v66);
        v58 = v65;
        v60 = v70;
        v59 = v71;
        v62 = v80;
        v61 = v81;
        v64 = v74;
        v63 = v75;
        goto LABEL_32;
      }

      (*(v78 + 8))(v77, v29);
    }

LABEL_31:
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
LABEL_32:
    *a3 = v58;
    a3[1] = v59;
    a3[2] = v60;
    a3[3] = v61;
    a3[4] = v62;
    a3[5] = v63;
    a3[6] = v64;
    return;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_10057EFC0(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v69 - v11;
  if (!a1)
  {
    goto LABEL_55;
  }

  v70 = a3;
  v13 = *v3;
  v14 = *(*v3 + 16);
  if (v14 % a1)
  {
    v15 = v14 / a1 + 1;
  }

  else
  {
    v15 = v14 / a1;
  }

  Date.init(timeIntervalSinceReferenceDate:)();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSinceReferenceDate.getter();
  v17 = v16;
  Date.timeIntervalSinceReferenceDate.getter();
  sub_10001C204(v15, v75, v17, v18);
  v19 = v75[1];
  v71 = v75[0];
  v21 = *&v75[2];
  v20 = v76;
  v22 = v77;
  v23 = v78;
  v24 = v79;
  v25 = *(v7 + 8);
  v25(v9, v6);
  v25(v12, v6);

  sub_10057F6F8(0, v14, a1, v13, a1);
  v27 = v26;

  v28 = *(v27 + 16);
  if (!v28)
  {

    v30 = _swiftEmptyArrayStorage;
LABEL_35:
    v73.f64[0] = v21;
    v54 = v30[2];
    v55 = v71;
    if (v54)
    {
      v56 = 0;
      v57 = 0;
      v58 = v75[0];
      v59 = v76;
      v60 = v78;
      while (1)
      {
        v63 = &v30[v56];
        if ((v30[v56 + 6] & 1) != 0 || v57 >= *(v58 + 16))
        {
          v61 = v23;
          v62 = v24;
        }

        else
        {
          v64 = v63[4];
          v65 = v63[5];
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v55 = v58;
          }

          else
          {
            v55 = sub_10057F5E0(v58);
          }

          if (v57 >= *(v55 + 2))
          {
            goto LABEL_54;
          }

          v61 = v64;
          v62 = v65;
          v66 = &v55[v56 * 8];
          *(v66 + 4) = v64;
          *(v66 + 5) = v65;
          v66[48] = 0;
          if (v59 < v64)
          {
            v22 = v65;
            v20 = v64;
            v59 = v64;
          }

          if (v60 < 0.0 || v60 > v64)
          {
            v60 = v64;
            v58 = v55;
          }

          else
          {
            v61 = v23;
            v62 = v24;
            v58 = v55;
          }
        }

        ++v57;
        v56 += 3;
        v23 = v61;
        v24 = v62;
        if (v54 == v57)
        {
          goto LABEL_52;
        }
      }
    }

    v61 = v23;
    v62 = v24;
LABEL_52:
    v67 = v55;

    v68 = v70;
    *v70 = v67;
    v68[1] = v19;
    v68[2] = *&v73.f64[0];
    *(v68 + 3) = v20;
    *(v68 + 4) = v22;
    *(v68 + 5) = v61;
    *(v68 + 6) = v62;
    return;
  }

  v69 = v19;
  v74 = _swiftEmptyArrayStorage;
  sub_10003E4D0(0, v28, 0);
  v29 = 0;
  v30 = v74;
  v72 = v27 + 32;
  while (v29 < *(v27 + 16))
  {
    v31 = *(v72 + 8 * v29);
    v32 = *(v31 + 16);
    if (v32)
    {

      v34 = (v31 + 48);
      v35 = _swiftEmptyArrayStorage;
      do
      {
        if ((LOBYTE(v34->f64[0]) & 1) == 0)
        {
          v73 = v34[-1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_1001A1EA0(0, *(v35 + 2) + 1, 1, v35);
          }

          v37 = *(v35 + 2);
          v36 = *(v35 + 3);
          if (v37 >= v36 >> 1)
          {
            v35 = sub_1001A1EA0((v36 > 1), v37 + 1, 1, v35);
          }

          *(v35 + 2) = v37 + 1;
          *&v35[16 * v37 + 32] = v73;
        }

        v34 = (v34 + 24);
        --v32;
      }

      while (v32);
    }

    else
    {

      v35 = _swiftEmptyArrayStorage;
    }

    v38 = *(v35 + 2);
    if (v38)
    {
      if (v38 <= 3)
      {
        v39 = 0;
        v40 = 0.0;
        goto LABEL_25;
      }

      v39 = v38 & 0x7FFFFFFFFFFFFFFCLL;
      v42 = (v35 + 64);
      v40 = 0.0;
      v43 = v38 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v44 = v42 - 4;
        *(&v33 - 1) = vld2q_f64(v44);
        v80 = vld2q_f64(v42);
        v46 = vmulq_f64(v45, v33);
        v80.val[0] = vmulq_f64(v80.val[0], v80.val[1]);
        v40 = v40 + v46.f64[0] + v46.f64[1] + v80.val[0].f64[0] + v80.val[0].f64[1];
        v42 += 8;
        v43 -= 4;
      }

      while (v43);
      if (v38 != v39)
      {
LABEL_25:
        v47 = v38 - v39;
        v48 = &v35[16 * v39 + 40];
        do
        {
          v40 = v40 + *(v48 - 1) * *v48;
          v48 += 2;
          --v47;
        }

        while (v47);
      }

      v33.f64[0] = 0.0;
      v49 = 40;
      v50 = *(v35 + 2);
      do
      {
        v33.f64[0] = v33.f64[0] + *&v35[v49];
        v49 += 16;
        --v50;
      }

      while (v50);
      v73 = v33;

      v41.f64[0] = v40 / v73.f64[0];
      v41.f64[1] = v73.f64[0];
      goto LABEL_30;
    }

    v41 = 0uLL;
LABEL_30:
    v74 = v30;
    v52 = v30[2];
    v51 = v30[3];
    if (v52 >= v51 >> 1)
    {
      v73 = v41;
      sub_10003E4D0((v51 > 1), v52 + 1, 1);
      v41 = v73;
      v30 = v74;
    }

    ++v29;
    v30[2] = v52 + 1;
    v53 = &v30[3 * v52];
    v53[2] = v41;
    LOBYTE(v53[3].f64[0]) = v38 == 0;
    if (v29 == v28)
    {

      v19 = v69;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_10057F55C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_10031B088(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_10031B100(v2, v3);
}

uint64_t sub_10057F61C(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void sub_10057F6F8(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2;
  v7 = a1;
  v8 = 0;
  v9 = a1;
  while (1)
  {
    v10 = v9 <= a2;
    if (a3 > 0)
    {
      v10 = v9 >= a2;
    }

    if (v10)
    {
      break;
    }

    v11 = __OFADD__(v9, a3);
    v9 += a3;
    if (v11)
    {
      v9 = (v9 >> 63) ^ 0x8000000000000000;
    }

    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      __break(1u);
      break;
    }
  }

  sub_100185BA4(0, v8, 0);
  if (v8)
  {
    v12 = a5;
    v13 = a4[2];
    while (1)
    {
      v14 = v7 <= v6;
      if (a3 > 0)
      {
        v14 = v7 >= v6;
      }

      if (v14)
      {
        break;
      }

      if (__OFADD__(v7, a3))
      {
        v15 = ((v7 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v15 = v7 + a3;
      }

      v16 = v7 + v12;
      if (__OFADD__(v7, v12))
      {
        goto LABEL_59;
      }

      v17 = v6;
      if (v13 < v16)
      {
        v16 = v13;
      }

      v18 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_60;
      }

      if (v7 < 0)
      {
        goto LABEL_61;
      }

      if (v13 == v18)
      {
        v19 = a4;
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
        if (v16 != v7)
        {
          if (v18 >= 1)
          {
            sub_100140278(&qword_1008DE418, &qword_1006D7B78);
            v19 = swift_allocObject();
            v22 = j__malloc_size(v19);
            v19[2] = v18;
            v19[3] = 2 * ((v22 - 32) / 24);
          }

          memcpy(v19 + 4, &a4[3 * v7 + 4], 24 * v18);
          v12 = a5;
        }
      }

      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_100185BA4((v20 > 1), v21 + 1, 1);
        v12 = a5;
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      _swiftEmptyArrayStorage[v21 + 4] = v19;
      v7 = v15;
      --v8;
      v6 = v17;
      if (!v8)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v15 = v7;
  v12 = a5;
LABEL_34:
  v23 = v15 <= v6;
  if (a3 > 0)
  {
    v23 = v15 >= v6;
  }

  if (!v23)
  {
    while (1)
    {
      v24 = __OFADD__(v15, a3) ? ((v15 + a3) >> 63) ^ 0x8000000000000000 : v15 + a3;
      v25 = v15 + v12;
      if (__OFADD__(v15, v12))
      {
        break;
      }

      v26 = a4[2];
      if (v26 < v25)
      {
        v25 = a4[2];
      }

      v27 = v25 - v15;
      if (v25 < v15)
      {
        goto LABEL_63;
      }

      if (v15 < 0)
      {
        goto LABEL_64;
      }

      if (v26 == v27)
      {
        v28 = a4;
      }

      else
      {
        v28 = _swiftEmptyArrayStorage;
        if (v25 != v15)
        {
          if (v27 < 1)
          {
            v28 = _swiftEmptyArrayStorage;
          }

          else
          {
            sub_100140278(&qword_1008DE418, &qword_1006D7B78);
            v28 = swift_allocObject();
            v32 = j__malloc_size(v28);
            v28[2] = v27;
            v28[3] = 2 * ((v32 - 32) / 24);
          }

          memcpy(v28 + 4, &a4[3 * v15 + 4], 24 * v27);
          v12 = a5;
        }
      }

      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        sub_100185BA4((v29 > 1), v30 + 1, 1);
        v12 = a5;
      }

      _swiftEmptyArrayStorage[2] = v30 + 1;
      _swiftEmptyArrayStorage[v30 + 4] = v28;
      v31 = v24 <= v6;
      if (a3 > 0)
      {
        v31 = v24 >= v6;
      }

      v15 = v24;
      if (v31)
      {
        return;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }
}

unint64_t sub_10057FAA0(uint64_t a1, uint64_t a2)
{
  result = qword_1008DC148;
  if (!qword_1008DC148)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC148);
  }

  return result;
}

id sub_10057FB1C(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightMedium];
  *a3 = result;
  return result;
}

void sub_10057FB7C()
{
  sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
  v0 = UIFontDescriptorSystemDesignRounded;
  v1 = static UIFont.systemFont(ofSize:weight:design:)();

  qword_1008F3650 = v1;
}

id sub_10057FC00()
{
  result = sub_10057FC20();
  qword_1008F3658 = result;
  return result;
}

id sub_10057FC20()
{
  sub_100140278(&qword_1008EC090, &qword_1006EE430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_100140278(&qword_1008EC098, &qword_1006EE438);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D46C0;
  sub_100140278(&qword_1008EC0A0, &qword_1006EE440);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1006D1F70;
  v3 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(v2 + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  v4 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(v2 + 40) = 38;
  *(v2 + 48) = v4;
  *(v2 + 56) = 1;
  v5 = UIFontDescriptorFeatureSettingsAttribute;
  v6 = v3;
  v7 = v4;
  v8 = sub_1004C9778(v2);
  swift_setDeallocating();
  sub_100140278(&qword_1008EC0A8, &qword_1006EE448);
  swift_arrayDestroy();
  *(v1 + 32) = v8;
  *(inited + 40) = v1;
  v9 = sub_1004C9D90(inited);
  swift_setDeallocating();
  sub_1003E7E44(inited + 32);
  if (qword_1008DAE50 != -1)
  {
    swift_once();
  }

  v10 = qword_1008F3650;
  v11 = [qword_1008F3650 fontDescriptor];
  sub_100376848(v9);

  type metadata accessor for AttributeName(0);
  sub_10005FB9C(&qword_1008DBA98, type metadata accessor for AttributeName, &unk_1006D3C40);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v11 fontDescriptorByAddingAttributes:isa];

  [v10 pointSize];
  v15 = [objc_opt_self() fontWithDescriptor:v13 size:v14];

  return v15;
}

void sub_10057FED8()
{
  v0 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
  v1 = [v0 CGColor];

  qword_1008F3660 = v1;
}

id sub_10057FF40()
{
  v0 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  result = [v0 setAlignment:0];
  qword_1008F3668 = v0;
  return result;
}

uint64_t sub_10057FF90()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100163368(v0, qword_1008F3670);
  *sub_10001AC90(v0, qword_1008F3670) = 5;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

Swift::Int sub_100580028(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;

  return OS_dispatch_semaphore.signal()();
}

unint64_t sub_100580088(__n128 a1)
{
  v1 = dispatch thunk of MindfulnessSessionViewModel.sessionType.getter();
  if (v2)
  {
    return 0;
  }

  if (v1 > 1)
  {
    if (v1 == 2)
    {
      return 0;
    }

    if (v1 != 3)
    {
LABEL_10:
      v4 = v1;
      v5 = static os_log_type_t.fault.getter();
      v6 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, v5))
      {
        v7 = v6;
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v10 = v9;
        *v8 = 136315394;
        *(v8 + 4) = sub_10000AFDC(0xD000000000000019, 0x80000001007632C0, &v10);
        *(v8 + 12) = 2048;
        *(v8 + 14) = v4;
        _os_log_impl(&_mh_execute_header, v7, v5, "%s found unexpected _HKPrivateMindfulnessType %ld; falling back to nil", v8, 0x16u);
        sub_100005A40(v9);
      }

      return 0;
    }

    return 0xD000000000000020;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD000000000000023;
      }

      goto LABEL_10;
    }

    return 0xD000000000000023;
  }
}

void sub_10058022C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D68D0;
  v10 = objc_opt_self();
  space = DeviceRGB;
  v11 = [v10 clearColor];
  v12 = [v11 CGColor];

  *(v9 + 32) = v12;
  v13 = [v10 blackColor];
  v14 = [v13 CGColor];

  *(v9 + 40) = v14;
  type metadata accessor for CGColor(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = CGGradientCreateWithColors(space, isa, 0);

  if (v16)
  {
    v17 = UIGraphicsGetCurrentContext();
    if (v17)
    {
      v18 = v17;
      v28.origin.x = a1;
      v28.origin.y = a2;
      v28.size.width = a3;
      v28.size.height = a4;
      v27.y = CGRectGetMaxY(v28);
      v26.y = 0.0;
      v26.x = (a1 + a3) * 0.5;
      v27.x = v26.x;
      CGContextDrawLinearGradient(v18, v16, v26, v27, 0);

      goto LABEL_7;
    }
  }

  v19 = static os_log_type_t.error.getter();
  v20 = HKLogActivity;
  if (!os_log_type_enabled(HKLogActivity, v19))
  {
    goto LABEL_8;
  }

  v16 = v20;
  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v24 = v22;
  *v21 = 136315138;
  *(v21 + 4) = sub_10000AFDC(0xD000000000000022, 0x8000000100763270, &v24);
  _os_log_impl(&_mh_execute_header, v16, v19, "%s - failed to draw gradient", v21, 0xCu);
  sub_100005A40(v22);

LABEL_7:

LABEL_8:
}

uint64_t sub_1005804D4(__n128 a1)
{
  v1 = dispatch thunk of MindfulnessSessionViewModel.sessionType.getter();
  if ((v2 & 1) == 0)
  {
    if (v1 < 4)
    {
      v3 = 7u >> (v1 & 0xF);
      return v3 & 1;
    }

    v5 = v1;
    v6 = static os_log_type_t.fault.getter();
    v7 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v6))
    {
      v8 = v7;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_10000AFDC(0xD00000000000001CLL, 0x80000001007632A0, &v11);
      *(v9 + 12) = 2048;
      *(v9 + 14) = v5;
      _os_log_impl(&_mh_execute_header, v8, v6, "%s found unexpected _HKPrivateMindfulnessType %ld; falling back to false", v9, 0x16u);
      sub_100005A40(v10);
    }
  }

  LOBYTE(v3) = 0;
  return v3 & 1;
}

void sub_100580618(double a1, double a2, CGFloat a3, double a4)
{
  v5 = UIGraphicsGetCurrentContext();
  if (v5)
  {
    v6 = v5;
    path = CGPathCreateMutable();
    v13[0] = 0x3FF0000000000000;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = 0x3FF0000000000000;
    v13[4] = 0;
    v13[5] = 0;
    CGMutablePathRef.move(to:transform:)();
    CGMutablePathRef.addLine(to:transform:)();
    CGPathCloseSubpath(path);
    CGContextAddPath(v6, path);
    if (qword_1008DAE60 != -1)
    {
      swift_once();
    }

    CGContextSetStrokeColorWithColor(v6, qword_1008F3660);
    CGContextSetLineWidth(v6, a3);
    CGContextSetLineCap(v6, kCGLineCapRound);
    CGContextStrokePath(v6);
  }

  else
  {
    v7 = static os_log_type_t.error.getter();
    v8 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v7))
    {
      v9 = v8;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10000AFDC(0xD000000000000022, 0x8000000100763270, v13);
      _os_log_impl(&_mh_execute_header, v9, v7, "%s - failed to draw keyline", v10, 0xCu);
      sub_100005A40(v11);
    }
  }
}

void sub_100580834(NSObject *a1, uint64_t a2, char *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v162 = a3;
  v155 = type metadata accessor for DispatchTime();
  v13 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v154 = &v148 - v17;
  sub_100580088(v16);
  v19 = v18;
  if (v18)
  {
    v20 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() imageNamed:v20];

    [v21 drawInRect:{a4, a5, a6, a7}];
  }

  sub_10058022C(a4, a5, a6, a7);
  v22 = MindfulnessSessionViewModel.sourceRevision.getter();
  v23 = [v22 source];

  LODWORD(v22) = [v23 _hasFirstPartyBundleID];
  if (v22)
  {
    v25 = sub_1005587DC(v24);
    if (!v25)
    {
      goto LABEL_11;
    }

    v26 = v25;
    [v25 size];
    [v26 size];
    [v26 size];
    [v26 size];
    v179.origin.x = 16.0;
    v179.origin.y = 16.0;
    v179.size.width = 40.0;
    v179.size.height = 40.0;
    CGRectGetWidth(v179);
    v180.origin.x = 16.0;
    v180.origin.y = 16.0;
    v180.size.width = 40.0;
    v180.size.height = 40.0;
    CGRectGetHeight(v180);
    CGRect.centered(in:)();
    [v26 drawInRect:?];
  }

  else
  {
    v27 = MindfulnessSessionViewModel.sourceRevision.getter();
    v28 = [v27 source];

    LOBYTE(v27) = [v28 _isAppleWatch];
    if (v27)
    {
      v26 = sub_1005588A8(40.0);
      v29 = objc_opt_self();
      v177 = sub_1005563E4;
      v178 = 0;
      aBlock = _NSConcreteStackBlock;
      v174 = 1107296256;
      v175 = sub_100212B08;
      v176 = &unk_100860C48;
      v30 = _Block_copy(&aBlock);

      [v29 fetchWatchIconWithParameters:v26 completion:v30];
    }

    else
    {
      v26 = sub_1005589F8(40.0);
      v31 = objc_opt_self();
      v177 = sub_1005563E4;
      v178 = 0;
      aBlock = _NSConcreteStackBlock;
      v174 = 1107296256;
      v175 = sub_100212B08;
      v176 = &unk_100860BA8;
      v30 = _Block_copy(&aBlock);

      [v31 fetchPhoneIconWithParameters:v26 completion:v30];
    }

    _Block_release(v30);
  }

LABEL_11:
  v32 = sub_1005577DC(a1, a2);
  v33 = [v32 string];

  if (!v33)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = String._bridgeToObjectiveC()();
  }

  v158 = v19;
  v159 = v33;
  v164 = a1;
  v157 = v13;
  if (qword_1008DAE40 != -1)
  {
    swift_once();
  }

  v34 = qword_1008F3640;
  v161 = objc_opt_self();
  v35 = [(NSString *)v161 whiteColor];
  v171 = sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
  inited = swift_initStackObject();
  v170 = xmmword_1006D64F0;
  *(inited + 16) = xmmword_1006D64F0;
  *(inited + 32) = NSFontAttributeName;
  v37 = sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
  *(inited + 40) = v34;
  v169 = v37;
  *(inited + 64) = v37;
  *(inited + 72) = NSForegroundColorAttributeName;
  v38 = sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  *(inited + 80) = v35;
  v168 = v38;
  *(inited + 104) = v38;
  *(inited + 112) = NSParagraphStyleAttributeName;
  v39 = qword_1008DAE68;
  v40 = NSFontAttributeName;
  v41 = NSForegroundColorAttributeName;
  v42 = NSParagraphStyleAttributeName;
  v43 = v40;
  v160 = v41;
  v44 = v42;
  v45 = v34;
  v46 = v35;
  if (v39 != -1)
  {
    swift_once();
  }

  v47 = qword_1008F3668;
  v167 = sub_1000059F8(0, &qword_1008F3688, NSParagraphStyle_ptr);
  *(inited + 144) = v167;
  *(inited + 120) = v47;
  v48 = v47;
  sub_1004C9200(inited);
  swift_setDeallocating();
  v163 = sub_100140278(&unk_1008EE730, &unk_1006D8460);
  swift_arrayDestroy();
  v49 = objc_allocWithZone(NSAttributedString);
  type metadata accessor for Key(0);
  v51 = v50;
  v165 = sub_10005FB9C(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
  v166 = v51;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v53 = v159;
  v54 = [v49 initWithString:v159 attributes:isa];

  [v54 drawAtPoint:{16.0, 104.0}];
  v55 = objc_opt_self();
  v56 = [v55 mainBundle];
  v57 = String._bridgeToObjectiveC()();
  v58 = [v56 localizedStringForKey:v57 value:0 table:0];

  if (!v58)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = String._bridgeToObjectiveC()();
  }

  v156 = v55;

  if (qword_1008DAE48 != -1)
  {
    swift_once();
  }

  v59 = qword_1008F3648;
  v60 = [(NSString *)v161 secondaryLabelColor];
  v61 = swift_initStackObject();
  *(v61 + 16) = v170;
  *(v61 + 32) = v43;
  *(v61 + 40) = v59;
  v62 = v168;
  v63 = v43;
  v64 = v160;
  *(v61 + 64) = v169;
  *(v61 + 72) = v64;
  *(v61 + 80) = v60;
  *(v61 + 104) = v62;
  *(v61 + 112) = v44;
  *(v61 + 144) = v167;
  *(v61 + 120) = v48;
  v65 = v63;
  v160 = v64;
  v159 = v44;
  v66 = v48;
  v152 = v59;
  v67 = v60;
  sub_1004C9200(v61);
  swift_setDeallocating();
  v68 = v163;
  swift_arrayDestroy();
  v69 = objc_allocWithZone(NSAttributedString);
  v70 = Dictionary._bridgeToObjectiveC()().super.isa;

  v71 = [v69 initWithString:v58 attributes:v70];

  [v71 drawAtPoint:{16.0, 140.0}];
  v73 = sub_100556CA4(v72);
  v74 = [v73 string];

  if (!v74)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v75 = objc_opt_self();
  v76 = [v75 elapsedTimeColors];
  if (!v76)
  {

    __break(1u);
    goto LABEL_46;
  }

  v77 = v76;
  v78 = [v76 nonGradientTextColor];

  if (!v78)
  {
LABEL_46:

    __break(1u);
LABEL_47:

    __break(1u);
    goto LABEL_48;
  }

  v79 = swift_initStackObject();
  *(v79 + 16) = v170;
  v151 = v65;
  *(v79 + 32) = v65;
  if (qword_1008DAE50 != -1)
  {
    swift_once();
  }

  v80 = qword_1008F3650;
  *(v79 + 40) = qword_1008F3650;
  v81 = v160;
  *(v79 + 64) = v169;
  *(v79 + 72) = v81;
  *(v79 + 80) = v78;
  v82 = v159;
  *(v79 + 104) = v168;
  *(v79 + 112) = v82;
  *(v79 + 144) = v167;
  *(v79 + 120) = v66;
  v83 = v80;
  v84 = v78;
  sub_1004C9200(v79);
  swift_setDeallocating();
  swift_arrayDestroy();
  v85 = objc_allocWithZone(NSMutableAttributedString);
  v86 = Dictionary._bridgeToObjectiveC()().super.isa;

  v87 = [v85 initWithString:v74 attributes:v86];

  [v87 drawAtPoint:{16.0, 152.0}];
  if ((sub_1005804D4(v88) & 1) == 0)
  {
    goto LABEL_44;
  }

  v149 = v83;
  v150 = v75;
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  v90 = dispatch_semaphore_create(0);
  v91 = swift_allocObject();
  *(v91 + 16) = v89;
  *(v91 + 24) = v90;
  v92 = v162;
  v93 = swift_allocObject();
  v93[2] = v92;
  v93[3] = sub_100581B1C;
  v93[4] = v91;

  v94 = v90;
  v95 = v92;

  static MindfulnessSessionDataCalculator.endingHeartRate(for:healthStore:completion:)();

  swift_beginAccess();
  v96 = *(v89 + 16);
  if (!v96)
  {

LABEL_44:

    return;
  }

  v164 = v94;
  v148 = v89;
  v162 = v96;
  sub_100580618(134.0, 141.0, 2.0, 42.0);
  v97 = [v156 mainBundle];
  v98 = String._bridgeToObjectiveC()();
  v99 = [v97 localizedStringForKey:v98 value:0 table:0];

  if (!v99)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = String._bridgeToObjectiveC()();
  }

  v100 = [(NSString *)v161 secondaryLabelColor];
  v101 = swift_initStackObject();
  *(v101 + 16) = v170;
  v102 = v151;
  v103 = v152;
  *(v101 + 32) = v151;
  *(v101 + 40) = v103;
  v104 = v168;
  v106 = v159;
  v105 = v160;
  *(v101 + 64) = v169;
  *(v101 + 72) = v105;
  *(v101 + 80) = v100;
  *(v101 + 104) = v104;
  *(v101 + 112) = v106;
  *(v101 + 144) = v167;
  *(v101 + 120) = v66;
  v107 = v102;
  v108 = v105;
  v109 = v106;
  v110 = v66;
  v161 = v107;
  v160 = v108;
  v159 = v109;
  v151 = v110;
  v111 = v103;
  v112 = v100;
  sub_1004C9200(v101);
  swift_setDeallocating();
  swift_arrayDestroy();
  v113 = objc_allocWithZone(NSAttributedString);
  v114 = Dictionary._bridgeToObjectiveC()().super.isa;

  v115 = [v113 initWithString:v99 attributes:v114];

  [v115 drawAtPoint:{148.0, 140.0}];
  v116 = [v162 string];
  v75 = v116;
  v68 = v116;
  if (!v116)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = String._bridgeToObjectiveC()();
  }

  v117 = v116;
  v118 = v153;
  static DispatchTime.now()();
  v119 = v157;
  if (qword_1008DAE70 != -1)
  {
    swift_once();
  }

  v120 = type metadata accessor for DispatchTimeInterval();
  sub_10001AC90(v120, qword_1008F3670);
  + infix(_:_:)();
  v122 = *(v119 + 8);
  v121 = v119 + 8;
  v153 = v122;
  (v122)(v118, v155);
  OS_dispatch_semaphore.wait(timeout:)();
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
  {
    v123 = static os_log_type_t.error.getter();
    v124 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v123))
    {
      v125 = v124;
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v172 = v127;
      *v126 = 136315138;
      *(v126 + 4) = sub_10000AFDC(0xD000000000000022, 0x8000000100763270, &v172);
      _os_log_impl(&_mh_execute_header, v125, v123, "%s failed to fetch heart rate; semaphore timed out", v126, 0xCu);
      sub_100005A40(v127);
    }
  }

  v128 = [v156 mainBundle];
  v129 = String._bridgeToObjectiveC()();
  v130 = [v128 localizedStringForKey:v129 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v131 = [v150 heartRateColors];
  if (!v131)
  {
    goto LABEL_47;
  }

  v132 = v131;
  v157 = v121;
  v133 = [v131 nonGradientTextColor];

  if (!v133)
  {
LABEL_48:

    __break(1u);
    return;
  }

  v134 = swift_initStackObject();
  *(v134 + 16) = v170;
  v135 = v161;
  *(v134 + 32) = v161;
  v136 = v149;
  *(v134 + 40) = v149;
  v137 = v160;
  *(v134 + 64) = v169;
  *(v134 + 72) = v137;
  *(v134 + 80) = v133;
  v138 = v159;
  *(v134 + 104) = v168;
  *(v134 + 112) = v138;
  *(v134 + 144) = v167;
  *(v134 + 120) = v151;
  v139 = v136;
  v140 = v133;
  sub_1004C9200(v134);
  swift_setDeallocating();
  swift_arrayDestroy();
  v141 = objc_allocWithZone(NSMutableAttributedString);
  v142 = Dictionary._bridgeToObjectiveC()().super.isa;

  v143 = [v141 initWithString:v68 attributes:v142];

  v144 = String._bridgeToObjectiveC()();
  v145 = [v75 rangeOfString:v144];
  v147 = v146;

  if (qword_1008DAE58 != -1)
  {
    swift_once();
  }

  [v143 addAttribute:v135 value:qword_1008F3658 range:{v145, v147}];
  [v143 drawAtPoint:{148.0, 152.0}];

  (v153)(v154, v155);
}

void sub_100581B24(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = UIGraphicsGetCurrentContext();
  if (v8)
  {
    c = v8;
    v9 = [objc_opt_self() secondarySystemBackgroundColor];
    v10 = [v9 CGColor];

    CGContextSetFillColorWithColor(c, v10);
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    CGContextFillRect(c, v19);
  }

  else
  {
    v11 = static os_log_type_t.error.getter();
    v12 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v11))
    {
      v13 = v12;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10000AFDC(0xD000000000000022, 0x8000000100763270, &v17);
      _os_log_impl(&_mh_execute_header, v13, v11, "%s - failed to draw background", v14, 0xCu);
      sub_100005A40(v15);
    }
  }
}

void sub_100581CEC(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  sub_100581B24(a3, a4, a5, a6);
  v8 = MindfulnessSessionViewModel.sourceRevision.getter();
  v9 = [v8 source];

  LODWORD(v8) = [v9 _hasFirstPartyBundleID];
  if (v8)
  {
    v11 = sub_1005587DC(v10);
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = v11;
    [v11 drawInRect:{16.0, 16.0, 40.0, 40.0}];
  }

  else
  {
    v13 = MindfulnessSessionViewModel.sourceRevision.getter();
    v14 = [v13 source];

    LOBYTE(v13) = [v14 _isAppleWatch];
    if (v13)
    {
      v12 = sub_1005588A8(28.0);
      v15 = objc_opt_self();
      v78 = sub_1005564F0;
      v79 = 0;
      aBlock = _NSConcreteStackBlock;
      v75 = 1107296256;
      v76 = sub_100212B08;
      v77 = &unk_100860C98;
      v16 = _Block_copy(&aBlock);

      [v15 fetchWatchIconWithParameters:v12 completion:v16];
    }

    else
    {
      v12 = sub_1005589F8(28.0);
      v17 = objc_opt_self();
      v78 = sub_1005564F0;
      v79 = 0;
      aBlock = _NSConcreteStackBlock;
      v75 = 1107296256;
      v76 = sub_100212B08;
      v77 = &unk_100860C70;
      v16 = _Block_copy(&aBlock);

      [v17 fetchPhoneIconWithParameters:v12 completion:v16];
    }

    _Block_release(v16);
  }

LABEL_9:
  v18 = sub_1005577DC(a1, a2);
  v19 = [v18 string];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  if (qword_1008DAE40 != -1)
  {
    swift_once();
  }

  v20 = qword_1008F3640;
  v69 = objc_opt_self();
  v21 = [v69 whiteColor];
  sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D64F0;
  *(inited + 32) = NSFontAttributeName;
  v23 = sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
  *(inited + 40) = v20;
  v73 = v23;
  *(inited + 64) = v23;
  *(inited + 72) = NSForegroundColorAttributeName;
  v24 = sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  *(inited + 80) = v21;
  v72 = v24;
  *(inited + 104) = v24;
  *(inited + 112) = NSParagraphStyleAttributeName;
  v25 = qword_1008DAE68;
  v26 = NSFontAttributeName;
  v27 = NSForegroundColorAttributeName;
  v28 = NSParagraphStyleAttributeName;
  v67 = v26;
  v29 = v27;
  v30 = v28;
  v31 = v20;
  v32 = v21;
  if (v25 != -1)
  {
    swift_once();
  }

  v33 = qword_1008F3668;
  v71 = sub_1000059F8(0, &qword_1008F3688, NSParagraphStyle_ptr);
  *(inited + 144) = v71;
  *(inited + 120) = v33;
  v34 = v33;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730, &unk_1006D8460);
  swift_arrayDestroy();
  v35 = objc_allocWithZone(NSAttributedString);
  type metadata accessor for Key(0);
  sub_10005FB9C(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = [v35 initWithString:v19 attributes:isa];

  [v37 drawAtPoint:{68.0, 18.0}];
  v38 = [objc_opt_self() mainBundle];
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 localizedStringForKey:v39 value:0 table:0];

  if (!v40)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = String._bridgeToObjectiveC()();
  }

  if (qword_1008DAE48 != -1)
  {
    swift_once();
  }

  v41 = qword_1008F3648;
  v42 = [v69 secondaryLabelColor];
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_1006D64F0;
  *(v43 + 32) = v68;
  *(v43 + 40) = v41;
  *(v43 + 64) = v73;
  *(v43 + 72) = v29;
  *(v43 + 80) = v42;
  *(v43 + 104) = v72;
  *(v43 + 112) = v30;
  *(v43 + 144) = v71;
  *(v43 + 120) = v34;
  v44 = v68;
  v70 = v29;
  v45 = v30;
  v46 = v34;
  v47 = v41;
  v48 = v42;
  sub_1004C9200(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  v49 = objc_allocWithZone(NSAttributedString);
  v50 = Dictionary._bridgeToObjectiveC()().super.isa;

  v51 = [v49 initWithString:v40 attributes:v50];

  [v51 drawAtPoint:{68.0, 36.0}];
  v53 = sub_100556CA4(v52);
  v54 = [v53 string];

  if (!v54)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v55 = [objc_opt_self() elapsedTimeColors];
  if (!v55)
  {

    __break(1u);
    goto LABEL_27;
  }

  v56 = v55;
  v57 = [v55 nonGradientTextColor];

  if (!v57)
  {
LABEL_27:

    __break(1u);
    return;
  }

  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1006D64F0;
  *(v58 + 32) = v44;
  if (qword_1008DAE50 != -1)
  {
    v66 = v58;
    swift_once();
    v58 = v66;
  }

  v59 = qword_1008F3650;
  *(v58 + 40) = qword_1008F3650;
  *(v58 + 64) = v73;
  *(v58 + 72) = v70;
  *(v58 + 80) = v57;
  *(v58 + 104) = v72;
  *(v58 + 112) = v45;
  *(v58 + 144) = v71;
  *(v58 + 120) = v46;
  v60 = v58;
  v61 = v59;
  v62 = v57;
  sub_1004C9200(v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  v63 = objc_allocWithZone(NSMutableAttributedString);
  v64 = Dictionary._bridgeToObjectiveC()().super.isa;

  v65 = [v63 initWithString:v54 attributes:v64];

  [v65 drawAtPoint:{176.0, 18.0}];
}

id sub_10058264C(void *a1, unsigned __int8 a2)
{
  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v7 = objc_opt_self();
        v8 = [v7 literUnitWithMetricPrefix:4];
        v9 = [v7 gramUnitWithMetricPrefix:9];
        v10 = [v7 minuteUnit];
        v11 = [v8 unitDividedByUnit:v9];
        v12 = [v11 unitDividedByUnit:v10];

        return v12;
      }
    }

    else if (a2 != 6)
    {
      if (a2 == 7)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v2 = [objc_opt_self() minuteUnit];
    goto LABEL_17;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
LABEL_11:
      v3 = [a1 userDistanceWalkingRunningHKUnit];
      v4 = [objc_opt_self() hourUnit];
      v5 = [v3 unitDividedByUnit:v4];

      return v5;
    }

    v2 = [a1 userDistanceHKUnitForDistanceType:1];
    goto LABEL_17;
  }

  if (a2)
  {
    v2 = [a1 userActiveEnergyBurnedUnit];
    goto LABEL_17;
  }

LABEL_8:
  v2 = [objc_opt_self() countUnit];
LABEL_17:

  return v2;
}

id sub_100582888(unsigned __int8 a1)
{
  sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.60784, 1.0, 1.0).super.isa;
        v19 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.81569, 1.0, 1.0).super.isa;
        v20 = type metadata accessor for GradientColors();
        v21 = objc_allocWithZone(v20);
        *&v21[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
        *&v21[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v19;
        v75.receiver = v21;
        v75.super_class = v20;
        v22 = objc_msgSendSuper2(&v75, "init");
        v23 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.7451, 1.0, 1.0).super.isa;
        v8 = type metadata accessor for MetricColors();
        v24 = objc_allocWithZone(v8);
        *&v24[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v22;
        *&v24[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v23;
        v74 = v24;
        v10 = &v74;
      }

      else
      {
        v46 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.59216, 0.4902, 0.88235, 1.0).super.isa;
        v47 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.76078, 0.63137, 1.0, 1.0).super.isa;
        v48 = type metadata accessor for GradientColors();
        v49 = objc_allocWithZone(v48);
        *&v49[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v46;
        *&v49[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v47;
        v83.receiver = v49;
        v83.super_class = v48;
        v50 = objc_msgSendSuper2(&v83, "init");
        v51 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.63529, 0.5451, 0.88235, 1.0).super.isa;
        v8 = type metadata accessor for MetricColors();
        v52 = objc_allocWithZone(v8);
        *&v52[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v50;
        *&v52[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v51;
        v82 = v52;
        v10 = &v82;
      }
    }

    else if (a1)
    {
      v39 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.0, 0.28631, 1.0).super.isa;
      v40 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.19608, 0.52941, 1.0).super.isa;
      v41 = type metadata accessor for GradientColors();
      v42 = objc_allocWithZone(v41);
      *&v42[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v39;
      *&v42[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v40;
      v69.receiver = v42;
      v69.super_class = v41;
      v43 = objc_msgSendSuper2(&v69, "init");
      v44 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.98039, 0.066667, 0.3098, 1.0).super.isa;
      v8 = type metadata accessor for MetricColors();
      v45 = objc_allocWithZone(v8);
      *&v45[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v43;
      *&v45[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v44;
      v68 = v45;
      v10 = &v68;
    }

    else
    {
      v11 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.84706, 1.0, 1.0).super.isa;
      v12 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.62727, 1.0).super.isa;
      v13 = type metadata accessor for GradientColors();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v11;
      *&v14[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v12;
      v73.receiver = v14;
      v73.super_class = v13;
      v15 = objc_msgSendSuper2(&v73, "init");
      v16 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.96471, 1.0).super.isa;
      v8 = type metadata accessor for MetricColors();
      v17 = objc_allocWithZone(v8);
      *&v17[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v15;
      *&v17[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v16;
      v72 = v17;
      v10 = &v72;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v25 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.43922, 0.22353, 1.0).super.isa;
      v26 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.61961, 0.12549, 1.0).super.isa;
      v27 = type metadata accessor for GradientColors();
      v28 = objc_allocWithZone(v27);
      *&v28[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v25;
      *&v28[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v26;
      v79.receiver = v28;
      v79.super_class = v27;
      v29 = objc_msgSendSuper2(&v79, "init");
      v30 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.43922, 0.22353, 1.0).super.isa;
      v8 = type metadata accessor for MetricColors();
      v31 = objc_allocWithZone(v8);
      *&v31[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v29;
      *&v31[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v30;
      v78 = v31;
      v10 = &v78;
    }

    else
    {
      v60 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.6, 1.0, 0.0, 1.0).super.isa;
      v61 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.84706, 1.0, 0.0, 1.0).super.isa;
      v62 = type metadata accessor for GradientColors();
      v63 = objc_allocWithZone(v62);
      *&v63[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v60;
      *&v63[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v61;
      v71.receiver = v63;
      v71.super_class = v62;
      v64 = objc_msgSendSuper2(&v71, "init");
      v65 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.65068, 1.0, 0.0, 1.0).super.isa;
      v8 = type metadata accessor for MetricColors();
      v66 = objc_allocWithZone(v8);
      *&v66[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v64;
      *&v66[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v65;
      v70.receiver = v66;
      v10 = &v70;
    }
  }

  else if (a1 == 6)
  {
    v32 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.96078, 0.78824, 0.094118, 1.0).super.isa;
    v33 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.96078, 0.33725, 1.0).super.isa;
    v34 = type metadata accessor for GradientColors();
    v35 = objc_allocWithZone(v34);
    *&v35[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v32;
    *&v35[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v33;
    v81.receiver = v35;
    v81.super_class = v34;
    v36 = objc_msgSendSuper2(&v81, "init");
    v37 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.98039, 0.90196, 0.12549, 1.0).super.isa;
    v8 = type metadata accessor for MetricColors();
    v38 = objc_allocWithZone(v8);
    *&v38[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v36;
    *&v38[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v37;
    v80 = v38;
    v10 = &v80;
  }

  else if (a1 == 7)
  {
    v2 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.86275, 0.4902, 0.88235, 1.0).super.isa;
    v3 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.92157, 0.58824, 0.76471, 1.0).super.isa;
    v4 = type metadata accessor for GradientColors();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v2;
    *&v5[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v3;
    v85.receiver = v5;
    v85.super_class = v4;
    v6 = objc_msgSendSuper2(&v85, "init");
    v7 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.86275, 0.54902, 0.88235, 1.0).super.isa;
    v8 = type metadata accessor for MetricColors();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v6;
    *&v9[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v7;
    v84 = v9;
    v10 = &v84;
  }

  else
  {
    v53 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.58039, 0.29804, 1.0).super.isa;
    v54 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.94118, 0.73725, 0.0, 1.0).super.isa;
    v55 = type metadata accessor for GradientColors();
    v56 = objc_allocWithZone(v55);
    *&v56[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v53;
    *&v56[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v54;
    v77.receiver = v56;
    v77.super_class = v55;
    v57 = objc_msgSendSuper2(&v77, "init");
    v58 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.68235, 0.082353, 1.0).super.isa;
    v8 = type metadata accessor for MetricColors();
    v59 = objc_allocWithZone(v8);
    *&v59[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v57;
    *&v59[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v58;
    v76 = v59;
    v10 = &v76;
  }

  v10->super_class = v8;
  return [(objc_super *)v10 init];
}

double sub_1005831C0(void *a1, unsigned __int8 a2, double a3)
{
  v6 = a2;
  v7 = sub_1003D2500(byte_1006FAAAA[a2]);
  v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:a3];

  v9 = sub_10058264C(a1, a2);
  [v8 doubleValueForUnit:v9];
  v11 = v10;

  return round(v11 * dbl_1006FAAB8[v6]) / dbl_1006FAAB8[v6];
}

uint64_t sub_100583290(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 8u && ((1 << a2) & 0x1DC) != 0)
  {
    return 0;
  }

  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

id sub_100583424(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    if (a2 < 2u)
    {
LABEL_6:
      result = [objc_opt_self() sharedBehavior];
      if (result)
      {
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_17;
    }

    if (a2 != 2)
    {
LABEL_9:
      v4 = [objc_opt_self() mainBundle];
LABEL_15:
      v5 = String._bridgeToObjectiveC()();
      v6 = [v4 localizedStringForKey:v5 value:0 table:0];

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v7;
    }

    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_11:
    v3 = result;
    [result isStandalonePhoneFitnessMode];

    v4 = [objc_opt_self() mainBundle];
    goto LABEL_15;
  }

  if (a2 <= 6u)
  {
    if (a2 - 5 >= 2)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (a2 == 7)
  {
    goto LABEL_9;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    goto LABEL_11;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1005837A0(int a1, id a2, uint64_t a3, unsigned __int8 a4)
{
  v7 = [a2 userActiveEnergyBurnedUnit];
  v8 = [objc_opt_self() kilocalorieUnit];
  sub_1000059F8(0, &qword_1008DEED0, HKUnit_ptr);
  static NSObject.== infix(_:_:)();

  [a2 userDistanceUnitForDistanceType:1];
  if (a4 >= 8u)
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 localizedStringForKey:v10 value:0 table:0];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(a3 + 24) != 1)
    {
      v12 = [objc_opt_self() mainBundle];
      v13 = String._bridgeToObjectiveC()();
      v14 = [v12 localizedStringForKey:v13 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String.init<A>(_:)();
      String.append<A>(contentsOf:)();

      return v20;
    }
  }

  else
  {
    v15 = [objc_opt_self() mainBundle];
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 localizedStringForKey:v16 value:0 table:0];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v18;
}

unint64_t sub_100584170@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10058431C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100584260()
{
  result = qword_1008F3690;
  if (!qword_1008F3690)
  {
    sub_100141EEC(&qword_1008F3698, qword_1006FA9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3690);
  }

  return result;
}

unint64_t sub_1005842C8()
{
  result = qword_1008F36A0;
  if (!qword_1008F36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F36A0);
  }

  return result;
}

unint64_t sub_10058431C(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_10058432C()
{
  result = qword_1008F36A8;
  if (!qword_1008F36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F36A8);
  }

  return result;
}

uint64_t sub_100584380(void *a1, unsigned __int8 a2)
{
  v4 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2;
  if (a2 <= 3u)
  {
    v19 = 0xD000000000000046;
    v20 = "fierAppleExerciseTime";
    v21 = "fierFlightsClimbed";
    v22 = 0xD00000000000004ALL;
    if (a2 != 2)
    {
      v22 = 0xD000000000000040;
      v21 = "TREND_MORE_INFO_LINK";
    }

    if (!a2)
    {
      v19 = 0xD000000000000042;
      v20 = "fierDistanceWalkingRunning";
    }

    if (a2 <= 1u)
    {
      v17 = v19;
    }

    else
    {
      v17 = v22;
    }

    if (v11 <= 1)
    {
      v18 = v20;
    }

    else
    {
      v18 = v21;
    }
  }

  else
  {
    v12 = "antityTypeIdentifierVO2Max";
    v13 = "TREND_MOVE_RINGS_CLOSED";
    v14 = 0xD000000000000040;
    if (a2 != 7)
    {
      v14 = 0xD000000000000042;
      v13 = "fierAppleStandTime";
    }

    if (a2 == 6)
    {
      v14 = 0xD000000000000042;
    }

    else
    {
      v12 = v13;
    }

    v15 = "fierWalkingSpeed";
    v16 = 0xD00000000000003ALL;
    if (a2 != 4)
    {
      v16 = 0xD000000000000045;
      v15 = "fierAppleStandHour";
    }

    if (a2 <= 5u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    if (v11 <= 5)
    {
      v18 = v15;
    }

    else
    {
      v18 = v12;
    }
  }

  URL.init(string:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1001854D4(v6);
    v23 = static os_log_type_t.fault.getter();
    v24 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v23))
    {
      v25 = v24;
      v26 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_10000AFDC(0xD000000000000026, 0x8000000100763780, &v41);
      *(v26 + 12) = 2080;
      v27 = sub_10000AFDC(v17, v18 | 0x8000000000000000, &v41);

      *(v26 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v25, v23, "%s unable to create health URL from %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  else
  {

    (*(v8 + 32))(v10, v6, v7);
    sub_100140278(&unk_1008E4E20, &qword_1006D5040);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1006D68D0;
    v29 = objc_allocWithZone(NSAttributedString);
    v30 = String._bridgeToObjectiveC()();
    v31 = [v29 initWithString:v30];

    *(v28 + 32) = v31;
    v32 = [objc_opt_self() mainBundle];
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 localizedStringForKey:v33 value:0 table:0];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_100455128(v35, v37, v10, a1);

    *(v28 + 40) = v38;
    (*(v8 + 8))(v10, v7);
    return v28;
  }
}

uint64_t sub_10058483C(uint64_t a1, uint64_t a2)
{
  v151 = a2;
  v130 = type metadata accessor for Calendar.Component();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v127 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for Calendar();
  v126 = *(v128 - 8);
  __chkstk_darwin(v128);
  v125 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v140 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v141 = *(v5 - 8);
  v142 = v5;
  __chkstk_darwin(v5);
  v138 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for Date.FormatStyle();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v137 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v139 = &v120 - v9;
  v10 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v135 = *(v10 - 8);
  v136 = v10;
  __chkstk_darwin(v10);
  v133 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for Date.FormatStyle.DateStyle();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v149 = *(v13 - 8);
  v150 = v13;
  __chkstk_darwin(v13);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v148 = &v120 - v17;
  __chkstk_darwin(v18);
  v20 = &v120 - v19;
  Language = type metadata accessor for TrainingLoadLanguageGenerator.LastWorkoutState(0);
  __chkstk_darwin(Language);
  v23 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v152 = &v120 - v25;
  v26 = sub_100140278(&qword_1008F2808, &qword_1006F94D0);
  __chkstk_darwin(v26 - 8);
  v28 = &v120 - v27;
  Band = type metadata accessor for TrainingLoadBand();
  v30 = *(Band - 8);
  __chkstk_darwin(Band);
  v32 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v120 - v34;
  TrainingLoadViewModel.trainingLoadBandForToday.getter();
  if ((*(v30 + 48))(v28, 1, Band) == 1)
  {
    sub_10000EA04(v28, &qword_1008F2808, &qword_1006F94D0);
    return sub_100587E48(v36);
  }

  (*(v30 + 32))(v35, v28, Band);
  v38 = *(v30 + 16);
  v147 = v35;
  v38(v32, v35, Band);
  v123 = v30;
  v39 = *(v30 + 88);
  v124 = Band;
  v40 = v39(v32, Band);
  if (v40 == enum case for TrainingLoadBand.wellBelow(_:))
  {
    v41 = 0xEA0000000000574FLL;
    v122 = 0x4C45425F4C4C4557;
    v42 = v147;
    v43 = v20;
    goto LABEL_14;
  }

  v42 = v147;
  v43 = v20;
  if (v40 == enum case for TrainingLoadBand.below(_:))
  {
    v41 = 0xE500000000000000;
    v44 = 0x574F4C4542;
LABEL_13:
    v122 = v44;
LABEL_14:
    v45 = v152;
    sub_100585BF0(v151, v152);
    v46 = sub_100587688();
    LODWORD(v48) = v47;
    v151 = sub_100587828(v42, v45);
    v50 = v49;
    sub_100588298(v45, v23);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v121 = v46;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v149 + 32))(v43, v23, v150);
        v153[0] = 0;
        v153[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v153[0] = 0xD000000000000012;
        v153[1] = 0x8000000100764110;
        v60._countAndFlagsBits = v122;
        v60._object = v41;
        String.append(_:)(v60);

        v61._countAndFlagsBits = 95;
        v61._object = 0xE100000000000000;
        String.append(_:)(v61);
        v62._countAndFlagsBits = v151;
        v62._object = v50;
        String.append(_:)(v62);

        v147 = v153[0];
        v63 = v131;
        static Date.FormatStyle.DateStyle.omitted.getter();
        v64 = v133;
        static Date.FormatStyle.TimeStyle.shortened.getter();
        v151 = Date.formatted(date:time:)();
        v148 = v65;
        (*(v135 + 8))(v64, v136);
        (*(v132 + 8))(v63, v134);
        v66 = v137;
        static FormatStyle<>.dateTime.getter();
        v67 = v140;
        static Date.FormatStyle.Symbol.Hour.AMPMStyle.omitted.getter();
        v68 = v138;
        static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
        (*(v144 + 8))(v67, v146);
        v69 = v139;
        Date.FormatStyle.hour(_:)();
        (*(v141 + 8))(v68, v142);
        v70 = *(v143 + 8);
        v71 = v145;
        v70(v66, v145);
        sub_100588358(&qword_1008E29B0, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
        Date.formatted<A>(_:)();
        v70(v69, v71);
        v72 = [objc_allocWithZone(NSNumberFormatter) init];
        v73 = String._bridgeToObjectiveC()();

        v74 = [v72 numberFromString:v73];

        v75 = v48;
        if (v74)
        {
          v76 = [v74 integerValue];
        }

        else
        {
          v100 = v125;
          static Calendar.current.getter();
          v101 = v129;
          v102 = v127;
          v103 = v130;
          (*(v129 + 104))(v127, enum case for Calendar.Component.hour(_:), v130);
          v76 = Calendar.component(_:from:)();
          (*(v101 + 8))(v102, v103);
          (*(v126 + 8))(v100, v128);
        }

        v104 = v43;
        v53 = v124;
        v105 = [objc_opt_self() mainBundle];
        v106 = String._bridgeToObjectiveC()();

        v107 = [v105 localizedStringForKey:v106 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_1006D1F70;
        *(v108 + 56) = &type metadata for Int;
        *(v108 + 64) = &protocol witness table for Int;
        *(v108 + 32) = v76;
        *(v108 + 96) = &type metadata for String;
        *(v108 + 104) = sub_10000A788();
        v109 = v148;
        *(v108 + 72) = v151;
        *(v108 + 80) = v109;
        v77 = String.init(format:_:)();
        v78 = v110;

        (*(v149 + 8))(v104, v150);
        v54 = v123;
        v81 = v75;
        if (!v75)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      v82 = v50;
      v83 = v149;
      v84 = v150;
      (*(v149 + 32))(v148, v23, v150);
      v153[0] = 0;
      v153[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v153[0] = 0xD000000000000017;
      v153[1] = 0x80000001007640F0;
      v85._countAndFlagsBits = v122;
      v85._object = v41;
      String.append(_:)(v85);

      v86._countAndFlagsBits = 95;
      v86._object = 0xE100000000000000;
      String.append(_:)(v86);
      v87._countAndFlagsBits = v151;
      v87._object = v82;
      String.append(_:)(v87);

      LODWORD(v151) = v48;
      v88 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
      isa = Date._bridgeToObjectiveC()().super.isa;
      Date.init()();
      v90 = Date._bridgeToObjectiveC()().super.isa;
      v91 = *(v83 + 8);
      v91(v15, v84);
      v92 = [v88 localizedStringForDate:isa relativeToDate:v90];

      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      v96 = [objc_opt_self() mainBundle];
      v97 = String._bridgeToObjectiveC()();

      v98 = [v96 localizedStringForKey:v97 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v147;

      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1006D46C0;
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = sub_10000A788();
      *(v48 + 32) = v93;
      *(v48 + 40) = v95;
      LOBYTE(v48) = v151;
      v77 = String.init(format:_:)();
      v78 = v99;

      v91(v148, v84);
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        v52 = v48;
        v53 = v124;
        v54 = v123;
        v153[0] = 0;
        v153[1] = 0xE000000000000000;
        if (EnumCaseMultiPayload == 3)
        {
          _StringGuts.grow(_:)(19);

          strcpy(v153, "WORKOUT_TODAY_");
          HIBYTE(v153[1]) = -18;
        }

        else
        {
          _StringGuts.grow(_:)(23);

          v153[0] = 0xD000000000000012;
          v153[1] = 0x8000000100764090;
        }

        v55._countAndFlagsBits = v122;
        v55._object = v41;
        String.append(_:)(v55);

        v56._countAndFlagsBits = 95;
        v56._object = 0xE100000000000000;
        String.append(_:)(v56);
        v57._countAndFlagsBits = v151;
        v57._object = v50;
        String.append(_:)(v57);

        v58 = [objc_opt_self() mainBundle];
        v59 = String._bridgeToObjectiveC()();

        v79 = [v58 localizedStringForKey:v59 value:0 table:0];

        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v80;

        v81 = v52;
        if (!v52)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      v77 = 0;
      v78 = 0xE000000000000000;
    }

    v53 = v124;
    v54 = v123;
    v81 = v48;
    if (!v48)
    {
LABEL_31:
      v111 = [objc_opt_self() mainBundle];
      v112 = String._bridgeToObjectiveC()();
      v113 = [v111 localizedStringForKey:v112 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1006D1F70;
      *(v114 + 56) = &type metadata for String;
      v115 = sub_10000A788();
      *(v114 + 32) = v77;
      *(v114 + 40) = v78;
      *(v114 + 96) = &type metadata for Int;
      *(v114 + 104) = &protocol witness table for Int;
      v116 = v121;
      *(v114 + 64) = v115;
      *(v114 + 72) = v116;
      v117 = String.init(format:_:)();

      sub_1005882FC(v152);
      (*(v54 + 8))(v42, v53);
      return v117;
    }

LABEL_27:
    if (v81 != 1)
    {
      sub_1005882FC(v152);
      (*(v54 + 8))(v42, v53);
      return v77;
    }

    goto LABEL_31;
  }

  if (v40 == enum case for TrainingLoadBand.near(_:))
  {
    v41 = 0xE600000000000000;
    v44 = 0x594441455453;
    goto LABEL_13;
  }

  if (v40 == enum case for TrainingLoadBand.above(_:))
  {
    v41 = 0xE500000000000000;
    v44 = 0x45564F4241;
    goto LABEL_13;
  }

  if (v40 == enum case for TrainingLoadBand.wellAbove(_:))
  {
    v41 = 0xEA00000000004556;
    v44 = 0x4F42415F4C4C4557;
    goto LABEL_13;
  }

  v153[0] = 0;
  v153[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v118._object = 0x8000000100764070;
  v118._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v118);
  _print_unlocked<A, B>(_:_:)();
  v119._countAndFlagsBits = 46;
  v119._object = 0xE100000000000000;
  String.append(_:)(v119);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TrainingLoadLanguageGenerator.LastWorkoutState(uint64_t a1)
{
  result = qword_1008F3750;
  if (!qword_1008F3750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100585BF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v39 = a1;
  v41 = a2;
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v10 - 8);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for Date();
  v40 = *(v15 - 8);
  __chkstk_darwin(v15);
  v37 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  __chkstk_darwin(v20);
  v22 = &v36 - v21;
  Date.init()();
  static Calendar.current.getter();
  (*(v3 + 104))(v5, enum case for Calendar.Component.day(_:), v2);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  sub_100586B0C(v39);
  if (!v23)
  {
    sub_10000EA04(v14, &unk_1008F73A0, &unk_1006DB450);
    (*(v40 + 8))(v22, v15);
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v24 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v25) = Date.isSameDay(as:)();
  v26 = v40;
  v27 = *(v40 + 8);
  v27(v19, v15);
  v28 = v15;
  if ((v25 & 1) == 0)
  {
    v29 = v14;
    v30 = v38;
    sub_10001B104(v14, v38, &unk_1008F73A0, &unk_1006DB450);
    if ((*(v26 + 48))(v30, 1, v28) == 1)
    {
      sub_10000EA04(v30, &unk_1008F73A0, &unk_1006DB450);
    }

    else
    {
      v31 = v37;
      (*(v26 + 32))(v37, v30, v28);
      v32 = [v24 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v32) = Date.isSameDay(as:)();
      v27(v19, v28);
      if (v32)
      {
        v33 = [v24 startDate];

        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        v27(v31, v28);
        sub_10000EA04(v29, &unk_1008F73A0, &unk_1006DB450);
        v27(v22, v28);
        goto LABEL_12;
      }

      v27(v31, v28);
    }

    v34 = [v24 startDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000EA04(v29, &unk_1008F73A0, &unk_1006DB450);
    v27(v22, v28);
    goto LABEL_12;
  }

  sub_10000EA04(v14, &unk_1008F73A0, &unk_1006DB450);
  v27(v22, v15);
LABEL_12:
  type metadata accessor for TrainingLoadLanguageGenerator.LastWorkoutState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1005861C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  Language = type metadata accessor for TrainingLoadLanguageGenerator.LastWorkoutState(0);
  __chkstk_darwin(Language);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = sub_100140278(&qword_1008F36B8, &unk_1006FAB08);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  sub_100588298(a1, &v27 - v17);
  sub_100588298(a2, &v18[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v22 = v28;
    if (EnumCaseMultiPayload)
    {
      sub_100588298(v18, v12);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_15;
      }

      (*(v22 + 32))(v6, &v18[v20], v4);
      v23 = static Date.== infix(_:_:)();
      v24 = *(v22 + 8);
      v24(v6, v4);
      v24(v12, v4);
    }

    else
    {
      sub_100588298(v18, v15);
      if (swift_getEnumCaseMultiPayload())
      {
        v12 = v15;
LABEL_15:
        (*(v22 + 8))(v12, v4);
        goto LABEL_16;
      }

      (*(v22 + 32))(v9, &v18[v20], v4);
      v23 = static Date.== infix(_:_:)();
      v25 = *(v22 + 8);
      v25(v9, v4);
      v25(v15, v4);
    }

    sub_1005882FC(v18);
    return v23 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_12;
    }

LABEL_16:
    sub_10000EA04(v18, &qword_1008F36B8, &unk_1006FAB08);
    v23 = 0;
    return v23 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

LABEL_12:
  sub_1005882FC(v18);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_100586548(__n128 a1)
{
  v1 = type metadata accessor for LocalizationFeature();
  v34 = *(v1 - 8);
  v35 = v1;
  __chkstk_darwin(v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v5 = *(BaselineComparison - 8);
  __chkstk_darwin(BaselineComparison);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008F36C0, &qword_1006FAB70);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_100140278(&qword_1008F36C8, &qword_1006FAB78);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  TrainingLoadViewModel.trainingLoadDaySummaryForToday.getter();
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v18 = *(SampleDaySummary - 8);
  if ((*(v18 + 48))(v10, 1, SampleDaySummary) == 1)
  {
    sub_10000EA04(v10, &qword_1008F36C0, &qword_1006FAB70);
    v19 = 1;
  }

  else
  {
    TrainingLoadSampleDaySummary.trainingLoad.getter();
    (*(v18 + 8))(v10, SampleDaySummary);
    TrainingLoadBaselineComparison.chronicBaseline.getter();
    (*(v5 + 8))(v7, BaselineComparison);
    v19 = 0;
  }

  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v21 = *(ChronicBaseline - 8);
  (*(v21 + 56))(v16, v19, 1, ChronicBaseline);
  sub_10001B104(v16, v13, &qword_1008F36C8, &qword_1006FAB78);
  if ((*(v21 + 48))(v13, 1, ChronicBaseline) == 1)
  {
    sub_10000EA04(v13, &qword_1008F36C8, &qword_1006FAB78);
LABEL_10:
    v31 = [objc_opt_self() mainBundle];
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 localizedStringForKey:v32 value:0 table:0];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_11;
  }

  if ((*(v21 + 88))(v13, ChronicBaseline) != enum case for TrainingLoadChronicBaseline.insufficientData(_:))
  {
    (*(v21 + 8))(v13, ChronicBaseline);
    goto LABEL_10;
  }

  (*(v21 + 96))(v13, ChronicBaseline);
  v22 = sub_100140278(&qword_1008F36D8, qword_1006FAB88);
  v23 = *&v13[*(v22 + 48)];
  v24 = *&v13[*(v22 + 64)];
  result = sub_10000EA04(v13, &qword_1008F36D0, &qword_1006FAB80);
  v26 = v24 - v23;
  if (!__OFSUB__(v24, v23))
  {
    v28 = v34;
    v27 = v35;
    (*(v34 + 104))(v3, enum case for LocalizationFeature.workout(_:), v35);
    static Localization.workoutUILocalizedString(_:feature:)();
    (*(v28 + 8))(v3, v27);
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1006D46C0;
    *(v29 + 56) = &type metadata for Int;
    *(v29 + 64) = &protocol witness table for Int;
    *(v29 + 32) = v26;
    v30 = static String.localizedStringWithFormat(_:_:)();

LABEL_11:
    sub_10000EA04(v16, &qword_1008F36C8, &qword_1006FAB78);
    return v30;
  }

  __break(1u);
  return result;
}

void sub_100586B0C(uint64_t a1)
{
  v54 = type metadata accessor for EffortUtilities.WorkoutAndActivityKey();
  v2 = *(v54 - 8);
  __chkstk_darwin(v54);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v43 - v6;
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider___observationRegistrar;
  v59[0] = a1;
  v52 = sub_100588358(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
  v53 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(a1 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyListForTheWeek);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return;
  }

  v57 = v7;
  v11 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutsWithEffortQuantities;
  v12 = v9 + 32;

  v55 = v11;
  swift_beginAccess();
  v13 = 0;
  v51 = (v2 + 8);
  v49 = a1;
  v47 = v10;
  v45 = v4;
  v46 = v9;
  v44 = v9 + 32;
  while (1)
  {
    if (v13 >= *(v9 + 16))
    {
      goto LABEL_43;
    }

    sub_100007C5C(v12 + 40 * v13, v59);
    sub_100140278(&unk_1008E4E60, &qword_1006D8F30);
    sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_4;
    }

    v14 = v58;
    v15 = [v58 workoutActivityType];
    v56 = v14;
    if (v15 == 82)
    {
      break;
    }

    v35 = v14;
    EffortUtilities.WorkoutAndActivityKey.init(workout:activity:)();
    swift_getKeyPath();
    v59[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v36 = *(a1 + v55);
    if (*(v36 + 16))
    {

      v37 = sub_1004C5AEC(v4);
      if (v38)
      {
        v39 = *(*(v36 + 56) + 8 * v37);
        v40 = v39;

        if (v39)
        {
          [v40 _value];
          v42 = v41;

          (*v51)(v4, v54);
          if (v42 != 0.0)
          {
LABEL_39:

            return;
          }

          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    (*v51)(v4, v54);
LABEL_34:
    a1 = v49;
LABEL_4:
    if (++v13 == v10)
    {

      return;
    }
  }

  v16 = [v14 workoutActivities];
  sub_1000059F8(0, &qword_1008EAF90, HKWorkoutActivity_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
LABEL_36:

    v10 = v47;
    goto LABEL_4;
  }

LABEL_10:
  v48 = v13;
  swift_beginAccess();
  v19 = 0;
  v50 = v17 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if (v19 < *(v50 + 16))
    {
      v20 = *(v17 + 8 * v19 + 32);
LABEL_17:
      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      v23 = [v20 workoutConfiguration];
      v24 = [v23 activityType];

      if (v24 == 83)
      {
      }

      else
      {
        v25 = v56;
        v26 = v21;
        v27 = v57;
        EffortUtilities.WorkoutAndActivityKey.init(workout:activity:)();
        swift_getKeyPath();
        v59[0] = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v28 = *(a1 + v55);
        if (*(v28 + 16))
        {

          v29 = sub_1004C5AEC(v27);
          if (v30)
          {
            v31 = *(*(v28 + 56) + 8 * v29);
            v32 = v31;

            if (v31)
            {
              [v32 _value];
              v34 = v33;

              (*v51)(v57, v54);
              a1 = v49;
              if (v34 != 0.0)
              {

                goto LABEL_39;
              }
            }

            else
            {
              (*v51)(v57, v54);

              a1 = v49;
            }

            goto LABEL_12;
          }

          v27 = v57;
        }

        (*v51)(v27, v54);
      }

LABEL_12:
      ++v19;
      if (v22 == v18)
      {

        v4 = v45;
        v9 = v46;
        v10 = v47;
        v12 = v44;
        v13 = v48;
        goto LABEL_4;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_100587198()
{
  v0 = sub_100140278(&qword_1008F2808, &qword_1006F94D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v29 - v1;
  Band = type metadata accessor for TrainingLoadBand();
  v4 = *(Band - 8);
  __chkstk_darwin(Band);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v10 = *(SampleDaySummary - 8);
  __chkstk_darwin(SampleDaySummary);
  v41 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  View = TrainingLoadViewModel.chronologicalTrainingLoadDaySummaries.getter();
  v13 = *(View + 16);
  v30 = v13;
  if (v13)
  {
    v33 = v6;
    v14 = 0;
    v15 = 0;
    v40 = v10;
    v37 = v10 + 8;
    v38 = v10 + 16;
    v35 = (v4 + 32);
    v36 = (v4 + 48);
    v44 = enum case for TrainingLoadBand.wellAbove(_:);
    v34 = (v4 + 104);
    v16 = (v4 + 8);
    v31 = enum case for TrainingLoadBand.above(_:);
    v32 = v2;
    v39 = View;
    while (v13 <= *(View + 16))
    {
      v45 = v14;
      v20 = v16;
      --v13;
      v21 = v40;
      v22 = v41;
      v23 = SampleDaySummary;
      (*(v40 + 16))(v41, View + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v13, SampleDaySummary);
      TrainingLoadSampleDaySummary.band.getter();
      (*(v21 + 8))(v22, v23);
      if ((*v36)(v2, 1, Band) == 1)
      {

        sub_10000EA04(v2, &qword_1008F2808, &qword_1006F94D0);
        return v45;
      }

      v43 = v15;
      (*v35)(v9, v2, Band);
      v24 = v33;
      v25 = *v34;
      (*v34)(v33, v44, Band);
      sub_100588358(&qword_1008F36B0, &type metadata accessor for TrainingLoadBand, &protocol conformance descriptor for TrainingLoadBand);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v16 = v20;
      v26 = v24;
      v27 = *v16;
      (*v16)(v26, Band);
      if (v47 != v46)
      {
        v25(v26, v31, Band);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v27(v26, Band);
        if (v47 != v46)
        {

          v27(v9, Band);
          return v45;
        }
      }

      v17 = v25;
      v18 = v26;
      v14 = v45 + 1;
      v17(v18, v44, Band);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v27(v18, Band);
      v27(v9, Band);
      v19 = v43;
      if ((v43 & 0xFE) == 0)
      {
        v19 = 1;
      }

      if (v47 == v46)
      {
        v15 = 2;
      }

      else
      {
        v15 = v19;
      }

      v2 = v32;
      View = v39;
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

LABEL_16:

  return v30;
}

uint64_t sub_100587688()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100587198();
  if (result < 6)
  {
    return 0;
  }

  if (!v5)
  {
    static WOLog.trainingLoad.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v7))
    {

      (*(v1 + 8))(v3, v0);
      return 0;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return result;
}

uint64_t sub_100587828(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v39 = a1;
  v2 = type metadata accessor for Logger();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Language = type metadata accessor for TrainingLoadLanguageGenerator.LastWorkoutState(0);
  __chkstk_darwin(Language);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Band = type metadata accessor for TrainingLoadBand();
  v37 = *(Band - 8);
  v38 = Band;
  __chkstk_darwin(Band);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Calendar();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DateComponents();
  v13 = *(v43 - 8);
  __chkstk_darwin(v43);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_100140278(&unk_1008E51B0, &unk_1006D8360);
  v16 = type metadata accessor for Calendar.Component();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006D46C0;
  (*(v17 + 104))(v19 + v18, enum case for Calendar.Component.dayOfYear(_:), v16);
  sub_10001C970(v19);
  swift_setDeallocating();
  (*(v17 + 8))(v19 + v18, v16);
  swift_deallocClassInstance();
  Date.init()();
  Calendar.dateComponents(_:from:)();

  (*(v45 + 8))(v9, v46);
  (*(v10 + 8))(v12, v44);
  v20 = DateComponents.dayOfYear.getter();
  LOBYTE(v12) = v21;
  (*(v13 + 8))(v15, v43);
  if (v12)
  {
    v22 = v40;
    static WOLog.trainingLoad.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Could not determine the day of the year, defaulting to variant 1.", v25, 2u);
    }

    (*(v41 + 8))(v22, v42);
    return 49;
  }

  else
  {
    v28 = v36;
    v27 = v37;
    v29 = v38;
    (*(v37 + 104))(v36, enum case for TrainingLoadBand.near(_:), v38);
    sub_100588358(&qword_1008F36B0, &type metadata accessor for TrainingLoadBand, &protocol conformance descriptor for TrainingLoadBand);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v27 + 8))(v28, v29);
    if (v48 == v47 && (v30 = v33, swift_storeEnumTagMultiPayload(), v31 = sub_1005861C4(v35, v30), sub_1005882FC(v30), (v31 & 1) != 0))
    {
      v32 = 5;
    }

    else
    {
      v32 = 4;
    }

    v48 = v20 % v32 + 1;
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

uint64_t sub_100587E48(__n128 a1)
{
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v2 = *(BaselineComparison - 8);
  __chkstk_darwin(BaselineComparison);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008F36C0, &qword_1006FAB70);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_100140278(&qword_1008F36C8, &qword_1006FAB78);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  TrainingLoadViewModel.trainingLoadDaySummaryForToday.getter();
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v15 = *(SampleDaySummary - 8);
  if ((*(v15 + 48))(v7, 1, SampleDaySummary) == 1)
  {
    sub_10000EA04(v7, &qword_1008F36C0, &qword_1006FAB70);
    v16 = 1;
  }

  else
  {
    TrainingLoadSampleDaySummary.trainingLoad.getter();
    (*(v15 + 8))(v7, SampleDaySummary);
    TrainingLoadBaselineComparison.chronicBaseline.getter();
    (*(v2 + 8))(v4, BaselineComparison);
    v16 = 0;
  }

  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v18 = *(ChronicBaseline - 8);
  (*(v18 + 56))(v13, v16, 1, ChronicBaseline);
  sub_10001B104(v13, v10, &qword_1008F36C8, &qword_1006FAB78);
  if ((*(v18 + 48))(v10, 1, ChronicBaseline) == 1)
  {
    sub_10000EA04(v10, &qword_1008F36C8, &qword_1006FAB78);
  }

  else if ((*(v18 + 88))(v10, ChronicBaseline) == enum case for TrainingLoadChronicBaseline.insufficientData(_:))
  {
    (*(v18 + 96))(v10, ChronicBaseline);
    sub_10000EA04(v10, &qword_1008F36D0, &qword_1006FAB80);
  }

  else
  {
    (*(v18 + 8))(v10, ChronicBaseline);
  }

  v19 = [objc_opt_self() mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 localizedStringForKey:v20 value:0 table:0];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000EA04(v13, &qword_1008F36C8, &qword_1006FAB78);
  return v22;
}

uint64_t sub_100588298(uint64_t a1, uint64_t a2)
{
  Language = type metadata accessor for TrainingLoadLanguageGenerator.LastWorkoutState(0);
  (*(*(Language - 8) + 16))(a2, a1, Language);
  return a2;
}

uint64_t sub_1005882FC(uint64_t a1)
{
  Language = type metadata accessor for TrainingLoadLanguageGenerator.LastWorkoutState(0);
  (*(*(Language - 8) + 8))(a1, Language);
  return a1;
}

uint64_t sub_100588358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005883B0(uint64_t a1, uint64_t a2)
{
  sub_100588410(319, a2);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100588410(uint64_t a1, uint64_t a2)
{
  if (!qword_1008F3760)
  {
    v2 = type metadata accessor for Date();
    if (!v3)
    {
      atomic_store(v2, &qword_1008F3760);
    }
  }
}

void sub_100588458(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (qword_1008DA658 != -1)
  {
    swift_once();
  }

  v6 = UILabel.withFont(_:)();
  v7 = objc_opt_self();
  v8 = [v7 secondaryLabelColor];
  v9 = UILabel.withTextColor(_:)();

  v10 = String._bridgeToObjectiveC()();
  [v9 setText:v10];

  v11 = UILabel.withFont(_:)();
  v55 = v7;
  v12 = [v7 secondaryLabelColor];
  v13 = UILabel.withTextColor(_:)();

  v14 = objc_opt_self();
  v15 = [v14 mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = v4;
  v18 = [v15 localizedStringForKey:v16 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = String._bridgeToObjectiveC()();
  [v13 setText:v19];

  if ([a3 supportsDistanceForWorkout:a1 workoutActivity:0])
  {
    v20 = v17;
    v21 = UILabel.withFont(_:)();
    v22 = [v55 secondaryLabelColor];
    v23 = UILabel.withTextColor(_:)();

    v24 = [v14 mainBundle];
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 localizedStringForKey:v25 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();
    [v23 setText:v27];

    v28 = UILabel.withFont(_:)();
    v29 = [v55 secondaryLabelColor];
    v30 = UILabel.withTextColor(_:)();

    v31 = [v14 mainBundle];
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 localizedStringForKey:v32 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = String._bridgeToObjectiveC()();
    [v30 setText:v34];

LABEL_9:
    v48 = v20;
    goto LABEL_10;
  }

  v35 = UILabel.withFont(_:)();
  v36 = [v55 secondaryLabelColor];
  v37 = UILabel.withTextColor(_:)();

  if (a2 != 1)
  {
    v49 = String._bridgeToObjectiveC()();
    [v37 setText:v49];

    v20 = v17;
    v50 = UILabel.withFont(_:)();
    v51 = [v55 secondaryLabelColor];
    v52 = UILabel.withTextColor(_:)();

    v34 = String._bridgeToObjectiveC()();
    [v52 setText:v34];

    goto LABEL_9;
  }

  v38 = [a3 fitnessUIFormattingManager];
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 localizationKeyForEnergyBaseKey:v39];

  if (!v40)
  {
    __break(1u);
    return;
  }

  v41 = [v14 mainBundle];
  v42 = [v41 localizedStringForKey:v40 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = String._bridgeToObjectiveC()();
  [v37 setText:v43];

  v44 = v17;
  v45 = UILabel.withFont(_:)();
  v46 = [v55 secondaryLabelColor];
  v47 = UILabel.withTextColor(_:)();

  v48 = v44;
  v34 = String._bridgeToObjectiveC()();
  [v47 setText:v34];

LABEL_10:
  [*(v48 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:1];

  sub_1002251BC();
}

id sub_100588D88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutDetailFourColumnTrackLapTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100588DE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  v8 = v7;
  if (a1)
  {
    v14 = a1;
    v15 = [a7 fitnessUIFormattingManager];
    sub_1002CE038(a6 & 1);
    v16 = objc_opt_self();
    v17 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v14, "lapIndex")}];
    v18 = [v16 localizedStringFromNumber:v17 numberStyle:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = *(v8 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel);

    v20 = String._bridgeToObjectiveC()();
    [v19 setText:v20];

    v21 = v14;
    v60 = v15;
    v22 = [v21 formattedDurationValueWithFormattingManager:?];
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = *(v8 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel);
      v25 = String._bridgeToObjectiveC()();
    }

    else
    {
      v25 = 0;
      v24 = *(v8 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel);
    }

    [v24 setText:{v25, a4}];

    if ([a7 supportsDistanceForWorkout:a2 workoutActivity:0])
    {
      v26 = [v21 distance];

      if (v26)
      {
        v27 = [objc_opt_self() meterUnit];
        [v26 doubleValueForUnit:v27];
        v29 = v28;
      }

      else
      {
        v29 = 0.0;
      }

      v38 = [v60 localizedStringWithDistanceInMeters:a3 distanceUnit:0 unitStyle:objc_msgSend(objc_opt_self() decimalPrecision:"defaultPrecisionForDistanceUnit:" roundingMode:a3) decimalTrimmingMode:{2, 1, v29}];
      if (!v38)
      {

LABEL_23:
        v49 = FIUIPaceFormatForWorkoutActivityType();
        v50 = [v21 formattedPaceUsingFormatType:v49 formattingManager:v60 distanceType:FIUIDistanceTypeForActivityType()];

        if (v50)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v51 = *(v8 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel);
          v50 = String._bridgeToObjectiveC()();
        }

        else
        {
          v51 = *(v8 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel);
        }

        [v51 setText:v50];

        return;
      }

      v39 = v38;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = [v60 localizedShortUnitStringForDistanceUnit:a3];
      if (v43)
      {
        v44 = v43;

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000FCBC();
        v45 = StringProtocol.localizedUppercase.getter();
        v47 = v46;

        if (qword_1008DA668 != -1)
        {
          swift_once();
        }

        v48 = sub_1004C154C(v40, v42, v45, v47, qword_1009252A0);

        [*(v8 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel) setAttributedText:v48];

        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_37;
    }

    if (a5 == 1)
    {
      v30 = [v60 unitManager];
      if (!v30)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      v31 = v30;
      v32 = [v30 userActiveEnergyBurnedUnit];

      v33 = [v21 formattedActiveEnergyValueForUnit:v32];
      if (v33)
      {
        v34 = v33;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      v52 = *(v8 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
      v53 = [objc_opt_self() energyColors];
      if (!v53)
      {
        goto LABEL_38;
      }

      v54 = v53;

      v55 = [v54 nonGradientTextColor];

      [v52 setTextColor:v55];
      v56 = v52;

      if (v36)
      {
        v57 = String._bridgeToObjectiveC()();
      }

      else
      {
        v57 = 0;
      }

      [v56 setText:v57];

      v37 = v59;
    }

    else
    {

      v37 = v60;
    }
  }

  else
  {

    sub_100588458(a2, a5, a7);
  }
}

void sub_1005894A0(uint64_t a1@<X1>, char *a2@<X8>)
{
  v36 = a2;
  v33 = a1;
  v2 = type metadata accessor for DataLinkCommand();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v31[1] = v3;
  v32 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v4 - 8);
  v31[0] = v31 - v5;
  v6 = sub_100140278(&qword_1008F37B8, &qword_1006FAC60);
  __chkstk_darwin(v6 - 8);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v31 - v10;
  v12 = sub_100140278(&qword_1008F37C0, &qword_1006FAC68);
  __chkstk_darwin(v12 - 8);
  v14 = v31 - v13;
  Session.termination.getter();
  v15 = type metadata accessor for Termination();
  v16 = 1;
  v17 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  sub_10000EA04(v14, &qword_1008F37C0, &qword_1006FAC68);
  if (v17 == 1)
  {
    Session.playback.getter();
    v18 = type metadata accessor for Playback();
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    v21 = v20(v11, 1, v18);
    sub_10000EA04(v11, &qword_1008F37B8, &qword_1006FAC60);
    if (v21 != 1)
    {
      Session.playback.getter();
      if (v20(v8, 1, v18) == 1)
      {
        sub_10000EA04(v8, &qword_1008F37B8, &qword_1006FAC60);
LABEL_7:
        v24 = type metadata accessor for TaskPriority();
        v25 = v31[0];
        (*(*(v24 - 8) + 56))(v31[0], 1, 1, v24);
        v26 = v34;
        v27 = v32;
        v28 = v35;
        (*(v34 + 16))(v32, v33, v35);
        v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = 0;
        *(v30 + 24) = 0;
        (*(v26 + 32))(v30 + v29, v27, v28);
        sub_10026E198(0, 0, v25, &unk_1006FAC78, v30);

        v16 = 0;
        goto LABEL_8;
      }

      v22 = Playback.state.getter();
      (*(v19 + 8))(v8, v18);
      v37 = v22;
      v38 = BYTE4(v22) & 1;
      sub_100140278(&qword_1008F37C8, &qword_1006FAC80);
      PortableEnum.unwrapped.getter();
      if (v39 == 4)
      {
        goto LABEL_7;
      }

      v23 = Playback.State.rawValue.getter();
      if (v23 != Playback.State.rawValue.getter())
      {
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  *v36 = v16;
}

uint64_t sub_100589904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for DataLinkCommand();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1005899C4, 0, 0);
}

uint64_t sub_1005899C4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for DataLinkCommand.resume(_:) && v4 != enum case for DataLinkCommand.pause(_:) && v4 != enum case for DataLinkCommand.end(_:))
  {
    (*(v0[4] + 8))(v0[5], v0[3]);
  }

  v5 = objc_allocWithZone(NSUserActivity);
  v6 = String._bridgeToObjectiveC()();

  v0[6] = [v5 initWithActivityType:v6];

  v0[7] = objc_opt_self();
  v0[8] = type metadata accessor for MainActor();
  v0[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100589BBC, v8, v7);
}

uint64_t sub_100589BBC()
{
  v1 = *(v0 + 56);

  *(v0 + 80) = [v1 sharedApplication];

  return _swift_task_switch(sub_100589C44, 0, 0);
}

uint64_t sub_100589C44(uint64_t a1)
{
  *(v1 + 88) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100589CD0, v3, v2);
}

uint64_t sub_100589CD0()
{
  v1 = *(v0 + 80);

  *(v0 + 96) = [v1 connectedScenes];

  return _swift_task_switch(sub_100589D58, 0, 0);
}

uint64_t sub_100589D58()
{
  v1 = *(v0 + 96);
  sub_1000059F8(0, &qword_1008EDF60, UIScene_ptr);
  sub_10045DB64();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1005EADB0(v2);
  *(v0 + 104) = v3;

  if (v3)
  {
    *(v0 + 112) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100589E7C, v5, v4);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100589E7C()
{
  v1 = *(v0 + 104);

  *(v0 + 120) = [v1 delegate];

  return _swift_task_switch(sub_100589F04, 0, 0);
}

uint64_t sub_100589F04()
{
  if (v0[15])
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    v0[16] = v1;
    if (v1)
    {
      v0[17] = static MainActor.shared.getter();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_10058A008, v3, v2);
    }

    v4 = v0[6];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = v0[6];
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10058A008()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 48);

  [v1 handleAppIntentWithUserActivity:v2];

  return _swift_task_switch(sub_10058A088, 0, 0);
}

uint64_t sub_10058A088()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_10058A0FC(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for DataLinkCommand();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v8 - 8);
  v10 = v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v14 + v13, v7, v4);
  sub_10026E198(0, 0, v10, &unk_1006FAC50, v14);

  *a2 = 3;
}

uint64_t sub_10058A304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = type metadata accessor for DataLinkCommand();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[13] = v8;
  v4[14] = *(v8 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  v4[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10058A534, v10, v9);
}

uint64_t sub_10058A534()
{
  v48 = v0;
  v1 = *(v0 + 136);

  type metadata accessor for DataLinkMonitor();
  v2 = static DataLinkMonitor.shared.getter();
  DataLinkMonitor.client.getter();

  dispatch thunk of DataLinkClient.sessionUUID.getter();

  v3 = type metadata accessor for UUID();
  LODWORD(v2) = (*(*(v3 - 8) + 48))(v1, 1, v3);
  sub_10000EA04(v1, &unk_1008DB8A0, qword_1006DBA20);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  if (v2 == 1)
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);
    _StringGuts.grow(_:)(24);

    v47[0] = 0xD00000000000001ELL;
    v47[1] = 0x800000010074E0E0;
    sub_10058D280(&qword_1008E1C48, &type metadata accessor for DataLinkCommand, &protocol conformance descriptor for DataLinkCommand);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    URL.init(string:)();

    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      sub_10000EA04(*(v0 + 96), &unk_1008EB5B0, &unk_1006D2BF0);
    }

    else
    {
      v15 = *(v0 + 120);
      v16 = *(v0 + 128);
      v17 = *(v0 + 104);
      v18 = *(v0 + 112);
      (*(v18 + 32))(v16, *(v0 + 96), v17);
      static WOLog.dataLink.getter();
      (*(v18 + 16))(v15, v16, v17);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 112);
      v23 = *(v0 + 120);
      v24 = *(v0 + 104);
      v26 = *(v0 + 80);
      v25 = *(v0 + 88);
      v27 = *(v0 + 72);
      if (v21)
      {
        v45 = v20;
        v28 = swift_slowAlloc();
        v46 = v27;
        v47[0] = swift_slowAlloc();
        v29 = v47[0];
        *v28 = 136315138;
        sub_10058D280(&unk_1008F5500, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        log = v19;
        v44 = v25;
        v32 = v31;
        v33 = *(v22 + 8);
        v33(v23, v24);
        v34 = sub_10000AFDC(v30, v32, v47);

        *(v28 + 4) = v34;
        _os_log_impl(&_mh_execute_header, log, v45, "Sending %s to app", v28, 0xCu);
        sub_100005A40(v29);

        v35 = v33;

        (*(v26 + 8))(v44, v46);
      }

      else
      {

        v35 = *(v22 + 8);
        v35(v23, v24);
        (*(v26 + 8))(v25, v27);
      }

      if (qword_1008DACC0 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 128);
      v37 = *(v0 + 104);
      v38 = type metadata accessor for NavigatorContext();
      v39 = objc_allocWithZone(v38);
      v39[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
      *(v0 + 16) = v39;
      *(v0 + 24) = v38;
      v40 = objc_msgSendSuper2((v0 + 16), "init");
      sub_1004DA120(v36, v40);

      v35(v36, v37);
    }
  }

  else
  {
    v10 = *(v0 + 64);
    v11 = *(v0 + 48);
    v12 = static DataLinkMonitor.shared.getter();
    DataLinkMonitor.client.getter();

    (*(v11 + 16))(v10, v4, v5);
    v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v14 = swift_allocObject();
    (*(v11 + 32))(v14 + v13, v10, v5);
    dispatch thunk of DataLinkClient.send(command:acknowledged:)();
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_10058AAAC(int a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v5 = type metadata accessor for DataLinkCommand();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.dataLink.getter();
  (*(v6 + 16))(v8, a3, v5);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v10;
    v16 = v15;
    v26 = swift_slowAlloc();
    v30 = v26;
    *v16 = 136315650;
    sub_10058D280(&qword_1008E1C48, &type metadata accessor for DataLinkCommand, &protocol conformance descriptor for DataLinkCommand);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v9;
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = sub_10000AFDC(v17, v19, &v30);

    *(v16 + 4) = v20;
    *(v16 + 12) = 1024;
    *(v16 + 14) = v28 & 1;
    *(v16 + 18) = 2080;
    v29 = a2;
    sub_100140278(&qword_1008DFED8, qword_1006DB480);
    v21 = Optional.description.getter();
    v23 = sub_10000AFDC(v21, v22, &v30);

    *(v16 + 20) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Sent %s: %{BOOL}d, %s", v16, 0x1Cu);
    swift_arrayDestroy();

    return (*(v27 + 8))(v12, v25);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_10058AE14@<X0>(void *a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v42 = a2;
  v5 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v5 - 8);
  v40 = &v38 - v6;
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v41 = type metadata accessor for WorkoutPlan.Workout();
  v8 = *(v41 - 8);
  __chkstk_darwin(v41);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WorkoutPlan();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutGoal();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SingleGoalWorkout();
  v44 = *(v50 - 8);
  __chkstk_darwin(v50);
  v43 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WorkoutFeatures();
  v49[3] = v18;
  v49[4] = sub_10058D280(&qword_1008E4E00, &type metadata accessor for WorkoutFeatures, &protocol conformance descriptor for WorkoutFeatures);
  v19 = sub_100005994(v49);
  (*(*(v18 - 8) + 104))(v19, enum case for WorkoutFeatures.Kahana(_:), v18);
  LOBYTE(v18) = isFeatureEnabled(_:)();
  sub_100005A40(v49);
  if ((v18 & 1) != 0 || (result = os_variant_has_internal_content(), (result & 1) == 0))
  {
    v39 = a3;
    v22 = [a1 workoutActivityType];
    [v22 effectiveTypeIdentifier];

    [a1 location];
    [a1 swimmingLocationType];
    (*(v14 + 16))(v16, v42, v13);
    v23 = v43;
    SingleGoalWorkout.init(activity:location:swimmingLocation:goal:)();
    v24 = v44;
    (*(v44 + 16))(v10, v23, v50);
    (*(v8 + 104))(v10, enum case for WorkoutPlan.Workout.goal(_:), v41);
    UUID.init()();
    v25 = v45;
    WorkoutPlan.init(_:id:)();
    v26 = objc_allocWithZone(NSUserActivity);
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 initWithActivityType:v27];

    sub_100140278(&unk_1008F2360, &unk_1006DCB90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D46C0;
    strcpy(v49, "siri.workout");
    BYTE5(v49[1]) = 0;
    HIWORD(v49[1]) = -5120;
    AnyHashable.init<A>(_:)();
    v30 = v48;
    v31 = WorkoutPlan.dataRepresentation.getter();
    if (v30)
    {

      (*(v46 + 8))(v25, v47);
      (*(v24 + 8))(v23, v50);
      sub_100282EF8(inited + 32);
      swift_setDeallocating();
      sub_100140278(&qword_1008F4FA0, &qword_1006FDBE0);
      return swift_arrayDestroy();
    }

    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v31;
    *(inited + 80) = v32;
    sub_1004CA070(inited);
    swift_setDeallocating();
    sub_10000EA04(inited + 32, &qword_1008F4FA0, &qword_1006FDBE0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v28 setUserInfo:isa];

    v34 = type metadata accessor for TaskPriority();
    v35 = v40;
    (*(*(v34 - 8) + 56))(v40, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v28;
    v37 = v28;
    sub_10026E198(0, 0, v35, &unk_1006FAC98, v36);

    (*(v46 + 8))(v25, v47);
    result = (*(v24 + 8))(v23, v50);
    v21 = 3;
    a3 = v39;
  }

  else
  {
    v21 = 1;
  }

  *a3 = v21;
  return result;
}

uint64_t sub_10058B588()
{
  v0[3] = objc_opt_self();
  v0[4] = type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10058B630, v2, v1);
}

uint64_t sub_10058B630()
{
  v1 = *(v0 + 24);

  *(v0 + 48) = [v1 sharedApplication];

  return _swift_task_switch(sub_10058B6B8, 0, 0);
}

uint64_t sub_10058B6B8(uint64_t a1)
{
  *(v1 + 56) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10058B744, v3, v2);
}

uint64_t sub_10058B744()
{
  v1 = *(v0 + 48);

  *(v0 + 64) = [v1 connectedScenes];

  return _swift_task_switch(sub_10058B7CC, 0, 0);
}

uint64_t sub_10058B7CC()
{
  v1 = v0[8];
  sub_1000059F8(0, &qword_1008EDF60, UIScene_ptr);
  sub_10045DB64();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1005EADB0(v2);
  v0[9] = v3;

  if (v3)
  {
    v0[10] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10058B8E0, v5, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10058B8E0()
{
  v1 = *(v0 + 72);

  *(v0 + 88) = [v1 delegate];

  return _swift_task_switch(sub_10058B968, 0, 0);
}

uint64_t sub_10058B968()
{
  if (v0[11])
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    v0[12] = v1;
    if (v1)
    {
      v0[13] = static MainActor.shared.getter();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_10058BA54, v3, v2);
    }

    swift_unknownObjectRelease();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_10058BA54()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);

  [v1 handleAppIntentWithUserActivity:v2];

  return _swift_task_switch(sub_10058BAD4, 0, 0);
}

uint64_t sub_10058BAD4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10058BB34(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for WorkoutGoal();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v2[11] = *(v4 + 64);
  v2[12] = swift_task_alloc();
  v5 = sub_100140278(&qword_1008ED098, &qword_1006F07E8);
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v2[15] = *(v6 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v7 = sub_100140278(&qword_1008ED090, &qword_1006F07E0);
  v2[18] = v7;
  v8 = *(v7 - 8);
  v2[19] = v8;
  v2[20] = *(v8 + 64);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[24] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[25] = v10;
  v2[26] = v9;

  return _swift_task_switch(sub_10058BD34, v10, v9);
}

uint64_t sub_10058BD34()
{
  v28 = v0[21];
  v29 = v0[20];
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v21 = v0[15];
  v22 = v0[22];
  v5 = v0[13];
  v6 = v0[10];
  v25 = v0[12];
  v23 = v0[8];
  v24 = v0[9];
  v26 = v0[7];
  v27 = v0[18];
  type metadata accessor for Dependencies();
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  static Dependencies.standard(queue:)();

  sub_100140278(&qword_1008F0F30, &unk_1006F63F0);
  Dependencies.resolve<A>(failureHandler:)();

  sub_1000066AC(v0 + 2, v0[5]);
  dispatch thunk of SessionClientProtocol.queryActiveSession()();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000A732C;
  *(v8 + 24) = 0;
  (*(v4 + 16))(v2, v3, v5);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v2, v5);
  v11 = (v10 + ((v21 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = sub_10058D770;
  v11[1] = v8;
  Promise.init(asyncOperation:)();
  (*(v4 + 8))(v3, v5);
  (*(v6 + 16))(v25, v23, v24);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v26;
  (*(v6 + 32))(v13 + v12, v25, v24);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10058D4FC;
  *(v14 + 24) = v13;
  (*(v1 + 16))(v28, v22, v27);
  v15 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v16 = swift_allocObject();
  (*(v1 + 32))(v16 + v15, v28, v27);
  v17 = (v16 + ((v29 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_10058D774;
  v17[1] = v14;
  v18 = v26;
  Promise.init(asyncOperation:)();
  v19 = *(v1 + 8);
  v0[27] = v19;
  v0[28] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v22, v27);

  return _swift_task_switch(sub_10058C104, 0, 0);
}

uint64_t sub_10058C104()
{
  v1 = v0[23];
  v2 = swift_task_alloc();
  v0[29] = v2;
  *(v2 + 16) = "FitnessApp/WorkoutControlsIntents.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 98;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_10058C218;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 31, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_10058D778, v2, &type metadata for WorkoutControlResult);
}

uint64_t sub_10058C218()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_10058C454;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 216);
    v7 = *(v2 + 184);
    v8 = *(v2 + 144);
    *(v2 + 249) = *(v2 + 248);

    v6(v7, v8);
    v4 = *(v2 + 200);
    v5 = *(v2 + 208);
    v3 = sub_10058C390;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10058C390()
{
  v1 = *(v0 + 249);

  sub_100005A40((v0 + 16));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10058C454()
{
  (*(v0 + 216))(*(v0 + 184), *(v0 + 144));
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_10058C4C0, v1, v2);
}

uint64_t sub_10058C4C0()
{

  sub_100005A40((v0 + 16));

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_10058C578(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for DataLinkCommand();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008ED098, &qword_1006F07E8);
  v1[12] = v4;
  v5 = *(v4 - 8);
  v1[13] = v5;
  v1[14] = *(v5 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v6 = sub_100140278(&qword_1008ED090, &qword_1006F07E0);
  v1[17] = v6;
  v7 = *(v6 - 8);
  v1[18] = v7;
  v1[19] = *(v7 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[23] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[24] = v9;
  v1[25] = v8;

  return _swift_task_switch(sub_10058C778, v9, v8);
}

uint64_t sub_10058C778()
{
  v26 = v0[21];
  v29 = v0[20];
  v30 = v0[19];
  v27 = v0[18];
  v28 = v0[17];
  v1 = v0[16];
  v24 = v0[15];
  v25 = v0[14];
  v22 = v0[13];
  v23 = v0[12];
  v31 = v0[11];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v21 = v4;
  type metadata accessor for Dependencies();
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v5 = static OS_dispatch_queue.main.getter();
  static Dependencies.standard(queue:)();

  sub_100140278(&qword_1008F0F30, &unk_1006F63F0);
  Dependencies.resolve<A>(failureHandler:)();

  sub_1000066AC(v0 + 2, v0[5]);
  dispatch thunk of SessionClientProtocol.queryActiveSession()();
  v20 = *(v2 + 16);
  v20(v31, v4, v3);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v19 = *(v2 + 32);
  v19(v7 + v6, v31, v3);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10058D034;
  *(v8 + 24) = v7;
  (*(v22 + 16))(v24, v1, v23);
  v9 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v10 = swift_allocObject();
  (*(v22 + 32))(v10 + v9, v24, v23);
  v11 = (v10 + ((v25 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = sub_10058D0B0;
  v11[1] = v8;
  Promise.init(asyncOperation:)();
  (*(v22 + 8))(v1, v23);
  v20(v31, v21, v3);
  v12 = swift_allocObject();
  v19(v12 + v6, v31, v3);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10058D0E0;
  *(v13 + 24) = v12;
  (*(v27 + 16))(v29, v26, v28);
  v14 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v15 = swift_allocObject();
  (*(v27 + 32))(v15 + v14, v29, v28);
  v16 = (v15 + ((v30 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_10058D15C;
  v16[1] = v13;
  Promise.init(asyncOperation:)();
  v17 = *(v27 + 8);
  v0[26] = v17;
  v0[27] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v26, v28);

  return _swift_task_switch(sub_10058CBC0, 0, 0);
}

uint64_t sub_10058CBC0()
{
  v1 = v0[22];
  v2 = swift_task_alloc();
  v0[28] = v2;
  *(v2 + 16) = "FitnessApp/WorkoutControlsIntents.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 61;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_10058CCD4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 30, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_10058D18C, v2, &type metadata for WorkoutControlResult);
}

uint64_t sub_10058CCD4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_10058CF10;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 208);
    v7 = *(v2 + 176);
    v8 = *(v2 + 136);
    *(v2 + 241) = *(v2 + 240);

    v6(v7, v8);
    v4 = *(v2 + 192);
    v5 = *(v2 + 200);
    v3 = sub_10058CE4C;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10058CE4C()
{
  v1 = *(v0 + 241);

  sub_100005A40((v0 + 16));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10058CF10()
{
  (*(v0 + 208))(*(v0 + 176), *(v0 + 136));
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return _swift_task_switch(sub_10058CF7C, v1, v2);
}

uint64_t sub_10058CF7C()
{

  sub_100005A40((v0 + 16));

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_10058D190(uint64_t a1)
{
  v4 = *(type metadata accessor for DataLinkCommand() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_10058A304(a1, v6, v7, v1 + v5);
}

uint64_t sub_10058D280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10058D2C8(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DataLinkCommand() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10058AAAC(a1, a2, v6);
}

uint64_t sub_10058D348()
{
  v1 = type metadata accessor for DataLinkCommand();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10058D40C(uint64_t a1)
{
  v4 = *(type metadata accessor for DataLinkCommand() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_100589904(a1, v6, v7, v1 + v5);
}

uint64_t sub_10058D57C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_100140278(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_10058D654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10058B568(a1, v4, v5, v6);
}

unint64_t sub_10058D71C()
{
  result = qword_1008F37D0[0];
  if (!qword_1008F37D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1008F37D0);
  }

  return result;
}

void sub_10058D78C(uint64_t a1)
{
  sub_10058D8E4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservedObject();
    if (v2 <= 0x3F)
    {
      sub_10058D93C(319, &qword_1008F3858, &type metadata accessor for GestureState);
      if (v3 <= 0x3F)
      {
        sub_10058D93C(319, &qword_1008F3860, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_10058D990(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10058D8E4(uint64_t a1)
{
  if (!qword_1008F03F0)
  {
    type metadata accessor for LayoutDirection();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1008F03F0);
    }
  }
}

void sub_10058D93C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Double);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10058D990(uint64_t a1)
{
  if (!qword_1008F3868)
  {
    sub_100141EEC(&qword_1008E66C0, &qword_1006E6700);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1008F3868);
    }
  }
}

void sub_10058DA38(int *a1)
{
  sub_100140278(&qword_1008F3998, &qword_1006FAE98);
  GestureState.wrappedValue.getter();
  sub_100140278(&qword_1008F38A0, &qword_1006FAE00);
  State.wrappedValue.getter();
  GestureState.wrappedValue.getter();
  if (v2 == 0.0)
  {
    State.wrappedValue.getter();
  }

  else
  {
    v1 = v2 + v2;
    State.wrappedValue.getter();
    if (v2 + v2 >= v2)
    {
      if (v1 > 0.0)
      {
        pow(v1, 0.7);
      }
    }

    else
    {
      State.wrappedValue.getter();
      State.wrappedValue.getter();
      pow(v2 - v1, 0.7);
    }
  }
}

uint64_t sub_10058DC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v26 = v5;
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v7);
  v31 = sub_100140278(&qword_1008F3990, &qword_1006FAE90);
  __chkstk_darwin(v31);
  v30 = &v24 - v8;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v9 = (v2 + *(a1 + 52));
  v10 = v9[1];
  v35 = *v9;
  v36 = v10;
  v37 = *(v9 + 1);
  sub_100140278(&qword_1008F3998, &qword_1006FAE98);
  GestureState.projectedValue.getter();
  v11 = v32;
  v25 = v33;
  v24 = v34;
  v27 = *(v4 + 16);
  v27(v6, v2, a1);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  v16 = *(v4 + 32);
  v16(v13 + v12, v6, a1);
  v18 = v30;
  v17 = v31;
  v19 = &v30[*(v31 + 44)];
  *v19 = v11;
  *(v19 + 1) = v25;
  *(v19 + 1) = v24;
  v20 = &v18[*(v17 + 48)];
  *v20 = sub_100593090;
  v20[1] = v13;
  v27(v6, v28, a1);
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  *(v21 + 24) = v15;
  v16(v21 + v12, v6, a1);
  sub_10014A6B0(&qword_1008F39A0, &qword_1008F3990, &qword_1006FAE90, &protocol conformance descriptor for GestureStateGesture<A, B>);
  v22 = v30;
  Gesture.onEnded(_:)();

  return sub_10000EA04(v22, &qword_1008F3990, &qword_1006FAE90);
}

uint64_t sub_10058DF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v40 = a4;
  v46 = a2;
  v42 = a1;
  v6 = sub_100140278(&qword_1008DE640, &qword_1006D7DC0);
  v7 = v6 - 8;
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - v8;
  v41 = type metadata accessor for Date();
  v10 = *(v41 - 8);
  __chkstk_darwin(v41);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LayoutDirection();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  sub_100487D24(&v40 - v18);
  (*(v14 + 104))(v16, enum case for LayoutDirection.leftToRight(_:), v13);
  v20 = static LayoutDirection.== infix(_:_:)();
  v21 = *(v14 + 8);
  v21(v16, v13);
  v22 = v13;
  v23 = v9;
  v21(v19, v22);
  DragGesture.Value.translation.getter();
  if (v20)
  {
    v25 = v24;
  }

  else
  {
    v25 = -v24;
  }

  *v46 = v25;
  Date.init()();
  v26 = *(v7 + 56);
  v27 = v41;
  v46 = v10;
  (*(v10 + 16))(v9, v12, v41);
  *&v9[v26] = v25;
  v29 = type metadata accessor for WorkoutDetailColumnMetricView(0, v43, v44, v28);
  v30 = (v40 + *(v29 + 64));
  v31 = *v30;
  v32 = v30[1];
  v50 = *v30;
  v51 = v32;

  sub_100140278(&qword_1008F39A8, qword_1006FAEA0);
  State.wrappedValue.getter();
  v33 = v52;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1001A39A8(0, v33[2] + 1, 1, v33);
  }

  v35 = v33[2];
  v34 = v33[3];
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1001A39A8((v34 > 1), v35 + 1, 1, v33);
  }

  v33[2] = v35 + 1;
  sub_1005931E4(v23, v33 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v35);
  v48 = v31;
  v49 = v32;
  v47 = v33;
  State.wrappedValue.setter();
  v50 = v31;
  v51 = v32;
  v36 = State.wrappedValue.getter();
  __chkstk_darwin(v36);
  *(&v40 - 2) = v12;
  sub_1005AB204(sub_100593254, (&v40 - 4), v37);
  v50 = v31;
  v51 = v32;
  v48 = v38;
  State.wrappedValue.setter();

  return (*(v46 + 8))(v12, v27);
}

void sub_10058E3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LayoutDirection();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v35[-v12];
  sub_100487D24(&v35[-v12]);
  (*(v8 + 104))(v10, enum case for LayoutDirection.leftToRight(_:), v7);
  v14 = static LayoutDirection.== infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);
  DragGesture.Value.translation.getter();
  if (v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = -v17;
  }

  v19 = type metadata accessor for WorkoutDetailColumnMetricView(0, a3, a4, v16);
  sub_10058E6D8(v19);
  v21 = v20 / 15.0 * 0.95;
  v22 = -100.0;
  if (v21 > -100.0)
  {
    v22 = v21;
  }

  v23 = v21 <= 100.0;
  v24 = (a2 + v19[14]);
  v25 = *v24;
  v26 = *(v24 + 1);
  if (v23)
  {
    v27 = v22;
  }

  else
  {
    v27 = 100.0;
  }

  v43 = v25;
  v44 = v26;
  sub_100140278(&qword_1008F38A0, &qword_1006FAE00);
  State.wrappedValue.getter();
  if (v27 + v18 + v41 <= 0.0)
  {
    v28 = v27 + v18 + v41;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = (a2 + v19[15]);
  v30 = *v29;
  v31 = *(v29 + 1);
  v43 = v30;
  v44 = v31;
  State.wrappedValue.getter();
  if (v28 <= v41)
  {
    v28 = v41;
  }

  v32 = (a2 + v19[16]);
  v34 = *(v32 + 1);
  v43 = *v32;
  v33 = v43;
  v44 = v34;

  sub_100140278(&qword_1008F39A8, qword_1006FAEA0);
  State.wrappedValue.getter();

  v41 = v33;
  v42 = v34;
  v40 = _swiftEmptyArrayStorage;
  State.wrappedValue.setter();

  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v39 = v28;
  withAnimation<A>(_:_:)();
}

uint64_t sub_10058E6D8(uint64_t a1)
{
  v3 = sub_100140278(&qword_1008DE640, &qword_1006D7DC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = (v1 + *(a1 + 64));
  v11 = *v10;
  v12 = v10[1];
  v21 = *v10;
  v22 = v12;
  sub_100140278(&qword_1008F39A8, qword_1006FAEA0);
  State.wrappedValue.getter();
  v13 = *(v20 + 16);

  if (v13 >= 2)
  {
    v21 = v11;
    v22 = v12;
    State.wrappedValue.getter();
    result = v20;
    v15 = *(v20 + 16);
    v16 = v15 - 5;
    if (v15 < 5)
    {
      v16 = 0;
    }

    if ((v15 - v16) < 2 || v15 == v16)
    {
    }

    else if (v15 > v16)
    {
      v17 = v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v18 = *(v4 + 72);
      sub_10001B104(v17 + v18 * v16, v9, &qword_1008DE640, &qword_1006D7DC0);
      sub_10001B104(v17 + v18 * (v15 - 1), v6, &qword_1008DE640, &qword_1006D7DC0);
      Date.timeIntervalSince(_:)();

      sub_10000EA04(v6, &qword_1008DE640, &qword_1006D7DC0);
      return sub_10000EA04(v9, &qword_1008DE640, &qword_1006D7DC0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10058E918(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for WorkoutDetailColumnMetricView(0, a3, a4, a5);
  sub_100140278(&qword_1008F38A0, &qword_1006FAE00);
  return State.wrappedValue.setter();
}

uint64_t sub_10058E99C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  v7 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a1 + 16);
  result = (*(v4 + 32))(v9 + v8, v7, a1);
  *a2 = sub_100592644;
  a2[1] = v9;
  return result;
}

uint64_t sub_10058EABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a5;
  v74 = type metadata accessor for GeometryProxy();
  v82 = *(v74 - 8);
  v81 = *(v82 + 64);
  __chkstk_darwin(v74);
  v73 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WorkoutDetailColumnMetricView(0, a3, a4, v10);
  v55 = v11;
  v12 = *(v11 - 8);
  v78 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  v71 = &v55 - v13;
  v63 = sub_100140278(&qword_1008F3870, &qword_1006FADE0);
  __chkstk_darwin(v63);
  v16 = &v55 - v15;
  v17 = sub_100140278(&qword_1008F3878, &qword_1006FADE8);
  v18 = *(v17 - 8);
  v68 = v17;
  v69 = v18;
  __chkstk_darwin(v17);
  v80 = &v55 - v19;
  *v16 = static HorizontalAlignment.leading.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v20 = &v16[*(sub_100140278(&qword_1008F3880, &qword_1006FADF0) + 44)];
  v21 = a2;
  v58 = a2;
  v22 = a2;
  v23 = a1;
  v79 = a1;
  v57 = a3;
  v56 = a4;
  sub_10058F14C(v22, a1, a3, a4, v20);
  v24 = *(v12 + 16);
  v59 = v12 + 16;
  v72 = v24;
  v24(v14, v21, v11);
  v25 = v82;
  v26 = *(v82 + 16);
  v66 = v82 + 16;
  v67 = v26;
  v27 = v73;
  v28 = v74;
  v26(v73, v23, v74);
  v29 = *(v12 + 80);
  v30 = (v29 + 32) & ~v29;
  v61 = v30 + v78;
  v75 = v30;
  v78 = v29 | 7;
  v65 = *(v25 + 80);
  v31 = (v61 + v65) & ~v65;
  v62 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  *(v32 + 24) = a4;
  v33 = *(v12 + 32);
  v76 = v12 + 32;
  v77 = v33;
  v34 = v32 + v30;
  v35 = v71;
  v36 = v55;
  v33(v34, v71, v55);
  v37 = *(v25 + 32);
  v82 = v25 + 32;
  v64 = v37;
  v37(v32 + v31, v27, v28);
  v38 = v63;
  v39 = &v16[*(v63 + 36)];
  *v39 = sub_1005926E0;
  v39[1] = v32;
  v39[2] = 0;
  v39[3] = 0;
  GeometryProxy.size.getter();
  v83 = v40;
  v41 = v58;
  v72(v35, v58, v36);
  v42 = swift_allocObject();
  v43 = v57;
  v44 = v56;
  *(v42 + 16) = v57;
  *(v42 + 24) = v44;
  v77(v42 + v75, v35, v36);
  v61 = sub_100592830();
  v60 = sub_10030E328();
  View.onChange<A>(of:initial:_:)();

  sub_10000EA04(v16, &qword_1008F3870, &qword_1006FADE0);
  v45 = *(v44 + 24);
  swift_unknownObjectRetain();
  v46 = v45(v43, v44);
  swift_unknownObjectRelease();
  v87 = v46;
  v47 = v71;
  v72(v71, v41, v36);
  v49 = v73;
  v48 = v74;
  v67(v73, v79, v74);
  v50 = v62;
  v51 = swift_allocObject();
  *(v51 + 16) = v43;
  *(v51 + 24) = v44;
  v77(v51 + v75, v47, v36);
  v64(v51 + v50, v49, v48);
  v83 = v38;
  v84 = &type metadata for CGFloat;
  v85 = v61;
  v86 = v60;
  swift_getOpaqueTypeConformance2();
  v52 = v68;
  v53 = v80;
  View.onChange<A>(of:initial:_:)();

  return (*(v69 + 8))(v53, v52);
}

uint64_t sub_10058F14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a1;
  v34 = a2;
  v40 = a5;
  v8 = sub_100140278(&qword_1008F38A8, &qword_1006FAE08);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  __chkstk_darwin(v8);
  v37 = &v31 - v10;
  v11 = type metadata accessor for PlainListStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008F38B0, &qword_1006FAE10);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  v19 = sub_100140278(&qword_1008F38B8, &qword_1006FAE18);
  v20 = *(v19 - 8);
  v35 = v19;
  v36 = v20;
  __chkstk_darwin(v19);
  v22 = &v31 - v21;
  v41 = a3;
  v42 = a4;
  v23 = a4;
  v43 = a1;
  v44 = v34;
  sub_100140278(&qword_1008F38C0, &qword_1006FAE20);
  sub_1005929CC();
  List<>.init(content:)();
  PlainListStyle.init()();
  v24 = sub_10014A6B0(&qword_1008F3980, &qword_1008F38B0, &qword_1006FAE10, &protocol conformance descriptor for List<A, B>);
  View.listStyle<A>(_:)();
  (*(v12 + 8))(v14, v11);
  (*(v16 + 8))(v18, v15);
  v26 = type metadata accessor for WorkoutDetailColumnMetricView(0, v32, v23, v25);
  v27 = v37;
  sub_10058DC10(v26, v37);
  static GestureMask.all.getter();
  v45 = v15;
  v46 = v11;
  v47 = v24;
  v48 = &protocol witness table for PlainListStyle;
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008F3988, &qword_1008F38A8, &qword_1006FAE08, &protocol conformance descriptor for _EndedGesture<A>);
  v28 = v35;
  v29 = v38;
  View.simultaneousGesture<A>(_:including:)();
  (*(v39 + 8))(v27, v29);
  return (*(v36 + 8))(v22, v28);
}

uint64_t sub_10058F568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a2;
  v29 = a5;
  v25 = type metadata accessor for GeometryProxy();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v26 = v9;
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WorkoutDetailColumnMetricView(0, a3, a4, v11);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &KeyPath - v16;
  v18 = *(a4 + 16);
  v28 = a3;
  result = v18(a3, a4, v15);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v30 = 0;
    v31 = result;
    KeyPath = swift_getKeyPath();
    (*(v13 + 16))(v17, a1, v12);
    v20 = v25;
    (*(v8 + 16))(v10, v27, v25);
    v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v22 = (v14 + *(v8 + 80) + v21) & ~*(v8 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v28;
    *(v23 + 24) = a4;
    (*(v13 + 32))(v23 + v21, v17, v12);
    (*(v8 + 32))(v23 + v22, v10, v20);
    sub_100140278(&qword_1008DE078, &qword_1006D7670);
    sub_100140278(&qword_1008F38D8, &qword_1006FAE28);
    sub_100182FB4();
    sub_100592A50();
    return ForEach<>.init(_:id:content:)();
  }

  return result;
}

uint64_t sub_10058F84C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a3;
  v41 = a6;
  v37 = sub_100140278(&qword_1008F3908, &qword_1006FAE40);
  __chkstk_darwin(v37);
  v11 = &v35 - v10;
  v39 = sub_100140278(&qword_1008F38E0, &qword_1006FAE30);
  __chkstk_darwin(v39);
  v13 = &v35 - v12;
  v40 = sub_100140278(&qword_1008F39B0, &qword_1006FAED8);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v35 - v14;
  v15 = *a1;
  v17 = type metadata accessor for WorkoutDetailColumnMetricView(0, a4, a5, v16);
  v18 = *(a5 + 32);
  swift_unknownObjectRetain();
  v19 = v18(v15, a4, a5);
  swift_unknownObjectRelease();
  if (v19 < 1 || (v20 = *(a5 + 24), swift_unknownObjectRetain(), v21 = v20(a4, a5), swift_unknownObjectRelease(), v21 < 1))
  {
    v32 = v41;
    v33 = *(v42 + 56);
    v34 = v40;

    return v33(v32, 1, 1, v34);
  }

  else
  {
    v22 = v36;
    GeometryProxy.size.getter();
    v23 = sub_10058FC3C(v15, v17, v11);
    __chkstk_darwin(v23);
    *(&v35 - 6) = a4;
    *(&v35 - 5) = a5;
    *(&v35 - 4) = a2;
    *(&v35 - 3) = v15;
    *(&v35 - 2) = v22;
    sub_100140278(&qword_1008F3938, &qword_1006FAE60);
    sub_100592C60();
    sub_100592DD0();
    Section<>.init(header:content:)();
    v24 = [objc_opt_self() systemBackgroundColor];
    v25 = Color.init(_:)();
    v26 = static Edge.Set.all.getter();
    v27 = &v13[*(v39 + 36)];
    *v27 = v25;
    v27[8] = v26;
    static VerticalEdge.Set.all.getter();
    sub_100592B10();
    v28 = v38;
    View.listSectionSeparator(_:edges:)();
    sub_10000EA04(v13, &qword_1008F38E0, &qword_1006FAE30);
    v29 = v41;
    v30 = v40;
    (*(v42 + 32))(v41, v28, v40);
    return (*(v42 + 56))(v29, 0, 1, v30);
  }
}

uint64_t sub_10058FC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v8 = sub_100140278(&qword_1008F3A28, &qword_1006FAF30);
  sub_1005906DC(v4, a1, *(a2 + 16), *(a2 + 24), (a3 + *(v8 + 44)));
  v9 = a3 + *(sub_100140278(&qword_1008F3918, &qword_1006FAE48) + 36);
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v10 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = sub_100140278(&qword_1008F3908, &qword_1006FAE40);
  v20 = a3 + *(result + 36);
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_10058FD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a3;
  v35 = a6;
  v36 = a2;
  v34 = type metadata accessor for GeometryProxy();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = v10;
  v32 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WorkoutDetailColumnMetricView(0, a4, a5, v11);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &KeyPath - v15;
  v28 = a1;
  v17 = *(a5 + 32);
  swift_unknownObjectRetain();
  v33 = a4;
  v31 = a5;
  v18 = v17(v36, a4, a5);
  result = swift_unknownObjectRelease();
  if (v18 < 0)
  {
    __break(1u);
  }

  else
  {
    v37 = 0;
    v38 = v18;
    KeyPath = swift_getKeyPath();
    (*(v13 + 16))(v16, v28, v12);
    v20 = v32;
    v21 = v34;
    (*(v9 + 16))(v32, v29, v34);
    v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (*(v9 + 80) + v23 + 8) & ~*(v9 + 80);
    v25 = swift_allocObject();
    v26 = v31;
    *(v25 + 16) = v33;
    *(v25 + 24) = v26;
    (*(v13 + 32))(v25 + v22, v16, v12);
    *(v25 + v23) = v36;
    (*(v9 + 32))(v25 + v24, v20, v21);
    sub_100140278(&qword_1008DE078, &qword_1006D7670);
    sub_100140278(&qword_1008F3948, &qword_1006FAE68);
    sub_100182FB4();
    sub_100592E54();
    return ForEach<>.init(_:id:content:)();
  }

  return result;
}

uint64_t sub_100590050@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v25[1] = a4;
  v26 = a3;
  v31 = a7;
  v28 = sub_100140278(&qword_1008F39B8, &qword_1006FAEE0);
  __chkstk_darwin(v28);
  v27 = v25 - v10;
  v30 = sub_100140278(&qword_1008F3950, &qword_1006FAE70);
  __chkstk_darwin(v30);
  v12 = v25 - v11;
  v29 = sub_100140278(&qword_1008F39C0, &qword_1006FAEE8);
  v25[0] = *(v29 - 8);
  __chkstk_darwin(v29);
  v14 = v25 - v13;
  v15 = *a1;
  v17 = type metadata accessor for WorkoutDetailColumnMetricView(0, a5, a6, v16);
  v18 = *(a6 + 72);
  swift_unknownObjectRetain();
  LOBYTE(a5) = v18(a5, a6);
  swift_unknownObjectRelease();
  GeometryProxy.size.getter();
  if ((a5 & 1) == 0 || v15)
  {
    sub_1005903F4(v15, v26, v17, v12);
    sub_10001B104(v12, v27, &qword_1008F3950, &qword_1006FAE70);
    swift_storeEnumTagMultiPayload();
    v24 = sub_100592F20();
    v32 = v30;
    v33 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v12, &qword_1008F3950, &qword_1006FAE70);
  }

  else
  {
    sub_1005903F4(0, v26, v17, v12);
    static Color.gray.getter();
    static VerticalEdge.Set.all.getter();
    v19 = sub_100592F20();
    v20 = v30;
    View.listRowSeparatorTint(_:edges:)();

    sub_10000EA04(v12, &qword_1008F3950, &qword_1006FAE70);
    v21 = v25[0];
    v22 = v29;
    (*(v25[0] + 16))(v27, v14, v29);
    swift_storeEnumTagMultiPayload();
    v32 = v20;
    v33 = v19;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v21 + 8))(v14, v22);
  }
}

double sub_1005903F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v10 = sub_100140278(&qword_1008F39C8, &qword_1006FAEF0);
  sub_100591C24(v5, a1, a2, *(a3 + 16), *(a3 + 24), (a4 + *(v10 + 44)));
  v11 = a4 + *(sub_100140278(&qword_1008F3968, &qword_1006FAE78) + 36);
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = (a4 + *(sub_100140278(&qword_1008F3950, &qword_1006FAE70) + 36));
  *v12 = v14;
  v12[1] = v15;
  result = *&v16;
  v12[2] = v16;
  return result;
}

uint64_t sub_1005904FC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GeometryProxy.size.getter();
  v8 = v7;
  v10 = type metadata accessor for WorkoutDetailColumnMetricView(0, a4, a5, v9);
  return sub_10059055C(v10, v8);
}

uint64_t sub_10059055C(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(v3 + 24);
  swift_unknownObjectRetain();
  v6 = v5(v4, v3);
  result = swift_unknownObjectRelease();
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = 0.0;
    if (v6)
    {
      v9 = 0;
      v10 = *(v3 + 56);
      v11 = *(v13 + *(a1 + 48));
      do
      {
        swift_unknownObjectRetain();
        v12 = v10(v9, v4, v3);
        swift_unknownObjectRelease();
        v8 = v8 + v11 + v12;
        ++v9;
      }

      while (v6 != v9);
    }

    sub_100140278(&qword_1008F38A0, &qword_1006FAE00);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1005906DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = a2;
  v56[1] = a2;
  v59 = a1;
  v67 = a5;
  v65 = sub_100140278(&qword_1008F3A30, &qword_1006FAF38) - 8;
  __chkstk_darwin(v65);
  v66 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = v56 - v11;
  v60 = type metadata accessor for DynamicTypeSize();
  v57 = *(v60 - 8);
  __chkstk_darwin(v60);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100140278(&qword_1008F3A38, &unk_1006FAF40);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = v56 - v16;
  v58 = type metadata accessor for WorkoutDetailColumnMetricView(0, a3, a4, v17);
  v18 = *(a4 + 40);
  swift_unknownObjectRetain();
  v19 = v18(v8, a3, a4);
  v21 = v20;
  swift_unknownObjectRelease();
  *&v75[0] = v19;
  *(&v75[0] + 1) = v21;
  sub_10000FCBC();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  LOBYTE(v21) = v25;
  static Font.headline.getter();
  v26 = Text.font(_:)();
  v28 = v27;
  LOBYTE(v8) = v29;

  sub_10004642C(v22, v24, v21 & 1);

  static Color.white.getter();
  v30 = Text.foregroundColor(_:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_10004642C(v26, v28, v8 & 1);

  LOBYTE(v22) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v74 = v34 & 1;
  v73 = 0;
  *&v69 = v30;
  *(&v69 + 1) = v32;
  LOBYTE(v70) = v34 & 1;
  *(&v70 + 1) = v36;
  LOBYTE(v71) = v22;
  *(&v71 + 1) = v37;
  *v72 = v38;
  *&v72[8] = v39;
  *&v72[16] = v40;
  v72[24] = 0;
  v41 = v57;
  v42 = v60;
  (*(v57 + 104))(v13, enum case for DynamicTypeSize.large(_:), v60);
  sub_100140278(&qword_1008DC4C0, &unk_1006D4960);
  sub_1001F4794();
  v43 = v68;
  View.dynamicTypeSize(_:)();
  (*(v41 + 8))(v13, v42);
  v75[2] = v71;
  *v76 = *v72;
  *&v76[9] = *&v72[9];
  v75[0] = v69;
  v75[1] = v70;
  sub_10000EA04(v75, &qword_1008DC4C0, &unk_1006D4960);
  v44 = v63;
  sub_100590CE8(v58, v63);
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v45 = (v44 + *(v65 + 44));
  v46 = v70;
  *v45 = v69;
  v45[1] = v46;
  v45[2] = v71;
  v47 = v62;
  v48 = *(v62 + 16);
  v49 = v61;
  v50 = v64;
  v48(v61, v43, v64);
  v51 = v66;
  sub_10001B104(v44, v66, &qword_1008F3A30, &qword_1006FAF38);
  v52 = v67;
  v48(v67, v49, v50);
  v53 = sub_100140278(&qword_1008F3A40, &qword_1006FAF50);
  sub_10001B104(v51, &v52[*(v53 + 48)], &qword_1008F3A30, &qword_1006FAF38);
  sub_10000EA04(v44, &qword_1008F3A30, &qword_1006FAF38);
  v54 = *(v47 + 8);
  v54(v68, v50);
  sub_10000EA04(v51, &qword_1008F3A30, &qword_1006FAF38);
  return (v54)(v49, v50);
}

double sub_100590CE8@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.bottom.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_100140278(&qword_1008F3A48, &qword_1006FAF58);
  sub_100590D70(v3, *(a2 + 16), *(a2 + 24), a3 + *(v6 + 44));
  v7 = a3 + *(sub_100140278(&qword_1008F3A50, &qword_1006FAF60) + 36);
  *(v7 + 32) = 0;
  result = 0.0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  return result;
}

uint64_t sub_100590D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v7 = type metadata accessor for ColorRenderingMode();
  v57 = *(v7 - 8);
  v58 = v7;
  __chkstk_darwin(v7);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100140278(&qword_1008F3A58, &qword_1006FAF68);
  __chkstk_darwin(v53);
  v52 = &v47 - v9;
  v54 = sub_100140278(&qword_1008F3A60, &qword_1006FAF70) - 8;
  __chkstk_darwin(v54);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v47 - v12;
  v48 = type metadata accessor for AttributedString();
  v13 = *(v48 - 8);
  __chkstk_darwin(v48);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100140278(&qword_1008F3A68, &qword_1006FAF78) - 8;
  __chkstk_darwin(v49);
  v50 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v21 = type metadata accessor for WorkoutDetailColumnMetricView(0, a2, a3, v20);
  v22 = *(a3 + 48);
  swift_unknownObjectRetain();
  v22(0, a2, a3);
  swift_unknownObjectRelease();
  sub_100591364(v15, v21, v19);
  (*(v13 + 8))(v15, v48);
  v23 = *(a3 + 56);
  swift_unknownObjectRetain();
  v23(0, a2, a3);
  swift_unknownObjectRelease();
  static Alignment.bottomLeading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v24 = &v19[*(sub_100140278(&qword_1008F3A70, &qword_1006FAF80) + 36)];
  v25 = v61;
  *v24 = v60;
  *(v24 + 1) = v25;
  *(v24 + 2) = v62;
  v26 = *(a1 + v21[10]);
  v27 = *(a1 + v21[12]);
  v28 = a1;
  v29 = static Edge.Set.all.getter();
  v30 = &v19[*(sub_100140278(&qword_1008F3A78, &qword_1006FAF88) + 36)];
  *v30 = v29;
  *(v30 + 1) = 0;
  *(v30 + 2) = v26;
  *(v30 + 3) = 0;
  *(v30 + 4) = v27;
  v30[40] = 0;
  v31 = [objc_opt_self() systemBackgroundColor];
  v32 = Color.init(_:)();
  LOBYTE(a1) = static Edge.Set.all.getter();
  v33 = &v19[*(sub_100140278(&qword_1008F3A80, &qword_1006FAF90) + 36)];
  *v33 = v32;
  v33[8] = a1;
  *&v19[*(v49 + 44)] = 0x3FF0000000000000;
  v34 = v52;
  sub_1005913D0(v28, a2, a3, v35, v52);
  sub_1005939C4();
  v37 = v57;
  v36 = v58;
  v38 = v55;
  (*(v57 + 104))(v55, enum case for ColorRenderingMode.nonLinear(_:), v58);
  v39 = v51;
  View.drawingGroup(opaque:colorMode:)();
  (*(v37 + 8))(v38, v36);
  sub_10000EA04(v34, &qword_1008F3A58, &qword_1006FAF68);
  sub_10058DA38(v21);
  v40 = (v39 + *(v54 + 44));
  *v40 = v41;
  v40[1] = 0;
  v42 = v50;
  sub_10001B104(v19, v50, &qword_1008F3A68, &qword_1006FAF78);
  v43 = v56;
  sub_10001B104(v39, v56, &qword_1008F3A60, &qword_1006FAF70);
  v44 = v59;
  sub_10001B104(v42, v59, &qword_1008F3A68, &qword_1006FAF78);
  v45 = sub_100140278(&qword_1008F3AC0, &qword_1006FAFA8);
  sub_10001B104(v43, v44 + *(v45 + 48), &qword_1008F3A60, &qword_1006FAF70);
  sub_10000EA04(v39, &qword_1008F3A60, &qword_1006FAF70);
  sub_10000EA04(v19, &qword_1008F3A68, &qword_1006FAF78);
  sub_10000EA04(v43, &qword_1008F3A60, &qword_1006FAF70);
  return sub_10000EA04(v42, &qword_1008F3A68, &qword_1006FAF78);
}

uint64_t sub_100591364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v7 = sub_100140278(&qword_1008F3AC8, &qword_1006FAFB0);
  return sub_100591860(a1, v3, *(a2 + 16), *(a2 + 24), (a3 + *(v7 + 44)));
}

uint64_t sub_1005913D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17[1] = a5;
  v8 = type metadata accessor for WorkoutDetailColumnMetricView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - v10;
  v17[0] = a1;
  v12 = *(a3 + 24);
  swift_unknownObjectRetain();
  v13 = v12(a2, a3);
  result = swift_unknownObjectRelease();
  if (v13 < 1)
  {
    __break(1u);
  }

  else
  {
    v17[2] = 1;
    v17[3] = v13;
    swift_getKeyPath();
    (*(v9 + 16))(v11, v17[0], v8);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    (*(v9 + 32))(v16 + v15, v11, v8);
    sub_100140278(&qword_1008DE078, &qword_1006D7670);
    sub_100140278(&qword_1008F3A78, &qword_1006FAF88);
    sub_100182FB4();
    sub_1005937E8(&qword_1008F3AA0, &qword_1008F3A78, &qword_1006FAF88, sub_100593AF8);
    return ForEach<>.init(_:id:content:)();
  }

  return result;
}

uint64_t sub_100591614@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v30 = type metadata accessor for AttributedString();
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v13 = type metadata accessor for WorkoutDetailColumnMetricView(0, a3, a4, v12);
  v14 = *(a4 + 48);
  swift_unknownObjectRetain();
  v14(v11, a3, a4);
  swift_unknownObjectRelease();
  sub_100591364(v10, v13, v31);
  (*(v8 + 8))(v10, v30);
  v15 = *(a4 + 56);
  swift_unknownObjectRetain();
  v15(v11, a3, a4);
  swift_unknownObjectRelease();
  static Alignment.bottomLeading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = sub_100140278(&qword_1008F3A70, &qword_1006FAF80);
  v17 = v31;
  v18 = (v31 + *(v16 + 36));
  v19 = v33;
  *v18 = v32;
  v18[1] = v19;
  v18[2] = v34;
  LOBYTE(a1) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = sub_100140278(&qword_1008F3A78, &qword_1006FAF88);
  v29 = v17 + *(result + 36);
  *v29 = a1;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_100591860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v52 = a3;
  v53 = a4;
  v54 = a2;
  v57 = a5;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100140278(&qword_1008F3AD0, &qword_1006FAFB8);
  __chkstk_darwin(v55);
  v56 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v51 - v13;
  (*(v7 + 16))(v9, a1, v6, v12);
  v15 = Text.init(_:)();
  v17 = v16;
  v19 = v18;
  if (qword_1008DA658 != -1)
  {
    swift_once();
  }

  v20 = qword_100925290;
  Font.init(_:)();
  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_10004642C(v15, v17, v19 & 1);

  v58 = v21;
  v59 = v23;
  v25 &= 1u;
  v60 = v25;
  v61 = v27;
  View.hyphenationFactor(_:)();
  sub_10004642C(v21, v23, v25);

  v28 = [objc_opt_self() secondaryLabelColor];
  v29 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v31 = &v14[*(sub_100140278(&qword_1008EDCB0, &unk_1006FAFF0) + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  LOBYTE(v29) = static Edge.Set.bottom.getter();
  type metadata accessor for WorkoutDetailColumnMetricView(0, v52, v53, v32);
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v14[*(sub_100140278(&qword_1008EDCB8, &qword_1006F15F0) + 36)];
  *v41 = v29;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  LOBYTE(v29) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v42 = v56;
  v43 = &v14[*(v55 + 36)];
  *v43 = v29;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  sub_10001B104(v14, v42, &qword_1008F3AD0, &qword_1006FAFB8);
  v48 = v57;
  *v57 = 0;
  *(v48 + 8) = 1;
  v49 = sub_100140278(&qword_1008F3AD8, &qword_1006FB000);
  sub_10001B104(v42, v48 + *(v49 + 48), &qword_1008F3AD0, &qword_1006FAFB8);
  sub_10000EA04(v14, &qword_1008F3AD0, &qword_1006FAFB8);
  return sub_10000EA04(v42, &qword_1008F3AD0, &qword_1006FAFB8);
}

uint64_t sub_100591C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v63 = a3;
  v61 = a2;
  v10 = type metadata accessor for ColorRenderingMode();
  v53 = *(v10 - 8);
  v54 = v10;
  __chkstk_darwin(v10);
  v49 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100140278(&qword_1008F39D0, &qword_1006FAEF8);
  __chkstk_darwin(v51);
  v13 = &v44 - v12;
  v52 = sub_100140278(&qword_1008F39D8, &qword_1006FAF00) - 8;
  __chkstk_darwin(v52);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v55 = &v44 - v16;
  v18 = type metadata accessor for WorkoutDetailColumnMetricView(0, a4, a5, v17);
  v19 = *(a5 + 64);
  swift_unknownObjectRetain();
  v48 = v19(v61, 0, v63, a4, a5);
  swift_unknownObjectRelease();
  v20 = *(a5 + 56);
  swift_unknownObjectRetain();
  v20(0, a4, a5);
  swift_unknownObjectRelease();
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v60 = v67;
  v21 = v68;
  v22 = v70;
  v58 = v68;
  v59 = v70;
  v64 = v69;
  v65 = v72;
  v47 = *(a1 + v18[10]);
  v23 = *(a1 + v18[12]);
  v45 = v71;
  v46 = v23;
  v62 = static Edge.Set.all.getter();
  LOBYTE(v86[0]) = v21;
  LOBYTE(v78) = v22;
  v66 = 0;
  v24 = [objc_opt_self() systemBackgroundColor];
  v57 = Color.init(_:)();
  v56 = static Edge.Set.all.getter();
  sub_100592248(a1, v61, v63, a4, a5, v13);
  v26 = v53;
  v25 = v54;
  v27 = v49;
  (*(v53 + 104))(v49, enum case for ColorRenderingMode.nonLinear(_:), v54);
  sub_1005936B4();
  v28 = v55;
  View.drawingGroup(opaque:colorMode:)();
  (*(v26 + 8))(v27, v25);
  sub_10000EA04(v13, &qword_1008F39D0, &qword_1006FAEF8);
  sub_10058DA38(v18);
  v29 = (v28 + *(v52 + 44));
  *v29 = v30;
  v29[1] = 0;
  v31 = v50;
  sub_10001B104(v28, v50, &qword_1008F39D8, &qword_1006FAF00);
  v32 = v48;
  *&v78 = v48;
  *(&v78 + 1) = v60;
  LOBYTE(v79) = v58;
  *(&v79 + 1) = *v77;
  DWORD1(v79) = *&v77[3];
  *(&v79 + 1) = v64;
  LOBYTE(v80) = v59;
  *(&v80 + 1) = *v76;
  DWORD1(v80) = *&v76[3];
  v34 = v45;
  v33 = v46;
  *(&v80 + 1) = v45;
  *&v81 = v65;
  BYTE8(v81) = v62;
  HIDWORD(v81) = *&v75[3];
  *(&v81 + 9) = *v75;
  v35 = v47;
  *&v82 = 0;
  *(&v82 + 1) = v47;
  *&v83 = 0;
  *(&v83 + 1) = v46;
  LOBYTE(v84) = 0;
  *(&v84 + 1) = *v74;
  DWORD1(v84) = *&v74[3];
  *(&v84 + 1) = v57;
  LOBYTE(v85) = v56;
  DWORD1(v85) = *&v73[3];
  *(&v85 + 1) = *v73;
  *(&v85 + 1) = 0x3FF0000000000000;
  v36 = v78;
  v37 = v79;
  v38 = v81;
  a6[2] = v80;
  a6[3] = v38;
  *a6 = v36;
  a6[1] = v37;
  v39 = v82;
  v40 = v83;
  v41 = v85;
  a6[6] = v84;
  a6[7] = v41;
  a6[4] = v39;
  a6[5] = v40;
  v42 = sub_100140278(&qword_1008F3A18, &qword_1006FAF20);
  sub_10001B104(v31, a6 + *(v42 + 48), &qword_1008F39D8, &qword_1006FAF00);
  sub_10001B104(&v78, v86, &qword_1008F3A20, &qword_1006FAF28);
  sub_10000EA04(v55, &qword_1008F39D8, &qword_1006FAF00);
  sub_10000EA04(v31, &qword_1008F39D8, &qword_1006FAF00);
  v86[0] = v32;
  v86[1] = v60;
  v87 = v58;
  *v88 = *v77;
  *&v88[3] = *&v77[3];
  v89 = v64;
  v90 = v59;
  *v91 = *v76;
  *&v91[3] = *&v76[3];
  v92 = v34;
  v93 = v65;
  v94 = v62;
  *v95 = *v75;
  *&v95[3] = *&v75[3];
  v96 = 0;
  v97 = v35;
  v98 = 0;
  v99 = v33;
  v100 = 0;
  *v101 = *v74;
  *&v101[3] = *&v74[3];
  v102 = v57;
  v103 = v56;
  *v104 = *v73;
  *&v104[3] = *&v73[3];
  v105 = 0x3FF0000000000000;
  return sub_10000EA04(v86, &qword_1008F3A20, &qword_1006FAF28);
}

uint64_t sub_100592248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a2;
  v23 = a3;
  v24 = a6;
  v9 = type metadata accessor for WorkoutDetailColumnMetricView(0, a4, a5, a4);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();
  v15 = v14(a4, a5);
  result = swift_unknownObjectRelease();
  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {
    v25 = 1;
    v26 = v15;
    swift_getKeyPath();
    (*(v10 + 16))(v13, a1, v9);
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    (*(v10 + 32))(v19 + v17, v13, v9);
    v20 = v23;
    *(v19 + v18) = v22;
    *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
    sub_100140278(&qword_1008DE078, &qword_1006D7670);
    sub_100140278(&qword_1008F3A00, &qword_1006FAF10);
    sub_100182FB4();
    sub_1005937E8(&qword_1008F39F8, &qword_1008F3A00, &qword_1006FAF10, sub_10059386C);
    return ForEach<>.init(_:id:content:)();
  }

  return result;
}

void sub_1005924B0(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  type metadata accessor for WorkoutDetailColumnMetricView(0, a5, a6, a4);
  v12 = *(a6 + 64);
  swift_unknownObjectRetain();
  v19 = v12(a3, v11, a4, a5, a6);
  swift_unknownObjectRelease();
  v13 = *(a6 + 56);
  swift_unknownObjectRetain();
  v13(v11, a5, a6);
  swift_unknownObjectRelease();
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(a3) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  *a7 = v19;
  *(a7 + 8) = v20;
  *(a7 + 16) = v21;
  *(a7 + 24) = v22;
  *(a7 + 32) = v23;
  *(a7 + 40) = v24;
  *(a7 + 48) = v25;
  *(a7 + 56) = a3;
  *(a7 + 64) = v14;
  *(a7 + 72) = v15;
  *(a7 + 80) = v16;
  *(a7 + 88) = v17;
  *(a7 + 96) = 0;
}

uint64_t sub_100592644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for WorkoutDetailColumnMetricView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_10058EABC(a1, v9, v6, v7, a3);
}

uint64_t sub_1005926E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for WorkoutDetailColumnMetricView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for GeometryProxy() - 8);
  v12 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1005904FC(v11, v4 + v8, v12, v5, v6);
}

unint64_t sub_100592830()
{
  result = qword_1008F3888;
  if (!qword_1008F3888)
  {
    sub_100141EEC(&qword_1008F3870, &qword_1006FADE0);
    sub_10014A6B0(&qword_1008F3890, &qword_1008F3898, &qword_1006FADF8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3888);
  }

  return result;
}

uint64_t sub_1005928E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for WorkoutDetailColumnMetricView(0, *(v4 + 16), *(v4 + 24), a4);
  type metadata accessor for GeometryProxy();
  GeometryProxy.size.getter();
  return sub_10059055C(v5, v6);
}

unint64_t sub_1005929CC()
{
  result = qword_1008F38C8;
  if (!qword_1008F38C8)
  {
    sub_100141EEC(&qword_1008F38C0, &qword_1006FAE20);
    sub_100592A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F38C8);
  }

  return result;
}

unint64_t sub_100592A50()
{
  result = qword_1008F38D0;
  if (!qword_1008F38D0)
  {
    sub_100141EEC(&qword_1008F38D8, &qword_1006FAE28);
    sub_100141EEC(&qword_1008F38E0, &qword_1006FAE30);
    sub_100592B10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F38D0);
  }

  return result;
}

unint64_t sub_100592B10()
{
  result = qword_1008F38E8;
  if (!qword_1008F38E8)
  {
    sub_100141EEC(&qword_1008F38E0, &qword_1006FAE30);
    sub_100592BC8();
    sub_10014A6B0(&qword_1008E0750, &qword_1008E0758, &unk_1006E4190, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F38E8);
  }

  return result;
}

unint64_t sub_100592BC8()
{
  result = qword_1008F38F0;
  if (!qword_1008F38F0)
  {
    sub_100141EEC(&qword_1008F38F8, &qword_1006FAE38);
    sub_100592C60();
    sub_100592DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F38F0);
  }

  return result;
}

unint64_t sub_100592C60()
{
  result = qword_1008F3900;
  if (!qword_1008F3900)
  {
    sub_100141EEC(&qword_1008F3908, &qword_1006FAE40);
    sub_100592CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3900);
  }

  return result;
}

unint64_t sub_100592CEC()
{
  result = qword_1008F3910;
  if (!qword_1008F3910)
  {
    sub_100141EEC(&qword_1008F3918, &qword_1006FAE48);
    sub_10014A6B0(&qword_1008F3920, &qword_1008F3928, &unk_1006FAE50, &protocol conformance descriptor for VStack<A>);
    sub_10014A6B0(&qword_1008DD570, &qword_1008DD578, &qword_1006D6208, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3910);
  }

  return result;
}

unint64_t sub_100592DD0()
{
  result = qword_1008F3930;
  if (!qword_1008F3930)
  {
    sub_100141EEC(&qword_1008F3938, &qword_1006FAE60);
    sub_100592E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3930);
  }

  return result;
}

unint64_t sub_100592E54()
{
  result = qword_1008F3940;
  if (!qword_1008F3940)
  {
    sub_100141EEC(&qword_1008F3948, &qword_1006FAE68);
    sub_100141EEC(&qword_1008F3950, &qword_1006FAE70);
    sub_100592F20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3940);
  }

  return result;
}

unint64_t sub_100592F20()
{
  result = qword_1008F3958;
  if (!qword_1008F3958)
  {
    sub_100141EEC(&qword_1008F3950, &qword_1006FAE70);
    sub_100592FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3958);
  }

  return result;
}

unint64_t sub_100592FAC()
{
  result = qword_1008F3960;
  if (!qword_1008F3960)
  {
    sub_100141EEC(&qword_1008F3968, &qword_1006FAE78);
    sub_10014A6B0(&qword_1008F3970, &qword_1008F3978, &unk_1006FAE80, &protocol conformance descriptor for HStack<A>);
    sub_10014A6B0(&qword_1008DD570, &qword_1008DD578, &qword_1006D6208, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3960);
  }

  return result;
}

uint64_t sub_100593090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(type metadata accessor for WorkoutDetailColumnMetricView(0, v8, v9, a4) - 8);
  v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return sub_10058DF68(a1, a2, a3, v11, v8, v9);
}

void sub_100593134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for WorkoutDetailColumnMetricView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_10058E3A8(a1, v9, v6, v7);
}

uint64_t sub_1005931E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DE640, &qword_1006D7DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100593290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for WorkoutDetailColumnMetricView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for GeometryProxy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  sub_100140278(&qword_1008E66B8, &qword_1006F5670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for LayoutDirection();
    (*(*(v13 - 8) + 8))(v4 + v7, v13);
  }

  else
  {
  }

  v14 = (v7 + v8 + v11) & ~v11;
  swift_unknownObjectRelease();

  (*(v10 + 8))(v4 + v14, v9);

  return _swift_deallocObject(v4, v14 + v12, v6 | v11 | 7);
}

uint64_t sub_100593494@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for WorkoutDetailColumnMetricView(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for GeometryProxy() - 8);
  v12 = v3 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_10058F84C(a1, v3 + v9, v12, v6, v7, a3);
}

uint64_t sub_1005935A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for WorkoutDetailColumnMetricView(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 64) + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for GeometryProxy() - 8);
  v11 = *(v3 + v9);
  v12 = v3 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80));

  return sub_100590050(a1, v11, v12, v6, v7, a3);
}

unint64_t sub_1005936B4()
{
  result = qword_1008F39E0;
  if (!qword_1008F39E0)
  {
    sub_100141EEC(&qword_1008F39D0, &qword_1006FAEF8);
    sub_100593738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F39E0);
  }

  return result;
}

unint64_t sub_100593738()
{
  result = qword_1008F39E8;
  if (!qword_1008F39E8)
  {
    sub_100141EEC(&qword_1008F39F0, &qword_1006FAF08);
    sub_1005937E8(&qword_1008F39F8, &qword_1008F3A00, &qword_1006FAF10, sub_10059386C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F39E8);
  }

  return result;
}

uint64_t sub_1005937E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10059386C()
{
  result = qword_1008F3A08;
  if (!qword_1008F3A08)
  {
    sub_100141EEC(&qword_1008F3A10, &qword_1006FAF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3A08);
  }

  return result;
}

void sub_1005938F0(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for WorkoutDetailColumnMetricView(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 64) + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1005924B0(a1, v10, v11, v6, v7, a3);
}

unint64_t sub_1005939C4()
{
  result = qword_1008F3A88;
  if (!qword_1008F3A88)
  {
    sub_100141EEC(&qword_1008F3A58, &qword_1006FAF68);
    sub_100593A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3A88);
  }

  return result;
}

unint64_t sub_100593A48()
{
  result = qword_1008F3A90;
  if (!qword_1008F3A90)
  {
    sub_100141EEC(&qword_1008F3A98, &qword_1006FAF98);
    sub_1005937E8(&qword_1008F3AA0, &qword_1008F3A78, &qword_1006FAF88, sub_100593AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3A90);
  }

  return result;
}

unint64_t sub_100593AF8()
{
  result = qword_1008F3AA8;
  if (!qword_1008F3AA8)
  {
    sub_100141EEC(&qword_1008F3A70, &qword_1006FAF80);
    sub_10014A6B0(&qword_1008F3AB0, &qword_1008F3AB8, &qword_1006FAFA0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3AA8);
  }

  return result;
}

uint64_t sub_100593BB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for WorkoutDetailColumnMetricView(0, v6, v7, a2);

  return sub_100591614(a1, v6, v7, a3);
}

Swift::Int sub_100593C5C(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  Hasher.init()();
  v12 = [a1 UUID];
  if (v12)
  {
    v13 = v12;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 56))(v11, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v11, 1, 1, v2);
  }

  sub_1001423D0(v11, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    sub_1001447C0();
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  sub_10020864C(v11);
  v14 = [a1 currentCompetition];
  if (v14)
  {
    v15 = v14;
    Hasher._combine(_:)([v14 currentCacheIndex]);
    v16 = [v15 scores];
    if (v16)
    {
      v17 = v16;
      sub_1003884E0();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      Hasher._combine(_:)(1u);
      sub_10030809C();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v18 = [v15 opponentScores];
    if (v18)
    {
      v19 = v18;
      sub_1003884E0();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      Hasher._combine(_:)(1u);
      sub_10030809C();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  return Hasher.finalize()();
}

Swift::Int sub_100593FA0@<X0>(Swift::Int *a1@<X8>)
{
  result = sub_100593C5C(*v1);
  *a1 = result;
  return result;
}

id sub_100593FCC()
{
  v1 = OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection;
  v2 = *(*(v0 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingView) + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection);
  if (v2 != 1)
  {
    sub_100515494(v2);
    v1 = OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection;
  }

  result = *(*(v0 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingView) + v1);
  if (result != 1)
  {
    return sub_100515494(result);
  }

  return result;
}

double sub_100594050()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingView);
  v2 = dbl_1006FB108[v1[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection]];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;
  sub_1001B1314(sub_10025D040, v3, v2);

  v5 = *(v0 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingView);
  v6 = dbl_1006FB108[v5[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection]];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = v5;
  sub_1001B1314(sub_1002831B4, v7, v6);

  return result;
}

char *sub_100594180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingView;
  type metadata accessor for TrendListMetricView();
  *&v3[v8] = sub_10065AF60();
  v9 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingView;
  *&v3[v9] = sub_10065AF60();
  v10 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_paddingView;
  sub_1000059F8(0, &qword_1008E7580, UIView_ptr);
  *&v3[v10] = sub_10065AF60();
  v11 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingButton;
  v12 = objc_opt_self();
  v13 = [v12 buttonWithType:0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v11] = v13;
  v14 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingButton;
  v15 = [v12 buttonWithType:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v14] = v15;
  v16 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_stackView;
  sub_1000059F8(0, &qword_1008E6F30, UIStackView_ptr);
  *&v4[v16] = sub_10065AF60();
  v17 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionStackView;
  *&v4[v17] = sub_10065AF60();
  v18 = &v4[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionFunction];
  *v18 = ASFriendListDisplayMode.id.getter;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingMetric;
  v20 = type metadata accessor for TrendListMetric(0);
  v21 = *(*(v20 - 8) + 56);
  v21(&v4[v19], 1, 1, v20);
  v21(&v4[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingMetric], 1, 1, v20);
  if (a3)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  v41.receiver = v4;
  v41.super_class = type metadata accessor for TrendPairTableViewCell(0);
  v23 = objc_msgSendSuper2(&v41, "initWithStyle:reuseIdentifier:", a1, v22);

  v24 = *&v23[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingView];
  v25 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingView;
  v40 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingView;
  v26 = v23;
  v27 = v24;
  v28 = sub_1004313A0();
  [v27 setBackgroundColor:v28];

  v29 = [*&v23[v25] layer];
  [v29 setCornerRadius:sub_1004313CC(ObjectType)];

  v30 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingView;
  v31 = *&v26[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingView];
  v32 = sub_1004313A0();
  [v31 setBackgroundColor:v32];

  v33 = [*&v26[v30] layer];
  [v33 setCornerRadius:sub_1004313CC(ObjectType)];

  v34 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingButton;
  [*&v26[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingButton] addTarget:v26 action:"selectionButtonTappedWithSender:" forControlEvents:64];
  [*&v26[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingButton] addTarget:v26 action:"selectionButtonTappedWithSender:" forControlEvents:64];
  v35 = [v26 contentView];
  v36 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionStackView;
  [v35 addSubview:*&v26[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionStackView]];

  [*&v26[v36] setAlignment:0];
  [*&v26[v36] setDistribution:1];
  [*&v26[v36] setSpacing:0.0];
  [*&v26[v36] setAxis:0];
  [*&v26[v36] addArrangedSubview:*&v26[v34]];
  v37 = [v26 contentView];

  v38 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_stackView;
  [v37 addSubview:*&v26[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_stackView]];

  [*&v26[v38] setAlignment:0];
  [*&v26[v38] setDistribution:1];
  [*&v26[v38] setSpacing:10.0];
  [*&v26[v38] setAxis:0];
  [*&v26[v38] setUserInteractionEnabled:0];
  [*&v26[v38] addArrangedSubview:*&v23[v40]];
  sub_100594A6C();

  return v26;
}

uint64_t sub_1005946CC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100140278(&qword_1008E3D18, &unk_1006E1370);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for TrendListMetric(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  sub_1000059F8(0, &qword_1008DB898, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    v16 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingMetric;
    swift_beginAccess();
    sub_10001B104(v2 + v16, v8, &qword_1008E3D18, &unk_1006E1370);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_10000EA04(v8, &qword_1008E3D18, &unk_1006E1370);
    }

    sub_10025D2D0(v8, v15);
    v19 = *(v2 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionFunction);

    v19(v15);

    v20 = v15;
  }

  else
  {
    result = static NSObject.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      return result;
    }

    v18 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingMetric;
    swift_beginAccess();
    sub_10001B104(v2 + v18, v5, &qword_1008E3D18, &unk_1006E1370);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      return sub_10000EA04(v5, &qword_1008E3D18, &unk_1006E1370);
    }

    sub_10025D2D0(v5, v12);
    v21 = *(v2 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionFunction);

    v21(v12);

    v20 = v12;
  }

  return sub_1003B6DB4(v20, type metadata accessor for TrendListMetric);
}

void sub_100594A6C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_stackView];
  v3 = [v2 leadingAnchor];
  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  sub_1004313D0();
  v48 = [v3 constraintEqualToAnchor:v5 constant:v6];

  v7 = [v2 trailingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 trailingAnchor];

  sub_1004313D0();
  v46 = [v7 constraintEqualToAnchor:v9 constant:-v10];

  v11 = [v2 topAnchor];
  v12 = [v0 contentView];
  v13 = [v12 topAnchor];

  v45 = [v11 constraintEqualToAnchor:v13 constant:sub_1004313D0()];
  v14 = [v2 bottomAnchor];
  v15 = [v0 contentView];
  v16 = [v15 bottomAnchor];

  sub_1004313D0();
  v43 = [v14 constraintEqualToAnchor:v16 constant:-v17];

  v18 = *&v0[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionStackView];
  v19 = [v18 leadingAnchor];
  v20 = [v0 contentView];
  v21 = [v20 leadingAnchor];

  v44 = [v19 constraintEqualToAnchor:v21];
  v22 = [v18 trailingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  v26 = [v18 topAnchor];
  v27 = [v1 contentView];
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  v30 = [v18 bottomAnchor];
  v31 = [v1 contentView];
  v32 = [v31 bottomAnchor];

  v33 = [v30 constraintEqualToAnchor:v32];
  v42 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1006D68B0;
  *(v34 + 32) = v48;
  *(v34 + 40) = v46;
  *(v34 + 48) = v45;
  *(v34 + 56) = v43;
  *(v34 + 64) = v44;
  *(v34 + 72) = v25;
  *(v34 + 80) = v29;
  *(v34 + 88) = v33;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  v41 = v48;
  v47 = v46;
  v35 = v45;
  v36 = v43;
  v37 = v44;
  v38 = v25;
  v39 = v29;
  v40 = v33;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints:isa];
}

uint64_t sub_100594FD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = type metadata accessor for TrendListMetric(0);
  v6 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TrendPairTableViewCell.TrailingMetricType(0);
  __chkstk_darwin(v8 - 8);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E3D18, &unk_1006E1370);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_100140278(&qword_1008E4EC0, &qword_1006E3410);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  sub_1003B6CDC(a1, &v37 - v18, type metadata accessor for TrendListMetric);
  v20 = *(v14 + 56);
  sub_1003B6CDC(a2, &v19[v20], type metadata accessor for TrendPairTableViewCell.TrailingMetricType);
  sub_100543264(v19, 1);
  sub_10001B104(v19, v16, &qword_1008E4EC0, &qword_1006E3410);
  v21 = *(v14 + 56);
  sub_10025D2D0(v16, v12);
  v22 = v6;
  v23 = v40;
  v41 = *(v6 + 56);
  v42 = v6 + 56;
  v41(v12, 0, 1, v40);
  v24 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingMetric;
  swift_beginAccess();
  v43 = v3;
  v25 = v3 + v24;
  v26 = v39;
  sub_1003B6E14(v12, v25);
  swift_endAccess();
  sub_1003B6DB4(&v16[v21], type metadata accessor for TrendPairTableViewCell.TrailingMetricType);
  sub_1003B6CDC(&v19[v20], v26, type metadata accessor for TrendPairTableViewCell.TrailingMetricType);
  v27 = (*(v22 + 48))(v26, 2, v23);
  if (v27)
  {
    if (v27 == 1)
    {
      v28 = v43;
      [*(v43 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_stackView) insertArrangedSubview:*(v43 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_paddingView) atIndex:1];
      sub_10000EA04(v19, &qword_1008E4EC0, &qword_1006E3410);
      v41(v12, 1, 1, v23);
      v29 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingMetric;
    }

    else
    {
      sub_10000EA04(v19, &qword_1008E4EC0, &qword_1006E3410);
      v41(v12, 1, 1, v23);
      v29 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingMetric;
      v28 = v43;
    }

    swift_beginAccess();
    v34 = v28 + v29;
    v35 = v12;
  }

  else
  {
    v30 = v38;
    sub_10025D2D0(v26, v38);
    v31 = v12;
    v32 = v43;
    [*(v43 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_stackView) insertArrangedSubview:*(v43 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingView) atIndex:1];
    [*(v32 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionStackView) insertArrangedSubview:*(v32 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingButton) atIndex:1];
    sub_100543264(v30, 1);
    sub_10000EA04(v19, &qword_1008E4EC0, &qword_1006E3410);
    sub_10025D2D0(v30, v31);
    v41(v31, 0, 1, v23);
    v33 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingMetric;
    swift_beginAccess();
    v34 = v32 + v33;
    v35 = v31;
  }

  sub_1003B6E14(v35, v34);
  return swift_endAccess();
}

id sub_1005954B0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for TrendPairTableViewCell(0);
  objc_msgSendSuper2(&v6, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_stackView];
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_paddingView];
  [v1 removeArrangedSubview:v2];
  [v2 removeFromSuperview];
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingView];
  [v1 removeArrangedSubview:v3];
  [v3 removeFromSuperview];
  v4 = *&v0[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingButton];
  [*&v0[OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionStackView] removeArrangedSubview:v4];
  return [v4 removeFromSuperview];
}

uint64_t sub_1005955DC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingView;
  v24 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingView;
  type metadata accessor for TrendListMetricView();
  *(v1 + v4) = sub_10065AF60();
  v5 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingView;
  v23 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingView;
  *(v1 + v5) = sub_10065AF60();
  v6 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_paddingView;
  v22 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_paddingView;
  sub_1000059F8(0, &qword_1008E7580, UIView_ptr);
  *(v1 + v6) = sub_10065AF60();
  v7 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingButton;
  v21 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingButton;
  v8 = objc_opt_self();
  v9 = [v8 buttonWithType:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v2 + v7) = v9;
  v10 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingButton;
  v11 = [v8 buttonWithType:0];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v2 + v10) = v11;
  v12 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_stackView;
  sub_1000059F8(0, &qword_1008E6F30, UIStackView_ptr);
  *(v2 + v12) = sub_10065AF60();
  v13 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionStackView;
  v14 = sub_10065AF60();

  *(v2 + v13) = v14;
  v15 = (v2 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_selectionFunction);
  *v15 = ASFriendListDisplayMode.id.getter;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_leadingMetric;
  v17 = type metadata accessor for TrendListMetric(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v2 + v16, 1, 1, v17);
  v19 = OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingMetric;
  v18(v2 + OBJC_IVAR____TtC10FitnessApp22TrendPairTableViewCell_trailingMetric, 1, 1, v17);

  sub_10000EA04(v2 + v16, &qword_1008E3D18, &unk_1006E1370);
  sub_10000EA04(v2 + v19, &qword_1008E3D18, &unk_1006E1370);
  type metadata accessor for TrendPairTableViewCell(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1005958E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendPairTableViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100595A2C(uint64_t a1)
{
  sub_10025CEF0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100595B90(uint64_t a1)
{
  v1 = type metadata accessor for TrendListMetric(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

char *sub_100595BE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_pill;
  *&v5[v10] = [objc_allocWithZone(CAShapeLayer) init];
  v11 = OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_labelStack;
  sub_1000059F8(0, &qword_1008E6F30, UIStackView_ptr);
  *&v5[v11] = sub_10065AF60();
  v12 = OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label1;
  sub_1000059F8(0, &qword_1008E2D40, UILabel_ptr);
  *&v5[v12] = sub_100555C98();
  v13 = OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label2;
  *&v5[v13] = sub_100555C98();
  *&v5[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackTrailingConstraint] = 0;
  v26.receiver = v5;
  v26.super_class = type metadata accessor for TrendAveragePlatterView();
  v14 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 layer];
  v16 = OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_pill;
  [v15 addSublayer:*&v14[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_pill]];

  v17 = OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_labelStack;
  [v14 addSubview:*&v14[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_labelStack]];
  [*&v14[v17] addArrangedSubview:*&v14[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label1]];
  sub_100596010();
  v18 = [objc_opt_self() defaultCenter];
  [v18 addObserver:v14 selector:"setupFontsAndConstants" name:UIContentSizeCategoryDidChangeNotification object:0];

  [*&v14[v16] setShadowRadius:1.0];
  LODWORD(v19) = 1.0;
  [*&v14[v16] setShadowOpacity:v19];
  [*&v14[v16] setShadowOffset:{0.0, 0.0}];
  v20 = *&v14[v16];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 blackColor];
  v24 = [v23 CGColor];

  [v22 setShadowColor:v24];
  return v14;
}

uint64_t sub_100595EB0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_pill;
  *(v1 + v4) = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_labelStack;
  sub_1000059F8(0, &qword_1008E6F30, UIStackView_ptr);
  *(v1 + v5) = sub_10065AF60();
  v6 = OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label1;
  sub_1000059F8(0, &qword_1008E2D40, UILabel_ptr);
  *(v1 + v6) = sub_100555C98();
  v7 = OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label2;
  v8 = sub_100555C98();

  *(v2 + v7) = v8;
  v9 = OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackLeadingConstraint;
  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackLeadingConstraint) = 0;
  v10 = OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackTrailingConstraint;
  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackTrailingConstraint) = 0;

  type metadata accessor for TrendAveragePlatterView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_100596010()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_labelStack];
  [v1 setAxis:1];
  [v1 setDistribution:0];
  [v1 setAlignment:3];
  [v1 setSpacing:0.0];
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label1];
  v5 = [v2 blackColor];
  [v4 setTextColor:v5];

  v6 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label2];
  v7 = [v2 blackColor];
  [v6 setTextColor:v7];

  v8 = [v1 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:4.0];

  v11 = [v1 trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-4.0];

  v14 = [v1 topAnchor];
  v15 = [v0 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  v17 = [v1 bottomAnchor];
  v18 = [v0 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  v20 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006D5300;
  *(v21 + 32) = v10;
  *(v21 + 40) = v13;
  *(v21 + 48) = v16;
  *(v21 + 56) = v19;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  v22 = v10;
  v23 = v13;
  v24 = v16;
  v30 = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 activateConstraints:isa];

  v26 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackLeadingConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackLeadingConstraint] = v22;
  v27 = v22;

  v28 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackTrailingConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackTrailingConstraint] = v23;
  v29 = v23;

  sub_1005963E8();
}

id sub_1005963E8()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label1];
  v2 = objc_opt_self();
  result = [v2 _preferredFontForTextStyle:UIFontTextStyleFootnote variant:1280 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = result;
  [v1 setFont:result];

  v5 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label2];
  result = [v2 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1280 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = result;
  [v5 setFont:result];

  v7 = [*&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_labelStack] arrangedSubviews];
  sub_1000059F8(0, &qword_1008E7580, UIView_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackLeadingConstraint];
  if (v9 != 1)
  {
    if (v10)
    {
      v20 = v10;
      result = [v5 font];
      if (!result)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v21 = result;
      [result _scaledValueForValue:4.0];
      v23 = v22;

      [v20 setConstant:v23];
    }

    v24 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackTrailingConstraint];
    if (v24)
    {
      v16 = v24;
      result = [v5 font];
      if (result)
      {
        v25 = result;
        [result _scaledValueForValue:-4.0];
        v27 = v26;

        [v16 setConstant:v27];
        goto LABEL_18;
      }

LABEL_28:
      __break(1u);
      return result;
    }

    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  result = [v1 font];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = result;
  [result _scaledValueForValue:5.0];
  v14 = v13;

  [v11 setConstant:v14];
LABEL_9:
  v15 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_stackTrailingConstraint];
  if (v15)
  {
    v16 = v15;
    result = [v1 font];
    if (result)
    {
      v17 = result;
      [result _scaledValueForValue:-5.0];
      v19 = v18;

      [v16 setConstant:v19];
LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_19:

  return [v0 setNeedsLayout];
}

void sub_100596768(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label2);
  [*(v1 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_labelStack) removeArrangedSubview:v3];
  [v3 removeFromSuperview];
  v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_label1);
  v5 = String._bridgeToObjectiveC()();
  [v4 setText:v5];

  v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_pill);
  v7 = [*(a1 + OBJC_IVAR____TtC10FitnessApp12MetricColors_text) CGColor];
  [v6 setFillColor:v7];
}

void sub_100596870(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_pill];
  [a1 bounds];
  [v2 setFrame:?];
  v3 = [*&a1[OBJC_IVAR____TtC10FitnessApp23TrendAveragePlatterView_labelStack] arrangedSubviews];
  sub_1000059F8(0, &qword_1008E7580, UIView_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v2 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = 8.0;
  if (v5 == 1)
  {
    [v2 bounds];
    v14 = CGRectGetHeight(v18) * 0.5;
  }

  v16 = [objc_opt_self() bezierPathWithRoundedRect:v7 cornerRadius:{v9, v11, v13, v14}];
  v15 = [v16 CGPath];
  [v2 setPath:v15];
}

id sub_100596AB4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TrendAveragePlatterView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_100596B98(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100596BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100599964();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100596C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t *sub_100596CA8@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_100596CC4(uint64_t a1)
{
  v2 = sub_100599964();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_100596D00(uint64_t a1)
{
  v2 = sub_100599964();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_100596D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100599964();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

id sub_100596DC4()
{

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_100596F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = type metadata accessor for SecureCloudClient();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10059700C, 0, 0);
}

uint64_t sub_10059700C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = Strong;
    (*(*(v0 + 64) + 16))(*(v0 + 72), Strong + OBJC_IVAR___CHInvitationDestinationCoordinator_secureCloudClient, *(v0 + 56));

    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_100597138;

    return SecureCloudClient.activate()();
  }

  else
  {
    **(v0 + 40) = 1;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100597138()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100597290, 0, 0);
}

uint64_t sub_100597290()
{
  **(v0 + 40) = *(v0 + 80) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100597300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for InvitationDestinationGroup();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_100597410;

  return InvitationDestinationService.fetchInvitationDestinationGroups(for:)(a1);
}

uint64_t sub_100597410(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100597560, 0, 0);
  }
}

uint64_t sub_100597560()
{
  v43 = v0;
  v1 = v0[3];
  v38 = *(v1 + 16);
  if (v38)
  {
    v2 = 0;
    v3 = v0[11];
    v4 = v0[8];
    v5 = v1 + 32;
    v40 = (v4 + 8);
    v37 = v5;
    while (2)
    {
      v6 = (v5 + 16 * v2);
      v8 = *v6;
      v7 = v6[1];
      v39 = v2 + 1;
      v41 = *(v3 + 16);

      v13 = 0;
      while (1)
      {
        if (v41 == v13)
        {

          v26 = static os_log_type_t.default.getter();
          v27 = HKLogActivity;
          if (os_log_type_enabled(HKLogActivity, v26))
          {
            v28 = v27;
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v42 = v30;
            *v29 = 136315138;
            v31 = Array.description.getter();
            v33 = sub_10000AFDC(v31, v32, &v42);

            *(v29 + 4) = v33;
            _os_log_impl(&_mh_execute_header, v28, v26, "Not all destinations reachable to send invite %s", v29, 0xCu);
            sub_100005A40(v30);
          }

          sub_100599398();
          swift_allocError();
          *v34 = 0;
          swift_willThrow();

          v35 = v0[1];

          return v35();
        }

        if (v13 >= *(v3 + 16))
        {
          __break(1u);
          return Collection.asyncForEach(_:)(v9, v10, v11, v12);
        }

        (*(v4 + 16))(v0[9], v0[11] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v0[7]);
        v14 = InvitationDestinationGroup.destination.getter();
        v16 = v0[9];
        v17 = v0[7];
        if (v14 == v8 && v15 == v7)
        {
          break;
        }

        ++v13;
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v9 = (*v40)(v16, v17);
        if (v19)
        {
          goto LABEL_13;
        }
      }

      (*v40)(v16, v17);
LABEL_13:

      v2 = v39;
      v5 = v37;
      if (v39 != v38)
      {
        continue;
      }

      break;
    }
  }

  v21 = v0[5];
  v20 = v0[6];
  v22 = v0[4];
  v0[2] = v0[11];
  v23 = swift_task_alloc();
  v0[12] = v23;
  v23[2] = v20;
  v23[3] = v22;
  v23[4] = v21;
  v24 = swift_task_alloc();
  v0[13] = v24;
  v25 = sub_100140278(&qword_1008F3CE0, &unk_1006FB1C8);
  v12 = sub_10059949C();
  *v24 = v0;
  v24[1] = sub_100597928;
  v9 = &unk_1006FB1C0;
  v10 = v23;
  v11 = v25;

  return Collection.asyncForEach(_:)(v9, v10, v11, v12);
}

uint64_t sub_100597928()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100597A7C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100597A7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100597AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for InvitationDestination();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for SecureCloudClient();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100597C1C, 0, 0);
}

uint64_t sub_100597C1C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  (*(v0[11] + 16))(v0[12], v0[3] + OBJC_IVAR___CHInvitationDestinationCoordinator_secureCloudClient, v0[10]);
  v4 = InvitationDestinationGroup.destination.getter();
  v6 = v5;
  v0[13] = v5;
  InvitationDestinationGroup.preferredDestination.getter();
  v7 = InvitationDestination.serviceIdentifier.getter();
  v29 = v8;
  v0[14] = v8;
  v31 = *(v3 + 8);
  v31(v1, v2);
  v9 = InvitationDestinationGroup.additionalDestinations.getter();
  v10 = *(v9 + 16);
  if (v10)
  {
    v26 = v7;
    v27 = v6;
    v28 = v4;
    v11 = v0[7];
    sub_100073020(0, v10, 0);
    v30 = *(v11 + 16);
    v12 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    do
    {
      v14 = v0[8];
      v15 = v0[6];
      v30(v14, v12, v15);
      v16 = InvitationDestination.serviceIdentifier.getter();
      v18 = v17;
      v31(v14, v15);
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_100073020((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v12 += v13;
      --v10;
    }

    while (v10);

    v6 = v27;
    v4 = v28;
    v7 = v26;
  }

  else
  {
  }

  v0[15] = _swiftEmptyArrayStorage;
  v22 = swift_task_alloc();
  v0[16] = v22;
  *v22 = v0;
  v22[1] = sub_100597E84;
  v23 = v0[4];
  v24 = v0[5];

  return SecureCloudClient.sendInvitation(destination:callerIdentifier:serviceIdentifier:additionalServiceIdentifiers:)(v4, v6, v23, v24, v7, v29, _swiftEmptyArrayStorage);
}

uint64_t sub_100597E84()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_1005980B8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1005980B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100598130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_1005981F0;

  return sub_100597300(a5, a6, a7);
}

uint64_t sub_1005981F0()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1005983C0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    type metadata accessor for MainActor();
    *(v2 + 48) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v3 = sub_10059834C;
    v4 = v6;
    v5 = v8;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10059834C()
{
  v1 = *(v0 + 16);

  v1(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005983C0()
{
  *(v0 + 56) = _convertErrorToNSError(_:)();
  type metadata accessor for MainActor();
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100598460, v2, v1);
}

uint64_t sub_100598460()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  v2(0, v1);

  return _swift_task_switch(sub_1005984E8, 0, 0);
}

uint64_t sub_1005984E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005986D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for InvitationDestination();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = type metadata accessor for InvitationDestinationGroup();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();

  return _swift_task_switch(sub_1005987FC, 0, 0);
}

uint64_t sub_1005987FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_100598984;
    v3 = v0[8];

    return InvitationDestinationService.fetchInvitationDestinationGroups(for:)(v3);
  }

  else
  {
    sub_100599398();
    v4 = swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v0[24] = v4;
    v0[25] = _convertErrorToNSError(_:)();
    type metadata accessor for MainActor();
    v0[26] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100598F8C, v7, v6);
  }
}

uint64_t sub_100598984(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_100598E40;
  }

  else
  {

    v4 = sub_100598AA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100598AA0()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 96);
    v5 = specialized ContiguousArray.reserveCapacity(_:)();
    v8 = 0;
    v42 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v51 = (v4 + 8);
    v38 = v4;
    v39 = v2;
    v43 = v3;
    v40 = v1;
    v41 = (v3 + 8);
    while (v8 < *(v1 + 16))
    {
      v15 = *(v0 + 112);
      v16 = *(v0 + 88);
      (*(v43 + 16))(*(v0 + 136), v42 + *(v43 + 72) * v8, *(v0 + 120));
      v17 = InvitationDestinationGroup.destination.getter();
      v47 = v18;
      v48 = v17;
      InvitationDestinationGroup.preferredDestination.getter();
      v19 = InvitationDestination.serviceIdentifier.getter();
      v45 = v20;
      v46 = v19;
      v50 = *v51;
      (*v51)(v15, v16);
      v21 = InvitationDestinationGroup.additionalDestinations.getter();
      v22 = *(v21 + 16);
      if (v22)
      {
        v44 = v8;
        sub_100073020(0, v22, 0);
        v23 = v21 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
        v49 = *(v38 + 72);
        v24 = *(v38 + 16);
        do
        {
          v25 = *(v0 + 104);
          v26 = v0;
          v27 = *(v0 + 88);
          v24(v25, v23, v27);
          v28 = InvitationDestination.serviceIdentifier.getter();
          v30 = v29;
          v50(v25, v27);
          v32 = _swiftEmptyArrayStorage[2];
          v31 = _swiftEmptyArrayStorage[3];
          if (v32 >= v31 >> 1)
          {
            sub_100073020((v31 > 1), v32 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v32 + 1;
          v33 = &_swiftEmptyArrayStorage[2 * v32];
          v33[4] = v28;
          v33[5] = v30;
          v23 += v49;
          --v22;
          v0 = v26;
        }

        while (v22);

        v2 = v39;
        v1 = v40;
        v8 = v44;
      }

      else
      {
      }

      ++v8;
      v9 = *(v0 + 136);
      v10 = *(v0 + 120);
      v11 = type metadata accessor for ReachableDestination();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR___CHReachableDestination_destination];
      *v13 = v48;
      *(v13 + 1) = v47;
      v14 = &v12[OBJC_IVAR___CHReachableDestination_preferredServiceIdentifier];
      *v14 = v46;
      *(v14 + 1) = v45;
      *&v12[OBJC_IVAR___CHReachableDestination_additionalServiceIdentifiers] = _swiftEmptyArrayStorage;
      *(v0 + 40) = v12;
      *(v0 + 48) = v11;
      objc_msgSendSuper2((v0 + 40), "init");
      (*v41)(v9, v10);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = specialized ContiguousArray._endMutation()();
      if (v8 == v2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    *(v0 + 176) = _swiftEmptyArrayStorage;
    type metadata accessor for MainActor();
    *(v0 + 184) = static MainActor.shared.getter();
    v34 = dispatch thunk of Actor.unownedExecutor.getter();
    v36 = v35;
    v5 = sub_100598EEC;
    v6 = v34;
    v7 = v36;
  }

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100598E40()
{
  *(v0 + 192) = *(v0 + 168);
  *(v0 + 200) = _convertErrorToNSError(_:)();
  type metadata accessor for MainActor();
  *(v0 + 208) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100598F8C, v2, v1);
}

uint64_t sub_100598EEC()
{
  v1 = v0[22];
  v2 = v0[9];

  v2(v1, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100598F8C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 72);

  v2(_swiftEmptyArrayStorage, v1);

  return _swift_task_switch(sub_100599018, 0, 0);
}

uint64_t sub_100599018()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100599218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ReachableDestination();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, a2);
}

id sub_1005992AC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100599398()
{
  result = qword_1008F3CD8;
  if (!qword_1008F3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3CD8);
  }

  return result;
}

uint64_t sub_1005993EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_100597AF0(a1, v4, v5, v6);
}

unint64_t sub_10059949C()
{
  result = qword_1008F3CE8;
  if (!qword_1008F3CE8)
  {
    sub_100141EEC(&qword_1008F3CE0, &unk_1006FB1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3CE8);
  }

  return result;
}

uint64_t sub_100599508(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002BBC0;

  return sub_1005986D0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1005995F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002BACC;

  return sub_100598130(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1005996E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_100596F4C(a1, v4, v5, v6);
}

unint64_t sub_1005997B0()
{
  result = qword_1008F3CF8;
  if (!qword_1008F3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3CF8);
  }

  return result;
}

unint64_t sub_100599808()
{
  result = qword_1008F3D00;
  if (!qword_1008F3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3D00);
  }

  return result;
}

unint64_t sub_100599860()
{
  result = qword_1008F3D08;
  if (!qword_1008F3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3D08);
  }

  return result;
}

unint64_t sub_1005998B8()
{
  result = qword_1008F3D10;
  if (!qword_1008F3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3D10);
  }

  return result;
}

unint64_t sub_100599910()
{
  result = qword_1008F3D18;
  if (!qword_1008F3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3D18);
  }

  return result;
}

unint64_t sub_100599964()
{
  result = qword_1008F3D20;
  if (!qword_1008F3D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3D20);
  }

  return result;
}

id sub_100599BA0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutDetailSectionHeader();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100599C10()
{
  v56.receiver = v0;
  v56.super_class = type metadata accessor for WorkoutDetailAppleWeatherFooterView();
  v1 = objc_msgSendSuper2(&v56, "initWithFrame:textContainer:", 0, 0.0, 0.0, 0.0, 0.0);
  [v1 setScrollEnabled:0];
  [v1 setEditable:0];
  [v1 _setInteractiveTextSelectionDisabled:1];
  v2 = objc_opt_self();
  v3 = [v2 tertiaryLabelColor];
  [v1 setTintColor:v3];

  [v1 textContainerInset];
  v5 = v4;
  [v1 textContainerInset];
  [v1 setTextContainerInset:{v5, 10.0, v6, 10.0}];
  v7 = [objc_opt_self() defaultFontForTextStyle:UIFontTextStyleFootnote];
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  v12 = v11;
  v55 = v11;
  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v54 = v12;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = v11;

  v17 = [v8 mainBundle];
  v53 = v8;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 localizedStringForKey:v18 value:0 table:0];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  sub_1000059F8(0, &qword_1008DB888, NSString_ptr);
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1006D46C0;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_10000A788();
  *(v20 + 32) = v13;
  *(v20 + 40) = v15;
  v21 = NSString.init(format:_:)();

  sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v23 = NSForegroundColorAttributeName;
  v24 = [v2 tertiaryLabelColor];
  v25 = sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  *(inited + 40) = v24;
  *(inited + 64) = v25;
  *(inited + 72) = NSFontAttributeName;
  v26 = sub_100140278(&unk_1008EB5C8, &unk_1006EFAB0);
  *(inited + 104) = v26;
  *(inited + 80) = v7;
  v48 = NSFontAttributeName;
  v51 = v7;
  sub_1004C9200(inited);
  v47 = v7;
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730, &unk_1006D8460);
  swift_arrayDestroy();
  v27 = objc_allocWithZone(NSMutableAttributedString);
  type metadata accessor for Key(0);
  sub_10017597C();
  v28 = v21;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v52 = [v27 initWithString:v28 attributes:isa];

  v30 = [v28 rangeOfString:v55];
  v49 = v31;
  v50 = v30;

  v32 = [v53 mainBundle];
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 localizedStringForKey:v33 value:0 table:0];

  if (!v34)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = String._bridgeToObjectiveC()();
  }

  v35 = [objc_allocWithZone(NSURL) initWithString:v34];
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1006D64F0;
  *(v36 + 32) = v48;
  *(v36 + 40) = v47;
  *(v36 + 64) = v26;
  *(v36 + 72) = NSLinkAttributeName;
  v37 = sub_100140278(&qword_1008F3D78, &qword_1006FB3F8);
  *(v36 + 80) = v35;
  *(v36 + 104) = v37;
  *(v36 + 112) = NSUnderlineStyleAttributeName;
  *(v36 + 144) = &type metadata for Int;
  *(v36 + 120) = 1;
  v38 = v51;
  v39 = NSLinkAttributeName;
  v40 = v35;
  v41 = NSUnderlineStyleAttributeName;
  sub_1004C9200(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  v42 = objc_allocWithZone(NSAttributedString);
  v43 = Dictionary._bridgeToObjectiveC()().super.isa;

  v44 = [v42 initWithString:v54 attributes:v43];

  [v52 replaceCharactersInRange:v50 withAttributedString:{v49, v44}];
  v45 = v52;
  [v1 setAttributedText:v45];

  return v1;
}

id sub_10059A438()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailAppleWeatherFooterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10059A490()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp36DayViewStepsAndDistanceTableViewCell_stepsLabelPair);
  if (*(v0 + OBJC_IVAR____TtC10FitnessApp36DayViewStepsAndDistanceTableViewCell_isWheelchair) == 1)
  {
    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 localizedStringForKey:v3 value:0 table:0];
    v5 = 0.0;
  }

  else
  {
    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 localizedStringForKey:v3 value:0 table:0];
    v5 = 1.0;
  }

  v6 = v4;

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = (v1 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText);
  *v10 = v7;
  v10[1] = v9;

  v11 = *(v1 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel);

  v12 = String._bridgeToObjectiveC()();

  [v11 setText:v12];

  v13 = *(v0 + OBJC_IVAR____TtC10FitnessApp36DayViewStepsAndDistanceTableViewCell_distanceLabelPair);

  return [v13 setAlpha:v5];
}