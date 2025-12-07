uint64_t sub_100179C48(_OWORD *a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  *(v2 + 152) = type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  *(v2 + 48) = *a1;
  v5 = *(v2 + 56);
  *(v2 + 160) = v4;
  *(v2 + 168) = v5;

  return _swift_task_switch(sub_100179CD4, 0, 0);
}

uint64_t sub_100179CD4()
{
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_100179DA0;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100179DA0()
{

  return _swift_task_switch(sub_100179E9C, 0, 0);
}

uint64_t sub_100179E9C()
{
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100179F14, v1, v0);
}

uint64_t sub_100179F14()
{

  v1 = sub_100222C04((v0 + 16));
  v3 = v2;
  v4 = type metadata accessor for WorkoutChartViewModel(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = *(v0 + 128);
    if (v5)
    {
      if (*(v5 + 16))
      {
        sub_100611A70();
      }
    }

    v6 = [objc_opt_self() mainBundle];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 localizedStringForKey:v7 value:0 table:0];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = (v3 + *(v4 + 24));
    *v12 = v9;
    v12[1] = v11;
  }

  (v1)(v0 + 16, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = *(v0 + 112);
  if (v13)
  {
    GeometryProxy.size.getter();
    v15 = v13 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth;
    *v15 = v14 + -2.0;
    *(v15 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = *(v0 + 120);
  if (v16 && (v17 = *(v16 + 16), , , v17))
  {
  }

  else
  {
    v18 = *(v0 + 136);
    v19 = *(v18 + 16);
    type metadata accessor for FunctionalThresholdPowerStore();
    swift_allocObject();
    v20 = v19;
    FunctionalThresholdPowerStore.init(with:)();
    *(v0 + 64) = *(v18 + 32);
    v21 = swift_allocObject();
    v23 = *(v18 + 16);
    v22 = *(v18 + 32);
    v21[1] = *v18;
    v21[2] = v23;
    v21[3] = v22;
    v24 = v20;
    sub_10001B104(v0 + 48, v0 + 80, &qword_1008DDBB0, &qword_1006D6FC8);
    sub_10001B104(v0 + 64, v0 + 96, &qword_1008DDBB8, &qword_1006D6FD0);
    dispatch thunk of FunctionalThresholdPowerStore.fetchMostRecentAppleFTP(completion:)();
  }

  v25 = *(v0 + 8);

  return v25();
}

double sub_10017A348@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = v1[2];
  v10 = *v1;
  v11 = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = *v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = *(v1 + 24);
  *(v5 + 56) = *(v1 + 5);
  sub_10001B104(&v10, v9, &qword_1008DDBB0, &qword_1006D6FC8);
  v6 = v3;
  sub_10001B104(&v11, v9, &qword_1008DDBB8, &qword_1006D6FD0);
  v7 = static Edge.Set.all.getter();
  *a1 = sub_10017A42C;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  result = 0.0;
  *(a1 + 24) = xmmword_1006D6F10;
  *(a1 + 40) = xmmword_1006D6F10;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_10017A434()
{
  v2 = *(type metadata accessor for GeometryProxy() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BACC;

  return sub_100179C48((v0 + 16), v0 + v3);
}

uint64_t sub_10017A504(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002BBC0;

  return sub_1004CD59C(a1, a2, v2);
}

void sub_10017A5B0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
}

uint64_t sub_10017A630(void **a1, uint64_t *a2, __n128 a3)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

void sub_10017A6A8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
}

uint64_t sub_10017A728(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10017A7AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10006965C(a1, a2, a3 & 1);

  return result;
}

id sub_10017A7E8(id result, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (result)
  {

    v7 = a2;
    v8 = a3;

    return a5;
  }

  return result;
}

double sub_10017A854(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10017A7AC(a1, a2, a3, a4);
  }

  return result;
}

void sub_10017A86C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

uint64_t sub_10017A8D8(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10017A8F0(result, a2, a3);
  }

  return result;
}

uint64_t sub_10017A8F0(uint64_t a1, uint64_t a2, char a3)
{
  sub_10004642C(a1, a2, a3 & 1);
}

uint64_t sub_10017A92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutChartViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017A990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10017A9F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10017AA58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DDBD0, &unk_1006D7090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10017AAC8()
{
  result = qword_1008DDC00;
  if (!qword_1008DDC00)
  {
    sub_100141EEC(&qword_1008DDC08, &qword_1006D7158);
    sub_10017AB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDC00);
  }

  return result;
}

unint64_t sub_10017AB54()
{
  result = qword_1008DDC10;
  if (!qword_1008DDC10)
  {
    sub_100141EEC(&qword_1008DDC18, &unk_1006D7160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDC10);
  }

  return result;
}

