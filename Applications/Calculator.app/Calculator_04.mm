void *sub_10006DC5C@<X0>(BOOL *a4@<X8>)
{
  sub_10003AE84(&qword_100155858, &qword_10010DAA0);
  result = Binding.wrappedValue.getter();
  *a4 = v6 != 0;
  return result;
}

_BYTE *sub_10006DCBC(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((*result & 1) == 0)
  {
    sub_10003AE84(&qword_100155858, &qword_10010DAA0);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10006DD1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10006DD64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006DE24()
{
  result = qword_100154F80;
  if (!qword_100154F80)
  {
    type metadata accessor for CalculatorNetworkManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154F80);
  }

  return result;
}

uint64_t sub_10006DE7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100030CEC;

  return sub_10006DA54(a1, v4, v5, v1 + 32);
}

void sub_10006DF54(uint64_t a1)
{
  sub_100002B70(319);
  if (v1 <= 0x3F)
  {
    sub_100010648(319, &qword_1001557F0, type metadata accessor for CalculatorLayout);
    if (v2 <= 0x3F)
    {
      sub_100010648(319, &unk_100155800, type metadata accessor for CalculatorToolbarViewModel);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006E028(uint64_t *a1@<X8>)
{
  v2 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = (&v16 - v6);
  v8 = type metadata accessor for CalculatorSizeClass(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (!v12 || (sub_10000D594(v7), type metadata accessor for SidebarButton(0), sub_10000D594(v4), v13 = type metadata accessor for UserInterfaceSizeClass(), v14 = *(*(v13 - 8) + 56), v14(v10, 1, 1, v13), v15 = *(v8 + 20), v14(&v10[v15], 1, 1, v13), sub_10006E758(v7, v10), sub_10006E758(v4, &v10[v15]), LOBYTE(v13) = sub_10003D448(v10), sub_10006E7C8(v10), (v13 & 1) != 0))
  {
    if (qword_100154440 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (qword_100154438 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
}

double sub_10006E290(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000048C8(v6, qword_100160D38);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sidebar toggled from the button", v9, 2u);
  }

  v10 = a1 + *(type metadata accessor for SidebarButton(0) + 28);
  v11 = *v10;
  v12 = *(v10 + 8);

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v11 = v20;
  }

  swift_getKeyPath();
  v20 = v11;
  sub_100011630(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v11 + 16);
  v15 = v14 ^ 1;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v16 = qword_100160D98;
  sub_10000362C();
  if ((v14 & 1) != 0 || (swift_getKeyPath(), v20 = v16, sub_100011630(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v16 + 72) != 1))
  {
    sub_100091C5C(v15);
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    *(v17 + 24) = v15;

    sub_1000F7484(sub_10006C1F4, v17);
  }

  return result;
}

uint64_t sub_10006E630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006E694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10006E6F8()
{
  v1 = *(type metadata accessor for SidebarButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10006E290(v2);
}

uint64_t sub_10006E758(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006E7C8(uint64_t a1)
{
  v2 = type metadata accessor for CalculatorSizeClass(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10006E824(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 8);
  v17 = *a2;
  v8 = v18;

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v17, &qword_100154810, &qword_10010DF90);
    (*(v5 + 8))(v7, v4);
  }

  v16 = *(a2 + 56);
  v15 = a2[6];
  v10 = v16;

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v15, &qword_100155B10, &unk_10010DF98);
    (*(v5 + 8))(v7, v4);
  }

  v12 = sub_100074054();

  sub_10005D098(a1, v12);

  return result;
}

uint64_t sub_10006EA70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[2] = a5;
  v19[3] = a6;
  v19[1] = a4;
  v9 = type metadata accessor for PPTTestCase();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = type metadata accessor for AnimationCompletionCriteria();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  v19[6] = a2;
  v20 = a3;
  (*(v10 + 16))(v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v13 + 8))(v15, v12);
}

double sub_10006EC6C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PPTTestCase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 8);
  v16 = *a2;
  v12 = v17;

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v16, &qword_100154810, &qword_10010DF90);
    (*(v9 + 8))(v11, v8);
  }

  sub_1000560A8(0);

  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for AppRotationPPT(0);
  swift_allocObject();
  sub_10006F034(v7);
  sub_10006F4AC();

  return result;
}

void sub_10006EEB0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 8);
  v11 = *a1;
  v8 = v12;

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v11, &qword_100154810, &qword_10010DF90);
    (*(v5 + 8))(v7, v4);
  }

  sub_1000560A8(a2);
}

uint64_t sub_10006F034(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10Calculator14AppRotationPPT_testCase;
  v5 = type metadata accessor for PPTTestCase();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  v7 = PPTTestCase.parameters.getter();
  AnyHashable.init<A>(_:)();
  if (*(v7 + 16) && (v8 = sub_100075284(v22), (v9 & 1) != 0))
  {
    sub_100007314(*(v7 + 56) + 32 * v8, v23);
    sub_10006C154(v22);

    if (swift_dynamicCast())
    {
      v10 = 0x6F69746172657469;
      v11 = 0xEA0000000000736ELL;
      goto LABEL_7;
    }
  }

  else
  {

    sub_10006C154(v22);
  }

  v11 = 0xE100000000000000;
  v10 = 48;
LABEL_7:
  v12 = HIBYTE(v11) & 0xF;
  if (!v12)
  {
    (*(v6 + 8))(a1, v5);

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  v22[0] = v10;
  v22[1] = v11 & 0xFFFFFFFFFFFFFFLL;
  if (v10 == 43)
  {
    if (--v12)
    {
      v13 = 0;
      v14 = v22 + 1;
      while (1)
      {
        v15 = *v14 - 48;
        if (v15 > 9)
        {
          break;
        }

        v16 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v16 + v15;
        if (__OFADD__(v16, v15))
        {
          break;
        }

        ++v14;
        if (!--v12)
        {
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v13 = 0;
    v17 = v22;
    while (1)
    {
      v18 = *v17 - 48;
      if (v18 > 9)
      {
        break;
      }

      v19 = 10 * v13;
      if ((v13 * 10) >> 64 != (10 * v13) >> 63)
      {
        break;
      }

      v13 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        break;
      }

      ++v17;
      if (!--v12)
      {
        goto LABEL_23;
      }
    }
  }

  v13 = 0;
  LOBYTE(v12) = 1;
LABEL_23:
  v23[0] = v12;
  v20 = v12;
  (*(v6 + 8))(a1, v5);

  if (v20)
  {
    goto LABEL_24;
  }

LABEL_25:
  *(v2 + OBJC_IVAR____TtC10Calculator14AppRotationPPT_iterations) = v13;
  return v2;
}

id sub_10006F4AC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000048C8(v5, qword_100160D38);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v0 + OBJC_IVAR____TtC10Calculator14AppRotationPPT_iterations);

    _os_log_impl(&_mh_execute_header, v6, v7, "Running Rotation Test with %ld iterations", v8, 0xCu);
  }

  else
  {
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Setting Orientation to Portrait", v11, 2u);
  }

  v12 = [objc_opt_self() sharedApplication];
  [v12 rotateIfNeeded:1];

  v13 = [objc_opt_self() mainRunLoop];
  Date.init(timeIntervalSinceNow:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  [v13 runUntilDate:isa];

  PPTTestCase.startTest()();
  return sub_10006FB28();
}

uint64_t sub_10006F778()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v19 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_10000A84C();
  v17 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v8 + 8);
  v18(v10, v7);
  aBlock[4] = sub_10006FF40;
  v24 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100067348;
  aBlock[3] = &unk_10014AC50;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000F258(&qword_1001556C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003AE84(&qword_1001556C8, &qword_10010DCF0);
  sub_100004880(&qword_1001556D0, &qword_1001556C8, &qword_10010DCF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = v17;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v14);

  (*(v22 + 8))(v3, v1);
  (*(v20 + 8))(v6, v21);
  return (v18)(v13, v19);
}

id sub_10006FB28()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10Calculator14AppRotationPPT_iterations;
  if (*(v0 + OBJC_IVAR____TtC10Calculator14AppRotationPPT_iterations))
  {
    result = [objc_opt_self() _applicationKeyWindow];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = [result interfaceOrientation];

    if (v5 == 3)
    {
      v6 = *(v1 + v2);
      v7 = __OFSUB__(v6, 1);
      v8 = v6 - 1;
      if (!v7)
      {
        *(v1 + v2) = v8;
        if (qword_1001546E8 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_1000048C8(v9, qword_100160D38);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Setting Orientation to portrait", v12, 2u);
        }

        v13 = [objc_opt_self() sharedApplication];
        [v13 rotateIfNeeded:1];
LABEL_15:

        goto LABEL_16;
      }

      __break(1u);
    }

    else if (qword_1001546E8 == -1)
    {
LABEL_12:
      v14 = type metadata accessor for Logger();
      sub_1000048C8(v14, qword_100160D38);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Setting Orientation to landscapeRight", v17, 2u);
      }

      v13 = [objc_opt_self() sharedApplication];
      [v13 rotateIfNeeded:3];
      goto LABEL_15;
    }

    swift_once();
    goto LABEL_12;
  }

  PPTTestCase.finishTest()();
LABEL_16:

  return sub_10006F778();
}

uint64_t sub_10006FDB4()
{
  v1 = OBJC_IVAR____TtC10Calculator14AppRotationPPT_testCase;
  v2 = type metadata accessor for PPTTestCase();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppRotationPPT(uint64_t a1)
{
  result = qword_1001559A0;
  if (!qword_1001559A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006FEA4(uint64_t a1)
{
  result = type metadata accessor for PPTTestCase();
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

unsigned __int8 *sub_10006FF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000704D8(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000704D8(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100070558(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100070558(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100007034(v9, 0), v12 = sub_1000706B0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000706B0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000708D0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000708D0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000708D0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10007094C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_1000709A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_100070B38()
{
  v1 = type metadata accessor for PPTTestCase();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_100070C24()
{
  result = qword_100155B40;
  if (!qword_100155B40)
  {
    sub_10003AECC(&qword_100155B48, &qword_10010E008);
    sub_10000E6A4();
    sub_10000E6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155B40);
  }

  return result;
}

unint64_t sub_100070CB0()
{
  result = qword_100155B60;
  if (!qword_100155B60)
  {
    sub_10003AECC(&qword_100155B30, &qword_10010E000);
    sub_10000E74C();
    sub_10000E7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155B60);
  }

  return result;
}

unint64_t sub_100070D3C()
{
  result = qword_100155B88;
  if (!qword_100155B88)
  {
    sub_10003AECC(&qword_100155B08, &qword_10010DF88);
    sub_10000B168();
    sub_10000B580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155B88);
  }

  return result;
}

uint64_t sub_100070DE4()
{
  v1 = OBJC_IVAR____TtC10Calculator22AnalyticsTimeStampInfo_appStartTime;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10Calculator22AnalyticsTimeStampInfo_lastEventUpdatedTime, v2);

  return swift_deallocClassInstance();
}

void sub_100070EB8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);

  Date.init()();
  v7 = OBJC_IVAR____TtC10Calculator22AnalyticsTimeStampInfo_lastEventUpdatedTime;
  swift_beginAccess();
  (*(v3 + 40))(v6 + v7, v5, v2);
  swift_endAccess();

  if (qword_1001546F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000048C8(v8, qword_100160D50);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = *(v1 + 16);
    v14 = OBJC_IVAR____TtC10Calculator22AnalyticsTimeStampInfo_lastEventUpdatedTime;
    swift_beginAccess();
    (*(v3 + 16))(v5, v13 + v14, v2);
    sub_1000711DC();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v18 = sub_100006E5C(v15, v17, &v19);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "updated last event updated time to: %s", v11, 0xCu);
    sub_100003F80(v12);
  }
}

double sub_100071160(uint64_t a1)
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1000711A4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1000711DC()
{
  result = qword_100155D10;
  if (!qword_100155D10)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155D10);
  }

  return result;
}

