id SleepQueryOperation.init(dateInterval:name:queryOptions:queryQualityOfService:queryCacheSettings:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v15 = qword_1EE058E20;
  sub_1D1487B04();
  v16 = swift_allocError();
  *v17 = 0;
  v28 = v16;
  v29 = 1;
  sub_1D14F6344(0, &qword_1EE059400, sub_1D14F6294, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v7[v15] = sub_1D15A2D68();
  *&v7[qword_1EE05B1C0] = 0;
  v18 = qword_1EE068370;
  v19 = sub_1D15A22A8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v8[v18], a1, v19);
  *&v8[qword_1EE068378] = a7;
  *&v8[qword_1EE068230] = a4;
  *&v8[qword_1EE068368] = a5;
  *&v8[qword_1EE068228] = a6;
  v27.receiver = v8;
  v27.super_class = type metadata accessor for SleepQueryOperation(0);
  v21 = a7;
  v22 = a6;
  v23 = objc_msgSendSuper2(&v27, sel_init);
  v24 = v23;
  if (a3)
  {
    v25 = sub_1D15A3EF8();
  }

  else
  {
    v25 = 0;
  }

  [v23 setName_];

  (*(v20 + 8))(a1, v19);
  return v23;
}

void sub_1D14F6294(uint64_t a1)
{
  if (!qword_1EE056248)
  {
    sub_1D14F6344(255, &qword_1EE0567F0, sub_1D14F63A8, MEMORY[0x1E69E62F8]);
    sub_1D1453368(255, &qword_1EE05ABB8, MEMORY[0x1E69E7280]);
    v1 = sub_1D15A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE056248);
    }
  }
}

void sub_1D14F6344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D14F63A8()
{
  result = qword_1EE056710;
  if (!qword_1EE056710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE056710);
  }

  return result;
}

uint64_t type metadata accessor for SleepQueryOperation(uint64_t a1)
{
  result = qword_1EE05B1B0;
  if (!qword_1EE05B1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepQueryOperation.__allocating_init(sleepQueryConfig:endDate:healthStore:name:queryQualityOfService:queryCacheSettings:)(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v47 = a7;
  v41 = a4;
  v42 = a6;
  v45 = a5;
  v11 = sub_1D15A3268();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F6344(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v41 - v14;
  v16 = sub_1D15A22A8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v23 = *a1;
  v24 = *(a1 + 8);
  DateRange.dateInterval(endingAt:)(a2, v23, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v25 = a3;

    sub_1D1491CBC(v15);
    v48 = v7;
    swift_getMetatypeMetadata();
    v26 = sub_1D15A3F68();
    v28 = v27;
    sub_1D15A31E8();

    v29 = sub_1D15A3248();
    v30 = sub_1D15A4318();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v50 = v32;
      *v31 = 136380931;
      v33 = sub_1D1479780(v26, v28, &v50);

      *(v31 + 4) = v33;
      *(v31 + 12) = 2081;
      LOBYTE(v48) = v23;
      v49 = v24;
      v34 = sub_1D15A3F68();
      v36 = sub_1D1479780(v34, v35, &v50);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_1D1446000, v29, v30, "%{private}s: Attempted to create query with unsupported configuration %{private}s.", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v32, -1, -1);
      MEMORY[0x1D388BF00](v31, -1, -1);
    }

    else
    {
    }

    v40 = sub_1D15A26A8();
    (*(*(v40 - 8) + 8))(a2, v40);
    (*(v43 + 8))(v46, v44);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    (*(v17 + 16))(v19, v22, v16);
    v37 = (*(v7 + class metadata base offset for SleepQueryOperation + 128))(v19, v41, v45, v24, v42, v47, a3);
    v38 = sub_1D15A26A8();
    (*(*(v38 - 8) + 8))(a2, v38);
    (*(v17 + 8))(v22, v16);
    return v37;
  }
}

uint64_t sub_1D14F68F4()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1487B04();
  v5 = swift_allocError();
  *v6 = 2;
  v22 = v5;
  v23 = 1;

  sub_1D15A2D38();

  sub_1D15A22A8();
  sub_1D14F7490();
  v7._countAndFlagsBits = sub_1D15A4B68();
  v9 = v8;
  v10._countAndFlagsBits = 0x676E696E6E7572;
  v10._object = 0xE700000000000000;
  v7._object = v9;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v10, v7);

  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE05B398;
  v12 = v0;
  sub_1D15A31C8();
  v13 = sub_1D15A4478();
  sub_1D1487C24(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D15ACDD0;
  v15 = sub_1D15A3F38();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1D1487C8C();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_1D15A31A8(v13, &dword_1D1446000, v11, "SleepQuery", 10, 2, v4, "typeIdentifier=%{private}@", 26, 2, v14);

  v18 = *&v12[qword_1EE068378];
  v19 = sub_1D14F56E8();
  [v18 executeQuery_];

  return (*(v2 + 8))(v4, v1);
}

void sub_1D14F6BC8(void *a1)
{
  v1 = a1;
  sub_1D14F68F4();
}

void sub_1D14F6C10()
{
  if ([v0 isCancelled])
  {
    sub_1D1487B04();
    v1 = swift_allocError();
    *v2 = 3;
    MEMORY[0x1EEE9AC00](v1);

    sub_1D15A2D38();

    sub_1D15A22A8();
    sub_1D14F7490();
    v3._countAndFlagsBits = sub_1D15A4B68();
    v5 = v4;
    v6._countAndFlagsBits = 0x656C6C65636E6163;
    v6._object = 0xE900000000000064;
    v3._object = v5;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v6, v3);
  }

  v7 = *&v0[qword_1EE068378];
  v8 = sub_1D14F56E8();
  [v7 stopQuery_];
}

id SleepQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D14F6E14()
{

  v1 = qword_1EE068370;
  v2 = sub_1D15A22A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_1EE05B1C0);
}

id SleepQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepQueryOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D14F6EF4(uint64_t a1)
{

  v2 = qword_1EE068370;
  v3 = sub_1D15A22A8();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_1EE05B1C0);
}

uint64_t sub_1D14F6FA0@<X0>(uint64_t a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + class metadata base offset for SleepQueryOperation + 80))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

double sub_1D14F7020(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1D15A4468();
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE05B398;
  sub_1D1487C24(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D15ACDD0;
  v12 = DateInterval.stringWithISO8601Format()();
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D1487C8C();
  *(v11 + 32) = v12;
  sub_1D15A31A8(v9, &dword_1D1446000, v10, "SleepQuery", 10, 2, a4, "dateInterval=%{public}@", 23, 2, v11);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if ([v15 isCancelled])
    {

      v16._countAndFlagsBits = 0xD00000000000002DLL;
      v16._object = 0x80000001D15BDC90;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v16, v17);
LABEL_7:

      return result;
    }

    v18 = [v15 isFinished];

    if (v18)
    {
      goto LABEL_7;
    }

    v20 = a2;
    if (!a2)
    {
      if (a3)
      {
        v21 = 0xD00000000000001ALL;
      }

      else
      {
        v21 = 0;
      }

      if (a3)
      {
        v22 = 0x80000001D15C04C0;
      }

      else
      {
        v22 = 0;
      }

      if (a3)
      {
        v23 = a3 | 0x8000000000000000;
      }

      else
      {
        v23 = 0xC000000000000000;
      }

      sub_1D1487F34();
      v24 = swift_allocError();
      *v25 = v21;
      v25[1] = v22;
      v25[2] = v23;
      swift_getErrorValue();
      v26 = a3;
      sub_1D1487F88(v21, v22, v23);
      v27._countAndFlagsBits = sub_1D15A4C08();
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSOperation.logErrorString(_:withInfo:)(v27, v28);

      v20 = swift_allocError();
      *v29 = v21;
      v29[1] = v22;
      v29[2] = v23;
      v19 = v20;
    }

    MEMORY[0x1EEE9AC00](v19);
    swift_bridgeObjectRetain_n();
    sub_1D15A2DA8();
    sub_1D1487E60(v20, a2 == 0);

    return sub_1D1487E60(v20, a2 == 0);
  }

  return result;
}

void sub_1D14F7354(uint64_t a1, uint64_t a2, char a3)
{

  sub_1D15A2D38();

  v3._countAndFlagsBits = 0x64656873696E6966;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v3, v4);
}

double sub_1D14F73E4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1D14F63A8();
    v5 = sub_1D15A40C8();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);

  return result;
}

unint64_t sub_1D14F7490()
{
  result = qword_1EE05B430;
  if (!qword_1EE05B430)
  {
    sub_1D15A22A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B430);
  }

  return result;
}

uint64_t sub_1D14F74E8(uint64_t a1)
{
  result = sub_1D15A22A8();
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

double sub_1D14F7664(uint64_t a1, void *a2, unint64_t a3)
{
  v7 = *(sub_1D15A31D8() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1D15A22A8() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D14F7020(a1, a2, a3, v3 + v8, v3 + v11, v12);
}

double sub_1D14F7788(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1D1487E60(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_1D1487E54(v3, v4);
}

Swift::Void __swiftcall UnitChangeObserving.registerForUnitChanges()()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_unitDidChange name:*MEMORY[0x1E696BE70] object:0];
}

Swift::Void __swiftcall UnitChangeObserving.unregisterForUnitChanges()()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x1E696BE70] object:0];
}

id sub_1D14F78D8()
{
  v1 = OBJC_IVAR____TtC19HealthVisualization22ActivityRingCircleView____lazy_storage___activityRingView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthVisualization22ActivityRingCircleView____lazy_storage___activityRingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthVisualization22ActivityRingCircleView____lazy_storage___activityRingView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696C938]) init];
    v5 = [objc_opt_self() clearColor];
    [v4 _setActivityRingViewBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1D14F7AE4(void *a1)
{
  *&v1[OBJC_IVAR____TtC19HealthVisualization22ActivityRingCircleView____lazy_storage___activityRingView] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ActivityRingCircleView();
  v3 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = sub_1D14F78D8();
    [v5 addSubview_];

    v7 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor_];

    a1 = v7;
  }

  return v4;
}

id sub_1D14F7D58(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ActivityRingCircleView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v2 = [v1 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_1D15A44B8();
  if (v2)
  {
    v4 = 84.0;
  }

  else
  {
    v4 = 48.0;
  }

  v5 = [v1 layer];
  [v1 bounds];
  [v5 setCornerRadius_];

  v6 = sub_1D14F78D8();
  [v6 bounds];
  [v6 setBounds_];

  return [*&v1[OBJC_IVAR____TtC19HealthVisualization22ActivityRingCircleView____lazy_storage___activityRingView] setCenter_];
}

id ActivityRingCircleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityRingCircleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D14F7FF4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  result = [v0 setFormattingContext_];
  qword_1EC63D600 = v0;
  return result;
}

uint64_t AFibBurdenDayOfWeekChart.init(distribution:chartModel:preferredWidth:preferredHeight:isPDF:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for AFibBurdenDayOfWeekChart(0);
  sub_1D14FC3E0(a1, a8 + *(v16 + 28), type metadata accessor for TimeBasedDistribution);
  result = sub_1D14FC3E0(a2, a8 + *(v16 + 32), type metadata accessor for TimeBasedDistributionChartModel);
  *a8 = a3;
  *(a8 + 8) = a4 & 1;
  *(a8 + 16) = a5;
  *(a8 + 24) = a6 & 1;
  *(a8 + 25) = a7;
  return result;
}

uint64_t type metadata accessor for AFibBurdenDayOfWeekChart(uint64_t a1)
{
  result = qword_1EC630B30;
  if (!qword_1EC630B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AFibBurdenDayOfWeekChart.chart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AFibBurdenDayOfWeekChart(0);
  v4 = *(v3 + 32);
  v5 = *(v1 + 25);
  v6 = (v1 + *(v3 + 28));

  return sub_1D14F81C0(v6, (v1 + v4), v5, a1);
}

uint64_t sub_1D14F81C0@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v131 = a1;
  v127 = a4;
  v6 = sub_1D15A3708();
  v129 = *(v6 - 8);
  v130 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v128 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimeBasedDistributionChartModel(0);
  v9 = v8 - 8;
  v124 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v125 = v10;
  v126 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14FBEBC(0, &qword_1EC6306A8, MEMORY[0x1E695B2F8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v115 = &v105 - v12;
  sub_1D149B16C(0);
  v14 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14FB524(0, v15);
  v19 = v18;
  v105 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14FB420(0, v20);
  v107 = v23;
  v106 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14FB3B8(0, v24);
  v109 = v27;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14FB2E4(0, v28);
  v111 = v31;
  v110 = *(v31 - 8);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14FB1D8(0, v32);
  v114 = v35;
  v113 = *(v35 - 8);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v108 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14FB058(0, v36);
  v118 = v38;
  v116 = *(v38 - 8);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v112 = &v105 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14FAE5C(0, v39);
  v120 = v41;
  v119 = *(v41 - 8);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v117 = &v105 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14FABF0(v42);
  v123 = v44;
  v122 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v121 = &v105 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1D14A94F8(v131, a2);
  v133 = v131;
  v134 = a2;
  v135 = a3;
  sub_1D14FB588(0, v46);
  sub_1D14FB75C(v47);
  sub_1D15A3508();
  v48 = *(v9 + 32);
  v49 = *(type metadata accessor for TimeBasedDistributionChartDesign(0) + 32);
  v132 = a2;
  v50 = a2 + v49 + v48;
  v51 = sub_1D15A36F8();
  sub_1D14FC2DC(&qword_1EE056BF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1D15A3EE8();
  if (result)
  {
    (*(*(v51 - 8) + 16))(v17, v50, v51);
    v53 = sub_1D14FC2DC(&qword_1EC630BB0, sub_1D14FB524, MEMORY[0x1E695B218]);
    v54 = sub_1D14FC2DC(&qword_1EE056488, sub_1D149B16C, MEMORY[0x1E69E6ED8]);
    sub_1D15A3BF8();
    sub_1D14B3DF4(v17);
    (*(v105 + 8))(v22, v19);
    v138 = sub_1D15A3F38();
    v139 = v55;

    MEMORY[0x1D388A330](0xD00000000000001FLL, 0x80000001D15C05F0);

    v138 = v19;
    v139 = v14;
    v140 = v53;
    v141 = v54;
    swift_getOpaqueTypeConformance2();
    v56 = v107;
    sub_1D15A3BD8();

    v57 = (*(v106 + 8))(v26, v56);
    MEMORY[0x1EEE9AC00](v57);
    v58 = v132;
    *(&v105 - 2) = v132;
    sub_1D14FB8BC(0);
    v60 = v59;
    v62 = sub_1D14FBC14(v61);
    v63 = sub_1D14FC2DC(&qword_1EC630BE8, sub_1D14FB8BC, MEMORY[0x1E695B2D0]);
    v64 = v109;
    sub_1D15A3B48();
    sub_1D14647F0(v30, v65);
    v138 = v64;
    v139 = v60;
    v140 = v62;
    v141 = v63;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v67 = v108;
    v68 = v111;
    sub_1D15A3B68();
    (*(v110 + 8))(v34, v68);
    v136 = sub_1D14FBF88(v58);
    v69 = sub_1D15A3628();
    v70 = *(v69 - 8);
    v109 = *(v70 + 56);
    v110 = v70 + 56;
    v71 = v115;
    v109(v115, 1, 1, v69);
    sub_1D14FBD74(0, &qword_1EE05ADA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v73 = v72;
    v138 = v68;
    v139 = OpaqueTypeConformance2;
    v74 = swift_getOpaqueTypeConformance2();
    v75 = sub_1D14FBDC4();
    v76 = v112;
    v77 = v114;
    sub_1D15A3B78();
    sub_1D14B3E5C(v71);

    (*(v113 + 8))(v67, v77);
    v78 = sub_1D14BE744(v131);

    TimeBasedDistributionChartModel.determineYAxisRange(chartPoints:)(v78);
    v80 = v79;
    v82 = v81;

    v136 = v80;
    v137 = v82;
    v109(v71, 1, 1, v69);
    sub_1D14FC324(0, &qword_1EE05B5C8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    v84 = v83;
    v138 = v77;
    v139 = v73;
    v140 = v74;
    v141 = v75;
    v85 = swift_getOpaqueTypeConformance2();
    v86 = sub_1D149C114();
    v87 = v117;
    v88 = v118;
    sub_1D15A3B88();
    sub_1D14B3E5C(v71);
    (*(v116 + 8))(v76, v88);
    v89 = v126;
    sub_1D14FC378(v132, v126, type metadata accessor for TimeBasedDistributionChartModel);
    v90 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v91 = swift_allocObject();
    sub_1D14FC3E0(v89, v91 + v90, type metadata accessor for TimeBasedDistributionChartModel);
    sub_1D14FBE58(0, &qword_1EC6304F8, MEMORY[0x1E695B190], MEMORY[0x1E697E048]);
    v138 = v88;
    v139 = v84;
    v140 = v85;
    v141 = v86;
    swift_getOpaqueTypeConformance2();
    sub_1D149C1B0();
    v92 = v121;
    v93 = v120;
    sub_1D15A3BA8();

    (*(v119 + 8))(v87, v93);
    KeyPath = swift_getKeyPath();
    IsRightToLeft = HKUILocaleIsRightToLeft();
    v97 = v128;
    v96 = v129;
    v98 = MEMORY[0x1E697E7D8];
    if (!IsRightToLeft)
    {
      v98 = MEMORY[0x1E697E7D0];
    }

    v99 = v130;
    v100.n128_f64[0] = (*(v129 + 104))(v128, *v98, v130);
    sub_1D14FAB58(0, v100);
    v102 = v127;
    v103 = (v127 + *(v101 + 36));
    sub_1D14FBEBC(0, &qword_1EE056AA8, MEMORY[0x1E697E7E0], MEMORY[0x1E6980A08]);
    (*(v96 + 32))(v103 + *(v104 + 28), v97, v99);
    *v103 = KeyPath;
    return (*(v122 + 32))(v102, v92, v123);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D14F9054(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for TimeBasedDistributionChartModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = a1;
  sub_1D14FC378(a2, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimeBasedDistributionChartModel);
  v9 = (*(v7 + 80) + 17) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  sub_1D14FC3E0(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for TimeBasedDistributionChartModel);
  sub_1D14FBEBC(0, &qword_1EC630B98, type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek, MEMORY[0x1E69E62F8]);
  sub_1D149A998(0);
  sub_1D14FB6D4(v11);
  sub_1D149AB04(255);
  v13 = v12;
  sub_1D14FBE58(255, &qword_1EC6303E8, sub_1D149ABFC, MEMORY[0x1E697E278]);
  v15 = v14;
  sub_1D14FB650(255);
  v17 = v16;
  v18 = sub_1D15A3538();

  v24 = v18;
  v25 = MEMORY[0x1E695B228];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v17;
  v25 = MEMORY[0x1E69815C0];
  v26 = OpaqueTypeConformance2;
  v27 = MEMORY[0x1E6981568];
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_1D149AD38();
  v24 = v13;
  v25 = v15;
  v26 = v20;
  v27 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1D14FC2DC(&qword_1EC630C00, type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek, &protocol conformance descriptor for TimeBasedDistributionChartPoint.DayOfWeek);
  return sub_1D15A3D28();
}

uint64_t sub_1D14F9340(uint64_t a1)
{
  v2 = sub_1D15A33C8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D15A3438();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D15A33A8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for TimeBasedDistributionChartModel(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D14FC378(a1, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimeBasedDistributionChartModel);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_1D14FC3E0(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for TimeBasedDistributionChartModel);
  sub_1D15A3398();
  sub_1D15A3428();
  sub_1D15A33B8();
  sub_1D14FB9D0(0);
  sub_1D14FBACC(255);
  v11 = v10;
  sub_1D14FC324(255, &qword_1EC630BD0, MEMORY[0x1E69E73E0], MEMORY[0x1E6982070], MEMORY[0x1E695B150]);
  v13 = v12;
  v14 = sub_1D14FBB90();
  v17 = v13;
  v18 = MEMORY[0x1E69815C0];
  v19 = v14;
  v20 = MEMORY[0x1E6981568];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v11;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_1D15A35E8();
}

double sub_1D14F9620@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  type metadata accessor for TimeBasedDistributionChartModel(0);
  type metadata accessor for TimeBasedDistributionChartDesign(0);
  sub_1D15A3D48();
  sub_1D15A36C8();
  v5 = sub_1D15A3448();
  (*(*(v5 - 8) + 16))(a3, a1, v5);
  sub_1D14FBE58(0, &qword_1EC6304F8, MEMORY[0x1E695B190], MEMORY[0x1E697E048]);
  v7 = (a3 + *(v6 + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_1D14F971C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v64 = a2;
  v63 = a4;
  v5 = type metadata accessor for TimeBasedDistributionChartModel(0);
  v58 = *(v5 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek(0);
  v8 = *(v7 - 8);
  v51 = v7 - 8;
  v56 = v8;
  v55 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D15A3478();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v53 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D15A38C8();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E695B170];
  sub_1D14FC324(0, &qword_1EC630190, MEMORY[0x1E69E63B0], MEMORY[0x1E695B450], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v42[1] = v42 - v15;
  sub_1D14FC324(0, &qword_1EC630C08, MEMORY[0x1E69E6158], MEMORY[0x1E695B438], v13);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1D15A3538();
  v44 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14FB650(0);
  v45 = v20;
  v46 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149AB04(0);
  v50 = v23;
  v52 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v43 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A38B8();
  v25 = a1[3];
  v65 = a1[2];
  v66 = v25;

  sub_1D15A3408();

  sub_1D15A38B8();
  v65 = a1[1];
  sub_1D15A3408();

  sub_1D15A3528();
  v26 = v48;
  v27 = v47;
  v28 = v49;
  (*(v48 + 104))(v47, *MEMORY[0x1E697F468], v49);
  v29 = MEMORY[0x1E695B228];
  sub_1D15A3318();
  (*(v26 + 8))(v27, v28);
  (*(v44 + 8))(v19, v17);
  v69 = *(a1 + *(v51 + 40));
  v65 = v17;
  v66 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v43;
  v32 = v45;
  sub_1D15A3328();
  (*(v46 + 8))(v22, v32);
  v33 = v53;
  sub_1D15A3468();
  v34 = v54;
  sub_1D14FC378(a1, v54, type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek);
  v35 = v57;
  sub_1D14FC378(v60, v57, type metadata accessor for TimeBasedDistributionChartModel);
  v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v37 = v36 + v55;
  v38 = (*(v58 + 80) + v36 + v55 + 1) & ~*(v58 + 80);
  v39 = swift_allocObject();
  sub_1D14FC3E0(v34, v39 + v36, type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek);
  *(v39 + v37) = v64;
  sub_1D14FC3E0(v35, v39 + v38, type metadata accessor for TimeBasedDistributionChartModel);
  sub_1D15A3D48();
  sub_1D14FBE58(0, &qword_1EC6303E8, sub_1D149ABFC, MEMORY[0x1E697E278]);
  v65 = v32;
  v66 = MEMORY[0x1E69815C0];
  v67 = OpaqueTypeConformance2;
  v68 = MEMORY[0x1E6981568];
  swift_getOpaqueTypeConformance2();
  sub_1D149AD38();
  v40 = v50;
  sub_1D15A32E8();

  (*(v61 + 8))(v33, v62);
  return (*(v52 + 8))(v31, v40);
}

double sub_1D14FA030@<D0>(_BYTE *a1@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_1D15A23F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek(0);
  (*(v8 + 16))(v10, &a1[*(v11 + 28)], v7);
  v12 = sub_1D15A3B18();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  sub_1D15A3D48();
  sub_1D15A36C8();
  v27 = v16 & 1;
  *&v26[7] = v28;
  *&v26[23] = v29;
  *&v26[39] = v30;
  v20 = qword_1D15B23A8[*a1];
  v21 = a3 + *(type metadata accessor for TimeBasedDistributionChartModel(0) + 24);
  v22 = *(type metadata accessor for TimeBasedDistributionChartDesign(0) + v20);
  *(a4 + 88) = *&v26[47];
  *(a4 + 96) = 0;
  v23 = *&v26[16];
  *(a4 + 73) = *&v26[32];
  v24 = *v26;
  *(a4 + 57) = v23;
  result = *(v21 + v22);
  *a4 = v12;
  *(a4 + 8) = v14;
  *(a4 + 16) = v16 & 1;
  *(a4 + 24) = v18;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 1;
  *(a4 + 41) = v24;
  *(a4 + 104) = result;
  return result;
}

uint64_t sub_1D14FA234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_1D15A34D8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D15A34F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1D14FC324(0, &qword_1EC630BD0, MEMORY[0x1E69E73E0], MEMORY[0x1E6982070], MEMORY[0x1E695B150]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  sub_1D14FBACC(0);
  v20[0] = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A34E8();
  sub_1D15A34C8();
  sub_1D15A33D8();
  v14 = a1 + *(type metadata accessor for TimeBasedDistributionChartModel(0) + 24);
  v21 = *(v14 + *(type metadata accessor for TimeBasedDistributionChartDesign(0) + 56));
  v15 = sub_1D14FBB90();
  v16 = MEMORY[0x1E69815C0];
  v17 = MEMORY[0x1E6981568];
  sub_1D15A3548();
  (*(v7 + 8))(v9, v6);
  v21 = v6;
  v22 = v16;
  v23 = v15;
  v24 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v20[0];
  sub_1D15A3558();
  return (*(v11 + 8))(v13, v18);
}

uint64_t sub_1D14FA5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D14FC2DC(&qword_1EC630BF8, type metadata accessor for AFibBurdenDayOfWeekChart, &protocol conformance descriptor for AFibBurdenDayOfWeekChart);

  return MEMORY[0x1EEE0E8E0](a1, a2, a3, v6);
}

uint64_t sub_1D14FA660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1D14FC2DC(&qword_1EC630BF8, type metadata accessor for AFibBurdenDayOfWeekChart, &protocol conformance descriptor for AFibBurdenDayOfWeekChart);

  return a4(a1, a2, v6);
}

uint64_t sub_1D14FA6F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_1D14FC2DC(&qword_1EC630B20, type metadata accessor for AFibBurdenDayOfWeekChart, &protocol conformance descriptor for AFibBurdenDayOfWeekChart);
  *v3 = v1;
  v3[1] = sub_1D14B3A90;

  return MEMORY[0x1EEE0E380](a1, v4);
}

void sub_1D14FA7F4(uint64_t a1)
{
  sub_1D14FBD74(319, &qword_1EC630698, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TimeBasedDistribution(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TimeBasedDistributionChartModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D14FA8C4(__n128 a1)
{
  result = qword_1EC630B40;
  if (!qword_1EC630B40)
  {
    sub_1D14FAB58(255, a1);
    sub_1D14FAE5C(255, v2);
    sub_1D14FBE58(255, &qword_1EC6304F8, MEMORY[0x1E695B190], MEMORY[0x1E697E048]);
    sub_1D14FB058(255, v3);
    sub_1D14FC324(255, &qword_1EE05B5C8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    sub_1D14FB1D8(255, v4);
    sub_1D14FBD74(255, &qword_1EE05ADA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D14FB2E4(255, v5);
    sub_1D14FB3B8(255, v6);
    sub_1D14FB8BC(255);
    sub_1D14FBC14(v7);
    sub_1D14FC2DC(&qword_1EC630BE8, sub_1D14FB8BC, MEMORY[0x1E695B2D0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D14FBDC4();
    swift_getOpaqueTypeConformance2();
    sub_1D149C114();
    swift_getOpaqueTypeConformance2();
    sub_1D149C1B0();
    swift_getOpaqueTypeConformance2();
    sub_1D149C2E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630B40);
  }

  return result;
}

void sub_1D14FAB58(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630B48)
  {
    sub_1D14FABF0(a2);
    sub_1D14FBEBC(255, &qword_1EE056AA8, MEMORY[0x1E697E7E0], MEMORY[0x1E6980A08]);
    v2 = sub_1D15A3718();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC630B48);
    }
  }
}

void sub_1D14FABF0(__n128 a1)
{
  if (!qword_1EC630B50)
  {
    sub_1D14FAE5C(255, a1);
    sub_1D14FBE58(255, &qword_1EC6304F8, MEMORY[0x1E695B190], MEMORY[0x1E697E048]);
    sub_1D14FB058(255, v1);
    sub_1D14FC324(255, &qword_1EE05B5C8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    sub_1D14FB1D8(255, v2);
    sub_1D14FBD74(255, &qword_1EE05ADA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D14FB2E4(255, v3);
    sub_1D14FB3B8(255, v4);
    sub_1D14FB8BC(255);
    sub_1D14FBC14(v5);
    sub_1D14FC2DC(&qword_1EC630BE8, sub_1D14FB8BC, MEMORY[0x1E695B2D0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D14FBDC4();
    swift_getOpaqueTypeConformance2();
    sub_1D149C114();
    swift_getOpaqueTypeConformance2();
    sub_1D149C1B0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630B50);
    }
  }
}

void sub_1D14FAE5C(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630B58)
  {
    sub_1D14FB058(255, a2);
    sub_1D14FC324(255, &qword_1EE05B5C8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    sub_1D14FB1D8(255, v2);
    sub_1D14FBD74(255, &qword_1EE05ADA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D14FB2E4(255, v3);
    sub_1D14FB3B8(255, v4);
    sub_1D14FB8BC(255);
    sub_1D14FBC14(v5);
    sub_1D14FC2DC(&qword_1EC630BE8, sub_1D14FB8BC, MEMORY[0x1E695B2D0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D14FBDC4();
    swift_getOpaqueTypeConformance2();
    sub_1D149C114();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630B58);
    }
  }
}

void sub_1D14FB058(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630B60)
  {
    sub_1D14FB1D8(255, a2);
    sub_1D14FBD74(255, &qword_1EE05ADA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D14FB2E4(255, v2);
    sub_1D14FB3B8(255, v3);
    sub_1D14FB8BC(255);
    sub_1D14FBC14(v4);
    sub_1D14FC2DC(&qword_1EC630BE8, sub_1D14FB8BC, MEMORY[0x1E695B2D0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D14FBDC4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630B60);
    }
  }
}

void sub_1D14FB1D8(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630B68)
  {
    sub_1D14FB2E4(255, a2);
    sub_1D14FB3B8(255, v2);
    sub_1D14FB8BC(255);
    sub_1D14FBC14(v3);
    sub_1D14FC2DC(&qword_1EC630BE8, sub_1D14FB8BC, MEMORY[0x1E695B2D0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630B68);
    }
  }
}

void sub_1D14FB2E4(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630B70)
  {
    sub_1D14FB3B8(255, a2);
    sub_1D14FB8BC(255);
    sub_1D14FBC14(v2);
    sub_1D14FC2DC(&qword_1EC630BE8, sub_1D14FB8BC, MEMORY[0x1E695B2D0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630B70);
    }
  }
}

void sub_1D14FB3B8(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630B78)
  {
    sub_1D14FB420(255, a2);
    sub_1D15A39D8();
    v2 = sub_1D15A3718();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC630B78);
    }
  }
}

void sub_1D14FB420(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630B80)
  {
    sub_1D14FB524(255, a2);
    sub_1D149B16C(255);
    sub_1D14FC2DC(&qword_1EC630BB0, sub_1D14FB524, MEMORY[0x1E695B218]);
    sub_1D14FC2DC(&qword_1EE056488, sub_1D149B16C, MEMORY[0x1E69E6ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630B80);
    }
  }
}

void sub_1D14FB524(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630B88)
  {
    sub_1D14FB588(255, a2);
    sub_1D14FB75C(v2);
    v3 = sub_1D15A3518();
    if (!v4)
    {
      atomic_store(v3, &qword_1EC630B88);
    }
  }
}

void sub_1D14FB588(uint64_t a1, __n128 a2)
{
  if (!qword_1EC630B90)
  {
    sub_1D14FBEBC(255, &qword_1EC630B98, type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek, MEMORY[0x1E69E62F8]);
    sub_1D149A998(255);
    sub_1D14FB6D4(v2);
    v3 = sub_1D15A3D38();
    if (!v4)
    {
      atomic_store(v3, &qword_1EC630B90);
    }
  }
}

void sub_1D14FB650(uint64_t a1)
{
  if (!qword_1EC6303E0)
  {
    sub_1D15A3538();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6303E0);
    }
  }
}

unint64_t sub_1D14FB6D4(__n128 a1)
{
  result = qword_1EC630BA0;
  if (!qword_1EC630BA0)
  {
    sub_1D14FBEBC(255, &qword_1EC630B98, type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630BA0);
  }

  return result;
}

unint64_t sub_1D14FB75C(__n128 a1)
{
  result = qword_1EC630BA8;
  if (!qword_1EC630BA8)
  {
    sub_1D14FB588(255, a1);
    sub_1D149AB04(255);
    sub_1D14FBE58(255, &qword_1EC6303E8, sub_1D149ABFC, MEMORY[0x1E697E278]);
    sub_1D14FB650(255);
    sub_1D15A3538();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D149AD38();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630BA8);
  }

  return result;
}

void sub_1D14FB8BC(uint64_t a1)
{
  if (!qword_1EC630BB8)
  {
    sub_1D14FB9D0(255);
    sub_1D14FBACC(255);
    sub_1D14FC324(255, &qword_1EC630BD0, MEMORY[0x1E69E73E0], MEMORY[0x1E6982070], MEMORY[0x1E695B150]);
    sub_1D14FBB90();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1D15A3608();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC630BB8);
    }
  }
}

void sub_1D14FB9D0(uint64_t a1)
{
  if (!qword_1EC630BC0)
  {
    sub_1D14FBACC(255);
    sub_1D14FC324(255, &qword_1EC630BD0, MEMORY[0x1E69E73E0], MEMORY[0x1E6982070], MEMORY[0x1E695B150]);
    sub_1D14FBB90();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630BC0);
    }
  }
}