uint64_t sub_10017ABB8()
{
  v0 = type metadata accessor for Calendar.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  sub_100163368(v4, qword_100924FE8);
  sub_10001AC90(v4, qword_100924FE8);
  (*(v1 + 104))(v3, enum case for Calendar.Identifier.gregorian(_:), v0);
  Calendar.init(identifier:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10017ACD8()
{
  v0 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for Calendar();
  sub_100163368(v3, qword_100925000);
  sub_10001AC90(v3, qword_100925000);
  v4 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  Locale.init(identifier:)();
  v5 = type metadata accessor for Locale();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  return Calendar.locale.setter();
}

uint64_t sub_10017AE08()
{
  v0 = type metadata accessor for Calendar();
  sub_100163368(v0, qword_100925018);
  sub_10001AC90(v0, qword_100925018);
  return static Calendar.autoupdatingCurrent.getter();
}

uint64_t getEnumTagSinglePayload for ActivityDashboardMetricCategory(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityDashboardMetricCategory(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for TrainingLoadOnboardingNavigationView(uint64_t a1)
{
  result = qword_1008DDD18;
  if (!qword_1008DDD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017B03C(uint64_t a1)
{
  sub_10006D5E0(319, &qword_1008DDD28, &qword_1008DDD30, &qword_100700A50, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10006D5E0(319, &qword_1008DDD38, &qword_1008DDD40, qword_1006D71E0, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_10006DC4C();
      if (v3 <= 0x3F)
      {
        sub_10017B148(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10017B148(uint64_t a1)
{
  if (!qword_1008DDD50)
  {
    type metadata accessor for DismissAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1008DDD50);
    }
  }
}

unint64_t *sub_10017B1BC@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10017B1E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView(0);
  v26 = *(OnboardingNavigationView - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(OnboardingNavigationView - 8);
  v5 = sub_100140278(&qword_1008DDDA0, &qword_1006D7310);
  v6 = *(v5 - 8);
  v27 = v5;
  v28 = v6;
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  v9 = *(v1 + 40);
  v36 = *(v1 + 32);
  *&v37 = v9;
  sub_100140278(&qword_1008DDDA8, &qword_1006D7318);
  State.projectedValue.getter();
  v36 = v31;
  v37 = v32;
  v30 = v1;
  v25[3] = sub_100140278(&qword_1008DDD40, qword_1006D71E0);
  v25[2] = sub_100140278(&qword_1008DDDB0, &qword_1006D7320);
  v25[1] = sub_10014A6B0(&qword_1008DDDB8, &qword_1008DDD40, qword_1006D71E0, &protocol conformance descriptor for [A]);
  v25[0] = sub_10014A6B0(&qword_1008DDDC0, &qword_1008DDD40, qword_1006D71E0, &protocol conformance descriptor for [A]);
  sub_10014A6B0(&qword_1008DDDC8, &qword_1008DDD40, qword_1006D71E0, &protocol conformance descriptor for [A]);
  v10 = sub_100141EEC(&qword_1008DDDD0, &qword_1006D7328);
  v11 = sub_100141EEC(&qword_1008DDDD8, &qword_1006D7330);
  WorkoutsAddUpView = type metadata accessor for TrainingLoadWorkoutsAddUpView();
  v13 = sub_100141EEC(&qword_1008DDDE0, &qword_1006D7338);
  v14 = sub_10017CC00(&qword_1008DDDE8, &type metadata accessor for TrainingLoadWorkoutsAddUpView, &protocol conformance descriptor for TrainingLoadWorkoutsAddUpView);
  v15 = sub_10017C89C();
  v31 = &type metadata for TrainingLoadOnboardingFlowToolbarCancelButton;
  *&v32 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = WorkoutsAddUpView;
  *&v32 = v13;
  *(&v32 + 1) = v14;
  v33 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_10017C8F0();
  v19 = sub_10017C944();
  v31 = v10;
  *&v32 = &type metadata for TrainingLoadOnboardingNavigationView.Page;
  *(&v32 + 1) = v11;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(path:root:)();
  v20 = *(v2 + 56);
  LOBYTE(v31) = *(v2 + 48);
  *&v32 = v20;
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.wrappedValue.getter();
  LOBYTE(v31) = v36;
  sub_10017CC48(v2, v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = swift_allocObject();
  sub_10017CCAC(v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_10014A6B0(&qword_1008DDE38, &qword_1008DDDA0, &qword_1006D7310, &protocol conformance descriptor for NavigationStack<A, B>);
  v23 = v27;
  View.onChange<A>(of:initial:_:)();

  return (*(v28 + 8))(v8, v23);
}

uint64_t sub_10017B688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView(0);
  v4 = *(OnboardingNavigationView - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(OnboardingNavigationView - 8);
  WorkoutsAddUpView = type metadata accessor for TrainingLoadWorkoutsAddUpView();
  v24 = *(WorkoutsAddUpView - 8);
  __chkstk_darwin(WorkoutsAddUpView);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008DDDD0, &qword_1006D7328);
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v23 = a1;
  sub_10017CC48(a1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_10017CCAC(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  TrainingLoadWorkoutsAddUpView.init(onNext:)();
  v28 = a1;
  v15 = sub_100140278(&qword_1008DDDE0, &qword_1006D7338);
  v16 = sub_10017CC00(&qword_1008DDDE8, &type metadata accessor for TrainingLoadWorkoutsAddUpView, &protocol conformance descriptor for TrainingLoadWorkoutsAddUpView);
  v17 = sub_10017C89C();
  v29 = &type metadata for TrainingLoadOnboardingFlowToolbarCancelButton;
  v30 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  (*(v24 + 8))(v8, WorkoutsAddUpView);
  sub_10017CC48(v23, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  sub_10017CCAC(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v13);
  sub_100140278(&qword_1008DDDD8, &qword_1006D7330);
  v29 = WorkoutsAddUpView;
  v30 = v15;
  v31 = v16;
  v32 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10017C8F0();
  sub_10017C944();
  v20 = v25;
  View.navigationDestination<A, B>(for:destination:)();

  return (*(v26 + 8))(v12, v20);
}

uint64_t sub_10017BA5C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v55 = a3;
  v56 = sub_100140278(&qword_1008DDE28, &qword_1006D7348);
  __chkstk_darwin(v56);
  v44 = &v42 - v5;
  EffortExplanationView = type metadata accessor for TrainingLoadEffortExplanationView();
  v46 = *(EffortExplanationView - 8);
  __chkstk_darwin(EffortExplanationView);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100140278(&qword_1008DDE40, &qword_1006D7358);
  __chkstk_darwin(v53);
  v54 = &v42 - v7;
  v47 = sub_100140278(&qword_1008DDE48, &qword_1006D7360);
  __chkstk_darwin(v47);
  v49 = &v42 - v8;
  v52 = sub_100140278(&qword_1008DDE10, &qword_1006D7340);
  __chkstk_darwin(v52);
  v50 = &v42 - v9;
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView(0);
  v11 = *(OnboardingNavigationView - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(OnboardingNavigationView - 8);
  WorkoutsAddUpView = type metadata accessor for TrainingLoadWorkoutsAddUpView();
  v42 = *(WorkoutsAddUpView - 8);
  __chkstk_darwin(WorkoutsAddUpView);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100140278(&qword_1008DDDD0, &qword_1006D7328);
  v43 = *(v48 - 8);
  __chkstk_darwin(v48);
  v17 = &v42 - v16;
  v18 = *a1;
  sub_10017CC48(a2, &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  if (v18)
  {
    v20 = swift_allocObject();
    sub_10017CCAC(&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    if (v18 == 1)
    {
      v21 = v45;
      TrainingLoadEffortExplanationView.init(isStandalone:onNext:)();
      v22 = v46;
      v23 = EffortExplanationView;
      (*(v46 + 16))(v49, v21, EffortExplanationView);
      swift_storeEnumTagMultiPayload();
      v24 = sub_100141EEC(&qword_1008DDDE0, &qword_1006D7338);
      v25 = sub_10017CC00(&qword_1008DDDE8, &type metadata accessor for TrainingLoadWorkoutsAddUpView, &protocol conformance descriptor for TrainingLoadWorkoutsAddUpView);
      v26 = sub_10017C89C();
      v57 = &type metadata for TrainingLoadOnboardingFlowToolbarCancelButton;
      v58 = v26;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v57 = WorkoutsAddUpView;
      v58 = v24;
      v59 = v25;
      v60 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_10017CC00(&qword_1008DDE18, &type metadata accessor for TrainingLoadEffortExplanationView, &protocol conformance descriptor for TrainingLoadEffortExplanationView);
      v28 = v50;
      _ConditionalContent<>.init(storage:)();
      sub_10008430C(v28, v54);
      swift_storeEnumTagMultiPayload();
      sub_10017C9D0();
      sub_10017CB44();
      _ConditionalContent<>.init(storage:)();
      sub_10008437C(v28);
      return (*(v22 + 8))(v21, v23);
    }

    else
    {
      v39 = v44;
      TrainingLoadNewInsightsDailyView.init(onConfirm:)();
      sub_10017CC48(a2, &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      v40 = swift_allocObject();
      sub_10017CCAC(&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v19);
      v41 = (v39 + *(v56 + 36));
      *v41 = sub_10017D3E8;
      v41[1] = v40;
      v41[2] = 0;
      v41[3] = 0;
      sub_10017D400(v39, v54);
      swift_storeEnumTagMultiPayload();
      sub_10017C9D0();
      sub_10017CB44();
      _ConditionalContent<>.init(storage:)();
      return sub_10017D470(v39);
    }
  }

  else
  {
    v30 = swift_allocObject();
    sub_10017CCAC(&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v19);
    v31 = TrainingLoadWorkoutsAddUpView.init(onNext:)();
    __chkstk_darwin(v31);
    *(&v42 - 2) = a2;
    v32 = sub_100140278(&qword_1008DDDE0, &qword_1006D7338);
    v33 = sub_10017CC00(&qword_1008DDDE8, &type metadata accessor for TrainingLoadWorkoutsAddUpView, &protocol conformance descriptor for TrainingLoadWorkoutsAddUpView);
    v34 = sub_10017C89C();
    v57 = &type metadata for TrainingLoadOnboardingFlowToolbarCancelButton;
    v58 = v34;
    v35 = swift_getOpaqueTypeConformance2();
    View.toolbar<A>(content:)();
    (*(v42 + 8))(v15, WorkoutsAddUpView);
    v36 = v43;
    v37 = v48;
    (*(v43 + 16))(v49, v17, v48);
    swift_storeEnumTagMultiPayload();
    v57 = WorkoutsAddUpView;
    v58 = v32;
    v59 = v33;
    v60 = v35;
    swift_getOpaqueTypeConformance2();
    sub_10017CC00(&qword_1008DDE18, &type metadata accessor for TrainingLoadEffortExplanationView, &protocol conformance descriptor for TrainingLoadEffortExplanationView);
    v38 = v50;
    _ConditionalContent<>.init(storage:)();
    sub_10008430C(v38, v54);
    swift_storeEnumTagMultiPayload();
    sub_10017C9D0();
    sub_10017CB44();
    _ConditionalContent<>.init(storage:)();
    sub_10008437C(v38);
    return (*(v36 + 8))(v17, v37);
  }
}

double sub_10017C358(uint64_t a1)
{
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.projectedValue.getter();
  sub_10017C89C();
  static ToolbarContentBuilder.buildBlock<A>(_:)();

  return result;
}

uint64_t sub_10017C3F4(uint64_t a1, char a2)
{

  sub_100140278(&qword_1008DDDA8, &qword_1006D7318);
  State.wrappedValue.getter();
  v3 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001A1EDC(0, *(v7 + 16) + 1, 1, v7);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1001A1EDC((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v3[v5 + 32] = a2;
  State.wrappedValue.setter();
}

uint64_t sub_10017C504(uint64_t (**a1)(uint64_t))
{
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  result = State.wrappedValue.setter();
  if (*a1)
  {
    return (*a1)(result);
  }

  return result;
}

void sub_10017C5DC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for DismissAction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a2 == 1)
  {
    v9 = *(a3 + 72);
    v13[0] = *(a3 + 64);
    v14 = v9;
    sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
    HasSeenTrainingLoadOnboarding = State.wrappedValue.getter();
    if (v15 == 1)
    {
      if (qword_1008DAD80 != -1)
      {
        swift_once();
      }

      v11 = sub_100140278(&qword_1008DC638, &qword_1006D7350);
      sub_10001AC90(v11, qword_100925E20);
      v15 = 1;
      swift_beginAccess();
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
      if (qword_1008DA938 != -1)
      {
        swift_once();
      }

      sub_10033AAF4(1);
      HasSeenTrainingLoadOnboarding = FISetHasSeenTrainingLoadOnboarding();
    }

    v12 = *(a3 + 16);
    if (v12)
    {
      v12(HasSeenTrainingLoadOnboarding);
    }

    type metadata accessor for TrainingLoadOnboardingNavigationView(0);
    sub_100487CFC(v8);
    DismissAction.callAsFunction()();
    (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_10017C840()
{
  result = qword_1008DDD98;
  if (!qword_1008DDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDD98);
  }

  return result;
}

unint64_t sub_10017C89C()
{
  result = qword_1008DDDF0;
  if (!qword_1008DDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDDF0);
  }

  return result;
}

unint64_t sub_10017C8F0()
{
  result = qword_1008DDDF8;
  if (!qword_1008DDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDDF8);
  }

  return result;
}

unint64_t sub_10017C944()
{
  result = qword_1008DDE00;
  if (!qword_1008DDE00)
  {
    sub_100141EEC(&qword_1008DDDD8, &qword_1006D7330);
    sub_10017C9D0();
    sub_10017CB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDE00);
  }

  return result;
}

unint64_t sub_10017C9D0()
{
  result = qword_1008DDE08;
  if (!qword_1008DDE08)
  {
    sub_100141EEC(&qword_1008DDE10, &qword_1006D7340);
    type metadata accessor for TrainingLoadWorkoutsAddUpView();
    sub_100141EEC(&qword_1008DDDE0, &qword_1006D7338);
    sub_10017CC00(&qword_1008DDDE8, &type metadata accessor for TrainingLoadWorkoutsAddUpView, &protocol conformance descriptor for TrainingLoadWorkoutsAddUpView);
    sub_10017C89C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10017CC00(&qword_1008DDE18, &type metadata accessor for TrainingLoadEffortExplanationView, &protocol conformance descriptor for TrainingLoadEffortExplanationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDE08);
  }

  return result;
}

unint64_t sub_10017CB44()
{
  result = qword_1008DDE20;
  if (!qword_1008DDE20)
  {
    sub_100141EEC(&qword_1008DDE28, &qword_1006D7348);
    sub_10017CC00(&qword_1008DDE30, &type metadata accessor for TrainingLoadNewInsightsDailyView, &protocol conformance descriptor for TrainingLoadNewInsightsDailyView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDE20);
  }

  return result;
}

uint64_t sub_10017CC00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10017CC48(uint64_t a1, uint64_t a2)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView(0);
  (*(*(OnboardingNavigationView - 8) + 16))(a2, a1, OnboardingNavigationView);
  return a2;
}

uint64_t sub_10017CCAC(uint64_t a1, uint64_t a2)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView(0);
  (*(*(OnboardingNavigationView - 8) + 32))(a2, a1, OnboardingNavigationView);
  return a2;
}

void sub_10017CD10(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for TrainingLoadOnboardingNavigationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10017C5DC(a1, a2, v6);
}

uint64_t sub_10017CD90(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_100140278(&qword_1008DDE70, &qword_1006D7418);
  __chkstk_darwin(v6 - 8);
  v8 = v12 - v7;
  static ButtonRole.cancel.getter();
  v9 = type metadata accessor for ButtonRole();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;

  sub_100140278(&qword_1008DDE78, &unk_1006D7420);
  v12[0] = &type metadata for Text;
  v12[1] = &type metadata for Solarium;
  v12[2] = &type metadata for Image;
  v12[3] = &protocol witness table for Text;
  v12[4] = &protocol witness table for Solarium;
  v12[5] = &protocol witness table for Image;
  swift_getOpaqueTypeConformance2();
  return Button.init(role:action:label:)();
}

uint64_t sub_10017CFA8()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3 & 1;
  Solarium.init()();
  View.staticIf<A, B>(_:then:)();
  sub_10004642C(v0, v2, v4);
}

uint64_t sub_10017D0A8@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10017D0E0()
{
  v1 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008DDE50, &qword_1006FCDD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-v4];
  v6 = *v0;
  v7 = v0[1];
  v8 = *(v0 + 16);
  static ToolbarItemPlacement.cancellationAction.getter();
  v11 = v6;
  v12 = v7;
  v13 = v8;
  sub_100140278(&qword_1008DDE58, &qword_1006D7410);
  sub_10014A6B0(&qword_1008DDE60, &qword_1008DDE58, &qword_1006D7410, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  sub_10014A6B0(&qword_1008DDE68, &qword_1008DDE50, &qword_1006FCDD0, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10017D2DC@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for TrainingLoadOnboardingNavigationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10017BA5C(a1, v6, a2);
}

uint64_t sub_10017D374(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TrainingLoadOnboardingNavigationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10017D400(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DDE28, &qword_1006D7348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017D470(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DDE28, &qword_1006D7348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017D568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10017D5B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *sub_10017D63C()
{
  v1 = v0;
  v34[0] = *(v0 + *(type metadata accessor for CardConfigurationView(0) + 48));
  swift_getKeyPath();

  sub_100140278(&qword_1008DDE88, &qword_1006D7498);
  sub_10014A6B0(&qword_1008DDE90, &qword_1008DDE88, &qword_1006D7498, &protocol conformance descriptor for [A : B].Keys);
  v2 = Sequence.sorted<A>(key:)();

  v33 = v1;
  v3 = sub_100670F2C(sub_100181D6C, v32, v2);

  v4 = v3[2];
  if (v4)
  {
    v30 = v3;
    v5 = (v3 + 4);
    v31 = xmmword_1006D46C0;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      sub_100007C5C(v5, v34);
      v7 = v35;
      v8 = v36;
      sub_1000066AC(v34, v35);
      v9 = (*(v8 + 16))(v7, v8);
      v12 = _swiftEmptyArrayStorage;
      if (v11 - 2 >= 2)
      {
        if (v11)
        {
          sub_10001D4F8(v9, v10, 1);
          v12 = _swiftEmptyArrayStorage;
        }

        else
        {
          v12 = off_100848F10[v9];
        }
      }

      v13 = v12[2];

      if (v13)
      {
        v14 = v35;
        v15 = v36;
        sub_1000066AC(v34, v35);
        v16 = (*(v15 + 16))(v14, v15);
        v18 = v17;
        v20 = v19;
        v21 = sub_1000490C8(v16, v17, v19);
        v22 = sub_10001D4F8(v16, v18, v20);
        v23 = _swiftEmptyArrayStorage;
        if ((v21 - 1) <= 0x10u)
        {
          v23 = off_100849048[(v21 - 1)];
        }

        __chkstk_darwin(v22);
        v28[2] = v1;
        v29 = v21;
        v24 = sub_100670F2C(sub_100181EDC, v28, v23);
      }

      else
      {
        sub_100140278(&qword_1008DDE98, &unk_1006D74A0);
        v24 = swift_allocObject();
        *(v24 + 16) = v31;
        sub_100007C5C(v34, v24 + 32);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1001A1F40(0, v6[2] + 1, 1, v6);
      }

      v26 = v6[2];
      v25 = v6[3];
      if (v26 >= v25 >> 1)
      {
        v6 = sub_1001A1F40((v25 > 1), v26 + 1, 1, v6);
      }

      v6[2] = v26 + 1;
      v6[v26 + 4] = v24;
      sub_100005A40(v34);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v6;
}

uint64_t sub_10017D9B4()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v4 = Font.leading(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_100925040 = v4;
  return result;
}

uint64_t sub_10017DADC(uint64_t a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 20.0;
  *&xmmword_100925060 = 0x403E000000000000;
  if (result)
  {
    v2 = 15.0;
  }

  *(&xmmword_100925060 + 1) = v2;
  qword_100925070 = 0x403E000000000000;
  qword_100925078 = *&v2;
  return result;
}

uint64_t sub_10017DB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for CardConfigurationView(0);
  v42 = *(v3 - 8);
  v41 = *(v42 + 64);
  __chkstk_darwin(v3 - 8);
  v40 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolbarTitleDisplayMode();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008DDFA8, &qword_1006D7560);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = sub_100140278(&qword_1008DDFA0, &qword_1006D7558);
  v13 = *(v12 - 8);
  v34 = v12;
  v35 = v13;
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = sub_100140278(&qword_1008DDF90, &qword_1006D7548);
  v17 = *(v16 - 8);
  v38 = v16;
  v39 = v17;
  __chkstk_darwin(v16);
  v33 = &v32 - v18;
  v45 = a1;
  static Axis.Set.vertical.getter();
  sub_100140278(&qword_1008DDFD8, &unk_1006D7570);
  sub_10014A6B0(&qword_1008DDFE0, &qword_1008DDFD8, &unk_1006D7570, &protocol conformance descriptor for TupleView<A>);
  ScrollView.init(_:showsIndicators:content:)();
  v44 = a1;
  v19 = a1;
  v20 = sub_100140278(&qword_1008DDFB0, &qword_1006D7568);
  v21 = sub_10014A6B0(&qword_1008DDFB8, &qword_1008DDFA8, &qword_1006D7560, &protocol conformance descriptor for ScrollView<A>);
  v22 = sub_10014A6B0(&qword_1008DDFC0, &qword_1008DDFB0, &qword_1006D7568, &protocol conformance descriptor for TupleToolbarContent<A>);
  View.toolbar<A>(content:)();
  (*(v9 + 8))(v11, v8);
  static ToolbarTitleDisplayMode.inline.getter();
  v46 = v8;
  v47 = v20;
  v48 = v21;
  v49 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v33;
  v25 = v34;
  View.toolbarTitleDisplayMode(_:)();
  (*(v36 + 8))(v7, v37);
  v26 = v25;
  (*(v35 + 8))(v15, v25);
  v27 = v40;
  sub_100182B6C(v19, v40);
  v28 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v29 = swift_allocObject();
  sub_100182C50(v27, v29 + v28, type metadata accessor for CardConfigurationView);
  sub_100140278(&qword_1008DDF98, &qword_1006D7550);
  v46 = v26;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10018297C();
  sub_100182AA8();
  v30 = v38;
  View.navigationDestination<A, B>(for:destination:)();

  return (*(v39 + 8))(v24, v30);
}

uint64_t sub_10017E0D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a1;
  v60 = a2;
  v2 = sub_100140278(&qword_1008DE040, &qword_1006D75F8);
  __chkstk_darwin(v2 - 8);
  v59 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = (&v47 - v5);
  v52 = type metadata accessor for CardConfigurationView(0);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v53 = v6;
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AccessibilityTraits();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100140278(&qword_1008DE048, &qword_1006D7600);
  __chkstk_darwin(v49);
  v10 = &v47 - v9;
  v58 = sub_100140278(&qword_1008DE050, &qword_1006D7608);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v47 - v13;
  LocalizedStringKey.init(stringLiteral:)();
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  v18 = v17;
  if (qword_1008DA558 != -1)
  {
    swift_once();
  }

  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10004642C(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v27 = static Edge.Set.all.getter();
  v67 = v23 & 1;
  v66 = 0;
  *&v62 = v19;
  *(&v62 + 1) = v21;
  LOBYTE(v63) = v23 & 1;
  *(&v63 + 1) = v25;
  *&v64 = KeyPath;
  BYTE8(v64) = 1;
  v65[0] = v27;
  *&v65[8] = xmmword_1006D7430;
  *&v65[24] = xmmword_1006D7440;
  v65[40] = 0;
  static AccessibilityTraits.isHeader.getter();
  sub_100140278(&qword_1008DE058, &qword_1006D7640);
  sub_100182D84();
  View.accessibilityAddTraits(_:)();
  (*(v47 + 8))(v8, v48);
  v68[3] = *v65;
  *v69 = *&v65[16];
  *&v69[9] = *&v65[25];
  v68[0] = v62;
  v68[1] = v63;
  v68[2] = v64;
  sub_10000EA04(v68, &qword_1008DE058, &qword_1006D7640);
  v28 = v56;
  v29 = v54;
  sub_100182B6C(v56, v54);
  v30 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v31 = swift_allocObject();
  v50 = type metadata accessor for CardConfigurationView;
  sub_100182C50(v29, v31 + v30, type metadata accessor for CardConfigurationView);
  sub_100182E80(&qword_1008DE068, &qword_1008DE048, &qword_1006D7600, sub_100182D84);
  View.onScrollVisibilityChange(threshold:_:)();

  sub_10000EA04(v10, &qword_1008DE048, &qword_1006D7600);
  v32 = static Alignment.center.getter();
  v33 = v51;
  *v51 = v32;
  *(v33 + 8) = v34;
  *(v33 + 16) = 0;
  *(v33 + 24) = 1;
  *(v33 + 32) = 0;
  *(v33 + 40) = 0;
  v49 = *(sub_100140278(&qword_1008DE070, &unk_1006D7648) + 44);
  v35 = *(*(v28 + *(v52 + 52)) + 16);
  *&v62 = 0;
  *(&v62 + 1) = v35;
  swift_getKeyPath();
  sub_100182B6C(v28, v29);
  v36 = swift_allocObject();
  sub_100182C50(v29, v36 + v30, v50);
  sub_100140278(&qword_1008DE078, &qword_1006D7670);
  sub_100140278(&qword_1008DE080, &qword_1006D7678);
  sub_100182FB4();
  sub_10014A6B0(&qword_1008DE098, &qword_1008DE080, &qword_1006D7678, &protocol conformance descriptor for VStack<A>);
  ForEach<>.init(_:id:content:)();
  v37 = v57;
  v38 = *(v57 + 16);
  v39 = v55;
  v40 = v61;
  v41 = v58;
  v38(v55, v61, v58);
  v42 = v59;
  sub_10001B104(v33, v59, &qword_1008DE040, &qword_1006D75F8);
  v43 = v60;
  v38(v60, v39, v41);
  v44 = sub_100140278(&qword_1008DE0A0, &qword_1006D7680);
  sub_10001B104(v42, &v43[*(v44 + 48)], &qword_1008DE040, &qword_1006D75F8);
  sub_10000EA04(v33, &qword_1008DE040, &qword_1006D75F8);
  v45 = *(v37 + 8);
  v45(v40, v41);
  sub_10000EA04(v42, &qword_1008DE040, &qword_1006D75F8);
  return (v45)(v39, v41);
}

uint64_t sub_10017E938(char a1, uint64_t a2)
{
  type metadata accessor for CardConfigurationView(0);
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  return State.wrappedValue.setter();
}

uint64_t sub_10017E9AC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = type metadata accessor for CardConfigurationView(0);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(a2 + *(result + 52));
  if (v5 >= *(v7 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = *(v7 + 8 * v5 + 32);

  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v9 = sub_100140278(&qword_1008DE0A8, &qword_1006D7688);
  sub_10017EA60(v8, a2, v5, a3 + *(v9 + 44));
}

uint64_t sub_10017EA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v31 = a3;
  v32 = a4;
  v6 = sub_100140278(&qword_1008DE0B0, &unk_1006D7690);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v10 = sub_100140278(&qword_1008DE0B8, &qword_1006E6C60);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = sub_100140278(&qword_1008DE0C0, &qword_1006D76A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  *v21 = 0;
  v22 = 1;
  v21[8] = 1;
  sub_10017EDCC(a1, a2, (&v30 + *(v23 + 44) - v20));
  if (*(*(a2 + *(type metadata accessor for CardConfigurationView(0) + 52)) + 16) - 1 != v31)
  {
    Divider.init()();
    if (qword_1008DA560 != -1)
    {
      swift_once();
    }

    v30 = *&qword_100925070;
    v31 = xmmword_100925060;
    v24 = static Edge.Set.all.getter();
    v25 = &v9[*(v6 + 36)];
    *v25 = v24;
    v26 = v31;
    *(v25 + 24) = v30;
    *(v25 + 8) = v26;
    v25[40] = 0;
    sub_100015E80(v9, v15, &qword_1008DE0B0, &unk_1006D7690);
    v22 = 0;
  }

  (*(v7 + 56))(v15, v22, 1, v6);
  sub_10001B104(v21, v18, &qword_1008DE0C0, &qword_1006D76A0);
  sub_10001B104(v15, v12, &qword_1008DE0B8, &qword_1006E6C60);
  v27 = v32;
  sub_10001B104(v18, v32, &qword_1008DE0C0, &qword_1006D76A0);
  v28 = sub_100140278(&qword_1008DE0C8, &qword_1006D76A8);
  sub_10001B104(v12, v27 + *(v28 + 48), &qword_1008DE0B8, &qword_1006E6C60);
  sub_10000EA04(v15, &qword_1008DE0B8, &qword_1006E6C60);
  sub_10000EA04(v21, &qword_1008DE0C0, &qword_1006D76A0);
  sub_10000EA04(v12, &qword_1008DE0B8, &qword_1006E6C60);
  return sub_10000EA04(v18, &qword_1008DE0C0, &qword_1006D76A0);
}

uint64_t sub_10017EDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v138 = a2;
  v142 = a1;
  v145 = a3;
  v130 = sub_100140278(&qword_1008DE0D0, &qword_1006D76B0);
  __chkstk_darwin(v130);
  v125 = &v115 - v3;
  v121 = sub_100140278(&qword_1008DE0D8, &qword_1006D76B8);
  __chkstk_darwin(v121);
  v123 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v122 = &v115 - v6;
  __chkstk_darwin(v7);
  v124 = &v115 - v8;
  __chkstk_darwin(v9);
  v131 = &v115 - v10;
  v127 = sub_100140278(&qword_1008DE0E0, &qword_1006D76C0);
  __chkstk_darwin(v127);
  v129 = &v115 - v11;
  v128 = sub_100140278(&qword_1008DE0E8, &qword_1006D76C8);
  __chkstk_darwin(v128);
  v120 = &v115 - v12;
  v119 = sub_100140278(&qword_1008DE0F0, &qword_1006D76D0);
  __chkstk_darwin(v119);
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v115 - v16;
  v18 = sub_100140278(&qword_1008DE0F8, &qword_1006D76D8);
  __chkstk_darwin(v18);
  v20 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v115 - v22;
  v143 = type metadata accessor for DynamicTypeSize();
  v137 = *(v143 - 8);
  __chkstk_darwin(v143);
  v25 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100140278(&qword_1008DE100, &qword_1006D76E0);
  __chkstk_darwin(v26 - 8);
  v28 = &v115 - v27;
  v144 = sub_100140278(&qword_1008DE108, &qword_1006D76E8);
  __chkstk_darwin(v144);
  v30 = (&v115 - v29);
  v135 = sub_100140278(&qword_1008DE110, &qword_1006D76F0);
  __chkstk_darwin(v135);
  v126 = (&v115 - v31);
  v139 = sub_100140278(&qword_1008DE118, &qword_1006D76F8);
  __chkstk_darwin(v139);
  v141 = &v115 - v32;
  v132 = sub_100140278(&qword_1008DE120, &qword_1006D7700);
  __chkstk_darwin(v132);
  v134 = &v115 - v33;
  v140 = sub_100140278(&qword_1008DE128, &qword_1006D7708);
  __chkstk_darwin(v140);
  v136 = (&v115 - v34);
  v133 = sub_100140278(&qword_1008DE130, &unk_1006D7710);
  __chkstk_darwin(v133);
  v36 = (&v115 - v35);
  v37 = sub_100140278(&qword_1008DCC58, &unk_1006D5620);
  __chkstk_darwin(v37 - 8);
  v39 = &v115 - v38;
  v40 = *(v142 + 16);
  switch(v40)
  {
    case 3:
      v118 = v25;
      v132 = v18;
      v116 = v14;
      v117 = v17;
      v133 = v20;
      v134 = v28;
      v135 = v23;
      v136 = v30;
      v62 = v142;
      sub_100007C5C(v142 + 32, &v150);
      sub_100007C5C(&v150, &v151);
      if (qword_1008DAB08 != -1)
      {
        swift_once();
      }

      v63 = *&qword_100925958;
      v64 = v137;
      v65 = *(v137 + 56);
      v66 = v143;
      v65(v39, 1, 1, v143);
      v67 = sub_10001DB1C(&v150, v39, v63);
      sub_100007C5C(&v150, &v149);
      sub_10001E120(&v149, v39, v67);
      sub_10000EA04(&v149, &qword_1008DCC60, &qword_1006DEBC0);
      sub_10000EA04(v39, &qword_1008DCC58, &unk_1006D5620);
      sub_100005A40(&v150);
      sub_100007C5C(v62 + 72, &v149);
      sub_100007C5C(&v149, &v150);
      v115 = v65;
      v65(v39, 1, 1, v66);
      v68 = sub_10001DB1C(&v149, v39, v63);
      sub_100007C5C(&v149, &v148);
      sub_10001E120(&v148, v39, v68);
      sub_10000EA04(&v148, &qword_1008DCC60, &qword_1006DEBC0);
      sub_10000EA04(v39, &qword_1008DCC58, &unk_1006D5620);
      sub_100005A40(&v149);
      sub_100007C5C(&v151, &v149);
      KeyPath = swift_getKeyPath();
      v70 = v136;
      *v136 = KeyPath;
      sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
      swift_storeEnumTagMultiPayload();
      v71 = v144;
      sub_100007C5C(&v149, v70 + *(v144 + 36));
      *(v70 + *(v71 + 40)) = 1;
      v72 = (v70 + *(v71 + 44));
      *v72 = static Alignment.center.getter();
      v72[1] = v73;
      v126 = v72;
      v74 = v152;
      v75 = v153;
      sub_1000066AC(&v151, v152);
      v76 = (*(v75 + 16))(v74, v75);
      v78 = v77;
      v80 = v79;
      v81 = v62;
      v82 = v118;
      v83 = v138;
      sub_10005491C(v118);
      LODWORD(v72) = sub_10001DEC8(v82, v76, v78, v80);
      v84 = v76;
      v85 = v143;
      sub_10001D4F8(v84, v78, v80);
      (*(v64 + 8))(v82, v85);
      v86 = v81;
      v87 = v135;
      v88 = v131;
      if (v72 == 2)
      {
        sub_100181EFC(&v151, v83, 0, v135);
        *(v87 + *(v132 + 36)) = 0x3FF0000000000000;
        v89 = v117;
        sub_100181EFC(&v150, v83, 1, v117);
        *(v89 + *(sub_100140278(&qword_1008DE188, &qword_1006D7748) + 36)) = 0x3FE6666666666666;
        *(v89 + *(v119 + 36)) = xmmword_1006D7450;
        v90 = v133;
        sub_10001B104(v87, v133, &qword_1008DE0F8, &qword_1006D76D8);
        v91 = v116;
        sub_10001B104(v89, v116, &qword_1008DE0F0, &qword_1006D76D0);
        v92 = v120;
        sub_10001B104(v90, v120, &qword_1008DE0F8, &qword_1006D76D8);
        v93 = sub_100140278(&qword_1008DE190, &qword_1006D7750);
        sub_10001B104(v91, v92 + *(v93 + 48), &qword_1008DE0F0, &qword_1006D76D0);
        sub_10000EA04(v91, &qword_1008DE0F0, &qword_1006D76D0);
        sub_10000EA04(v90, &qword_1008DE0F8, &qword_1006D76D8);
        sub_10001B104(v92, v129, &qword_1008DE0E8, &qword_1006D76C8);
        swift_storeEnumTagMultiPayload();
        sub_10014A6B0(&qword_1008DE150, &qword_1008DE0E8, &qword_1006D76C8, &protocol conformance descriptor for TupleView<A>);
        sub_10014A6B0(&qword_1008DE158, &qword_1008DE0D0, &qword_1006D76B0, &protocol conformance descriptor for TupleView<A>);
        v94 = v134;
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v92, &qword_1008DE0E8, &qword_1006D76C8);
        sub_10000EA04(v89, &qword_1008DE0F0, &qword_1006D76D0);
        sub_10000EA04(v87, &qword_1008DE0F8, &qword_1006D76D8);
      }

      else
      {
        sub_100007C5C(v86 + 112, &v147);
        sub_100007C5C(&v147, &v148);
        v115(v39, 1, 1, v85);
        v100 = sub_10001DB1C(&v147, v39, v63);
        sub_100007C5C(&v147, v146);
        sub_10001E120(v146, v39, v100);
        sub_10000EA04(v146, &qword_1008DCC60, &qword_1006DEBC0);
        sub_10000EA04(v39, &qword_1008DCC58, &unk_1006D5620);
        sub_100005A40(&v147);
        sub_100181EFC(&v151, v83, 0, v87);
        *(v87 + *(v132 + 36)) = 0x3FF0000000000000;
        sub_100181EFC(&v150, v83, 1, v88);
        v101 = sub_100140278(&qword_1008DE140, &qword_1006D7730);
        v102 = v88 + *(v101 + 36);
        *v102 = v68 * -0.5;
        *(v102 + 8) = 0;
        v103 = v121;
        *(v88 + *(v121 + 36)) = 0x3FE3333333333333;
        v104 = v124;
        sub_100181EFC(&v148, v83, 1, v124);
        v105 = v104 + *(v101 + 36);
        *v105 = v100 * 0.5;
        *(v105 + 8) = 0;
        *(v104 + *(v103 + 36)) = 0x3FE3333333333333;
        v106 = v133;
        sub_10001B104(v87, v133, &qword_1008DE0F8, &qword_1006D76D8);
        v107 = v122;
        sub_10001B104(v88, v122, &qword_1008DE0D8, &qword_1006D76B8);
        v108 = v123;
        sub_10001B104(v104, v123, &qword_1008DE0D8, &qword_1006D76B8);
        v109 = v125;
        sub_10001B104(v106, v125, &qword_1008DE0F8, &qword_1006D76D8);
        v110 = sub_100140278(&qword_1008DE148, &qword_1006D7738);
        sub_10001B104(v107, v109 + *(v110 + 48), &qword_1008DE0D8, &qword_1006D76B8);
        sub_10001B104(v108, v109 + *(v110 + 64), &qword_1008DE0D8, &qword_1006D76B8);
        sub_10000EA04(v108, &qword_1008DE0D8, &qword_1006D76B8);
        sub_10000EA04(v107, &qword_1008DE0D8, &qword_1006D76B8);
        sub_10000EA04(v106, &qword_1008DE0F8, &qword_1006D76D8);
        sub_10001B104(v109, v129, &qword_1008DE0D0, &qword_1006D76B0);
        swift_storeEnumTagMultiPayload();
        sub_10014A6B0(&qword_1008DE150, &qword_1008DE0E8, &qword_1006D76C8, &protocol conformance descriptor for TupleView<A>);
        sub_10014A6B0(&qword_1008DE158, &qword_1008DE0D0, &qword_1006D76B0, &protocol conformance descriptor for TupleView<A>);
        v94 = v134;
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v109, &qword_1008DE0D0, &qword_1006D76B0);
        sub_10000EA04(v104, &qword_1008DE0D8, &qword_1006D76B8);
        sub_10000EA04(v131, &qword_1008DE0D8, &qword_1006D76B8);
        sub_10000EA04(v87, &qword_1008DE0F8, &qword_1006D76D8);
        sub_100005A40(&v148);
      }

      v111 = sub_100140278(&qword_1008DE160, &qword_1006D7740);
      sub_100015E80(v94, v126 + *(v111 + 44), &qword_1008DE100, &qword_1006D76E0);
      sub_100005A40(&v149);
      v112 = v136;
      sub_10001B104(v136, v141, &qword_1008DE108, &qword_1006D76E8);
      swift_storeEnumTagMultiPayload();
      sub_100183094();
      sub_10014A6B0(&qword_1008DE180, &qword_1008DE108, &qword_1006D76E8, &unk_1006F7798);
      v113 = v145;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v112, &qword_1008DE108, &qword_1006D76E8);
      v114 = sub_100140278(&qword_1008DE138, &unk_1006D7720);
      (*(*(v114 - 8) + 56))(v113, 0, 1, v114);
      goto LABEL_19;
    case 2:
      v47 = v142;
      sub_100007C5C(v142 + 32, &v150);
      sub_100007C5C(&v150, &v151);
      if (qword_1008DAB08 != -1)
      {
        swift_once();
      }

      v48 = *&qword_100925958;
      v49 = *(v137 + 56);
      v50 = v143;
      v49(v39, 1, 1, v143);
      v51 = sub_10001DB1C(&v150, v39, v48);
      sub_100007C5C(&v150, &v149);
      sub_10001E120(&v149, v39, v51);
      sub_10000EA04(&v149, &qword_1008DCC60, &qword_1006DEBC0);
      sub_10000EA04(v39, &qword_1008DCC58, &unk_1006D5620);
      sub_100005A40(&v150);
      sub_100007C5C(v47 + 72, &v149);
      sub_100007C5C(&v149, &v150);
      v49(v39, 1, 1, v50);
      v52 = sub_10001DB1C(&v149, v39, v48);
      sub_100007C5C(&v149, &v148);
      sub_10001E120(&v148, v39, v52);
      sub_10000EA04(&v148, &qword_1008DCC60, &qword_1006DEBC0);
      sub_10000EA04(v39, &qword_1008DCC58, &unk_1006D5620);
      sub_100005A40(&v149);
      sub_100007C5C(&v151, &v149);
      v53 = swift_getKeyPath();
      v54 = v126;
      *v126 = v53;
      sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
      swift_storeEnumTagMultiPayload();
      v55 = v135;
      sub_100007C5C(&v149, v54 + *(v135 + 9));
      *(v54 + *(v55 + 40)) = 1;
      v56 = (v54 + *(v55 + 44));
      *v56 = static Alignment.center.getter();
      v56[1] = v57;
      v58 = sub_100140278(&qword_1008DE198, &qword_1006D7758);
      sub_10018066C(&v151, v138, &v150, (v56 + *(v58 + 44)), v52);
      sub_100005A40(&v149);
      sub_10001B104(v54, v134, &qword_1008DE110, &qword_1006D76F0);
      swift_storeEnumTagMultiPayload();
      sub_10014A6B0(&qword_1008DE170, &qword_1008DE130, &unk_1006D7710, &unk_1006F7798);
      sub_10014A6B0(&qword_1008DE178, &qword_1008DE110, &qword_1006D76F0, &unk_1006F7798);
      v59 = v136;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v59, v141, &qword_1008DE128, &qword_1006D7708);
      swift_storeEnumTagMultiPayload();
      sub_100183094();
      sub_10014A6B0(&qword_1008DE180, &qword_1008DE108, &qword_1006D76E8, &unk_1006F7798);
      v60 = v145;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v59, &qword_1008DE128, &qword_1006D7708);
      sub_10000EA04(v54, &qword_1008DE110, &qword_1006D76F0);
      v61 = sub_100140278(&qword_1008DE138, &unk_1006D7720);
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
LABEL_19:
      sub_100005A40(&v150);
      return sub_100005A40(&v151);
    case 1:
      sub_100007C5C(v142 + 32, &v150);
      sub_100007C5C(&v150, &v151);
      if (qword_1008DAB08 != -1)
      {
        swift_once();
      }

      v41 = *&qword_100925958;
      (*(v137 + 56))(v39, 1, 1, v143);
      v42 = sub_10001DB1C(&v150, v39, v41);
      sub_100007C5C(&v150, &v149);
      sub_10001E120(&v149, v39, v42);
      sub_10000EA04(&v149, &qword_1008DCC60, &qword_1006DEBC0);
      sub_10000EA04(v39, &qword_1008DCC58, &unk_1006D5620);
      sub_100005A40(&v150);
      sub_100007C5C(&v151, &v150);
      *v36 = swift_getKeyPath();
      sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
      swift_storeEnumTagMultiPayload();
      v43 = v133;
      sub_100007C5C(&v150, v36 + *(v133 + 9));
      *(v36 + *(v43 + 40)) = 0;
      sub_100181EFC(&v151, v138, 0, v36 + *(v43 + 44));
      sub_100005A40(&v150);
      sub_10001B104(v36, v134, &qword_1008DE130, &unk_1006D7710);
      swift_storeEnumTagMultiPayload();
      sub_10014A6B0(&qword_1008DE170, &qword_1008DE130, &unk_1006D7710, &unk_1006F7798);
      sub_10014A6B0(&qword_1008DE178, &qword_1008DE110, &qword_1006D76F0, &unk_1006F7798);
      v44 = v136;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v44, v141, &qword_1008DE128, &qword_1006D7708);
      swift_storeEnumTagMultiPayload();
      sub_100183094();
      sub_10014A6B0(&qword_1008DE180, &qword_1008DE108, &qword_1006D76E8, &unk_1006F7798);
      v45 = v145;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v44, &qword_1008DE128, &qword_1006D7708);
      sub_10000EA04(v36, &qword_1008DE130, &unk_1006D7710);
      v46 = sub_100140278(&qword_1008DE138, &unk_1006D7720);
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      return sub_100005A40(&v151);
  }

  v95 = sub_100140278(&qword_1008DE138, &unk_1006D7720);
  v96 = *(*(v95 - 8) + 56);
  v97 = v95;
  v98 = v145;

  return v96(v98, 1, 1, v97);
}

uint64_t sub_10018066C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v70 = a3;
  v75 = a4;
  v74 = sub_100140278(&qword_1008DE1A0, &qword_1006D7760);
  __chkstk_darwin(v74);
  v69 = &v57 - v8;
  v63 = sub_100140278(&qword_1008DE0D8, &qword_1006D76B8);
  __chkstk_darwin(v63);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v68 = &v57 - v11;
  v60 = sub_100140278(&qword_1008DE1A8, &qword_1006D7768);
  __chkstk_darwin(v60);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = &v57 - v14;
  v71 = sub_100140278(&qword_1008DE1B0, &qword_1006D7770);
  __chkstk_darwin(v71);
  v73 = &v57 - v15;
  v72 = sub_100140278(&qword_1008DE0E8, &qword_1006D76C8);
  __chkstk_darwin(v72);
  v64 = &v57 - v16;
  v57 = sub_100140278(&qword_1008DE0F0, &qword_1006D76D0);
  __chkstk_darwin(v57);
  v59 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v62 = &v57 - v19;
  v20 = sub_100140278(&qword_1008DE0F8, &qword_1006D76D8);
  __chkstk_darwin(v20);
  v58 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v61 = &v57 - v23;
  v24 = type metadata accessor for DynamicTypeSize();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v28 = a1[4];
  v30 = a1;
  sub_1000066AC(a1, v29);
  v31 = (*(v28 + 16))(v29, v28);
  v33 = v32;
  v35 = v34;
  sub_10005491C(v27);
  LODWORD(a1) = sub_10001DEC8(v27, v31, v33, v35);
  sub_10001D4F8(v31, v33, v35);
  (*(v25 + 8))(v27, v24);
  if (a1 == 2)
  {
    v36 = v61;
    v37 = a2;
    sub_100181EFC(v30, a2, 0, v61);
    *(v36 + *(v20 + 36)) = 0x3FF0000000000000;
    v38 = v62;
    sub_100181EFC(v70, v37, 1, v62);
    *(v38 + *(sub_100140278(&qword_1008DE188, &qword_1006D7748) + 36)) = 0x3FE6666666666666;
    v39 = v58;
    *(v38 + *(v57 + 36)) = xmmword_1006D7450;
    sub_10001B104(v36, v39, &qword_1008DE0F8, &qword_1006D76D8);
    v40 = v59;
    sub_10001B104(v38, v59, &qword_1008DE0F0, &qword_1006D76D0);
    v41 = v64;
    sub_10001B104(v39, v64, &qword_1008DE0F8, &qword_1006D76D8);
    v42 = sub_100140278(&qword_1008DE190, &qword_1006D7750);
    sub_10001B104(v40, v41 + *(v42 + 48), &qword_1008DE0F0, &qword_1006D76D0);
    sub_10000EA04(v40, &qword_1008DE0F0, &qword_1006D76D0);
    sub_10000EA04(v39, &qword_1008DE0F8, &qword_1006D76D8);
    sub_10001B104(v41, v73, &qword_1008DE0E8, &qword_1006D76C8);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008DE150, &qword_1008DE0E8, &qword_1006D76C8, &protocol conformance descriptor for TupleView<A>);
    sub_10014A6B0(&qword_1008DE1C0, &qword_1008DE1A0, &qword_1006D7760, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v41, &qword_1008DE0E8, &qword_1006D76C8);
    sub_10000EA04(v38, &qword_1008DE0F0, &qword_1006D76D0);
    v43 = v36;
    v44 = &qword_1008DE0F8;
    v45 = &qword_1006D76D8;
  }

  else
  {
    v46 = v67;
    sub_100181EFC(v30, a2, 0, v67);
    v47 = a5 * -0.7 * 0.25;
    v48 = sub_100140278(&qword_1008DE140, &qword_1006D7730);
    v49 = v46 + *(v48 + 36);
    *v49 = v47;
    *(v49 + 8) = 0;
    *(v46 + *(v60 + 36)) = 0x3FF0000000000000;
    v50 = v68;
    sub_100181EFC(v70, a2, 1, v68);
    v51 = v50 + *(v48 + 36);
    *v51 = a5 * 0.5 + v47;
    *(v51 + 8) = 0;
    *(v50 + *(v63 + 36)) = 0x3FE3333333333333;
    v52 = v65;
    sub_10001B104(v46, v65, &qword_1008DE1A8, &qword_1006D7768);
    v53 = v66;
    sub_10001B104(v50, v66, &qword_1008DE0D8, &qword_1006D76B8);
    v54 = v69;
    sub_10001B104(v52, v69, &qword_1008DE1A8, &qword_1006D7768);
    v55 = sub_100140278(&qword_1008DE1B8, &qword_1006D7778);
    sub_10001B104(v53, v54 + *(v55 + 48), &qword_1008DE0D8, &qword_1006D76B8);
    sub_10000EA04(v53, &qword_1008DE0D8, &qword_1006D76B8);
    sub_10000EA04(v52, &qword_1008DE1A8, &qword_1006D7768);
    sub_10001B104(v54, v73, &qword_1008DE1A0, &qword_1006D7760);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008DE150, &qword_1008DE0E8, &qword_1006D76C8, &protocol conformance descriptor for TupleView<A>);
    sub_10014A6B0(&qword_1008DE1C0, &qword_1008DE1A0, &qword_1006D7760, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v54, &qword_1008DE1A0, &qword_1006D7760);
    sub_10000EA04(v50, &qword_1008DE0D8, &qword_1006D76B8);
    v43 = v46;
    v44 = &qword_1008DE1A8;
    v45 = &qword_1006D7768;
  }

  return sub_10000EA04(v43, v44, v45);
}

uint64_t sub_100180F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_100140278(&qword_1008DDFE8, &qword_1006D75B8);
  __chkstk_darwin(v19);
  v17 = &v17 - v3;
  v18 = sub_100140278(&qword_1008DDFF0, &qword_1006D75C0);
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100140278(&qword_1008DDFF8, &qword_1006D75C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  static ToolbarItemPlacement.confirmationAction.getter();
  v22 = a1;
  sub_100140278(&qword_1008DE000, &qword_1006D75D0);
  sub_10014A6B0(&qword_1008DE008, &qword_1008DE000, &qword_1006D75D0, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.principal.getter();
  v21 = a1;
  sub_100140278(&qword_1008DE010, &qword_1006D75D8);
  sub_100182E80(&qword_1008DE018, &qword_1008DE010, &qword_1006D75D8, sub_100046660);
  ToolbarItem<>.init(placement:content:)();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  TupleToolbarContent.init(_:)();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100181294(uint64_t a1)
{
  v2 = type metadata accessor for CardConfigurationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = LocalizedStringKey.init(stringLiteral:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_100182B6C(a1, &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_100182C50(&v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for CardConfigurationView);
  v16 = v5;
  v17 = v7;
  v18 = v9 & 1;
  v19 = v11;
  v20 = 0x6B72616D78;
  v21 = 0xE500000000000000;
  sub_100140278(&qword_1008DE030, &qword_1006D75F0);
  sub_10014A6B0(&qword_1008DE038, &qword_1008DE030, &qword_1006D75F0, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
}

uint64_t sub_100181480(uint64_t a1)
{
  v17 = type metadata accessor for EnvironmentValues();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008EE800, &qword_1006D7580);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CardConfigurationView(0);
  sub_10001B104(a1 + *(v12 + 20), v7, &qword_1008EE800, &qword_1006D7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100181708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v24 = type metadata accessor for AccessibilityTraits();
  v23[0] = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  static Font.Weight.semibold.getter();
  v10 = Text.fontWeight(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_10004642C(v5, v7, v9 & 1);

  v17 = (a1 + *(type metadata accessor for CardConfigurationView(0) + 24));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v25) = v18;
  v26 = v19;
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.wrappedValue.getter();
  v20 = 0.0;
  if (v30)
  {
    v20 = 1.0;
  }

  v25 = v10;
  v26 = v12;
  v21 = v14 & 1;
  v27 = v21;
  v28 = v16;
  v29 = v20;
  static AccessibilityTraits.isHeader.getter();
  sub_100140278(&qword_1008DE028, &unk_1006D75E0);
  sub_100046660();
  View.accessibilityAddTraits(_:)();
  (*(v23[0] + 8))(v4, v24);
  sub_10004642C(v10, v12, v21);
}

uint64_t sub_100181944@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardTypeConfigurationRoomView(0);
  v47 = *(v6 - 1);
  __chkstk_darwin(v6);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = type metadata accessor for CardConfigurationView(0);
  v11 = *(a2 + *(v10 + 48));
  if (*(v11 + 16) && (v12 = v10, v13 = sub_1004CD4B0(v9), (v14 & 1) != 0))
  {
    v39 = *(*(v11 + 56) + 8 * v13);
    v15 = v8 + v6[6];
    *(v15 + 4) = 0;
    *v15 = 0u;
    *(v15 + 1) = 0u;
    v16 = *(a2 + v12[8]);
    v17 = *(a2 + v12[7]);
    v18 = v12[11];
    v19 = (a2 + v12[10]);
    v20 = *v19;
    v42 = *(v19 + 8);
    v46 = *(a2 + v18);
    v45 = *(a2 + v18 + 8);
    v21 = (a2 + v12[14]);
    v22 = *v21;
    v23 = v21[1];
    v43 = v20;
    v44 = v22;
    v40 = v23;
    v41 = v17;
    *v8 = swift_getKeyPath();
    sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
    swift_storeEnumTagMultiPayload();
    v24 = v6[10];
    type metadata accessor for DashboardCardCellViewCache(0);
    swift_allocObject();

    v38 = v16;
    v25 = v41;

    *(v8 + v24) = sub_100037560();
    v26 = v6[15];
    v27 = enum case for DynamicTypeSize.accessibility1(_:);
    v28 = type metadata accessor for DynamicTypeSize();
    v29 = *(*(v28 - 8) + 104);
    v29(v8 + v26, v27, v28);
    v29(v8 + v6[16], enum case for DynamicTypeSize.xLarge(_:), v28);
    *(v8 + v6[5]) = v9;
    v30 = v38;
    *(v8 + v6[7]) = v39;
    *(v8 + v6[8]) = v30;
    *(v8 + v6[9]) = v25;
    v31 = v8 + v6[11];
    *v31 = v43;
    v31[8] = v42;
    v32 = v8 + v6[12];
    *v32 = v46;
    v32[8] = v45;
    v33 = (v8 + v6[13]);
    v34 = v40;
    *v33 = v44;
    v33[1] = v34;
    v35 = (v8 + v6[14]);
    *v35 = 0;
    v35[1] = 0;
    sub_100182C50(v8, a3, type metadata accessor for CardTypeConfigurationRoomView);
    return (*(v47 + 56))(a3, 0, 1, v6);
  }

  else
  {
    v37 = *(v47 + 56);

    return v37(a3, 1, 1, v6);
  }
}

double sub_100181C98@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for CardConfigurationView(0) + 48));
  if (*(v5 + 16) && (v6 = sub_1004CD4B0(*a1), (v7 & 1) != 0) && (v8 = *(*(v5 + 56) + 8 * v6), *(v8 + 16)))
  {
    sub_100007C5C(v8 + 32, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t type metadata accessor for CardConfigurationView(uint64_t a1)
{
  result = qword_1008DDEF8;
  if (!qword_1008DDEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100181D88(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a2 + *(type metadata accessor for CardConfigurationView(0) + 48));
  if (*(v8 + 16) && (v9 = sub_1004CD4B0(a3), (v10 & 1) != 0) && (v11 = *(*(v8 + 56) + 8 * v9), (v12 = *(v11 + 16)) != 0))
  {
    v23 = v4;
    v13 = v11 + 32;

    v14 = 0;
    while (v14 < *(v11 + 16))
    {
      sub_100007C5C(v13, &v20);
      v15 = v21;
      v16 = v22;
      sub_1000066AC(&v20, v21);
      v17 = (*(v16 + 16))(v15, v16);
      if (v19)
      {
        sub_10001D4F8(v17, v18, v19);
      }

      else if (v7 == v17)
      {

        sub_100006260(&v20, a4);
        return;
      }

      ++v14;
      sub_100005A40(&v20);
      v13 += 40;
      if (v12 == v14)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }
}

uint64_t sub_100181EFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v58 = a3;
  v59 = a4;
  v6 = type metadata accessor for DynamicTypeSize();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008DE1C8, &unk_1006D7780);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = (&v52 - v10);
  v12 = sub_100140278(&qword_1008DE1D0, &unk_1006E0E70);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v56 = &v52 - v14;
  v15 = sub_100140278(&qword_1008DE1D8, &unk_1006D7790);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v57 = &v52 - v17;
  v18 = type metadata accessor for DashboardCardView(0);
  v19 = v11 + v18[5];
  v52 = a1;
  sub_100007C5C(a1, v19);
  v20 = type metadata accessor for CardConfigurationView(0);
  v21 = *(*(*(a2 + *(v20 + 32)) + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  AppCoordinator.composer.getter();

  v22 = v11 + v18[7];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = *(a2 + *(v20 + 36));
  *v11 = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  swift_storeEnumTagMultiPayload();
  *(v11 + v18[8]) = v23;
  *(v11 + v18[9]) = 1;
  *(v11 + v18[10]) = 0;
  *(v11 + *(v9 + 44)) = 0;

  if (static Solarium.isEnabled.getter())
  {
    v24 = 16.0;
  }

  else
  {
    v24 = 20.0;
  }

  v25 = v56;
  v26 = &v56[*(v13 + 44)];
  v27 = *(type metadata accessor for RoundedRectangle() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = v24;
  v26[1] = v24;
  *(v26 + *(sub_100140278(&qword_1008DE1E0, &unk_1006DC6E0) + 36)) = 256;
  sub_100015E80(v11, v25, &qword_1008DE1C8, &unk_1006D7780);
  static Color.black.getter();
  v30 = Color.opacity(_:)();

  v31 = v57;
  sub_100015E80(v25, v57, &qword_1008DE1D0, &unk_1006E0E70);
  v32 = *(v16 + 44);
  v33 = v31;
  v34 = v31 + v32;
  *v34 = v30;
  *(v34 + 8) = xmmword_1006D7460;
  *(v34 + 24) = 0x4034000000000000;
  v35 = 1.0;
  if (v58)
  {
    v36 = v52[3];
    v37 = v52[4];
    sub_1000066AC(v52, v36);
    v38 = (*(v37 + 16))(v36, v37);
    v40 = v39;
    v42 = v41;
    v43 = v53;
    sub_10005491C(v53);
    v44 = sub_10001DEC8(v43, v38, v40, v42);
    sub_10001D4F8(v38, v40, v42);
    (*(v54 + 8))(v43, v55);
    if (v44 == 2)
    {
      v35 = 0.9;
    }

    else
    {
      v35 = 0.7;
    }
  }

  static UnitPoint.center.getter();
  v46 = v45;
  v48 = v47;
  v49 = v59;
  sub_100015E80(v33, v59, &qword_1008DE1D8, &unk_1006D7790);
  result = sub_100140278(&qword_1008DE1E8, &qword_1006D77A0);
  v51 = v49 + *(result + 36);
  *v51 = v35;
  *(v51 + 8) = v35;
  *(v51 + 16) = v46;
  *(v51 + 24) = v48;
  return result;
}

uint64_t sub_1001823E8()
{
  sub_100140278(&qword_1008DDF88, &qword_1006D7540);
  sub_100141EEC(&qword_1008DDF90, &qword_1006D7548);
  sub_100141EEC(&qword_1008DDF98, &qword_1006D7550);
  sub_100141EEC(&qword_1008DDFA0, &qword_1006D7558);
  sub_100141EEC(&qword_1008DDFA8, &qword_1006D7560);
  sub_100141EEC(&qword_1008DDFB0, &qword_1006D7568);
  sub_10014A6B0(&qword_1008DDFB8, &qword_1008DDFA8, &qword_1006D7560, &protocol conformance descriptor for ScrollView<A>);
  sub_10014A6B0(&qword_1008DDFC0, &qword_1008DDFB0, &qword_1006D7568, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10018297C();
  sub_100182AA8();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_1001825E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return Label<>.init(_:systemImage:)();
}

void sub_10018269C(uint64_t a1)
{
  sub_100182860(319, &qword_1008DC720, &type metadata accessor for DynamicTypeSize);
  if (v1 <= 0x3F)
  {
    sub_100182860(319, &qword_1008DDD50, &type metadata accessor for DismissAction);
    if (v2 <= 0x3F)
    {
      sub_1001828B4(319, &qword_1008DDD48, &type metadata for Bool, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SummaryConfigurationProvider(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SummaryCoordinator();
          if (v5 <= 0x3F)
          {
            type metadata accessor for DashboardCardCellViewCache(319);
            if (v6 <= 0x3F)
            {
              sub_1001828B4(319, &qword_1008DDF08, &type metadata for CGFloat, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_100182904(319);
                if (v8 <= 0x3F)
                {
                  sub_1001829D0(319);
                  if (v9 <= 0x3F)
                  {
                    sub_100182A34();
                    if (v10 <= 0x3F)
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
}

void sub_100182860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1001828B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100182904(uint64_t a1)
{
  if (!qword_1008DDF10)
  {
    sub_100141EEC(&qword_1008DDF18, qword_1006D74E8);
    sub_10018297C();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1008DDF10);
    }
  }
}

unint64_t sub_10018297C()
{
  result = qword_1008DDF20;
  if (!qword_1008DDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDF20);
  }

  return result;
}

void sub_1001829D0(uint64_t a1)
{
  if (!qword_1008DDF28)
  {
    sub_100141EEC(&qword_1008DDF18, qword_1006D74E8);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1008DDF28);
    }
  }
}

unint64_t sub_100182A34()
{
  result = qword_1008DDF30;
  if (!qword_1008DDF30)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1008DDF30);
  }

  return result;
}

unint64_t sub_100182AA8()
{
  result = qword_1008DDFC8;
  if (!qword_1008DDFC8)
  {
    sub_100141EEC(&qword_1008DDF98, &qword_1006D7550);
    sub_100182CC8(&qword_1008DDFD0, type metadata accessor for CardTypeConfigurationRoomView, &unk_1006E0AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDFC8);
  }

  return result;
}

uint64_t sub_100182B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardConfigurationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100182BD0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CardConfigurationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100181944(a1, v6, a2);
}

uint64_t sub_100182C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100182CC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100182D10()
{
  v1 = *(type metadata accessor for CardConfigurationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100181480(v2);
}

unint64_t sub_100182D84()
{
  result = qword_1008DE060;
  if (!qword_1008DE060)
  {
    sub_100141EEC(&qword_1008DE058, &qword_1006D7640);
    sub_10016DE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE060);
  }

  return result;
}

uint64_t sub_100182E10(char a1)
{
  v3 = *(type metadata accessor for CardConfigurationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10017E938(a1, v4);
}

uint64_t sub_100182E80(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    a4();
    sub_100182CC8(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100182F34@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CardConfigurationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10017E9AC(a1, v6, a2);
}

unint64_t sub_100182FB4()
{
  result = qword_1008DE088;
  if (!qword_1008DE088)
  {
    sub_100141EEC(&qword_1008DE078, &qword_1006D7670);
    sub_100183040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE088);
  }

  return result;
}

unint64_t sub_100183040()
{
  result = qword_1008DE090;
  if (!qword_1008DE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE090);
  }

  return result;
}

unint64_t sub_100183094()
{
  result = qword_1008DE168;
  if (!qword_1008DE168)
  {
    sub_100141EEC(&qword_1008DE128, &qword_1006D7708);
    sub_10014A6B0(&qword_1008DE170, &qword_1008DE130, &unk_1006D7710, &unk_1006F7798);
    sub_10014A6B0(&qword_1008DE178, &qword_1008DE110, &qword_1006D76F0, &unk_1006F7798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE168);
  }

  return result;
}

void sub_100183174(double a1, double a2)
{
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001833AC;
  *(v7 + 24) = v6;
  v11[4] = sub_1001833C8;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1002F1408;
  v11[3] = &unk_100849120;
  v8 = _Block_copy(v11);
  v9 = v2;

  v10 = [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    [v10 imageWithRenderingMode:{objc_msgSend(v9, "renderingMode")}];
  }
}

void sub_1001834A0()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D5300;
  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp33AddToYourRingSectionSeparatorView_div];
  v5 = [v4 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [v4 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v3 + 40) = v10;
  v11 = [v4 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v3 + 48) = v13;
  v14 = [v4 heightAnchor];
  if (qword_1008DAC90 != -1)
  {
    swift_once();
  }

  v15 = [v14 constraintEqualToConstant:*&qword_100925B90];

  *(v3 + 56) = v15;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_1001837BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddToYourRingSectionSeparatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for CardTypeFamily(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CardTypeFamily(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100183978()
{
  result = qword_1008DE238;
  if (!qword_1008DE238)
  {
    sub_100141EEC(&qword_1008DE240, &qword_1007046D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE238);
  }

  return result;
}

void *sub_1001839E4()
{
  result = sub_100183A04();
  off_1008DE230 = result;
  return result;
}

void *sub_100183A04()
{
  for (i = 0; i != 20; ++i)
  {
    v3 = *(&off_100841F80 + i + 32);
    if (v3 != 5 && v3 != 6 && v3 != 9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100185CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v2 = _swiftEmptyArrayStorage[2];
      v1 = _swiftEmptyArrayStorage[3];
      if (v2 >= v1 >> 1)
      {
        sub_100185CEC((v1 > 1), v2 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v2 + 1;
      *(&_swiftEmptyArrayStorage[4] + v2) = v3;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100183B30(char a1)
{
  v2 = a1;
  _StringGuts.grow(_:)(21);

  v11 = sub_1000492F0(a1);
  v12 = v3;
  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x8000000100749470;
  String.append(_:)(v4);
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();

  v7 = 0;
  if (v2 == 19)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

unint64_t sub_100183C84(char a1)
{
  result = 0x6B636F6C63;
  switch(a1)
  {
    case 1:
      result = 0x6E697270656F6873;
      break;
    case 2:
    case 12:
      result = 0x722E657275676966;
      break;
    case 3:
      return result;
    case 4:
      result = 0x622E6E6F73726570;
      break;
    case 5:
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
    case 19:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x322E6E6F73726570;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x722E657275676966;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x682E657275676966;
      break;
    case 17:
      result = 0x772E657275676966;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_100183EB0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100184598(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100183EF0()
{
  result = qword_1008DE248;
  if (!qword_1008DE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE248);
  }

  return result;
}

uint64_t sub_100183F44(char a1)
{
  if (qword_1008DA568 != -1)
  {
    goto LABEL_130;
  }

LABEL_2:
  v2 = off_1008DE230;
  v3 = *(off_1008DE230 + 2);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = 0;
  while (*(off_1008DE230 + v4 + 32) != 19)
  {
    if (v3 == ++v4)
    {
LABEL_6:

      v4 = v3;
      goto LABEL_13;
    }
  }

  v7 = (v4 + 1);
  if (!__OFADD__(v4, 1))
  {

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_9;
  }

  while (1)
  {
    __break(1u);
LABEL_161:
    result = sub_10057F5F4(v2);
    v2 = result;
LABEL_9:
    v3 = *(v2 + 2);
    if (v7 != v3)
    {
      v8 = (v2 + 32);
      v11 = &v2[v4 + 33];
      while (v7 < v3)
      {
        v13 = *v11;
        if (v13 != 19)
        {
          if (v7 != v4)
          {
            if (v4 >= v3)
            {
              __break(1u);
              goto LABEL_35;
            }

            v12 = *(v8 + v4);
            *(v8 + v4) = v13;
            *v11 = v12;
            v3 = *(v2 + 2);
          }

          ++v4;
        }

        v7 = (v7 + 1);
        ++v11;
        if (v7 == v3)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      swift_once();
      goto LABEL_2;
    }

    v3 = v7;
LABEL_11:
    if (v3 < v4)
    {
      goto LABEL_132;
    }

    if (v4 < 0)
    {
      goto LABEL_133;
    }

LABEL_13:
    v8 = v4 - v3;
    if (__OFADD__(v3, v4 - v3))
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v2;
    if (!isUniquelyReferenced_nonNull_native || v4 > *(v2 + 3) >> 1)
    {
      if (v3 <= v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = v3;
      }

      v2 = sub_1001A1F64(isUniquelyReferenced_nonNull_native, v10, 1, v2);
      v49 = v2;
    }

    v7 = &v49;
    sub_1005F0D80(v4, v3, 0);
    if ((a1 & 2) != 0)
    {
      break;
    }

    v6 = *(v2 + 2);
    if (!v6)
    {
LABEL_25:
      result = *(v2 + 2);
LABEL_48:
      v8 = result;
      if (!__OFADD__(v6, result - v6))
      {
        v49 = v2;
        if (result > *(v2 + 3) >> 1)
        {
          goto LABEL_138;
        }

        goto LABEL_50;
      }

      goto LABEL_137;
    }

    result = 0;
    v8 = (v2 + 32);
    v11 = v2 + 33;
    while (*(v11 - 1) != 4)
    {
      ++result;
      ++v11;
      if (v6 == result)
      {
        goto LABEL_25;
      }
    }

LABEL_35:
    v14 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
LABEL_38:
      ++result;
      goto LABEL_39;
    }

    while (v14 != v6)
    {
      if (v14 >= v6)
      {
        goto LABEL_127;
      }

      v15 = *v11;
      if (v15 != 4)
      {
        if (v14 != result)
        {
          if (result >= v6)
          {
            goto LABEL_134;
          }

          v16 = *(v8 + result);
          *(v8 + result) = v15;
          *v11 = v16;
          v6 = *(v2 + 2);
        }

        goto LABEL_38;
      }

LABEL_39:
      ++v14;
      ++v11;
    }

    if (v6 < result)
    {
LABEL_154:
      __break(1u);
    }

    else if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_48;
    }

    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
  }

  while (1)
  {
    if ((a1 & 0x40) != 0)
    {
      goto LABEL_68;
    }

    v17 = *(v2 + 2);
    if (v17)
    {
      result = 0;
      v18 = v2 + 32;
      v19 = v2 + 33;
      while (1)
      {
        v20 = *(v19 - 1);
        v21 = v20 > 0xC;
        v22 = (1 << v20) & 0x1804;
        if (!v21 && v22 != 0)
        {
          break;
        }

        ++result;
        ++v19;
        if (v17 == result)
        {
          goto LABEL_60;
        }
      }

      v24 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_164;
      }

      if (v24 != v17)
      {
        while (v24 < v17)
        {
          v36 = *v19;
          if (v36 > 0xC || ((1 << v36) & 0x1804) == 0)
          {
            if (v24 != result)
            {
              if (result >= v17)
              {
                __break(1u);
                goto LABEL_154;
              }

              v38 = v18[result];
              v18[result] = v36;
              *v19 = v38;
              v17 = *(v2 + 2);
            }

            ++result;
          }

          ++v24;
          ++v19;
          if (v24 == v17)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_126;
      }

LABEL_63:
      if (v17 < result)
      {
        goto LABEL_156;
      }

      if (result < 0)
      {
        goto LABEL_157;
      }
    }

    else
    {
LABEL_60:
      result = *(v2 + 2);
    }

    v25 = result;
    if (__OFADD__(v17, result - v17))
    {
      __break(1u);
LABEL_142:
      if (v17 > result)
      {
        v25 = v17;
      }

      v41 = result;
      v4 = v17;
      v42 = sub_1001A1F64(1, v25, 1, v2);
      v17 = v4;
      v2 = v42;
      result = v41;
      v49 = v2;
      goto LABEL_67;
    }

    v49 = v2;
    if (result > *(v2 + 3) >> 1)
    {
      goto LABEL_142;
    }

LABEL_67:
    v7 = &v49;
    sub_1005F0D80(result, v17, 0);
LABEL_68:
    if ((a1 & 0x81) == 0x80)
    {
      goto LABEL_90;
    }

    v6 = *(v2 + 2);
    if (v6)
    {
      result = 0;
      v8 = (v2 + 32);
      v26 = v2 + 33;
      while (*(v26 - 1) != 8)
      {
        ++result;
        ++v26;
        if (v6 == result)
        {
          goto LABEL_73;
        }
      }

      v27 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
LABEL_77:
        ++result;
        goto LABEL_78;
      }

      while (v27 != v6)
      {
        if (v27 >= v6)
        {
          goto LABEL_128;
        }

        v28 = *v26;
        if (v28 != 8)
        {
          if (v27 != result)
          {
            if (result >= v6)
            {
              goto LABEL_135;
            }

            v29 = *(v8 + result);
            *(v8 + result) = v28;
            *v26 = v29;
            v6 = *(v2 + 2);
          }

          goto LABEL_77;
        }

LABEL_78:
        ++v27;
        ++v26;
      }

      if (v6 < result)
      {
        goto LABEL_158;
      }

      if (result < 0)
      {
        goto LABEL_159;
      }
    }

    else
    {
LABEL_73:
      result = *(v2 + 2);
    }

    v30 = result;
    if (__OFADD__(v6, result - v6))
    {
      __break(1u);
LABEL_146:
      if (v6 > result)
      {
        v30 = v6;
      }

      v43 = result;
      v44 = v6;
      v45 = sub_1001A1F64(1, v30, 1, v2);
      v6 = v44;
      v2 = v45;
      result = v43;
      v49 = v2;
      goto LABEL_89;
    }

    v49 = v2;
    if (result > *(v2 + 3) >> 1)
    {
      goto LABEL_146;
    }

LABEL_89:
    sub_1005F0D80(result, v6, 0);
LABEL_90:
    if ((a1 & 0x89) == 0x80)
    {
      return v2;
    }

    v6 = *(v2 + 2);
    if (!v6)
    {
      break;
    }

    result = 0;
    v8 = (v2 + 32);
    v31 = v2 + 33;
    while (*(v31 - 1) != 7)
    {
      ++result;
      ++v31;
      if (v6 == result)
      {
        goto LABEL_95;
      }
    }

    v32 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
LABEL_99:
      ++result;
      goto LABEL_100;
    }

    while (1)
    {
      if (v32 == v6)
      {
        if (v6 < result)
        {
          __break(1u);
        }

        else if ((result & 0x8000000000000000) == 0)
        {
          goto LABEL_109;
        }

        __break(1u);
LABEL_164:
        __break(1u);
        return result;
      }

      if (v32 >= v6)
      {
        goto LABEL_129;
      }

      v33 = *v31;
      if (v33 != 7)
      {
        break;
      }

LABEL_100:
      ++v32;
      ++v31;
    }

    if (v32 == result)
    {
      goto LABEL_99;
    }

    if (result < v6)
    {
      v34 = *(v8 + result);
      *(v8 + result) = v33;
      *v31 = v34;
      v6 = *(v2 + 2);
      goto LABEL_99;
    }

LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    if (v6 > v8)
    {
      v8 = v6;
    }

    v39 = result;
    v4 = v6;
    v40 = sub_1001A1F64(1, v8, 1, v2);
    v6 = v4;
    v2 = v40;
    result = v39;
    v49 = v2;
LABEL_50:
    v7 = &v49;
    sub_1005F0D80(result, v6, 0);
  }

LABEL_95:
  result = *(v2 + 2);
LABEL_109:
  v35 = result;
  if (__OFADD__(v6, result - v6))
  {
    __break(1u);
  }

  else
  {
    v49 = v2;
    if (result <= *(v2 + 3) >> 1)
    {
      goto LABEL_111;
    }
  }

  if (v6 > result)
  {
    v35 = v6;
  }

  v46 = result;
  v47 = v6;
  v48 = sub_1001A1F64(1, v35, 1, v2);
  v6 = v47;
  v2 = v48;
  result = v46;
  v49 = v2;
LABEL_111:
  sub_1005F0D80(result, v6, 0);
  return v2;
}

unint64_t sub_100184598(unint64_t result)
{
  if (result >= 0x14)
  {
    return 20;
  }

  return result;
}

unint64_t sub_1001845AC()
{
  result = qword_1008DE250;
  if (!qword_1008DE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE250);
  }

  return result;
}

unint64_t sub_100184604()
{
  result = qword_1008DE258;
  if (!qword_1008DE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE258);
  }

  return result;
}

uint64_t sub_100184690()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925080);
  sub_10001AC90(v0, qword_100925080);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100184724@<X0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v17._countAndFlagsBits = a2;
  v17._object = a3;
  v18 = a4;
  v4 = sub_100140278(&qword_1008DE2B0, &qword_1006D7A50);
  __chkstk_darwin(v4 - 8);
  v5 = sub_100140278(&qword_1008DE2B8, &qword_1006D7A58);
  __chkstk_darwin(v5);
  v6 = sub_100140278(&qword_1008DE298, &qword_1006D7A48);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_100185480();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x206E65704FLL;
  v13._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  sub_100140278(&qword_1008DE2C0, &unk_1006D7A60);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v17);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10014A6B0(&qword_1008DE2A0, &qword_1008DE298, &qword_1006D7A48, &protocol conformance descriptor for IntentParameterSummary<A>);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v14)(v12, v6);
}

void sub_100184A38()
{
  IntentParameter.wrappedValue.getter();
  if (v1)
  {
    v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v0);

    URL.init(string:)();
  }

  else
  {
    URL.init(string:)();
  }
}

uint64_t sub_100184B14(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100184C0C, 0, 0);
}

uint64_t sub_100184C0C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_100184A38();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1001854D4(*(v0 + 48));
  }

  else
  {
    (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 48), *(v0 + 56));
    if (qword_1008DACC0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = type metadata accessor for NavigatorContext();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
    *(v0 + 16) = v8;
    *(v0 + 24) = v7;
    v9 = objc_msgSendSuper2((v0 + 16), "init");
    sub_1004DA120(v4, v9);

    (*(v5 + 8))(v4, v6);
  }

  static IntentResult.result<>()();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100184D90@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA570 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10001AC90(v2, qword_100925080);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100184E38(uint64_t a1, uint64_t a2)
{
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  v3 = *(HasValueComparisonOperator - 8);
  __chkstk_darwin(HasValueComparisonOperator);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v3 + 104))(v5, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_100140278(&qword_1008DE298, &qword_1006D7A48);
  sub_10014A6B0(&qword_1008DE2A0, &qword_1008DE298, &qword_1006D7A48, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_10014A6B0(&qword_1008DE2A8, &qword_1008DE280, &qword_1006D7A10, &protocol conformance descriptor for IntentParameter<A>);
  return ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
}

uint64_t sub_100184FF8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return sub_100184B14(a1, v4);
}

uint64_t sub_100185098@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10018510C();
  *a1 = result;
  return result;
}

uint64_t sub_1001850C0(uint64_t a1)
{
  v2 = sub_100185480();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10018510C()
{
  v18 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&qword_1008DD130, &unk_1006DB9F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_100140278(&qword_1008DD138, &qword_1006D5CC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100140278(&qword_1008DE280, &qword_1006D7A10);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 0, 1, v12);
  v19 = 0;
  v20 = 0;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v18);
  sub_10018542C();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t sub_10018542C()
{
  result = qword_1008DE288;
  if (!qword_1008DE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE288);
  }

  return result;
}

unint64_t sub_100185480()
{
  result = qword_1008DE290;
  if (!qword_1008DE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE290);
  }

  return result;
}

uint64_t sub_1001854D4(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10018553C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100185568(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1001855B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for HistoryItemsCard(uint64_t a1)
{
  result = qword_1008DE2F0;
  if (!qword_1008DE2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100185670(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

Swift::Int sub_100185748()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29[-1] - v7;
  Hasher.init()();
  v9 = v0 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_type;
  v10 = *(v0 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_type);
  v11 = *(v9 + 16);
  v33._countAndFlagsBits = v10;
  v33._object = *(v9 + 8);
  sub_100035B30(v33, *(v9 + 16));
  String.hash(into:)();

  if (!v11 || v11 == 2)
  {
    Hasher._combine(_:)(v10);
  }

  else if (v11 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_size));
  Hasher._combine(_:)(*(v1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_editMode));
  v12 = *(v1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_historyItems);
  v13 = *(v12 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v32 = _swiftEmptyArrayStorage;
    sub_1000679CC(0, v13, 0);
    v14 = v32;
    v15 = v12 + 32;
    v28 = v3 + 32;
    v16 = v5;
    do
    {
      sub_100007C5C(v15, v29);
      v17 = v30;
      v18 = v31;
      sub_1000066AC(v29, v30);
      (*(v18 + 48))(v17, v18);
      sub_100005A40(v29);
      v32 = v14;
      v20 = v14[2];
      v19 = v14[3];
      if (v20 >= v19 >> 1)
      {
        sub_1000679CC((v19 > 1), v20 + 1, 1);
        v14 = v32;
      }

      v14[2] = v20 + 1;
      (*(v3 + 32))(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v16, v2);
      v15 += 40;
      --v13;
    }

    while (v13);
  }

  Hasher._combine(_:)(v14[2]);
  v21 = v14[2];
  if (v21)
  {
    v24 = *(v3 + 16);
    v23 = v3 + 16;
    v22 = v24;
    v25 = v14 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v26 = *(v23 + 56);
    do
    {
      v22(v8, v25, v2);
      sub_10007183C(&qword_1008E4E10, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*(v23 - 8))(v8, v2);
      v25 += v26;
      --v21;
    }

    while (v21);
  }

  return Hasher.finalize()();
}

void *sub_100185AB0(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE5D8, &unk_1006D8FE0, type metadata accessor for ActivitySharingFriendListItem);
  *v3 = result;
  return result;
}

char *sub_100185AF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100186574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100185B14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100186678(a1, a2, a3, *v3, &qword_1008DC660, &unk_1006D8DD0, &type metadata for CardTemplate);
  *v3 = result;
  return result;
}

char *sub_100185B4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100186678(a1, a2, a3, *v3, &qword_1008DE540, &qword_1006D7CC0, &type metadata for CardType);
  *v3 = result;
  return result;
}

char *sub_100185B84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001867B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100185BA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100186E58(a1, a2, a3, *v3, &qword_1008DE420, &qword_1006D7B80, &qword_1008DE428, &qword_1006D7B88);
  *v3 = result;
  return result;
}

char *sub_100185BE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10018750C(a1, a2, a3, *v3, &qword_1008DE628, &qword_1006D9020);
  *v3 = result;
  return result;
}

char *sub_100185C14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001868F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100185C34(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE438, &qword_1006D7BA0, type metadata accessor for WorkoutChartDataElement);
  *v3 = result;
  return result;
}

void *sub_100185C78(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE430, &unk_1006D7B90, type metadata accessor for ActivitySharingHighlightViewModel);
  *v3 = result;
  return result;
}

char *sub_100185CBC(char *a1, int64_t a2, char a3)
{
  result = sub_100049BAC(a1, a2, a3, *v3, &qword_1008DE578, &unk_1006D8DE0);
  *v3 = result;
  return result;
}

char *sub_100185CEC(char *a1, int64_t a2, char a3)
{
  result = sub_100049BAC(a1, a2, a3, *v3, &qword_1008DE4D0, &qword_1006D7C40);
  *v3 = result;
  return result;
}

void *sub_100185D1C(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE5C8, &qword_1006D8E70, &type metadata accessor for EngagementBadge);
  *v3 = result;
  return result;
}

char *sub_100185D60(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100186A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100185D80(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE5C0, &unk_1006D7D40, &type metadata accessor for SleepingSampleDataType);
  *v3 = result;
  return result;
}

void *sub_100185DC4(void *a1, int64_t a2, char a3)
{
  result = sub_100080B08(a1, a2, a3, *v3, &qword_1008DE4F0, &unk_1006D7C60, &unk_1008E4E60, &qword_1006D8F30);
  *v3 = result;
  return result;
}

void *sub_100185E04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100186E58(a1, a2, a3, *v3, &qword_1008DE4A0, &qword_1006D7C08, &qword_1008DE4A8, &unk_1006D7C10);
  *v3 = result;
  return result;
}

char *sub_100185E44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100186B28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100185E64(void *a1, int64_t a2, char a3)
{
  result = sub_100080B08(a1, a2, a3, *v3, &qword_1008DE490, &qword_1006D7BF8, &qword_1008DE498, &qword_1006D7C00);
  *v3 = result;
  return result;
}

void *sub_100185EA4(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE650, &qword_1006D7DD0, &type metadata accessor for BaselineRelativeValue);
  *v3 = result;
  return result;
}

char *sub_100185EE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100186C2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100185F08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100186D30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100185F28(char *a1, int64_t a2, char a3)
{
  result = sub_100049BAC(a1, a2, a3, *v3, &qword_1008DE488, &qword_1006D7BF0);
  *v3 = result;
  return result;
}

void *sub_100185F58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100186E58(a1, a2, a3, *v3, &qword_1008DE440, &qword_1006D7BA8, &qword_1008DE448, &unk_1006D7BB0);
  *v3 = result;
  return result;
}

void *sub_100185F98(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE580, &qword_1006D7D00, &type metadata accessor for AttributedString);
  *v3 = result;
  return result;
}