BOOL sub_100071234()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (v1)
  {
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v2 + 16) && (v3 = sub_10007519C(0x656C646E75424643, 0xEF6E6F6973726556), (v4 & 1) != 0))
    {
      sub_100007314(*(v2 + 56) + 32 * v3, v11);

      if (swift_dynamicCast())
      {
        v5 = v10;
        v6 = *v9 & 0xFFFFFFFFFFFFLL;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v6 = 0;
  v5 = 0xE000000000000000;
LABEL_8:

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6;
  }

  return v7 == 0;
}

uint64_t sub_1000714B4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100004900();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void sub_100071524(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100004900();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isSquareRootOnBasicCalculatorForced);
}

void sub_100071618(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100004900();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_1000716EC()
{
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    [result unregisterObserver:v0];

    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10007197C(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v3 = [a1 isCalculatorModeScientificAllowed];
  swift_getKeyPath();
  sub_100004900();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 ^ *(v1 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeScientificAllowed);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = [a1 isCalculatorModeProgrammerAllowed];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v6 != *(v1 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeProgrammerAllowed))
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v4 = 1;
  }

  v8 = [a1 isCalculatorInputModeUnitConversionAllowed];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v8 != *(v1 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorInputModeUnitConversionAllowed))
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v4 = 1;
  }

  v10 = [a1 isCalculatorModeMathPaperAllowed];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v10 != *(v1 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeMathPaperAllowed))
  {
    v11 = swift_getKeyPath();
    __chkstk_darwin(v11);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v4 = 1;
  }

  v12 = [a1 isSquareRootOnBasicCalculatorForced];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v12 == *(v1 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isSquareRootOnBasicCalculatorForced))
  {
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v13 = swift_getKeyPath();
    __chkstk_darwin(v13);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v14 = [objc_opt_self() defaultCenter];
  if (qword_1001544B8 != -1)
  {
    swift_once();
  }

  [v14 postNotificationName:qword_100160AE0 object:0];
}

_OWORD *sub_100071F2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100008F60(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_100076A54(v15, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    sub_1000035CC(a1, &qword_1001551B8, &qword_10010E3E0);
    v7 = sub_100075218(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        sub_100075F7C();
        v11 = v14;
      }

      sub_100008F60((*(v11 + 56) + 32 * v9), v15);
      sub_100076560(v9, v11, v12);
      *v3 = v11;
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    return sub_1000035CC(v15, &qword_1001551B8, &qword_10010E3E0);
  }

  return result;
}

uint64_t sub_100072030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v5;
    sub_1000768B8(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v5 = v20;
  }

  else
  {
    v14 = sub_10007519C(a2, a3);
    v16 = v15;

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v8;
      v21 = *v8;
      if (!v17)
      {
        sub_100076278(a4, a5);
        v18 = v21;
      }

      result = sub_1000766F4(v14, v18, v19);
      *v8 = v18;
    }
  }

  return result;
}

id sub_100072148()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 32);
  v3 = CalculateUnitCategory.id.getter();
  v5 = v4;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v6 = *(v1 + 40);
  if (*(v6 + 16) && (, v7 = sub_10007519C(v3, v5), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v7);

    return v10;
  }

  else
  {

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = [*(v1 + 32) preferredFromUnit];

    return v12;
  }
}

id sub_100072328()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 32);
  v3 = CalculateUnitCategory.id.getter();
  v5 = v4;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v6 = *(v1 + 48);
  if (*(v6 + 16) && (, v7 = sub_10007519C(v3, v5), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v7);

    return v10;
  }

  else
  {

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = [*(v1 + 32) preferredToUnit];

    return v12;
  }
}

uint64_t sub_100072508()
{
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ([*(v0 + 32) unitType] == 16)
  {
    v1 = *(v0 + 24);
    swift_getKeyPath();
    sub_100077594(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v1 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__isCurrencyCacheLoaded) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_100072648()
{
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);

  return v1;
}

void sub_1000726F8(void *a1)
{
  v2 = v1;
  v4 = sub_100072148();
  v5 = CalculateUnit.id.getter();
  v7 = v6;

  if (v5 == CalculateUnit.id.getter() && v7 == v8)
  {

    return;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    return;
  }

  v10 = [a1 category];
  if (!v10)
  {
    return;
  }

  v106 = v10;
  sub_100074DF8(v10);
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v2 + 32);
  v12 = CalculateUnitCategory.id.getter();
  v14 = v13;

  swift_getKeyPath();
  v15 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  sub_1000768B8(v15, v12, v14, isUniquelyReferenced_nonNull_native, &qword_100156000, &qword_10010E390);

  *(v2 + 40) = v108;
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v2 + 32);
  v18 = CalculateUnitCategory.id.getter();
  v20 = v19;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (!*(*(v2 + 48) + 16))
  {
    goto LABEL_17;
  }

  sub_10007519C(v18, v20);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v2 + 32);
  v24 = CalculateUnitCategory.id.getter();
  v26 = v25;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(*(v2 + 48) + 16))
  {

    sub_10007519C(v24, v26);
    v28 = v27;

    if (v28)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v29 = *(v2 + 32);
      v30 = CalculateUnitCategory.id.getter();
      v32 = v31;

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v33 = *(v2 + 48);
      if (*(v33 + 16))
      {

        v34 = sub_10007519C(v30, v32);
        v36 = v35;

        if (v36)
        {
          v37 = *(*(v33 + 56) + 8 * v34);

          v38 = CalculateUnit.id.getter();
          v40 = v39;

          if (v38 == CalculateUnit.id.getter() && v40 == v41)
          {

LABEL_17:

            goto LABEL_18;
          }

          v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v104 & 1) == 0)
          {
            goto LABEL_42;
          }

LABEL_18:
          v42 = CalculateUnit.id.getter();
          v44 = v43;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v45 = *(v2 + 32);
          v46 = CalculateUnitCategory.id.getter();
          v48 = v47;

          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v49 = *(v2 + 48);
          if (*(v49 + 16) && (, v50 = sub_10007519C(v46, v48), v52 = v51, , (v52 & 1) != 0))
          {
            v53 = *(*(v49 + 56) + 8 * v50);

            v54 = CalculateUnit.id.getter();
            v56 = v55;

            if (v42 == v54 && v44 == v56)
            {

              v57 = v106;
              goto LABEL_34;
            }

            v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v57 = v106;
            if (v79)
            {
LABEL_34:
              swift_getKeyPath();
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v80 = *(v2 + 32);
              v105 = CalculateUnitCategory.id.getter();
              v82 = v81;

              v83 = CalculateUnit.id.getter();
              v85 = v84;
              v86 = [v57 preferredToUnit];
              v87 = CalculateUnit.id.getter();
              v89 = v88;

              if (v83 == v87 && v85 == v89)
              {

                v90 = &selRef_preferredFromUnit;
              }

              else
              {
                v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v90 = &selRef_preferredToUnit;
                if (v91)
                {
                  v90 = &selRef_preferredFromUnit;
                }
              }

              v92 = [v106 *v90];
              swift_getKeyPath();
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              swift_getKeyPath();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();

              swift_beginAccess();
              v93 = swift_isUniquelyReferenced_nonNull_native();
              v107 = *(v2 + 48);
              *(v2 + 48) = 0x8000000000000000;
              sub_1000768B8(v92, v105, v82, v93, &qword_100156000, &qword_10010E390);

              *(v2 + 48) = v107;
              goto LABEL_41;
            }
          }

          else
          {

            v57 = v106;
          }

          v58 = CalculateUnit.id.getter();
          v60 = v59;
          v61 = [v57 preferredToUnit];
          v62 = CalculateUnit.id.getter();
          v64 = v63;

          if (v58 == v62 && v60 == v64)
          {
          }

          else
          {
            v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v65 & 1) == 0)
            {
              v72 = CalculateUnit.id.getter();
              v74 = v73;
              v75 = [v106 preferredFromUnit];
              v76 = CalculateUnit.id.getter();
              v78 = v77;

              if (v72 == v76 && v74 == v78)
              {
              }

              else
              {
                v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v101 & 1) == 0)
                {
                  goto LABEL_42;
                }
              }

              swift_getKeyPath();
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v102 = *(v2 + 32);
              v67 = CalculateUnitCategory.id.getter();
              v69 = v103;

              v70 = [v106 preferredToUnit];
              goto LABEL_29;
            }
          }

          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v66 = *(v2 + 32);
          v67 = CalculateUnitCategory.id.getter();
          v69 = v68;

          v70 = [v106 preferredFromUnit];
LABEL_29:
          v71 = v70;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          swift_beginAccess();
          sub_100072030(v71, v67, v69, &qword_100156000, &qword_10010E390);
LABEL_41:
          swift_endAccess();
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          goto LABEL_42;
        }

        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  else
  {
  }

LABEL_42:
  v15;
  sub_1000AA29C(v15);
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v94 = qword_100160D68;
  CalculateUnit.id.getter();
  v95 = String._bridgeToObjectiveC()();

  v96 = String._bridgeToObjectiveC()();
  [v94 setObject:v95 forKey:v96];

  v97 = sub_100072328();
  v98 = v97;
  sub_1000AA58C(v97);
  CalculateUnit.id.getter();
  v99 = String._bridgeToObjectiveC()();

  v100 = String._bridgeToObjectiveC()();
  [v94 setObject:v99 forKey:v100];
}

void sub_1000733A8(void *a1)
{
  v2 = v1;
  v4 = sub_100072328();
  v5 = CalculateUnit.id.getter();
  v7 = v6;

  if (v5 == CalculateUnit.id.getter() && v7 == v8)
  {

    return;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    return;
  }

  v10 = [a1 category];
  if (!v10)
  {
    return;
  }

  v106 = v10;
  sub_100074DF8(v10);
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v2 + 32);
  v12 = CalculateUnitCategory.id.getter();
  v14 = v13;

  swift_getKeyPath();
  v15 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = *(v2 + 48);
  *(v2 + 48) = 0x8000000000000000;
  sub_1000768B8(v15, v12, v14, isUniquelyReferenced_nonNull_native, &qword_100156000, &qword_10010E390);

  *(v2 + 48) = v108;
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v2 + 32);
  v18 = CalculateUnitCategory.id.getter();
  v20 = v19;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (!*(*(v2 + 40) + 16))
  {
    goto LABEL_17;
  }

  sub_10007519C(v18, v20);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v2 + 32);
  v24 = CalculateUnitCategory.id.getter();
  v26 = v25;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(*(v2 + 40) + 16))
  {

    sub_10007519C(v24, v26);
    v28 = v27;

    if (v28)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v29 = *(v2 + 32);
      v30 = CalculateUnitCategory.id.getter();
      v32 = v31;

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v33 = *(v2 + 40);
      if (*(v33 + 16))
      {

        v34 = sub_10007519C(v30, v32);
        v36 = v35;

        if (v36)
        {
          v37 = *(*(v33 + 56) + 8 * v34);

          v38 = CalculateUnit.id.getter();
          v40 = v39;

          if (v38 == CalculateUnit.id.getter() && v40 == v41)
          {

LABEL_17:

            goto LABEL_18;
          }

          v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v104 & 1) == 0)
          {
            goto LABEL_42;
          }

LABEL_18:
          v42 = CalculateUnit.id.getter();
          v44 = v43;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v45 = *(v2 + 32);
          v46 = CalculateUnitCategory.id.getter();
          v48 = v47;

          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v49 = *(v2 + 40);
          if (*(v49 + 16) && (, v50 = sub_10007519C(v46, v48), v52 = v51, , (v52 & 1) != 0))
          {
            v53 = *(*(v49 + 56) + 8 * v50);

            v54 = CalculateUnit.id.getter();
            v56 = v55;

            if (v42 == v54 && v44 == v56)
            {

              v57 = v106;
              goto LABEL_34;
            }

            v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v57 = v106;
            if (v79)
            {
LABEL_34:
              swift_getKeyPath();
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v80 = *(v2 + 32);
              v105 = CalculateUnitCategory.id.getter();
              v82 = v81;

              v83 = CalculateUnit.id.getter();
              v85 = v84;
              v86 = [v57 preferredFromUnit];
              v87 = CalculateUnit.id.getter();
              v89 = v88;

              if (v83 == v87 && v85 == v89)
              {

                v90 = &selRef_preferredToUnit;
              }

              else
              {
                v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v90 = &selRef_preferredFromUnit;
                if (v91)
                {
                  v90 = &selRef_preferredToUnit;
                }
              }

              v92 = [v106 *v90];
              swift_getKeyPath();
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              swift_getKeyPath();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();

              swift_beginAccess();
              v93 = swift_isUniquelyReferenced_nonNull_native();
              v107 = *(v2 + 40);
              *(v2 + 40) = 0x8000000000000000;
              sub_1000768B8(v92, v105, v82, v93, &qword_100156000, &qword_10010E390);

              *(v2 + 40) = v107;
              goto LABEL_41;
            }
          }

          else
          {

            v57 = v106;
          }

          v58 = CalculateUnit.id.getter();
          v60 = v59;
          v61 = [v57 preferredFromUnit];
          v62 = CalculateUnit.id.getter();
          v64 = v63;

          if (v58 == v62 && v60 == v64)
          {
          }

          else
          {
            v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v65 & 1) == 0)
            {
              v72 = CalculateUnit.id.getter();
              v74 = v73;
              v75 = [v106 preferredFromUnit];
              v76 = CalculateUnit.id.getter();
              v78 = v77;

              if (v72 == v76 && v74 == v78)
              {
              }

              else
              {
                v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v101 & 1) == 0)
                {
                  goto LABEL_42;
                }
              }

              swift_getKeyPath();
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v102 = *(v2 + 32);
              v67 = CalculateUnitCategory.id.getter();
              v69 = v103;

              v70 = [v106 preferredFromUnit];
              goto LABEL_29;
            }
          }

          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v66 = *(v2 + 32);
          v67 = CalculateUnitCategory.id.getter();
          v69 = v68;

          v70 = [v106 preferredToUnit];