void sub_1D14FBACC(uint64_t a1)
{
  if (!qword_1EC630BC8)
  {
    sub_1D14FC324(255, &qword_1EC630BD0, MEMORY[0x1E69E73E0], MEMORY[0x1E6982070], MEMORY[0x1E695B150]);
    sub_1D14FBB90();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630BC8);
    }
  }
}

unint64_t sub_1D14FBB90()
{
  result = qword_1EC630BD8;
  if (!qword_1EC630BD8)
  {
    sub_1D14FC324(255, &qword_1EC630BD0, MEMORY[0x1E69E73E0], MEMORY[0x1E6982070], MEMORY[0x1E695B150]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630BD8);
  }

  return result;
}

unint64_t sub_1D14FBC14(__n128 a1)
{
  result = qword_1EC630BE0;
  if (!qword_1EC630BE0)
  {
    sub_1D14FB3B8(255, a1);
    sub_1D14FB524(255, v2);
    sub_1D149B16C(255);
    sub_1D14FC2DC(&qword_1EC630BB0, sub_1D14FB524, MEMORY[0x1E695B218]);
    sub_1D14FC2DC(&qword_1EE056488, sub_1D149B16C, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1D14FC2DC(&qword_1EC6304C0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630BE0);
  }

  return result;
}

void sub_1D14FBD74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D14FBDC4()
{
  result = qword_1EC630BF0;
  if (!qword_1EC630BF0)
  {
    sub_1D14FBD74(255, &qword_1EE05ADA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630BF0);
  }

  return result;
}

void sub_1D14FBE58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1D15A3718();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D14FBEBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D14FBF34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D15A3828();
  *a1 = result;
  return result;
}

void *sub_1D14FBF88(void *a1)
{
  if (qword_1EC62FF50 != -1)
  {
LABEL_17:
    swift_once();
  }

  v2 = qword_1EC63D600;
  v3 = a1[4];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v3);
  v5 = (*(*(v4 + 8) + 8))(*a1, v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D14A7854(0, v6, 0);
    v7 = 0;
    a1 = v18;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(v5 + 8 * v7 + 32);
      result = [v2 shortStandaloneWeekdaySymbols];
      if (!result)
      {
        break;
      }

      v10 = result;
      v11 = sub_1D15A40C8();

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }

      if (v8 >= *(v11 + 16))
      {
        goto LABEL_16;
      }

      v12 = v11 + 16 * v8;
      v14 = *(v12 + 32);
      v13 = *(v12 + 40);

      v16 = v18[2];
      v15 = v18[3];
      if (v16 >= v15 >> 1)
      {
        sub_1D14A7854((v15 > 1), v16 + 1, 1);
      }

      ++v7;
      v18[2] = v16 + 1;
      v17 = &v18[2 * v16];
      v17[4] = v14;
      v17[5] = v13;
      if (v6 == v7)
      {

        return a1;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

double sub_1D14FC168@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TimeBasedDistributionChartModel(0);

  return sub_1D14F9620(a1, a2);
}

uint64_t sub_1D14FC1E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartModel(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D14FA234(v4, a1);
}

uint64_t sub_1D14FC258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TimeBasedDistributionChartModel(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 17) & ~*(v5 + 80));

  return sub_1D14F971C(a1, v6, v7, a2);
}

uint64_t sub_1D14FC2DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D14FC324(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D14FC378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14FC3E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1D14FC448@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for TimeBasedDistributionChartModel(0) - 8);
  v7 = v1 + ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80));

  return sub_1D14FA030((v1 + v4), v7, a1);
}

uint64_t DiagramAxisMetricsOrientation.hashValue.getter()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

uint64_t DiagramAxisMetricsCalculatorFactory.__allocating_init(hbxViewControllerFactory:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id sub_1D14FC648(uint64_t a1)
{
  v3 = sub_1D15A3268();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37[-v8];
  v10 = [objc_opt_self() sharedInstance];
  if (v10 && (v11 = v10, v12 = sub_1D15A4228(), v13 = [v11 displayTypeWithIdentifier_], v11, v12, v13))
  {
    v14 = [*(v1 + 16) createHKUnitPreferenceController];
    v15 = [v13 hk:v14 dimensionForChartAxisWithUnitController:?];
    if (v15)
    {
      v16 = v15;

      return v16;
    }

    sub_1D15A3218();
    v25 = v13;
    v26 = sub_1D15A3248();
    v27 = sub_1D15A4318();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v28 = 136380675;
      v29 = v25;
      v38 = v27;
      v30 = v29;
      v39 = v29;
      v31 = [v29 description];
      v32 = sub_1D15A3F38();
      v34 = v33;

      v35 = sub_1D1479780(v32, v34, &v42);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_1D1446000, v26, v38, "Unable to create axis label dimensions for %{private}s; no axis will be rendered.", v28, 0xCu);
      v36 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D388BF00](v36, -1, -1);
      MEMORY[0x1D388BF00](v28, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v9, v3);
  }

  else
  {
    sub_1D15A3218();
    v18 = sub_1D15A3248();
    v19 = sub_1D15A4318();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41 = a1;
      v42 = v21;
      *v20 = 136380675;
      type metadata accessor for HKDisplayTypeIdentifier(0);
      v22 = sub_1D15A3F68();
      v24 = sub_1D1479780(v22, v23, &v42);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1D1446000, v18, v19, "Unable to create display type for provided axis type %{private}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D388BF00](v21, -1, -1);
      MEMORY[0x1D388BF00](v20, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

id sub_1D14FCAE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagramAxisMetricsCalculatorFactory.HiLoScalarAxisDimension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D14FCB94(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() sharedInstance];
  if (!v4)
  {
    *&v2[OBJC_IVAR____TtCC19HealthVisualization35DiagramAxisMetricsCalculatorFactory23HiLoScalarAxisDimension_displayType] = 0;
    goto LABEL_5;
  }

  v5 = v4;
  v6 = sub_1D15A4228();
  v7 = [v5 displayTypeWithIdentifier_];

  *&v2[OBJC_IVAR____TtCC19HealthVisualization35DiagramAxisMetricsCalculatorFactory23HiLoScalarAxisDimension_displayType] = v7;
  if (!v7)
  {
LABEL_5:
    v12 = 0;
    *&v2[OBJC_IVAR____TtCC19HealthVisualization35DiagramAxisMetricsCalculatorFactory23HiLoScalarAxisDimension_valueFormatter] = 0;
    goto LABEL_6;
  }

  v8 = v7;
  v9 = [v8 objectType];
  v10 = [a2 preferredUnitForType_];

  v11 = [v8 hk:v10 valueFormatterForUnit:?];
  *&v2[OBJC_IVAR____TtCC19HealthVisualization35DiagramAxisMetricsCalculatorFactory23HiLoScalarAxisDimension_valueFormatter] = v11;
  v12 = [a2 createHKUnitPreferenceController];

LABEL_6:
  *&v2[OBJC_IVAR____TtCC19HealthVisualization35DiagramAxisMetricsCalculatorFactory23HiLoScalarAxisDimension_unitPreferenceController] = v12;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for DiagramAxisMetricsCalculatorFactory.HiLoScalarAxisDimension();
  return objc_msgSendSuper2(&v14, sel_init);
}

unint64_t sub_1D14FCD14()
{
  result = qword_1EC630C10;
  if (!qword_1EC630C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630C10);
  }

  return result;
}

void *sub_1D14FCDF0(void *result)
{
  if (result)
  {
    v2 = *(v1 + OBJC_IVAR____TtCC19HealthVisualization35DiagramAxisMetricsCalculatorFactory23HiLoScalarAxisDimension_displayType);
    if (v2 && (v3 = *(v1 + OBJC_IVAR____TtCC19HealthVisualization35DiagramAxisMetricsCalculatorFactory23HiLoScalarAxisDimension_valueFormatter)) != 0 && (v4 = *(v1 + OBJC_IVAR____TtCC19HealthVisualization35DiagramAxisMetricsCalculatorFactory23HiLoScalarAxisDimension_unitPreferenceController)) != 0)
    {
      v5 = result;
      v6 = v4;
      v7 = v5;
      v8 = v2;
      v9 = v3;
      v10 = [v9 stringFromValue:v7 displayType:v8 unitController:v6];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1D15A3F38();

        return v12;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      v13 = result;
      v14 = [v13 stringValue];
      v15 = sub_1D15A3F38();

      return v15;
    }
  }

  return result;
}

id DiagramGenerator.adjustTransformForReferenceLineAnnotationIfNeeded(transformer:diagramData:referencePosition:referenceAnnotationTextAttributes:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D1>)
{
  v39 = *a1;
  v40 = *(a1 + 8);
  v41 = *(a1 + 24);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *a3;
  v20 = *a4;
  t1.a = *a2;
  t1.b = v14;
  t1.c = v15;
  t1.d = v16;
  LOBYTE(t1.tx) = v17;
  t1.ty = v18;
  LOBYTE(t2.a) = 2;
  sub_1D14FE25C(&v45, &t1, &t2);
  if (v48)
  {
    goto LABEL_10;
  }

  v21 = v45;
  v22 = v46;
  v23 = v47;
  t1.a = v13;
  t1.b = v14;
  t1.c = v15;
  t1.d = v16;
  LOBYTE(t1.tx) = v17;
  t1.ty = v18;
  LOBYTE(t2.a) = v19;
  LOBYTE(v42.a) = v20;
  static DiagramGenerator.computeMaxReferenceAnnotationSize(diagramData:referencePosition:textAttributes:)(&t1, &t2, &v42, a5, a6);
  if (v25)
  {
    goto LABEL_10;
  }

  v26 = v24;
  v51.origin = v21;
  v51.size.width = v22;
  v51.size.height = v23;
  v50.y = CGRectGetMaxY(v51);
  *&t1.a = v40;
  *&t1.c = v41;
  t1.tx = v11;
  t1.ty = v12;
  v50.x = 0.0;
  v27 = CGPointApplyAffineTransform(v50, &t1);
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      if (v27.y < 0.0)
      {
        v26 = 0.0;
        if (a8 >= 0.0)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_10;
    }
  }

  else if (v19)
  {
    v26 = v26 * 0.5;
  }

  if (v27.y < v26 && a8 >= 0.0)
  {
LABEL_9:
    v28 = a8 / (v26 - v27.y + a8);
    v29 = (v26 - v27.y) * v28;
    CGAffineTransformMakeScale(&t1, 1.0, v28);
    tx = t1.tx;
    ty = t1.ty;
    v36 = *&t1.c;
    v37 = *&t1.a;
    CGAffineTransformMakeTranslation(&t1, 0.0, v29);
    v32 = *&t1.a;
    v33 = *&t1.c;
    v34 = *&t1.tx;
    *&t1.a = v37;
    *&t1.c = v36;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v32;
    *&t2.c = v33;
    *&t2.tx = v34;
    CGAffineTransformConcat(&v42, &t1, &t2);
    *&t1.a = v40;
    *&t1.c = v41;
    t1.tx = v11;
    t1.ty = v12;
    t2 = v42;
    CGAffineTransformConcat(&v42, &t1, &t2);
    v40 = *&v42.a;
    v41 = *&v42.c;
    v11 = v42.tx;
    v12 = v42.ty;
  }

LABEL_10:
  *a7 = v39;
  *(a7 + 8) = v40;
  *(a7 + 24) = v41;
  *(a7 + 40) = v11;
  *(a7 + 48) = v12;

  return v39;
}

void static DiagramGenerator.computeLeftMarginAnnotationBounds(at:annotation:above:textAttributes:)(uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>, CGFloat a6@<D0>, CGFloat a7@<D1>)
{
  if (a2)
  {
    v12 = *a4;
    v13 = sub_1D15A3EF8();
    LOBYTE(v24.a) = v12;
    DiagramConfiguration.TextAttributes.toTextAttributes()(v14);
    type metadata accessor for Key(0);
    sub_1D14587E0();
    v15 = sub_1D15A3E48();

    [v13 sizeWithAttributes_];
    v22 = v16;
    v23 = v17;

    v18 = -(v23 + 5.0);
    if ((a3 & 1) == 0)
    {
      v18 = 5.0;
    }

    CGAffineTransformMakeTranslation(&v24, 0.0, v18);
    v25.x = a6;
    v25.y = a7;
    v19 = CGPointApplyAffineTransform(v25, &v24);

    v20 = v19;
    *&v21 = v22;
    *(&v21 + 1) = v23;
  }

  else
  {
    v20 = 0;
    v21 = 0uLL;
  }

  *a5 = v20;
  *(a5 + 16) = v21;
  *(a5 + 32) = a2 == 0;
}

void sub_1D14FD2C0(uint64_t a1, unsigned __int8 *a2, void (*a3)(uint64_t, uint64_t, uint64_t *, double, double))
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = (v3 + 32);
    do
    {
      v8 = *v7;
      if (*(*v7 + 16))
      {

        v9 = sub_1D1451D94(v6);
        if (v10)
        {
          v11 = (*(v8 + 56) + 40 * v9);
          v13 = *v11;
          v12 = v11[1];
          v15 = v11[2];
          v14 = v11[3];
          v16 = v11[4];

          v17 = *(v13 + 2);
          if (v17)
          {
            v18 = v13[4];
            v19 = v13[5];
            if (v17 == 1)
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v14 = 0;
              v23 = 0;
            }

            else
            {

              v20 = v13;
              v21 = v12;
              v22 = v15;
              v23 = v16;
            }

            v24 = v20;
            v25 = v21;
            v26 = v22;
            v27 = v14;
            v28 = v23;
            a3(v12, v15, &v24, v18, v19);

            sub_1D1459CF0(v24, v25, v26, v27, v28);
            goto LABEL_4;
          }
        }
      }

LABEL_4:
      ++v7;
      --v4;
    }

    while (v4);
  }
}

double DiagramPointAnnotations.verticalInset()()
{
  if (!*(*v0 + 16))
  {
    return 0.0;
  }

  v1 = sub_1D15A3EF8();

  type metadata accessor for Key(0);
  sub_1D14587E0();
  v2 = sub_1D15A3E48();
  [v1 sizeWithAttributes_];
  v4 = v3;

  return v4;
}