void *sub_100185FDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100186E58(a1, a2, a3, *v3, &qword_1008DE4F8, &qword_1006D7C70, &qword_1008DE500, &qword_1006D7C78);
  *v3 = result;
  return result;
}

void *sub_10018601C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100186F8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10018603C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10018750C(a1, a2, a3, *v3, &qword_1008DE570, &unk_1006D7CF0);
  *v3 = result;
  return result;
}

char *sub_10018606C(char *a1, int64_t a2, char a3)
{
  result = sub_10001E638(a1, a2, a3, *v3, &qword_1008DE658, &qword_1006D7DD8);
  *v3 = result;
  return result;
}

char *sub_10018609C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001870C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001860BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001871C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001860DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001872B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001860FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001873D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10018611C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10018750C(a1, a2, a3, *v3, &qword_1008DE4E8, &qword_1006D7C58);
  *v3 = result;
  return result;
}

char *sub_10018614C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187604(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10018616C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10018772C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10018618C(void *a1, int64_t a2, char a3)
{
  result = sub_100058600(a1, a2, a3, *v3, &qword_1008DE520, &qword_1006D7C98, &qword_1008DE528, &unk_1006D7CA0);
  *v3 = result;
  return result;
}

void *sub_1001861CC(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DD8F0, &qword_1006D67A0, &type metadata accessor for CatalogLockupPlaceholder);
  *v3 = result;
  return result;
}