LABEL_29:
          v71 = v70;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          swift_beginAccess();
          sub_100072030(v71, v67, v69, &qword_100156000, &qword_10010E390);
LABEL_41:
          swift_endAccess();
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          goto LABEL_42;
        }

        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  else
  {
  }

LABEL_42:
  v15;
  sub_1000AA58C(v15);
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v94 = qword_100160D68;
  CalculateUnit.id.getter();
  v95 = String._bridgeToObjectiveC()();

  v96 = String._bridgeToObjectiveC()();
  [v94 setObject:v95 forKey:v96];

  v97 = sub_100072148();
  v98 = v97;
  sub_1000AA29C(v97);
  CalculateUnit.id.getter();
  v99 = String._bridgeToObjectiveC()();

  v100 = String._bridgeToObjectiveC()();
  [v94 setObject:v99 forKey:v100];
}

uint64_t sub_100074054()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    type metadata accessor for CalculatorUnitConversionViewModel(0);
    v1 = swift_allocObject();
    sub_100074930();
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1000740C8()
{

  v1 = OBJC_IVAR____TtC10Calculator40CalculatorUnitConversionViewModelWrapper___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100074174(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 32);
    *(v2 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1000742E0()
{
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

double sub_100074398@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 40);

  return result;
}

uint64_t sub_100074458(uint64_t a1)
{
  swift_beginAccess();

  sub_100076D90(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000745A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

double sub_100074608()
{
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

double sub_1000746C0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 48);

  return result;
}

uint64_t sub_100074780(uint64_t a1)
{
  swift_beginAccess();

  sub_100076D90(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000748C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
}

uint64_t sub_100074930()
{
  v1 = v0;
  v2 = sub_10003AE84(&qword_100154F60, &qword_10010C620);
  __chkstk_darwin(v2 - 8);
  v18 = &v18 - v3;
  if (qword_1001546A0 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = qword_100160D00;
  v4 = qword_100154378;

  if (v4 != -1)
  {
    swift_once();
  }

  *(v1 + 24) = qword_100160888;

  *(v1 + 40) = sub_100077118(_swiftEmptyArrayStorage, &qword_100156000, &qword_10010E390);
  *(v1 + 48) = sub_100077118(_swiftEmptyArrayStorage, &qword_100156000, &qword_10010E390);
  ObservationRegistrar.init()();
  *(v1 + 32) = sub_1000A8918();
  swift_getKeyPath();
  v21 = v1;
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v1 + 32);
  v19 = CalculateUnitCategory.id.getter();
  v7 = v6;

  v8 = sub_1000A8DB8();
  swift_getKeyPath();
  v21 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v1 + 40);
  *(v1 + 40) = 0x8000000000000000;
  sub_1000768B8(v8, v19, v7, isUniquelyReferenced_nonNull_native, &qword_100156000, &qword_10010E390);

  *(v1 + 40) = v20;
  swift_endAccess();
  v21 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v21 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v1 + 32);
  v11 = CalculateUnitCategory.id.getter();
  v13 = v12;

  v14 = sub_1000A9128();
  swift_getKeyPath();
  v21 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v1 + 48);
  *(v1 + 48) = 0x8000000000000000;
  sub_1000768B8(v14, v11, v13, v15, &qword_100156000, &qword_10010E390);

  *(v1 + 48) = v20;
  swift_endAccess();
  v21 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v21 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ([*(v1 + 32) unitType] == 16)
  {
    v16 = v18;
    sub_100050A28(v18);
    sub_1000035CC(v16, &qword_100154F60, &qword_10010C620);
  }

  return v1;
}

id sub_100074DF8(void *a1)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154F60, &qword_10010C620);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  swift_getKeyPath();
  v19 = v1;
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v1 + 32);
  v8 = CalculateUnitCategory.id.getter();
  v10 = v9;

  if (v8 == CalculateUnitCategory.id.getter() && v10 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      v14 = a1;
      sub_100074174(v14);
      v14;
      sub_1000A9FAC(v14);
      if (qword_1001546F8 != -1)
      {
        swift_once();
      }

      v15 = qword_100160D68;
      CalculateUnitCategory.id.getter();
      v16 = String._bridgeToObjectiveC()();

      v17 = String._bridgeToObjectiveC()();
      [v15 setObject:v16 forKey:v17];

      swift_getKeyPath();
      v19 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      result = [*(v2 + 32) unitType];
      if (result == 16)
      {
        sub_100050A28(v6);
        return sub_1000035CC(v6, &qword_100154F60, &qword_10010C620);
      }
    }
  }

  return result;
}

uint64_t sub_100075098()
{

  v1 = OBJC_IVAR____TtC10Calculator33CalculatorUnitConversionViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100075164()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

unint64_t sub_10007519C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000752C8(a1, a2, v4);
}

unint64_t sub_100075218(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_100075380(v1, v2);
}

unint64_t sub_100075284(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000753F0(a1, v4);
}