void DiagramPointAnnotations.horizontalInsets()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {

    v3 = sub_1D15A3EF8();

    type metadata accessor for Key(0);
    sub_1D14587E0();
    v4 = sub_1D15A3E48();
    [v3 sizeWithAttributes_];

    if (v2 > *(v1 + 16))
    {
      __break(1u);
    }

    else
    {

      v5 = sub_1D15A3EF8();

      v6 = sub_1D15A3E48();
      [v5 sizeWithAttributes_];
    }
  }
}

uint64_t static DiagramGenerator.computeMaxReferenceAnnotationSize(diagramData:referencePosition:textAttributes:)(__int128 *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 5);
  v8 = *a3;
  sub_1D1459D3C(0);
  v12 = a1[1];
  v13 = *a1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D15ACDD0;
  *(inited + 48) = v12;
  *(inited + 32) = v13;
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;

  v10 = static DiagramGenerator.computeMaxReferenceAnnotationSize(referenceData:referencePosition:)(inited);
  swift_setDeallocating();
  sub_1D145A100(inited + 32);
  return v10;
}

uint64_t static DiagramGenerator.computeMaxReferenceAnnotationSize(referenceData:referencePosition:)(uint64_t a1)
{
  v1 = *(MEMORY[0x1E695F050] + 8);
  v3 = *(MEMORY[0x1E695F050] + 16);
  v4 = *(MEMORY[0x1E695F050] + 24);
  v20 = *MEMORY[0x1E695F050];
  v2 = v20;
  v21 = v1;
  v22 = v3;
  v23 = v4;
  v5 = *(a1 + 16);
  v6 = v4;
  v7 = v3;
  v14 = v1;
  v15 = v20;
  if (v5)
  {
    v8 = a1 + 80;
    do
    {
      v9 = *(v8 - 16);
      v10 = *(v8 - 8);
      v11 = *(v8 - 32);
      v17[0] = *(v8 - 48);
      v17[1] = v11;
      v18 = v9;
      v19 = v10;
      v16 = 2;
      MEMORY[0x1EEE9AC00](a1);

      sub_1D14FD2C0(v17, &v16, sub_1D14FE384);

      v8 += 56;
      --v5;
    }

    while (v5);
    v2 = v20;
    v1 = v21;
    v7 = v22;
    v6 = v23;
  }

  v24.origin.x = v2;
  v24.origin.y = v1;
  v24.size.width = v7;
  v24.size.height = v6;
  Width = CGRectGetWidth(v24);
  v25.origin.x = v2;
  v25.origin.y = v1;
  v25.size.width = v7;
  v25.size.height = v6;
  CGRectGetHeight(v25);
  v26.origin.x = v2;
  v26.origin.y = v1;
  v26.size.width = v7;
  v26.size.height = v6;
  v27.origin.x = v15;
  v27.origin.y = v14;
  v27.size.width = v3;
  v27.size.height = v4;
  if (CGRectEqualToRect(v26, v27))
  {
    return 0;
  }

  else
  {
    return *&Width;
  }
}

void sub_1D14FD944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, CGRect *a6)
{
  v7 = a5;
  static DiagramGenerator.computeLeftMarginAnnotationBounds(at:annotation:above:textAttributes:)(a2, 1, &v7, &v8, 0.0, 0.0);
  if ((v9 & 1) == 0)
  {
    *a6 = CGRectUnion(*a6, v8);
  }
}

void __swiftcall DiagramGenerator.computeReferenceLineBounds(diagramData:diagramDataKey:)(__C::CGRect_optional *__return_ptr retstr, HealthVisualization::DiagramData *diagramData, HealthVisualization::DiagramDataKey diagramDataKey)
{
  sub_1D14FE25C(v5, diagramData, diagramDataKey);
  v4 = v5[1];
  retstr->value.origin = v5[0];
  retstr->value.size = v4;
  retstr->is_nil = v6;
}

void static DiagramGenerator.computeRightMarginAnnotationBounds(at:annotation:textAttributes:)(uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>)
{
  if (a2)
  {
    v10 = *a3;
    v11 = sub_1D15A3EF8();
    LOBYTE(v21.a) = v10;
    DiagramConfiguration.TextAttributes.toTextAttributes()(v12);
    type metadata accessor for Key(0);
    sub_1D14587E0();
    v13 = sub_1D15A3E48();

    [v11 sizeWithAttributes_];
    v19 = v14;
    v20 = v15;

    CGAffineTransformMakeTranslation(&v21, -v19, v20 * -0.5);
    v22.x = a5;
    v22.y = a6;
    v16 = CGPointApplyAffineTransform(v22, &v21);

    v17 = v16;
    *&v18 = v19;
    *(&v18 + 1) = v20;
  }

  else
  {
    v17 = 0;
    v18 = 0uLL;
  }

  *a4 = v17;
  *(a4 + 16) = v18;
  *(a4 + 32) = a2 == 0;
}

void static DiagramGenerator.computeMaxMinPoints(dataGroupForPointLabels:pointLabels:valueFormatter:dataTable:)(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 4) | (*(a2 + 10) << 16);
  if ((v6 & 0x800000) == 0)
  {
    goto LABEL_15;
  }

  if ((v6 & 0xFEE0E0) == 0xFEE0E0)
  {
    goto LABEL_15;
  }

  if (!*(a4 + 16))
  {
    goto LABEL_15;
  }

  v74 = *a3;
  v73 = *(a3 + 8);
  v8 = *a2;
  v9 = sub_1D1451D94(*a1);
  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

  v11 = *(*(a4 + 56) + 40 * v9);
  sub_1D15A4148();

  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v8 == 25)
  {
    v13 = 0;
  }

  else
  {
    v13 = DiagramConfiguration.TextAttributes.toTextAttributes()(v12);
  }

  if (BYTE1(v8) == 25)
  {
    v14 = 0;
  }

  else
  {
    v14 = DiagramConfiguration.TextAttributes.toTextAttributes()(v12);
  }

  if (!(v13 | v14))
  {

LABEL_15:
    *a5 = 1;
    *(a5 + 8) = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0;
    return;
  }

  v15 = *(v11 + 16);
  if (!v15)
  {

    v19 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  v71 = v14;
  v72 = v13;
  v17 = *(v11 + 32);
  v16 = *(v11 + 40);
  v18 = v15 - 1;
  if (v15 == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    v20 = *(v11 + 40);
    v21 = MEMORY[0x1E69E7CC0];
LABEL_19:

    v22 = sub_1D15A29A8();
    v23 = DiagramConfiguration.ValueFormatter.format(value:)(v22);
    object = v23.value._object;

    if (v23.value._object)
    {
      countAndFlagsBits = v23.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 1701736270;
    }

    if (!v23.value._object)
    {
      object = 0xE400000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1D148BC24(0, v19[2] + 1, 1, v19);
    }

    v13 = v72;
    v27 = v19[2];
    v26 = v19[3];
    if (v27 >= v26 >> 1)
    {
      v19 = sub_1D148BC24((v26 > 1), v27 + 1, 1, v19);
    }

    v19[2] = v27 + 1;
    v28 = &v19[4 * v27];
    *(v28 + 4) = countAndFlagsBits;
    *(v28 + 5) = object;
    v28[6] = v17;
    v28[7] = v20;
    v29 = sub_1D15A29A8();
    v30 = DiagramConfiguration.ValueFormatter.format(value:)(v29);
    v31 = v30.value._object;

    if (v30.value._object)
    {
      v32 = v30.value._countAndFlagsBits;
    }

    else
    {
      v32 = 1701736270;
    }

    if (!v30.value._object)
    {
      v31 = 0xE400000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D148BC24(0, v21[2] + 1, 1, v21);
    }

    v34 = v21[2];
    v33 = v21[3];
    if (v34 >= v33 >> 1)
    {
      v21 = sub_1D148BC24((v33 > 1), v34 + 1, 1, v21);
    }

    v21[2] = v34 + 1;
    v35 = &v21[4 * v34];
    *(v35 + 4) = v32;
    *(v35 + 5) = v31;
    v35[6] = v17;
    v35[7] = v16;
    v14 = v71;
    if (v72)
    {
LABEL_38:
      v36 = 0x4018000000000000;
      if (v14)
      {
LABEL_39:
        v37 = 0x4018000000000000;
LABEL_43:
        *a5 = v19;
        *(a5 + 8) = v36;
        *(a5 + 16) = v13;
        *(a5 + 24) = v21;
        *(a5 + 32) = v37;
        *(a5 + 40) = v14;
        return;
      }

LABEL_42:

      v21 = 0;
      v37 = 0;
      goto LABEL_43;
    }

LABEL_41:

    v19 = 0;
    v36 = 0;
    if (v14)
    {
      goto LABEL_39;
    }

    goto LABEL_42;
  }

  v38 = (v11 + 56);
  v19 = MEMORY[0x1E69E7CC0];
  v39 = *(v11 + 40);
  v40 = *(v11 + 32);
  v20 = v39;
  v21 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = *(v38 - 1);
    v16 = *v38;
    if (vabdd_f64(v17, v40) < 0.000001)
    {
      if (v16 > v20)
      {
        v20 = *v38;
      }

      if (v39 < v16)
      {
        v16 = v39;
      }

      v17 = v40;
      goto LABEL_50;
    }

    v41 = sub_1D15A29A8();
    if (v73)
    {
      if (v74)
      {
        v42 = [objc_opt_self() hk_percentNumberFormatter];
        v43 = [v42 stringFromNumber_];
        goto LABEL_57;
      }

      v49 = HKIntegerFormatter();
      if (!v49)
      {
        goto LABEL_84;
      }

      v50 = v49;
      v51 = [v49 stringFromNumber_];

      if (v51)
      {
        v46 = sub_1D15A3F38();
        v48 = v52;

        goto LABEL_63;
      }
    }

    else
    {
      v44 = HKNumberFormatterWithDecimalPrecision();
      if (v44)
      {
        v42 = v44;
        v43 = [v44 stringFromNumber_];
LABEL_57:
        v45 = v43;

        if (v45)
        {
          v46 = sub_1D15A3F38();
          v48 = v47;

          goto LABEL_63;
        }
      }
    }

    v48 = 0xE400000000000000;
    v46 = 1701736270;
LABEL_63:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1D148BC24(0, v19[2] + 1, 1, v19);
    }

    v54 = v19[2];
    v53 = v19[3];
    if (v54 >= v53 >> 1)
    {
      v19 = sub_1D148BC24((v53 > 1), v54 + 1, 1, v19);
    }

    v19[2] = v54 + 1;
    v55 = &v19[4 * v54];
    *(v55 + 4) = v46;
    *(v55 + 5) = v48;
    v55[6] = v40;
    v55[7] = v20;
    v56 = sub_1D15A29A8();
    if (!v73)
    {
      v59 = HKNumberFormatterWithDecimalPrecision();
      if (!v59)
      {
        goto LABEL_77;
      }

      v57 = v59;
      v58 = [v59 stringFromNumber_];
      goto LABEL_72;
    }

    if (v74)
    {
      v57 = [objc_opt_self() hk_percentNumberFormatter];
      v58 = [v57 stringFromNumber_];
LABEL_72:
      v60 = v58;

      if (!v60)
      {
        goto LABEL_77;
      }

      v61 = sub_1D15A3F38();
      v63 = v62;

      goto LABEL_78;
    }

    v64 = HKIntegerFormatter();
    if (!v64)
    {
      break;
    }

    v65 = v64;
    v66 = [v64 stringFromNumber_];

    if (!v66)
    {
LABEL_77:

      v63 = 0xE400000000000000;
      v61 = 1701736270;
      goto LABEL_78;
    }

    v61 = sub_1D15A3F38();
    v63 = v67;

LABEL_78:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D148BC24(0, v21[2] + 1, 1, v21);
    }

    v69 = v21[2];
    v68 = v21[3];
    if (v69 >= v68 >> 1)
    {
      v21 = sub_1D148BC24((v68 > 1), v69 + 1, 1, v21);
    }

    v21[2] = v69 + 1;
    v70 = &v21[4 * v69];
    *(v70 + 4) = v61;
    *(v70 + 5) = v63;
    v70[6] = v40;
    v70[7] = v39;
    v20 = v16;
    v40 = v17;
LABEL_50:
    v38 += 2;
    v39 = v16;
    if (!--v18)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
}

int8x16_t sub_1D14FE25C@<Q0>(int8x16_t *__return_ptr a1@<X8>, uint64_t *a2@<X0>, unsigned __int8 *a3@<X1>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a2 + 32);
  v9 = a2[5];
  v10 = *a3;
  v12 = *(MEMORY[0x1E695F050] + 8);
  v13 = *(MEMORY[0x1E695F050] + 16);
  v14 = *(MEMORY[0x1E695F050] + 24);
  *&v26 = *MEMORY[0x1E695F050];
  v11 = *&v26;
  *(&v26 + 1) = v12;
  *&v27 = v13;
  *(&v27 + 1) = v14;
  DiagramData.diagramBounds(forceNonZeroSize:)(1);
  v23[0] = v4;
  v23[1] = v5;
  v23[2] = v6;
  v23[3] = v7;
  v24 = v8;
  v25 = v9;
  v22 = v10;
  sub_1D14FD2C0(v23, &v22, sub_1D14FE3E4);
  *&v28.origin.x = v26;
  *&v28.size.width = v27;
  v20 = v27;
  v21 = v26;
  v28.origin.y = *(&v26 + 1);
  v28.size.height = *(&v27 + 1);
  v29.origin.x = v11;
  v29.origin.y = v12;
  v29.size.width = v13;
  v29.size.height = v14;
  v15 = CGRectEqualToRect(v28, v29);
  if (v15)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17 = vdupq_n_s64(v16);
  v18 = vbicq_s8(v21, v17);
  result = vbicq_s8(v20, v17);
  *a1 = v18;
  a1[1] = result;
  a1[2].i8[0] = v15;
  return result;
}

void sub_1D14FE3E4(CGFloat a1, CGFloat a2)
{
  v4.origin.y = a2;
  v4.origin.x = a1;
  v4.size.width = *(v2 + 16);
  v4.size.height = *(v2 + 24);
  v3 = *(v2 + 32);
  *v3 = CGRectUnion(*v3, v4);
}

uint64_t SevenDayDoseOperationError.hashValue.getter()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

double sub_1D14FE4BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EE05B058;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

void sub_1D14FE57C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EE05B068;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1D14FE5DC()
{
  v1 = qword_1EE05B068;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1D14FE628(uint64_t a1, uint64_t *a2)
{
  sub_1D15013F4(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1D149D62C(a1, &v10 - v5);
  v7 = *a2;
  v8 = qword_1EE068348;
  swift_beginAccess();
  sub_1D14F46E4(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1D14FE70C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EE068348;
  swift_beginAccess();
  return sub_1D149D62C(v1 + v3, a1);
}

char *sub_1D14FE774()
{
  v1 = qword_1EE05B070;
  v2 = *&v0[qword_1EE05B070];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1D14FE7E4(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_1D1459664(v4);
  }

  sub_1D145D5B8(v2);
  return v3;
}

char *sub_1D14FE7E4(char *a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D15013F4(0, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34[-v4 - 8];
  sub_1D15013F4(0, &qword_1EE05B520, MEMORY[0x1E6968130], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34[-v7 - 8];
  v9 = *&a1[qword_1EE068340];
  v10 = qword_1EE05B068;
  result = swift_beginAccess();
  if (!*&a1[v10])
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v40 = *&a1[v10];
  MEMORY[0x1EEE9AC00](result);
  v32 = &v40;
  v13 = v12;
  v14 = sub_1D14C2EB0(sub_1D15014B8, (&v33 - 4), v9);

  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = qword_1EE068348;
  swift_beginAccess();
  sub_1D149D62C(&a1[v15], v8);
  v16 = sub_1D15A22A8();
  v17 = (*(*(v16 - 8) + 48))(v8, 1, v16);
  result = sub_1D1491CBC(v8);
  if (v17 == 1)
  {
    return 0;
  }

  v18 = *&a1[v10];
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = v18;
  sub_1D14FEB90(v37);
  v34[0] = v37[0];
  v35 = v38;
  v36 = v39;
  sub_1D149D62C(&a1[v15], v5);
  ConfigurationOverrides = type metadata accessor for StatisticsQueryConfigurationOverrides(0);
  *&v5[*(ConfigurationOverrides + 20)] = 0;
  v5[*(ConfigurationOverrides + 24)] = 1;
  (*(*(ConfigurationOverrides - 8) + 56))(v5, 0, 1, ConfigurationOverrides);
  v21 = [a1 name];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1D15A3F38();
    v25 = v24;
  }

  else
  {
    v26 = a1;
    v22 = [v26 description];
    v23 = sub_1D15A3F38();
    v25 = v27;
  }

  v28 = *&a1[qword_1EE068350];
  v29 = a1[qword_1EE058BF8];
  objc_allocWithZone(type metadata accessor for StatisticsCollectionQueryOperation(0));
  v30 = v28;
  v31 = sub_1D151F094(v19, v34, v5, v23, v25, 33, v30, v29, nullsub_1, 0);

  return v31;
}

void sub_1D14FEB90(uint64_t a1@<X8>)
{
  v3 = qword_1EE05B068;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 _quantityTypeWithCode_];
  v8 = v7;
  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_6;
    }

LABEL_8:

LABEL_9:
    v10 = &unk_1F4D3AAE0;
    goto LABEL_10;
  }

  if (!v7)
  {
    v8 = v6;
    goto LABEL_8;
  }

  sub_1D15013A8();
  v9 = sub_1D15A4598();

  if ((v9 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v10 = &unk_1F4D3AAB8;
LABEL_10:
  *a1 = 0;
  *(a1 + 8) = v10;
  *(a1 + 16) = 256;
}

void sub_1D14FEC84(uint64_t a1)
{
  v2 = *(v1 + qword_1EE05B070);
  *(v1 + qword_1EE05B070) = a1;
  sub_1D1459664(v2);
}

void (*sub_1D14FEC9C(char **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D14FE774();
  return sub_1D14FECE4;
}

void sub_1D14FECE4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + qword_1EE05B070);
  *(v3 + qword_1EE05B070) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1D1459664(v4);
  }

  else
  {

    sub_1D1459664(v4);
  }
}

id SevenDayDoseOperation.init(healthStore:name:environment:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = qword_1EE05B058;
  sub_1D14FF03C();
  v10 = swift_allocError();
  *v11 = 0;
  v22 = v10;
  LOBYTE(v23) = 1;
  sub_1D15013F4(0, &qword_1EE05B3E0, sub_1D14FF090, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v4[v9] = sub_1D15A2D68();
  *&v4[qword_1EE05B060] = 0x4122750000000000;
  *&v4[qword_1EE05B068] = 0;
  v12 = qword_1EE068348;
  v13 = sub_1D15A22A8();
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  *&v5[qword_1EE05B070] = 1;
  sub_1D1496034();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D15B1320;
  v15 = objc_opt_self();
  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v14 + 32) = result;
  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  *&v5[qword_1EE068340] = v14;
  *&v5[qword_1EE068350] = a1;
  *(v14 + 40) = result;
  v5[qword_1EE058BF8] = a4 & 1;
  v21.receiver = v5;
  v21.super_class = type metadata accessor for SevenDayDoseOperation(0);
  v17 = a1;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  v19 = v18;
  if (a3)
  {
    v20 = sub_1D15A3EF8();
  }

  else
  {
    v20 = 0;
  }

  [v18 setName_];

  return v18;
}

unint64_t sub_1D14FF03C()
{
  result = qword_1EE05AFF0;
  if (!qword_1EE05AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AFF0);
  }

  return result;
}

void sub_1D14FF090(uint64_t a1)
{
  if (!qword_1EE05ABA0)
  {
    sub_1D148F3FC();
    v1 = sub_1D15A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE05ABA0);
    }
  }
}

uint64_t type metadata accessor for SevenDayDoseOperation(uint64_t a1)
{
  result = qword_1EE05B048;
  if (!qword_1EE05B048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D14FF144(void *a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  sub_1D15013F4(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1D15A26A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = qword_1EE05B068;
  swift_beginAccess();
  v21 = *(v3 + v20);
  *(v3 + v20) = a1;
  v22 = a1;

  v23 = v36;
  sub_1D15A2548();
  sub_1D15A2538();
  v35 = v11;
  v24 = *(v11 + 16);
  v24(v16, v19, v10);
  v36 = v10;
  v24(v13, v23, v10);
  sub_1D15A2268();
  v25 = sub_1D15A22A8();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v9, 0, 1, v25);
  v27 = qword_1EE068348;
  swift_beginAccess();
  sub_1D14F46E4(v9, v3 + v27);
  result = swift_endAccess();
  if (*(v3 + v20))
  {
    v29 = *(v3 + qword_1EE068340);
    v37 = *(v3 + v20);
    MEMORY[0x1EEE9AC00](result);
    *(&v34 - 2) = &v37;
    v31 = v30;
    LOBYTE(v29) = sub_1D14C2EB0(sub_1D1500E3C, (&v34 - 4), v29);
    (*(v35 + 8))(v19, v36);

    if ((v29 & 1) == 0)
    {
      return 0;
    }

    v32 = v34;
    sub_1D149D62C(v3 + v27, v34);
    v33 = (*(v26 + 48))(v32, 1, v25) != 1;
    sub_1D1491CBC(v32);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D14FF4EC(void *a1, uint64_t a2)
{
  sub_1D15013F4(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  v11 = qword_1EE05B068;
  swift_beginAccess();
  v12 = *(v2 + v11);
  *(v2 + v11) = a1;
  v13 = a1;

  v14 = sub_1D15A22A8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10, a2, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  v16 = qword_1EE068348;
  swift_beginAccess();
  sub_1D14F46E4(v10, v2 + v16);
  result = swift_endAccess();
  if (*(v2 + v11))
  {
    v18 = *(v2 + qword_1EE068340);
    v23 = *(v2 + v11);
    MEMORY[0x1EEE9AC00](result);
    *&v22[-16] = &v23;
    v20 = v19;
    LOBYTE(v18) = sub_1D14C2EB0(sub_1D15014B8, &v22[-32], v18);

    if ((v18 & 1) == 0)
    {
      return 0;
    }

    sub_1D149D62C(v2 + v16, v7);
    v21 = (*(v15 + 48))(v7, 1, v14) != 1;
    sub_1D1491CBC(v7);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D14FF768()
{
  v1 = v0;
  v2 = sub_1D15A3268();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentQueue];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D14FE774();
    if (!v8)
    {
      sub_1D15A31E8();
      v22 = v0;
      v23 = sub_1D15A3248();
      v24 = sub_1D15A4318();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock = v31;
        *v25 = 136446210;
        ObjectType = swift_getObjectType();
        sub_1D1500E58();
        v26 = sub_1D15A3F68();
        v28 = sub_1D1479780(v26, v27, &aBlock);

        *(v25 + 4) = v28;
        _os_log_impl(&dword_1D1446000, v23, v24, "%{public}s attempted to run with invalid configuration", v25, 0xCu);
        v29 = v31;
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1D388BF00](v29, -1, -1);
        MEMORY[0x1D388BF00](v25, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      swift_beginAccess();

      sub_1D15A2D38();

      sub_1D15A2DB8();
      goto LABEL_8;
    }

    v9 = v8;
    v10 = qword_1EE05B068;
    swift_beginAccess();
    v11 = *&v1[v10];
    if (v11)
    {
      v12 = [v11 identifier];
      v13 = sub_1D15A3F38();
      v15 = v14;

      v16._countAndFlagsBits = 0x676E696E6E7572;
      v16._object = 0xE700000000000000;
      v17._countAndFlagsBits = v13;
      v17._object = v15;
      NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v16, v17);

      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = sub_1D1500EA0;
      v37 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v33 = 1107296256;
      v34 = sub_1D1493D34;
      v35 = &block_descriptor_6;
      v19 = _Block_copy(&aBlock);
      v20 = objc_opt_self();

      v21 = [v20 blockOperationWithBlock_];
      _Block_release(v19);

      [v21 addDependency_];
      [v7 addOperation_];
      [v7 addOperation_];

      v7 = v21;
LABEL_8:

      return;
    }

    __break(1u);
  }

  aBlock = 0;
  v33 = 0xE000000000000000;
  sub_1D15A47D8();
  swift_getObjectType();
  v30 = sub_1D15A4D18();
  MEMORY[0x1D388A330](v30);

  MEMORY[0x1D388A330](0xD000000000000031, 0x80000001D15C0760);
  sub_1D15A4908();
  __break(1u);
}

void sub_1D14FFC04(void *a1)
{
  v1 = a1;
  sub_1D14FF768();
}

void sub_1D14FFC4C()
{
  v1 = v0;
  v2._countAndFlagsBits = 0x676E696E61656C63;
  v2._object = 0xEB00000000707520;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v2, v3);
  if ([v0 isCancelled])
  {
    v4 = sub_1D14FE774();
    if (v4)
    {
      v5 = v4;
      if ([v4 isCancelled])
      {
      }

      else
      {
        [v5 cancel];

        v6 = *&v1[qword_1EE05B070];
        *&v1[qword_1EE05B070] = 0;
        sub_1D1459664(v6);
      }
    }

    swift_beginAccess();

    sub_1D15A2D38();

    v7._countAndFlagsBits = 0x656C6C65636E6163;
    v7._object = 0xE900000000000064;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v7, v8);
  }
}

id SevenDayDoseOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double sub_1D14FFE14()
{

  sub_1D1491CBC(v0 + qword_1EE068348);
  sub_1D1459664(*(v0 + qword_1EE05B070));

  return result;
}

id SevenDayDoseOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SevenDayDoseOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D14FFECC(uint64_t a1)
{

  sub_1D1491CBC(a1 + qword_1EE068348);
  sub_1D1459664(*(a1 + qword_1EE05B070));

  return result;
}

void sub_1D14FFF6C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    sub_1D15A2DA8();
  }
}