void *sub_100186210(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE530, &qword_1006D7CB0, &type metadata accessor for PersonalizationCandidate);
  *v3 = result;
  return result;
}

void *sub_100186254(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE550, &unk_1006D7CD0, &type metadata accessor for RoutePoint);
  *v3 = result;
  return result;
}

void *sub_100186298(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE548, &qword_1006D7CC8, &type metadata accessor for WorkoutDeviceType);
  *v3 = result;
  return result;
}

void *sub_1001862DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187830(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001862FC(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE620, &unk_1006D7DA0, type metadata accessor for WorkoutActivityEntity);
  *v3 = result;
  return result;
}

void *sub_100186340(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE510, &qword_1006D7C88, &type metadata accessor for Artwork);
  *v3 = result;
  return result;
}

char *sub_100186384(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001879A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001863A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001863C4(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE508, &qword_1006D7C80, type metadata accessor for FitnessPlusStackViewModel);
  *v3 = result;
  return result;
}

char *sub_100186408(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187BF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100186428(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100186448(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187E4C(a1, a2, a3, *v3, &qword_1008DE608, &unk_1006D9010, &type metadata for TrendEntity);
  *v3 = result;
  return result;
}

char *sub_100186480(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100187F58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001864A0(char *a1, int64_t a2, char a3)
{
  result = sub_100049BAC(a1, a2, a3, *v3, &qword_1008DE468, &qword_1006D7BD0);
  *v3 = result;
  return result;
}

void *sub_1001864D0(void *a1, int64_t a2, char a3)
{
  result = sub_100058600(a1, a2, a3, *v3, &qword_1008DE638, &unk_1006D9190, &qword_1008DE640, &qword_1006D7DC0);
  *v3 = result;
  return result;
}

char *sub_100186510(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100188080(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100186530(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE478, &unk_1006D7BE0, &type metadata accessor for InferenceRecord);
  *v3 = result;
  return result;
}

char *sub_100186574(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE480, &unk_1006D8E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100186678(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_100140278(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1001867B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008E7590, qword_1006D5360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001868F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE470, &qword_1006D7BD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100186A1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE5F8, &qword_1006D7D78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 223;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[256 * v8])
    {
      memmove(v13, v14, v8 << 8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100186B28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE630, &unk_1006D7DB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100186C2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE450, &qword_1006DE3B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100186D30(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE648, &qword_1006D7DC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100186E58(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100140278(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100140278(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100186F8C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100140278(&unk_1008F54F0, &qword_1006D7B50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100140278(&qword_1008DC8F8, &qword_1006D50B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001870C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE460, &qword_1006D7BC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1001871C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE3F0, &qword_1006D7B48);
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

char *sub_1001872B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE568, &qword_1006D7CE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001873D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE560, &qword_1006D7CE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10018750C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100140278(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_100187604(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE538, &qword_1006D7CB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10018772C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE458, &qword_1006D7BC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100187830(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100140278(&qword_1008DE4D8, &qword_1006D7C48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100140278(&qword_1008DE4E0, &qword_1006D7C50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001879A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE5E0, &qword_1006D7D60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187AD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE660, &unk_1006D7DE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187BF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE618, &unk_1006D9000);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187D1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE610, &unk_1006D7D90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187E4C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_100140278(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100187F58(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE600, &unk_1006D7D80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100188080(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE5F0, &qword_1006D7D70);
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

uint64_t sub_1001881A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for GeometryProxy();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  *a4 = static HorizontalAlignment.leading.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v11 = sub_100140278(&qword_1008DE668, &qword_1006D7E90);
  sub_100188350(a3, (a4 + *(v11 + 44)));
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v14 = (a4 + *(sub_100140278(&qword_1008DE670, &qword_1006D7EA8) + 36));
  type metadata accessor for _TaskModifier();

  result = static TaskPriority.userInitiated.getter();
  *v14 = &unk_1006D7EA0;
  v14[1] = v13;
  return result;
}

uint64_t sub_100188350@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v163 = a1;
  v144 = a2;
  v2 = sub_100140278(&qword_1008DE678, &unk_1006D7F48);
  __chkstk_darwin(v2 - 8);
  v161 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v155 = &v124 - v5;
  v131 = type metadata accessor for HeartRateConfiguration.ConfigurationType();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_100140278(&qword_1008DDBD0, &unk_1006D7090);
  v141 = *(v145 - 1);
  __chkstk_darwin(v145);
  v127 = &v124 - v7;
  v147 = type metadata accessor for WorkoutDetailChartView(0);
  v143 = *(v147 - 8);
  __chkstk_darwin(v147);
  v126 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v132 = &v124 - v10;
  v11 = sub_100140278(&qword_1008DD250, &qword_1006D63D0);
  __chkstk_darwin(v11 - 8);
  v142 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v140 = &v124 - v14;
  v146 = type metadata accessor for WorkoutChartViewModel(0);
  v156 = *(v146 - 8);
  __chkstk_darwin(v146);
  v128 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v133 = &v124 - v17;
  v18 = sub_100140278(&qword_1008DDBD8, &unk_1006D70A0);
  __chkstk_darwin(v18 - 8);
  v160 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v159 = &v124 - v21;
  v162 = type metadata accessor for Divider();
  v154 = *(v162 - 8);
  __chkstk_darwin(v162);
  v125 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v153 = &v124 - v24;
  __chkstk_darwin(v25);
  v158 = &v124 - v26;
  v27 = type metadata accessor for AttributedString();
  __chkstk_darwin(v27 - 8);
  v138 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = (sub_100140278(&qword_1008DE680, &qword_1006D7F58) - 8);
  __chkstk_darwin(v139);
  v152 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v157 = &v124 - v31;
  v137 = type metadata accessor for DynamicTypeSize();
  v32 = *(v137 - 8);
  __chkstk_darwin(v137);
  v34 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_100140278(&qword_1008DDBE0, &qword_1006D7F60);
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v149 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v124 - v37;
  v39 = [objc_opt_self() mainBundle];
  v40 = String._bridgeToObjectiveC()();
  v41 = [v39 localizedStringForKey:v40 value:0 table:0];

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v168 = v42;
  v169 = v44;
  sub_10000FCBC();
  v45 = Text.init<A>(_:)();
  v47 = v46;
  v168 = v45;
  v169 = v46;
  LOBYTE(v41) = v48 & 1;
  LOBYTE(v170) = v48 & 1;
  v171 = v49;
  v136 = enum case for DynamicTypeSize.large(_:);
  v135 = *(v32 + 104);
  v50 = v137;
  v135(v34);
  v148 = v38;
  View.dynamicTypeSize(_:)();
  v51 = *(v32 + 8);
  v134 = v32 + 8;
  v51(v34, v50);
  sub_10004642C(v45, v47, v41);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  AttributedString.init(_:)();
  v52 = Text.init(_:)();
  v54 = v53;
  v168 = v52;
  v169 = v53;
  LOBYTE(v32) = v55 & 1;
  LOBYTE(v170) = v55 & 1;
  v171 = v56;
  (v135)(v34, v136, v50);
  v57 = v157;
  View.dynamicTypeSize(_:)();
  v58 = v34;
  v59 = v156;
  v51(v58, v50);
  sub_10004642C(v52, v54, v32);
  v60 = v146;

  v61 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v63 = (v57 + *(v139 + 11));
  *v63 = KeyPath;
  v63[1] = v61;
  Divider.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v140;
  static Published.subscript.getter();

  v65 = *(v59 + 48);
  v156 = v59 + 48;
  if ((v65)(v64, 1, v60) == 1)
  {
    sub_10000EA04(v64, &qword_1008DD250, &qword_1006D63D0);
  }

  else
  {
    v66 = v64;
    v67 = v133;
    sub_10018A3D4(v66, v133, type metadata accessor for WorkoutChartViewModel);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v68 = v168;
    if (v168)
    {
      v139 = type metadata accessor for WorkoutChartViewModel;
      v69 = v132;
      sub_10017A990(v67, v132, type metadata accessor for WorkoutChartViewModel);
      *(v69 + *(v147 + 20)) = v68;
      v70 = v153;
      Divider.init()();
      v140 = v65;
      v71 = v126;
      sub_10017A990(v69, v126, type metadata accessor for WorkoutDetailChartView);
      v72 = v154;
      v73 = *(v154 + 16);
      v74 = v125;
      v75 = v162;
      v73(v125, v70, v162);
      v76 = v127;
      sub_10017A990(v71, v127, type metadata accessor for WorkoutDetailChartView);
      v77 = sub_100140278(&qword_1008DDBF8, &qword_1006D7150);
      v73((v76 + *(v77 + 48)), v74, v75);
      v78 = *(v72 + 8);
      v78(v70, v75);
      sub_10017A9F8(v69, type metadata accessor for WorkoutDetailChartView);
      sub_10017A9F8(v133, v139);
      v79 = v75;
      v60 = v146;
      v78(v74, v79);
      v80 = v71;
      v65 = v140;
      sub_10017A9F8(v80, type metadata accessor for WorkoutDetailChartView);
      v81 = v159;
      sub_10017AA58(v76, v159);
      v82 = 0;
      goto LABEL_7;
    }

    sub_10017A9F8(v67, type metadata accessor for WorkoutChartViewModel);
  }

  v82 = 1;
  v81 = v159;
LABEL_7:
  (v141[7])(v81, v82, 1, v145);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v84 = v168;
  if (!v168)
  {
    v141 = 0;
    v145 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v97 = 254;
    goto LABEL_17;
  }

  if (!v168[2] || !*(v168 + OBJC_IVAR____TtC10FitnessApp20WorkoutHeartRateInfo_elapsedTimeInZones) || (v85 = COERCE_DOUBLE(sub_10030E618()), (v86 & 1) != 0) || (v83.n128_f64[0] = v85, v85 <= 0.0))
  {
    v94 = v130;
    v95 = v129;
    v96 = v131;
    (*(v130 + 104))(v129, enum case for HeartRateConfiguration.ConfigurationType.automatic(_:), v131, v83);
    sub_10018A43C();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v94 + 8))(v95, v96);
    if (v168 == v164 && !v84[2])
    {
      v166 = 0;
      v164 = 0u;
      v165 = 0u;
      v167 = 1;
      sub_10018A494();
      _ConditionalContent<>.init(storage:)();

      goto LABEL_19;
    }

    v141 = 0;
    v145 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v97 = 255;
LABEL_17:
    LODWORD(v137) = v97;
    goto LABEL_20;
  }

  v87 = *(v163 + 64);

  sub_10019E400(v84, [v87 fitnessUIFormattingManager], &v174);
  v88 = *(&v174 + 1);
  v89 = v175;
  v90 = v176;
  v177 = *(&v175 + 1);
  v164 = v174;
  v165 = v175;
  v166 = v176;
  v167 = 0;

  v91 = v88;
  v92 = v89;
  sub_10001B104(&v177, &v168, &qword_1008DDBF0, &unk_1006D80C0);
  sub_10018A494();
  v93 = v90;
  _ConditionalContent<>.init(storage:)();

  sub_10000EA04(&v177, &qword_1008DDBF0, &unk_1006D80C0);

LABEL_19:
  v141 = v168;
  v145 = v169;
  v140 = v170;
  v139 = v171;
  v138 = v172;
  LODWORD(v137) = v173;
  sub_10018A2D0(v168, v169, v170, v171, v172, v173);
LABEL_20:
  swift_getKeyPath();
  swift_getKeyPath();
  v98 = v142;
  static Published.subscript.getter();

  if ((v65)(v98, 1, v60) == 1)
  {
    sub_10000EA04(v98, &qword_1008DD250, &qword_1006D63D0);
LABEL_25:
    v103 = 1;
    goto LABEL_26;
  }

  v99 = v128;
  sub_10018A3D4(v98, v128, type metadata accessor for WorkoutChartViewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v100 = v168;
  if (!v168)
  {
    sub_10017A9F8(v99, type metadata accessor for WorkoutChartViewModel);
    goto LABEL_25;
  }

  v101 = v99;
  v102 = v132;
  sub_10018A3D4(v101, v132, type metadata accessor for WorkoutChartViewModel);
  *(v102 + *(v147 + 20)) = v100;
  sub_10018A3D4(v102, v155, type metadata accessor for WorkoutDetailChartView);
  v103 = 0;
LABEL_26:
  v104 = v155;
  (*(v143 + 56))(v155, v103, 1, v147);
  v105 = *(v150 + 16);
  v106 = v149;
  v107 = v151;
  v105(v149, v148, v151);
  v108 = v152;
  sub_100084C1C(v157, v152);
  v163 = *(v154 + 16);
  v109 = v153;
  v110 = v162;
  (v163)(v153, v158, v162);
  sub_10001B104(v159, v160, &qword_1008DDBD8, &unk_1006D70A0);
  sub_10001B104(v104, v161, &qword_1008DE678, &unk_1006D7F48);
  LOBYTE(v168) = 1;
  v111 = v144;
  v105(v144, v106, v107);
  v112 = sub_100140278(&qword_1008DE688, &qword_1006D80B8);
  sub_100084C1C(v108, &v111[v112[12]]);
  (v163)(&v111[v112[16]], v109, v110);
  sub_10001B104(v160, &v111[v112[20]], &qword_1008DDBD8, &unk_1006D70A0);
  v113 = &v111[v112[24]];
  v114 = v141;
  v115 = v145;
  *v113 = v141;
  *(v113 + 1) = v115;
  v116 = v140;
  v117 = v139;
  *(v113 + 2) = v140;
  *(v113 + 3) = v117;
  v118 = v138;
  *(v113 + 4) = v138;
  LOBYTE(v108) = v137;
  v113[40] = v137;
  sub_10001B104(v161, &v111[v112[28]], &qword_1008DE678, &unk_1006D7F48);
  v119 = &v111[v112[32]];
  LOBYTE(v110) = v168;
  sub_10018A2A4(v114, v115, v116, v117, v118, v108, v120);
  sub_10018A33C(v114, v115, v116, v117, v118, v108);
  *v119 = 0;
  v119[8] = v110;
  sub_10000EA04(v155, &qword_1008DE678, &unk_1006D7F48);
  sub_10000EA04(v159, &qword_1008DDBD8, &unk_1006D70A0);
  v163 = *(v154 + 8);
  (v163)(v158, v162);
  sub_100084C8C(v157);
  v121 = *(v150 + 8);
  v122 = v151;
  v121(v148, v151);
  sub_10000EA04(v161, &qword_1008DE678, &unk_1006D7F48);
  sub_10018A33C(v114, v115, v116, v117, v118, v108);
  sub_10000EA04(v160, &qword_1008DDBD8, &unk_1006D70A0);
  (v163)(v153, v162);
  sub_100084C8C(v152);
  return (v121)(v149, v122);
}

uint64_t sub_100189810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[6] = type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();

  return _swift_task_switch(sub_10018988C, 0, 0);
}

uint64_t sub_10018988C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100189958;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100189958()
{

  return _swift_task_switch(sub_100189A54, 0, 0);
}

uint64_t sub_100189A54()
{
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100189ACC, v1, v0);
}

uint64_t sub_100189ACC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v0[2];
  if (v1)
  {
    GeometryProxy.size.getter();
    v3 = v1 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth;
    *v3 = v2 + -2.0;
    *(v3 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v0[3];
  if (v4)
  {
    GeometryProxy.size.getter();
    v6 = v4 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth;
    *v6 = v5 + -2.0;
    *(v6 + 8) = 0;
  }

  v7 = v0[1];

  return v7();
}

double sub_100189C2C@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  v6 = static Edge.Set.all.getter();
  *a1 = sub_100189CB8;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  result = 0.0;
  *(a1 + 24) = xmmword_1006D6F10;
  *(a1 + 40) = xmmword_1006D6F10;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_100189CC0()
{
  v2 = *(type metadata accessor for GeometryProxy() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002BACC;

  return sub_100189810(v4, v5, v0 + v3);
}

uint64_t sub_100189D9C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002BBC0;

  return sub_100163604(a1, a2, v2);
}

void sub_100189E98(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
}

uint64_t sub_100189F18(void **a1, uint64_t *a2, __n128 a3)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

double sub_100189FCC(uint64_t *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_10018A058(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_100140278(&qword_1008DD250, &qword_1006D63D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_10001B104(a1, &v14 - v11, &qword_1008DD250, &qword_1006D63D0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001B104(v12, v9, &qword_1008DD250, &qword_1006D63D0);

  static Published.subscript.setter();
  return sub_10000EA04(v12, &qword_1008DD250, &qword_1006D63D0);
}

void sub_10018A19C(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
}

uint64_t sub_10018A22C(uint64_t *a1, uint64_t *a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10018A2A4(void *a1, void *a2, void *a3, uint64_t a4, void *a5, char a6, __n128 a7)
{
  if (a6 != 254)
  {
    a7.n128_f64[0] = sub_10018A2B8(a7, a1, a2, a3, a4, a5, a6);
  }

  return a7.n128_f64[0];
}

double sub_10018A2B8(__n128 a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, char a7)
{
  if (a7 != -1)
  {
    sub_10018A2D0(a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

void sub_10018A2D0(id result, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if ((a6 & 1) == 0)
  {

    v9 = a2;
    v10 = a3;

    v11 = a5;
  }
}

void sub_10018A33C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6 != 254)
  {
    sub_10018A350(a1, a2, a3, a4, a5, a6);
  }
}

void sub_10018A350(uint64_t result, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6 != -1)
  {
    sub_10018A368(result, a2, a3, a4, a5, a6 & 1);
  }
}

void sub_10018A368(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }
}

uint64_t sub_10018A3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10018A43C()
{
  result = qword_1008DE690;
  if (!qword_1008DE690)
  {
    type metadata accessor for HeartRateConfiguration.ConfigurationType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE690);
  }

  return result;
}

unint64_t sub_10018A494()
{
  result = qword_1008DE698;
  if (!qword_1008DE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE698);
  }

  return result;
}

unint64_t sub_10018A4E8()
{
  result = qword_1008DE6A0;
  if (!qword_1008DE6A0)
  {
    sub_100141EEC(&qword_1008DE6A8, &qword_1006D80D0);
    sub_10018A574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE6A0);
  }

  return result;
}

unint64_t sub_10018A574()
{
  result = qword_1008DE6B0;
  if (!qword_1008DE6B0)
  {
    sub_100141EEC(&qword_1008DE6B8, &qword_1006D80D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE6B0);
  }

  return result;
}

unint64_t sub_10018A5D8()
{
  v1 = v0[43];
  if (v1 <= 3)
  {
    if (v0[43] > 1u)
    {
      if (v1 == 2)
      {
        return 0x65636E6174736944;
      }

      else
      {
        return 0x50676E696B6C6157;
      }
    }

    else if (v0[43])
    {
      return 1702260557;
    }

    else if (v0[41])
    {
      return 1819045714;
    }

    else
    {
      return 0x646E617453;
    }
  }

  else if (v0[43] <= 5u)
  {
    if (v1 == 4)
    {
      v3 = v0[42];
      v4 = 0xD000000000000017;
      if ((v3 & 1) == 0)
      {
        v4 = 0x69466F6964726143;
      }

      if (v3 == 2)
      {
        return 0x69466F6964726143;
      }

      else
      {
        return v4;
      }
    }

    else
    {
      return 0x6573696372657845;
    }
  }

  else if (v1 == 6)
  {
    if (v0[41])
    {
      return 0x756E694D6C6C6F52;
    }

    else
    {
      return 0x6E694D646E617453;
    }
  }

  else if (v1 == 7)
  {
    return 0x50676E696E6E7552;
  }

  else
  {
    return 0x4373746867696C46;
  }
}

id sub_10018A790(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *(a5 + 8);
  v11 = sub_10018BBCC(a1, a2, v10);
  v13 = v12;
  v83.n128_u64[0] = v11;
  v83.n128_u64[1] = v12;
  strcpy(v82, "%#@num_days@");
  BYTE5(v82[1]) = 0;
  HIWORD(v82[1]) = -5120;
  v14 = sub_10000FCBC();
  if (StringProtocol.contains<A>(_:)())
  {
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1006D46C0;
    *(v15 + 56) = &type metadata for Int;
    *(v15 + 64) = &protocol witness table for Int;
    *(v15 + 32) = v10;
    v11 = String.init(format:_:)();
    v17 = v16;

    v13 = v17;
  }

  v18 = sub_10018B8C4(v11, v13, *a4, *(a4 + 8));
  v20 = v19;

  v83.n128_u64[0] = v18;
  v83.n128_u64[1] = v20;
  strcpy(v82, "{{metric}}");
  BYTE3(v82[1]) = 0;
  HIDWORD(v82[1]) = -369098752;
  sub_10007C29C();
  v21 = String.lowercased()();

  v81 = v21;
  v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v82, &v81, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v14, v14, v14);
  v24 = v23;

  v25 = a3;
  if (a3 > 3u)
  {
    if (a3 <= 5u)
    {
      if (a3 == 4)
      {
        if ((*(a4 + 24) & 1) != 0 || (*(a4 + 40) & 1) != 0 || (v35 = *(a5 + 32), sub_100414F58(*(a4 + 32), *(a4 + 16)), !v36) || (sub_1004143BC(v36, v37, &v83, v35), , v84 == 6))
        {
          v38 = 0x8000000100749670;
          v39 = 0xD000000000000015;
        }

        else
        {
          v39 = sub_100414514();
          v38 = v79;
        }

        v82[0] = v22;
        v82[1] = v24;
        v81._countAndFlagsBits = 0xD00000000000001CLL;
        v81._object = 0x8000000100749690;
        v80[0] = v39;
        v80[1] = v38;
        v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v81, v80, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v14, v14, v14);
LABEL_41:
        v22 = v40;

        goto LABEL_42;
      }

      v74 = *a5;
      v83.n128_u64[0] = v22;
      v83.n128_u64[1] = v24;
      v82[0] = 0xD000000000000016;
      v82[1] = 0x8000000100749710;
      v22 = [objc_allocWithZone(NSNumber) initWithDouble:v74];
      result = [objc_opt_self() stringWithNumber:v22 decimalPrecision:1];
      if (!result)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    else
    {
      if (a3 == 6)
      {
        v41 = *a5;
        v83.n128_u64[0] = v22;
        v83.n128_u64[1] = v24;
        v82[0] = 0xD000000000000016;
        v82[1] = 0x8000000100749710;
        v42 = [objc_allocWithZone(NSNumber) initWithDouble:v41];
        v43 = objc_opt_self();
        result = [v43 stringWithNumber:v42 decimalPrecision:1];
        if (!result)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v44 = result;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v81._countAndFlagsBits = v45;
        v81._object = v47;
        v48 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v82, &v81, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v14, v14, v14);
        v50 = v49;

        v83.n128_u64[0] = v48;
        v83.n128_u64[1] = v50;
        v82[0] = 0xD000000000000014;
        v82[1] = 0x8000000100749770;
        v51 = [objc_allocWithZone(NSNumber) initWithDouble:v41];
        result = [v43 stringWithNumber:v51 decimalPrecision:1];
        if (!result)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v52 = result;
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v81._countAndFlagsBits = v53;
        v81._object = v55;
        v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v82, &v81, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v14, v14, v14);
        goto LABEL_38;
      }

      if (a3 == 7)
      {
LABEL_16:
        v34 = *(a5 + 24);
        if (fabs(v34) < 2.22044605e-16)
        {
          return v22;
        }

        v83.n128_u64[0] = v22;
        v83.n128_u64[1] = v24;
        v82[0] = 0xD00000000000001ALL;
        v82[1] = 0x80000001007496B0;
        v65 = [objc_allocWithZone(NSDateComponentsFormatter) init];
        [v65 setAllowedUnits:192];
        [v65 setUnitsStyle:3];
        result = [*(v6 + 48) unitManager];
        if (!result)
        {
          goto LABEL_48;
        }

        v66 = result;
        v67 = [result userDistanceUnitForDistanceType:1];

        v68 = v34 / 1.60934;
        if (v67 != 3)
        {
          v68 = v34;
        }

        v69 = [v65 stringFromTimeInterval:3600.0 / v68];
        if (v69)
        {
          v70 = v69;
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;
        }

        else
        {

          v73 = 0x80000001007496D0;
          v71 = 0xD000000000000019;
        }

        v81._countAndFlagsBits = v71;
        v81._object = v73;
        v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v82, &v81, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v14, v14, v14);
        goto LABEL_41;
      }

      v26 = *a5;
      v83.n128_u64[0] = v22;
      v83.n128_u64[1] = v24;
      v82[0] = 0xD000000000000016;
      v82[1] = 0x80000001007496F0;
      v22 = [objc_allocWithZone(NSNumber) initWithDouble:v26];
      result = [objc_opt_self() stringWithNumber:v22 decimalPrecision:1];
      if (!result)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

LABEL_37:
    v75 = result;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    v81._countAndFlagsBits = v76;
    v81._object = v78;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v82, &v81, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v14, v14, v14);
LABEL_38:

LABEL_42:

    return v22;
  }

LABEL_9:
  if (v25 > 1)
  {
    goto LABEL_13;
  }

  if (!v25)
  {
    v28 = *a5;
    v83.n128_u64[0] = v22;
    v83.n128_u64[1] = v24;
    v82[0] = 0xD000000000000014;
    v82[1] = 0x8000000100749770;
    v22 = [objc_allocWithZone(NSNumber) initWithDouble:v28];
    result = [objc_opt_self() stringWithNumber:v22 decimalPrecision:1];
    if (!result)
    {
      __break(1u);
LABEL_13:
      if (v25 == 2)
      {
        v29 = *a5;
        result = [*(v6 + 48) unitManager];
        if (result)
        {
          v30 = result;
          v31 = sub_10058264C(result, *(v6 + 43));

          v32 = [objc_opt_self() quantityWithUnit:v31 doubleValue:v29];
          v83.n128_u64[0] = v22;
          v83.n128_u64[1] = v24;
          v82[0] = 0xD000000000000017;
          v82[1] = 0x8000000100749790;
          v81._countAndFlagsBits = sub_10018B7C8(v32);
          v81._object = v33;
          v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v82, &v81, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v14, v14, v14);

          return v22;
        }

        __break(1u);
        goto LABEL_46;
      }

      goto LABEL_16;
    }

    goto LABEL_37;
  }

  v56 = *a5;
  v57 = *(v6 + 48);
  result = [v57 unitManager];
  if (!result)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v58 = result;
  v59 = sub_10058264C(result, *(v6 + 43));

  v60 = [objc_opt_self() quantityWithUnit:v59 doubleValue:v56];
  v83.n128_u64[0] = v22;
  v83.n128_u64[1] = v24;
  v82[0] = 0xD000000000000015;
  v82[1] = 0x80000001007497B0;
  result = [v57 localizedStringWithActiveEnergy:v60];
  if (result)
  {
    v61 = result;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v81._countAndFlagsBits = v62;
    v81._object = v64;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v82, &v81, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v14, v14, v14);

    return v22;
  }

LABEL_51:
  __break(1u);
  return result;
}

id sub_10018B144(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, double a5)
{
  v6 = v5;
  v41.n128_u64[0] = sub_10018B8C4(a1, a2, *a4, *(a4 + 8));
  v41.n128_u64[1] = v10;
  v39 = 0x63697274656D7B7BLL;
  v40 = 0xEA00000000007D7DLL;
  sub_10007C29C();
  v11 = String.lowercased()();

  v38 = v11;
  v12 = sub_10000FCBC();
  v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v39, &v38, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v12, v12, v12);
  v15 = v14;

  v16 = a3 >= 3u;
  if (a3 <= 3u)
  {
LABEL_7:
    if (!v16)
    {
      return v13;
    }

    goto LABEL_9;
  }

  if (a3 > 5u)
  {
    if (a3 == 6)
    {
      return v13;
    }

    if (a3 == 7)
    {
LABEL_9:
      if (fabs(a5) >= 2.22044605e-16)
      {
        v41.n128_u64[0] = v13;
        v41.n128_u64[1] = v15;
        v39 = 0xD00000000000001ALL;
        v40 = 0x80000001007496B0;
        v18 = [objc_allocWithZone(NSDateComponentsFormatter) init];
        [v18 setAllowedUnits:192];
        [v18 setUnitsStyle:3];
        result = [*(v6 + 48) unitManager];
        if (result)
        {
          v19 = result;
          v20 = [result userDistanceUnitForDistanceType:1];

          v21 = a5 / 1.60934;
          if (v20 != 3)
          {
            v21 = a5;
          }

          v22 = [v18 stringFromTimeInterval:3600.0 / v21];
          if (v22)
          {
            v23 = v22;
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v25;
          }

          else
          {

            v26 = 0x80000001007496D0;
            v24 = 0xD000000000000019;
          }

          v38._countAndFlagsBits = v24;
          v38._object = v26;
          v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v39, &v38, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v12, v12, v12);
          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_31;
      }

      return v13;
    }

    v41.n128_u64[0] = v13;
    v41.n128_u64[1] = v15;
    v39 = 0xD000000000000016;
    v40 = 0x80000001007496F0;
    v13 = [objc_allocWithZone(NSNumber) initWithDouble:a5];
    result = [objc_opt_self() stringWithNumber:v13 decimalPrecision:1];
    if (!result)
    {
      __break(1u);
      goto LABEL_7;
    }

LABEL_23:
    v32 = result;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v38._countAndFlagsBits = v33;
    v38._object = v35;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v39, &v38, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v12, v12, v12);

LABEL_27:

    return v13;
  }

  if (a3 == 4)
  {
    if ((*(a4 + 24) & 1) != 0 || (*(a4 + 40) & 1) != 0 || (sub_100414F58(*(a4 + 32), *(a4 + 16)), !v27) || (sub_1004143BC(v27, v28, &v41, a5), , v42 == 6))
    {
      v29 = 0x8000000100749670;
      v30 = 0xD000000000000015;
    }

    else
    {
      v30 = sub_100414514();
      v29 = v36;
    }

    v39 = v13;
    v40 = v15;
    v38._countAndFlagsBits = 0xD00000000000001CLL;
    v38._object = 0x8000000100749690;
    v37[0] = v30;
    v37[1] = v29;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v38, v37, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v12, v12, v12);
LABEL_26:
    v13 = v31;

    goto LABEL_27;
  }

  v41.n128_u64[0] = v13;
  v41.n128_u64[1] = v15;
  v39 = 0xD000000000000016;
  v40 = 0x8000000100749710;
  v13 = [objc_allocWithZone(NSNumber) initWithDouble:a5];
  result = [objc_opt_self() stringWithNumber:v13 decimalPrecision:1];
  if (result)
  {
    goto LABEL_23;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10018B5E4()
{
  result = [*(v0 + 48) unitManager];
  if (result)
  {
    v2 = result;
    v3 = [result userActiveEnergyBurnedUnit];

    v4 = objc_opt_self();
    v5 = [v4 jouleUnitWithMetricPrefix:9];
    v6 = [v3 isEqual:v5];

    if (v6)
    {

      return 19019;
    }

    else
    {
      v7 = [v4 kilocalorieUnit];
      v8 = [v3 isEqual:v7];

      if (v8)
      {
        return 1279345483;
      }

      else
      {
        return 4997443;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018B708()
{
  result = [*(v0 + 48) unitManager];
  if (result)
  {
    v2 = result;
    v3 = [result userDistanceWalkingRunningHKUnit];

    v4 = [objc_opt_self() meterUnitWithMetricPrefix:9];
    v5 = [v3 isEqual:v4];

    if (v5)
    {
      return 19787;
    }

    else
    {
      return 18765;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10018B7C8(void *a1)
{
  v3 = [objc_opt_self() meterUnit];
  [a1 doubleValueForUnit:v3];
  v5 = v4;

  v6 = *(v1 + 48);
  result = [v6 unitManager];
  if (result)
  {
    v8 = result;
    v9 = [result userDistanceUnitForDistanceType:1];

    result = [v6 localizedStringWithDistanceInMeters:v9 distanceUnit:2 unitStyle:2 decimalPrecision:v5];
    if (result)
    {
      v10 = result;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10018B8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  if (a4)
  {
    v22 = a1;
    v23 = a2;
    v21[0] = 0xD000000000000015;
    v21[1] = 0x8000000100749730;
    v11 = sub_10000FCBC();

    if (StringProtocol.contains<A>(_:)())
    {
      v18[1] = "{{vocative_username}}";
      static Locale.current.getter();
      v12 = type metadata accessor for Locale();
      (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1006D46C0;
      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_10000A788();
      *(v13 + 32) = a3;
      *(v13 + 40) = a4;
      v14 = String.init(format:locale:arguments:)();
      v16 = v15;

      sub_10018BB64(v10);
      v22 = a1;
      v23 = a2;
      v21[0] = 0xD000000000000015;
      v21[1] = 0x8000000100749730;
      v19 = v14;
      v20 = v16;
    }

    else
    {
      v22 = a1;
      v23 = a2;
      strcpy(v21, "{{username}}");
      BYTE5(v21[1]) = 0;
      HIWORD(v21[1]) = -5120;
      v19 = a3;
      v20 = a4;
    }

    a1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v21, &v19, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v11, v11, v11);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_10018BB64(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018BBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000FCBC();
  if (StringProtocol.contains<A>(_:)())
  {
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    result = swift_allocObject();
    *(result + 16) = xmmword_1006D46C0;
    v6 = ceil(a3 / 7.0);
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -9.22337204e18)
    {
      if (v6 < 9.22337204e18)
      {
        *(result + 56) = &type metadata for Int;
        *(result + 64) = &protocol witness table for Int;
        *(result + 32) = v6;
        return String.init(format:_:)();
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  return a1;
}

__n128 sub_10018BD18(uint64_t a1, uint64_t a2)
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

uint64_t sub_10018BD34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018BD7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10018BDD8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  *&v6[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_dataSource] = 0;
  v12 = OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_allMindfulnessSessionViewModels;
  *&v6[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_allMindfulnessSessionViewModels] = _swiftEmptyArrayStorage;
  *&v6[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_observers] = _swiftEmptyArrayStorage;
  sub_100191EA4(a1);
  *&v6[v12] = v13;

  *&v6[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_dataProvider] = a2;
  *&v6[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_fitnessAppContext] = a3;
  *&v6[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_fiuiFormattingManager] = a4;
  *&v6[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_healthStore] = a5;
  *&v6[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_mindfulnessSessionFormattingManager] = a6;
  v51.receiver = v6;
  v51.super_class = type metadata accessor for MindfulnessSessionListViewController();
  v14 = a2;
  v49 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = objc_msgSendSuper2(&v51, "initWithNibName:bundle:", 0, 0);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [v20 setTitle:v23];
  v24 = v20;
  v25 = [v24 tableView];
  if (!v25)
  {
    __break(1u);
    goto LABEL_11;
  }

  v26 = v25;
  v48 = v16;
  [v25 setSectionHeaderTopPadding:0.0];

  v27 = [v24 tableView];
  if (!v27)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v28 = v27;
  v29 = v14;
  [v27 setSeparatorStyle:0];

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = [v24 tableView];
  if (!v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v32 = v31;
  v33 = objc_allocWithZone(UITableViewDiffableDataSource);
  aBlock[4] = sub_100192CC4;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100410D80;
  aBlock[3] = &unk_100849690;
  v34 = _Block_copy(aBlock);

  v35 = [v33 initWithTableView:v32 cellProvider:v34];

  _Block_release(v34);

  v36 = *&v24[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_dataSource];
  *&v24[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_dataSource] = v35;

  v37 = [v24 tableView];
  if (!v37)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v38 = v37;
  sub_1000059F8(0, &unk_1008E4DF0, off_100832810);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = String._bridgeToObjectiveC()();
  [v38 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v40];

  v41 = [v24 tableView];
  if (!v41)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v42 = v41;
  sub_1000059F8(0, &unk_1008EAF80, off_100832808);
  v43 = swift_getObjCClassFromMetadata();
  v44 = String._bridgeToObjectiveC()();
  [v42 registerClass:v43 forCellReuseIdentifier:v44];

  v45 = [v24 tableView];
  if (v45)
  {

    type metadata accessor for MindfulnessSessionListTableViewCell();
    v46 = swift_getObjCClassFromMetadata();
    v47 = String._bridgeToObjectiveC()();
    [v45 registerClass:v46 forCellReuseIdentifier:v47];

    sub_10018CA9C();
    sub_10018C58C();

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_10018C3AC(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_observers];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v2 + 32;

    do
    {
      sub_10000B1B4(v5, v9);
      v6 = [v4 defaultCenter];
      sub_1000066AC(v9, v9[3]);
      [v6 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      sub_100005A40(v9);
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for MindfulnessSessionListViewController();
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_10018C58C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = objc_opt_self();
  v4 = [v3 mainQueue];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_1001922A8;
  v21 = v5;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100026F8C;
  v19 = &unk_100849500;
  v6 = _Block_copy(&v16);

  v7 = [v2 addObserverForName:UIApplicationSignificantTimeChangeNotification object:0 queue:v4 usingBlock:v6];
  _Block_release(v6);

  v8 = [v1 defaultCenter];
  v9 = kFIMindfulnessSessionDataProviderDidUpdateNotification;
  v10 = [v3 mainQueue];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_1001922B0;
  v21 = v11;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100026F8C;
  v19 = &unk_100849528;
  v12 = _Block_copy(&v16);

  v13 = [v8 addObserverForName:v9 object:0 queue:v10 usingBlock:v12];
  _Block_release(v12);

  sub_100140278(&qword_1008E7590, qword_1006D5360);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006D1F70;
  *(v14 + 56) = swift_getObjectType();
  *(v14 + 32) = v7;
  *(v14 + 88) = swift_getObjectType();
  *(v14 + 64) = v13;
  *(v0 + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_observers) = v14;
}

void sub_10018C864(uint64_t a1, uint64_t a2)
{
  v2 = static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "MindfulnessSessionListViewController did receive significantTimeChangeNotification notification", 95, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong tableView];

    if (v6)
    {
      [v6 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10018C93C(uint64_t a1, uint64_t a2)
{
  v2 = static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "MindfulnessSessionListViewController did receive FIMindfulnessSessionDataProviderDidUpdate notification", 103, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_dataProvider);
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    aBlock[4] = sub_1001922B8;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004476B0;
    aBlock[3] = &unk_100849578;
    v8 = _Block_copy(aBlock);
    v9 = v6;

    [v5 allMindfulnessSessionsWithCompletion:v8];
    _Block_release(v8);
  }
}

void sub_10018CA9C()
{
  swift_getObjectType();
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = v2;
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10000AFDC(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_10000AFDC(0xD000000000000012, 0x8000000100749A00, &v12);
    _os_log_impl(&_mh_execute_header, v3, v1, "%s::%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  sub_10018CC40();
  v9 = *(v0 + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_dataSource);
  if (v9)
  {
    v11 = v8;
    v10 = v9;
    [v10 applySnapshot:v11 animatingDifferences:1];

    v8 = v11;
  }
}

void sub_10018CC40()
{
  v1 = v0;
  v70[1] = swift_getObjectType();
  v82 = type metadata accessor for Date();
  v2 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Calendar();
  v4 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DateComponents();
  v6 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for UUID();
  v8 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = [objc_allocWithZone(NSDiffableDataSourceSnapshot) init];
  v87 = v1;
  v10 = *(v1 + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_allMindfulnessSessionViewModels);
  v11 = *(v10 + 16);
  v89 = v10;

  v86 = v11;
  if (!v11)
  {
LABEL_28:

    v60 = static os_log_type_t.default.getter();
    v61 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v60))
    {
      v62 = v61;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v63 = 136315650;
      v65 = _typeName(_:qualified:)();
      v67 = sub_10000AFDC(v65, v66, &v99);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2080;
      *(v63 + 14) = sub_10000AFDC(0x70616E53656B616DLL, 0xEE002928746F6873, &v99);
      *(v63 + 22) = 2112;
      v68 = v88;
      *(v63 + 24) = v88;
      *v64 = v68;
      v69 = v68;
      _os_log_impl(&_mh_execute_header, v62, v60, "%s::%s snapshot %@", v63, 0x20u);
      sub_10000EA04(v64, &unk_1008DB8B0, &unk_1006DBD30);

      swift_arrayDestroy();
    }

    return;
  }

  v12 = 0;
  v85 = v89 + 32;
  v84 = 0x80000001007499C0;
  v95 = (v8 + 8);
  v76 = enum case for Calendar.Component.month(_:);
  v75 = enum case for Calendar.Component.year(_:);
  v74 = (v2 + 8);
  v73 = (v4 + 8);
  v72 = (v6 + 8);
  v83 = 0x80000001007499E0;
  v94 = xmmword_1006D46C0;
  v71 = xmmword_1006D1F70;
  while (v12 < *(v89 + 16))
  {
    v26 = *(v85 + 8 * v12);

    v27 = sub_10018E850(v12);
    sub_100140278(&qword_1008DCF58, &qword_1006D7B40);
    inited = swift_initStackObject();
    *(inited + 1) = v94;
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v99 = 0xD000000000000012;
    v100 = v84;
    v92 = v12;
    v98 = v12;
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 45;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v93 = v27;
    v98 = sub_1001E6090();
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32 = v100;
    inited[4] = v99;
    inited[5] = v32;
    v33 = v26 >> 62;
    if (v26 >> 62)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
      if (!v34)
      {
LABEL_18:
        v36 = _swiftEmptyArrayStorage;
        goto LABEL_19;
      }
    }

    else
    {
      v34 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v34)
      {
        goto LABEL_18;
      }
    }

    v99 = _swiftEmptyArrayStorage;
    sub_100073020(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      goto LABEL_32;
    }

    v90 = v26 >> 62;
    v91 = inited;
    v35 = 0;
    v36 = v99;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(v26 + 8 * v35 + 32);
      }

      v38 = v37;
      v39 = v96;
      MindfulnessSessionViewModel.uuid.getter();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      (*v95)(v39, v97);

      v99 = v36;
      v44 = v36[2];
      v43 = v36[3];
      if (v44 >= v43 >> 1)
      {
        sub_100073020((v43 > 1), v44 + 1, 1);
        v36 = v99;
      }

      ++v35;
      v36[2] = v44 + 1;
      v45 = &v36[2 * v44];
      v45[4] = v40;
      v45[5] = v42;
    }

    while (v34 != v35);
    v33 = v90;
    inited = v91;
LABEL_19:
    v99 = inited;
    sub_10019EE1C(v36);
    v46 = v99;
    if (v33)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_3:

        v13 = 0;
        v14 = 0xE000000000000000;
        goto LABEL_4;
      }
    }

    else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v47 = *(v26 + 32);
    }

    v48 = v47;

    v49 = v79;
    static Calendar.current.getter();
    sub_100140278(&unk_1008E51B0, &unk_1006D8360);
    v50 = type metadata accessor for Calendar.Component();
    v51 = *(v50 - 8);
    v52 = *(v51 + 72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v71;
    v55 = v54 + v53;
    v56 = *(v51 + 104);
    v56(v55, v76, v50);
    v56(v55 + v52, v75, v50);
    sub_10001C970(v54);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v57 = v81;
    MindfulnessSessionViewModel.endDate.getter();
    v58 = v77;
    Calendar.dateComponents(_:from:)();

    (*v74)(v57, v82);
    (*v73)(v49, v80);

    v13 = DateComponents.description.getter();
    v14 = v59;
    (*v72)(v58, v78);
LABEL_4:
    v15 = v92;
    v16 = v92 + 1;
    sub_100140278(&qword_1008E7590, qword_1006D5360);
    v17 = swift_allocObject();
    *(v17 + 16) = v94;
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v99 = 0xD000000000000012;
    v100 = v83;
    v98 = v15;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 45;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = v13;
    v20._object = v14;
    String.append(_:)(v20);

    v21 = v99;
    v22 = v100;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 32) = v21;
    *(v17 + 40) = v22;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v24 = v88;
    [v88 appendSectionsWithIdentifiers:isa];

    sub_10019F3D0(v46);

    v25 = Array._bridgeToObjectiveC()().super.isa;

    [v24 appendItemsWithIdentifiers:v25];

    v12 = v16;
    if (v16 == v86)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

id sub_10018D71C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  if (IndexPath.row.getter())
  {
    v8 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v10 = [a1 dequeueReusableCellWithIdentifier:v8 forIndexPath:isa];

    v11 = sub_10018EB90(a2);
    if (v11)
    {
      v12 = v11;
      type metadata accessor for MindfulnessSessionListTableViewCell();
      if (swift_dynamicCastClass())
      {
        v13 = *&v7[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_fitnessAppContext];
        v14 = *&v7[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_mindfulnessSessionFormattingManager];
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10 = v10;
        v16 = v13;
        v17 = v14;

        sub_1004D643C(v12, v16, v17, sub_100192CCC, v15);
      }

      else
      {
      }
    }
  }

  else
  {
    v18 = String._bridgeToObjectiveC()();
    v19 = IndexPath._bridgeToObjectiveC()().super.isa;
    v20 = [a1 dequeueReusableCellWithIdentifier:v18 forIndexPath:v19];

    v10 = v20;
    v21 = IndexPath.section.getter();
    v22 = sub_10018E850(v21);
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      [v23 setMindfulnessSessionsStatistics:v22 formattingManager:*&v7[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_fiuiFormattingManager]];
    }

    else
    {
    }
  }

  [v10 setSelectionStyle:0];

  return v10;
}

id sub_10018DA14(void *a1, unint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 numberOfRowsInSection:{a2, v7}] < 1)
  {
    return 0;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v10];

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(v2 + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_allMindfulnessSessionViewModels);
  if (*(v12 + 16) <= a2)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return v11;
    }

    goto LABEL_6;
  }

  v2 = *(v12 + 8 * a2 + 32);
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return v11;
  }

LABEL_6:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    if (v11)
    {
LABEL_9:
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        v17 = v11;
        MindfulnessSessionViewModel.endDate.getter();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v6 + 8))(v9, v5);
        [v16 setDate:isa];
      }
    }

LABEL_11:

    return v11;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v2 + 32);
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_10018DF70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (IndexPath.row.getter() && (v5 = sub_10018EB90(a2)) != 0)
    {
      v6 = v5;
      v7 = *&v4[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_fitnessAppContext];
      v8 = *&v4[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_mindfulnessSessionFormattingManager];
      objc_allocWithZone(type metadata accessor for MindfulnessSessionDetailViewController(0));
      sub_100349480(v6, v7, v8);
      v10 = v9;
      v11 = [v4 navigationController];
      if (v11)
      {
        v12 = v11;
        [v11 pushViewController:v10 animated:1];

        v4 = v12;
      }
    }

    else
    {
      v10 = v4;
    }
  }
}

uint64_t sub_10018E240(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_10018ECFC(a6);
  }

  return a3(1);
}

uint64_t sub_10018E3D0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v11;
  v12[4] = ObjectType;
  aBlock[4] = sub_100191898;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_1008494D8;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v16);
}

void sub_10018E6A0(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      type metadata accessor for MindfulnessSessionViewModel();
      v2 = static MindfulnessSessionViewModel.makeMindfulnessSessionViewModels(from:)();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        sub_100191EA4(v2);
        v6 = v5;

        *&v4[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_allMindfulnessSessionViewModels] = v6;
      }

      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        sub_10018CA9C();
LABEL_11:

        return;
      }

      return;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v9 = static os_log_type_t.default.getter();
  v10 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "MindfulnessSessionListViewController doesn't have any mindfulness sessions; popping view controller", 99, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 navigationController];

    if (v13)
    {
      v8 = [v13 popViewControllerAnimated:1];

      goto LABEL_11;
    }
  }
}