unint64_t sub_1000752C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100075380(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000753F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000775DC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10006C154(v8);
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

void sub_1000754B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003AE84(&qword_100156030, &qword_10010E3E8);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_100008F60(v21, v31);
      }

      else
      {
        sub_100007314(v21, v31);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      sub_100008F60(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_10007574C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003AE84(&qword_100156010, &unk_100114000);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100008F60(v22, v36);
      }

      else
      {
        sub_100007314(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_100008F60(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100075A1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10003AE84(a3, a4);
  v38 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_100075CB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10003AE84(&qword_100156008, &qword_10010E398);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v36 = *(*(v5 + 56) + v21);
      if ((v35 & 1) == 0)
      {

        v25 = v36;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100075F7C()
{
  v1 = v0;
  sub_10003AE84(&qword_100156030, &qword_10010E3E8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        sub_100007314(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        sub_100008F60(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000760F8()
{
  v1 = v0;
  sub_10003AE84(&qword_100156010, &unk_100114000);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100007314(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100008F60(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_100076278(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10003AE84(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        v24 = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1000763D4()
{
  v1 = v0;
  sub_10003AE84(&qword_100156008, &qword_10010E398);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v23 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v23;

        v22 = v23;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

Swift::Int sub_100076560(Swift::Int result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v11 = *(*(a2 + 48) + v7);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v4);
        v15 = (v13 + v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v4);
        v18 = (v16 + 32 * v7);
        if (v4 != v7 || v17 >= v18 + 2)
        {
          v10 = v18[1];
          *v17 = *v18;
          v17[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000766F4(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1000768B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10007519C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_100075A1C(v20, a4 & 1, a5, a6);
      v15 = sub_10007519C(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_100076278(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    goto _objc_release_x1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

_OWORD *sub_100076A54(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100075218(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100075F7C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1000754B8(v14, a3 & 1);
    v9 = sub_100075218(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    sub_100003F80(v20);

    return sub_100008F60(a1, v20);
  }

  else
  {

    return sub_100076CC0(v9, a2, a1, v19);
  }
}

_OWORD *sub_100076B80(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100008ED0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1000760F8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10007574C(v13, a3 & 1);
    v8 = sub_100008ED0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CalculateKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100003F80(v19);

    return sub_100008F60(a1, v19);
  }

  else
  {
    sub_100076D28(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_100076CC0(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_100008F60(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_100076D28(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100008F60(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void sub_100076D90(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_10007519C(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = static NSObject.== infix(_:_:)();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_100076F38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003AE84(&qword_100156048, &qword_10010E400);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008E68(v4, v13, &qword_100156050, &qword_10010E408);
      result = sub_100075284(v13);
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
      result = sub_100008F60(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100077118(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10003AE84(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10007519C(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_100077240()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return sub_100077214(v0);
}

unint64_t sub_1000772A0(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100156038, &qword_10010E3F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10003AE84(&qword_100156040, &qword_10010E3F8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_100008E68(v8, v5, &qword_100156038, &qword_10010E3F0);
      result = sub_100077240();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
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

unint64_t sub_10007746C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003AE84(&qword_100156008, &qword_10010E398);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = *i;

      v7 = v14;

      result = sub_10007519C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 16 * result) = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_100077594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100077648@<X0>(uint64_t *a2@<X8>)
{
  result = CalculateUnitCategory.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100077674(uint64_t a1)
{
  v1 = CalculateUnitCategory.id.getter();
  v3 = v2;
  if (v1 == CalculateUnitCategory.id.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

Swift::Int sub_100077758()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100077828(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000778F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000557C(*a1);
  *a2 = result;
  return result;
}

void sub_100077924(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6369736162;
  v4 = 0xE900000000000072;
  v5 = 0x657061506874616DLL;
  if (*v1 != 2)
  {
    v5 = 0x6D6D6172676F7270;
    v4 = 0xEA00000000007265;
  }

  if (*v1)
  {
    v3 = 0x6669746E65696373;
    v2 = 0xEA00000000006369;
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

unint64_t sub_100077A74()
{
  result = qword_100156088;
  if (!qword_100156088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156088);
  }

  return result;
}

uint64_t sub_100077AC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 12337;
  if (v2 != 1)
  {
    v3 = 13873;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 56;
  }

  if (v2)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE100000000000000;
  }

  v6 = 12337;
  if (*a2 != 1)
  {
    v6 = 13873;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 56;
  }

  if (*a2)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100077B94()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100077C14(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100077C80(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100077CFC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000782B8(*a1);
  *a2 = result;
  return result;
}

void sub_100077D2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 12337;
  if (v2 != 1)
  {
    v4 = 13873;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 56;
  }

  if (!v5)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_100077DAC()
{
  result = qword_1001560A0;
  if (!qword_1001560A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001560A0);
  }

  return result;
}

unint64_t sub_100077E04()
{
  result = qword_1001560A8;
  if (!qword_1001560A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001560A8);
  }

  return result;
}

uint64_t sub_100077E58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x4949435341;
  if (v2 != 1)
  {
    v4 = 0x65646F63696E55;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x4949435341;
  if (*a2 != 1)
  {
    v8 = 0x65646F63696E55;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100077F4C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100077FE4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100078068(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000780FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007826C(*a1);
  *a2 = result;
  return result;
}

void sub_10007812C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x4949435341;
  if (v2 != 1)
  {
    v5 = 0x65646F63696E55;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000781C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100078218()
{
  result = qword_1001560C0;
  if (!qword_1001560C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001560C0);
  }

  return result;
}

unint64_t sub_10007826C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100149018, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000782B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100149118, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100078304()
{
  result = qword_1001560C8;
  if (!qword_1001560C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001560C8);
  }

  return result;
}

uint64_t sub_100078368(uint64_t a1, char a2)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  if (a2)
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  else
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v4._countAndFlagsBits = 0x206573656854;
    v4._object = 0xE600000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v5._object = 0x8000000100106890;
    v5._countAndFlagsBits = 0xD00000000000003CLL;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
    LocalizedStringKey.init(stringInterpolation:)();
  }

  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t getEnumTagSinglePayload for CalculatorHistoryRecordDeletionMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CalculatorHistoryRecordDeletionMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10007851C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100078538(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_10007856C()
{
  result = qword_1001560D8;
  if (!qword_1001560D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001560D8);
  }

  return result;
}

double sub_1000786A0()
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  sub_10007BB74(&qword_100154BD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.getValue<A>(forKey:)();

  return result;
}

uint64_t sub_10007881C(uint64_t a1)
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_100078948(uint64_t a1)
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  PersistentModel.getValue<A>(forKey:)();

  return v2;
}

uint64_t sub_100078A68(uint64_t a1)
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  sub_10007BBE4(&qword_100154C38, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_100078B8C()
{
  v0 = type metadata accessor for Schema.Version();
  sub_100004078(v0, qword_100160AC8);
  sub_1000048C8(v0, qword_100160AC8);
  return Schema.Version.init(_:_:_:)();
}

uint64_t sub_100078BE4()
{
  sub_10003AE84(&qword_100154C20, &qword_10010C110);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10010BDE0;
  v1 = type metadata accessor for SchemaV1.HistoryRecord(0);
  v2 = sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_100078C78@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001544B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema.Version();
  v3 = sub_1000048C8(v2, qword_100160AC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_100078D2C(void *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  PersistentModel.getValue<A>(forKey:)();

  *a3 = v4;
  a3[1] = v5;
}

double sub_100078E54(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double sub_100078F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void sub_100079004(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  PersistentModel.getValue<A>(forKey:)();

  *a3 = v4;
}

double sub_10007912C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double sub_1000791F4(uint64_t a1, char a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

double sub_100079374@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  *&v5 = *a1;
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  sub_10007BBE4(&qword_100154C38, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  result = *&v5;
  *a3 = v5;
  return result;
}

double sub_1000794E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  sub_10007BBE4(&qword_100156220, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

double sub_1000795BC(uint64_t *a1)
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  sub_10007BB74(&qword_100154BD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.getValue<A>(forKey:)();

  return result;
}

uint64_t sub_1000796F4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return (*(v5 + 8))(v8, v4);
}

double sub_10007987C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  sub_10007BB74(&qword_100155650, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void sub_100079954(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Date();
  v51 = *(v5 - 8);
  __chkstk_darwin(v5);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[6] = sub_10003AE84(&qword_100156228, &qword_100114350);
  v7 = sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  *&v57 = v4;
  *(&v57 + 1) = v4;
  v58 = v7;
  v59 = v7;
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100019850(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  *&v57 = 0x6369736162;
  *(&v57 + 1) = 0xE500000000000000;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v57) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v57) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v57) = 1;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 8) = 257;
  ObservationRegistrar.init()();
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = sub_100075218(0);
  if ((v9 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_100007314(*(a1 + 56) + 32 * v8, v56);
  sub_100008F60(v56, &v57);
  swift_dynamicCast();
  v10 = v54;
  v11 = v55;
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v52 = v10;
  v53 = v11;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (!*(a1 + 16))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v12 = sub_100075218(1);
  if ((v13 & 1) == 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_100007314(*(a1 + 56) + 32 * v12, v56);
  sub_100008F60(v56, &v57);
  swift_dynamicCast();
  v14 = v54;
  v15 = v55;
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v52 = v14;
  v53 = v15;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (!*(a1 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v16 = sub_100075218(2);
  if ((v17 & 1) == 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_100007314(*(a1 + 56) + 32 * v16, v56);
  sub_100008F60(v56, &v57);
  swift_dynamicCast();
  v18 = v54;
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v52) = v18;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (!*(a1 + 16))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v19 = sub_100075218(3);
  if ((v20 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_100007314(*(a1 + 56) + 32 * v19, v56);
  sub_100008F60(v56, &v57);
  swift_dynamicCast();
  v21 = v54;
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v52) = v21;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (!*(a1 + 16))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v22 = sub_100075218(4);
  if ((v23 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_100007314(*(a1 + 56) + 32 * v22, v56);
  sub_100008F60(v56, &v57);
  swift_dynamicCast();
  v24 = v54;
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v52) = v24;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (!*(a1 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v25 = sub_100075218(5);
  if ((v26 & 1) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_100007314(*(a1 + 56) + 32 * v25, v56);
  sub_100008F60(v56, &v57);
  swift_dynamicCast();
  v27 = v54;
  v28 = v55;
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v52 = v27;
  v53 = v28;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (!*(a1 + 16))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v29 = sub_100075218(6);
  if ((v30 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_100007314(*(a1 + 56) + 32 * v29, v56);
  sub_100008F60(v56, &v57);
  swift_dynamicCast();
  v31 = v54;
  v32 = v55;
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v52 = v31;
  v53 = v32;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (*(a1 + 16) && (v33 = sub_100075218(7), (v34 & 1) != 0))
  {
    sub_100007314(*(a1 + 56) + 32 * v33, &v57);
    v35 = swift_dynamicCast();
    if (v35)
    {
      v36 = *&v56[0];
    }

    else
    {
      v36 = 0;
    }

    if (v35)
    {
      v37 = *(&v56[0] + 1);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  *&v57 = v36;
  *(&v57 + 1) = v37;
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  sub_10007BBE4(&qword_100156220, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 16) = 0;
  v38 = *(a1 + 16);
  v49 = v5;
  if (v38 && (v39 = sub_100075218(8), (v40 & 1) != 0))
  {
    sub_100007314(*(a1 + 56) + 32 * v39, &v57);
    v41 = swift_dynamicCast();
    if (v41)
    {
      v42 = *&v56[0];
    }

    else
    {
      v42 = 0;
    }

    if (v41)
    {
      v43 = *(&v56[0] + 1);
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  *&v57 = v42;
  *(&v57 + 1) = v43;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 17) = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_50;
  }

  v44 = sub_100075218(9);
  if (v45)
  {
    sub_100007314(*(a1 + 56) + 32 * v44, v56);

    sub_100008F60(v56, &v57);
    v46 = v49;
    v47 = v50;
    swift_dynamicCast();
    sub_100017F20(v2 + 3, v2[6]);
    swift_getKeyPath();
    sub_10007BB74(&qword_100155650, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    (*(v51 + 8))(v47, v46);
    return;
  }

LABEL_51:
  __break(1u);
}

unint64_t *sub_10007A434(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v36 = type metadata accessor for Date();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[6] = sub_10003AE84(&qword_100156228, &qword_100114350);
  v34 = type metadata accessor for SchemaV1.HistoryRecord;
  v6 = sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  v46 = v4;
  v47 = v4;
  v48 = v6;
  v49 = v6;
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100019850(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v46 = 0x6369736162;
  v47 = 0xE500000000000000;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v46) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v46) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v46) = 1;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 8) = 257;
  v33 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
  ObservationRegistrar.init()();
  v7 = *a1;
  v8 = *(a1 + 8);
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v46 = v7;
  v47 = v8;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v46 = v9;
  v47 = v10;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  LOBYTE(v9) = *(a1 + 32);
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v46) = v9;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  LOBYTE(v9) = *(a1 + 33);
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v46) = v9;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  LOBYTE(v9) = *(a1 + 34);
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v46) = v9;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v11 = sub_100080254(*(a1 + 40), *(a1 + 48));
  v13 = v12;
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v46 = v11;
  v47 = v13;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v14 = sub_100080254(*(a1 + 56), *(a1 + 64));
  v16 = v15;
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v46 = v14;
  v47 = v16;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v32 = *(type metadata accessor for GenericRecord(0) + 52);
  v17 = v37;
  v31 = *(v37 + 16);
  v18 = v35;
  v19 = v36;
  v31(v35, a1 + v32, v36);
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  sub_10007BB74(&qword_100155650, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v20 = *(v17 + 8);
  v37 = v17 + 8;
  v30 = v20;
  v20(v18, v19);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v46 = v2;
  swift_getKeyPath();
  v43 = v2;
  v44 = v21;
  v45 = v22;
  sub_10007BB74(&qword_100154BC0, v34, &unk_10010EB38);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v23 = a1;
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);
  v46 = v2;
  swift_getKeyPath();
  v40 = v2;
  v41 = v24;
  v42 = v25;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v26 = a1 + v32;
  v27 = v35;
  v28 = v36;
  v31(v35, v26, v36);
  v46 = v2;
  swift_getKeyPath();
  v38 = v2;
  v39 = v27;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v30(v27, v28);
  sub_10004B55C(v23);
  return v2;
}

unint64_t *sub_10007AC68(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_10003AE84(&qword_100156228, &qword_100114350);
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100019850((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  sub_100017F20((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100017F20((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100017F20((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100017F20((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 16) = 257;
  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100003F80((v1 + 24));
  sub_10007BD68(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10007AF14()
{
  sub_100003F80((v0 + 24));
  v1 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SchemaV1.HistoryRecord(uint64_t a1)
{
  result = qword_100156110;
  if (!qword_100156110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007B00C(uint64_t a1)
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

void sub_10007B0F4(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  PersistentModel.getValue<A>(forKey:)();

  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_10007B200(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_10007AC68(a1);
  return v2;
}

uint64_t sub_10007B288(__int128 *a1)
{
  swift_beginAccess();
  sub_100003F80((v1 + 24));
  sub_10007BD68(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_10007B2E0(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100062B18(v1 + 24, v4);
  return sub_10007B370;
}

void sub_10007B370(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_100062B18(*a1, v2 + 40);
    swift_beginAccess();
    sub_100003F80((v3 + 24));
    sub_10007BD68((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_100003F80(v2);
  }

  else
  {
    swift_beginAccess();
    sub_100003F80((v3 + 24));
    sub_10007BD68(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

Swift::Int sub_10007B42C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10007B504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10007B564(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_10007B774()
{
  sub_10003AE84(&qword_100156218, &qword_10010EC90);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10010EA10;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t sub_10007BB74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007BBE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(&qword_100154C40, &qword_10010CFA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007BD68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

NSString sub_10007BDC8()
{
  result = String._bridgeToObjectiveC()();
  qword_100160AE8 = result;
  return result;
}

NSString sub_10007BE00()
{
  result = String._bridgeToObjectiveC()();
  qword_100160AF0 = result;
  return result;
}

NSString sub_10007BE38()
{
  result = String._bridgeToObjectiveC()();
  qword_100160AF8 = result;
  return result;
}

NSString sub_10007BE70()
{
  result = String._bridgeToObjectiveC()();
  qword_100160B08 = result;
  return result;
}

NSString sub_10007BEA8()
{
  result = String._bridgeToObjectiveC()();
  qword_100160B10 = result;
  return result;
}

NSString sub_10007BEE0()
{
  result = String._bridgeToObjectiveC()();
  qword_100160B20 = result;
  return result;
}

NSString sub_10007BF18()
{
  result = String._bridgeToObjectiveC()();
  qword_100160B28 = result;
  return result;
}

uint64_t sub_10007BF50()
{
  swift_getKeyPath();
  sub_10007C7AC(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007C7AC(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  sub_10004B3E8();
  PersistentModel.getValue<A>(forKey:)();

  result = v1;
  if (v1)
  {

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    return 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HistoryRecordKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HistoryRecordKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for GenericRecord(uint64_t a1)
{
  result = qword_100156288;
  if (!qword_100156288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007C2A0(uint64_t a1)
{
  sub_10007C350();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10007C350()
{
  if (!qword_100156298)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100156298);
    }
  }
}

uint64_t sub_10007C3A0(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 32));
  Hasher._combine(_:)(*(v1 + 33));
  Hasher._combine(_:)(*(v1 + 34));
  String.hash(into:)();
  String.hash(into:)();
  if (!*(v1 + 80))
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 96))
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v1 + 96))
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_6:
  type metadata accessor for GenericRecord(0);
  type metadata accessor for Date();
  sub_10007C7AC(&qword_1001562F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

double sub_10007C4F0@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

Swift::Int sub_10007C4FC()
{
  Hasher.init(_seed:)();
  sub_10007C3A0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10007C540(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10007C3A0(v2);
  return Hasher._finalize()();
}

unint64_t sub_10007C5CC()
{
  result = qword_1001562F0;
  if (!qword_1001562F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001562F0);
  }

  return result;
}

uint64_t sub_10007C620(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33) || *(a1 + 34) != *(a2 + 34) || (a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((a1[7] != *(a2 + 56) || a1[8] != *(a2 + 64)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[10];
  v8 = *(a2 + 80);
  if (v7)
  {
    if (!v8 || (a1[9] != *(a2 + 72) || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[12];
  v10 = *(a2 + 96);
  if (v9)
  {
    if (v10 && (a1[11] == *(a2 + 88) && v9 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_35;
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_35:
  v11 = *(type metadata accessor for GenericRecord(0) + 52);

  return static Date.== infix(_:_:)(a1 + v11, a2 + v11);
}

uint64_t sub_10007C7AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for CalculatorAppView(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CalculatorAppView(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10007C8E8()
{
  result = qword_100156300;
  if (!qword_100156300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156300);
  }

  return result;
}

unint64_t sub_10007C948()
{
  result = qword_100156308;
  if (!qword_100156308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156308);
  }

  return result;
}

Swift::Int sub_10007C99C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10007C9E0(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10007CA34()
{
  result = sub_100027954(&off_1001491D0);
  static CalculatorButtonRepresentable.shiftableButtons = result;
  return result;
}

uint64_t *CalculatorButtonRepresentable.shiftableButtons.unsafeMutableAddressor()
{
  if (qword_100154508 != -1)
  {
    swift_once();
  }

  return &static CalculatorButtonRepresentable.shiftableButtons;
}

Swift::Int sub_10007CAD0()
{
  result = sub_100027954(&off_100149200);
  static CalculatorButtonRepresentable.alternateRPNButtons = result;
  return result;
}

uint64_t *CalculatorButtonRepresentable.alternateRPNButtons.unsafeMutableAddressor()
{
  if (qword_100154510 != -1)
  {
    swift_once();
  }

  return &static CalculatorButtonRepresentable.alternateRPNButtons;
}

Swift::Int sub_10007CB6C()
{
  result = sub_100027954(&off_100149228);
  static CalculatorButtonRepresentable.swappableButtons = result;
  return result;
}

uint64_t *CalculatorButtonRepresentable.swappableButtons.unsafeMutableAddressor()
{
  if (qword_100154518 != -1)
  {
    swift_once();
  }

  return &static CalculatorButtonRepresentable.swappableButtons;
}

Swift::Int sub_10007CC08()
{
  result = sub_100027954(&off_100149250);
  static CalculatorButtonRepresentable.attributedTitledButtons = result;
  return result;
}

uint64_t *CalculatorButtonRepresentable.attributedTitledButtons.unsafeMutableAddressor()
{
  if (qword_100154520 != -1)
  {
    swift_once();
  }

  return &static CalculatorButtonRepresentable.attributedTitledButtons;
}

double sub_10007CCA4(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

unint64_t sub_10007CD10@<X0>(Swift::Int *a1@<X0>, Calculator::CalculatorButtonRepresentable_optional *a2@<X8>)
{
  result = _s10Calculator0A19ButtonRepresentableO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

Calculator::CalculatorButtonRepresentable __swiftcall CalculatorButtonRepresentable.shiftedButton(isRPN:)(Swift::Bool isRPN)
{
  result = Calculator_CalculatorButtonRepresentable_exponentialBase2;
  switch(v1)
  {
    case Calculator_CalculatorButtonRepresentable_power:
      v4 = !isRPN;
      v5 = Calculator_CalculatorButtonRepresentable_power;
      goto LABEL_14;
    case Calculator_CalculatorButtonRepresentable_exponential:
      if (isRPN)
      {
        result = Calculator_CalculatorButtonRepresentable_power;
      }

      else
      {
        result = Calculator_CalculatorButtonRepresentable_exponentialBaseY;
      }

      break;
    case Calculator_CalculatorButtonRepresentable_exponentialBase10:
      return result;
    case Calculator_CalculatorButtonRepresentable_logarithmNatural:
      result = Calculator_CalculatorButtonRepresentable_logarithm;
      break;
    case Calculator_CalculatorButtonRepresentable_logarithmBase10:
      result = Calculator_CalculatorButtonRepresentable_logarithmBase2;
      break;
    case Calculator_CalculatorButtonRepresentable_sine:
      result = Calculator_CalculatorButtonRepresentable_inverseSine;
      break;
    case Calculator_CalculatorButtonRepresentable_cosine:
      result = Calculator_CalculatorButtonRepresentable_inverseCosine;
      break;
    case Calculator_CalculatorButtonRepresentable_tangent:
      result = Calculator_CalculatorButtonRepresentable_inverseTangent;
      break;
    case Calculator_CalculatorButtonRepresentable_hyperbolicSine:
      result = Calculator_CalculatorButtonRepresentable_inverseHyperbolicSine;
      break;
    case Calculator_CalculatorButtonRepresentable_hyperbolicCosine:
      result = Calculator_CalculatorButtonRepresentable_inverseHyperbolicCosine;
      break;
    case Calculator_CalculatorButtonRepresentable_hyperbolicTangent:
      result = Calculator_CalculatorButtonRepresentable_inverseHyperbolicTangent;
      break;
    case Calculator_CalculatorButtonRepresentable_exponentialBaseY:
      v4 = !isRPN;
      v5 = Calculator_CalculatorButtonRepresentable_exponential;
LABEL_14:
      if (v4)
      {
        result = v5;
      }

      else
      {
        result = Calculator_CalculatorButtonRepresentable_exponentialBaseY;
      }

      break;
    case Calculator_CalculatorButtonRepresentable_exponentialBase2:
      result = Calculator_CalculatorButtonRepresentable_exponentialBase10;
      break;
    case Calculator_CalculatorButtonRepresentable_logarithm:
      result = Calculator_CalculatorButtonRepresentable_logarithmNatural;
      break;
    case Calculator_CalculatorButtonRepresentable_logarithmBase2:
      result = Calculator_CalculatorButtonRepresentable_logarithmBase10;
      break;
    case Calculator_CalculatorButtonRepresentable_inverseSine:
      result = Calculator_CalculatorButtonRepresentable_sine;
      break;
    case Calculator_CalculatorButtonRepresentable_inverseCosine:
      result = Calculator_CalculatorButtonRepresentable_cosine;
      break;
    case Calculator_CalculatorButtonRepresentable_inverseTangent:
      result = Calculator_CalculatorButtonRepresentable_tangent;
      break;
    case Calculator_CalculatorButtonRepresentable_inverseHyperbolicSine:
      result = Calculator_CalculatorButtonRepresentable_hyperbolicSine;
      break;
    case Calculator_CalculatorButtonRepresentable_inverseHyperbolicCosine:
      result = Calculator_CalculatorButtonRepresentable_hyperbolicCosine;
      break;
    case Calculator_CalculatorButtonRepresentable_inverseHyperbolicTangent:
      result = Calculator_CalculatorButtonRepresentable_hyperbolicTangent;
      break;
    default:
      result = v1;
      break;
  }

  return result;
}

Calculator::CalculatorButtonRepresentable __swiftcall CalculatorButtonRepresentable.alternateRPNButton()()
{
  if (result > Calculator_CalculatorButtonRepresentable_cubeRoot)
  {
    if (result == Calculator_CalculatorButtonRepresentable_root)
    {
      return 38;
    }

    else if (result == Calculator_CalculatorButtonRepresentable_exponentialBaseY)
    {
      return 31;
    }
  }

  else if (result == Calculator_CalculatorButtonRepresentable_equals)
  {
    return 93;
  }

  else if (result == Calculator_CalculatorButtonRepresentable_power)
  {
    return 56;
  }

  return result;
}

Calculator::CalculatorButtonRepresentable __swiftcall CalculatorButtonRepresentable.editableButton(_:)(Swift::Bool a1)
{
  if (v1 == Calculator_CalculatorButtonRepresentable_allClear)
  {
    v2 = Calculator_CalculatorButtonRepresentable_clear;
  }

  else
  {
    v2 = v1;
  }

  if (v1 == Calculator_CalculatorButtonRepresentable_clear)
  {
    v3 = Calculator_CalculatorButtonRepresentable_allClear;
  }

  else
  {
    v3 = v1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::String __swiftcall CalculatorButtonRepresentable.stringValue()()
{
  v1 = v0;
  v2 = 0xE100000000000000;
  v3 = 48;
  switch(v1)
  {
    case 1:
      v2 = 0xE200000000000000;
      v3 = 17217;
      break;
    case 2:
    case 68:
      v3 = 67;
      break;
    case 3:
      v2 = 0xE300000000000000;
      v3 = 2961195;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x746E6563726570;
      break;
    case 5:
      v2 = 0xA200000000000000;
      v3 = 47043;
      break;
    case 6:
      v2 = 0xA200000000000000;
      v3 = 38851;
      break;
    case 7:
      v2 = 0xA300000000000000;
      v3 = 9603298;
      break;
    case 8:
      v3 = 43;
      break;
    case 9:
      v3 = 61;
      break;
    case 10:
      v2 = 0xE700000000000000;
      v3 = 0x6C616D69636564;
      break;
    case 11:
      v2 = 0xE400000000000000;
      v3 = 1701080941;
      break;
    case 12:
      break;
    case 13:
      v3 = 49;
      break;
    case 14:
      v3 = 50;
      break;
    case 15:
      v3 = 51;
      break;
    case 16:
      v3 = 52;
      break;
    case 17:
      v3 = 53;
      break;
    case 18:
      v3 = 54;
      break;
    case 19:
      v3 = 55;
      break;
    case 20:
      v3 = 56;
      break;
    case 21:
      v3 = 57;
      break;
    case 22:
      v2 = 0xA400000000000000;
      v3 = 680427746;
      break;
    case 23:
      v2 = 0xA400000000000000;
      v3 = 697204962;
      break;
    case 24:
      v2 = 0xE200000000000000;
      v3 = 25453;
      break;
    case 25:
      v2 = 0xE200000000000000;
      v3 = 11117;
      break;
    case 26:
      v2 = 0xE200000000000000;
      v3 = 11629;
      break;
    case 27:
      v2 = 0xE200000000000000;
      v3 = 29293;
      break;
    case 28:
      v3 = 6581810;
      v2 = 0xE300000000000000;
      break;
    case 29:
      v2 = 0xA300000000000000;
      v3 = 11715192;
      break;
    case 30:
      v3 = 11780728;
      v2 = 0xA300000000000000;
      break;
    case 31:
      v2 = 0xA300000000000000;
      v3 = 12110456;
      break;
    case 32:
      v3 = 10734437;
      v2 = 0xA300000000000000;
      break;
    case 33:
      v2 = 0xA400000000000000;
      v3 = 2748002353;
      break;
    case 34:
      v2 = 0xE300000000000000;
      v3 = 7876401;
      break;
    case 35:
      v3 = 1953657203;
      v2 = 0xE400000000000000;
      break;
    case 36:
      v2 = 0xE400000000000000;
      v3 = 1953653347;
      break;
    case 37:
      v2 = 0xA500000000000000;
      v3 = 0x789A88E279;
      break;
    case 38:
      v2 = 0xA500000000000000;
      v3 = 0x799A88E278;
      break;
    case 39:
      v2 = 0xE200000000000000;
      v3 = 28268;
      break;
    case 40:
      v3 = 6778732;
      v2 = 0xE300000000000000;
      break;
    case 41:
      v2 = 0xE90000000000006CLL;
      v3 = 0x6169726F74636166;
      break;
    case 42:
      v3 = 7235955;
      v2 = 0xE300000000000000;
      break;
    case 43:
      v2 = 0xE300000000000000;
      v3 = 7565155;
      break;
    case 44:
      v2 = 0xE300000000000000;
      v3 = 7233908;
      break;
    case 45:
      v3 = 101;
      break;
    case 46:
      v2 = 0xE200000000000000;
      v3 = 17733;
      break;
    case 47:
      v2 = 0xE300000000000000;
      v3 = 6578546;
      break;
    case 48:
      v3 = 1752066419;
      v2 = 0xE400000000000000;
      break;
    case 49:
      v2 = 0xE400000000000000;
      v3 = 1752395619;
      break;
    case 50:
      v2 = 0xE400000000000000;
      v3 = 1752064372;
      break;
    case 51:
      v2 = 0xE200000000000000;
      v3 = 26992;
      break;
    case 52:
      v2 = 0xE600000000000000;
      v3 = 0x6D6F646E6152;
      break;
    case 53:
      v2 = 0xE600000000000000;
      v3 = 0x6574656C6564;
      break;
    case 54:
      v2 = 0xE500000000000000;
      v3 = 0x616D6D6F63;
      break;
    case 55:
      v2 = 0xE300000000000000;
      v3 = 6776164;
      break;
    case 56:
      v3 = 10734457;
      v2 = 0xA300000000000000;
      break;
    case 57:
      v2 = 0xA300000000000000;
      v3 = 10734386;
      break;
    case 58:
      v2 = 0xE400000000000000;
      v3 = 2036821868;
      break;
    case 59:
      v2 = 0xE400000000000000;
      v3 = 845639532;
      break;
    case 60:
      v2 = 0xE400000000000000;
      v3 = 1852404577;
      break;
    case 61:
      v2 = 0xE400000000000000;
      v3 = 1936679777;
      break;
    case 62:
      v2 = 0xE400000000000000;
      v3 = 1851880545;
      break;
    case 63:
      v2 = 0xE500000000000000;
      v3 = 0x686E697361;
      break;
    case 64:
      v2 = 0xE500000000000000;
      v3 = 0x68736F6361;
      break;
    case 65:
      v2 = 0xE500000000000000;
      v3 = 0x686E617461;
      break;
    case 66:
      v3 = 65;
      break;
    case 67:
      v3 = 66;
      break;
    case 69:
      v3 = 68;
      break;
    case 70:
      v3 = 69;
      break;
    case 71:
      v3 = 70;
      break;
    case 72:
      v2 = 0xE200000000000000;
      v3 = 17990;
      break;
    case 73:
      v2 = 0xE200000000000000;
      v3 = 12336;
      break;
    case 74:
      v2 = 0xE300000000000000;
      v3 = 4476481;
      break;
    case 75:
      v2 = 0xE200000000000000;
      v3 = 21071;
      break;
    case 76:
      v2 = 0xE300000000000000;
      v3 = 5394254;
      break;
    case 77:
      v3 = 5394264;
      v2 = 0xE300000000000000;
      break;
    case 78:
      v2 = 0xA500000000000000;
      v3 = 0x3E3E8E80E2;
      break;
    case 79:
      v2 = 0xA500000000000000;
      v3 = 0x3C3C8E80E2;
      break;
    case 80:
      v2 = 0xE400000000000000;
      v3 = 1497251416;
      break;
    case 81:
      v2 = 0xE400000000000000;
      v3 = 1497119832;
      break;
    case 82:
      v2 = 0xE300000000000000;
      v3 = 5402450;
      break;
    case 83:
      v2 = 0xE300000000000000;
      v3 = 5009234;
      break;
    case 84:
      v2 = 0xA700000000000000;
      v3 = 0x8882E270696C66;
      break;
    case 85:
      v2 = 0xAA00000000008682;
      v3 = 0xE28182E270696C66;
      break;
    case 86:
      v2 = 0xE300000000000000;
      v3 = 4670798;
      break;
    case 87:
      v2 = 0xE300000000000000;
      v3 = 5525326;
      break;
    case 88:
      v3 = 6582125;
      v2 = 0xE300000000000000;
      break;
    case 89:
      v2 = 0xE400000000000000;
      v3 = 1886351972;
      break;
    case 90:
      v2 = 0xA500000000000000;
      v3 = 0x799486E278;
      break;
    case 91:
      v2 = 0xA400000000000000;
      v3 = 2441536082;
      break;
    case 92:
      v2 = 0xA400000000000000;
      v3 = 2475090514;
      break;
    case 93:
      v2 = 0xE500000000000000;
      v3 = 0x7265746E65;
      break;
    default:
      v2 = 0xE400000000000000;
      v3 = 1701736302;
      break;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

void sub_10007D46C(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  switch(a2)
  {
    case 4:
      if (qword_100154728 != -1)
      {
        swift_once();
      }

      v8 = sub_100003D58();
      v7 = [v8 percentSymbol];

      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 10:
      if (qword_100154728 != -1)
      {
        swift_once();
      }

      v6 = sub_100003D58();
      v7 = [v6 decimalSeparator];

      if (v7)
      {
LABEL_11:
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
LABEL_13:
        __break(1u);
      }

      break;
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 73:
      v5 = CalculatorButtonRepresentable.stringValue()();
      sub_10007E118(v5._countAndFlagsBits, v5._object);

      break;
    case 89:
    case 93:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      break;
    default:
      return;
  }
}

void sub_10007DBB4(char a1)
{
  switch(a1)
  {
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 46:
    case 48:
    case 49:
    case 50:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
      return;
    default:
      sub_10007D46C(0, a1);
      break;
  }
}

uint64_t sub_10007DDB0@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v5 = sub_10003AE84(&qword_100156320, &unk_10010F210);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for CalculateExpression.CalculatorButton();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_100025E90(a1))
  {
    if (a1 <= 0x1Au)
    {
      switch(a1)
      {
        case 24:
          v15 = &enum case for CalculateExpression.CalculatorButton.memoryClear(_:);
          goto LABEL_22;
        case 25:
          v15 = &enum case for CalculateExpression.CalculatorButton.memoryAdd(_:);
          goto LABEL_22;
        case 26:
          v15 = &enum case for CalculateExpression.CalculatorButton.memorySubtract(_:);
          goto LABEL_22;
      }
    }

    else if (a1 > 0x2Eu)
    {
      if (a1 == 55)
      {
        v15 = &enum case for CalculateExpression.CalculatorButton.degrees(_:);
        goto LABEL_22;
      }

      if (a1 == 47)
      {
        v15 = &enum case for CalculateExpression.CalculatorButton.radians(_:);
        goto LABEL_22;
      }
    }

    else
    {
      if (a1 == 27)
      {
        v15 = &enum case for CalculateExpression.CalculatorButton.memoryRecall(_:);
        goto LABEL_22;
      }

      if (a1 == 28)
      {
        v15 = &enum case for CalculateExpression.CalculatorButton.second(_:);
LABEL_22:
        (*(v9 + 104))(v7, *v15, v8);
        (*(v9 + 56))(v7, 0, 1, v8);
        (*(v9 + 32))(v11, v7, v8);
        CalculateExpression.label(for:fontSize:)();
        (*(v9 + 8))(v11, v8);
        v17 = type metadata accessor for CalculateExpression.Label();
        return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
      }
    }

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_10007E2C4(v7);
    v16 = type metadata accessor for CalculateExpression.Label();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  CalculateExpression.label(for:fontSize:)();

  v12 = type metadata accessor for CalculateExpression.Label();
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, 0, 1, v12);
}

uint64_t sub_10007E118(uint64_t a1, uint64_t a2)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v3 = sub_100003D58();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 numberFromString:v4];

  if (!v5)
  {
    v5 = v3;
LABEL_8:

    return a1;
  }

  v6 = [v3 stringFromNumber:v5];
  if (!v6)
  {

    goto LABEL_8;
  }

  v7 = v6;
  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return a1;
}

unint64_t _s10Calculator0A19ButtonRepresentableO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 0x5E)
  {
    return 94;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalculatorButtonRepresentable(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA3)
  {
    goto LABEL_17;
  }

  if (a2 + 93 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 93) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 93;
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

      return (*a1 | (v4 << 8)) - 93;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 93;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x5E;
  v8 = v6 - 94;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10007E2C4(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100156320, &unk_10010F210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10007E32C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007E340(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10007E388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10007E3F8@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v3 - 8);
  if (v1[2])
  {

    LocalizedStringResource.init(stringLiteral:)();
    Text.init(_:)();
  }

  else
  {
    v9 = *v1;
    sub_10006345C();

    Text.init<A>(_:)();
  }

  _ConditionalContent<>.init(storage:)();
  v4 = *(v1 + 3);
  KeyPath = swift_getKeyPath();
  v6 = *(v1 + 2);
  v7 = swift_getKeyPath();

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 120) = v12;
  *(a1 + 136) = v13;
  *(a1 + 152) = v14;
  *(a1 + 168) = v15;
  result = *&v9;
  *(a1 + 72) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v4;
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  *(a1 + 88) = v10;
  *(a1 + 104) = v11;
  return result;
}

unint64_t sub_10007E604()
{
  result = qword_100156328;
  if (!qword_100156328)
  {
    sub_10003AECC(&qword_100156330, &qword_10010F328);
    sub_10007E690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156328);
  }

  return result;
}

unint64_t sub_10007E690()
{
  result = qword_100156338;
  if (!qword_100156338)
  {
    sub_10003AECC(&qword_100156340, &qword_10010F330);
    sub_10007E734();
    sub_10007E85C(&qword_100156378, &qword_100156380, &qword_100112E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156338);
  }

  return result;
}

unint64_t sub_10007E734()
{
  result = qword_100156348;
  if (!qword_100156348)
  {
    sub_10003AECC(&qword_100156350, &qword_10010F338);
    sub_10007E7D8();
    sub_10007E85C(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156348);
  }

  return result;
}

unint64_t sub_10007E7D8()
{
  result = qword_100156358;
  if (!qword_100156358)
  {
    sub_10003AECC(&qword_100156360, &qword_10010F340);
    sub_10000A948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156358);
  }

  return result;
}

uint64_t sub_10007E85C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007E8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10007E8F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10007E970()
{
  LocalizedStringKey.init(stringLiteral:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v1 = v0;
  v3 = v2;
  sub_10003AE84(&qword_100155868, &qword_10010DB60);
  Binding.projectedValue.getter();
  sub_10003AE84(&qword_100156388, &qword_10010F418);
  sub_10003AE84(&qword_100156390, &qword_10010F420);
  sub_100004880(&qword_100156398, &qword_100156388, &qword_10010F418, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100004880(&qword_1001563A0, &qword_100156390, &qword_10010F420, &protocol conformance descriptor for TupleView<A>);
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)();

  sub_10000C6AC(v5, v1, v3 & 1);
}

uint64_t sub_10007EB90@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = sub_10003AE84(&qword_1001563A8, &qword_10010F428);
  __chkstk_darwin(v3);
  v38 = sub_10003AE84(&qword_1001563B0, &unk_10010F430);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v34 - v6;
  v7 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v35 = *(v10 - 8);
  v11 = v35;
  __chkstk_darwin(v10);
  v40 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  static ButtonRole.destructive.getter();
  v16 = type metadata accessor for ButtonRole();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  v45 = *a1;
  v17 = swift_allocObject();
  v18 = *(a1 + 1);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(a1 + 2);
  *(v17 + 64) = a1[6];
  v43 = a1;
  sub_100015064(&v45, v44);

  v19 = v15;
  v34 = v15;
  Button.init(role:action:label:)();
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  v42 = a1;
  v44[0] = &type metadata for Solarium;
  v44[1] = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440, &protocol conformance descriptor for Button<A>);
  v20 = v41;
  v21 = v10;
  StaticIf<>.init<>(_:then:)();
  v22 = *(v11 + 16);
  v23 = v40;
  v22(v40, v19, v10);
  v25 = v36;
  v24 = v37;
  v26 = *(v36 + 16);
  v27 = v20;
  v28 = v38;
  v26(v37, v27, v38);
  v29 = v39;
  v22(v39, v23, v21);
  v30 = sub_10003AE84(&qword_1001563C0, &qword_10010F448);
  v26(&v29[*(v30 + 48)], v24, v28);
  v31 = *(v25 + 8);
  v31(v41, v28);
  v32 = *(v35 + 8);
  v32(v34, v21);
  v31(v24, v28);
  return (v32)(v40, v21);
}

uint64_t sub_10007F078(uint64_t *a1)
{
  v2 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  __chkstk_darwin(v2 - 8);
  v4 = &v9[-v3];
  static ButtonRole.cancel.getter();
  v5 = type metadata accessor for ButtonRole();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v12 = *a1;
  v6 = swift_allocObject();
  v7 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 2);
  *(v6 + 64) = a1[6];
  v10 = a1;
  sub_100015064(&v12, v11);

  return Button.init(role:action:label:)();
}

uint64_t sub_10007F1F0(void (**a1)(void))
{
  a1[5]();
  sub_10003AE84(&qword_100155868, &qword_10010DB60);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10007F25C@<X0>(uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10007F2F8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10007F3B4@<X0>(uint64_t a1@<X8>)
{
  result = sub_100078368(*(*(v1 + 16) + 24), *(*(v1 + 16) + 32));
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_10007F470()
{
  result = static Color.secondary.getter();
  qword_100160B60 = result;
  return result;
}

uint64_t sub_10007F4E8()
{
  result = static Color.primary.getter();
  qword_100160B78 = result;
  return result;
}

uint64_t sub_10007F534()
{
  result = static Color.white.getter();
  qword_100160B88 = result;
  return result;
}

uint64_t sub_10007F580()
{
  result = static Color.white.getter();
  qword_100160B98 = result;
  return result;
}

uint64_t sub_10007F5F8()
{
  result = static Color.secondary.getter();
  qword_100160BB0 = result;
  return result;
}

uint64_t sub_10007F618()
{
  result = static Color.secondary.getter();
  qword_100160BB8 = result;
  return result;
}

uint64_t sub_10007F638()
{
  result = static Color.primary.getter();
  qword_100160BC0 = result;
  return result;
}

uint64_t sub_10007F658()
{
  result = static Color.secondary.getter();
  qword_100160BC8 = result;
  return result;
}

uint64_t sub_10007F678()
{
  result = static Color.red.getter();
  qword_100160BD0 = result;
  return result;
}

uint64_t sub_10007F6C4()
{
  result = static Color.secondary.getter();
  qword_100160BE0 = result;
  return result;
}

uint64_t sub_10007F70C()
{
  result = static Color.gray.getter();
  qword_100160BF8 = result;
  return result;
}

uint64_t sub_10007F76C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(uiColor:)();
  *a3 = result;
  return result;
}

uint64_t sub_10007F7E0(uint64_t a1)
{
  result = static Color.clear.getter();
  qword_100160C18 = result;
  return result;
}

void sub_10007F87C()
{
  if (qword_100154528 != -1)
  {
    swift_once();
  }

  v1 = sub_10007F8FC(v0, 20.0, 20.0, 20.0);

  qword_100160C50 = v1;
}

CGColorSpace *sub_10007F8FC(uint64_t a1, double a2, double a3, double a4)
{
  v5 = type metadata accessor for Color.RGBColorSpace();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007FBD8();

  v9 = UIColor.init(_:)();
  v10 = [v9 CGColor];

  result = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  if (result)
  {
    v12 = result;
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(result, kCGRenderingIntentDefault, v10, 0);

    if (CopyByMatchingToColorSpace)
    {
      v14 = CGColorRef.components.getter();
      if (v14)
      {
        if (*(v14 + 16) >= 3uLL)
        {

          (*(v6 + 104))(v8, enum case for Color.RGBColorSpace.sRGB(_:), v5);
          a1 = Color.init(_:red:green:blue:opacity:)();

          return a1;
        }
      }

      else
      {
      }
    }

    return a1;
  }

  __break(1u);
  return result;
}

void sub_10007FB84(double a1, uint64_t a2, uint64_t *a3)
{
  static Color.white.getter();
  v4 = Color.opacity(_:)();

  *a3 = v4;
}

unint64_t sub_10007FBD8()
{
  result = qword_1001563C8;
  if (!qword_1001563C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001563C8);
  }

  return result;
}

uint64_t sub_10007FC24()
{
  sub_100010DA8();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t EnvironmentValues.isModeMenuPresented.getter()
{
  sub_100010DA8();
  EnvironmentValues.subscript.getter();
  sub_10003AE84(&qword_1001563E8, &qword_10010F470);
  Binding.wrappedValue.getter();

  return v1;
}

uint64_t storeEnumTagSinglePayload for HistoryPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_10007FE04(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100081D94(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager, &unk_10010E108);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

id sub_10007FF40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_100007314((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

id sub_10007FF90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_100007314(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_100008F60(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_1000035CC(&v18, &qword_1001564A0, &qword_10010F560);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1000800E0()
{
  if (!os_variant_has_internal_diagnostics())
  {
    return _swiftEmptyArrayStorage;
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100160D68;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10003AE84(&qword_100156490, &qword_10010F550);
  type metadata accessor for Locale();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10010BDE0;
  Locale.init(identifier:)();
  return v3;
}

uint64_t sub_100080254(uint64_t a1, uint64_t a2)
{
  v18[1] = a1;
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for CalculateExpression.Base();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003AE84(&qword_100156488, &qword_10010F548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  v8 = CalculateKeyLocales;
  *(inited + 32) = CalculateKeyLocales;

  v9 = v8;
  v10 = sub_1000800E0();
  v11 = sub_10003AE84(&qword_100156498, &qword_10010F558);
  *(inited + 40) = v10;
  v12 = CalculateKeyAllowPartialExpressions;
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  v13 = objc_allocWithZone(NSNumber);
  v14 = v12;
  v15 = [v13 initWithBool:1];
  *(inited + 104) = sub_1000050A0(0, &qword_100155280, NSNumber_ptr);
  *(inited + 80) = v15;
  sub_100008E44(inited);
  swift_setDeallocating();
  sub_10003AE84(&qword_100156018, &qword_10010E3A0);
  swift_arrayDestroy();
  (*(v4 + 104))(v6, enum case for CalculateExpression.Base.base10(_:), v3);
  UUID.init()();
  type metadata accessor for CalculateExpression();
  swift_allocObject();
  CalculateExpression.init(_:options:base:id:)();
  sub_10003AE84(&qword_100156490, &qword_10010F550);
  type metadata accessor for Locale();
  *(swift_allocObject() + 16) = xmmword_10010BDE0;
  Locale.init(identifier:)();
  CalculateExpression.locales.setter();
  v16 = CalculateExpression.expression.getter();

  return v16;
}

void sub_100080588(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v43 = a1;
  v44 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v45 = v8;
  v46 = 0;
  v47 = v11 & v9;
  v48 = a2;
  v49 = a3;

  sub_10007FF90(&v41);
  v12 = v41;
  if (!v41)
  {
    goto LABEL_25;
  }

  sub_100008F60(v42, v40);
  v13 = *a5;
  v14 = sub_100075214(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_10007574C(v19, a4 & 1);
    v14 = sub_100075214(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CalculateKey(0);
    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = v14;
    sub_1000760F8();
    v14 = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = v14;

    v24 = (v22[7] + 32 * v23);
    sub_100003F80(v24);
    sub_100008F60(v40, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(v14 >> 6) + 8] |= 1 << v14;
  *(v22[6] + 8 * v14) = v12;
  sub_100008F60(v40, (v22[7] + 32 * v14));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_10007FF90(&v41);
    v12 = v41;
    if (v41)
    {
      v20 = 1;
      do
      {
        sub_100008F60(v42, v40);
        v30 = *a5;
        v31 = sub_100075214(v12);
        v33 = v30[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v30[3] < v35)
        {
          sub_10007574C(v35, 1);
          v31 = sub_100075214(v12);
          if ((a4 & 1) != (v36 & 1))
          {
            goto LABEL_8;
          }
        }

        v37 = *a5;
        if (a4)
        {
          v28 = v31;

          v29 = (v37[7] + 32 * v28);
          sub_100003F80(v29);
          sub_100008F60(v40, v29);
        }

        else
        {
          v37[(v31 >> 6) + 8] |= 1 << v31;
          *(v37[6] + 8 * v31) = v12;
          sub_100008F60(v40, (v37[7] + 32 * v31));
          v38 = v37[2];
          v18 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v37[2] = v39;
        }

        sub_10007FF90(&v41);
        v12 = v41;
      }

      while (v41);
    }

LABEL_25:
    sub_10004B164(v43);

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_100080868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v27 = a1;
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for CalculateExpression.Base();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003AE84(&qword_100156488, &qword_10010F548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010F520;
  v10 = CalculateKeyLocales;
  *(inited + 32) = CalculateKeyLocales;
  sub_10003AE84(&qword_100156490, &qword_10010F550);
  type metadata accessor for Locale();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10010BDE0;
  v12 = v10;
  Locale.init(identifier:)();
  v13 = sub_10003AE84(&qword_100156498, &qword_10010F558);
  *(inited + 40) = v11;
  v14 = CalculateKeyAllowPartialExpressions;
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  v15 = objc_allocWithZone(NSNumber);
  v16 = v14;
  v17 = [v15 initWithBool:{1, v27, v28}];
  v18 = sub_1000050A0(0, &qword_100155280, NSNumber_ptr);
  *(inited + 80) = v17;
  v19 = CalculateKeyScientificNotationFormat;
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v20 = objc_allocWithZone(NSNumber);
  v21 = v19;
  v22 = [v20 initWithUnsignedInteger:0];
  *(inited + 144) = v18;
  *(inited + 120) = v22;
  v23 = sub_100008E44(inited);
  swift_setDeallocating();
  sub_10003AE84(&qword_100156018, &qword_10010E3A0);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v23;
  sub_100080588(a3, sub_10007FF40, 0, isUniquelyReferenced_nonNull_native, &v29);

  (*(v6 + 104))(v8, enum case for CalculateExpression.Base.base10(_:), v5);

  UUID.init()();
  type metadata accessor for CalculateExpression();
  swift_allocObject();
  v25 = CalculateExpression.init(_:options:base:id:)();
  sub_1000800E0();
  CalculateExpression.locales.setter();
  return v25;
}

void sub_100080C2C(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4)
{
  if (a2)
  {
    sub_100080254(a1, a2);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v7 = qword_100160D68;
  if (v6)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  v10 = String._bridgeToObjectiveC()();
  [v7 setObject:a4 forKey:v10];
  swift_unknownObjectRelease();
}

void sub_100080D98()
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100160D68;
  v1 = String._bridgeToObjectiveC()();
  [v0 setURL:0 forKey:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setURL:0 forKey:v2];
}

void sub_100080E84(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  __chkstk_darwin(v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  sub_100081D24(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000035CC(v10, &qword_100155078, &qword_10010DBA0);
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000048C8(v18, qword_100160D38);
    sub_100081D24(a1, v7);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = v22;
      *v21 = 136315138;
      sub_100081D24(v7, v4);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      sub_1000035CC(v7, &qword_100155078, &qword_10010DBA0);
      v26 = sub_100006E5C(v23, v25, &v45);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Can't open URL: %s", v21, 0xCu);
      sub_100003F80(v22);
    }

    else
    {

      sub_1000035CC(v7, &qword_100155078, &qword_10010DBA0);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000048C8(v27, qword_100160D38);
    (*(v12 + 16))(v14, v17, v11);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = v30;
      v44 = swift_slowAlloc();
      v45 = v44;
      *v30 = 136315138;
      sub_100081D94(&qword_100155268, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v34 = *(v12 + 8);
      v34(v14, v11);
      v35 = sub_100006E5C(v31, v33, &v45);

      v36 = v43;
      *(v43 + 1) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "opening URL: %s", v36, 0xCu);
      sub_100003F80(v44);
    }

    else
    {

      v34 = *(v12 + 8);
      v34(v14, v11);
    }

    v37 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v38);
    v40 = v39;
    sub_100077074(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_100081D94(&qword_100154840, type metadata accessor for OpenExternalURLOptionsKey, &unk_10010BA78);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v37 openURL:v40 options:isa completionHandler:0];

    v34(v17, v11);
  }
}

uint64_t sub_10008147C()
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100160D68;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = sub_100008E44(_swiftEmptyArrayStorage);
      v4 = sub_100080868(v6, v7, v3);

      return v4;
    }
  }

  else
  {
    sub_1000035CC(v10, &qword_1001551B8, &qword_10010E3E0);
  }

  return 0;
}

uint64_t sub_1000815E4()
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100160D68;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    if (swift_dynamicCast())
    {
      if (qword_1001546A0 != -1)
      {
        swift_once();
      }

      v3 = qword_100160D00;
      swift_getKeyPath();
      *&v12[0] = v3;
      sub_100081D94(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v4 = *(v3 + 16);
      v5 = String._bridgeToObjectiveC()();

      v6 = [v4 findUnitWithName:v5];

      if (v6)
      {
        v7 = [v6 shortName];

        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v8;
      }
    }
  }

  else
  {
    sub_1000035CC(v12, &qword_1001551B8, &qword_10010E3E0);
  }

  return 0;
}

void sub_100081850()
{
  v41 = [objc_opt_self() sharedApplication];
  v0 = [v41 shortcutItems];
  if (!v0)
  {
    [v41 setShortcutItems:0];
    isa = v41;
LABEL_72:

    return;
  }

  v1 = v0;
  v39 = sub_1000050A0(0, &qword_1001564A8, UIApplicationShortcutItem_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = v2;
  v40 = v2 >> 62;
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_82;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      if (v40)
      {
        goto LABEL_65;
      }

      v5 = *(v3 + 16);
LABEL_66:
      if (v2 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
        if (v37 >= v5)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v37 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v37 >= v5)
        {
LABEL_68:
          sub_1000AE2DC(v5, v37);
          if (v42)
          {
            v38.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v38.super.isa = 0;
          }

          [v41 setShortcutItems:{v38.super.isa, v39}];

          isa = v38.super.isa;
          goto LABEL_72;
        }
      }

      __break(1u);
      goto LABEL_85;
    }

    if ((v2 & 0xC000000000000001) == 0)
    {
      if (v5 < *(v3 + 16))
      {
        v6 = *(v2 + 8 * v5 + 32);
        goto LABEL_9;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      v4 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_4;
    }

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v7 = v6;
    v8 = [v6 type];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == 0x7473614C79706F63 && v11 == 0xEE00746C75736552)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_22;
    }

    v14 = __OFADD__(v5++, 1);
    if (v14)
    {
      goto LABEL_76;
    }
  }

LABEL_22:
  v16 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    if (v40)
    {
      if (v16 == _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_66;
      }
    }

    else if (v16 == *(v3 + 16))
    {
      goto LABEL_66;
    }

    v3 = v5 + 5;
    while (1)
    {
      v17 = v3 - 4;
      if ((v2 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_77;
        }

        if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v18 = *(v2 + 8 * v3);
      }

      v19 = v18;
      v20 = [v18 type];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if (v21 == 0x7473614C79706F63 && v23 == 0xEE00746C75736552)
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          if (v17 != v5)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v5 < 0)
              {
                goto LABEL_86;
              }

              v28 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v5 >= v28)
              {
                goto LABEL_87;
              }

              if (v17 >= v28)
              {
                goto LABEL_88;
              }

              v29 = *(v2 + 8 * v3);
              v26 = *(v2 + 8 * v5 + 32);
              v27 = v29;
            }

            v30 = v27;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = sub_1000AE630();
              v31 = (v2 >> 62) & 1;
            }

            else
            {
              LODWORD(v31) = 0;
            }

            v32 = v2 & 0xFFFFFFFFFFFFFF8;
            v33 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
            *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v30;

            if ((v2 & 0x8000000000000000) != 0 || v31)
            {
              v2 = sub_1000AE630();
              v32 = v2 & 0xFFFFFFFFFFFFFF8;
              if ((v17 & 0x8000000000000000) != 0)
              {
LABEL_64:
                __break(1u);
LABEL_65:
                v5 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_66;
              }
            }

            else if ((v17 & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }

            if (v17 >= *(v32 + 16))
            {
              goto LABEL_81;
            }

            v34 = *(v32 + 8 * v3);
            *(v32 + 8 * v3) = v26;

            v42 = v2;
          }

          v14 = __OFADD__(v5++, 1);
          if (v14)
          {
            goto LABEL_80;
          }
        }
      }

      v35 = v3 - 3;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_79;
      }

      if (v2 >> 62)
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v3;
      if (v35 == v36)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

uint64_t sub_100081D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100081D94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100081DE0()
{
  result = qword_1001564B0;
  if (!qword_1001564B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001564B0);
  }

  return result;
}

uint64_t (*sub_100081E38(uint64_t *a1))()
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100081EC0;
}

void sub_100081EC0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

id sub_100082044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100082078(void *a1)
{
  v2 = [a1 type];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == 0x7473614C79706F63 && v5 == 0xEE00746C75736552)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      if (qword_1001546E8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000048C8(v8, qword_100160D38);
      v9 = a1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v33 = v13;
        *v12 = 136315138;
        v14 = [v9 debugDescription];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_100006E5C(v15, v17, &v33);

        *(v12 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v10, v11, "Error: Unkown shortcutItem initiated: %s", v12, 0xCu);
        sub_100003F80(v13);
      }

      return 0;
    }
  }

  if (sub_10008147C())
  {
    v20 = CalculateExpression.copyableExpression.getter();
    v22 = v21;
    v23 = v20;
    v33 = v20;
    v34 = v21;
    v24 = sub_1000815E4();
    if (v25)
    {
      String.append(_:)(*&v24);

      v26._countAndFlagsBits = 32;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);

      v27 = v33;
      v22 = v34;
    }

    else
    {
      v27 = v23;
    }

    v32 = v22;
    CalculateExpression.copyToClipboard(overridePlaintext:)(*&v27);
  }

  else
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000048C8(v28, qword_100160D38);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error: 'Copy Last Result' shortcut item initiated though no last result is being stored", v31, 2u);
    }
  }

  return 1;
}

id sub_1000823C8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  if (!sub_10008147C())
  {
    return 0;
  }

  CalculateExpression.copyableExpression.getter();
  v2 = sub_1000815E4();
  if (v3)
  {
    String.append(_:)(*&v2);

    v4._countAndFlagsBits = 32;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  if (qword_100154720 != -1)
  {
    swift_once();
  }

  v5 = qword_100160D90;
  v6 = objc_allocWithZone(UIApplicationShortcutItem);
  v7 = v5;
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v6 initWithType:v8 localizedTitle:v9 localizedSubtitle:v10 icon:v7 userInfo:0];

  return v11;
}

unint64_t sub_1000827A4()
{
  result = qword_1001564A8;
  if (!qword_1001564A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001564A8);
  }

  return result;
}

uint64_t type metadata accessor for CalculatorHistoryListView(uint64_t a1)
{
  result = qword_100156638;
  if (!qword_100156638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082864(uint64_t a1)
{
  sub_100013E74(319, &qword_100156648, type metadata accessor for CalculatorViewModel);
  if (v1 <= 0x3F)
  {
    sub_100013E74(319, &qword_100156650, type metadata accessor for CalculatorUnitConversionViewModelWrapper);
    if (v2 <= 0x3F)
    {
      sub_100013E74(319, &qword_1001557F8, type metadata accessor for CalculatorHistoryViewModel);
      if (v3 <= 0x3F)
      {
        sub_100013E74(319, &unk_100155800, type metadata accessor for CalculatorToolbarViewModel);
        if (v4 <= 0x3F)
        {
          sub_1000829C0(319);
          if (v5 <= 0x3F)
          {
            sub_100010420(319);
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

void sub_1000829C0(uint64_t a1)
{
  if (!qword_100156658)
  {
    sub_10003AECC(&qword_100156660, &qword_10010F7C0);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100156658);
    }
  }
}

uint64_t sub_100082A40(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v23 = a1 + 32;
  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *(v23 + 24 * v1 + 16);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      v9 = v22 + v6;
      if (__OFADD__(v22, v6))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v27 = v6;
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v27)
    {
      goto LABEL_36;
    }

    v25 = v2;
    v14 = v10 + 8 * v11 + 32;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_100004880(&qword_100154E30, &qword_100154E28, &unk_10010C590, &protocol conformance descriptor for [A]);
      for (i = 0; i != v13; ++i)
      {
        sub_10003AE84(&qword_100154E28, &unk_10010C590);
        v16 = sub_1000ADEB4(v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for SchemaV1.HistoryRecord(0);
      swift_arrayInitWithCopy();
    }

    v2 = v25;
    if (v27 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v27);
      v21 = v19 + v27;
      if (v20)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v27 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100082D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100082EC4(a2);
  v4 = a2 + *(sub_10003AE84(&qword_1001566C0, &qword_10010F828) + 36);
  v5 = *(type metadata accessor for CalculatorHistoryScrollPPTTests(0) + 28);
  v6 = type metadata accessor for ScrollViewProxy();
  (*(*(v6 - 8) + 16))(v4 + v5, a1, v6);
  type metadata accessor for CalculatorLayout(0);
  sub_10000F2E8(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  *v4 = Environment.init<A>(_:)();
  *(v4 + 8) = v7 & 1;
  type metadata accessor for CalculatorHistoryViewModel(0);
  sub_10000F2E8(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  *(v4 + 16) = Environment.init<A>(_:)();
  *(v4 + 24) = v8 & 1;
  type metadata accessor for CalculatorToolbarViewModel(0);
  sub_10000F2E8(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  result = Environment.init<A>(_:)();
  *(v4 + 32) = result;
  *(v4 + 40) = v10 & 1;
  return result;
}