void sub_1D1500008(void *a1)
{
  v2 = sub_1D15A3268();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = sub_1D14FE774();
  if (v9)
  {
    v10 = v9;
    if ([v9 isFinished])
    {

      sub_1D15A2D28();

      v11 = v41;
      if (v42 == 1)
      {
        sub_1D15A31E8();
        v12 = a1;
        sub_1D14E261C(v11);
        v13 = sub_1D15A3248();
        v14 = sub_1D15A4318();

        sub_1D14A8208(v11);
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v38 = v14;
          v16 = v15;
          v39 = swift_slowAlloc();
          v41 = v39;
          *v16 = 136446466;
          ObjectType = swift_getObjectType();
          sub_1D1500E58();
          v17 = sub_1D15A3F68();
          v37 = v13;
          v19 = sub_1D1479780(v17, v18, &v41);

          *(v16 + 4) = v19;
          *(v16 + 12) = 2082;
          swift_getErrorValue();
          v20 = sub_1D15A4C08();
          v22 = sub_1D1479780(v20, v21, &v41);

          *(v16 + 14) = v22;
          v23 = v37;
          _os_log_impl(&dword_1D1446000, v37, v38, "%{public}s base query result failed with error: %{public}s", v16, 0x16u);
          v24 = v39;
          swift_arrayDestroy();
          MEMORY[0x1D388BF00](v24, -1, -1);
          MEMORY[0x1D388BF00](v16, -1, -1);
        }

        else
        {
        }

        (*(v3 + 8))(v8, v2);
        v33 = swift_beginAccess();
        MEMORY[0x1EEE9AC00](v33);
        *(&v36 - 2) = v11;

        sub_1D15A2D38();

        sub_1D14A8208(v11);
      }

      else
      {
        sub_1D1500558(v41);
        sub_1D14A8208(v11);
      }

      v34._countAndFlagsBits = 0x64656873696E6966;
      v34._object = 0xE800000000000000;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v34, v35);

      return;
    }
  }

  sub_1D15A31E8();
  v25 = a1;
  v26 = sub_1D15A3248();
  v27 = sub_1D15A4318();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41 = v29;
    *v28 = 136446210;
    ObjectType = swift_getObjectType();
    sub_1D1500E58();
    v30 = sub_1D15A3F68();
    v32 = sub_1D1479780(v30, v31, &v41);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1D1446000, v26, v27, "%{public}s attempted final result processing but base query is not finished", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1D388BF00](v29, -1, -1);
    MEMORY[0x1D388BF00](v28, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();

  sub_1D15A2D38();
}

uint64_t sub_1D15004FC(uint64_t a1, char a2)
{
  sub_1D1487E60(*a1, *(a1 + 8));
  sub_1D14FF03C();
  result = swift_allocError();
  *v5 = a2;
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

void sub_1D1500558(void *a1)
{
  v42 = a1;
  v2 = sub_1D15A26A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15013F4(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = swift_allocObject();
  v43 = v11;
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v41 = v11 + 16;
  v12 = qword_1EE068348;
  swift_beginAccess();
  v45 = v1;
  sub_1D149D62C(v1 + v12, v10);
  v13 = sub_1D15A22A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v10, 1, v13) == 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_1D15A2288();
  v38 = sub_1D15A2618();
  v16 = v3 + 8;
  v17 = *(v3 + 8);
  v40 = v2;
  v39 = v16;
  v17(v5, v2);
  v18 = *(v14 + 8);
  v18(v10, v13);
  v19 = v44;
  sub_1D149D62C(v45 + v12, v44);
  if (v15(v19, 1, v13) == 1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  sub_1D15A2258();
  v20 = sub_1D15A2618();
  v17(v5, v40);
  v18(v19, v13);
  v21 = v43;
  aBlock[4] = sub_1D1501354;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1500DC8;
  aBlock[3] = &block_descriptor_17;
  v22 = _Block_copy(aBlock);

  v23 = v38;
  [v42 enumerateStatisticsFromDate:v38 toDate:v20 withBlock:v22];
  _Block_release(v22);

  swift_beginAccess();
  v24 = *(v21 + 16);
  v25 = *(v24 + 16);
  if (v25)
  {

    v26 = sub_1D148B9C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v27 = *(v24 + 32);
    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    v30 = *(v24 + 40) + 0.0;
    v31 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      goto LABEL_16;
    }

    while (1)
    {
      *(v26 + 2) = v31;
      v28 = &v26[16 * v29];
      *(v28 + 32) = v27;
      *(v28 + 40) = v30;
      if (!--v25)
      {
        break;
      }

      v29 = 0;
      v33 = 0;
      while (1)
      {
        v34 = *(v26 + 2);
        if (v33 >= v34)
        {
          break;
        }

        v27 = *(v24 + v29 + 48);
        v30 = *(v24 + v29 + 56);
        v35 = *&v26[v29 + 40];
        v36 = *(v26 + 3);
        v31 = v34 + 1;
        if (v34 >= v36 >> 1)
        {
          v26 = sub_1D148B9C4((v36 > 1), v34 + 1, 1, v26);
        }

        *(v26 + 2) = v31;
        v28 = &v26[16 * v34];
        *(v28 + 32) = v27;
        *(v28 + 40) = v30 + v35;
        ++v33;
        v29 += 16;
        if (v25 == v33)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_16:
      v26 = sub_1D148B9C4((v28 > 1), v31, 1, v26);
    }

LABEL_6:
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v32 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v32);
  *(&v37 - 2) = v26;

  sub_1D15A2D38();
}

char *sub_1D1500AB4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D15A26A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1500C70(7);
  v11 = v10;
  v12 = [a1 startDate];
  sub_1D15A2668();

  sub_1D15A2548();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  v15 = *(a3 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v15;
  if ((result & 1) == 0)
  {
    result = sub_1D148B9C4(0, *(v15 + 2) + 1, 1, v15);
    v15 = result;
    *(a3 + 16) = result;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    result = sub_1D148B9C4((v17 > 1), v18 + 1, 1, v15);
    v15 = result;
  }

  v19 = *&v9;
  if (v11)
  {
    v19 = 0.0;
  }

  *(v15 + 2) = v18 + 1;
  v20 = &v15[16 * v18];
  *(v20 + 4) = v14;
  *(v20 + 5) = v19;
  *(a3 + 16) = v15;
  return result;
}

id sub_1D1500C70(uint64_t a1)
{
  result = [v1 averageQuantity];
  if (*&result != 0.0)
  {
    v4 = result;
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 decibelAWeightedSoundPressureLevelUnit];
    [v6 doubleValueForUnit_];
    v9 = v8;

    result = [v1 duration];
    if (*&result != 0.0)
    {
      v10 = result;
      v11 = [v5 secondUnit];
      [v10 doubleValueForUnit_];
      v13 = v12;

      [objc_opt_self() maximumDurationInSecondsForLEQ:a1 days:v9];
      if (v14 <= COERCE_DOUBLE(1))
      {
        *&result = 0.0;
      }

      else
      {
        *&result = v13 / v14;
      }
    }
  }

  return result;
}

void sub_1D1500DC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_1D1500E58()
{
  result = qword_1EC630C30;
  if (!qword_1EC630C30)
  {
    type metadata accessor for SevenDayDoseOperation(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC630C30);
  }

  return result;
}

unint64_t sub_1D1500EAC()
{
  result = qword_1EC630C38;
  if (!qword_1EC630C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630C38);
  }

  return result;
}

void sub_1D1500F10(uint64_t a1)
{
  sub_1D15013F4(319, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

id sub_1D1501304(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1D1487E60(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = 1;

  return v3;
}

double sub_1D150135C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1D1487E60(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = 0;

  return result;
}

unint64_t sub_1D15013A8()
{
  result = qword_1EE05B458;
  if (!qword_1EE05B458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE05B458);
  }

  return result;
}

void sub_1D15013F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void static SharedDiagrams.SevenDayDose.diagramData(contentPoints:referenceLinePositions:valueFormatter:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v71 = *a3;
  v70 = *(a3 + 8);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v80 = MEMORY[0x1E69E7CC0];
    sub_1D145B8B4(0, v6, 0);
    v7 = v80;
    v9 = (a1 + 32);
    v10 = *(v80 + 2);
    do
    {
      v11 = *v9;
      v80 = v7;
      v12 = *(v7 + 3);
      v13 = v10 + 1;
      if (v10 >= v12 >> 1)
      {
        v72 = v11;
        sub_1D145B8B4((v12 > 1), v10 + 1, 1);
        v11 = v72;
        v7 = v80;
      }

      *(v7 + 2) = v13;
      *&v7[2 * v10 + 4] = v11;
      ++v9;
      ++v10;
      --v6;
    }

    while (v6);
  }

  else
  {
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v13)
    {
      v63 = MEMORY[0x1E69E7CC0];

      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 1;
      goto LABEL_29;
    }
  }

  v14 = v7[4];
  v15 = &v7[2 * v13 + 4];
  v17 = *(v15 - 16);
  v16 = *(v15 - 8);
  sub_1D1501CEC(0, &qword_1EE05AC00, sub_1D1501C8C);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D15AEBB0;
  *(inited + 32) = 0;
  *(inited + 40) = v7;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 1;
  *(inited + 88) = v7;
  *(inited + 96) = 0u;
  *(inited + 112) = 0u;
  swift_bridgeObjectRetain_n();
  v66 = sub_1D159BEFC(inited);
  swift_setDeallocating();
  sub_1D1501C8C();
  swift_arrayDestroy();
  sub_1D1501CEC(0, &qword_1EE05B438, type metadata accessor for CGPoint);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D15ACDD0;
  v69 = v17;
  *(v19 + 32) = v17;
  *(v19 + 40) = v16;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1D15ACDD0;
  *(v20 + 32) = 1;
  v21 = v20 + 32;
  *(v20 + 40) = v19;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  v65 = sub_1D159BEFC(v20);
  swift_setDeallocating();
  sub_1D1501D40(v21);
  v22 = v7[4];
  v23 = v7 + 5;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  do
  {
    v85.origin.x = *(v23 - 1);
    v85.origin.y = *v23;
    v85.size.width = 0.0;
    v85.size.height = 0.0;
    *&v22 = CGRectUnion(*&v22, v85);
    v23 += 2;
    --v13;
  }

  while (v13);
  height = v26;
  width = v25;
  y = v24;
  x = v22;

  v31 = *(a2 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  if (!v31)
  {
LABEL_28:
    sub_1D1501D9C(0);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1D15AEBB0;
    *(v62 + 32) = v66;
    *(v62 + 40) = v65;
    v80 = v62;
    sub_1D14C4A04(v32, xmmword_1D15AEBB0);
    v63 = v80;
    *a4 = x;
    *(a4 + 8) = y;
    *(a4 + 16) = width;
    *(a4 + 24) = height;
    *(a4 + 32) = 0;
LABEL_29:
    *(a4 + 40) = v63;
    return;
  }

  v64 = a4;
  v80 = MEMORY[0x1E69E7CC0];
  sub_1D14A7994(0, v31, 0);
  v32 = v80;
  v33 = (a2 + 32);
  v67 = *(MEMORY[0x1E695F050] + 8);
  v68 = *MEMORY[0x1E695F050];
  v35 = *(MEMORY[0x1E695F050] + 16);
  v34 = *(MEMORY[0x1E695F050] + 24);
  while (1)
  {
    v36 = *v33;
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D15AEBB0;
    *(v37 + 32) = v14;
    *(v37 + 40) = v36;
    *(v37 + 48) = v69;
    *(v37 + 56) = v36;
    v86.size.width = 0.0;
    v86.size.height = 0.0;
    v81.origin.y = v67;
    v81.origin.x = v68;
    v81.size.width = v35;
    v81.size.height = v34;
    v86.origin.x = v14;
    v86.origin.y = v36;
    v82 = CGRectUnion(v81, v86);
    v87.origin.x = *(v37 + 48);
    v87.origin.y = *(v37 + 56);
    v87.size.width = 0.0;
    v87.size.height = 0.0;
    v83 = CGRectUnion(v82, v87);
    v88.origin.y = v83.origin.y;
    v88.size.height = v83.size.height;
    v83.origin.x = x;
    v83.origin.y = y;
    v83.size.width = width;
    v83.size.height = height;
    v88.origin.x = x;
    v88.size.width = width;
    v84 = CGRectUnion(v83, v88);
    x = v84.origin.x;
    y = v84.origin.y;
    width = v84.size.width;
    height = v84.size.height;
    v74[0] = 2;
    v38 = sub_1D15A29A8();
    v73 = v32;
    if (v70)
    {
      if (v71)
      {
        v39 = [objc_opt_self() hk_percentNumberFormatter];
        v40 = [v39 stringFromNumber_];
        goto LABEL_19;
      }

      v41 = HKIntegerFormatter();
      if (!v41)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v41 = HKNumberFormatterWithDecimalPrecision();
      if (!v41)
      {
        goto LABEL_21;
      }
    }

    v39 = v41;
    v40 = [v41 stringFromNumber_];
LABEL_19:
    v42 = v40;

    if (v42)
    {
      v43 = sub_1D15A3F38();
      v45 = v44;

      goto LABEL_22;
    }

LABEL_21:

    v43 = sub_1D15A4168();
    v45 = v46;
LABEL_22:
    v75 = v37;
    v76 = v43;
    v77 = v45;
    sub_1D1501E10(0, &qword_1EE05ACC0, MEMORY[0x1E69E6EC8]);
    v78 = 0;
    v79 = 0;
    v47 = sub_1D15A4968();
    v48 = v74[0];
    v49 = v75;
    v50 = v76;
    v51 = v77;
    v52 = v78;
    v53 = v79;

    v54 = sub_1D1451D94(v48);
    if (v55)
    {
      break;
    }

    v47[(v54 >> 6) + 8] |= 1 << v54;
    *(v47[6] + v54) = v48;
    v56 = (v47[7] + 40 * v54);
    *v56 = v49;
    v56[1] = v50;
    v56[2] = v51;
    v56[3] = v52;
    v56[4] = v53;
    v57 = v47[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_32;
    }

    v47[2] = v59;

    sub_1D1501D40(v74);
    v32 = v73;
    v80 = v73;
    v61 = *(v73 + 16);
    v60 = *(v73 + 24);
    if (v61 >= v60 >> 1)
    {
      sub_1D14A7994((v60 > 1), v61 + 1, 1);
      v32 = v80;
    }

    *(v32 + 16) = v61 + 1;
    *(v32 + 8 * v61 + 32) = v47;
    ++v33;
    if (!--v31)
    {
      a4 = v64;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

double static SharedDiagrams.SevenDayDose.highlightLineDiagramConfig()@<D0>(uint64_t a1@<X8>)
{
  sub_1D1501E7C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D15AEBB0;
  *(v2 + 32) = 0x404030104070705;
  *(v2 + 40) = 258;
  *(v2 + 48) = 0;
  *(v2 + 58) = -2;
  *(v2 + 56) = -7968;
  *(v2 + 64) = 0x204010105190700;
  *(v2 + 72) = 261;
  *(v2 + 80) = 0;
  *(v2 + 90) = -2;
  *(v2 + 88) = -7968;
  *a1 = v2;
  *&result = 0x1000002010200;
  *(a1 + 8) = xmmword_1D15B2710;
  *(a1 + 24) = 1;
  *(a1 + 32) = 513;
  *(a1 + 72) = 0;
  *(a1 + 88) = 64;
  return result;
}

double static SharedDiagrams.SevenDayDose.alertLineDiagramConfig()@<D0>(uint64_t a1@<X8>)
{
  sub_1D1501E7C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D15AEBB0;
  *(v2 + 32) = 0x404030104070705;
  *(v2 + 40) = 258;
  *(v2 + 48) = 0;
  *(v2 + 58) = -2;
  *(v2 + 56) = -7968;
  *(v2 + 64) = 0x219000105190700;
  *(v2 + 72) = 272;
  *(v2 + 80) = 6409;
  *(v2 + 90) = 0x80;
  *(v2 + 88) = 0;
  *a1 = v2;
  *&result = 0x100000201020DLL;
  *(a1 + 8) = xmmword_1D15B2720;
  *(a1 + 24) = 1;
  *(a1 + 32) = 513;
  *(a1 + 72) = 0;
  *(a1 + 88) = 64;
  return result;
}

void sub_1D1501C8C()
{
  if (!qword_1EE05B2C0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE05B2C0);
    }
  }
}

void sub_1D1501CEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4B78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1501D40(uint64_t a1)
{
  sub_1D1501C8C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1501D9C(uint64_t a1)
{
  if (!qword_1EE05ABE8)
  {
    sub_1D1501E10(255, &qword_1EE05B5D8, MEMORY[0x1E69E5E28]);
    v1 = sub_1D15A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE05ABE8);
    }
  }
}

void sub_1D1501E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D144D7AC();
    v7 = a3(a1, &type metadata for DiagramDataKey, &type metadata for DiagramDataGroup, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D1501E7C()
{
  if (!qword_1EE05ABF0)
  {
    v0 = sub_1D15A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05ABF0);
    }
  }
}

void sub_1D1501EDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  sub_1D1503864(*a1, v2, v3);
  sub_1D1503698(v1, v2, v3);

  sub_1D1503870(v1, v2, v3);
}

uint64_t sub_1D1501F48()
{

  sub_1D15A2D28();

  return v1;
}

id sub_1D1501F98()
{
  v1 = qword_1EC630C60;
  v2 = *(v0 + qword_1EC630C60);
  if (v2)
  {
    v3 = *(v0 + qword_1EC630C60);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_1D1502008(v0, ObjectType);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1D1502008(void *a1, uint64_t a2)
{
  v29 = a2;
  v31 = *MEMORY[0x1E69E7D40] & *a1;
  v3 = sub_1D15A31D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE05B398;
  v11 = a1;
  sub_1D15A31C8();
  v12 = *(v11 + qword_1EC630C68);
  v28 = *(v11 + qword_1EC630C78);
  v13 = *(v11 + qword_1EC630C80);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = *(v4 + 16);
  v30 = v9;
  v15(v6, v9, v3);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = *(v31 + class metadata base offset for CountComparisonQueryOperation);
  *(v18 + 24) = v14;
  v19 = *(v4 + 32);
  v31 = v3;
  v19(v18 + v16, v6, v3);
  *(v18 + v17) = v29;
  if (v13)
  {
    sub_1D1503944();
    v20 = v12;

    v13 = sub_1D15A40A8();
  }

  else
  {
    v21 = v12;
  }

  v22 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  aBlock[4] = sub_1D150387C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D14961D8;
  aBlock[3] = &block_descriptor_7;
  v23 = _Block_copy(aBlock);
  v24 = [v22 initWithSampleType:v12 predicate:v28 limit:0 sortDescriptors:v13 resultsHandler:v23];

  _Block_release(v23);

  v25 = v24;
  v26 = [v11 name];
  [v25 setDebugIdentifier_];

  [v25 setQualityOfService_];
  (*(v4 + 8))(v30, v31);
  return v25;
}

void sub_1D15023CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v6 = v5;
    sub_1D15A2DA8();
  }
}

double sub_1D1502490(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7 = sub_1D1502FCC(a1);
    v9 = v8;
  }

  else
  {
    v40 = sub_1D15A4D18();
    v41 = v11;
    MEMORY[0x1D388A330](58, 0xE100000000000000);
    v12 = [*(a2 + qword_1EC630C90) profileIdentifier];
    v13 = [v12 description];
    v14 = sub_1D15A3F38();
    v16 = v15;

    MEMORY[0x1D388A330](v14, v16);

    MEMORY[0x1D388A330](0x64656C69616620, 0xE700000000000000);
    v17 = v41;
    if (a3)
    {
      v18 = v40;
      v19 = a3 | 0x8000000000000000;
    }

    else
    {

      v18 = 0;
      v17 = 0;
      v19 = 0xC000000000000000;
    }

    sub_1D1487F34();
    v20 = swift_allocError();
    *v21 = v18;
    v21[1] = v17;
    v21[2] = v19;
    swift_getErrorValue();
    v22 = a3;
    sub_1D1487F88(v18, v17, v19);
    v23._countAndFlagsBits = sub_1D15A4C08();
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    NSOperation.logErrorString(_:withInfo:)(v23, v24);

    v7 = swift_allocError();
    *v25 = v18;
    v25[1] = v17;
    v25[2] = v19;
    v26 = v7;
    v9 = 0;
  }

  sub_1D15A4468();
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v27 = a1 == 0;
  sub_1D15A31B8();
  sub_1D1503864(v7, v9, v27);
  sub_1D1503698(v7, v9, v27);
  sub_1D1503870(v7, v9, v27);
  sub_1D15A47D8();
  v28 = [*(a2 + qword_1EC630C68) identifier];
  v29 = sub_1D15A3F38();
  v31 = v30;

  MEMORY[0x1D388A330](v29, v31);

  MEMORY[0x1D388A330](0x69666F7270207C20, 0xEB000000003D656CLL);
  v32 = [*(a2 + qword_1EC630C90) profileIdentifier];
  v33 = [v32 description];
  v34 = sub_1D15A3F38();
  v36 = v35;

  MEMORY[0x1D388A330](v34, v36);

  MEMORY[0x1D388A330](0x6C75736572207C20, 0xEA00000000003D74);
  sub_1D15035A0(0);
  sub_1D15A4B98();
  sub_1D1503870(v7, v9, v27);
  MEMORY[0x1D388A330](0xD000000000000011, 0x80000001D15C08E0);
  sub_1D15A48B8();
  v37._countAndFlagsBits = 0;
  v38._countAndFlagsBits = 0x64656873696E6966;
  v38._object = 0xE800000000000000;
  v37._object = 0xE000000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v38, v37);
  sub_1D1503870(v7, v9, v27);

  return result;
}