char *sub_10018E850(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v3 = *(v1 + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_allMindfulnessSessionViewModels);
  if (*(v3 + 16) <= a1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v2 = *(v3 + 8 * a1 + 32);
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_27:
  v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    goto LABEL_15;
  }

  v25 = _swiftEmptyArrayStorage;

  result = sub_100185AF4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v25;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v2 + 8 * v7 + 32);
      }

      v9 = v8;
      MindfulnessSessionViewModel.duration.getter();
      v11 = v10;

      v25 = v5;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        sub_100185AF4((v12 > 1), v13 + 1, 1);
        v5 = v25;
      }

      ++v7;
      v5[2] = v13 + 1;
      v5[v13 + 4] = v11;
    }

    while (v4 != v7);

LABEL_15:
    v14 = v5[2];
    if (v14)
    {
      if (v14 > 3)
      {
        v15 = v14 & 0x7FFFFFFFFFFFFFFCLL;
        v17 = (v5 + 6);
        v16 = 0.0;
        v18 = v14 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v16 = v16 + *(v17 - 2) + *(v17 - 1) + *v17 + v17[1];
          v17 += 4;
          v18 -= 4;
        }

        while (v18);
        if (v14 == v15)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v15 = 0;
        v16 = 0.0;
      }

      v19 = v14 - v15;
      v20 = &v5[v15 + 4];
      do
      {
        v21 = *v20++;
        v16 = v16 + v21;
        --v19;
      }

      while (v19);
    }

    else
    {
      v16 = 0.0;
    }