id CountComparisonQueryOperation.init(sampleType:configuration:predicate:sortDescriptors:name:queryQualityOfService:healthStore:)(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v32 = *MEMORY[0x1E69E7D40] & *v8;
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = a2[2];
  v15 = *(a2 + 24);
  v16 = qword_1EC630C40;
  sub_1D1487B04();
  v17 = swift_allocError();
  *v18 = 0;
  v36 = v17;
  v37 = 0;
  v38 = 1;
  sub_1D1503548(0);
  swift_allocObject();
  *(v8 + v16) = sub_1D15A2D68();
  *(v8 + qword_1EC630C60) = 0;
  *(v8 + qword_1EC630C68) = a1;
  v19 = v8 + qword_1EC630C70;
  *v19 = v12;
  v19[8] = v13;
  *(v19 + 2) = v14;
  v19[24] = v15;
  *(v8 + qword_1EC630C78) = a3;
  *(v8 + qword_1EC630C80) = a4;
  *(v8 + qword_1EC630C88) = a7;
  *(v8 + qword_1EC630C90) = a8;
  Operation = type metadata accessor for CountComparisonQueryOperation(0, *(v32 + class metadata base offset for CountComparisonQueryOperation), v20, v21);
  v35.receiver = v8;
  v35.super_class = Operation;
  v23 = a1;
  v24 = a8;
  v25 = a3;
  v26 = objc_msgSendSuper2(&v35, sel_init);
  v27 = v26;
  if (a6)
  {
    v28 = sub_1D15A3EF8();
  }

  else
  {
    v28 = 0;
  }

  [v26 setName_];

  return v26;
}

uint64_t sub_1D1502BBC()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1487B04();
  v5 = swift_allocError();
  *v6 = 2;
  sub_1D1503698(v5, 0, 1);

  v7 = *&v0[qword_1EC630C68];
  v8 = [v7 identifier];
  v9 = sub_1D15A3F38();
  v11 = v10;

  v12._countAndFlagsBits = 0x676E696E6E7572;
  v12._object = 0xE700000000000000;
  v13._countAndFlagsBits = v9;
  v13._object = v11;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v12, v13);

  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE05B398;
  v15 = v0;
  sub_1D15A31C8();
  v16 = sub_1D15A4478();
  sub_1D1487C24(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D15ACDD0;
  v18 = [v7 identifier];
  v19 = sub_1D15A3F38();
  v21 = v20;

  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D1487C8C();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  sub_1D15A31A8(v16, &dword_1D1446000, v14, "CountComparisonQueryOperation", 29, 2, v4, "typeIdentifier=%{private}@", 26, 2, v17);

  v22 = *&v15[qword_1EC630C90];
  v23 = sub_1D1501F98();
  [v22 executeQuery_];

  return (*(v2 + 8))(v4, v1);
}

void sub_1D1502E6C(void *a1)
{
  v1 = a1;
  sub_1D1502BBC();
}

void sub_1D1502EB4()
{
  if ([v0 isCancelled])
  {
    sub_1D1487B04();
    v1 = swift_allocError();
    *v2 = 3;
    sub_1D1503698(v1, 0, 1);

    v3 = [*&v0[qword_1EC630C68] identifier];
    v4 = sub_1D15A3F38();
    v6 = v5;

    v7._countAndFlagsBits = 0x656C6C65636E6163;
    v7._object = 0xE900000000000064;
    v8._countAndFlagsBits = v4;
    v8._object = v6;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v7, v8);
  }

  v9 = *&v0[qword_1EC630C90];
  v10 = sub_1D1501F98();
  [v9 stopQuery_];
}

uint64_t sub_1D1502FCC(unint64_t a1)
{
  v10 = 0;
  v11 = 0;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D15A4708())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D388AB50](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = v5;
      sub_1D15030D0(&v9, v1, &v11, &v10);

      if (v7 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0;
}

uint64_t sub_1D15030D0(id *a1, uint64_t a2, void *a3, void *a4)
{
  v26 = a4;
  v27 = a3;
  v6 = sub_1D15A26A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v25 - v12;
  v14 = *a1;
  v15 = [*a1 endDate];
  sub_1D15A2668();

  sub_1D15A2548();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v13, v6);
  v19 = [v14 startDate];
  sub_1D15A2668();

  sub_1D15A2548();
  v21 = v20;
  result = (v18)(v9, v6);
  v23 = v17 - v21;
  if (v17 - v21 >= 0.0)
  {
    v24 = a2 + qword_1EC630C70;
    if ((*(a2 + qword_1EC630C70 + 8) & 1) != 0 || *v24 <= v23)
    {
      if (__OFADD__(*v27, 1))
      {
        __break(1u);
        goto LABEL_12;
      }

      ++*v27;
    }

    if ((*(v24 + 24) & 1) != 0 || *(v24 + 16) <= v23)
    {
      if (!__OFADD__(*v26, 1))
      {
        ++*v26;
        return result;
      }

LABEL_12:
      __break(1u);
    }
  }

  return result;
}

id CountComparisonQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D1503390()
{

  v1 = *(v0 + qword_1EC630C60);
}

id CountComparisonQueryOperation.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Operation = type metadata accessor for CountComparisonQueryOperation(0, *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for CountComparisonQueryOperation), a3, a4);
  v7.receiver = v4;
  v7.super_class = Operation;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1D1503488(uint64_t a1)
{

  v2 = *(a1 + qword_1EC630C60);
}

uint64_t sub_1D1503514@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D1501F48();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

void sub_1D1503548(uint64_t a1)
{
  if (!qword_1EC630C48)
  {
    sub_1D15035A0(255);
    v1 = sub_1D15A2D48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC630C48);
    }
  }
}

void sub_1D15035A0(uint64_t a1)
{
  if (!qword_1EC630C50)
  {
    sub_1D1503620();
    sub_1D1453368(255, &qword_1EE05ABB8, MEMORY[0x1E69E7280]);
    v1 = sub_1D15A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC630C50);
    }
  }
}

void sub_1D1503620()
{
  if (!qword_1EC630C58)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC630C58);
    }
  }
}

double sub_1D1503698(uint64_t a1, uint64_t a2, char a3)
{

  sub_1D15A2D38();

  return result;
}

id sub_1D1503864(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

void sub_1D1503870(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

void sub_1D150387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D15A31D8();
  v7 = *(v3 + 24);

  sub_1D15023CC(a1, a2, a3, v7);
}

unint64_t sub_1D1503944()
{
  result = qword_1EE05AD48;
  if (!qword_1EE05AD48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE05AD48);
  }

  return result;
}

id sub_1D15039A0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_1D1503870(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;

  return sub_1D1503864(v3, v4, v5);
}

void sub_1D1503A04(uint64_t a2@<X8>)
{

  sub_1D15A2D28();

  *a2 = v3;
  *(a2 + 8) = v4;
}

double sub_1D1503A64(uint64_t a1, void *a2)
{

  sub_1D15A2D38();

  return result;
}

uint64_t sub_1D1503AD4()
{

  sub_1D15A2D28();

  return v1;
}

id sub_1D1503B24()
{
  v1 = sub_1D15A26A8();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[qword_1EE0577C8];
  v7 = [v6 identifier];
  if (!v7)
  {
    sub_1D15A3F38();
    v7 = sub_1D15A3EF8();
  }

  v8 = sub_1D15A3F38();
  v10 = v9;
  if (v8 == sub_1D15A3F38() && v10 == v11)
  {
    goto LABEL_9;
  }

  v13 = sub_1D15A4BA8();
  v14 = v7;

  if (v13)
  {

LABEL_10:
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    v44 = sub_1D1505B20;
    v45 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1D1516630;
    v43 = &block_descriptor_6;
    v17 = _Block_copy(&aBlock);
    v18 = v0;

    v19 = [v15 queryForMostRecentSampleOfType:v6 predicate:0 completion:v17];
    _Block_release(v17);

    return v19;
  }

  v21 = sub_1D15A3F38();
  v23 = v22;

  if (v21 == sub_1D15A3F38() && v23 == v24)
  {
LABEL_9:

    goto LABEL_10;
  }

  v26 = sub_1D15A4BA8();

  if (v26)
  {
    goto LABEL_10;
  }

  sub_1D1453BA0(0, &qword_1EE056788, 0x1E696AE18);
  sub_1D1487C24(0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D15AEBB0;
  v28 = sub_1D15A3F38();
  v30 = v29;
  *(v27 + 56) = MEMORY[0x1E69E6158];
  *(v27 + 64) = sub_1D1487C8C();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  sub_1D15A2568();
  v31 = v0;
  v32 = sub_1D15A2618();
  (*(v2 + 8))(v5, v1);
  *(v27 + 96) = sub_1D1453BA0(0, &qword_1EE0564F0, 0x1E695DF00);
  *(v27 + 104) = sub_1D1505A88(&qword_1EE0564E8, &qword_1EE0564F0, 0x1E695DF00, MEMORY[0x1E69E81C8]);
  *(v27 + 72) = v32;
  v33 = sub_1D15A4278();
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  v35 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  v44 = sub_1D1505ACC;
  v45 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1D14961D8;
  v43 = &block_descriptor_8;
  v36 = _Block_copy(&aBlock);
  v37 = v31;
  v38 = v6;
  v39 = [v35 initWithSampleType:v38 predicate:v33 limit:0 sortDescriptors:0 resultsHandler:v36];

  _Block_release(v36);

  return v39;
}

void sub_1D1503FF4(uint64_t a1, void *a2, char *a3)
{
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - v13;
  if (v11 && (v15 = sub_1D152AA24(v11, v12)) != 0)
  {
    if (v15 >> 62)
    {
      v39 = v15;
      v40 = sub_1D15A4708();
      v15 = v39;
      if (v40)
      {
        goto LABEL_5;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      MEMORY[0x1EEE9AC00](v15);
      *(&v57 - 2) = v16;
      *(&v57 - 8) = 0;

      sub_1D15A2D38();

      sub_1D15A2DB8();
      return;
    }

    sub_1D15A3208();
    v41 = a3;
    v42 = sub_1D15A3248();
    v43 = sub_1D15A4338();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136446210;
      ObjectType = swift_getObjectType();
      sub_1D150591C();
      v46 = sub_1D15A3F68();
      v48 = sub_1D1479780(v46, v47, aBlock);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_1D1446000, v42, v43, "[%{public}s] No ongoing factors; querying for most recent sample.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1D388BF00](v45, -1, -1);
      MEMORY[0x1D388BF00](v44, -1, -1);
    }

    (*(v7 + 8))(v14, v6);
    v49 = objc_opt_self();
    v50 = *&v41[qword_1EE0577C8];
    v51 = swift_allocObject();
    *(v51 + 16) = v41;
    aBlock[4] = sub_1D1505BA0;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1516630;
    aBlock[3] = &block_descriptor_18;
    v52 = _Block_copy(aBlock);
    v53 = v41;

    v54 = [v49 queryForMostRecentSampleOfType:v50 predicate:0 completion:v52];
    _Block_release(v52);
    v55 = *&v53[qword_1EE0577E0];
    *&v53[qword_1EE0577E0] = v54;
    v56 = v54;

    [*&v53[qword_1EE0577D0] executeQuery_];
  }

  else
  {
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      sub_1D1487B04();
      v17 = swift_allocError();
      *v18 = 1;
    }

    v19 = a2;
    sub_1D15A3208();
    v20 = a3;
    v21 = v17;
    v22 = sub_1D15A3248();
    v23 = sub_1D15A4318();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v24 = 136446466;
      ObjectType = swift_getObjectType();
      sub_1D150591C();
      v25 = sub_1D15A3F68();
      v27 = v7;
      v28 = sub_1D1479780(v25, v26, aBlock);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v58 = v6;
      v30 = MEMORY[0x1EEE9AC00](ErrorValue);
      (*(v32 + 16))(&v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
      v33 = sub_1D15A3F68();
      v35 = sub_1D1479780(v33, v34, aBlock);

      *(v24 + 14) = v35;
      _os_log_impl(&dword_1D1446000, v22, v23, "[%{public}s] Error while querying for ongoing factors: %{public}s", v24, 0x16u);
      v36 = v59;
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v36, -1, -1);
      MEMORY[0x1D388BF00](v24, -1, -1);

      v37 = (*(v27 + 8))(v9, v58);
    }

    else
    {

      v37 = (*(v7 + 8))(v9, v6);
    }

    MEMORY[0x1EEE9AC00](v37);
    *(&v57 - 2) = v17;
    *(&v57 - 8) = 1;
    v38 = v17;

    sub_1D15A2D38();

    sub_1D15A2DB8();
  }
}

double sub_1D15046B4(void *a1, void *a2, char *a3)
{
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v11 = v8;
      sub_1D1496034();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D15AE100;
      *(v12 + 32) = v11;
      MEMORY[0x1EEE9AC00](v12);
      *&v35[-16] = v13;
      v35[-8] = 0;
      v14 = a1;

      sub_1D15A2D38();

LABEL_9:

      return result;
    }
  }

  if (!a2)
  {
    MEMORY[0x1EEE9AC00](v8);
    *&v35[-16] = MEMORY[0x1E69E7CC0];
    v35[-8] = 0;

    sub_1D15A2D38();
    goto LABEL_9;
  }

  v15 = a2;
  sub_1D15A3208();
  v16 = a2;
  v17 = a3;
  v18 = sub_1D15A3248();
  v19 = sub_1D15A4318();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v20 = 136446466;
    ObjectType = swift_getObjectType();
    sub_1D150591C();
    v21 = sub_1D15A3F68();
    v23 = sub_1D1479780(v21, v22, &v39);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    v36 = v19;
    v25 = MEMORY[0x1EEE9AC00](ErrorValue);
    (*(v27 + 16))(&v35[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)], v25);
    v28 = sub_1D15A3F68();
    v30 = sub_1D1479780(v28, v29, &v39);

    *(v20 + 14) = v30;
    _os_log_impl(&dword_1D1446000, v18, v36, "[%{public}s] Error while querying for most recent sample: %{public}s", v20, 0x16u);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v31, -1, -1);
    MEMORY[0x1D388BF00](v20, -1, -1);
  }

  v32 = (*(v7 + 8))(v10, v6);
  MEMORY[0x1EEE9AC00](v32);
  *&v35[-16] = a2;
  v35[-8] = 1;
  v33 = a2;

  sub_1D15A2D38();

  return result;
}

id OngoingCycleFactorsSampleQueryOperation.init(categoryType:name:queryQualityOfService:healthStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1D15A3268();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1EE0577C0;
  sub_1D1487B04();
  v14 = swift_allocError();
  *v15 = 0;
  v36 = v14;
  v37 = 1;
  sub_1D1504EE0(0);
  swift_allocObject();
  *&v5[v13] = sub_1D15A2D68();
  *&v5[qword_1EE0577D8] = 0;
  *&v5[qword_1EE0577E0] = 0;
  *&v5[qword_1EE0577C8] = a1;
  *&v5[qword_1EE0577B8] = a4;
  *&v5[qword_1EE0577D0] = a5;
  Operation = type metadata accessor for OngoingCycleFactorsSampleQueryOperation(0);
  v35.receiver = v5;
  v35.super_class = Operation;
  v17 = a1;
  v18 = a5;
  v19 = objc_msgSendSuper2(&v35, sel_init);
  v20 = v19;
  if (a3)
  {
    v21 = sub_1D15A3EF8();
  }

  else
  {
    v21 = 0;
  }

  [v19 setName_];

  sub_1D15A3208();
  v22 = v19;
  v23 = sub_1D15A3248();
  v24 = sub_1D15A4338();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136446210;
    ObjectType = swift_getObjectType();
    sub_1D150591C();
    v27 = sub_1D15A3F68();
    v32 = v10;
    v29 = sub_1D1479780(v27, v28, &v36);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1D1446000, v23, v24, "[%{public}s] initialize", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1D388BF00](v26, -1, -1);
    MEMORY[0x1D388BF00](v25, -1, -1);

    (*(v33 + 8))(v12, v32);
  }

  else
  {

    (*(v33 + 8))(v12, v10);
  }

  return v22;
}

void sub_1D1504EE0(uint64_t a1)
{
  if (!qword_1EE059408)
  {
    sub_1D1504F38(255);
    v1 = sub_1D15A2D48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE059408);
    }
  }
}

void sub_1D1504F38(uint64_t a1)
{
  if (!qword_1EE056250)
  {
    sub_1D1504FB8(255);
    sub_1D1453368(255, &qword_1EE05ABB8, MEMORY[0x1E69E7280]);
    v1 = sub_1D15A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE056250);
    }
  }
}

void sub_1D1504FB8(uint64_t a1)
{
  if (!qword_1EE0567F8)
  {
    sub_1D1453BA0(255, &qword_1EE056730, 0x1E696BF88);
    v1 = sub_1D15A4118();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0567F8);
    }
  }
}