LABEL_24:

    v22 = type metadata accessor for MindfulnessSessionsStatistics();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR___CHMindfulnessSessionsStatistics_sessionCount] = v4;
    *&v23[OBJC_IVAR___CHMindfulnessSessionsStatistics_totalDuration] = v16;
    v24.receiver = v23;
    v24.super_class = v22;
    return objc_msgSendSuper2(&v24, "init");
  }

  __break(1u);
  return result;
}

void sub_10018EA88(uint64_t a1)
{
  v2 = v1;
  if (IndexPath.row.getter())
  {
    v4 = sub_10018EB90(a1);
    if (v4)
    {
      v5 = v4;
      v6 = *&v2[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_fitnessAppContext];
      v7 = *&v2[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_mindfulnessSessionFormattingManager];
      objc_allocWithZone(type metadata accessor for MindfulnessSessionDetailViewController(0));
      sub_100349480(v5, v6, v7);
      v11 = v8;
      v9 = [v2 navigationController];
      if (v9)
      {
        v10 = v9;
        [v9 pushViewController:v11 animated:1];
      }
    }
  }
}

unint64_t sub_10018EB90(uint64_t a1)
{
  v2 = IndexPath.section.getter();
  result = [v1 tableView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = result;
  v5 = [result numberOfSections];

  if (v2 >= v5)
  {
    return 0;
  }

  v6 = IndexPath.row.getter();
  result = [v1 tableView];
  if (result)
  {
    v7 = result;
    v8 = [result numberOfRowsInSection:IndexPath.section.getter()];

    if (v6 < v8)
    {
      v9 = IndexPath.row.getter();
      v10 = v9 - 1;
      if (__OFSUB__(v9, 1))
      {
        __break(1u);
      }

      else
      {
        result = IndexPath.section.getter();
        if ((result & 0x8000000000000000) == 0)
        {
          v11 = *&v1[OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_allMindfulnessSessionViewModels];
          if (result < *(v11 + 16))
          {
            v12 = *(v11 + 8 * result + 32);
            if ((v12 & 0xC000000000000001) == 0)
            {
              if ((v10 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v10 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                return *(v12 + 8 * v10 + 32);
              }

              __break(1u);
              goto LABEL_19;
            }

LABEL_16:

            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();

            return v13;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    return 0;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_10018ECFC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10018EB90(a1);
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_healthStore);
    if (MindfulnessSessionViewModel.mindfulnessSessions.getter() >> 62)
    {
      sub_1000059F8(0, &qword_1008DE728, HKObject_ptr);
      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000059F8(0, &qword_1008DE728, HKObject_ptr);
    }

    sub_1000059F8(0, &qword_1008DE728, HKObject_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = swift_allocObject();
    *(v9 + 16) = ObjectType;
    v12[4] = sub_10018F188;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1004DCFFC;
    v12[3] = &unk_100849460;
    v10 = _Block_copy(v12);

    [v7 _deleteObjects:isa options:0 completion:v10];

    _Block_release(v10);
    v11 = *(*(v2 + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_fitnessAppContext) + OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider);
    sub_100289528(v6, v11);
  }
}

void sub_10018EF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = static os_log_type_t.error.getter();
    v4 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v3))
    {
      v5 = v4;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v6 = 136315394;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10000AFDC(v9, v10, &v13);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2112;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v12;
      *v7 = v12;
      _os_log_impl(&_mh_execute_header, v5, v3, "%s failed to delete mindfulness session with error %@", v6, 0x16u);
      sub_10000EA04(v7, &unk_1008DB8B0, &unk_1006DBD30);

      sub_100005A40(v8);
    }
  }
}

void sub_10018F190(uint64_t *a1)
{
  v2 = *(type metadata accessor for DateComponents() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AA4D8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10018F2B4(v5);
  *a1 = v3;
}

uint64_t sub_10018F238(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001AB738(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10018F3E0(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_10018F2B4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DateComponents();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for DateComponents() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10018F9D0(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10018F4E4(0, v2, 1, a1);
  }
}

void sub_10018F3E0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for MindfulnessSessionViewModel();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1001905D4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10018F7E4(0, v2, 1, a1);
  }
}

void sub_10018F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for DateComponents();
  __chkstk_darwin(v8);
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v43 - v11;
  v14 = __chkstk_darwin(v12);
  v58 = &v43 - v15;
  v45 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v54 = (v17 - 8);
    v55 = v18;
    v56 = v17;
    v20 = (v17 + 16);
    v21 = (v16 + v19 * (a3 - 1));
    v51 = -v19;
    v52 = v16;
    v22 = a1 - a3;
    v44 = v19;
    v23 = v16 + v19 * a3;
    while (2)
    {
      v48 = v21;
      v49 = a3;
      v46 = v23;
      v47 = v22;
      v24 = v22;
      v25 = v21;
      while (1)
      {
        v26 = v55;
        (v55)(v58, v23, v8, v14);
        v27 = v57;
        v26(v57, v25, v8);
        v28 = DateComponents.year.getter();
        if ((v29 & 1) == 0)
        {
          v30 = v28;
          v31 = DateComponents.year.getter();
          if ((v32 & 1) == 0)
          {
            v33 = v31;
            v34 = DateComponents.month.getter();
            if ((v35 & 1) == 0)
            {
              v50 = v34;
              v36 = DateComponents.month.getter();
              if ((v37 & 1) == 0 && v33 >= v30 && (v30 < v33 || v36 >= v50))
              {
                break;
              }
            }
          }
        }

        v38 = *v54;
        (*v54)(v27, v8);
        v38(v58, v8);
        if (!v52)
        {
          __break(1u);
          return;
        }

        v39 = *v20;
        v40 = v53;
        (*v20)(v53, v23, v8);
        swift_arrayInitWithTakeFrontToBack();
        v39(v25, v40, v8);
        v25 += v51;
        v23 += v51;
        if (__CFADD__(v24++, 1))
        {
          goto LABEL_14;
        }
      }

      v42 = *v54;
      (*v54)(v27, v8);
      v42(v58, v8);
LABEL_14:
      a3 = v49 + 1;
      v21 = &v48[v44];
      v22 = v47 - 1;
      v23 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }
}

void sub_10018F7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for Date();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v14;
    while (1)
    {
      v18 = *v17;
      v19 = v16;
      v20 = v18;
      MindfulnessSessionViewModel.endDate.getter();
      v21 = v32;
      MindfulnessSessionViewModel.endDate.getter();
      LOBYTE(v18) = static Date.> infix(_:_:)();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);

      if ((v18 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v17;
      v16 = *(v17 + 8);
      *v17 = v16;
      *(v17 + 8) = v25;
      v17 -= 8;
      if (__CFADD__(v15++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10018F9D0(int64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v6 = v4;
  v156 = a1;
  v9 = type metadata accessor for DateComponents();
  __chkstk_darwin(v9);
  v161 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v173 = &v151 - v12;
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v177 = &v151 - v15;
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v168 = &v151 - v18;
  __chkstk_darwin(v19);
  v153 = &v151 - v20;
  v25 = __chkstk_darwin(v21);
  v155 = &v151 - v26;
  v27 = *(a3 + 8);
  v166 = v23;
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_132:
    v5 = *v156;
    if (!*v156)
    {
      goto LABEL_170;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v166;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_134;
    }

    goto LABEL_165;
  }

  v151 = v22;
  v152 = a4;
  v28 = 0;
  v175 = (v23 + 8);
  v176 = v23 + 16;
  v174 = (v23 + 32);
  v29 = _swiftEmptyArrayStorage;
  v167 = a3;
  v169 = v24;
  while (2)
  {
    v158 = v6;
    v30 = v28++;
    if (v28 >= v27)
    {
      goto LABEL_47;
    }

    v164 = v27;
    v6 = *a3;
    v31 = *(v166 + 72);
    v32 = *(v166 + 16);
    v32(v155, *a3 + v31 * v28, v9, v25);
    v170 = v31;
    v33 = &v6[v31 * v30];
    v34 = v153;
    v163 = v32;
    (v32)(v153, v33, v9);
    v35 = DateComponents.year.getter();
    v154 = v29;
    v157 = v30;
    if (v36 & 1) != 0 || (v37 = v35, v38 = DateComponents.year.getter(), (v39) || (v40 = v38, v41 = DateComponents.month.getter(), (v42))
    {
      v43 = v34;
      v44 = 1;
    }

    else
    {
      v140 = v41;
      v141 = DateComponents.month.getter();
      LODWORD(v165) = 1;
      v43 = v34;
      if ((v142 & 1) != 0 || v40 < v37)
      {
        goto LABEL_10;
      }

      v44 = v37 >= v40 && v141 < v140;
    }

    LODWORD(v165) = v44;
LABEL_10:
    a3 = v175;
    v45 = *v175;
    (*v175)(v43, v9);
    v162 = v45;
    (v45)(v155, v9);
    v46 = (v157 + 2);
    v47 = v170 * (v157 + 2);
    v5 = &v6[v47];
    v48 = v170 * v28;
    v49 = &v6[v170 * v28];
    do
    {
      v52 = v46;
      v29 = v28;
      v53 = v48;
      v51 = v47;
      v172 = v46;
      if (v46 >= v164)
      {
        break;
      }

      v171 = v47;
      v54 = v28;
      v55 = v163;
      (v163)(v168, v5, v9);
      v56 = v169;
      v55(v169, v49, v9);
      v57 = DateComponents.year.getter();
      if (v58)
      {
        a3 = 1;
        v50 = v56;
        v29 = v28;
      }

      else
      {
        v59 = v57;
        v60 = DateComponents.year.getter();
        v29 = v54;
        if ((v61 & 1) == 0)
        {
          v62 = v60;
          v63 = DateComponents.month.getter();
          v51 = v171;
          if (v64)
          {
            a3 = 1;
            v50 = v169;
          }

          else
          {
            v65 = v169;
            v160 = v63;
            v66 = DateComponents.month.getter();
            v68 = v59 >= v62 && v66 < v160;
            v69 = v68;
            v50 = v65;
            if (v62 < v59)
            {
              v69 = 1;
            }

            if (v67)
            {
              a3 = 1;
            }

            else
            {
              a3 = v69;
            }
          }

          goto LABEL_13;
        }

        a3 = 1;
        v50 = v169;
      }

      v51 = v171;
LABEL_13:
      v6 = v162;
      (v162)(v50, v9);
      (v6)(v168, v9);
      v52 = v172;
      v46 = v172 + 1;
      v5 += v170;
      v49 += v170;
      v28 = v29 + 1;
      v48 = v53 + v170;
      v47 = v51 + v170;
    }

    while (v165 == a3);
    if (v165)
    {
      v30 = v157;
      v24 = v169;
      if (v52 < v157)
      {
        goto LABEL_161;
      }

      if (v157 >= v52)
      {
        v28 = v52;
        a3 = v167;
        v29 = v154;
      }

      else
      {
        v5 = v157 * v170;
        do
        {
          if (v30 != v29)
          {
            v6 = *v167;
            if (!*v167)
            {
LABEL_167:
              __break(1u);
              goto LABEL_168;
            }

            v70 = *v174;
            (*v174)(v161, &v6[v5], v9);
            if (v5 < v53 || &v6[v5] >= &v6[v51])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v5 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v70(&v6[v53], v161, v9);
            v24 = v169;
          }

          ++v30;
          v53 -= v170;
          v51 -= v170;
          v5 += v170;
          v68 = v30 < v29--;
        }

        while (v68);
        v28 = v172;
        a3 = v167;
        v29 = v154;
        v30 = v157;
      }
    }

    else
    {
      v28 = v52;
      a3 = v167;
      v29 = v154;
      v30 = v157;
      v24 = v169;
    }

LABEL_47:
    v71 = *(a3 + 8);
    if (v28 >= v71)
    {
      v6 = v158;
LABEL_71:
      if (v28 < v30)
      {
        goto LABEL_159;
      }

      goto LABEL_72;
    }

    if (__OFSUB__(v28, v30))
    {
      goto LABEL_160;
    }

    v6 = v158;
    if (v28 - v30 >= v152)
    {
      goto LABEL_71;
    }

    v72 = v30 + v152;
    if (__OFADD__(v30, v152))
    {
      goto LABEL_162;
    }

    if (v72 >= v71)
    {
      v72 = *(a3 + 8);
    }

    if (v72 < v30)
    {
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      v29 = sub_1001A99A4(v29);
LABEL_134:
      v178 = v29;
      v145 = *(v29 + 16);
      if (v145 >= 2)
      {
        while (1)
        {
          v146 = *a3;
          if (!*a3)
          {
            break;
          }

          v147 = a3;
          a3 = *(v29 + 16 * v145);
          v148 = v29;
          v149 = *(v29 + 16 * (v145 - 1) + 32);
          v29 = *(v29 + 16 * (v145 - 1) + 40);
          sub_100190DA4(&v146[*(v9 + 72) * a3], &v146[*(v9 + 72) * v149], &v146[*(v9 + 72) * v29], v5);
          if (v6)
          {
            goto LABEL_142;
          }

          if (v29 < a3)
          {
            goto LABEL_157;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v148 = sub_1001A99A4(v148);
          }

          if (v145 - 2 >= *(v148 + 2))
          {
            goto LABEL_158;
          }

          v150 = &v148[16 * v145];
          *v150 = a3;
          v150[1] = v29;
          v178 = v148;
          sub_1001A9918(v145 - 1);
          v29 = v178;
          v145 = *(v178 + 16);
          a3 = v147;
          if (v145 <= 1)
          {
            goto LABEL_142;
          }
        }

LABEL_168:
        __break(1u);
        break;
      }

LABEL_142:

      return;
    }

    if (v28 == v72)
    {
      goto LABEL_71;
    }

    v154 = v29;
    v73 = *(v166 + 72);
    v74 = *(v166 + 16);
    v171 = *a3;
    v172 = v74;
    v75 = &v171[v73 * (v28 - 1)];
    v170 = -v73;
    v157 = v30;
    v76 = (v30 - v28);
    v165 = v28;
    v159 = v73;
    v5 = &v171[v28 * v73];
    v29 = v151;
    v160 = v72;
    do
    {
      v162 = v5;
      v163 = v76;
      v164 = v75;
      v77 = v75;
      while (1)
      {
        v78 = v172;
        (v172)(v177, v5, v9);
        v6 = v9;
        v78(v29, v77, v9);
        v79 = DateComponents.year.getter();
        if ((v80 & 1) == 0)
        {
          v81 = v79;
          v82 = DateComponents.year.getter();
          if ((v83 & 1) == 0)
          {
            v84 = v82;
            v85 = DateComponents.month.getter();
            if ((v86 & 1) == 0)
            {
              v87 = v85;
              v88 = DateComponents.month.getter();
              if ((v89 & 1) == 0 && v84 >= v81 && (v81 < v84 || v88 >= v87))
              {
                break;
              }
            }
          }
        }

        a3 = v175;
        v90 = *v175;
        v9 = v6;
        (*v175)(v29, v6);
        (v90)(v177, v6);
        if (!v171)
        {
          goto LABEL_164;
        }

        a3 = v173;
        v91 = *v174;
        (*v174)(v173, v5, v6);
        swift_arrayInitWithTakeFrontToBack();
        v91(v77, a3, v6);
        v77 += v170;
        v5 += v170;
        if (__CFADD__(v76++, 1))
        {
          goto LABEL_67;
        }
      }

      a3 = v175;
      v93 = *v175;
      v9 = v6;
      (*v175)(v29, v6);
      (v93)(v177, v6);
LABEL_67:
      v75 = (v164 + v159);
      v76 = v163 - 1;
      v5 = &v162[v159];
      ++v165;
    }

    while (v165 != v160);
    v28 = v160;
    v30 = v157;
    v6 = v158;
    v29 = v154;
    v24 = v169;
    if (v160 < v157)
    {
      goto LABEL_159;
    }

LABEL_72:
    v5 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1001A1D54(0, *(v29 + 16) + 1, 1, v29);
    }

    v95 = *(v29 + 16);
    v94 = *(v29 + 24);
    a3 = v95 + 1;
    if (v95 >= v94 >> 1)
    {
      v29 = sub_1001A1D54((v94 > 1), v95 + 1, 1, v29);
    }

    v24 = v5;
    *(v29 + 16) = a3;
    v96 = v29 + 16 * v95;
    *(v96 + 32) = v30;
    *(v96 + 40) = v28;
    v97 = *v156;
    if (*v156)
    {
      if (!v95)
      {
LABEL_3:
        a3 = v167;
        v27 = *(v167 + 8);
        if (v28 >= v27)
        {
          goto LABEL_132;
        }

        continue;
      }

      while (2)
      {
        v5 = a3 - 1;
        if (a3 >= 4)
        {
          v102 = v29 + 32 + 16 * a3;
          v103 = *(v102 - 64);
          v104 = *(v102 - 56);
          v108 = __OFSUB__(v104, v103);
          v105 = v104 - v103;
          if (v108)
          {
            goto LABEL_146;
          }

          v107 = *(v102 - 48);
          v106 = *(v102 - 40);
          v108 = __OFSUB__(v106, v107);
          v100 = v106 - v107;
          v101 = v108;
          if (v108)
          {
            goto LABEL_147;
          }

          v109 = (v29 + 16 * a3);
          v111 = *v109;
          v110 = v109[1];
          v108 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v108)
          {
            goto LABEL_149;
          }

          v108 = __OFADD__(v100, v112);
          v113 = v100 + v112;
          if (v108)
          {
            goto LABEL_152;
          }

          if (v113 >= v105)
          {
            v131 = (v29 + 32 + 16 * v5);
            v133 = *v131;
            v132 = v131[1];
            v108 = __OFSUB__(v132, v133);
            v134 = v132 - v133;
            if (v108)
            {
              goto LABEL_156;
            }

            if (v100 < v134)
            {
              v5 = a3 - 2;
            }
          }

          else
          {
LABEL_91:
            if (v101)
            {
              goto LABEL_148;
            }

            v114 = (v29 + 16 * a3);
            v116 = *v114;
            v115 = v114[1];
            v117 = __OFSUB__(v115, v116);
            v118 = v115 - v116;
            v119 = v117;
            if (v117)
            {
              goto LABEL_151;
            }

            v120 = (v29 + 32 + 16 * v5);
            v122 = *v120;
            v121 = v120[1];
            v108 = __OFSUB__(v121, v122);
            v123 = v121 - v122;
            if (v108)
            {
              goto LABEL_154;
            }

            if (__OFADD__(v118, v123))
            {
              goto LABEL_155;
            }

            if (v118 + v123 < v100)
            {
              goto LABEL_105;
            }

            if (v100 < v123)
            {
              v5 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v98 = *(v29 + 32);
            v99 = *(v29 + 40);
            v108 = __OFSUB__(v99, v98);
            v100 = v99 - v98;
            v101 = v108;
            goto LABEL_91;
          }

          v124 = (v29 + 16 * a3);
          v126 = *v124;
          v125 = v124[1];
          v108 = __OFSUB__(v125, v126);
          v118 = v125 - v126;
          v119 = v108;
LABEL_105:
          if (v119)
          {
            goto LABEL_150;
          }

          v127 = v29 + 16 * v5;
          v129 = *(v127 + 32);
          v128 = *(v127 + 40);
          v108 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v108)
          {
            goto LABEL_153;
          }

          if (v130 < v118)
          {
            goto LABEL_3;
          }
        }

        v135 = v5 - 1;
        if (v5 - 1 >= a3)
        {
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (!*v167)
        {
          __break(1u);
          goto LABEL_167;
        }

        v136 = v28;
        v137 = v29;
        a3 = *(v29 + 32 + 16 * v135);
        v138 = *(v29 + 32 + 16 * v5);
        v29 = *(v29 + 32 + 16 * v5 + 8);
        sub_100190DA4((*v167 + *(v166 + 72) * a3), (*v167 + *(v166 + 72) * v138), *v167 + *(v166 + 72) * v29, v97);
        if (v6)
        {
          goto LABEL_142;
        }

        if (v29 < a3)
        {
          goto LABEL_144;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_1001A99A4(v137);
        }

        if (v135 >= *(v137 + 2))
        {
          goto LABEL_145;
        }

        v139 = &v137[16 * v135];
        *(v139 + 4) = a3;
        *(v139 + 5) = v29;
        v178 = v137;
        sub_1001A9918(v5);
        v29 = v178;
        a3 = *(v178 + 16);
        v24 = v169;
        v28 = v136;
        if (a3 <= 1)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
LABEL_170:
  __break(1u);
}