uint64_t type metadata accessor for OngoingCycleFactorsSampleQueryOperation(uint64_t a1)
{
  result = qword_1EE0577A8;
  if (!qword_1EE0577A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D150506C()
{
  v1 = sub_1D15A3268();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A3208();
  v5 = v0;
  v6 = sub_1D15A3248();
  v7 = sub_1D15A4338();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    ObjectType = swift_getObjectType();
    sub_1D150591C();
    v10 = sub_1D15A3F68();
    v12 = sub_1D1479780(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D1446000, v6, v7, "[%{public}s] Running...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D388BF00](v9, -1, -1);
    MEMORY[0x1D388BF00](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v13 = sub_1D1503B24();
  v14 = *&v5[qword_1EE0577D8];
  *&v5[qword_1EE0577D8] = v13;
  v15 = v13;

  [*&v5[qword_1EE0577D0] executeQuery_];
}

void sub_1D1505278(void *a1)
{
  v1 = a1;
  sub_1D150506C();
}

void sub_1D15052C0()
{
  v1 = sub_1D15A3268();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A3208();
  v5 = v0;
  v6 = sub_1D15A3248();
  v7 = sub_1D15A4338();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136446210;
    ObjectType = swift_getObjectType();
    sub_1D150591C();
    v10 = sub_1D15A3F68();
    v12 = sub_1D1479780(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D1446000, v6, v7, "[%{public}s] Cleaning up...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D388BF00](v9, -1, -1);
    MEMORY[0x1D388BF00](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v13 = *&v5[qword_1EE0577D8];
  if (v13)
  {
    v14 = *&v5[qword_1EE0577D0];
    v15 = v13;
    v16 = [v14 _queries];
    sub_1D1453BA0(0, &qword_1EE05ACE0, 0x1E696C378);
    sub_1D1505A88(&qword_1EE0564E0, &qword_1EE05ACE0, 0x1E696C378, MEMORY[0x1E69E81B8]);
    v17 = sub_1D15A41E8();

    LOBYTE(v16) = sub_1D1505654(v15, v17, &qword_1EE05ACE0, 0x1E696C378);

    if (v16)
    {
      [v14 stopQuery_];
    }
  }

  v18 = *&v5[qword_1EE0577E0];
  if (v18)
  {
    v19 = *&v5[qword_1EE0577D0];
    v20 = v18;
    v21 = [v19 _queries];
    sub_1D1453BA0(0, &qword_1EE05ACE0, 0x1E696C378);
    sub_1D1505A88(&qword_1EE0564E0, &qword_1EE05ACE0, 0x1E696C378, MEMORY[0x1E69E81B8]);
    v22 = sub_1D15A41E8();

    LOBYTE(v21) = sub_1D1505654(v20, v22, &qword_1EE05ACE0, 0x1E696C378);

    if (v21)
    {
      [v19 stopQuery_];
    }
  }
}

uint64_t sub_1D1505654(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_1D15A4748();
  }

  else if (*(a2 + 16) && (sub_1D1453BA0(0, a3, a4), v7 = sub_1D15A4588(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v9);
      v6 = sub_1D15A4598();

      if (v6)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id OngoingCycleFactorsSampleQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D15057F8()
{

  v1 = *(v0 + qword_1EE0577E0);
}

id OngoingCycleFactorsSampleQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OngoingCycleFactorsSampleQueryOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D15058A0(uint64_t a1)
{

  v2 = *(a1 + qword_1EE0577E0);
}

unint64_t sub_1D150591C()
{
  result = qword_1EE0577A0;
  if (!qword_1EE0577A0)
  {
    type metadata accessor for OngoingCycleFactorsSampleQueryOperation(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EE0577A0);
  }

  return result;
}

uint64_t sub_1D1505A88(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D1453BA0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Double __swiftcall SignificantChangeEngine.fisherExactLess(a:b:c:d:)(Swift::Int a, Swift::Int b, Swift::Int c, Swift::Int d)
{
  v4 = a + b;
  if (__OFADD__(a, b))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = a + c;
  if (__OFADD__(a, c))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v4 + c;
  if (__OFADD__(v4, c))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = __OFADD__(v7, d);
  v9 = v7 + d;
  if (v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v9 - v4;
  if (__OFSUB__(v9, v4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = v10 - v6;
  if (!__OFSUB__(v10, v6))
  {
    v12 = 0;
    v13 = v4;
    v14 = v6;
    v15 = 0.0;
    v16 = v9;
    while (!__OFADD__(v11, v12))
    {
      if (((v11 + v12) & 0x8000000000000000) == 0)
      {
        HypergeometricPDF(v12, v13, v14, v16);
        v15 = v15 + result;
      }

      if (a == v12)
      {
        return v15;
      }

      v8 = __OFADD__(v12++, 1);
      if (v8)
      {
        __break(1u);
        return v15;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_24:
  __break(1u);
  return result;
}

Swift::Double __swiftcall SignificantChangeEngine.fisherExactTwoSided(a:b:c:d:)(Swift::Int a, Swift::Int b, Swift::Int c, Swift::Int d)
{
  v5 = a + b;
  if (__OFADD__(a, b))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = a + c;
  if (__OFADD__(a, c))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = v5 + c;
  if (__OFADD__(v5, c))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v7 + d;
  if (__OFADD__(v7, d))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = v5;
  v10 = v6;
  HypergeometricPDF(a, v5, v6, v8);
  if (v5 >= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v5;
  }

  if (v11 < 0)
  {
    goto LABEL_26;
  }

  v12 = v8 - v5;
  if (__OFSUB__(v8, v5))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = v12 - v6;
  if (!__OFSUB__(v12, v6))
  {
    v14 = result;
    v15 = 0;
    v16 = 0.0;
    while (!__OFADD__(v13, v15))
    {
      if (((v13 + v15) & 0x8000000000000000) == 0)
      {
        HypergeometricPDF(v15, v9, v10, v8);
        if (result <= v14)
        {
          v16 = v16 + result;
        }
      }

      if (v11 == v15)
      {
        return v16;
      }

      if (__OFADD__(v15++, 1))
      {
        __break(1u);
        return v16;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
  return result;
}

Swift::Double __swiftcall SignificantChangeEngine.pValue(tTest:degreesOfFreedom:)(Swift::Double tTest, Swift::Double degreesOfFreedom)
{
  v9 = StudentsCDF(*&tTest, *&degreesOfFreedom, v2, v3, v4, v5, v6, v7);
  if (tTest > 0.0)
  {
    v9 = 1.0 - v9;
  }

  return v9 + v9;
}

uint64_t TimeBasedDistributionChartPoint.TimeOfDay.init(pointKind:yValue:xValue:yPointAnnotation:barColor:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = *a1;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  v9 = type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay(0);
  v10 = *(v9 + 28);
  v11 = sub_1D15A23F8();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 32)) = a3;
  return result;
}

uint64_t TimeBasedDistributionChartPoint.DayOfWeek.init(pointKind:yValue:xValue:yPointAnnotation:barColor:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = *a1;
  *(a6 + 8) = a7;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  v10 = type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek(0);
  v11 = *(v10 + 28);
  v12 = sub_1D15A23F8();
  result = (*(*(v12 - 8) + 32))(a6 + v11, a4, v12);
  *(a6 + *(v10 + 32)) = a5;
  return result;
}

uint64_t TimeBasedDistributionChartPoint.Skeleton.init(pointKind:yValue:yPointAnnotation:barColor:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = *a1;
  *(a4 + 8) = a5;
  v8 = type metadata accessor for TimeBasedDistributionChartPoint.Skeleton(0);
  v9 = *(v8 + 24);
  v10 = sub_1D15A23F8();
  result = (*(*(v10 - 8) + 32))(a4 + v9, a2, v10);
  *(a4 + *(v8 + 28)) = a3;
  return result;
}

uint64_t TimeBasedDistributionChartPoint.PointKind.hashValue.getter()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

uint64_t TimeBasedDistributionChartPoint.Skeleton.yPointAnnotation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartPoint.Skeleton(0) + 24);
  v4 = sub_1D15A23F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TimeBasedDistributionChartPoint.Skeleton.yPointAnnotation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartPoint.Skeleton(0) + 24);
  v4 = sub_1D15A23F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TimeBasedDistributionChartPoint.Skeleton.barColor.getter()
{
  type metadata accessor for TimeBasedDistributionChartPoint.Skeleton(0);
}

void TimeBasedDistributionChartPoint.Skeleton.barColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartPoint.Skeleton(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t sub_1D15062B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1D15A23F8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double sub_1D15064C0@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

void TimeBasedDistributionChartPoint.DayOfWeek.xValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1D150657C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1D15A23F8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D1506618(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1D15A23F8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D15066F8(uint64_t (*a1)(void))
{
  a1(0);
}

void sub_1D150674C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);

  *(v2 + v4) = a1;
}

uint64_t TimeBasedDistributionChartPoint.DayOfWeek.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1D150680C()
{
  result = qword_1EC630D18;
  if (!qword_1EC630D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630D18);
  }

  return result;
}

uint64_t sub_1D150686C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1D15A23F8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double sub_1D15068EC@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t sub_1D1506990(uint64_t a1)
{
  result = sub_1D15A23F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1506A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D15A23F8();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D1506BB8(CGContext *a1, __n128 a2, CGFloat a3, uint64_t a4, uint64_t a5)
{
  v7 = a2.n128_f64[0];
  DiagramConfiguration.TextAttributes.toTextAttributes()(a2);
  v8 = sub_1D15A3EF8();
  type metadata accessor for Key(0);
  sub_1D14587E0();
  v9 = sub_1D15A3E48();
  [v8 sizeWithAttributes_];
  v11 = v10;
  v13 = v12;

  v14 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.71 alpha:1.0];
  v15 = [v14 CGColor];
  CGContextSetFillColorWithColor(a1, v15);

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v7;
  v19.size.height = a3;
  CGContextFillRect(a1, v19);
  v16 = sub_1D15A3EF8();
  v17 = sub_1D15A3E48();

  [v16 drawAtPoint:v17 withAttributes:{(v7 - v11) * 0.5, (a3 - v13) * 0.5}];
}

void static DiagramBanner.imageForTesting(dataGroups:configuration:renderer:imageSize:)(__int128 *a1, uint64_t *a2, void *a3, double a4, double a5)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 5);
  v12 = *a2;
  v11 = a2[1];
  v13 = *(a2 + 16);
  type metadata accessor for DiagramBanner();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  v15 = *a1;
  *(v14 + 56) = a1[1];
  *(v14 + 40) = v15;
  *(v14 + 72) = v9;
  *(v14 + 80) = v10;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v16 + 32) = _Q0;
  *(v16 + 48) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = a4;
  *(v16 + 72) = a5;
  __asm { FMOV            V0.2D, #2.0 }

  *(v16 + 80) = _Q0;
  *(v16 + 96) = _Q0;
  *(v16 + 112) = sub_1D15070E8;
  *(v16 + 120) = v14;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D14AF3A8;
  *(v23 + 24) = v16;
  v25[4] = sub_1D1459244;
  v25[5] = v23;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1D1459188;
  v25[3] = &block_descriptor_9;
  v24 = _Block_copy(v25);

  [a3 imageWithActions_];

  _Block_release(v24);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }
}

uint64_t DiagramBanner.deinit()
{

  return v0;
}

uint64_t DiagramBanner.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CodableCurrentValueExtractorUnitMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.viewModel.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

__n128 QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.viewModel.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents(0) + 20);

  return sub_1D150731C(a1, v3);
}

uint64_t sub_1D150731C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.init(viewModel:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 8) = *(a1 + 8);
  v4 = a3 + *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents(0) + 20);

  return sub_1D1507420(a2, v4);
}

uint64_t sub_1D1507420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.noData(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = MEMORY[0x1E6968130];
  sub_1D150AA30(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v26 = &v25 - v5;
  v29 = MEMORY[0x1E6969530];
  sub_1D150AA30(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v27 = &v25 - v8;
  sub_1D150AA30(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  sub_1D15A2F28();
  v13 = sub_1D15A2EA8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = a1;
  v28 = sub_1D15A2F18();
  v15 = sub_1D15A26A8();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v17 = sub_1D15A22A8();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 1, 1, v17);
  v19 = a2 + *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents(0) + 20);
  v20 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  v21 = v20[5];
  v16(&v19[v21], 1, 1, v15);
  v22 = &v19[v20[6]];
  v23 = v20[8];
  v18(&v19[v23], 1, 1, v17);
  *v19 = 0;
  sub_1D1507E58(v27, &v19[v21], &qword_1EE05B7F8, v29);
  *v22 = 0;
  v22[8] = 1;
  v19[v20[7]] = 0;
  result = sub_1D1507E58(v26, &v19[v23], &qword_1EE05B520, v30);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v28;
  return result;
}

uint64_t static QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModel.noData(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D150AA30(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1D15A2F28();
  v7 = sub_1D15A2EA8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = a1;
  result = sub_1D15A2F18();
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModel.init(headerViewModel:currentValueViewModel:visualizationViewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata.currentValueDouble.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata.hasIndeterminateBaseline.setter(char a1)
{
  result = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata.init(hasData:currentValueDate:currentValueDouble:hasIndeterminateBaseline:tapThroughSelectionDateInterval:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v13 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  v14 = v13[5];
  v15 = sub_1D15A26A8();
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[v13[6]];
  v17 = v13[8];
  v18 = sub_1D15A22A8();
  (*(*(v18 - 8) + 56))(&a7[v17], 1, 1, v18);
  *a7 = a1;
  sub_1D1507E58(a2, &a7[v14], &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  *v16 = a3;
  v16[8] = a4 & 1;
  a7[v13[7]] = a5;
  return sub_1D1507E58(a6, &a7[v17], &qword_1EE05B520, MEMORY[0x1E6968130]);
}

uint64_t sub_1D1507E58(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D150AA30(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D1507EC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D150AA30(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.init(healthStore:unitPreferenceController:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void QuantityCodableCurrentValueSnidgetViewModelExtractor.extractViewModelComponents(hkType:displayType:unitMode:currentValueModel:visualizationModel:snippetSupplementaryLabelConfiguration:)(void *a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X3>, unsigned __int8 *a5@<X5>, uint64_t *a6@<X8>)
{
  v136 = a5;
  v139 = a4;
  v133 = a2;
  v129 = a1;
  v134 = a6;
  v126 = sub_1D15A3268();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D150AA30(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v115 - v9;
  v127 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D150AA30(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v130 = &v115 - v12;
  sub_1D150AA30(0, &qword_1EE05AAB8, MEMORY[0x1E69A3778]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v123 = &v115 - v14;
  sub_1D150AA30(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = &v115 - v16;
  sub_1D150AA30(0, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v122 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v115 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v115 - v23;
  v25 = sub_1D15A23F8();
  v132 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v115 - v29;
  v31 = *a3;
  v32 = *v136;
  v33 = *v137;
  v34 = v137[1];
  v35 = v138;
  sub_1D14862B0(v139);
  if (v35)
  {
    return;
  }

  v137 = v33;
  LODWORD(v138) = v31;
  v119 = v32;
  v120 = v34;
  v115 = v24;
  v37 = v135;
  v116 = v27;
  v117 = v21;
  v121 = v30;
  v118 = v25;
  if (!v36)
  {
LABEL_7:
    static QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.noData(for:)(v133, v134);
    return;
  }

  v136 = v36;
  if (![v36 hasValue])
  {

    goto LABEL_7;
  }

  v38 = v137;
  if (v138)
  {
    v39 = 0;
    v40 = v133;
    v41 = v134;
    v42 = v121;
    v43 = v139;
  }

  else
  {
    v43 = v139;
    sub_1D150AA84(v139);
    v42 = v121;
    v45 = v44;
    v46 = [v44 value];
    if (!v46)
    {
      __break(1u);
      return;
    }

    v47 = v46;
    v48 = sub_1D15A43E8();

    v39 = [v48 _unit];
    v40 = v133;
    v41 = v134;
  }

  v49 = v120;
  v141 = v39;
  v140 = v119;
  v50 = v39;
  static QuantityCodableCurrentValueSnidgetViewModelExtractor.formatter(for:currentValueModel:healthStore:unitMode:unitPreferenceController:snippetSupplementaryLabelConfiguration:)(v40, v43, v38, &v141, v49, &v140, &v142);

  if (v143)
  {
    v139 = v50;
    sub_1D1450E94(&v142, &v144);
    v51 = v145;
    v52 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    v53 = v51;
    v54 = v115;
    (*(v52 + 8))(v53, v52);
    v55 = v132;
    v56 = v118;
    if ((*(v132 + 48))(v54, 1, v118) == 1)
    {
      sub_1D150A980(v54, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
      *&v142 = 0;
      *(&v142 + 1) = 0xE000000000000000;
      sub_1D15A47D8();

      *&v142 = 0xD000000000000025;
      *(&v142 + 1) = 0x80000001D15BE6E0;
      v57 = [v129 sensitiveLoggingIdentifier];
      v58 = sub_1D15A3F38();
      v60 = v59;

      MEMORY[0x1D388A330](v58, v60);

      v61 = v142;
      v62 = v124;
      sub_1D15A3238();

      v63 = sub_1D15A3248();
      v64 = sub_1D15A4318();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v142 = v67;
        *v65 = 136315394;
        *(v65 + 4) = sub_1D1479780(0xD000000000000034, 0x80000001D15B2A60, &v142);
        *(v65 + 12) = 2112;
        sub_1D150A9DC();
        swift_allocError();
        *v68 = v61;

        v69 = _swift_stdlib_bridgeErrorToNSError();
        *(v65 + 14) = v69;
        *v66 = v69;
        _os_log_impl(&dword_1D1446000, v63, v64, "[%s]: %@", v65, 0x16u);
        sub_1D150A980(v66, &qword_1EE0564C0, sub_1D14A0574);
        MEMORY[0x1D388BF00](v66, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x1D388BF00](v67, -1, -1);
        MEMORY[0x1D388BF00](v65, -1, -1);
      }

      (*(v125 + 8))(v62, v126);
      sub_1D150A9DC();
      swift_allocError();
      *v70 = v61;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(&v144);
    }

    else
    {
      (*(v55 + 32))(v42, v54, v56);
      v138 = sub_1D15A2F28();
      sub_1D14863E4(0);
      v72 = *(v71 + 48);
      v73 = v133;
      [v136 dateData];
      v74 = HKDecodeDateForValue();
      sub_1D15A2668();

      v75 = v37;
      v76 = v145;
      v77 = v146;
      __swift_project_boxed_opaque_existential_1(&v144, v145);
      v75[v72] = (*(v77 + 40))(v76, v77) & 1;
      v78 = *MEMORY[0x1E69A3668];
      v79 = sub_1D15A2EA8();
      v80 = *(v79 - 8);
      (*(v80 + 104))(v75, v78, v79);
      (*(v80 + 56))(v75, 0, 1, v79);
      v137 = sub_1D15A2F18();
      v81 = v145;
      v82 = v146;
      __swift_project_boxed_opaque_existential_1(&v144, v145);
      (*(v82 + 24))(v81, v82);
      (*(v55 + 16))(v116, v121, v56);
      (*(v55 + 56))(v122, 1, 1, v56);
      *&v142 = 0x5F74656764696E53;
      *(&v142 + 1) = 0xE800000000000000;
      v83 = [v129 description];
      v84 = sub_1D15A3F38();
      v86 = v85;

      MEMORY[0x1D388A330](v84, v86);

      v87 = v145;
      v88 = v146;
      __swift_project_boxed_opaque_existential_1(&v144, v145);
      (*(v88 + 16))(v87, v88);
      if (v89)
      {
      }

      v90 = v131;
      v91 = v130;
      v92 = v123;
      sub_1D15A3008();

      v93 = sub_1D15A3018();
      (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
      sub_1D15A30E8();
      swift_allocObject();
      v135 = sub_1D15A30D8();
      v94 = sub_1D15A22A8();
      v95 = *(v94 - 8);
      v133 = *(v95 + 56);
      v129 = (v95 + 56);
      (v133)(v91, 1, 1, v94);
      [v136 dateData];
      v96 = HKDecodeDateForValue();
      sub_1D15A2668();

      v97 = sub_1D15A26A8();
      v98 = *(*(v97 - 8) + 56);
      v98(v90, 0, 1, v97);
      v99 = v145;
      v100 = v146;
      __swift_project_boxed_opaque_existential_1(&v144, v145);
      v101 = (*(v100 + 16))(v99, v100);
      v103 = v102;
      if (v102)
      {
        v138 = v101;
      }

      else
      {
        v138 = 0;
      }

      LODWORD(v126) = v103 == 0;
      v104 = v145;
      v105 = v146;
      __swift_project_boxed_opaque_existential_1(&v144, v145);
      v106 = (*(v105 + 32))(v104, v105);

      (*(v132 + 8))(v121, v118);
      v107 = v127;
      v108 = *(v127 + 20);
      v109 = v128;
      v98(&v128[v108], 1, 1, v97);
      v110 = &v109[v107[6]];
      v111 = v107[8];
      (v133)(&v109[v111], 1, 1, v94);
      *v109 = 1;
      sub_1D1507E58(v131, &v109[v108], &qword_1EE05B7F8, MEMORY[0x1E6969530]);
      *v110 = v138;
      v110[8] = v126;
      v109[v107[7]] = v106 & 1;
      sub_1D1507E58(v130, &v109[v111], &qword_1EE05B520, MEMORY[0x1E6968130]);
      v112 = v134;
      v113 = v135;
      *v134 = v137;
      v112[1] = v113;
      v112[2] = 0;
      v114 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents(0);
      sub_1D1507420(v109, v112 + *(v114 + 20));
      __swift_destroy_boxed_opaque_existential_1(&v144);
    }
  }

  else
  {
    sub_1D150A980(&v142, &qword_1EC630D50, sub_1D150A91C);
    static QuantityCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.noData(for:)(v40, v41);
  }
}

void static QuantityCodableCurrentValueSnidgetViewModelExtractor.formatter(for:currentValueModel:healthStore:unitMode:unitPreferenceController:snippetSupplementaryLabelConfiguration:)(void *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, void **a4@<X3>, void *a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v205 = a7;
  v206 = a6;
  v203 = a3;
  v204 = a5;
  v202 = a1;
  v198 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v198);
  v199 = (&v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v201 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v201);
  v200 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v181 - v12;
  v14 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D150AA30(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v181 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v181 - v24;
  v26 = *a4;
  v27 = *v206;
  v28 = v212;
  sub_1D150AA84(a2);
  if (!v28)
  {
    v194 = v27;
    v192 = v13;
    v193 = v22;
    v206 = a2;
    v195 = v19;
    v196 = v26;
    v197 = v25;
    v212 = 0;
    v30 = v29;
    if (([v29 hasValue] & 1) == 0 || (v31 = objc_msgSend(v30, sel_value)) == 0)
    {

      v46 = v205;
      *(v205 + 32) = 0;
      *v46 = 0u;
      v46[1] = 0u;
      return;
    }

    v32 = v31;
    v33 = sub_1D15A43E8();

    v34 = sub_1D15A22A8();
    v35 = *(v34 - 8);
    v36 = *(v35 + 56);
    v190 = v35 + 56;
    v36(v197, 1, 1, v34);
    v37 = v206;
    v38 = [v206 hasSupplementaryValue];
    v191 = v33;
    v189 = v34;
    if (!v38)
    {
      v187 = 1;
      v188 = 0;
      v47 = v14;
      goto LABEL_19;
    }

    v39 = v30;
    v40 = [v37 supplementaryValue];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 hasDataCount];

      if (v42)
      {
        v43 = [v206 supplementaryValue];
        if (!v43)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v44 = v43;
        v45 = [v43 dataCount];
      }

      else
      {
        v45 = 0;
      }

      v48 = [v206 supplementaryValue];
      if (v48)
      {
        v49 = v48;
        v187 = v42 ^ 1;
        v50 = [v48 hasDateInterval];

        v188 = v45;
        if (!v50)
        {
          v30 = v39;
          v33 = v191;
          goto LABEL_18;
        }

        v51 = [v206 supplementaryValue];
        if (v51)
        {
          v52 = v51;
          v53 = [v51 dateInterval];

          v54 = v197;
          if (v53)
          {
            v55 = v193;
            sub_1D15A4498();

            sub_1D150A980(v54, &qword_1EE05B520, MEMORY[0x1E6968130]);
            v36(v55, 0, 1, v34);
            sub_1D1495C10(v55, v54);
            v30 = v39;
            v33 = v191;
LABEL_18:
            v47 = v14;
LABEL_19:
            HKCodableSummaryCurrentValue.queryConfiguration.getter(&v207);
            v56 = v211;
            v57 = v204;
            v58 = v196;
            if (v211 > 0xFDu)
            {
LABEL_20:
              v59 = v57;
              v60 = v205;
              *(v205 + 24) = &type metadata for QuantityCodableCurrentValueSnidgetViewModelExtractor.DefaultSnidgetFormatter;
              v60[4] = &protocol witness table for QuantityCodableCurrentValueSnidgetViewModelExtractor.DefaultSnidgetFormatter;
              v61 = swift_allocObject();
              *v60 = v61;
              *(v61 + 48) = 0;
              v62 = v202;
              *(v61 + 16) = v202;
              *(v61 + 24) = v33;
              *(v61 + 32) = v58;
              type metadata accessor for SnidgetStringBuilder();
              v63 = v58;
              v64 = swift_allocObject();
              v65 = v203;
              v64[2] = v203;
              v66 = objc_opt_self();
              v67 = v63;
              v68 = v62;
              v69 = v59;
              v70 = [v66 sharedInstanceForHealthStore_];
              v64[3] = v69;
              v64[4] = v70;

              *(v61 + 40) = v64;
              v71 = MEMORY[0x1E6968130];
              v72 = v197;
LABEL_38:
              sub_1D150A980(v72, &qword_1EE05B520, v71);
              return;
            }

            v73 = v16;
            v186 = v30;
            v74 = v208;
            v184 = v207;
            v193 = v209;
            v185 = v210;
            v75 = v211 >> 3;
            switch(v75)
            {
              case 9:
                v99 = MEMORY[0x1E6968130];
                v100 = v195;
                v206 = MEMORY[0x1E6968130];
                sub_1D1507EC4(v197, v195, &qword_1EE05B520, MEMORY[0x1E6968130]);
                v101 = v200;
                *v200 = 2562;
                v102 = *(v201 + 32);
                v36((v101 + v102), 1, 1, v189);
                *v101 = v194;
                *(v101 + 1) = 1287;
                *(v101 + 8) = v188;
                *(v101 + 16) = v187;
                sub_1D1507E58(v100, v101 + v102, &qword_1EE05B520, v99);
                v103 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter(0);
                v104 = v205;
                *(v205 + 24) = v103;
                v104[4] = &protocol witness table for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
                *(boxed_opaque_existential_1 + 16) = 0;
                v105 = v202;
                v106 = v191;
                *boxed_opaque_existential_1 = v202;
                boxed_opaque_existential_1[1] = v106;
                sub_1D150ADC0(v101, boxed_opaque_existential_1 + *(v103 + 28), type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation);
                type metadata accessor for SampleCountSnidgetStringBuilder();
                v107 = swift_allocObject();
                v108 = v74;
                v183 = v56;
                v92 = v107;
                v109 = v203;
                *(v107 + 16) = v203;
                v110 = objc_opt_self();
                v111 = v105;
                v112 = v204;
                v113 = [v110 sharedInstanceForHealthStore_];
                v92[3] = v112;
                v92[4] = v113;
                sub_1D150AE28(v101, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation);

                sub_1D14A0624(v184, v108, v193, v185, v183);
                v98 = *(v103 + 32);
                break;
              case 4:
                v80 = MEMORY[0x1E6968130];
                v81 = v195;
                v206 = MEMORY[0x1E6968130];
                sub_1D1507EC4(v197, v195, &qword_1EE05B520, MEMORY[0x1E6968130]);
                *v73 = 2;
                v82 = v36;
                v83 = v73;
                v84 = *(v47 + 24);
                v82(v83 + v84, 1, 1, v189);
                *v83 = v194;
                *(v83 + 8) = v188;
                *(v83 + 16) = v187;
                v85 = v58;
                sub_1D1507E58(v81, v83 + v84, &qword_1EE05B520, v80);
                v86 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0);
                v87 = v205;
                *(v205 + 24) = v86;
                v87[4] = &protocol witness table for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v87);
                v200 = v74;
                v89 = v202;
                v90 = v191;
                *boxed_opaque_existential_1 = v202;
                boxed_opaque_existential_1[1] = v90;
                boxed_opaque_existential_1[2] = v58;
                *(boxed_opaque_existential_1 + 24) = v56 & 1;
                *(boxed_opaque_existential_1 + 25) = 0;
                sub_1D150ADC0(v83, boxed_opaque_existential_1 + *(v86 + 36), type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation);
                type metadata accessor for MostRecentSampleSnidgetStringBuilder();
                v91 = v56;
                v92 = swift_allocObject();
                v93 = v203;
                v92[2] = v203;
                v94 = objc_opt_self();
                v95 = v89;
                v96 = v204;
                v97 = [v94 sharedInstanceForHealthStore_];
                v92[3] = v96;
                v92[4] = v97;
                sub_1D150AE28(v83, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation);

                sub_1D14A0624(v184, v200, v193, v185, v91);
                v98 = *(v86 + 40);
                break;
              case 0:
                v182 = v36;
                v76 = *(v208 + 16);
                v200 = v208;
                v77 = (v208 + 32);
                v206 = 0x80000001D15BCEE0;
                v181 = (v208 + 32);
                while (v76)
                {
                  v79 = *v77;
                  if (v79 <= 4 && *v77 > 1u && v79 != 2 && v79 != 3)
                  {

LABEL_56:
                    v143 = MEMORY[0x1E6968130];
                    v144 = v47;
                    v145 = v195;
                    sub_1D1507EC4(v197, v195, &qword_1EE05B520, MEMORY[0x1E6968130]);
                    *v73 = 2;
                    v146 = v73;
                    v147 = *(v144 + 24);
                    v182(v146 + v147, 1, 1, v189);
                    *v146 = v194;
                    *(v146 + 8) = v188;
                    *(v146 + 16) = v187;
                    v148 = v196;
                    v149 = v196;
                    sub_1D1507E58(v145, v146 + v147, &qword_1EE05B520, v143);
                    v150 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0);
                    v151 = v205;
                    *(v205 + 24) = v150;
                    v151[4] = &protocol witness table for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter;
                    v152 = __swift_allocate_boxed_opaque_existential_1(v151);
                    v153 = v202;
                    v154 = v191;
                    *v152 = v202;
                    v152[1] = v154;
                    v152[2] = v148;
                    *(v152 + 12) = 0;
                    sub_1D150ADC0(v146, v152 + *(v150 + 36), type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation);
                    type metadata accessor for MostRecentSampleSnidgetStringBuilder();
                    LOBYTE(v148) = v56;
                    v155 = swift_allocObject();
                    v156 = v203;
                    v155[2] = v203;
                    v157 = objc_opt_self();
                    v158 = v153;
                    v159 = v204;
                    v160 = [v157 sharedInstanceForHealthStore_];
                    v155[3] = v159;
                    v155[4] = v160;
                    sub_1D150AE28(v146, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation);

                    sub_1D14A0624(v184, v200, v193, v185, v148);
                    *(v152 + *(v150 + 40)) = v155;
                    v72 = v197;
                    v71 = v143;
                    goto LABEL_38;
                  }

                  v78 = sub_1D15A4BA8();

                  ++v77;
                  --v76;
                  v47 = v14;
                  if (v78)
                  {
                    goto LABEL_56;
                  }
                }

                v115 = *(v200 + 16);
                v116 = v181;
                v183 = v56;
                while (v115)
                {
                  v118 = *v116;
                  if (v118 > 4 && *v116 > 6u && v118 != 8 && v118 != 9)
                  {

LABEL_58:
                    v161 = v197;
                    if (*(v200 + 16))
                    {
                      v162 = *v181;
                    }

                    else
                    {
                      v162 = 10;
                    }

                    v163 = v203;
                    v164 = v192;
                    v165 = v201;
                    v166 = v193 >> 8;
                    v167 = MEMORY[0x1E6968130];
                    v168 = v195;
                    v206 = MEMORY[0x1E6968130];
                    sub_1D1507EC4(v197, v195, &qword_1EE05B520, MEMORY[0x1E6968130]);
                    *v164 = 2562;
                    v169 = *(v165 + 32);
                    v182(v164 + v169, 1, 1, v189);
                    *v164 = v194;
                    *(v164 + 1) = v162;
                    *(v164 + 2) = v166;
                    *(v164 + 8) = v188;
                    *(v164 + 16) = v187;
                    sub_1D1507E58(v168, v164 + v169, &qword_1EE05B520, v167);
                    v170 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter(0);
                    v171 = v205;
                    *(v205 + 24) = v170;
                    v171[4] = &protocol witness table for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter;
                    v172 = __swift_allocate_boxed_opaque_existential_1(v171);
                    *(v172 + 16) = 0;
                    v173 = v202;
                    v174 = v191;
                    *v172 = v202;
                    v172[1] = v174;
                    sub_1D150ADC0(v164, v172 + *(v170 + 28), type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation);
                    type metadata accessor for SampleCountSnidgetStringBuilder();
                    v175 = swift_allocObject();
                    v175[2] = v163;
                    v176 = v163;
                    v177 = objc_opt_self();
                    v178 = v173;
                    v179 = v204;
                    v180 = [v177 sharedInstanceForHealthStore_];
                    v175[3] = v179;
                    v175[4] = v180;
                    sub_1D150AE28(v164, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation);

                    sub_1D14A0624(v184, v200, v193, v185, v183);
                    *(v172 + *(v170 + 32)) = v175;
                    v72 = v161;
                    goto LABEL_37;
                  }

                  v117 = sub_1D15A4BA8();

                  ++v116;
                  --v115;
                  if (v117)
                  {
                    goto LABEL_58;
                  }
                }

                if (*(v200 + 16))
                {
                  v119 = *v181;
                }

                else
                {
                  v119 = 10;
                }

                v120 = v197;
                v121 = v203;
                v122 = v193 >> 8;
                v123 = MEMORY[0x1E6968130];
                v124 = v195;
                sub_1D1507EC4(v197, v195, &qword_1EE05B520, MEMORY[0x1E6968130]);
                v125 = v199;
                *v199 = 2562;
                v126 = *(v198 + 32);
                v182(v125 + v126, 1, 1, v189);
                *v125 = v194;
                *(v125 + 1) = v119;
                *(v125 + 2) = v122;
                *(v125 + 8) = v188;
                *(v125 + 16) = v187;
                v127 = v196;
                v128 = v196;
                sub_1D1507E58(v124, v125 + v126, &qword_1EE05B520, v123);
                v129 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter(0);
                v130 = v205;
                *(v205 + 24) = v129;
                v130[4] = &protocol witness table for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter;
                v131 = __swift_allocate_boxed_opaque_existential_1(v130);
                *(v131 + 24) = 0;
                v132 = v202;
                v133 = v191;
                *v131 = v202;
                v131[1] = v133;
                v131[2] = v127;
                sub_1D150ADC0(v125, v131 + *(v129 + 32), type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation);
                type metadata accessor for StatisticsSnidgetStringBuilder();
                v134 = swift_allocObject();
                v134[2] = v121;
                v135 = objc_opt_self();
                v136 = v132;
                v137 = v121;
                v138 = v135;
                v139 = v136;
                v140 = v120;
                v141 = v204;
                v142 = [v138 sharedInstanceForHealthStore_];
                v134[3] = v141;
                v134[4] = v142;
                sub_1D150AE28(v125, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation);

                sub_1D14A0624(v184, v200, v193, v185, v183);
                *(v131 + *(v129 + 36)) = v134;
                v72 = v140;
                v71 = v123;
                goto LABEL_38;
              default:
                v114 = v204;
                sub_1D14A0624(v184, v208, v193, v185, v211);
                v57 = v114;
                v30 = v186;
                v33 = v191;
                goto LABEL_20;
            }

            *(boxed_opaque_existential_1 + v98) = v92;
            v72 = v197;
LABEL_37:
            v71 = v206;
            goto LABEL_38;
          }

LABEL_66:
          __break(1u);
          return;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_64;
  }
}

BOOL _s19HealthVisualization52QuantityCodableCurrentValueSnidgetViewModelExtractorV8MetadataV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D15A22A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6968130];
  sub_1D150AA30(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v52 - v9;
  sub_1D150B120(0, &qword_1EC630528, &qword_1EE05B520, v7);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v52 - v11;
  v12 = sub_1D15A26A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E6969530];
  sub_1D150AA30(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v52 - v17;
  sub_1D150B120(0, &qword_1EE0594A8, &qword_1EE05B7F8, v15);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - v21;
  if (*a1 != *a2)
  {
    return 0;
  }

  v56 = v5;
  v53 = v4;
  v54 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  v55 = a1;
  v23 = v54[5];
  v24 = *(v20 + 48);
  v25 = MEMORY[0x1E6969530];
  sub_1D1507EC4(&a1[v23], v22, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  sub_1D1507EC4(&a2[v23], &v22[v24], &qword_1EE05B7F8, v25);
  v26 = *(v13 + 48);
  if (v26(v22, 1, v12) == 1)
  {
    if (v26(&v22[v24], 1, v12) == 1)
    {
      sub_1D150A980(v22, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
      goto LABEL_11;
    }

LABEL_7:
    v27 = &qword_1EE0594A8;
    v28 = &qword_1EE05B7F8;
    v29 = MEMORY[0x1E6969530];
    v30 = v22;
LABEL_8:
    sub_1D150B184(v30, v27, v28, v29);
    return 0;
  }

  sub_1D1507EC4(v22, v18, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  if (v26(&v22[v24], 1, v12) == 1)
  {
    (*(v13 + 8))(v18, v12);
    goto LABEL_7;
  }

  v32 = v61;
  (*(v13 + 32))(v61, &v22[v24], v12);
  sub_1D14A0A68(&qword_1EC630538, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v33 = sub_1D15A3EE8();
  v34 = *(v13 + 8);
  v34(v32, v12);
  v34(v18, v12);
  sub_1D150A980(v22, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v35 = v54[6];
  v36 = &v55[v35];
  v37 = v55[v35 + 8];
  v38 = &a2[v35];
  v39 = a2[v35 + 8];
  if (v37)
  {
    v40 = v56;
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    v40 = v56;
    if (v39)
    {
      return 0;
    }
  }

  if (v55[v54[7]] != a2[v54[7]])
  {
    return 0;
  }

  v41 = v54[8];
  v42 = v60;
  v43 = *(v59 + 48);
  v44 = MEMORY[0x1E6968130];
  sub_1D1507EC4(&v55[v41], v60, &qword_1EE05B520, MEMORY[0x1E6968130]);
  sub_1D1507EC4(&a2[v41], v42 + v43, &qword_1EE05B520, v44);
  v45 = *(v40 + 48);
  v46 = v53;
  if (v45(v42, 1, v53) != 1)
  {
    v47 = v58;
    sub_1D1507EC4(v42, v58, &qword_1EE05B520, MEMORY[0x1E6968130]);
    if (v45(v42 + v43, 1, v46) != 1)
    {
      v48 = v42 + v43;
      v49 = v57;
      (*(v40 + 32))(v57, v48, v46);
      sub_1D14A0A68(&qword_1EC630530, MEMORY[0x1E6968130], MEMORY[0x1E6968148]);
      v50 = sub_1D15A3EE8();
      v51 = *(v40 + 8);
      v51(v49, v46);
      v51(v47, v46);
      sub_1D150A980(v42, &qword_1EE05B520, MEMORY[0x1E6968130]);
      return (v50 & 1) != 0;
    }

    (*(v40 + 8))(v47, v46);
    goto LABEL_23;
  }

  if (v45(v42 + v43, 1, v46) != 1)
  {
LABEL_23:
    v27 = &qword_1EC630528;
    v28 = &qword_1EE05B520;
    v29 = MEMORY[0x1E6968130];
    v30 = v42;
    goto LABEL_8;
  }

  sub_1D150A980(v42, &qword_1EE05B520, MEMORY[0x1E6968130]);
  return 1;
}

unint64_t sub_1D150A91C()
{
  result = qword_1EC630D58;
  if (!qword_1EC630D58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC630D58);
  }

  return result;
}

uint64_t sub_1D150A980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D150AA30(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D150A9DC()
{
  result = qword_1EC630D60;
  if (!qword_1EC630D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630D60);
  }

  return result;
}

void sub_1D150AA30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D150AA84(void *a1)
{
  v3 = sub_1D15A3268();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14862B0(a1);
  if (!v1 && !v7)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1D15A47D8();

    v25 = 0xD000000000000028;
    v26 = 0x80000001D15BE730;
    v8 = [a1 kindRawValue];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1D15A3F38();
      v12 = v11;
    }

    else
    {
      v12 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E55;
    }

    MEMORY[0x1D388A330](v10, v12);

    v14 = v25;
    v13 = v26;
    sub_1D15A3238();

    v15 = sub_1D15A3248();
    v16 = sub_1D15A4318();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = v14;
      v18 = v17;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_1D1479780(0xD000000000000034, 0x80000001D15B2A60, &v25);
      *(v18 + 12) = 2112;
      sub_1D150A9DC();
      swift_allocError();
      *v21 = v27;
      v21[1] = v13;

      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&dword_1D1446000, v15, v16, "[%s]: Error: %@", v18, 0x16u);
      sub_1D150A980(v19, &qword_1EE0564C0, sub_1D14A0574);
      MEMORY[0x1D388BF00](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D388BF00](v20, -1, -1);
      v23 = v18;
      v14 = v27;
      MEMORY[0x1D388BF00](v23, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    sub_1D150A9DC();
    swift_allocError();
    *v24 = v14;
    v24[1] = v13;
    swift_willThrow();
  }
}

uint64_t sub_1D150ADC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D150AE28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D150AE8C()
{
  result = qword_1EC630D68;
  if (!qword_1EC630D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630D68);
  }

  return result;
}

uint64_t sub_1D150AF28(uint64_t a1)
{
  result = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D150AFDC(uint64_t a1)
{
  sub_1D150AA30(319, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    sub_1D150B0C0();
    if (v2 <= 0x3F)
    {
      sub_1D150AA30(319, &qword_1EE05B520, MEMORY[0x1E6968130]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D150B0C0()
{
  if (!qword_1EE059750)
  {
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059750);
    }
  }
}

void sub_1D150B120(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D150AA30(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D150B184(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D150B120(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1D150B1E4(char a1)
{
  result = 0x6974736974617473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x7065656C73;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6563655274736F6DLL;
      break;
    case 6:
      result = 0x7974697669746361;
      break;
    case 7:
      result = 0x7078456F69647561;
      break;
    case 8:
      result = 0x6172676F69647561;
      break;
    case 9:
      result = 0x6F43656C706D6173;
      break;
    case 10:
      result = 0x756F48646E617473;
      break;
    case 11:
      result = 0x46676E696F676E6FLL;
      break;
    case 12:
      result = 0x6D6F43746E756F63;
      break;
    case 13:
      result = 0x69466F6964726163;
      break;
    case 14:
      result = 0x6472754262694661;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x7461777265646E75;
      break;
    case 17:
      result = 0x4D65636E616C6162;
      break;
    case 18:
      result = 0x6F63537065656C73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D150B460@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D150D1F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D150B494(uint64_t a1)
{
  v2 = sub_1D150C76C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D150B4D0(uint64_t a1)
{
  v2 = sub_1D150C76C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryConfiguration.encode(to:)(void *a1)
{
  sub_1D150CB08(0, &qword_1EE0563C0, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = *v1;
  v5 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  v9 = *(v1 + 32);
  v10 = a1[3];
  v11 = a1;
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1D150C76C();
  sub_1D15A4CE8();
  switch(v9 >> 3)
  {
    case 1u:
      v22 = v6;
      LOBYTE(v23) = v5;
      v24 = v8;
      LOWORD(v25) = v7;
      v27 = 1;
      sub_1D150CA0C();
      goto LABEL_26;
    case 2u:
      LOBYTE(v22) = v6;
      v23 = v5;
      v27 = 2;
      sub_1D150C8BC();
      goto LABEL_26;
    case 3u:
      v16 = 3;
      goto LABEL_22;
    case 4u:
      v22 = v6;
      v23 = v5;
      v24 = v8;
      v25 = v7;
      v26 = v9 & 1;
      v15 = 4;
      goto LABEL_25;
    case 5u:
      LOWORD(v22) = v6;
      BYTE2(v22) = BYTE2(v6);
      v27 = 5;
      sub_1D150C964();
      goto LABEL_26;
    case 6u:
      LOBYTE(v22) = 6;
      sub_1D150CAB4();
      goto LABEL_23;
    case 7u:
      LOBYTE(v22) = v6;
      v23 = v5;
      LOWORD(v24) = v8;
      v27 = 7;
      sub_1D150CA60();
      goto LABEL_26;
    case 8u:
      v22 = v6;
      v23 = v5;
      v24 = v8;
      v25 = v7;
      v26 = v9 & 1;
      v15 = 8;
LABEL_25:
      v27 = v15;
      sub_1D148FCA0();
      goto LABEL_26;
    case 9u:
      LOBYTE(v22) = 9;
      sub_1D150C910();
      goto LABEL_23;
    case 0xAu:
      v16 = 10;
LABEL_22:
      LOBYTE(v22) = v16;
      sub_1D150C868();
      goto LABEL_23;
    case 0xBu:
      v14 = 11;
      goto LABEL_20;
    case 0xCu:
      v22 = v6;
      LOBYTE(v23) = v5 & 1;
      v24 = v8;
      LOBYTE(v25) = v7 & 1;
      v27 = 12;
      sub_1D150C9B8();
      goto LABEL_26;
    case 0xDu:
      v14 = 13;
      goto LABEL_20;
    case 0xEu:
      v14 = 14;
      goto LABEL_20;
    case 0xFu:
      v14 = 15;
      goto LABEL_20;
    case 0x10u:
      LOBYTE(v22) = v6;
      v23 = v5;
      LOWORD(v24) = v8;
      v27 = 16;
      goto LABEL_4;
    case 0x11u:
      v14 = 17;
      goto LABEL_20;
    case 0x12u:
      v14 = 18;
LABEL_20:
      LOBYTE(v22) = v14;
      sub_1D150C7C0();
LABEL_23:
      v17 = v20;
      break;
    default:
      LOBYTE(v22) = v6;
      v23 = v5;
      LOWORD(v24) = v8;
      v27 = 0;
LABEL_4:
      sub_1D150C814();
LABEL_26:
      v17 = v20;
      break;
  }

  sub_1D15A4B38();
  return (*(v21 + 8))(v13, v17);
}

void QueryConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D150CB08(0, &qword_1EE05ACA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D150C76C();
  sub_1D15A4CD8();
  if (v2)
  {
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v10 = sub_1D15A4A88();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v10 + v11 + 31);

    switch(v12)
    {
      case 1:
        v24 = 1;
        sub_1D150CDB8();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = v19;
        v16 = v20;
        v17 = v21;
        v14 = 8;
        v13 = v22;
        break;
      case 2:
        v24 = 2;
        sub_1D150CC68();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v17 = 0;
        v13 = 0;
        v15 = v19;
        v16 = v20;
        v14 = 16;
        break;
      case 3:
        LOBYTE(v19) = 3;
        sub_1D150CC14();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v13 = 0;
        v14 = 24;
        break;
      case 4:
        v24 = 4;
        sub_1D148FD58();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = v19;
        v16 = v20;
        v17 = v21;
        v13 = v22;
        v14 = v23 | 0x20;
        break;
      case 5:
        v24 = 5;
        sub_1D150CD10();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v16 = 0;
        v17 = 0;
        v13 = 0;
        v15 = v19 | (BYTE2(v19) << 16);
        v14 = 40;
        break;
      case 6:
        LOBYTE(v19) = 6;
        sub_1D150CE60();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v13 = 0;
        v14 = 48;
        break;
      case 7:
        v24 = 7;
        sub_1D150CE0C();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v13 = 0;
        v15 = v19;
        v16 = v20;
        v14 = 56;
        v17 = v21;
        break;
      case 8:
        v24 = 8;
        sub_1D148FD58();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = v19;
        v16 = v20;
        v17 = v21;
        v13 = v22;
        v14 = v23 | 0x40;
        break;
      case 9:
        LOBYTE(v19) = 9;
        sub_1D150CCBC();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v13 = 0;
        v14 = 72;
        break;
      case 10:
        LOBYTE(v19) = 10;
        sub_1D150CC14();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v13 = 0;
        v14 = 80;
        break;
      case 11:
        LOBYTE(v19) = 11;
        sub_1D150CB6C();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v13 = 0;
        v14 = 88;
        break;
      case 12:
        v24 = 12;
        sub_1D150CD64();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = v19;
        v16 = v20;
        v17 = v21;
        v14 = 96;
        v13 = v22;
        break;
      case 13:
        LOBYTE(v19) = 13;
        sub_1D150CB6C();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v13 = 0;
        v14 = 104;
        break;
      case 14:
        LOBYTE(v19) = 14;
        sub_1D150CB6C();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v13 = 0;
        v14 = 112;
        break;
      case 15:
        LOBYTE(v19) = 15;
        sub_1D150CB6C();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v13 = 0;
        v14 = 120;
        break;
      case 16:
        v24 = 16;
        sub_1D150CBC0();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v13 = 0;
        v15 = v19;
        v16 = v20;
        v14 = 0x80;
        v17 = v21;
        break;
      case 17:
        LOBYTE(v19) = 17;
        sub_1D150CB6C();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v13 = 0;
        v14 = -120;
        break;
      case 18:
        LOBYTE(v19) = 18;
        sub_1D150CB6C();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v13 = 0;
        v14 = -112;
        break;
      default:
        v24 = 0;
        sub_1D150CBC0();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v13 = 0;
        v14 = 0;
        v15 = v19;
        v16 = v20;
        v17 = v21;
        break;
    }

    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t _s19HealthVisualization18QueryConfigurationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v31[0] = *a1;
  v31[1] = v2;
  v31[2] = v5;
  v31[3] = v4;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v10;
  v36 = v9;
  v37 = v11;
  switch(v6 >> 3)
  {
    case 1u:
      if ((v11 & 0xF8) != 8)
      {
        goto LABEL_47;
      }

      v26 = v3;
      LOBYTE(v27) = v2;
      v28 = v5;
      LOWORD(v29) = v4;
      v21 = v7;
      LOBYTE(v22) = v8;
      v23 = v10;
      LOWORD(v24) = v9;
      sub_1D148D3E8(v7, v8, v10, v9, v11);
      sub_1D148D3E8(v3, v2, v5, v4, v6);
      sub_1D148D3E8(v3, v2, v5, v4, v6);
      sub_1D148D3E8(v7, v8, v10, v9, v11);
      v20 = v4;
      ConfigurationV2eeoiySbAC_ACtFZ_0 = _s19HealthVisualization38CorrelatedStatisticsQueryConfigurationV2eeoiySbAC_ACtFZ_0(&v26, &v21);
      sub_1D150D818(v31);
      sub_1D148D7A8(v7, v8, v10, v9, v11);
      sub_1D148D7A8(v3, v2, v5, v20, v6);
      return ConfigurationV2eeoiySbAC_ACtFZ_0 & 1;
    case 2u:
      if ((v11 & 0xF8) != 0x10)
      {
        goto LABEL_49;
      }

      v15 = sub_1D1477464(v3, v7);
      sub_1D150D818(v31);
      ConfigurationV2eeoiySbAC_ACtFZ_0 = v15 & (v2 == v8);
      return ConfigurationV2eeoiySbAC_ACtFZ_0 & 1;
    case 3u:
      if ((v11 & 0xF8) == 0x18)
      {
        goto LABEL_45;
      }

      goto LABEL_49;
    case 4u:
      if ((v11 & 0xF8) == 0x20)
      {
        goto LABEL_11;
      }

      goto LABEL_47;
    case 5u:
      if ((v11 & 0xF8) != 0x28)
      {
        goto LABEL_49;
      }

      if ((sub_1D1477464(v3, v7) & 1) == 0 || (sub_1D1477670(BYTE1(v3), BYTE1(v7)) & 1) == 0)
      {
        goto LABEL_50;
      }

      v17 = sub_1D147783C(BYTE2(v3), BYTE2(v7));
      sub_1D150D818(v31);
      if (v17)
      {
        goto LABEL_37;
      }

      goto LABEL_51;
    case 6u:
      if ((v11 & 0xF8) != 0x30)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    case 7u:
      if ((v11 & 0xF8) == 0x38)
      {
        goto LABEL_23;
      }

      goto LABEL_48;
    case 8u:
      if ((v11 & 0xF8) == 0x40)
      {
LABEL_11:
        v26 = v3;
        v27 = v2;
        v28 = v5;
        v29 = v4;
        v30 = v6 & 1;
        v21 = v7;
        v22 = v8;
        v23 = v10;
        v24 = v9;
        v25 = v11 & 1;
        v12 = _s19HealthVisualization34MostRecentSampleQueryConfigurationV2eeoiySbAC_ACtFZ_0(&v26, &v21);
        v13 = v4;
        ConfigurationV2eeoiySbAC_ACtFZ_0 = v12;
        sub_1D148D3E8(v3, v2, v5, v13, v6);
        sub_1D148D3E8(v7, v8, v10, v9, v11);
        sub_1D150D818(v31);
        return ConfigurationV2eeoiySbAC_ACtFZ_0 & 1;
      }

LABEL_47:

LABEL_48:

LABEL_49:
      sub_1D148D3E8(v7, v8, v10, v9, v11);
LABEL_50:
      sub_1D150D818(v31);
      goto LABEL_51;
    case 9u:
      if ((v11 & 0xF8) != 0x48)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    case 0xAu:
      if ((v11 & 0xF8) == 0x50)
      {
        goto LABEL_45;
      }

      goto LABEL_49;
    case 0xBu:
      if ((v11 & 0xF8) != 0x58)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    case 0xCu:
      if ((v11 & 0xF8) != 0x60)
      {
        goto LABEL_49;
      }

      sub_1D150D818(v31);
      v26 = v3;
      LOBYTE(v27) = v2 & 1;
      v28 = v5;
      LOBYTE(v29) = v4 & 1;
      v21 = v7;
      LOBYTE(v22) = v8 & 1;
      v23 = v10;
      LOBYTE(v24) = v9 & 1;
      ConfigurationV2eeoiySbAC_ACtFZ_0 = _s19HealthVisualization33CountComparisonQueryConfigurationV2eeoiySbAC_ACtFZ_0(&v26, &v21);
      return ConfigurationV2eeoiySbAC_ACtFZ_0 & 1;
    case 0xDu:
      if ((v11 & 0xF8) != 0x68)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    case 0xEu:
      if ((v11 & 0xF8) != 0x70)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    case 0xFu:
      if ((v11 & 0xF8) != 0x78)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    case 0x10u:
      if ((v11 & 0xF8) != 0x80)
      {
        goto LABEL_48;
      }

      goto LABEL_23;
    case 0x11u:
      if ((v11 & 0xF8) != 0x88)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    case 0x12u:
      if ((v11 & 0xF8) != 0x90)
      {
        goto LABEL_49;
      }

LABEL_45:
      sub_1D150D818(v31);
      ConfigurationV2eeoiySbAC_ACtFZ_0 = 1;
      return ConfigurationV2eeoiySbAC_ACtFZ_0 & 1;
    default:
      if (v11 >= 8)
      {
        goto LABEL_48;
      }

LABEL_23:
      sub_1D148D3E8(v7, v8, v10, v9, v11);
      sub_1D148D3E8(v3, v2, v5, v4, v6);
      sub_1D148D3E8(v3, v2, v5, v4, v6);
      sub_1D148D3E8(v7, v8, v10, v9, v11);
      if (sub_1D1477464(v3, v7) & 1) != 0 && (sub_1D1488F9C(v2, v8), (v16) && (sub_1D1477670(v5, v10))
      {
        v19 = sub_1D147783C(BYTE1(v5), BYTE1(v10));
        sub_1D150D818(v31);
        sub_1D148D7A8(v7, v8, v10, v9, v11);
        sub_1D148D7A8(v3, v2, v5, v4, v6);
        if (v19)
        {
LABEL_37:
          ConfigurationV2eeoiySbAC_ACtFZ_0 = 1;
          return ConfigurationV2eeoiySbAC_ACtFZ_0 & 1;
        }
      }

      else
      {
        sub_1D150D818(v31);
        sub_1D148D7A8(v7, v8, v10, v9, v11);
        sub_1D148D7A8(v3, v2, v5, v4, v6);
      }

LABEL_51:
      ConfigurationV2eeoiySbAC_ACtFZ_0 = 0;
      return ConfigurationV2eeoiySbAC_ACtFZ_0 & 1;
  }
}

unint64_t sub_1D150C76C()
{
  result = qword_1EE05B1F0;
  if (!qword_1EE05B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B1F0);
  }

  return result;
}

unint64_t sub_1D150C7C0()
{
  result = qword_1EE058970;
  if (!qword_1EE058970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058970);
  }

  return result;
}

unint64_t sub_1D150C814()
{
  result = qword_1EE058250;
  if (!qword_1EE058250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058250);
  }

  return result;
}

unint64_t sub_1D150C868()
{
  result = qword_1EE057820;
  if (!qword_1EE057820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057820);
  }

  return result;
}

unint64_t sub_1D150C8BC()
{
  result = qword_1EE058528[0];
  if (!qword_1EE058528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE058528);
  }

  return result;
}

unint64_t sub_1D150C910()
{
  result = qword_1EE058150;
  if (!qword_1EE058150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058150);
  }

  return result;
}

unint64_t sub_1D150C964()
{
  result = qword_1EE057D10;
  if (!qword_1EE057D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057D10);
  }

  return result;
}

unint64_t sub_1D150C9B8()
{
  result = qword_1EC630D70;
  if (!qword_1EC630D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630D70);
  }

  return result;
}

unint64_t sub_1D150CA0C()
{
  result = qword_1EE057840;
  if (!qword_1EE057840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057840);
  }

  return result;
}

unint64_t sub_1D150CA60()
{
  result = qword_1EE057F08;
  if (!qword_1EE057F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057F08);
  }

  return result;
}

unint64_t sub_1D150CAB4()
{
  result = qword_1EC630D78;
  if (!qword_1EC630D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630D78);
  }

  return result;
}

void sub_1D150CB08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D150C76C();
    v7 = a3(a1, &type metadata for QueryConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D150CB6C()
{
  result = qword_1EE05B028;
  if (!qword_1EE05B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B028);
  }

  return result;
}

unint64_t sub_1D150CBC0()
{
  result = qword_1EE05AFB8;
  if (!qword_1EE05AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AFB8);
  }

  return result;
}

unint64_t sub_1D150CC14()
{
  result = qword_1EE05AE60;
  if (!qword_1EE05AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AE60);
  }

  return result;
}

unint64_t sub_1D150CC68()
{
  result = qword_1EE05AFF8;
  if (!qword_1EE05AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AFF8);
  }

  return result;
}

unint64_t sub_1D150CCBC()
{
  result = qword_1EE05AFB0;
  if (!qword_1EE05AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AFB0);
  }

  return result;
}

unint64_t sub_1D150CD10()
{
  result = qword_1EE057D08;
  if (!qword_1EE057D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057D08);
  }

  return result;
}

unint64_t sub_1D150CD64()
{
  result = qword_1EC630D80;
  if (!qword_1EC630D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630D80);
  }

  return result;
}

unint64_t sub_1D150CDB8()
{
  result = qword_1EE05AE68;
  if (!qword_1EE05AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AE68);
  }

  return result;
}

unint64_t sub_1D150CE0C()
{
  result = qword_1EE05AF90;
  if (!qword_1EE05AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AF90);
  }

  return result;
}

unint64_t sub_1D150CE60()
{
  result = qword_1EE05AF88;
  if (!qword_1EE05AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AF88);
  }

  return result;
}

uint64_t sub_1D150CEB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6E && *(a1 + 33))
  {
    return (*a1 + 110);
  }

  v3 = ((*(a1 + 32) >> 3) & 0xFFFFFF9F | (32 * ((*(a1 + 32) >> 1) & 3))) ^ 0x7F;
  if (v3 >= 0x6D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D150CF08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 110;
    *(result + 8) = 0;
    if (a3 >= 0x6E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 5) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QueryConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D150D0EC()
{
  result = qword_1EC630D88;
  if (!qword_1EC630D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630D88);
  }

  return result;
}

unint64_t sub_1D150D144()
{
  result = qword_1EE05B1E0;
  if (!qword_1EE05B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B1E0);
  }

  return result;
}

unint64_t sub_1D150D19C()
{
  result = qword_1EE05B1E8;
  if (!qword_1EE05B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B1E8);
  }

  return result;
}

uint64_t sub_1D150D1F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6974736974617473 && a2 == 0xEA00000000007363 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D15C0A50 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7065656C73 && a2 == 0xE500000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D15C0A70 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D15BE1D0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6563655274736F6DLL && a2 == 0xEF65676E6152746ELL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEF7972616D6D7553 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7078456F69647561 && a2 == 0xED0000657275736FLL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6172676F69647561 && a2 == 0xE90000000000006DLL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F43656C706D6173 && a2 == 0xEB00000000746E75 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x756F48646E617473 && a2 == 0xEA00000000007372 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x46676E696F676E6FLL && a2 == 0xEE0073726F746361 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6D6F43746E756F63 && a2 == 0xEF6E6F7369726170 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x69466F6964726163 && a2 == 0xED00007373656E74 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6472754262694661 && a2 == 0xEA00000000006E65 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D15BCC30 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7461777265646E75 && a2 == 0xEF68747065447265 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x4D65636E616C6162 && a2 == 0xEE00736369727465 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6F63537065656C73 && a2 == 0xEA00000000006572)
  {

    return 18;
  }

  else
  {
    v5 = sub_1D15A4BA8();

    if (v5)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_1D150D818(uint64_t a1)
{
  sub_1D150D874();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D150D874()
{
  if (!qword_1EC630D90)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC630D90);
    }
  }
}

id sub_1D150D8D0()
{
  v0 = [swift_getObjCClassFromMetadata() initialPauseStateLoadedNotification];

  return v0;
}

uint64_t sub_1D150D90C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 resumeDate];
  if (v3)
  {
    v4 = v3;
    sub_1D15A2668();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D15A26A8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id sub_1D150D9B0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHealthStore_];

  return v2;
}

uint64_t sub_1D150D9F8()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);
  if ((*(v0 + 32) >> 62) > 1)
  {
    result = sub_1D15A4908();
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v0 + 16));
    return v1;
  }

  return result;
}

uint64_t HealthStoreActivityRingsResumeDateProvider.__allocating_init(healthStore:notificationCenter:pauseRingsCoordinatorType:)(void *a1, void *a2, uint64_t a3, _UNKNOWN **a4)
{
  swift_allocObject();
  v8 = sub_1D150EB28(a1, a2, a3, a4);

  return v8;
}

uint64_t HealthStoreActivityRingsResumeDateProvider.init(healthStore:notificationCenter:pauseRingsCoordinatorType:)(void *a1, void *a2, uint64_t a3, _UNKNOWN **a4)
{
  v6 = sub_1D150EB28(a1, a2, a3, a4);

  return v6;
}

double sub_1D150DB5C()
{
  v1 = v0;
  v2 = sub_1D15A3DC8();
  v17 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D15A3DE8();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A22C8();
  if (v21)
  {
    sub_1D150F210();
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v18;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v19;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_1D144ED4C(aBlock);
    v9 = 0;
    v10 = 0;
  }

  v15[1] = *(v1 + 48);
  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = v9;
  v11[4] = v10;
  v22 = sub_1D150F1DC;
  v23 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1493D34;
  v21 = &block_descriptor_10;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1D15A3DD8();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D150F520(&qword_1EE059798, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v13 = MEMORY[0x1E69E7F60];
  sub_1D150F568(0, &qword_1EE059770, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D150EEF0(&qword_1EE059768, &qword_1EE059770, v13);
  sub_1D15A4678();
  MEMORY[0x1D388A7A0](0, v7, v4, v12);
  _Block_release(v12);
  swift_unknownObjectRelease();
  (*(v17 + 8))(v4, v2);
  (*(v5 + 8))(v7, v16);

  return result;
}

void sub_1D150DEB4(void *a1@<X0>, uint64_t a2@<X1>, void (**a3)()@<X8>)
{
  v31 = a3;
  sub_1D150F568(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = sub_1D15A3268();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[1];
  if (v17 >> 62)
  {
    if (v17 >> 62 != 1)
    {
      v18 = v14;
      sub_1D15A3238();
      v19 = sub_1D15A3248();
      v20 = sub_1D15A4318();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1D1446000, v19, v20, "Received initial pause state loaded notification before coordinator was ready", v21, 2u);
        MEMORY[0x1D388BF00](v21, -1, -1);
      }

      (*(v13 + 8))(v16, v18);
    }
  }

  else
  {
    v30 = v6;
    if (a2 && *a1 == a2)
    {
      v22 = a1[2];
      ObjectType = swift_getObjectType();
      v29 = *(v17 + 16);

      swift_unknownObjectRetain();
      v29(ObjectType, v17);

      swift_unknownObjectRelease();
      *a1 = a2;
      a1[1] = v17 | 0x4000000000000000;
      a1[2] = 0;
      sub_1D150F280(v11, v8);
      v24 = (*(v30 + 80) + 24) & ~*(v30 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v22;
      sub_1D150F280(v8, v25 + v24);
      v26 = v31;
      *v31 = sub_1D150F314;
      v26[1] = v25;
      return;
    }
  }

  v27 = v31;
  *v31 = 0;
  v27[1] = 0;
}

void sub_1D150E1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(a2);

      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

double sub_1D150E31C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D15A3DC8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D15A3DE8();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v3 + 48);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1D150EEBC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1493D34;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);

  sub_1D15A3DD8();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D150F520(&qword_1EE059798, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v15 = MEMORY[0x1E69E7F60];
  sub_1D150F568(0, &qword_1EE059770, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D150EEF0(&qword_1EE059768, &qword_1EE059770, v15);
  sub_1D15A4678();
  MEMORY[0x1D388A7A0](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);

  return result;
}

void sub_1D150E610(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, void (*a4)(void (**__return_ptr)(uint64_t), os_unfair_lock_s *, uint64_t, uint64_t))
{
  os_unfair_lock_lock(a1 + 4);
  a4(v11, a1 + 6, a2, a3);
  os_unfair_lock_unlock(a1 + 4);
  v8 = v11[0];
  if (v11[0])
  {
    v9 = v11[1];

    v8(v10);
    sub_1D150F270(v8, v9);

    sub_1D150F270(v8, v9);
  }
}

uint64_t sub_1D150E6CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v36 = a2;
  v37 = a3;
  v38 = a4;
  sub_1D150F568(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = sub_1D15A3268();
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  if (v15 >> 62)
  {
    if (v15 >> 62 == 1)
    {
      ObjectType = swift_getObjectType();
      v34 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_unknownObjectRetain();
      v34(ObjectType, v15 & 0x3FFFFFFFFFFFFFFFLL);
      sub_1D150F3B8(v16, v15, v17);
      sub_1D150F280(v10, v7);
      v19 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v20 = swift_allocObject();
      v21 = v37;
      *(v20 + 16) = v36;
      *(v20 + 24) = v21;
      sub_1D150F280(v7, v20 + v19);
      v22 = v38;
      *v38 = sub_1D150F414;
      v22[1] = v20;
    }

    v28 = v12;
    sub_1D15A3238();
    v29 = sub_1D15A3248();
    v30 = sub_1D15A4318();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D1446000, v29, v30, "Received request for rings resume date unexpectedly", v31, 2u);
      MEMORY[0x1D388BF00](v31, -1, -1);
    }

    result = (*(v28 + 8))(v14, v11);
  }

  else
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v36;
    *(v24 + 24) = v37;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D148C404(0, v17[2] + 1, 1, v17);
      v17 = result;
    }

    v26 = v17[2];
    v25 = v17[3];
    if (v26 >= v25 >> 1)
    {
      result = sub_1D148C404((v25 > 1), v26 + 1, 1, v17);
      v17 = result;
    }

    v17[2] = v26 + 1;
    v27 = &v17[2 * v26];
    v27[4] = sub_1D150F4AC;
    v27[5] = v24;
    *a1 = v16;
    a1[1] = v15;
    a1[2] = v17;
  }

  v32 = v38;
  *v38 = 0;
  v32[1] = 0;
  return result;
}

id *HealthStoreActivityRingsResumeDateProvider.deinit()
{
  sub_1D150EF54((v0 + 3));

  return v0;
}

uint64_t HealthStoreActivityRingsResumeDateProvider.__deallocating_deinit()
{
  sub_1D150EF54((v0 + 3));

  return swift_deallocClassInstance();
}

uint64_t sub_1D150EB28(void *a1, void *a2, uint64_t a3, _UNKNOWN **a4)
{
  v5 = v4;
  v24 = a4;
  v30 = a3;
  v31 = a2;
  v28 = a1;
  v29 = sub_1D15A4428();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D15A4418();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1D15A3DE8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  *(v4 + 16) = 0;
  *(v4 + 24) = xmmword_1D15B3070;
  *(v4 + 40) = 0;
  v10 = sub_1D150F4D4();
  v25 = "pauseRingsCoordinatorType";
  v26 = v10;
  sub_1D15A3DD8();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1D150F520(&qword_1EE05AD30, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v11 = MEMORY[0x1E69E8030];
  sub_1D150F568(0, &qword_1EE05AD98, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D150EEF0(&qword_1EE05AD90, &qword_1EE05AD98, v11);
  v12 = v28;
  sub_1D15A4678();
  (*(v27 + 104))(v7, *MEMORY[0x1E69E8090], v29);
  v13 = v30;
  v14 = sub_1D15A4448();
  v15 = v31;
  *(v5 + 48) = v14;
  *(v5 + 56) = v12;
  *(v5 + 64) = v15;
  if (v13)
  {
    v16 = v24;
  }

  else
  {
    v13 = sub_1D15A4518();
    v16 = &protocol witness table for FIPauseRingsCoordinator;
  }

  *(v5 + 72) = v13;
  *(v5 + 80) = v16;
  v17 = v16[1];
  v18 = v12;
  v19 = v15;

  v20 = v17(v13, v16);
  [v19 addObserver:v5 selector:sel_pauseStateLoadedWithNotification_ name:v20 object:0];

  os_unfair_lock_lock((v5 + 16));
  sub_1D150F3B8(*(v5 + 24), *(v5 + 32), *(v5 + 40));
  v21 = *(v5 + 80);
  *(v5 + 24) = (*(v21 + 24))(*(v5 + 56), *(v5 + 72), v21);
  *(v5 + 32) = v21;
  *(v5 + 40) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock((v5 + 16));
  return v5;
}

uint64_t sub_1D150EEF0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D150F568(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_19HealthVisualization0A36StoreActivityRingsResumeDateProviderC5State33_31886F2E05B893B390A8C0FCA1380A38LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D150F088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D150F0E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
    }
  }

  return result;
}

void *sub_1D150F14C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 1) = xmmword_1D15B3080;
  }

  return result;
}

void sub_1D150F18C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D150F210()
{
  result = qword_1EE058C00[0];
  if (!qword_1EE058C00[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE058C00);
  }

  return result;
}

double sub_1D150F270(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1D150F280(uint64_t a1, uint64_t a2)
{
  sub_1D150F568(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D150F314()
{
  sub_1D150F568(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_1D150E1C8(v3, v4);
}

void sub_1D150F3B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 62 == 1)
  {

    swift_unknownObjectRelease();
  }

  else if (!(a2 >> 62))
  {
    swift_unknownObjectRelease();
  }
}

unint64_t sub_1D150F4D4()
{
  result = qword_1EE05B450;
  if (!qword_1EE05B450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE05B450);
  }

  return result;
}

uint64_t sub_1D150F520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D150F568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D150F5F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 40) = sub_1D1512838;
  *(a2 + 48) = v5;
}

uint64_t DefaultHKSharedSummaryProvider.executeQuery.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void DefaultHKSharedSummaryProvider.executeQuery.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t DefaultHKSharedSummaryProvider.init(transactionProvider:executeQuery:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1D1450E94(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t DefaultHKSharedSummaryProvider.fetchSharedSummaries(for:)(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = sub_1D15A3268();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v4 = sub_1D15A2CE8();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D150F868, 0, 0);
}

uint64_t sub_1D150F868()
{
  v1 = v0[34];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[44] = v4;
  *v4 = v0;
  v4[1] = sub_1D150F924;
  v5 = v0[43];

  return MEMORY[0x1EEE0F4B0](v5, v2, v3);
}

uint64_t sub_1D150F924(uint64_t a1)
{
  *(*v2 + 360) = a1;

  if (v1)
  {
    v3 = sub_1D1510BC4;
  }

  else
  {
    v3 = sub_1D150FA38;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D150FA38(uint64_t a1)
{
  v25 = v1;
  if (v1[45])
  {
    sub_1D15A3238();
    v2 = sub_1D15A3248();
    v3 = sub_1D15A42F8();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v1[40];
    v6 = v1[35];
    v7 = v1[36];
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_1D1479780(0xD00000000000001ELL, 0x80000001D15B3240, &v24);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1D1479780(0xD00000000000001ALL, 0x80000001D15C0BE0, &v24);
      _os_log_impl(&dword_1D1446000, v2, v3, "[%s][%s]: Fetching summaries using open transaction", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v9, -1, -1);
      MEMORY[0x1D388BF00](v8, -1, -1);
    }

    (*(v7 + 8))(v5, v6);

    return MEMORY[0x1EEE6DFA0](sub_1D150FDAC, 0, 0);
  }

  else
  {
    sub_1D15A3238();
    v10 = sub_1D15A3248();
    v11 = sub_1D15A42F8();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v1[39];
    v14 = v1[35];
    v15 = v1[36];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1D1479780(0xD00000000000001ELL, 0x80000001D15B3240, &v24);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D1479780(0xD00000000000001ALL, 0x80000001D15C0BE0, &v24);
      _os_log_impl(&dword_1D1446000, v10, v11, "[%s][%s]: Unable to find an eligible open transaction. Falling back to committed transactions", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v17, -1, -1);
      MEMORY[0x1D388BF00](v16, -1, -1);
    }

    v18 = *(v15 + 8);
    v18(v13, v14);
    v1[48] = v18;
    v19 = v1[34];
    v20 = v19[3];
    v21 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v22 = swift_task_alloc();
    v1[49] = v22;
    *v22 = v1;
    v22[1] = sub_1D1510210;

    return MEMORY[0x1EEE0F4B8](v20, v21);
  }
}

uint64_t sub_1D150FDAC()
{
  v1 = v0[45];
  v2 = v0[34];
  v0[10] = v0;
  v0[15] = v0 + 32;
  v0[11] = sub_1D150FF9C;
  v3 = swift_continuation_init();

  sub_1D15123C0(v4);

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = objc_allocWithZone(MEMORY[0x1E696C410]);
  sub_1D1453BA0(0, &qword_1EE056778, 0x1E696C2E0);
  sub_1D1512508();
  v7 = sub_1D15A41D8();

  v0[28] = sub_1D1512A08;
  v0[29] = v5;
  v0[24] = MEMORY[0x1E69E9820];
  v0[25] = 1107296256;
  v0[26] = sub_1D1510EE0;
  v0[27] = &block_descriptor_10_0;
  v8 = _Block_copy(v0 + 24);
  v9 = [v6 initWithTransaction:v1 package:0 includedIdentifiers:0 includedObjectTypes:v7 resultsHandler:v8];

  _Block_release(v8);

  (*(v2 + 40))(v9);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1D150FF9C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 368) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1D151016C;
  }

  else
  {
    *(v2 + 376) = *(v2 + 256);
    v4 = sub_1D15100C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D15100C0()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D151016C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1510210(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 400) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D1510390, 0, 0);
  }
}

uint64_t sub_1D1510390()
{
  v22 = v0;
  v0[30] = v0[50];
  sub_1D1510CD0(0);
  sub_1D1510D38(&qword_1EC630DB8, sub_1D1510CD0, MEMORY[0x1E69E6340]);
  v1 = sub_1D15A4238();
  v0[51] = v1;

  if (v1)
  {
    sub_1D15A3238();
    v2 = sub_1D15A3248();
    v3 = sub_1D15A4318();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[48];
    v6 = v0[38];
    v7 = v0[35];
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_1D1479780(0xD00000000000001ELL, 0x80000001D15B3240, &v21);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1D1479780(0xD00000000000001ALL, 0x80000001D15C0BE0, &v21);
      _os_log_impl(&dword_1D1446000, v2, v3, "[%s][%s]: Fetching summaries using committed transaction", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v9, -1, -1);
      MEMORY[0x1D388BF00](v8, -1, -1);
    }

    v5(v6, v7);

    return MEMORY[0x1EEE6DFA0](sub_1D1510760, 0, 0);
  }

  else
  {
    sub_1D15A3238();
    v10 = sub_1D15A3248();
    v11 = sub_1D15A42F8();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[48];
    v14 = v0[37];
    v15 = v0[35];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1D1479780(0xD00000000000001ELL, 0x80000001D15B3240, &v21);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D1479780(0xD00000000000001ALL, 0x80000001D15C0BE0, &v21);
      _os_log_impl(&dword_1D1446000, v10, v11, "[%s][%s]: Could not find any transactions to fetch summaries", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v17, -1, -1);
      MEMORY[0x1D388BF00](v16, -1, -1);
    }

    v13(v14, v15);

    v18 = v0[1];
    v19 = MEMORY[0x1E69E7CC0];

    return v18(v19);
  }
}

uint64_t sub_1D1510760()
{
  v1 = v0[51];
  v2 = v0[34];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_1D1510950;
  v3 = swift_continuation_init();

  sub_1D15123C0(v4);

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = objc_allocWithZone(MEMORY[0x1E696C410]);
  sub_1D1453BA0(0, &qword_1EE056778, 0x1E696C2E0);
  sub_1D1512508();
  v7 = sub_1D15A41D8();

  v0[22] = sub_1D1512500;
  v0[23] = v5;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1D1510EE0;
  v0[21] = &block_descriptor_11;
  v8 = _Block_copy(v0 + 18);
  v9 = [v6 initWithTransaction:v1 package:0 includedIdentifiers:0 includedObjectTypes:v7 resultsHandler:v8];

  _Block_release(v8);

  (*(v2 + 40))(v9);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}