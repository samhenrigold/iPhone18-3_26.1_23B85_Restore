uint64_t sub_1000B8890(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x1000000000000) == 0)
  {
    goto LABEL_5;
  }

  if (qword_100154518 != -1)
  {
    swift_once();
  }

  if (!sub_100027A90(v1, static CalculatorButtonRepresentable.swappableButtons))
  {
LABEL_5:
    if ((v1 & 0x1000000FFLL) != 0x100000003)
    {
      if ((v1 & 0x10000) == 0)
      {
        goto LABEL_30;
      }

      if (qword_100154510 != -1)
      {
        swift_once();
      }

      if (sub_100027A90(v1, static CalculatorButtonRepresentable.alternateRPNButtons))
      {
        if (v1 <= 0x24u)
        {
          if (v1 == 9)
          {
            goto LABEL_59;
          }

          if (v1 != 31)
          {
            goto LABEL_44;
          }

LABEL_62:
          if (qword_100154648 != -1)
          {
            swift_once();
          }

          v3 = &qword_100160C70;
          return *v3;
        }

        if (v1 == 37 || v1 == 56)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if ((v1 & 0x100) == 0)
        {
          goto LABEL_39;
        }

LABEL_30:
        if (qword_100154508 != -1)
        {
          swift_once();
        }

        if (sub_100027A90(v1, static CalculatorButtonRepresentable.shiftableButtons))
        {
          LOBYTE(v1) = CalculatorButtonRepresentable.shiftedButton(isRPN:)(v1 & 0x10000);
        }

        else
        {
LABEL_39:
          if ((v1 & 0x10000FF) == 0x1000001)
          {
            goto LABEL_40;
          }

          if ((v1 & 0x1000000FFLL) == 0x100000003)
          {
            goto LABEL_62;
          }
        }
      }

LABEL_44:
      v2 = v1;
      if (v1 > 0x36u)
      {
        goto LABEL_48;
      }

      if (((1 << v1) & 0x400000003FFC08) == 0)
      {
        if (((1 << v1) & 0x3E0) == 0)
        {
          if (((1 << v1) & 0x20000000000016) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_40;
        }

LABEL_59:
        if (qword_100154618 != -1)
        {
          swift_once();
        }

        v3 = &qword_100160C40;
        return *v3;
      }

LABEL_49:
      if (qword_100154630 != -1)
      {
        swift_once();
      }

      v3 = &qword_100160C58;
      return *v3;
    }
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_25;
  }

  if (qword_100154510 != -1)
  {
    swift_once();
  }

  if (sub_100027A90(v1, static CalculatorButtonRepresentable.alternateRPNButtons))
  {
    if (v1 > 0x24u)
    {
      if (v1 == 37 || v1 == 56)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v1 == 9)
      {
        goto LABEL_59;
      }

      if (v1 == 31)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_33;
    }

LABEL_25:
    if (qword_100154508 != -1)
    {
      swift_once();
    }

    if (sub_100027A90(v1, static CalculatorButtonRepresentable.shiftableButtons))
    {
      LOBYTE(v1) = CalculatorButtonRepresentable.shiftedButton(isRPN:)(v1 & 0x10000);
    }

    else
    {
LABEL_33:
      if ((v1 & 0x10000FF) == 0x1000001 || (v1 & 0x1000000FFLL) == 0x100000003)
      {
        goto LABEL_40;
      }
    }
  }

  v2 = v1;
  if (v1 > 0x36u)
  {
    goto LABEL_48;
  }

  if (((1 << v1) & 0x400000003FF408) != 0)
  {
    goto LABEL_49;
  }

  if (((1 << v1) & 0x3E0) != 0)
  {
    goto LABEL_59;
  }

  if (((1 << v1) & 0x800000016) == 0)
  {
LABEL_48:
    if ((v2 - 66) < 8)
    {
      goto LABEL_49;
    }

    if (v2 == 93)
    {
      goto LABEL_59;
    }

    goto LABEL_62;
  }

LABEL_40:
  if (qword_100154600 != -1)
  {
    swift_once();
  }

  v3 = &qword_100160C28;
  return *v3;
}

uint64_t sub_1000B8CD4(char a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = v1[72];
  v7 = *(v1 + 8);
  v23 = v7;
  if (v24 == 1)
  {
    if ((v7 & 1) == 0)
    {
LABEL_3:
      v8 = 0x1000000000000;
      if (!v1[6])
      {
        v8 = 0;
      }

      v9 = 0x10000000000;
      if (!v1[5])
      {
        v9 = 0;
      }

      v10 = &_mh_execute_header;
      if (!v1[4])
      {
        v10 = 0;
      }

      v11 = 0x1000000;
      if (!v1[3])
      {
        v11 = 0;
      }

      v12 = 0x10000;
      if (!v1[2])
      {
        v12 = 0;
      }

      v13 = 256;
      if (!v1[1])
      {
        v13 = 0;
      }

      return sub_1000B8890(v13 | *v1 | v12 | v11 | v10 | v9 | v8);
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v23, &qword_100158458, &unk_100112DE0);
    (*(v4 + 8))(v6, v3);
    if (v22[15] != 1)
    {
      goto LABEL_3;
    }
  }

  if (v1[5] == 1)
  {
    if (qword_100154660 != -1)
    {
      swift_once();
    }

    return qword_100160C88;
  }

  else
  {
    if (v1[6])
    {
      v16 = 0x1000000000000;
    }

    else
    {
      v16 = 0;
    }

    if (v1[4])
    {
      v17 = &_mh_execute_header;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0x1000000;
    if (!v1[3])
    {
      v18 = 0;
    }

    v19 = 0x10000;
    if (!v1[2])
    {
      v19 = 0;
    }

    v20 = 256;
    if (!v1[1])
    {
      v20 = 0;
    }

    v21 = v20 | *v1 | v19 | v18 | v17 | v16;
    if (a1)
    {
      return sub_1000B8454(v21);
    }

    else
    {
      return sub_10002AD64(v21);
    }
  }
}

uint64_t sub_1000B8F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B8FD4()
{
  result = qword_100158518;
  if (!qword_100158518)
  {
    sub_10003AECC(&qword_100158510, &qword_100112E78);
    sub_10003AECC(&qword_100158438, &qword_100112D30);
    sub_10003AECC(&qword_100158430, &qword_100112D28);
    sub_10003AECC(&qword_100158428, &qword_100112D20);
    type metadata accessor for Capsule();
    sub_10003AECC(&qword_100158420, &qword_100112D18);
    type metadata accessor for LiftHoverEffect();
    sub_1000B822C();
    sub_1000B8F8C(&qword_100158500, &type metadata accessor for LiftHoverEffect, &protocol conformance descriptor for LiftHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_1000B8F8C(&qword_100158508, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100158520, &qword_100158528, &qword_100112ED8, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158518);
  }

  return result;
}

void sub_1000B9224()
{
  type metadata accessor for CalculatorNetworkManager(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *(v0 + 24) = NWPathMonitor.init()();
  ObservationRegistrar.init()();
  sub_1000B99EC();
  qword_100160D28 = v0;
}

uint64_t sub_1000B929C()
{
  swift_getKeyPath();
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_1000B933C(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1000B944C()
{
  swift_getKeyPath();
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_1000B94F0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);

  return result;
}

double sub_1000B959C(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t CalculatorNetworkManager.deinit()
{
  swift_getKeyPath();
  v1 = OBJC_IVAR____TtC10Calculator24CalculatorNetworkManager___observationRegistrar;
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  NWPathMonitor.cancel()();

  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t type metadata accessor for CalculatorNetworkManager(uint64_t a1)
{
  result = qword_100158560;
  if (!qword_100158560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CalculatorNetworkManager.__deallocating_deinit()
{
  swift_getKeyPath();
  v1 = OBJC_IVAR____TtC10Calculator24CalculatorNetworkManager___observationRegistrar;
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  NWPathMonitor.cancel()();

  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return swift_deallocClassInstance();
}

uint64_t sub_1000B9944(uint64_t a1)
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

void sub_1000B99EC()
{
  v1 = v0;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_100050560(0, 0, v9, &unk_100112F98, v11);

  swift_getKeyPath();
  v14 = v1;
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10000A84C();

  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_1000B9FB4(&qword_100158690, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10003AE84(&qword_100158698, &qword_100112FA0);
  sub_1000B9FFC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  NWPathMonitor.start(queue:)();
}

uint64_t sub_1000B9DB4()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = swift_allocObject();
  swift_weakInit();

  sub_1000BA2FC(sub_1000BA2F4, v2);
  NWPathMonitor.pathUpdateHandler.setter();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000B9F00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030CEC;

  return sub_1000B9D94(a1, v4, v5, v6);
}

uint64_t sub_1000B9FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B9FFC()
{
  result = qword_1001586A0;
  if (!qword_1001586A0)
  {
    sub_10003AECC(&qword_100158698, &qword_100112FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001586A0);
  }

  return result;
}

double sub_1000BA060(uint64_t a1, uint64_t a2)
{
  v2 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for NWPath.Status();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    NWPath.status.getter();
    (*(v6 + 104))(v8, enum case for NWPath.Status.satisfied(_:), v5);
    v15 = static NWPath.Status.== infix(_:_:)();
    v16 = *(v6 + 8);
    v16(v8, v5);
    v16(v11, v5);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    type metadata accessor for MainActor();

    v18 = static MainActor.shared.getter();
    if (v15)
    {
      v19 = &unk_100112FC0;
    }

    else
    {
      v19 = &unk_100112FB0;
    }

    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v14;
    sub_100050560(0, 0, v4, v19, v20);
  }

  return result;
}

double sub_1000BA2FC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1000BA30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000BA3A4, v6, v5);
}

uint64_t sub_1000BA3A4()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + 16) & 1) == 0)
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[2] = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000BA514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000BA5AC, v6, v5);
}

uint64_t sub_1000BA5AC()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_1000B9FB4(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 16) == 1)
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[2] = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000BA71C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030DE0;

  return sub_1000BA514(a1, v4, v5, v6);
}

uint64_t sub_1000BA7D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030DE0;

  return sub_1000BA30C(a1, v4, v5, v6);
}

void sub_1000BA884()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

Swift::Int HistoryPresentationStyle.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

unint64_t sub_1000BA944()
{
  result = qword_1001586A8;
  if (!qword_1001586A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001586A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HistoryPresentationStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t type metadata accessor for UnitConversionPopoverView(uint64_t a1)
{
  result = qword_100158738;
  if (!qword_100158738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BAAC0(uint64_t a1)
{
  sub_100013F2C(319, &qword_100156648, type metadata accessor for CalculatorViewModel, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100013F2C(319, &qword_100156650, type metadata accessor for CalculatorUnitConversionViewModelWrapper, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100013F2C(319, &qword_1001557F0, type metadata accessor for CalculatorLayout, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1000BAE10(319, &qword_100158748, &type metadata for Bool, &type metadata accessor for Binding);
        if (v4 <= 0x3F)
        {
          sub_100013F2C(319, &qword_1001549C8, &type metadata accessor for UserInterfaceSizeClass, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1000BAD0C(319);
            if (v6 <= 0x3F)
            {
              sub_1000BAD70(319);
              if (v7 <= 0x3F)
              {
                sub_1000BAE10(319, &unk_100158760, &type metadata for String, &type metadata accessor for State);
                if (v8 <= 0x3F)
                {
                  sub_100010420(319);
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

void sub_1000BAD0C(uint64_t a1)
{
  if (!qword_100158750)
  {
    sub_10003AECC(&qword_100154C40, &qword_10010CFA0);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100158750);
    }
  }
}

void sub_1000BAD70(uint64_t a1)
{
  if (!qword_100158758)
  {
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_10001BAF0(&qword_100157818, sub_10001BB68, &protocol conformance descriptor for <A> A?);
    v1 = type metadata accessor for FocusState();
    if (!v2)
    {
      atomic_store(v1, &qword_100158758);
    }
  }
}

void sub_1000BAE10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000BAE94(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1000BAFA8(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &qword_1001588F0;
  while (1)
  {
    v5 = *(v27 + 16 * v1 + 8);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_100004880(&qword_1001588F8, v3, &qword_100113308, &protocol conformance descriptor for [A]);
      for (i = 0; i != v14; ++i)
      {
        sub_10003AE84(v3, &qword_100113308);
        v18 = v3;
        v19 = sub_1000ADD1C(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
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

void sub_1000BB2A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 54);
}

void *sub_1000BB374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for _ConditionalContent.Storage();
  v9 = __chkstk_darwin(v8);
  (*(*(a3 - 8) + 16))(&v12 - v10, a1, a3, v9);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

id sub_1000BB46C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000CEBE0(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

id sub_1000BB550()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for UnitConversionPopoverView(0) + 44));
  v6 = *(v5 + 2);
  v19 = *v5;
  v20 = v6;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  v7 = v18;
  if (v18)
  {
    v8 = v17;
    v9 = *(v0 + 24);

    if ((v9 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v10 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
    }

    sub_100074054();

    v11 = sub_1000A9728();

    if (v11[2])
    {
      v12 = sub_10007519C(v8, v7);
      v14 = v13;

      if (v14)
      {
        v15 = *(v11[7] + 16 * v12);

        return v15;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1000BB78C@<X0>(char *a1@<X8>)
{
  v182 = a1;
  v2 = type metadata accessor for EnvironmentValues();
  v131 = *(v2 - 8);
  v132 = v2;
  __chkstk_darwin(v2);
  v130 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnitConversionPopoverView(0);
  v179 = *(v4 - 8);
  __chkstk_darwin(v4);
  v180 = v5;
  v188 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v6 - 8);
  v171 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v170 = &v129 - v9;
  v168 = type metadata accessor for CalculatorSizeClass(0);
  __chkstk_darwin(v168);
  v169 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for SearchPresentationToolbarBehavior();
  v157 = *(v159 - 8);
  __chkstk_darwin(v159);
  v156 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for SearchFieldPlacement.NavigationBarDrawerDisplayMode();
  v12 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchFieldPlacement();
  v138 = *(v14 - 8);
  v139 = v14;
  __chkstk_darwin(v14);
  v16 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_10003AE84(&qword_1001587D0, &qword_100113140);
  v137 = *(v183 - 8);
  __chkstk_darwin(v183);
  v18 = &v129 - v17;
  v144 = sub_10003AE84(&qword_1001587D8, &qword_100113148);
  v140 = *(v144 - 8);
  __chkstk_darwin(v144);
  v184 = &v129 - v19;
  v145 = sub_10003AE84(&qword_1001587E0, &qword_100113150);
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v141 = &v129 - v20;
  v150 = sub_10003AE84(&qword_1001587E8, &qword_100113158);
  v147 = *(v150 - 8);
  __chkstk_darwin(v150);
  v142 = &v129 - v21;
  v151 = sub_10003AE84(&qword_1001587F0, &qword_100113160);
  __chkstk_darwin(v151);
  v148 = &v129 - v22;
  v23 = sub_10003AE84(&qword_1001587F8, &qword_100113168);
  v152 = *(v23 - 8);
  v153 = v23;
  __chkstk_darwin(v23);
  v149 = &v129 - v24;
  v146 = sub_10003AE84(&qword_100158800, &qword_100113170);
  __chkstk_darwin(v146);
  v155 = &v129 - v25;
  v154 = sub_10003AE84(&qword_100158808, &qword_100113178);
  __chkstk_darwin(v154);
  v160 = &v129 - v26;
  v158 = sub_10003AE84(&qword_100158810, &qword_100113180);
  __chkstk_darwin(v158);
  v162 = &v129 - v27;
  v161 = sub_10003AE84(&qword_100158818, &qword_100113188);
  __chkstk_darwin(v161);
  v163 = &v129 - v28;
  v187 = sub_10003AE84(&qword_100158820, &qword_100113190);
  __chkstk_darwin(v187);
  v186 = &v129 - v29;
  v178 = sub_10003AE84(&qword_100158828, &qword_100113198);
  v176 = *(v178 - 8);
  __chkstk_darwin(v178);
  v174 = &v129 - v30;
  v177 = sub_10003AE84(&qword_100158830, &qword_1001131A0);
  v175 = *(v177 - 8);
  __chkstk_darwin(v177);
  v172 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v173 = &v129 - v33;
  v189 = v1;
  sub_10003AE84(&qword_100158838, &qword_1001131A8);
  v34 = sub_10003AECC(&qword_100158840, &qword_1001131B0);
  v35 = sub_1000C29F8();
  *&v201 = v34;
  *(&v201 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  v136 = v18;
  NavigationStack.init<>(root:)();
  v185 = v4;
  v36 = (v1 + *(v4 + 56));
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[2];
  v166 = v38;
  v167 = v37;
  *&v194 = v37;
  *(&v194 + 1) = v38;
  v165 = v39;
  *&v195 = v39;
  v164 = sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.projectedValue.getter();
  v135 = *(&v201 + 1);
  v40 = [objc_opt_self() currentDevice];
  v41 = [v40 userInterfaceIdiom];

  v181 = v1;
  if (v41)
  {
    v42 = v133;
    static SearchFieldPlacement.NavigationBarDrawerDisplayMode.always.getter();
    v43 = v16;
    static SearchFieldPlacement.navigationBarDrawer(displayMode:)();
    (*(v12 + 8))(v42, v134);
  }

  else
  {
    v43 = v16;
    static SearchFieldPlacement.automatic.getter();
  }

  LocalizedStringKey.init(stringLiteral:)();
  v44 = Text.init(_:tableName:bundle:comment:)();
  v46 = v45;
  v48 = v47 & 1;
  v134 = sub_100004880(&qword_100158888, &qword_1001587D0, &qword_100113140, &protocol conformance descriptor for NavigationStack<A, B>);
  v49 = v136;
  View.searchable(text:placement:prompt:)();
  sub_10000C6AC(v44, v46, v48);

  (*(v138 + 8))(v43, v139);
  v50 = v183;
  (*(v137 + 8))(v49, v183);
  v51 = v181;
  v52 = v181 + *(v185 + 52);
  v53 = *v52;
  v54 = *(v52 + 8);
  LOBYTE(v52) = *(v52 + 16);
  LOBYTE(v201) = v53;
  *(&v201 + 1) = v54;
  LOBYTE(v202) = v52;
  sub_10003AE84(&qword_100156AA8, &qword_100110298);
  FocusState.projectedValue.getter();
  v201 = v194;
  LOBYTE(v202) = v195;
  LOBYTE(v190) = 4;
  v55 = sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  *&v194 = v50;
  *(&v194 + 1) = v134;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = sub_10001BAF0(&qword_100157818, sub_10001BB68, &protocol conformance descriptor for <A> A?);
  v58 = v141;
  v59 = v144;
  v60 = v184;
  View.searchFocused<A>(_:equals:)();

  (*(v140 + 8))(v60, v59);
  v61 = v156;
  static SearchPresentationToolbarBehavior.avoidHidingContent.getter();
  *&v201 = v59;
  *(&v201 + 1) = v55;
  v184 = v55;
  *&v202 = OpaqueTypeConformance2;
  *(&v202 + 1) = v57;
  swift_getOpaqueTypeConformance2();
  v62 = v142;
  v63 = v145;
  View.searchPresentationToolbarBehavior(_:)();
  (*(v157 + 8))(v61, v159);
  (*(v143 + 8))(v58, v63);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v64 = v148;
  (*(v147 + 32))(v148, v62, v150);
  v65 = (v64 + *(v151 + 36));
  v66 = v199;
  v65[4] = v198;
  v65[5] = v66;
  v65[6] = v200;
  v67 = v195;
  *v65 = v194;
  v65[1] = v67;
  v68 = v197;
  v65[2] = v196;
  v65[3] = v68;
  sub_1000CE1DC();
  v69 = v149;
  View.allowsSecureDrawing(_:)();
  sub_1000035CC(v64, &qword_1001587F0, &qword_100113160);
  LOBYTE(v60) = static Edge.Set.top.getter();
  v70 = v185;
  v71 = *(v185 + 36);
  sub_10003DC4C(v51 + v71);
  EdgeInsets.init(_all:)();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v155;
  (*(v152 + 32))(v155, v69, v153);
  v81 = &v80[*(v146 + 36)];
  *v81 = v60;
  *(v81 + 1) = v73;
  *(v81 + 2) = v75;
  *(v81 + 3) = v77;
  *(v81 + 4) = v79;
  v81[40] = 0;
  v82 = v170;
  sub_100008E68(v51 + v71, v170, &qword_100154948, qword_1001130B0);
  v83 = v171;
  sub_100008E68(v51 + *(v70 + 40), v171, &qword_100154948, qword_1001130B0);
  v84 = type metadata accessor for UserInterfaceSizeClass();
  v85 = *(*(v84 - 8) + 56);
  v86 = v169;
  v85(v169, 1, 1, v84);
  v87 = *(v168 + 20);
  v85((v86 + v87), 1, 1, v84);
  sub_10006E758(v82, v86);
  sub_10006E758(v83, v86 + v87);
  sub_10003DC4C(v86);
  sub_10006E7C8(v86);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v88 = v80;
  v89 = v160;
  sub_10000D5B8(v88, v160, &qword_100158800, &qword_100113170);
  v90 = (v89 + *(v154 + 36));
  v91 = v206;
  v90[4] = v205;
  v90[5] = v91;
  v90[6] = v207;
  v92 = v202;
  *v90 = v201;
  v90[1] = v92;
  v93 = v204;
  v90[2] = v203;
  v90[3] = v93;
  if (qword_1001545E8 != -1)
  {
    swift_once();
  }

  v94 = qword_100160C10;
  v95 = static Edge.Set.all.getter();
  v96 = v162;
  sub_10000D5B8(v89, v162, &qword_100158808, &qword_100113178);
  v97 = v96 + *(v158 + 36);
  *v97 = v94;
  *(v97 + 8) = v95;
  v98 = v188;
  sub_1000CEB08(v51, v188);
  v99 = *(v179 + 80);
  v100 = (v99 + 16) & ~v99;
  v101 = v180 + v100;
  v102 = swift_allocObject();
  sub_1000D1EAC(v98, v102 + v100, type metadata accessor for UnitConversionPopoverView);
  v103 = v96;
  v104 = v163;
  sub_10000D5B8(v103, v163, &qword_100158810, &qword_100113180);
  v105 = (v104 + *(v161 + 36));
  *v105 = sub_1000CEB6C;
  v105[1] = v102;
  v105[2] = 0;
  v105[3] = 0;
  sub_1000CEB08(v51, v98);
  v185 = v99;
  v183 = v101;
  v106 = swift_allocObject();
  sub_1000D1EAC(v98, v106 + v100, type metadata accessor for UnitConversionPopoverView);
  v107 = v186;
  sub_10000D5B8(v104, v186, &qword_100158818, &qword_100113188);
  v108 = (v107 + *(v187 + 36));
  *v108 = 0;
  v108[1] = 0;
  v108[2] = sub_1000CEBC8;
  v108[3] = v106;
  v109 = *v51;
  LOBYTE(v106) = *(v51 + 8);

  if ((v106 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v110 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v111 = v130;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v131 + 8))(v111, v132);
    v109 = v190;
  }

  swift_getKeyPath();
  v190 = v109;
  sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v112 = *(v109 + 54);

  LOBYTE(v190) = v112;
  v113 = v188;
  sub_1000CEB08(v51, v188);
  v114 = swift_allocObject();
  v180 = type metadata accessor for UnitConversionPopoverView;
  sub_1000D1EAC(v113, v114 + v100, type metadata accessor for UnitConversionPopoverView);
  v171 = sub_1000CECA8();
  v115 = sub_10001BAF0(&qword_100156AC0, sub_10001B814, &protocol conformance descriptor for <A> A?);
  v179 = v100;
  v116 = v174;
  v117 = v187;
  v118 = v184;
  v119 = v186;
  View.onChange<A>(of:initial:_:)();

  sub_1000035CC(v119, &qword_100158820, &qword_100113190);
  v190 = v167;
  v191 = v166;
  v192 = v165;
  State.wrappedValue.getter();
  sub_1000CEB08(v51, v113);
  v120 = swift_allocObject();
  sub_1000D1EAC(v113, v120 + v179, v180);
  v190 = v117;
  v191 = v118;
  v192 = v171;
  v193 = v115;
  swift_getOpaqueTypeConformance2();
  v121 = v172;
  v122 = v178;
  View.onChange<A>(of:initial:_:)();

  (*(v176 + 8))(v116, v122);
  v123 = v175;
  v124 = *(v175 + 16);
  v125 = v173;
  v126 = v177;
  v124(v173, v121, v177);
  v127 = *(v123 + 8);
  v127(v121, v126);
  v124(v182, v125, v126);
  return (v127)(v125, v126);
}

uint64_t sub_1000BCD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v54 = a2;
  v3 = type metadata accessor for KeyPress.Phases();
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnitConversionPopoverView(0);
  v50 = *(v5 - 8);
  v51 = (v5 - 8);
  v60 = *(v50 + 64);
  __chkstk_darwin(v5 - 8);
  v57 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v7 - 8);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10003AE84(&qword_1001588C8, &qword_100113268);
  __chkstk_darwin(v52);
  v48 = &v44 - v9;
  v10 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v10 - 8);
  v59 = &v44 - v11;
  v12 = type metadata accessor for PlainListStyle();
  v47 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10003AE84(&qword_100158860, &qword_1001131C0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_10003AE84(&qword_1001588D0, &qword_100113270);
  v45 = *(v18 - 8);
  v46 = v18;
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  v58 = sub_10003AE84(&qword_100158840, &qword_1001131B0);
  __chkstk_darwin(v58);
  v22 = &v44 - v21;
  *v17 = static HorizontalAlignment.leading.getter();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v23 = sub_10003AE84(&qword_1001588D8, &qword_100113278);
  sub_1000BD570(a1, &v17[*(v23 + 44)]);
  PlainListStyle.init()();
  v24 = sub_100004880(&qword_100158868, &qword_100158860, &qword_1001131C0, &protocol conformance descriptor for VStack<A>);
  View.listStyle<A>(_:)();
  (*(v47 + 8))(v14, v12);
  sub_1000035CC(v17, &qword_100158860, &qword_1001131C0);
  v61 = v15;
  v62 = v12;
  v25 = v57;
  v63 = v24;
  v64 = &protocol witness table for PlainListStyle;
  swift_getOpaqueTypeConformance2();
  v26 = v46;
  View.accessibilityIdentifier(_:)();
  v27 = v44;
  v28 = v20;
  v29 = v48;
  (*(v45 + 8))(v28, v26);
  v30 = v59;
  sub_100008E68(v27 + *(v51 + 11), v59, &qword_100154948, qword_1001130B0);
  v31 = *(v58 + 36);
  v51 = v22;
  v32 = &v22[v31];
  v33 = type metadata accessor for UserInterfaceSizeClass();
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  sub_1000CEFE4(v30, v32);
  sub_10003AE84(&qword_100158878, &qword_1001131C8);
  static ButtonRole.confirm.getter();
  sub_1000CEB08(v27, v25);
  v34 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v35 = swift_allocObject();
  sub_1000D1EAC(v25, v35 + v34, type metadata accessor for UnitConversionPopoverView);
  Button<>.init(role:action:)();
  if (qword_100154528 != -1)
  {
    swift_once();
  }

  v36 = qword_100160B50;
  KeyPath = swift_getKeyPath();
  v38 = (v29 + *(v52 + 36));
  *v38 = KeyPath;
  v38[1] = v36;
  sub_1000CF06C();

  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v29, &qword_1001588C8, &qword_100113268);
  sub_1000035CC(v59, &qword_100154948, qword_1001130B0);
  if (qword_1001546D0 != -1)
  {
    swift_once();
  }

  v39 = v53;
  static KeyPress.Phases.down.getter();
  v40 = v57;
  sub_1000CEB08(v27, v57);
  v41 = swift_allocObject();
  sub_1000D1EAC(v40, v41 + v34, type metadata accessor for UnitConversionPopoverView);
  sub_1000C29F8();
  v42 = v51;
  View.onKeyPress(keys:phases:action:)();

  (*(v55 + 8))(v39, v56);
  return sub_1000035CC(v42, &qword_100158840, &qword_1001131B0);
}

uint64_t sub_1000BD570@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v74 = a2;
  v72 = sub_10003AE84(&qword_100158918, &qword_100113320);
  __chkstk_darwin(v72);
  v69 = &v62 - v3;
  v73 = sub_10003AE84(&qword_100158920, &qword_100113328);
  v67 = *(v73 - 8);
  __chkstk_darwin(v73);
  v68 = &v62 - v4;
  v5 = type metadata accessor for EnvironmentValues();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10003AE84(&qword_100158928, &qword_100113330);
  __chkstk_darwin(v71);
  v9 = &v62 - v8;
  v10 = sub_10003AE84(&qword_100158930, &qword_100113338);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v70 = sub_10003AE84(&qword_100158938, &qword_100113340);
  __chkstk_darwin(v70);
  v14 = &v62 - v13;
  v15 = type metadata accessor for UnitConversionPopoverView(0);
  v16 = a1;
  v17 = (a1 + *(v15 + 56));
  v18 = *v17;
  v19 = *(v17 + 2);
  v79[0] = v18;
  *&v79[1] = v19;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  v21 = v75;
  v20 = v76;

  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    sub_1000BDF78(v79);
    memcpy(v12, v79, 0x17AuLL);
    swift_storeEnumTagMultiPayload();
    sub_100008E68(v79, &v75, &qword_100158940, &qword_100113348);
    sub_10003AE84(&qword_100158940, &qword_100113348);
    sub_1000CF9AC();
    v23 = sub_10003AECC(&qword_1001589C0, &qword_100113390);
    v24 = sub_10003AECC(&qword_1001589C8, &qword_100113398);
    v25 = sub_1000CFDA4();
    v26 = sub_10003AECC(&qword_1001589E8, &qword_1001133A8);
    v27 = sub_1000CFEFC();
    v75 = v26;
    v76 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v75 = v23;
    v76 = v24;
    v77 = v25;
    v78 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_100008E68(v14, v9, &qword_100158938, &qword_100113340);
    swift_storeEnumTagMultiPayload();
    sub_1000CFFB4();
    sub_1000D00EC();
    v29 = v74;
    _ConditionalContent<>.init(storage:)();
    sub_1000035CC(v79, &qword_100158940, &qword_100113348);
    sub_1000035CC(v14, &qword_100158938, &qword_100113340);
    v30 = sub_10003AE84(&qword_100158A28, &qword_1001133C0);
    v31 = *(*(v30 - 8) + 56);
    v32 = v29;
  }

  else
  {
    v33 = v7;
    v62 = v10;
    v63 = v14;
    v64 = v9;
    v34 = v73;
    v35 = v16;
    v36 = v16 + *(v15 + 52);
    v37 = *v36;
    v38 = *(v36 + 8);
    LOBYTE(v36) = *(v36 + 16);
    LOBYTE(v79[0]) = v37;
    *(&v79[0] + 1) = v38;
    LOBYTE(v79[1]) = v36;
    sub_10003AE84(&qword_100156AA8, &qword_100110298);
    FocusState.wrappedValue.getter();
    v39 = v69;
    if (v75 <= 0xBu && ((1 << v75) & 0x920) != 0)
    {
      goto LABEL_7;
    }

    v46 = *(v35 + 24);

    if ((v46 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v47 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v65 + 8))(v33, v66);
    }

    v48 = sub_100074054();

    v49 = *(v48 + 16);

    swift_getKeyPath();
    *&v79[0] = v49;
    sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v50 = *(v49 + 32);

    v51 = v50 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v51)
    {
LABEL_7:
      v40 = sub_1000BB550();
      if (!v40)
      {
        v44 = sub_10003AE84(&qword_100158A28, &qword_1001133C0);
        return (*(*(v44 - 8) + 56))(v74, 1, 1, v44);
      }

      v42 = v40;
      sub_1000BEA9C(v40, v41, v39);
      sub_100008E68(v39, v64, &qword_100158918, &qword_100113320);
      swift_storeEnumTagMultiPayload();
      sub_1000CFFB4();
      sub_1000D00EC();
      v43 = v74;
      _ConditionalContent<>.init(storage:)();

      sub_1000035CC(v39, &qword_100158918, &qword_100113320);
      v30 = sub_10003AE84(&qword_100158A28, &qword_1001133C0);
      v31 = *(*(v30 - 8) + 56);
      v32 = v43;
    }

    else
    {
      v52 = v68;
      sub_1000BE340(v68);
      v53 = v67;
      (*(v67 + 16))(v12, v52, v34);
      swift_storeEnumTagMultiPayload();
      sub_10003AE84(&qword_100158940, &qword_100113348);
      sub_1000CF9AC();
      v54 = sub_10003AECC(&qword_1001589C0, &qword_100113390);
      v55 = sub_10003AECC(&qword_1001589C8, &qword_100113398);
      v56 = sub_1000CFDA4();
      v57 = sub_10003AECC(&qword_1001589E8, &qword_1001133A8);
      v58 = sub_1000CFEFC();
      *&v79[0] = v57;
      *(&v79[0] + 1) = v58;
      v59 = swift_getOpaqueTypeConformance2();
      *&v79[0] = v54;
      *(&v79[0] + 1) = v55;
      *&v79[1] = v56;
      *(&v79[1] + 1) = v59;
      swift_getOpaqueTypeConformance2();
      v60 = v63;
      _ConditionalContent<>.init(storage:)();
      sub_100008E68(v60, v64, &qword_100158938, &qword_100113340);
      swift_storeEnumTagMultiPayload();
      sub_1000CFFB4();
      sub_1000D00EC();
      v61 = v74;
      _ConditionalContent<>.init(storage:)();
      sub_1000035CC(v60, &qword_100158938, &qword_100113340);
      (*(v53 + 8))(v68, v34);
      v30 = sub_10003AE84(&qword_100158A28, &qword_1001133C0);
      v31 = *(*(v30 - 8) + 56);
      v32 = v61;
    }
  }

  return v31(v32, 0, 1, v30);
}

void *sub_1000BDF78@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for UnitConversionPopoverView(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 24) == 1)
  {
    v32 = *(v2 + 16);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  sub_100074054();

  v10 = v2 + *(v3 + 56);
  v11 = *v10;
  v12 = *(v10 + 16);
  v31[0] = v11;
  *&v31[1] = v12;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  sub_1000AB4DC(v30[0], v30[1]);
  v14 = v13;

  if (*(v14 + 16))
  {
    v15 = v26;
    sub_1000CEB08(v2, v26);
    v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    sub_1000D1EAC(v15, v17 + v16, type metadata accessor for UnitConversionPopoverView);
    v18 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v28[0] = 0;
    v30[0] = sub_1000D1F54;
    v30[1] = v17;
    LOBYTE(v30[2]) = v18;
    v30[3] = v19;
    v30[4] = v20;
    v30[5] = v21;
    v30[6] = v22;
    LOBYTE(v30[7]) = 0;
    sub_1000D1FD8(v30);
  }

  else
  {

    sub_1000C8974(v28);
    memcpy(v30, v28, 0x179uLL);
    sub_1000D1FE4(v30);
  }

  memcpy(v29, v30, sizeof(v29));
  sub_10003AE84(&qword_100158958, &qword_100113350);
  sub_10003AE84(&qword_1001589A8, &qword_100113380);
  sub_1000CFA38();
  sub_1000CFCEC();
  _ConditionalContent<>.init(storage:)();
  return memcpy(v27, v31, 0x17AuLL);
}

uint64_t sub_1000BE340@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v47 = type metadata accessor for UnitConversionPopoverView(0);
  v45 = *(v47 - 8);
  v2 = *(v45 + 8);
  __chkstk_darwin(v47);
  v54 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003AE84(&qword_1001589D8, &qword_1001133A0);
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v48 = &v43 - v8;
  v52 = sub_10003AE84(&qword_1001589C0, &qword_100113390);
  __chkstk_darwin(v52);
  v51 = &v43 - v9;
  v46 = v1;
  v10 = *(v1 + 24);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v12 = sub_100074054();

  v13 = *(v12 + 16);

  swift_getKeyPath();
  *&v55 = v13;
  sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v14 = *(v13 + 32);

  v15 = v46;
  v16 = v47;
  v17 = v46 + *(v47 + 48);
  v18 = *(v17 + 16);
  v58 = *v17;
  v59 = v18;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.projectedValue.getter();
  v43 = v55;
  v19 = v56;
  v20 = v57;
  v21 = v54;
  sub_1000CEB08(v15, v54);
  v22 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v23 = swift_allocObject();
  v45 = type metadata accessor for UnitConversionPopoverView;
  v24 = sub_1000D1EAC(v21, v23 + v22, type metadata accessor for UnitConversionPopoverView);
  v44 = v2;
  v57 = v20;
  *&v58 = v14;
  v55 = v43;
  v56 = v19;
  __chkstk_darwin(v24);
  *(&v43 - 4) = &v58;
  *(&v43 - 3) = sub_1000D0218;
  v41 = v23;
  sub_10003AE84(&qword_100158A30, &qword_1001133C8);
  sub_1000D022C();
  v25 = v48;
  List.init(selection:content:)();

  v26 = v15 + *(v16 + 52);
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(v26) = *(v26 + 16);
  LOBYTE(v55) = v27;
  *(&v55 + 1) = v28;
  LOBYTE(v56) = v26;
  sub_10003AE84(&qword_100156AA8, &qword_100110298);
  FocusState.projectedValue.getter();
  v55 = v58;
  LOBYTE(v56) = v59;
  LOBYTE(v58) = 7;
  sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  sub_100004880(&qword_1001589E0, &qword_1001589D8, &qword_1001133A0, &protocol conformance descriptor for List<A, B>);
  sub_10001BAF0(&qword_100157818, sub_10001BB68, &protocol conformance descriptor for <A> A?);
  v29 = v50;
  v30 = v51;
  View.focused<A>(_:equals:)();

  (*(v49 + 8))(v25, v29);
  v31 = v15;
  v32 = v54;
  sub_1000CEB08(v31, v54);
  v33 = swift_allocObject();
  v34 = sub_1000D1EAC(v32, v33 + v22, v45);
  v35 = (v30 + *(v52 + 36));
  *v35 = 0;
  v35[1] = 0;
  v35[2] = sub_1000D04C4;
  v35[3] = v33;
  __chkstk_darwin(v34);
  static HorizontalAlignment.center.getter();
  sub_10003AE84(&qword_1001589C8, &qword_100113398);
  v36 = sub_1000CFDA4();
  v37 = sub_10003AECC(&qword_1001589E8, &qword_1001133A8);
  v38 = sub_1000CFEFC();
  *&v55 = v37;
  *(&v55 + 1) = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v36;
  v42 = OpaqueTypeConformance2;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  return sub_1000035CC(v30, &qword_1001589C0, &qword_100113390);
}

uint64_t sub_1000BEA9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a3;
  v27 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UnitConversionPopoverView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v28 = sub_10003AE84(&qword_100158B48, &qword_100113530);
  v13 = *(v28 - 8);
  __chkstk_darwin(v28);
  v15 = &v27 - v14;
  sub_1000CEB08(v4, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_1000D1EAC(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for UnitConversionPopoverView);
  v30 = sub_1000D0640;
  v31 = v17;
  v18 = a1;

  static AccessibilityChildBehavior.contain.getter();
  v19 = sub_10003AE84(&qword_100158A18, &qword_1001133B8);
  v20 = sub_100004880(&qword_100158A20, &qword_100158A18, &qword_1001133B8, &protocol conformance descriptor for ScrollViewReader<A>);
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v9, v27);

  LocalizedStringKey.init(stringLiteral:)();
  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  LOBYTE(v17) = v24;
  v30 = v19;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  v25 = v28;
  View.accessibilityLabel(_:)();
  sub_10000C6AC(v21, v23, v17 & 1);

  return (*(v13 + 8))(v15, v25);
}

void sub_1000BEE1C(uint64_t a1@<X8>)
{
  v2 = v1;
  v253 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v251 = v3;
  v252 = v4;
  __chkstk_darwin(v3);
  v6 = &v245 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for KeyEquivalent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v245 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v245 - v12;
  KeyPress.key.getter();
  static KeyEquivalent.downArrow.getter();
  sub_1000CEBE0(&qword_1001588E8, &type metadata accessor for KeyEquivalent, &protocol conformance descriptor for KeyEquivalent);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  if (v14)
  {
    v15(v13, v7);
    v16 = *v1;
    v17 = *(v1 + 8);

    v18 = v16;
    if ((v17 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v252 + 8))(v6, v251);
      v18 = v261;
    }

    KeyPath = swift_getKeyPath();
    v21 = &unk_100155000;
    *&v261 = v18;
    sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v18 + 54);

    if (v22 <= 5)
    {
      if (v22 != 4)
      {
        if (v22 == 5)
        {

          if ((v17 & 1) == 0)
          {
            static os_log_type_t.fault.getter();
            v23 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();

            (*(v252 + 8))(v6, v251);
            v16 = v261;
          }

          swift_getKeyPath();
          *&v261 = v16;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v16 + 54) != 8)
          {
            v24 = swift_getKeyPath();
            __chkstk_darwin(v24);
            *(&v245 - 2) = v16;
            *(&v245 - 8) = 8;
            *&v261 = v16;
LABEL_28:
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            goto LABEL_171;
          }

          goto LABEL_170;
        }

        goto LABEL_171;
      }

      v115 = type metadata accessor for UnitConversionPopoverView(0);
      v116 = v2 + *(v115 + 56);
      v117 = *v116;
      v118 = *(v116 + 16);
      v261 = v117;
      v262 = v118;
      sub_10003AE84(&qword_100158880, &unk_1001131D0);
      State.wrappedValue.getter();
      v120 = v258;
      v119 = v259;

      v121 = HIBYTE(v119) & 0xF;
      if ((v119 & 0x2000000000000000) == 0)
      {
        v121 = v120 & 0xFFFFFFFFFFFFLL;
      }

      if (v121)
      {

        if ((v17 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v122 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v252 + 8))(v6, v251);
          v16 = v261;
        }

        swift_getKeyPath();
        *&v261 = v16;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v16 + 54) == 6)
        {
          goto LABEL_170;
        }

        v123 = 6;
        goto LABEL_169;
      }

      v250 = v115;
      v164 = *(v2 + 24);

      LODWORD(v249) = v164;
      if ((v164 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v165 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v252 + 8))(v6, v251);
      }

      v166 = sub_100074054();

      v167 = *(v166 + 16);

      swift_getKeyPath();
      *&v261 = v167;
      v248 = sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v168 = *(v167 + 32);

      if (v168 >> 62)
      {
        v169 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v169 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v169)
      {

        if ((v17 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v170 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v252 + 8))(v6, v251);
          v16 = v258;
        }

        swift_getKeyPath();
        v258 = v16;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v16 + 54) != 7)
        {
          sub_100058740(7u);
        }

        if ((v249 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v171 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v252 + 8))(v6, v251);
        }

        v172 = sub_100074054();

        v173 = *(v172 + 16);

        swift_getKeyPath();
        v258 = v173;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        v107 = *(v173 + 32);

        if (!(v107 >> 62))
        {
          v126 = v250;
          if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_133;
          }

          goto LABEL_241;
        }

LABEL_240:
        v242 = _CocoaArrayWrapper.endIndex.getter();
        v126 = v250;
        if (v242)
        {
LABEL_133:
          if ((v107 & 0xC000000000000001) == 0)
          {
            if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v174 = *(v107 + 32);
LABEL_136:
              v175 = v174;

              v176 = CalculateUnit.id.getter();
              v178 = v177;

LABEL_242:
              v243 = v2 + *(v126 + 48);
              v244 = *(v243 + 16);
              v256 = *v243;
              v257 = v244;
              v254 = v176;
              v255 = v178;
              sub_10003AE84(&qword_1001588C0, &qword_100113210);
              State.wrappedValue.setter();
              goto LABEL_171;
            }

            __break(1u);
            goto LABEL_252;
          }

LABEL_250:
          v174 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_136;
        }

LABEL_241:

        v176 = 0;
        v178 = 0;
        goto LABEL_242;
      }

      if ((v17 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v212 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v252 + 8))(v6, v251);
        v16 = v258;
      }

      swift_getKeyPath();
      v258 = v16;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v16 + 54) == 5)
      {
        goto LABEL_170;
      }

      v123 = 5;
LABEL_169:
      sub_100058740(v123);
      goto LABEL_170;
    }

    if (v22 != 6)
    {
      if (v22 == 11)
      {

        if ((v17 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v33 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v252 + 8))(v6, v251);
          v16 = v261;
        }

        swift_getKeyPath();
        *&v261 = v16;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v16 + 54) != 5)
        {
          v34 = swift_getKeyPath();
          __chkstk_darwin(v34);
          *(&v245 - 2) = v16;
          *(&v245 - 8) = 5;
          *&v261 = v16;
          goto LABEL_28;
        }

LABEL_170:
      }

LABEL_171:
      v213 = enum case for KeyPress.Result.ignored(_:);
      v214 = type metadata accessor for KeyPress.Result();
      (*(*(v214 - 8) + 104))(v253, v213, v214);
      return;
    }

    v124 = *(v2 + 24);

    if ((v124 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v125 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v252 + 8))(v6, v251);
    }

    sub_100074054();

    v126 = type metadata accessor for UnitConversionPopoverView(0);
    v127 = v2 + *(v126 + 56);
    v128 = *v127;
    v129 = *(v127 + 16);
    v261 = v128;
    v262 = v129;
    sub_10003AE84(&qword_100158880, &unk_1001131D0);
    State.wrappedValue.getter();
    sub_1000AB4DC(v258, v259);
    v131 = v130;

    v6 = sub_1000BAFA8(v131);

    v132 = v6 >> 62;
    if (v6 >> 62)
    {
      v133 = _CocoaArrayWrapper.endIndex.getter();
      if (!v133)
      {
        goto LABEL_214;
      }
    }

    else
    {
      v133 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v133)
      {
        goto LABEL_214;
      }
    }

    v107 = &v245;
    __chkstk_darwin(v133);
    *(&v245 - 2) = v2;
    sub_1000BAE94(sub_1000D3618, (&v245 - 4), v6);
    if (v135)
    {
      goto LABEL_160;
    }

    v107 = v134 + 1;
    if (!__OFADD__(v134, 1))
    {
      if (v132)
      {
        v136 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v136 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v107 < v136)
      {
        if ((v6 & 0xC000000000000001) == 0)
        {
          if ((v107 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v107 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v204 = *(v6 + 8 * v107 + 32);
LABEL_163:
            v205 = v204;
LABEL_164:
            v206 = v205;

            v207 = CalculateUnit.id.getter();
            v209 = v208;

            v210 = v2 + *(v126 + 48);
            v211 = *(v210 + 16);
            v261 = *v210;
            v262 = v211;
            v258 = v207;
            v259 = v209;
            sub_10003AE84(&qword_1001588C0, &qword_100113210);
            State.wrappedValue.setter();
            goto LABEL_171;
          }

          __break(1u);
          goto LABEL_250;
        }

LABEL_247:
        v205 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_164;
      }

LABEL_160:
      if ((v6 & 0xC000000000000001) != 0)
      {
        goto LABEL_247;
      }

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v204 = *(v6 + 32);
        goto LABEL_163;
      }

      __break(1u);
      goto LABEL_212;
    }

    goto LABEL_224;
  }

  static KeyEquivalent.upArrow.getter();
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15(v10, v7);
  if ((v25 & 1) == 0)
  {
    static KeyEquivalent.leftArrow.getter();
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    v15(v10, v7);
    if (v35)
    {
      v15(v13, v7);
      v36 = *v1;
      v37 = *(v1 + 8);

      if ((v37 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v38 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v252 + 8))(v6, v251);
        v36 = v261;
      }

      swift_getKeyPath();
      *&v261 = v36;
      sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v39 = *(v36 + 54);

      if (v39 != 8)
      {
        goto LABEL_171;
      }

      v13 = *(v2 + 16);
      v40 = *(v2 + 24);

      LODWORD(v250) = v40;
      if ((v40 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v41 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v252 + 8))(v6, v251);
      }

      v42 = sub_100074054();

      v43 = *(v42 + 16);

      swift_getKeyPath();
      *&v261 = v43;
      v10 = sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v44 = *(v43 + 16);

      v45 = [v44 categories];

      sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v46);
      *(&v245 - 2) = v2;
      sub_1000BAE94(sub_1000CF1C4, (&v245 - 4), v15);
      v48 = v47;
      LOBYTE(v45) = v49;

      if (v45)
      {
        goto LABEL_171;
      }

      v7 = v48 - 1;
      if (__OFSUB__(v48, 1))
      {
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_62;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_171;
      }

      if ((v250 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v50 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v252 + 8))(v6, v251);
        v13 = v261;
      }

      v51 = sub_100074054();

      v52 = *(v51 + 16);

      swift_getKeyPath();
      *&v261 = v52;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v53 = *(v52 + 16);

      v54 = [v53 categories];

      v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if ((v55 & 0xC000000000000001) != 0)
      {
        goto LABEL_225;
      }

      if (v7 < *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_61:
        v84 = *(v55 + 8 * v7 + 32);
LABEL_62:
        v85 = v84;

        v86 = CalculateUnitCategory.id.getter();
        v88 = v87;

        v89 = type metadata accessor for UnitConversionPopoverView(0);
        v90 = v2 + *(v89 + 44);
        v91 = *(v90 + 16);
        v261 = *v90;
        v262 = v91;
        v258 = v86;
        v259 = v88;
        sub_10003AE84(&qword_1001588C0, &qword_100113210);
        State.wrappedValue.setter();
        v92 = v2 + *(v89 + 48);
        v93 = *(v92 + 16);
        v261 = *v92;
        v262 = v93;
        v258 = 0;
        v259 = 0;
        State.wrappedValue.setter();
        goto LABEL_171;
      }

      __break(1u);
    }

    static KeyEquivalent.rightArrow.getter();
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v15(v10, v7);
    if (v56)
    {
      v15(v13, v7);
      v57 = *v2;
      v58 = *(v2 + 8);

      if ((v58 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v59 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v252 + 8))(v6, v251);
        v57 = v261;
      }

      swift_getKeyPath();
      *&v261 = v57;
      sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v60 = *(v57 + 54);

      if (v60 != 8)
      {
        goto LABEL_171;
      }

      v61 = *(v2 + 24);

      LODWORD(v250) = v61;
      if ((v61 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v62 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v252 + 8))(v6, v251);
      }

      v63 = sub_100074054();

      v64 = *(v63 + 16);

      swift_getKeyPath();
      *&v261 = v64;
      sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v65 = *(v64 + 16);

      v66 = [v65 categories];

      sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
      v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v68);
      *(&v245 - 2) = v2;
      sub_1000BAE94(sub_1000D35FC, (&v245 - 4), v67);
      v70 = v69;
      LOBYTE(v66) = v71;

      if (v66)
      {
        goto LABEL_171;
      }

      v7 = v70 + 1;
      if (!__OFADD__(v70, 1))
      {

        if ((v250 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v72 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v252 + 8))(v6, v251);
        }

        v73 = sub_100074054();

        v74 = *(v73 + 16);

        swift_getKeyPath();
        *&v261 = v74;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v75 = *(v74 + 16);

        v76 = [v75 categories];

        v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        if (!(v77 >> 62))
        {
          v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_55:

          if (v7 >= v78)
          {
            goto LABEL_171;
          }

          if ((v250 & 1) == 0)
          {
            static os_log_type_t.fault.getter();
            v79 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();

            (*(v252 + 8))(v6, v251);
          }

          v80 = sub_100074054();

          v81 = *(v80 + 16);

          swift_getKeyPath();
          *&v261 = v81;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v82 = *(v81 + 16);

          v83 = [v82 categories];

          v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          if ((v55 & 0xC000000000000001) != 0)
          {
            goto LABEL_225;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_252:
            __break(1u);
            goto LABEL_253;
          }

          if (v7 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_253:
            __break(1u);
            goto LABEL_254;
          }

          goto LABEL_61;
        }

LABEL_246:
        v78 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_55;
      }

LABEL_245:
      __break(1u);
      goto LABEL_246;
    }

    static KeyEquivalent.space.getter();
    v137 = dispatch thunk of static Equatable.== infix(_:_:)();
    v15(v10, v7);
    if (v137)
    {
      v15(v13, v7);
    }

    else
    {
      static KeyEquivalent.return.getter();
      v179 = dispatch thunk of static Equatable.== infix(_:_:)();
      v15(v10, v7);
      v15(v13, v7);
      if ((v179 & 1) == 0)
      {
        goto LABEL_171;
      }
    }

    v180 = *v2;
    v181 = *(v2 + 8);

    if ((v181 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v182 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v252 + 8))(v6, v251);
      v180 = v261;
    }

    swift_getKeyPath();
    *&v261 = v180;
    sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v183 = *(v180 + 54);

    if ((v183 - 6) > 2)
    {
      goto LABEL_171;
    }

    v184 = v2 + *(type metadata accessor for UnitConversionPopoverView(0) + 48);
    v185 = *(v184 + 16);
    v261 = *v184;
    v262 = v185;
    sub_10003AE84(&qword_1001588C0, &qword_100113210);
    State.wrappedValue.getter();
    if (!v259)
    {
      goto LABEL_171;
    }

    v186 = *(v2 + 24);

    if ((v186 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v187 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v252 + 8))(v6, v251);
    }

    v188 = sub_100074054();

    v189 = *(v188 + 16);

    swift_getKeyPath();
    *&v261 = v189;
    sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v190 = *(v189 + 16);

    v191 = String._bridgeToObjectiveC()();

    v192 = [v190 findUnitWithName:v191];

    if (!v192)
    {
      goto LABEL_171;
    }

    v193 = *(v2 + 65);
    v194 = CalculateUnit.id.getter();
    v196 = v195;
    if (v193 == 1)
    {

      if ((v186 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v197 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v252 + 8))(v6, v251);
      }

      sub_100074054();

      v198 = sub_100072328();

      v199 = CalculateUnit.id.getter();
      v201 = v200;

      if (v194 != v199 || v196 != v201)
      {
        v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v202 & 1) == 0)
        {

          if ((v186 & 1) == 0)
          {
            static os_log_type_t.fault.getter();
            v203 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();

            (*(v252 + 8))(v6, v251);
          }

          sub_100074054();

          sub_1000726F8(v192);
LABEL_202:

          v232 = *(v2 + 56);
          v233 = *(v2 + 64);
          *&v261 = *(v2 + 48);
          *(&v261 + 1) = v232;
          LOBYTE(v262) = v233;
          LOBYTE(v258) = 0;

          sub_10003AE84(&qword_100155868, &qword_10010DB60);
          Binding.wrappedValue.setter();

          goto LABEL_203;
        }

        goto LABEL_203;
      }
    }

    else
    {

      if ((v186 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v224 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v252 + 8))(v6, v251);
      }

      sub_100074054();

      v225 = sub_100072148();

      v226 = CalculateUnit.id.getter();
      v228 = v227;

      if (v194 != v226 || v196 != v228)
      {
        v230 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v230 & 1) == 0)
        {

          if ((v186 & 1) == 0)
          {
            static os_log_type_t.fault.getter();
            v231 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();

            (*(v252 + 8))(v6, v251);
          }

          sub_100074054();

          sub_1000733A8(v192);
          goto LABEL_202;
        }

LABEL_203:

        goto LABEL_171;
      }
    }

    goto LABEL_214;
  }

  v15(v13, v7);
  v16 = *v1;
  v26 = *(v1 + 8);

  v27 = v16;
  if ((v26 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v252 + 8))(v6, v251);
    v27 = v261;
  }

  swift_getKeyPath();
  *&v261 = v27;
  v29 = sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v27 + 54);

  if (v30 > 6)
  {
    if (v30 == 7)
    {
      LODWORD(v250) = v26;
      v138 = (v2 + *(type metadata accessor for UnitConversionPopoverView(0) + 48));
      KeyPath = *v138;
      v15 = v138[1];
      v139 = v138[2];
      *&v261 = KeyPath;
      *(&v261 + 1) = v15;
      v249 = v139;
      v262 = v139;
      sub_10003AE84(&qword_1001588C0, &qword_100113210);
      State.wrappedValue.getter();
      v21 = v259;
      v248 = v258;
      v140 = *(v2 + 24);

      if ((v140 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v141 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v252 + 8))(v6, v251);
      }

      v142 = sub_100074054();

      v107 = *(v142 + 16);

      v2 = swift_getKeyPath();
      *&v261 = v107;
      sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v132 = *(v107 + 32);

      if (!(v132 >> 62))
      {
        if (!*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_213;
        }

LABEL_97:
        if ((v132 & 0xC000000000000001) != 0)
        {
          v143 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_100;
        }

        if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v143 = *(v132 + 32);
LABEL_100:
          v144 = v143;

          v145 = CalculateUnit.id.getter();
          v147 = v146;

          if (!v21)
          {
            if (v147)
            {
              goto LABEL_214;
            }

            goto LABEL_215;
          }

          if (v147)
          {
            if (v248 == v145 && v21 == v147)
            {
            }

            else
            {
              v223 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v223 & 1) == 0)
              {
                goto LABEL_171;
              }
            }

            goto LABEL_215;
          }

LABEL_214:

          goto LABEL_171;
        }

        __break(1u);
LABEL_239:
        __break(1u);
        goto LABEL_240;
      }

LABEL_212:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_213:

        if (v21)
        {
          goto LABEL_214;
        }

LABEL_215:

        if ((v250 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v238 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v252 + 8))(v6, v251);
          v16 = v258;
        }

        swift_getKeyPath();
        v258 = v16;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v16 + 54) != 4)
        {
          sub_100058740(4u);
        }

        v258 = KeyPath;
        v259 = v15;
        v260 = v249;
        v256 = 0uLL;
        State.wrappedValue.setter();
        goto LABEL_171;
      }

      goto LABEL_97;
    }

    v7 = v26;
    if (v30 != 8)
    {
      if (v30 == 11)
      {

        if ((v26 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v31 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v252 + 8))(v6, v251);
          v16 = v261;
        }

        swift_getKeyPath();
        *&v261 = v16;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v16 + 54) == 4)
        {
          goto LABEL_170;
        }

        v32 = swift_getKeyPath();
        __chkstk_darwin(v32);
        *(&v245 - 2) = v16;
        *(&v245 - 8) = 4;
        *&v261 = v16;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      goto LABEL_171;
    }

    v148 = sub_1000BB550();
    if (!v148)
    {
      goto LABEL_171;
    }

    v150 = v148;
    v151 = v149;
    v249 = v29;
    v152 = (v2 + *(type metadata accessor for UnitConversionPopoverView(0) + 48));
    v153 = v152[1];
    v154 = v152[2];
    v248 = *v152;
    *&v261 = v248;
    *(&v261 + 1) = v153;
    v262 = v154;
    v250 = sub_10003AE84(&qword_1001588C0, &qword_100113210);
    State.wrappedValue.getter();
    v155 = v258;
    v2 = v259;
    if (v151 >> 62)
    {
      v239 = v258;
      v240 = _CocoaArrayWrapper.endIndex.getter();
      v155 = v239;
      if (v240)
      {
        goto LABEL_108;
      }
    }

    else if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_108:
      *(&v246 + 1) = v155;
      v247 = v154;
      v156 = v153;
      if ((v151 & 0xC000000000000001) != 0)
      {
        v157 = v150;
        v158 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_111;
      }

      if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v157 = v150;
        v158 = *(v151 + 32);
LABEL_111:
        v159 = v158;
        v160 = CalculateUnit.id.getter();
        v162 = v161;

        v150 = v157;
        v153 = v156;
        if (v2)
        {
          v154 = v247;
          if (v162)
          {
            if (*(&v246 + 1) == v160 && v2 == v162)
            {
            }

            else
            {
              v229 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v229 & 1) == 0)
              {
LABEL_236:

                goto LABEL_171;
              }
            }

            goto LABEL_230;
          }

LABEL_229:

          goto LABEL_171;
        }

        v154 = v247;
        if (v162)
        {
LABEL_235:

          goto LABEL_236;
        }

LABEL_230:

        if ((v7 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v241 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v252 + 8))(v6, v251);
          v16 = v261;
        }

        swift_getKeyPath();
        *&v261 = v16;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v16 + 54) != 4)
        {
          sub_100058740(4u);
        }

        *&v261 = v248;
        *(&v261 + 1) = v153;
        v262 = v154;
        v258 = 0;
        v259 = 0;

        State.wrappedValue.setter();

        goto LABEL_235;
      }

      __break(1u);
      goto LABEL_245;
    }

    if (v2)
    {
      goto LABEL_229;
    }

    goto LABEL_230;
  }

  if (v30 == 5)
  {

    if ((v26 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v163 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v252 + 8))(v6, v251);
      v16 = v261;
    }

    swift_getKeyPath();
    *&v261 = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v16 + 54) == 4)
    {
      goto LABEL_170;
    }

    v123 = 4;
    goto LABEL_169;
  }

  LODWORD(v250) = v26;
  if (v30 != 6)
  {
    goto LABEL_171;
  }

  v94 = *(v2 + 24);

  if ((v94 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v95 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v252 + 8))(v6, v251);
  }

  sub_100074054();

  v96 = type metadata accessor for UnitConversionPopoverView(0);
  v97 = v2 + *(v96 + 56);
  v98 = *v97;
  v99 = *(v97 + 16);
  v261 = v98;
  v262 = v99;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  sub_1000AB4DC(v258, v259);
  v101 = v100;

  v102 = sub_1000BAFA8(v101);

  if (v102 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_214;
    }
  }

  else if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_214;
  }

  v249 = v29;
  v103 = (v2 + *(v96 + 48));
  v105 = *v103;
  v104 = v103[1];
  v106 = v103[2];
  *&v246 = v105;
  *&v261 = v105;
  *(&v261 + 1) = v104;
  *(&v246 + 1) = v104;
  v247 = v106;
  v262 = v106;
  v107 = sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  v108 = v258;
  v109 = v259;
  v245 = v102 & 0xC000000000000001;
  v248 = v107;
  if ((v102 & 0xC000000000000001) != 0)
  {
    v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_239;
    }

    v110 = *(v102 + 32);
  }

  v111 = v110;
  v112 = CalculateUnit.id.getter();
  v114 = v113;

  if (v109)
  {
    if (v108 == v112 && v109 == v114)
    {

LABEL_176:

      if ((v250 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v217 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v252 + 8))(v6, v251);
        v16 = v261;
      }

      swift_getKeyPath();
      *&v261 = v16;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v16 + 54) != 4)
      {
        sub_100058740(4u);
      }

      v261 = v246;
      v262 = v247;
      v258 = 0;
      v259 = 0;
      goto LABEL_207;
    }

    v216 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v216)
    {
      goto LABEL_176;
    }
  }

  else
  {
  }

  __chkstk_darwin(v215);
  *(&v245 - 2) = v2;
  sub_1000BAE94(sub_1000CF1E4, (&v245 - 4), v102);
  if (v219)
  {
    goto LABEL_214;
  }

  v220 = __OFSUB__(v218, 1);
  v221 = v218 - 1;
  if (v220)
  {
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  if ((v221 & 0x8000000000000000) != 0)
  {
    goto LABEL_214;
  }

  if (v245)
  {
    v222 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_206:
    v234 = v222;

    v235 = CalculateUnit.id.getter();
    v237 = v236;

    v261 = v246;
    v262 = v247;
    v258 = v235;
    v259 = v237;
LABEL_207:
    State.wrappedValue.setter();
    goto LABEL_171;
  }

  if (v221 < *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v222 = *(v102 + 8 * v221 + 32);
    goto LABEL_206;
  }

LABEL_255:
  __break(1u);
}

uint64_t sub_1000C1E78()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UnitConversionPopoverView(0);
  v7 = (v0 + *(v6 + 56));
  v8 = v7[1];
  v10 = v7[2];
  *&v32 = *v7;
  v9 = v32;
  *(&v32 + 1) = v8;
  v33 = v10;

  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  String.removeAll(keepingCapacity:)(0);
  v29 = v9;
  v30 = v8;
  v31 = v10;
  v27 = v34;
  v28 = v35;
  State.wrappedValue.setter();

  v11 = *v0;
  v12 = *(v0 + 8);

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v11 = v32;
  }

  swift_getKeyPath();
  *&v32 = v11;
  sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + 54) == 8)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v26 = v3;
    __chkstk_darwin(KeyPath);
    *(&v25 - 2) = v11;
    *(&v25 - 8) = 8;
    *&v32 = v11;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v3 = v26;
  }

  v15 = *(v1 + 24);

  if ((v15 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v17 = sub_100074054();

  swift_getKeyPath();
  *&v32 = v17;
  sub_1000CEBE0(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v17 + 32);

  v19 = CalculateUnitCategory.id.getter();
  v21 = v20;

  v22 = (v1 + *(v6 + 44));
  v23 = *(v22 + 2);
  v32 = *v22;
  v33 = v23;
  v29 = v19;
  v30 = v21;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  return State.wrappedValue.setter();
}

double sub_1000C2300(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  LODWORD(a1) = *(a1 + 8);

  if (a1 == 1)
  {

    v7 = v6;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v9 = *(v3 + 8);
    v9(v5, v2);
    v7 = v18;

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v9(v5, v2);
    v6 = v18;
  }

  v11 = *(v6 + 16);

  swift_getKeyPath();
  v18 = v11;
  sub_1000CEBE0(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + 40);

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  swift_getKeyPath();
  v18 = v7;
  sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v7 + 54);
  if (v14 == 11 || v14 != v13)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v17 - 2) = v7;
    *(&v17 - 8) = v13;
    v18 = v7;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
  }

  return result;
}

void *sub_1000C2698(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  v8 = type metadata accessor for UnitConversionPopoverView(0);
  v9 = a3 + v8[13];
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  LOBYTE(v29) = *v9;
  v10 = v29;
  *(&v29 + 1) = v11;
  LOBYTE(v30) = v12;
  LOBYTE(v27) = a2;
  sub_10003AE84(&qword_100156AA8, &qword_100110298);
  FocusState.wrappedValue.setter();
  v13 = (a3 + v8[12]);
  v14 = *(v13 + 2);
  v29 = *v13;
  v30 = v14;
  v27 = 0;
  v28 = 0;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.setter();
  LOBYTE(v29) = v10;
  *(&v29 + 1) = v11;
  LOBYTE(v30) = v12;
  result = FocusState.wrappedValue.getter();
  if (v27 == 5)
  {
    v16 = *(a3 + 24);

    if ((v16 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v26 + 8))(v7, v5);
    }

    v18 = sub_100074054();

    swift_getKeyPath();
    *&v29 = v18;
    sub_1000CEBE0(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v18 + 32);

    v20 = CalculateUnitCategory.id.getter();
    v22 = v21;

    v23 = (a3 + v8[11]);
    v24 = *(v23 + 2);
    v29 = *v23;
    v30 = v24;
    v27 = v20;
    v28 = v22;
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000C297C(uint64_t a1)
{
  type metadata accessor for UnitConversionPopoverView(0);
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  return State.wrappedValue.setter();
}

unint64_t sub_1000C29F8()
{
  result = qword_100158848;
  if (!qword_100158848)
  {
    sub_10003AECC(&qword_100158840, &qword_1001131B0);
    sub_1000C2AB0();
    sub_100004880(&qword_100158870, &qword_100158878, &qword_1001131C8, &unk_100113920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158848);
  }

  return result;
}

unint64_t sub_1000C2AB0()
{
  result = qword_100158850;
  if (!qword_100158850)
  {
    sub_10003AECC(&qword_100158858, &qword_1001131B8);
    sub_10003AECC(&qword_100158860, &qword_1001131C0);
    type metadata accessor for PlainListStyle();
    sub_100004880(&qword_100158868, &qword_100158860, &qword_1001131C0, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000CEBE0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158850);
  }

  return result;
}

uint64_t sub_1000C2BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnitConversionPopoverView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10003AE84(&qword_100158D38, &qword_100113770);
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v15 = sub_10003AE84(&qword_100158D40, &qword_100113778);
  __chkstk_darwin(v15 - 8);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  sub_1000CEB08(a1, v10);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  sub_1000D1EAC(v10, v22 + v21, type metadata accessor for UnitConversionPopoverView);
  v47 = sub_1000D1840;
  v48 = v22;
  static AccessibilityChildBehavior.contain.getter();
  v23 = sub_10003AE84(&qword_100158D48, &qword_100113780);
  v24 = sub_100004880(&qword_100158D50, &qword_100158D48, &qword_100113780, &protocol conformance descriptor for ScrollViewReader<A>);
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v3);

  LocalizedStringKey.init(stringLiteral:)();
  v25 = Text.init(_:tableName:bundle:comment:)();
  v27 = v26;
  LOBYTE(v22) = v28;
  v47 = v23;
  v48 = v24;
  swift_getOpaqueTypeConformance2();
  v45 = v20;
  v29 = v43;
  View.accessibilityLabel(_:)();
  sub_10000C6AC(v25, v27, v22 & 1);

  v44[1](v14, v29);
  if (qword_1001545E0 != -1)
  {
    swift_once();
  }

  v30 = qword_100160C08;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v43 = v47;
  v31 = v48;
  v32 = v49;
  v33 = v50;
  v34 = v51;
  v35 = v52;
  v36 = v45;
  sub_100008E68(v45, v17, &qword_100158D40, &qword_100113778);
  v37 = v17;
  v44 = v17;
  v38 = v46;
  sub_100008E68(v37, v46, &qword_100158D40, &qword_100113778);
  v39 = v38 + *(sub_10003AE84(&qword_100158D58, &qword_100113788) + 48);
  v40 = v43;
  *v39 = v30;
  *(v39 + 8) = v40;
  *(v39 + 16) = v31;
  *(v39 + 24) = v32;
  *(v39 + 32) = v33;
  *(v39 + 40) = v34;
  *(v39 + 48) = v35;

  sub_1000035CC(v36, &qword_100158D40, &qword_100113778);

  return sub_1000035CC(v44, &qword_100158D40, &qword_100113778);
}

uint64_t sub_1000C3108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a1;
  v90 = a3;
  v4 = type metadata accessor for UnitConversionPopoverView(0);
  v85 = *(v4 - 8);
  __chkstk_darwin(v4);
  v93 = v5;
  v89 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for ScrollViewProxy();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v84 = v6;
  v86 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v79 = type metadata accessor for ContentMarginPlacement();
  *&v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ScrollIndicatorVisibility();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003AE84(&qword_100158D60, &qword_100113790);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v62 - v11;
  v68 = sub_10003AE84(&qword_100158D68, &qword_100113798);
  v64 = *(v68 - 8);
  __chkstk_darwin(v68);
  v14 = &v62 - v13;
  v73 = sub_10003AE84(&qword_100158D70, &qword_1001137A0);
  v69 = *(v73 - 8);
  __chkstk_darwin(v73);
  v65 = &v62 - v15;
  v72 = sub_10003AE84(&qword_100158D78, &qword_1001137A8);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v66 = &v62 - v16;
  v74 = sub_10003AE84(&qword_100158D80, &qword_1001137B0);
  v71 = *(v74 - 8);
  __chkstk_darwin(v74);
  v67 = &v62 - v17;
  v91 = sub_10003AE84(&qword_100158D88, &qword_1001137B8);
  __chkstk_darwin(v91);
  v92 = &v62 - v18;
  v82 = sub_10003AE84(&qword_100158D90, &qword_1001137C0);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v62 - v19;
  static Axis.Set.horizontal.getter();
  v96 = a2;
  sub_10003AE84(&qword_100158D98, &qword_1001137C8);
  sub_1000D18C8();
  ScrollView.init(_:showsIndicators:content:)();
  v83 = v4;
  v20 = *(v4 + 52);
  v95 = a2;
  v21 = (a2 + v20);
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v21) = v21[16];
  LOBYTE(v97) = v22;
  *(&v97 + 1) = v23;
  LOBYTE(v98) = v21;
  sub_10003AE84(&qword_100156AA8, &qword_100110298);
  FocusState.projectedValue.getter();
  v97 = v100;
  LOBYTE(v98) = v101;
  LOBYTE(v100) = 5;
  v24 = sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  v25 = sub_100004880(&qword_100158DC8, &qword_100158D60, &qword_100113790, &protocol conformance descriptor for ScrollView<A>);
  v26 = sub_10001BAF0(&qword_100157818, sub_10001BB68, &protocol conformance descriptor for <A> A?);
  View.focused<A>(_:equals:)();

  (*(v10 + 8))(v12, v9);
  v27 = v63;
  static ScrollIndicatorVisibility.hidden.getter();
  sub_10003AE84(&qword_100158DD0, &qword_1001137E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  v29 = static Axis.Set.vertical.getter();
  *(inited + 32) = v29;
  v30 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v30;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v29)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v30)
  {
    Axis.Set.init(rawValue:)();
  }

  *&v97 = v9;
  *(&v97 + 1) = v24;
  v98 = v25;
  v99 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v65;
  v33 = v68;
  View.scrollIndicators(_:axes:)();
  (*(v75 + 8))(v27, v76);
  (*(v64 + 8))(v14, v33);
  static Edge.Set.horizontal.getter();
  v34 = v77;
  static ContentMarginPlacement.scrollContent.getter();
  *&v97 = v33;
  *(&v97 + 1) = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v66;
  v37 = v73;
  View.contentMargins(_:_:for:)();
  (*(v78 + 8))(v34, v79);
  (*(v69 + 8))(v32, v37);
  *&v97 = v37;
  *(&v97 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v67;
  v39 = v72;
  View.scrollEdgeEffectDisabled(_:)();
  (*(v70 + 8))(v36, v39);
  if (qword_1001546D8 != -1)
  {
    swift_once();
  }

  v40 = xmmword_1001586B8;
  v41 = *(v71 + 32);
  v79 = *(&xmmword_1001586B8 + 8);
  v78 = unk_1001586D0;
  v42 = v92;
  v41(v92, v38, v74);
  v43 = &v42[*(v91 + 36)];
  *v43 = v40;
  *(v43 + 24) = v78;
  *(v43 + 8) = v79;
  v44 = v95;
  v45 = (v95 + *(v83 + 44));
  v46 = *(v45 + 2);
  v97 = *v45;
  v98 = v46;

  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  *&v79 = *(&v100 + 1);
  v97 = v100;
  v47 = v87;
  v83 = *(v87 + 16);
  v48 = v86;
  v49 = v88;
  (v83)(v86, v94, v88);
  v50 = v89;
  sub_1000CEB08(v44, v89);
  v51 = *(v47 + 80);
  v52 = *(v85 + 80);
  v53 = (v51 + 16) & ~v51;
  *&v78 = v53;
  v54 = (v84 + v52 + v53) & ~v52;
  v85 = v51 | v52;
  v55 = swift_allocObject();
  v87 = *(v47 + 32);
  (v87)(v55 + v53, v48, v49);
  v84 = type metadata accessor for UnitConversionPopoverView;
  sub_1000D1EAC(v50, v55 + v54, type metadata accessor for UnitConversionPopoverView);
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  sub_1000D1A10();
  sub_10007BBE4(&qword_100158BF8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  v56 = v80;
  v57 = v92;
  View.onChange<A>(of:initial:_:)();

  sub_1000035CC(v57, &qword_100158D88, &qword_1001137B8);
  (v83)(v48, v94, v49);
  sub_1000CEB08(v95, v50);
  v58 = swift_allocObject();
  (v87)(v58 + v78, v48, v49);
  sub_1000D1EAC(v50, v58 + v54, v84);
  v59 = v90;
  (*(v81 + 32))(v90, v56, v82);
  result = sub_10003AE84(&qword_100158DF0, &qword_1001137F0);
  v61 = (v59 + *(result + 36));
  *v61 = sub_1000D35F8;
  v61[1] = v58;
  v61[2] = 0;
  v61[3] = 0;
  return result;
}

uint64_t sub_1000C3EDC@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v3);
  static VerticalAlignment.center.getter();
  LODWORD(v16) = 0;
  sub_1000CEBE0(&qword_100158E00, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10003AE84(&qword_100158E08, &qword_100113800);
  sub_1000D1D18();
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  type metadata accessor for UnitConversionPopoverView(0);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = (a2 + *(sub_10003AE84(&qword_100158DB0, &qword_1001137D0) + 36));
  *v4 = v16;
  v4[1] = v17;
  v4[2] = v18;
  v5 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = sub_10003AE84(&qword_100158D98, &qword_1001137C8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_1000C40EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for UnitConversionPopoverView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 24);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  v12 = sub_100074054();

  v13 = *(v12 + 16);

  swift_getKeyPath();
  v21 = v13;
  sub_1000CEBE0(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v13 + 16);

  v15 = [v14 categories];

  sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v16;
  sub_1000CEB08(a1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_1000D1EAC(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for UnitConversionPopoverView);
  sub_10003AE84(&qword_100158E28, &qword_100113810);
  sub_10003AE84(&qword_100158E20, &qword_100113808);
  sub_100004880(&qword_100158E30, &qword_100158E28, &qword_100113810, &protocol conformance descriptor for [A]);
  sub_100004880(&qword_100158E18, &qword_100158E20, &qword_100113808, &protocol conformance descriptor for IDView<A, B>);
  sub_1000D0570(&qword_100158E38, &qword_1001551E0, CalculateUnitCategory_ptr, &protocol conformance descriptor for CalculateUnitCategory);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000C4504@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for UnitConversionPopoverView(0);
  v6 = v5 - 8;
  v36 = *(v5 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for UnitConversionCategoryButton(0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = [*a1 displayName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v15;
  v35 = v14;

  v16 = (a2 + *(v6 + 52));
  v17 = *(v16 + 2);
  v40 = *v16;
  v41 = v17;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  v19 = v38;
  v18 = v39;
  v20 = CalculateUnitCategory.id.getter();
  if (v18)
  {
    if (v19 == v20 && v18 == v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v22 = 0;
  }

  sub_1000CEB08(a2, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v12;
  sub_1000D1EAC(&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for UnitConversionPopoverView);
  v25 = v34;
  *v11 = v35;
  *(v11 + 1) = v25;
  v11[16] = v22 & 1;
  *(v11 + 3) = sub_1000D1E48;
  *(v11 + 4) = v24;
  *&v40 = 0x4018000000000000;
  sub_1000103CC();
  v26 = v12;
  ScaledMetric.init(wrappedValue:)();
  *&v40 = 0x4028000000000000;
  ScaledMetric.init(wrappedValue:)();
  v27 = CalculateUnitCategory.id.getter();
  v29 = v28;
  v30 = v11;
  v31 = v37;
  sub_1000D1EAC(v30, v37, type metadata accessor for UnitConversionCategoryButton);
  result = sub_10003AE84(&qword_100158E20, &qword_100113808);
  v33 = (v31 + *(result + 52));
  *v33 = v27;
  v33[1] = v29;
  return result;
}

uint64_t sub_1000C47FC(uint64_t a1, uint64_t a2)
{
  v2 = CalculateUnitCategory.id.getter();
  v4 = v3;
  type metadata accessor for UnitConversionPopoverView(0);
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (!v9)
  {

    goto LABEL_9;
  }

  if (v2 == v8 && v9 == v4)
  {
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
LABEL_9:
    CalculateUnitCategory.id.getter();
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000C491C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnitConversionPopoverView(0);
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  sub_10007BBE4(&qword_100158C00, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_1000C4A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v61 = a2;
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  v59 = v2;
  v60 = v3;
  __chkstk_darwin(v2);
  v56 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnitConversionPopoverView(0);
  v51 = *(v5 - 8);
  v49 = *(v51 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v46 - v8;
  v57 = sub_10003AE84(&qword_100158B10, &qword_1001134D8);
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v46 - v11;
  v12 = type metadata accessor for AccessibilityTraits();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10003AE84(&qword_100158B18, &qword_1001134E0);
  __chkstk_darwin(v16 - 8);
  v47 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  LocalizedStringKey.init(stringLiteral:)();
  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  v62 = v21;
  v63 = v22;
  v25 = v24 & 1;
  v64 = v24 & 1;
  v65 = v26;
  static AccessibilityTraits.isHeader.getter();
  v46 = v20;
  View.accessibilityAddTraits(_:)();
  (*(v13 + 8))(v15, v12);
  sub_10000C6AC(v21, v23, v25);

  sub_1000CEB08(v52, v7);
  v27 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v28 = swift_allocObject();
  sub_1000D1EAC(v7, v28 + v27, type metadata accessor for UnitConversionPopoverView);
  v29 = v48;
  Button.init(action:label:)();
  v30 = v56;
  PlainButtonStyle.init()();
  sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440, &protocol conformance descriptor for Button<A>);
  sub_1000CEBE0(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v31 = v50;
  v32 = v55;
  v33 = v59;
  View.buttonStyle<A>(_:)();
  (*(v60 + 8))(v30, v33);
  (*(v58 + 8))(v29, v32);
  v34 = v47;
  sub_100008E68(v20, v47, &qword_100158B18, &qword_1001134E0);
  v36 = v53;
  v35 = v54;
  v37 = *(v54 + 16);
  v38 = v31;
  v39 = v31;
  v40 = v57;
  v37(v53, v38, v57);
  v41 = v61;
  sub_100008E68(v34, v61, &qword_100158B18, &qword_1001134E0);
  v42 = sub_10003AE84(&qword_100158B20, &qword_1001134E8);
  v43 = v41 + *(v42 + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  v37((v41 + *(v42 + 64)), v36, v40);
  v44 = *(v35 + 8);
  v44(v39, v40);
  sub_1000035CC(v46, &qword_100158B18, &qword_1001134E0);
  v44(v36, v40);
  return sub_1000035CC(v34, &qword_100158B18, &qword_1001134E0);
}

uint64_t sub_1000C5090@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_10003AE84(&qword_100158A90, &qword_100113408);
  __chkstk_darwin(v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  *v8 = static Axis.Set.horizontal.getter();
  v9 = sub_10003AE84(&qword_100158A98, &qword_100113410);
  sub_1000C5458(a1, &v8[*(v9 + 44)]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = &v8[*(sub_10003AE84(&qword_100158AA0, &qword_100113418) + 36)];
  v11 = v46;
  *v10 = v45;
  v10[1] = v11;
  v10[2] = v47;
  if (qword_100154588 != -1)
  {
    swift_once();
  }

  v12 = qword_100160BB0;
  KeyPath = swift_getKeyPath();
  v14 = &v8[*(sub_10003AE84(&qword_100158AA8, &qword_100113450) + 36)];
  *v14 = KeyPath;
  v14[1] = v12;
  v15 = qword_1001546C0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_100160D20;
  v17 = swift_getKeyPath();
  v18 = &v8[*(sub_10003AE84(&qword_100158AB0, &qword_100113488) + 36)];
  *v18 = v17;
  v18[1] = v16;

  LOBYTE(v16) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v8[*(sub_10003AE84(&qword_100158AB8, &qword_100113490) + 36)];
  *v27 = v16;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  LOBYTE(v16) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v28 = &v8[*(v3 + 36)];
  *v28 = v16;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  if (qword_1001545E0 != -1)
  {
    swift_once();
  }

  v33 = qword_100160C08;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v34 = v48;
  v35 = v49;
  v36 = v50;
  v37 = v51;
  v42 = v53;
  v43 = v52;
  sub_100008E68(v8, v5, &qword_100158A90, &qword_100113408);
  v38 = v44;
  sub_100008E68(v5, v44, &qword_100158A90, &qword_100113408);
  v39 = v38 + *(sub_10003AE84(&qword_100158AC0, &qword_100113498) + 48);
  *v39 = v33;
  *(v39 + 8) = v34;
  *(v39 + 16) = v35;
  *(v39 + 24) = v36;
  *(v39 + 32) = v37;
  v40 = v42;
  *(v39 + 40) = v43;
  *(v39 + 48) = v40;

  sub_1000035CC(v8, &qword_100158A90, &qword_100113408);

  return sub_1000035CC(v5, &qword_100158A90, &qword_100113408);
}

uint64_t sub_1000C5458@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v61 = a1;
  v55 = sub_10003AE84(&qword_100158AC8, &unk_1001134A0);
  __chkstk_darwin(v55);
  v58 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v51 = &v48 - v4;
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  v57 = sub_10003AE84(&qword_100158AD0, &unk_1001152D0);
  __chkstk_darwin(v57);
  v56 = &v48 - v12;
  v13 = sub_10003AE84(&qword_100158AD8, &qword_1001134B0);
  v54 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v59 = &v48 - v17;
  v50 = sub_10003AE84(&qword_100158AE0, &qword_1001134B8);
  __chkstk_darwin(v50);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v48 - v21;
  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = sub_10003AE84(&qword_100158AE8, &qword_1001134C0);
  v24 = *(v23 + 44);
  v53 = v22;
  v25 = &v22[v24];
  v26 = v61;
  sub_1000C4A00(v61, v25);
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v27 = *(v23 + 44);
  v52 = v19;
  sub_1000C4A00(v26, &v19[v27]);
  v28 = v6;
  v29 = *(v6 + 104);
  v29(v11, enum case for DynamicTypeSize.xSmall(_:), v5);
  v29(v8, enum case for DynamicTypeSize.accessibility2(_:), v5);
  sub_1000CEBE0(&qword_100158AF0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v31 = *(v6 + 32);
    v32 = v51;
    v31(v51, v11, v5);
    v33 = v55;
    v31((v32 + *(v55 + 48)), v8, v5);
    v61 = v15;
    v34 = v58;
    sub_100008E68(v32, v58, &qword_100158AC8, &unk_1001134A0);
    v49 = v13;
    v35 = *(v33 + 48);
    v36 = v56;
    v31(v56, v34, v5);
    v37 = *(v28 + 8);
    v37(v34 + v35, v5);
    sub_10000D5B8(v32, v34, &qword_100158AC8, &unk_1001134A0);
    v31((v36 + *(v57 + 36)), (v34 + *(v33 + 48)), v5);
    v37(v34, v5);
    sub_100004880(&qword_100158AF8, &qword_100158AE0, &qword_1001134B8, &protocol conformance descriptor for HStack<A>);
    sub_100004880(&qword_100158B00, &qword_100158AD0, &unk_1001152D0, &protocol conformance descriptor for ClosedRange<A>);
    v38 = v59;
    v39 = v52;
    View.dynamicTypeSize<A>(_:)();
    sub_1000035CC(v36, &qword_100158AD0, &unk_1001152D0);
    sub_1000035CC(v39, &qword_100158AE0, &qword_1001134B8);
    v40 = v53;
    sub_100008E68(v53, v39, &qword_100158AE0, &qword_1001134B8);
    v41 = v54;
    v42 = *(v54 + 16);
    v43 = v61;
    v44 = v49;
    v42(v61, v38, v49);
    v45 = v60;
    sub_100008E68(v39, v60, &qword_100158AE0, &qword_1001134B8);
    v46 = sub_10003AE84(&qword_100158B08, &unk_1001134C8);
    v42((v45 + *(v46 + 48)), v43, v44);
    v47 = *(v41 + 8);
    v47(v38, v44);
    sub_1000035CC(v40, &qword_100158AE0, &qword_1001134B8);
    v47(v43, v44);
    return sub_1000035CC(v39, &qword_100158AE0, &qword_1001134B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C5AC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a2;
  v100 = a1;
  v92 = a5;
  v90 = type metadata accessor for ScrollViewProxy();
  v103 = *(v90 - 8);
  v101 = *(v103 + 64);
  __chkstk_darwin(v90);
  v89 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UnitConversionPopoverView(0);
  v98 = *(v8 - 8);
  v9 = *(v98 + 64);
  v10 = v8 - 8;
  v97 = v8 - 8;
  __chkstk_darwin(v8 - 8);
  v85 = v9;
  v11 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10003AE84(&qword_1001589D8, &qword_1001133A0);
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v13 = &v76 - v12;
  v81 = sub_10003AE84(&qword_100158B50, &qword_100113538);
  v82 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v76 - v14;
  v86 = sub_10003AE84(&qword_100158B58, &qword_100113540);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v78 = &v76 - v15;
  v99 = sub_10003AE84(&qword_100158B60, &qword_100113548);
  __chkstk_darwin(v99);
  v102 = &v76 - v16;
  KeyPath = swift_getKeyPath();
  v18 = (a4 + *(v10 + 56));
  v19 = *(v18 + 2);
  v114 = *v18;
  v115 = v19;

  v88 = sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.projectedValue.getter();
  v76 = v111;
  v20 = v112;
  v21 = v113;
  v93 = v11;
  sub_1000CEB08(a4, v11);
  v84 = *(v98 + 80);
  v96 = v9 + ((v84 + 16) & ~v84);
  v22 = (v84 + 16) & ~v84;
  v95 = v22;
  v98 = v84 | 7;
  v23 = swift_allocObject();
  v94 = type metadata accessor for UnitConversionPopoverView;
  sub_1000D1EAC(v11, v23 + v22, type metadata accessor for UnitConversionPopoverView);
  v113 = v21;
  *&v114 = a3;
  v83 = a3;
  v111 = v76;
  v112 = v20;
  v106 = &v114;
  v107 = KeyPath;
  v108 = sub_1000D06C4;
  v109 = v23;
  sub_10003AE84(&qword_100158A30, &qword_1001133C8);
  sub_1000D022C();
  List.init(selection:content:)();

  v105 = a4;
  static HorizontalAlignment.center.getter();
  v24 = sub_10003AE84(&qword_100158B68, &qword_100113580);
  v25 = sub_100004880(&qword_1001589E0, &qword_1001589D8, &qword_1001133A0, &protocol conformance descriptor for List<A, B>);
  v26 = sub_10003AECC(&qword_100158B70, &qword_100113588);
  v27 = sub_100004880(&qword_100158B78, &qword_100158B70, &qword_100113588, &protocol conformance descriptor for VStack<A>);
  *&v111 = v26;
  *(&v111 + 1) = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v77;
  v30 = v79;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  (*(v80 + 8))(v13, v30);
  v104 = a4;
  static HorizontalAlignment.center.getter();
  v31 = sub_10003AE84(&qword_100158B80, &qword_100113590);
  *&v111 = v30;
  *(&v111 + 1) = v24;
  v112 = v25;
  v113 = OpaqueTypeConformance2;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = sub_1000D0764();
  v32 = v78;
  v33 = v81;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  (*(v82 + 8))(v29, v33);
  v34 = (a4 + *(v97 + 60));
  v35 = *v34;
  v36 = *(v34 + 1);
  LOBYTE(v34) = v34[16];
  LOBYTE(v111) = v35;
  *(&v111 + 1) = v36;
  LOBYTE(v112) = v34;
  sub_10003AE84(&qword_100156AA8, &qword_100110298);
  FocusState.projectedValue.getter();
  v110 = 8;
  sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  *&v111 = v33;
  *(&v111 + 1) = v31;
  v112 = v74;
  v113 = v75;
  swift_getOpaqueTypeConformance2();
  sub_10001BAF0(&qword_100157818, sub_10001BB68, &protocol conformance descriptor for <A> A?);
  v37 = v102;
  v38 = v86;
  View.focused<A>(_:equals:)();

  v87[1](v32, v38);
  v39 = static HorizontalAlignment.listRowSeparatorTrailing.getter();
  v40 = a4;
  v41 = v93;
  sub_1000CEB08(a4, v93);
  v42 = swift_allocObject();
  v43 = v94;
  sub_1000D1EAC(v41, v42 + v95, v94);
  v44 = &v37[*(sub_10003AE84(&qword_100158BE0, &qword_1001135C0) + 36)];
  *v44 = v39;
  v44[1] = sub_1000D0A20;
  v44[2] = v42;
  v45 = v103;
  v46 = *(v103 + 16);
  v86 = v103 + 16;
  v87 = v46;
  v47 = v89;
  v48 = v90;
  (v46)(v89, v100, v90);
  v49 = v40;
  sub_1000CEB08(v40, v41);
  v50 = *(v45 + 80);
  v51 = v45;
  v52 = (v50 + 16) & ~v50;
  v53 = (v101 + v84 + v52) & ~v84;
  v54 = (v85 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = *(v51 + 32);
  v103 = v51 + 32;
  v85 = v56;
  v56(v55 + v52, v47, v48);
  v57 = v93;
  sub_1000D1EAC(v93, v55 + v53, v43);
  v58 = (v55 + v54);
  v59 = v91;
  v60 = v83;
  *v58 = v91;
  v58[1] = v60;
  v61 = &v102[*(v99 + 36)];
  *v61 = sub_1000D0A90;
  v61[1] = v55;
  v61[2] = 0;
  v61[3] = 0;
  v62 = v49 + *(v97 + 52);
  v63 = *(v62 + 16);
  v111 = *v62;
  v112 = v63;
  v64 = v60;

  v65 = v59;
  State.wrappedValue.getter();
  v111 = v114;
  v66 = v57;
  sub_1000CEB08(v49, v57);
  (v87)(v47, v100, v48);
  v67 = &v96[v50] & ~v50;
  v68 = (v101 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  sub_1000D1EAC(v66, v69 + v95, v94);
  v85(v69 + v67, v47, v48);
  v70 = (v69 + v68);
  *v70 = v65;
  v70[1] = v64;

  v71 = v65;
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  sub_1000D0C30();
  sub_10007BBE4(&qword_100158BF8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  v72 = v102;
  View.onChange<A>(of:initial:_:)();

  return sub_1000035CC(v72, &qword_100158B60, &qword_100113548);
}

uint64_t sub_1000C66CC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v98 = type metadata accessor for UnitConversionPopoverView(0);
  v8 = *(v98 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v98);
  v10 = type metadata accessor for EnvironmentValues();
  v88 = *(v10 - 8);
  v89 = v10;
  __chkstk_darwin(v10);
  v87 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for UnitConversionUnitButton(0);
  __chkstk_darwin(v94);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10003AE84(&qword_100158A68, &unk_1001133E0);
  __chkstk_darwin(v95);
  v96 = &v84 - v14;
  v97 = sub_10003AE84(&qword_100158A50, &qword_1001133D8);
  __chkstk_darwin(v97);
  v16 = &v84 - v15;
  v17 = sub_10003AE84(&qword_100158B40, &qword_1001134F8);
  v102 = *(v17 - 8);
  v103 = v17;
  __chkstk_darwin(v17);
  v99 = &v84 - v18;
  v101 = sub_10003AE84(&qword_100158A40, &qword_1001133D0);
  *&v19 = __chkstk_darwin(v101).n128_u64[0];
  v100 = &v84 - v20;
  v21 = [a1 displayName];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v23;
  v93 = v22;

  v24 = [a1 shortName];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v26;
  v91 = v25;

  if (a2)
  {
    v27 = 0;
  }

  else
  {
    v85 = v8;
    v84 = CalculateUnit.id.getter();
    v29 = v28;
    v30 = *(v4 + 24);
    v31 = *(v4 + 65) == 1;
    v86 = a3;
    if (v31)
    {

      if ((v30 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v32 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v33 = v87;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v88 + 8))(v33, v89);
      }

      sub_100074054();

      v34 = sub_100072148();
    }

    else
    {

      if ((v30 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v35 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v36 = v87;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v88 + 8))(v36, v89);
      }

      sub_100074054();

      v34 = sub_100072328();
    }

    v37 = v34;

    v38 = CalculateUnit.id.getter();
    v40 = v39;

    if (v84 == v38 && v29 == v40)
    {
      v27 = 1;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v8 = v85;
  }

  sub_1000CEB08(v4, &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v42 = swift_allocObject();
  sub_1000D1EAC(&v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41, type metadata accessor for UnitConversionPopoverView);
  *(v42 + ((v9 + v41 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  a1;
  v43 = static Font.body.getter();
  v44 = static Font.footnote.getter();
  v45 = v92;
  *v13 = v93;
  *(v13 + 1) = v45;
  v46 = v90;
  *(v13 + 2) = v91;
  *(v13 + 3) = v46;
  v13[32] = v27 & 1;
  v13[33] = 0;
  *(v13 + 5) = sub_1000D05B4;
  *(v13 + 6) = v42;
  *(v13 + 7) = v43;
  *(v13 + 8) = v44;
  if (qword_100154570 != -1)
  {
    swift_once();
  }

  *(v13 + 9) = qword_100160B98;
  v47 = qword_100154578;

  v48 = v96;
  if (v47 != -1)
  {
    swift_once();
  }

  *(v13 + 10) = qword_100160BA0;
  v49 = qword_100154580;

  if (v49 != -1)
  {
    swift_once();
  }

  *(v13 + 11) = qword_100160BA8;
  *&v106 = 0x4043000000000000;
  sub_1000103CC();

  ScaledMetric.init(wrappedValue:)();
  v50 = CalculateUnit.id.getter();
  v52 = v51;
  sub_1000D1EAC(v13, v48, type metadata accessor for UnitConversionUnitButton);
  v53 = (v48 + *(v95 + 52));
  *v53 = v50;
  v53[1] = v52;
  v54 = CalculateUnit.id.getter();
  v56 = v55;
  v57 = *(v4 + 24);
  if (*(v4 + 65) == 1)
  {

    if ((v57 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v58 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v59 = v87;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v88 + 8))(v59, v89);
    }

    sub_100074054();

    v60 = sub_100072328();
  }

  else
  {

    if ((v57 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v61 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v62 = v87;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v88 + 8))(v62, v89);
    }

    sub_100074054();

    v60 = sub_100072148();
  }

  v63 = v60;

  v64 = CalculateUnit.id.getter();
  v66 = v65;

  if (v54 == v64 && v56 == v66)
  {
    v67 = 1;
  }

  else
  {
    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v68 = v99;
  v69 = v97;

  KeyPath = swift_getKeyPath();
  v71 = swift_allocObject();
  *(v71 + 16) = v67 & 1;
  sub_10000D5B8(v48, v16, &qword_100158A68, &unk_1001133E0);
  v72 = &v16[*(v69 + 36)];
  *v72 = KeyPath;
  v72[1] = sub_1000296EC;
  v72[2] = v71;
  if (qword_1001545E0 != -1)
  {
    swift_once();
  }

  static VerticalEdge.Set.all.getter();
  sub_1000D03E0();
  View.listRowSeparatorTint(_:edges:)();
  sub_1000035CC(v16, &qword_100158A50, &qword_1001133D8);
  v73 = CalculateUnit.id.getter();
  v75 = v74;
  v76 = v4 + *(v98 + 48);
  v77 = *(v76 + 16);
  v106 = *v76;
  v107 = v77;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (v105)
  {
    if (v73 == v104 && v105 == v75)
    {

      goto LABEL_41;
    }

    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v78)
    {
LABEL_41:
      if (qword_1001545F8 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_45;
    }
  }

  else
  {
  }

  if (qword_1001545F0 != -1)
  {
LABEL_45:
    swift_once();
  }

LABEL_44:
  v80 = v102;
  v79 = v103;

  v81 = AnyView.init<A>(_:)();
  v82 = v100;
  (*(v80 + 32))(v100, v68, v79);
  *(v82 + *(v101 + 36)) = v81;
  static VerticalEdge.Set.top.getter();
  sub_1000D02EC();
  View.listRowSeparator(_:edges:)();
  return sub_1000035CC(v82, &qword_100158A40, &qword_1001133D0);
}

uint64_t sub_1000C72A0(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100158A80, &qword_1001133F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_10003AE84(&qword_100158B70, &qword_100113588);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_10003AE84(&qword_100158D30, &qword_100113768);
  sub_1000C2BFC(a1, &v7[*(v8 + 44)]);
  static ScrollEdgeEffectStyle.automatic.getter();
  v9 = type metadata accessor for ScrollEdgeEffectStyle();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  static Edge.Set.all.getter();
  sub_100004880(&qword_100158B78, &qword_100158B70, &qword_100113588, &protocol conformance descriptor for VStack<A>);
  View.scrollEdgeEffectStyle(_:for:)();
  sub_1000035CC(v4, &qword_100158A80, &qword_1001133F8);
  return sub_1000035CC(v7, &qword_100158B70, &qword_100113588);
}

uint64_t sub_1000C747C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003AE84(&qword_100158A80, &qword_1001133F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v49 - v5;
  v7 = sub_10003AE84(&qword_100158B90, &qword_100113598);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = sub_10003AE84(&qword_100158C08, &qword_1001135C8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v14 = (a1 + *(type metadata accessor for UnitConversionPopoverView(0) + 44));
  v15 = *(v14 + 2);
  v53 = *v14;
  v54 = v15;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (!v52)
  {
    goto LABEL_7;
  }

  if (v51 != 0x79636E6572727543 || v52 != 0xE800000000000000)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_6;
    }

LABEL_7:
    v47 = 1;
    return (*(v11 + 56))(a2, v47, 1, v10);
  }

LABEL_6:
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = sub_10003AE84(&qword_100158C10, &qword_1001135D0);
  sub_1000CB690(a1, &v9[*(v17 + 44)]);
  v18 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v9[*(sub_10003AE84(&qword_100158BB8, &qword_1001135A8) + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v9[*(sub_10003AE84(&qword_100158BA8, &qword_1001135A0) + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  KeyPath = swift_getKeyPath();
  v39 = &v9[*(v7 + 36)];
  v40 = sub_10003AE84(&qword_100158BD8, &qword_1001135B8);
  v50 = v10;
  v41 = a2;
  v42 = *(v40 + 28);
  v43 = enum case for ColorScheme.dark(_:);
  v44 = type metadata accessor for ColorScheme();
  v45 = v39 + v42;
  a2 = v41;
  (*(*(v44 - 8) + 104))(v45, v43, v44);
  *v39 = KeyPath;
  static ScrollEdgeEffectStyle.automatic.getter();
  v46 = type metadata accessor for ScrollEdgeEffectStyle();
  (*(*(v46 - 8) + 56))(v6, 0, 1, v46);
  static Edge.Set.all.getter();
  sub_1000D0824();
  v10 = v50;
  View.scrollEdgeEffectStyle(_:for:)();
  sub_1000035CC(v6, &qword_100158A80, &qword_1001133F8);
  sub_1000035CC(v9, &qword_100158B90, &qword_100113598);
  (*(v11 + 32))(v41, v13, v10);
  v47 = 0;
  return (*(v11 + 56))(a2, v47, 1, v10);
}

double sub_1000C78E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for CalculatorSizeClass(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HorizontalAlignment.trailing.getter();
  ViewDimensions.subscript.getter();
  v14 = v13;
  v15 = type metadata accessor for UnitConversionPopoverView(0);
  sub_100008E68(a2 + *(v15 + 36), v8, &qword_100154948, qword_1001130B0);
  sub_100008E68(a2 + *(v15 + 40), v5, &qword_100154948, qword_1001130B0);
  v16 = type metadata accessor for UserInterfaceSizeClass();
  v17 = *(*(v16 - 8) + 56);
  v17(v12, 1, 1, v16);
  v18 = *(v10 + 28);
  v17(&v12[v18], 1, 1, v16);
  sub_10006E758(v8, v12);
  sub_10006E758(v5, &v12[v18]);
  if (sub_10003DC4C(v12))
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 8.0;
  }

  sub_10006E7C8(v12);
  return v14 - v19;
}

double sub_1000C7AD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 24);
  if (*(a2 + 65) == 1)
  {

    if ((v9 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v10 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v8, v5);
    }

    sub_100074054();

    v11 = sub_100072148();
  }

  else
  {

    if ((v9 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v8, v5);
    }

    sub_100074054();

    v11 = sub_100072328();
  }

  v13 = v11;

  v14 = CalculateUnit.id.getter();
  v16 = v15;

  v19[0] = v14;
  v19[1] = v16;
  static UnitPoint.top.getter();
  ScrollViewProxy.scrollTo<A>(_:anchor:)();

  if ([a3 unitType] == 16)
  {

    if ((v9 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v8, v5);
    }

    sub_100074054();

    sub_1000521F4();
  }

  return result;
}

uint64_t sub_1000C7E28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v48 = a4;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for UnitConversionPopoverView(0) + 44));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v52 = *v9;
  v53 = v11;
  v54 = v12;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (v51)
  {
    if (v50 == 0x79636E6572727543 && v51 == 0xE800000000000000)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v14 = *(a1 + 24);

    if ((v14 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v15 = static Log.runtimeIssuesLog.getter();
      v47 = v7;
      v16 = v6;
      v17 = a2;
      v18 = v15;
      os_log(_:dso:log:_:_:)();

      a2 = v17;
      v6 = v16;
      v7 = v47;
      v19 = v49;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v19, v6);
    }

    sub_100074054();

    sub_100051FD4();
  }

LABEL_9:
  v52 = v10;
  v53 = v11;
  v54 = v12;
  State.wrappedValue.getter();
  v20 = v51;
  if (v51)
  {
    v47 = a2;
    v21 = v50;
    v22 = *(a1 + 24);

    if ((v22 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v24 = v49;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v24, v6);
    }

    v25 = sub_100074054();

    swift_getKeyPath();
    v52 = v25;
    sub_1000CEBE0(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = *(v25 + 32);

    v27 = CalculateUnitCategory.id.getter();
    v29 = v28;

    if (v21 == v27 && v20 == v29)
    {

LABEL_16:
      if (*(a1 + 65) == 1)
      {

        if ((v22 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v31 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v32 = v49;
          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v7 + 8))(v32, v6);
        }

        sub_100074054();

        v33 = sub_100072148();
      }

      else
      {

        if ((v22 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v41 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v42 = v49;
          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v7 + 8))(v42, v6);
        }

        sub_100074054();

        v33 = sub_100072328();
      }

      v43 = v33;

      v44 = CalculateUnit.id.getter();
      v46 = v45;

      v52 = v44;
      v53 = v46;
      static UnitPoint.top.getter();
      ScrollViewProxy.scrollTo<A>(_:anchor:)();
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_16;
    }
  }

  v34 = v48;
  if (!(v48 >> 62))
  {
    result = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_22;
    }

LABEL_31:
    v38 = 0;
    v40 = 0;
    goto LABEL_32;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_22:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v34 + 32);
LABEL_25:
    v37 = v36;
    v38 = CalculateUnit.id.getter();
    v40 = v39;

LABEL_32:
    v52 = v38;
    v53 = v40;
    static UnitPoint.top.getter();
    sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
    sub_10007BBE4(&qword_100158C00, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
    ScrollViewProxy.scrollTo<A>(_:anchor:)();
  }

  __break(1u);
  return result;
}

double sub_1000C84D8(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for UnitConversionPopoverView(0) + 56);
  v7 = *v6;
  v8 = *(v6 + 2);
  v18 = v7;
  v19 = v8;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  v10 = v17[1];
  v9 = v17[2];

  v12 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    v13 = *a1;
    v14 = *(a1 + 8);

    if ((v14 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v15 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v3 + 8))(v5, v2);
      v13 = v18;
    }

    swift_getKeyPath();
    *&v18 = v13;
    sub_1000CEBE0(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v13 + 54) != 8)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v17[-2] = v13;
      LOBYTE(v17[-1]) = 8;
      *&v18 = v13;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1000C8790(char *a1)
{
  v2 = sub_10003AE84(&qword_100158A80, &qword_1001133F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_10003AE84(&qword_1001589E8, &qword_1001133A8);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  v8 = sub_10003AE84(&qword_100158A88, &qword_100113400);
  sub_1000C5090(a1, &v7[*(v8 + 44)]);
  LOBYTE(a1) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v9 = &v7[*(v5 + 36)];
  *v9 = a1;
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  *(v9 + 4) = v13;
  v9[40] = 0;
  static ScrollEdgeEffectStyle.automatic.getter();
  v14 = type metadata accessor for ScrollEdgeEffectStyle();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  static Edge.Set.top.getter();
  sub_1000CFEFC();
  View.scrollEdgeEffectStyle(_:for:)();
  sub_1000035CC(v4, &qword_100158A80, &qword_1001133F8);
  return sub_1000035CC(v7, &qword_1001589E8, &qword_1001133A8);
}

double sub_1000C8974@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = static HorizontalAlignment.center.getter();
  v34 = 0;
  sub_1000CA404(v3, &v22);
  v44 = v30;
  v45 = v31;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v47[8] = v30;
  v47[9] = v31;
  v47[4] = v26;
  v47[5] = v27;
  v47[6] = v28;
  v47[7] = v29;
  v47[0] = v22;
  v47[1] = v23;
  v46 = v32;
  v48 = v32;
  v47[2] = v24;
  v47[3] = v25;
  sub_100008E68(&v36, v21, &qword_100158E40, &unk_100113818);
  sub_1000035CC(v47, &qword_100158E40, &unk_100113818);
  *&v33[119] = v43;
  *&v33[135] = v44;
  *&v33[151] = v45;
  *&v33[55] = v39;
  *&v33[71] = v40;
  *&v33[87] = v41;
  *&v33[103] = v42;
  *&v33[7] = v36;
  *&v33[23] = v37;
  *&v33[167] = v46;
  *&v33[39] = v38;
  v6 = v34;
  if (qword_1001545B8 != -1)
  {
    swift_once();
  }

  v7 = qword_100160BE0;
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v35[55] = v25;
  *&v35[71] = v26;
  *&v35[87] = v27;
  *&v35[103] = v28;
  *&v35[7] = v22;
  *&v35[23] = v23;
  *&v35[39] = v24;
  v10 = static Edge.Set.all.getter();
  v11 = *&v33[96];
  *(a2 + 129) = *&v33[112];
  v12 = *&v33[144];
  *(a2 + 145) = *&v33[128];
  *(a2 + 161) = v12;
  *(a2 + 176) = *&v33[159];
  v13 = *&v33[32];
  *(a2 + 65) = *&v33[48];
  v14 = *&v33[80];
  *(a2 + 81) = *&v33[64];
  *(a2 + 97) = v14;
  *(a2 + 113) = v11;
  v15 = *&v33[16];
  *(a2 + 17) = *v33;
  *(a2 + 33) = v15;
  *(a2 + 49) = v13;
  v16 = *&v35[64];
  v17 = *&v35[96];
  *(a2 + 297) = *&v35[80];
  *(a2 + 313) = v17;
  v18 = *&v35[16];
  *(a2 + 217) = *v35;
  *(a2 + 233) = v18;
  v19 = *&v35[48];
  *(a2 + 249) = *&v35[32];
  *a2 = v5;
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = v6;
  *(a2 + 192) = KeyPath;
  *(a2 + 200) = v7;
  *(a2 + 208) = v9;
  *(a2 + 216) = 1;
  *(a2 + 328) = *&v35[111];
  *(a2 + 265) = v19;
  *(a2 + 281) = v16;
  *(a2 + 336) = v10;
  result = 0.0;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 1;
  return result;
}

uint64_t sub_1000C8C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v32 = a4;
  v6 = type metadata accessor for UnitConversionPopoverView(0);
  v7 = v6 - 8;
  v27 = *(v6 - 8);
  v29 = *(v27 + 64);
  __chkstk_darwin(v6);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ScrollViewProxy();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v25);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003AE84(&qword_100158E50, &qword_100113830);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v33 = a2;
  v34 = a3;
  static Axis.Set.vertical.getter();
  sub_10003AE84(&qword_100158E58, &qword_100113838);
  sub_100004880(&qword_100158E60, &qword_100158E58, &qword_100113838, &protocol conformance descriptor for LazyVStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  v16 = (a3 + *(v7 + 56));
  v17 = *(v16 + 2);
  v36 = *v16;
  v37 = v17;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  v36 = v35;
  v18 = v25;
  (*(v9 + 16))(v11, v28, v25);
  v19 = v26;
  sub_1000CEB08(a3, v26);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = (v10 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v20, v11, v18);
  sub_1000D1EAC(v19, v22 + v21, type metadata accessor for UnitConversionPopoverView);
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  sub_100004880(&qword_100158E68, &qword_100158E50, &qword_100113830, &protocol conformance descriptor for ScrollView<A>);
  sub_10007BBE4(&qword_100158BF8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  v23 = v30;
  View.onChange<A>(of:initial:_:)();

  return (*(v31 + 8))(v15, v23);
}

uint64_t sub_1000C9054(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v2);
  static HorizontalAlignment.center.getter();
  sub_1000CEBE0(&qword_100158E00, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10003AE84(&qword_100158E70, &qword_100113840);
  sub_1000D2404();
  return LazyVStack.init(alignment:spacing:pinnedViews:content:)();
}

double sub_1000C9190@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = type metadata accessor for UnitConversionPopoverView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = *(a1 + 16);
  v9 = v8 - 1;
  v17[8] = 0;
  v17[9] = v8;
  swift_getKeyPath();
  sub_1000CEB08(a2, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_1000D1EAC(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for UnitConversionPopoverView);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;

  sub_10003AE84(&qword_100158EC0, &qword_100113888);
  sub_10003AE84(&qword_100158EC8, &qword_100113890);
  sub_1000D278C();
  v12 = sub_10003AECC(&qword_100158E80, &qword_100113848);
  v13 = sub_10003AECC(&qword_100158E88, &qword_100113850);
  v14 = sub_1000D2538();
  v15 = sub_100004880(&qword_100158EB8, &qword_100158E88, &qword_100113850, &protocol conformance descriptor for LazyVStack<A>);
  v17[2] = v12;
  v17[3] = v13;
  v17[4] = &type metadata for EmptyView;
  v17[5] = v14;
  v17[6] = v15;
  v17[7] = &protocol witness table for EmptyView;
  swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  return result;
}

void sub_1000C93F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10003AE84(&qword_100158EE0, &qword_100113898);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*a1 < *(a2 + 16))
  {
    v21 = &v18;
    v13 = __chkstk_darwin(v10);
    v18 = v13;
    *(&v18 - 3) = v13;
    *(&v18 - 4) = a3;
    *(&v18 - 3) = v14;
    *(&v18 - 2) = a4;
    v19 = v15;
    v16 = v13.n128_u64[0];
    v20 = v16;

    sub_1000CA170(v16, v22);
    sub_10003AE84(&qword_100158E80, &qword_100113848);
    sub_10003AE84(&qword_100158E88, &qword_100113850);
    sub_1000D2538();
    sub_100004880(&qword_100158EB8, &qword_100158E88, &qword_100113850, &protocol conformance descriptor for LazyVStack<A>);
    Section<>.init(header:content:)();
    v17 = v19;
    Section<>.collapsible(_:)();

    (*(v9 + 8))(v12, v17);
    return;
  }

  __break(1u);
}

uint64_t sub_1000C9678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v5);
  static HorizontalAlignment.center.getter();
  sub_1000CEBE0(&qword_100158E00, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10003AE84(&qword_100158EE8, &qword_1001138A0);
  sub_1000D28B4();
  return LazyVStack.init(alignment:spacing:pinnedViews:content:)();
}

double sub_1000C97D0@<D0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a4;
  v11 = type metadata accessor for UnitConversionPopoverView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a6;
  if (a2 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v17 = v16 - 1;
    if (!__OFSUB__(v16, 1))
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if ((v16 & 0x8000000000000000) == 0)
      {
LABEL_8:
        v15 = a5;
        goto LABEL_3;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_8;
  }

  v15 = a5;
  v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = v16 - 1;
LABEL_3:
  v27 = 0;
  v28 = v16;
  v24[1] = swift_getKeyPath();
  sub_1000CEB08(a3, v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  sub_1000D1EAC(v14, v21 + v18, type metadata accessor for UnitConversionPopoverView);
  *(v21 + v19) = v25;
  *(v21 + v20) = v15;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v22 = a1;

  sub_10003AE84(&qword_100158EC0, &qword_100113888);
  sub_10003AE84(&qword_100158F00, &qword_1001138A8);
  sub_1000D278C();
  sub_1000D2938();
  ForEach<>.init(_:id:content:)();
  return result;
}

uint64_t sub_1000C9A10@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v102 = a6;
  v13 = sub_10003AE84(&qword_100158F38, &qword_1001138C8);
  __chkstk_darwin(v13);
  v106 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v96 - v16;
  v18 = sub_10003AE84(&qword_100158F30, &qword_1001138C0);
  __chkstk_darwin(v18 - 8);
  v111 = (&v96 - v19);
  v107 = sub_10003AE84(&qword_100158F20, &qword_1001138B8);
  __chkstk_darwin(v107);
  v109 = &v96 - v20;
  v21 = sub_10003AE84(&qword_100158F10, &qword_1001138B0);
  __chkstk_darwin(v21);
  v23 = &v96 - v22;
  v24 = *a1;
  v108 = v25;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v24 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  v26 = *(a2 + 8 * v24 + 32);
LABEL_5:
  v27 = v26;
  v28 = static HorizontalAlignment.leading.getter();
  v29 = v111;
  *v111 = v28;
  v29[1] = 0;
  *(v29 + 16) = 0;
  v110 = v27;
  sub_1000C66CC(v27, 1, v17);
  LOBYTE(v27) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v17[*(sub_10003AE84(&qword_100158F40, &qword_1001138D0) + 36)];
  *v38 = v27;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  LOBYTE(v27) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v39 = &v17[*(v13 + 36)];
  *v39 = v27;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v104 = a3;
  v105 = a7;
  v103 = v23;
  if (a4 == a5 && v24 == v102)
  {
    v44 = 0;
    v101 = 0;
    v102 = 0;
    v99 = 0;
    v100 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    goto LABEL_10;
  }

  if (qword_1001545E0 != -1)
  {
    goto LABEL_24;
  }

LABEL_9:
  v52 = qword_100160C08;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v53 = v124;
  v101 = v125;
  v102 = v123;
  v54 = v126;
  v99 = v128;
  v100 = v127;
  v55 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v48 = v56;
  v49 = v57;
  v50 = v58;
  v51 = v59;
  LOBYTE(v121[0]) = v53;
  LOBYTE(v114) = v54;
  LOBYTE(v129) = 0;
  v47 = v53;
  v45 = v55;
  v46 = v114;
  v44 = v52;

LABEL_10:
  v97 = v47;
  v98 = v46;
  v60 = sub_10003AE84(&qword_100158F48, &qword_1001138D8);
  v61 = v111 + *(v60 + 44);
  v62 = v106;
  sub_100008E68(v17, v106, &qword_100158F38, &qword_1001138C8);
  sub_100008E68(v62, v61, &qword_100158F38, &qword_1001138C8);
  v63 = v61 + *(sub_10003AE84(&qword_100158F50, &qword_1001138E0) + 48);
  v64 = v101;
  v65 = v102;
  *&v114 = v44;
  *(&v114 + 1) = v102;
  *&v115 = v47;
  *(&v115 + 1) = v101;
  *&v116 = v46;
  v67 = v99;
  v66 = v100;
  *(&v116 + 1) = v100;
  *&v117 = v99;
  *(&v117 + 1) = v45;
  *&v118 = v48;
  *(&v118 + 1) = v49;
  *&v119 = v50;
  *(&v119 + 1) = v51;
  v120 = 0;
  *(v63 + 96) = 0;
  v68 = v115;
  *v63 = v114;
  *(v63 + 16) = v68;
  v69 = v117;
  *(v63 + 32) = v116;
  *(v63 + 48) = v69;
  v70 = v119;
  *(v63 + 64) = v118;
  *(v63 + 80) = v70;
  sub_100008E68(&v114, v121, qword_100158F58, &qword_1001138E8);
  sub_1000035CC(v17, &qword_100158F38, &qword_1001138C8);
  v121[0] = v44;
  v121[1] = v65;
  v121[2] = v97;
  v121[3] = v64;
  v121[4] = v98;
  v121[5] = v66;
  v121[6] = v67;
  v121[7] = v45;
  v121[8] = v48;
  v121[9] = v49;
  v121[10] = v50;
  v121[11] = v51;
  v122 = 0;
  sub_1000035CC(v121, qword_100158F58, &qword_1001138E8);
  sub_1000035CC(v62, &qword_100158F38, &qword_1001138C8);
  v71 = CalculateUnit.id.getter();
  v73 = v72;
  v74 = v104 + *(type metadata accessor for UnitConversionPopoverView(0) + 48);
  v75 = *(v74 + 16);
  v129 = *v74;
  *&v130 = v75;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (!v113)
  {

    v76 = v103;
    goto LABEL_19;
  }

  v76 = v103;
  if (v71 != v112 || v113 != v73)
  {
    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v77)
    {
      goto LABEL_16;
    }

LABEL_19:
    v78 = static Color.clear.getter();
    goto LABEL_20;
  }

LABEL_16:
  if (qword_1001545F8 != -1)
  {
    swift_once();
  }

  v78 = qword_100160C20;

LABEL_20:
  v79 = static Edge.Set.all.getter();
  v80 = v109;
  sub_10000D5B8(v111, v109, &qword_100158F30, &qword_1001138C0);
  v81 = v80 + *(v107 + 36);
  *v81 = v78;
  *(v81 + 8) = v79;
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10000D5B8(v80, v76, &qword_100158F20, &qword_1001138B8);
  v82 = (v76 + *(v108 + 36));
  v83 = v130;
  *v82 = v129;
  v82[1] = v83;
  v82[2] = v131;
  v84 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;

  v93 = v105;
  sub_10000D5B8(v76, v105, &qword_100158F10, &qword_1001138B0);
  result = sub_10003AE84(&qword_100158F00, &qword_1001138A8);
  v95 = v93 + *(result + 36);
  *v95 = v84;
  *(v95 + 8) = v86;
  *(v95 + 16) = v88;
  *(v95 + 24) = v90;
  *(v95 + 32) = v92;
  *(v95 + 40) = 0;
  return result;
}

void sub_1000CA170(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 displayName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (qword_1001546C0 != -1)
  {
    swift_once();
  }

  v7 = qword_100160D20;
  v8 = qword_100154588;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_100160BB0;

  v10 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;
  *(a2 + 56) = v14;
  *(a2 + 64) = v16;
  *(a2 + 72) = v18;
  *(a2 + 80) = 0;
  *(a2 + 88) = v19;
  *(a2 + 96) = v21;
  *(a2 + 104) = v23;
  *(a2 + 112) = v25;
  *(a2 + 120) = v27;
  *(a2 + 128) = 0;
  *(a2 + 136) = v28;
  *(a2 + 144) = v29;
  *(a2 + 152) = v30;
  *(a2 + 160) = v31;
  *(a2 + 168) = v32;
  *(a2 + 176) = 0;
}

uint64_t sub_1000CA30C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnitConversionPopoverView(0);
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  static UnitPoint.center.getter();
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  sub_10007BBE4(&qword_100158C00, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_1000CA404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61[0] = a2;
  v3 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  __chkstk_darwin(v3 - 8);
  v66 = v61 - v4;
  v5 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100154410 != -1)
  {
    swift_once();
  }

  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v68 = Image.resizable(capInsets:resizingMode:)();
  (*(v7 + 8))(v9, v6);
  v10 = type metadata accessor for UnitConversionPopoverView(0);
  v11 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  v61[2] = v11;
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = v82;
  v71 = v81;
  v72 = v83;
  v13 = v84;
  v69 = v82;
  v70 = v84;
  v67 = v85;
  v74 = v86;
  v73 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v94) = v12;
  LOBYTE(v101._countAndFlagsBits) = v13;
  LOBYTE(v87) = 0;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x8000000100108D80;
  v22._countAndFlagsBits = 0x1000000000000012;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
  v61[3] = v10;
  v23 = (a1 + *(v10 + 56));
  v24 = *v23;
  v25 = *(v23 + 2);
  v94 = v24;
  *&v95 = v25;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v101);

  v26._countAndFlagsBits = 10256610;
  v26._object = 0xA300000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
  LocalizedStringKey.init(stringInterpolation:)();
  v27 = Text.init(_:tableName:bundle:comment:)();
  v29 = v28;
  v61[1] = a1;
  v31 = v30;
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.medium.getter();
  v32 = type metadata accessor for Font.Design();
  v33 = *(*(v32 - 8) + 56);
  v34 = v66;
  v33(v66, 1, 1, v32);
  static Font.system(size:weight:design:)();
  sub_1000035CC(v34, &qword_1001567E0, &qword_10010F970);
  v35 = Text.font(_:)();
  v63 = v36;
  v64 = v35;
  v62 = v37;
  v65 = v38;

  sub_10000C6AC(v27, v29, v31 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v39 = Text.init(_:tableName:bundle:comment:)();
  v41 = v40;
  v43 = v42;
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.medium.getter();
  v33(v34, 1, 1, v32);
  static Font.system(size:weight:design:)();
  sub_1000035CC(v34, &qword_1001567E0, &qword_10010F970);
  v44 = Text.font(_:)();
  v46 = v45;
  v48 = v47;
  v66 = v49;

  sub_10000C6AC(v39, v41, v43 & 1);

  v50 = v62 & 1;
  v77 = v62 & 1;
  *&v87 = v68;
  *(&v87 + 1) = v71;
  LOBYTE(v88) = v69;
  *(&v88 + 1) = *v80;
  DWORD1(v88) = *&v80[3];
  *(&v88 + 1) = v72;
  LOBYTE(v89) = v70;
  *(&v89 + 1) = *v79;
  DWORD1(v89) = *&v79[3];
  *(&v89 + 1) = v67;
  *&v90 = v74;
  BYTE8(v90) = v73;
  HIDWORD(v90) = *&v78[3];
  *(&v90 + 9) = *v78;
  *&v91 = v15;
  *(&v91 + 1) = v17;
  *&v92 = v19;
  *(&v92 + 1) = v21;
  v93 = 0;
  LOBYTE(v100) = 0;
  v98 = v91;
  v99 = v92;
  v96 = v89;
  v97 = v90;
  v94 = v87;
  v95 = v88;
  v76 = v62 & 1;
  LOBYTE(v27) = v48 & 1;
  v75 = v48 & 1;
  v51 = v88;
  v52 = v61[0];
  *v61[0] = v87;
  *(v52 + 16) = v51;
  v53 = v96;
  v54 = v97;
  v55 = v99;
  v56 = v100;
  *(v52 + 64) = v98;
  *(v52 + 80) = v55;
  *(v52 + 32) = v53;
  *(v52 + 48) = v54;
  v57 = v63;
  v58 = v64;
  *(v52 + 96) = v56;
  *(v52 + 104) = v58;
  *(v52 + 112) = v57;
  *(v52 + 120) = v50;
  v59 = v66;
  *(v52 + 128) = v65;
  *(v52 + 136) = v44;
  *(v52 + 144) = v46;
  *(v52 + 152) = v27;
  *(v52 + 160) = v59;
  sub_100008E68(&v87, &v101, &qword_100158E48, &qword_100113828);
  sub_10006564C(v58, v57, v50);

  sub_10006564C(v44, v46, v27);

  sub_10000C6AC(v44, v46, v27);

  sub_10000C6AC(v58, v57, v77);

  v101._countAndFlagsBits = v68;
  v101._object = v71;
  v102 = v69;
  *v103 = *v80;
  *&v103[3] = *&v80[3];
  v104 = v72;
  v105 = v70;
  *v106 = *v79;
  *&v106[3] = *&v79[3];
  v107 = v67;
  v108 = v74;
  v109 = v73;
  *v110 = *v78;
  *&v110[3] = *&v78[3];
  v111 = v15;
  v112 = v17;
  v113 = v19;
  v114 = v21;
  v115 = 0;
  return sub_1000035CC(&v101, &qword_100158E48, &qword_100113828);
}

uint64_t sub_1000CABAC(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for UnitConversionPopoverView(0) + 48);
  v9 = *(v8 + 2);
  v28 = *v8;
  v29 = v9;
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  v11 = v27[0];
  v10 = v27[1];
  v12 = CalculateUnit.id.getter();
  if (v10)
  {
    if (v11 == v12 && v10 == v13)
    {

      goto LABEL_21;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v15 = *(a1 + 24);
  if (*(a1 + 65) != 1)
  {

    if (v15)
    {
      sub_100074054();

      sub_1000733A8(a2);
      goto LABEL_12;
    }

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    sub_100074054();

    sub_1000733A8(a2);
LABEL_15:

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v16 = 0;
    goto LABEL_16;
  }

  if ((v15 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    sub_100074054();

    sub_1000726F8(a2);
    goto LABEL_15;
  }

  sub_100074054();

  sub_1000726F8(a2);
LABEL_12:

  v16 = 1;
LABEL_16:
  sub_100074054();

  sub_1000AABE0(a2);

  v20 = *(a1 + 8);

  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  if ((v16 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v23 = sub_100074054();

  sub_1000D62AC(v23);

LABEL_21:
  v24 = a1[7];
  v25 = *(a1 + 64);
  *&v28 = a1[6];
  *(&v28 + 1) = v24;
  LOBYTE(v29) = v25;
  LOBYTE(v27[0]) = 0;
  sub_10003AE84(&qword_100155868, &qword_10010DB60);
  return Binding.wrappedValue.setter();
}

double sub_1000CB140(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *(a1 + 24);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_100074054();

  sub_1000AB33C();

  return result;
}

uint64_t sub_1000CB2B0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000CB37C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10003AE84(&qword_100158C98, &qword_100113680);
  v10 = __chkstk_darwin(v21);
  v12 = &v21 - v11;
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6, v10);
  v13 = Image.resizable(capInsets:resizingMode:)();
  (*(v7 + 8))(v9, v6);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v25[38] = v29;
  *&v25[22] = v28;
  *&v25[6] = v27;
  *&v24[2] = *v25;
  v26 = 1;
  v23 = v13;
  *v24 = 1;
  *&v24[18] = *&v25[16];
  *&v24[34] = *&v25[32];
  *&v24[48] = *(&v29 + 1);
  *&v30[0] = a2;
  *(&v30[0] + 1) = a3;
  sub_10006345C();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  sub_10003AE84(&qword_100158CA8, &qword_100113688);
  sub_1000D1200();
  View.accessibilityLabel(_:)();
  sub_10000C6AC(v14, v16, v18 & 1);

  v30[2] = *&v24[16];
  v30[3] = *&v24[32];
  v31 = *&v24[48];
  v30[0] = v23;
  v30[1] = *v24;
  sub_1000035CC(v30, &qword_100158CA8, &qword_100113688);
  v19 = v22;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_1000035CC(v12, &qword_100158C98, &qword_100113680);
  result = sub_10003AE84(&qword_100158C60, &unk_100113658);
  *(v19 + *(result + 36)) = 0x4000000000000000;
  return result;
}

uint64_t sub_1000CB690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v154 = type metadata accessor for DynamicTypeSize();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v150 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v147 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_10003AE84(&qword_100158C18, &qword_100113608);
  __chkstk_darwin(v148);
  v149 = &v126 - v6;
  v152 = sub_10003AE84(&qword_100158C20, &qword_100113610);
  __chkstk_darwin(v152);
  v151 = &v126 - v7;
  v8 = sub_10003AE84(&qword_100158C28, &unk_100113618);
  v170 = *(v8 - 8);
  v171 = v8;
  __chkstk_darwin(v8);
  v155 = &v126 - v9;
  v10 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  __chkstk_darwin(v10 - 8);
  v164 = &v126 - v11;
  v173 = type metadata accessor for Date();
  v167 = *(v173 - 8);
  __chkstk_darwin(v173);
  v166 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10003AE84(&qword_100158C30, &qword_100113628);
  __chkstk_darwin(v13 - 8);
  v169 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v168 = &v126 - v16;
  v163 = sub_10003AE84(&qword_100158C38, &qword_100113630);
  __chkstk_darwin(v163);
  v18 = &v126 - v17;
  v161 = sub_10003AE84(&qword_100158C40, &qword_100113638);
  __chkstk_darwin(v161);
  v162 = &v126 - v19;
  v143 = type metadata accessor for PlainButtonStyle();
  v135 = *(v143 - 8);
  __chkstk_darwin(v143);
  v133 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10003AE84(&qword_100158C48, &qword_100113640);
  v132 = *(v141 - 8);
  __chkstk_darwin(v141);
  v131 = &v126 - v21;
  v142 = sub_10003AE84(&qword_100158C50, &qword_100113648);
  v136 = *(v142 - 8);
  __chkstk_darwin(v142);
  v134 = &v126 - v22;
  v138 = sub_10003AE84(&qword_100158C58, &qword_100113650);
  __chkstk_darwin(v138);
  v140 = &v126 - v23;
  v146 = sub_10003AE84(&qword_100158C60, &unk_100113658);
  __chkstk_darwin(v146);
  v130 = &v126 - v24;
  v25 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  __chkstk_darwin(v25 - 8);
  v27 = &v126 - v26;
  v145 = type metadata accessor for URL();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v129 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v137 = &v126 - v30;
  v157 = sub_10003AE84(&qword_100158C68, &unk_100113668);
  __chkstk_darwin(v157);
  v139 = &v126 - v31;
  v32 = sub_10003AE84(&qword_100154F60, &qword_10010C620);
  __chkstk_darwin(v32 - 8);
  v34 = &v126 - v33;
  v160 = type metadata accessor for EnvironmentValues();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for StocksKitCurrencyCache.Provider();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v126 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10003AE84(&qword_100158C70, &qword_100113678);
  __chkstk_darwin(v40 - 8);
  v165 = &v126 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v174 = &v126 - v43;
  v44 = a1;
  v45 = *(a1 + 24);

  v156 = v45;
  if ((v45 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v46 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v47 = v158;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v159 + 8))(v47, v160);
  }

  sub_100074054();

  sub_100050A28(v34);

  if ((*(v37 + 48))(v34, 1, v36) == 1)
  {
    sub_1000035CC(v34, &qword_100154F60, &qword_10010C620);
  }

  else
  {
    (*(v37 + 32))(v39, v34, v36);
    v48 = StocksKitCurrencyCache.Provider.logo.getter();
    if (v48)
    {
      v49 = v48;
      StocksKitCurrencyCache.Provider.destination.getter();
      v50 = v144;
      v51 = v145;
      v52 = (*(v144 + 48))(v27, 1, v145);
      v128 = v49;
      if (v52 == 1)
      {
        sub_1000035CC(v27, &qword_100155078, &qword_10010DBA0);
        v53 = StocksKitCurrencyCache.Provider.name.getter();
        v54 = v130;
        sub_1000CB37C(v53, v55, v130);

        sub_100008E68(v54, v140, &qword_100158C60, &unk_100113658);
        swift_storeEnumTagMultiPayload();
        v56 = sub_100004880(&qword_100158C80, &qword_100158C48, &qword_100113640, &protocol conformance descriptor for Link<A>);
        v57 = sub_1000CEBE0(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
        v175 = v141;
        v176 = v143;
        v177 = v56;
        v178 = v57;
        swift_getOpaqueTypeConformance2();
        sub_1000D108C();
        v58 = v139;
        _ConditionalContent<>.init(storage:)();
        sub_1000035CC(v54, &qword_100158C60, &unk_100113658);
      }

      else
      {
        v61 = v137;
        (*(v50 + 32))(v137, v27, v51);
        v62 = (*(v50 + 16))(v129, v61, v51);
        __chkstk_darwin(v62);
        *(&v126 - 4) = v44;
        *(&v126 - 3) = v49;
        v124 = v39;
        v130 = sub_1000D108C();
        v63 = v131;
        Link.init(destination:label:)();
        v64 = v133;
        PlainButtonStyle.init()();
        v129 = sub_100004880(&qword_100158C80, &qword_100158C48, &qword_100113640, &protocol conformance descriptor for Link<A>);
        v127 = sub_1000CEBE0(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
        v65 = v134;
        v66 = v141;
        v67 = v143;
        View.buttonStyle<A>(_:)();
        (*(v135 + 8))(v64, v67);
        (*(v132 + 8))(v63, v66);
        v68 = v136;
        v69 = v142;
        (*(v136 + 16))(v140, v65, v142);
        swift_storeEnumTagMultiPayload();
        v175 = v66;
        v176 = v67;
        v177 = v129;
        v178 = v127;
        swift_getOpaqueTypeConformance2();
        v58 = v139;
        _ConditionalContent<>.init(storage:)();
        (*(v68 + 8))(v65, v69);
        (*(v144 + 8))(v137, v145);
      }

      v70 = v173;
      sub_100008E68(v58, v162, &qword_100158C68, &unk_100113668);
      swift_storeEnumTagMultiPayload();
      sub_1000D0F40();
      sub_1000D128C();
      _ConditionalContent<>.init(storage:)();

      sub_1000035CC(v58, &qword_100158C68, &unk_100113668);
      (*(v37 + 8))(v39, v36);
      v60 = v168;
      v59 = v70;
      goto LABEL_14;
    }

    (*(v37 + 8))(v39, v36);
  }

  v59 = v173;
  v60 = v168;
  if (qword_100154418 != -1)
  {
    swift_once();
  }

  sub_1000CB37C(0x6620216F6F686179, 0xEE0065636E616E69, v18);
  *&v18[*(v163 + 36)] = 0x3FD3333333333333;
  sub_100008E68(v18, v162, &qword_100158C38, &qword_100113630);
  swift_storeEnumTagMultiPayload();
  sub_1000D0F40();
  sub_1000D128C();
  _ConditionalContent<>.init(storage:)();
  sub_1000035CC(v18, &qword_100158C38, &qword_100113630);
LABEL_14:

  if ((v156 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v71 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v72 = v158;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v159 + 8))(v72, v160);
  }

  v73 = sub_100074054();

  v74 = *(v73 + 24);

  swift_getKeyPath();
  v175 = v74;
  sub_1000CEBE0(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v75 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__currencyCacheLastRefreshDate;
  swift_beginAccess();
  v76 = v74 + v75;
  v77 = v164;
  sub_100008E68(v76, v164, &qword_100154E10, &qword_10010C4C0);

  v78 = v167;
  if ((*(v167 + 48))(v77, 1, v59) == 1)
  {
    sub_1000035CC(v77, &qword_100154E10, &qword_10010C4C0);
    v79 = 1;
    v80 = v171;
  }

  else
  {
    (*(v78 + 32))(v166, v77, v59);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v81._countAndFlagsBits = 0x2064657461647055;
    v81._object = 0xE800000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v81);
    v82._countAndFlagsBits = sub_10006D154();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v82);

    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v83);
    LocalizedStringKey.init(stringInterpolation:)();
    LOWORD(v125) = 256;
    v124 = 0;
    v84 = Text.init(_:tableName:bundle:comment:)();
    v86 = v85;
    v175 = v84;
    v176 = v85;
    v88 = v87 & 1;
    LOBYTE(v177) = v87 & 1;
    v178 = v89;
    v90 = v149;
    View.accessibilityIdentifier(_:)();
    sub_10000C6AC(v84, v86, v88);

    *&v90[*(sub_10003AE84(&qword_100158CC0, &qword_1001136D0) + 36)] = 0;
    if (qword_1001545C0 != -1)
    {
      swift_once();
    }

    v91 = qword_100160BE8;
    KeyPath = swift_getKeyPath();
    v93 = &v90[*(sub_10003AE84(&qword_100158CC8, &unk_1001136D8) + 36)];
    *v93 = KeyPath;
    v93[1] = v91;
    v94 = qword_1001546B8;

    if (v94 != -1)
    {
      swift_once();
    }

    v95 = qword_100160D18;
    v96 = swift_getKeyPath();
    v97 = &v90[*(v148 + 36)];
    *v97 = v96;
    v97[1] = v95;
    v98 = v153;
    v99 = v90;
    v100 = v150;
    v101 = v154;
    (*(v153 + 104))(v150, enum case for DynamicTypeSize.medium(_:), v154);
    sub_1000D1318();

    v102 = v151;
    View.dynamicTypeSize(_:)();
    (*(v98 + 8))(v100, v101);
    sub_1000035CC(v99, &qword_100158C18, &qword_100113608);
    v103 = swift_getKeyPath();
    v104 = v102 + *(sub_10003AE84(&qword_100158CF0, &qword_100113718) + 36);
    *v104 = v103;
    *(v104 + 8) = 0;
    *(v102 + *(sub_10003AE84(&qword_100158CF8, &qword_100113720) + 36)) = 256;
    v105 = swift_getKeyPath();
    v106 = (v102 + *(v152 + 36));
    *v106 = v105;
    v106[1] = 0x3FE999999999999ALL;
    sub_1000D15FC();
    v107 = v155;
    View.lineHeightMultiple(_:)();
    sub_1000035CC(v102, &qword_100158C20, &qword_100113610);
    LOBYTE(v103) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v109 = v108;
    v111 = v110;
    v113 = v112;
    v115 = v114;
    (*(v78 + 8))(v166, v173);
    v80 = v171;
    v116 = v107 + *(v171 + 36);
    *v116 = v103;
    *(v116 + 8) = v109;
    *(v116 + 16) = v111;
    *(v116 + 24) = v113;
    *(v116 + 32) = v115;
    *(v116 + 40) = 0;
    sub_10000D5B8(v107, v60, &qword_100158C28, &unk_100113618);
    v79 = 0;
  }

  (*(v170 + 56))(v60, v79, 1, v80);
  v117 = v174;
  v118 = v165;
  sub_100008E68(v174, v165, &qword_100158C70, &qword_100113678);
  v119 = v169;
  sub_100008E68(v60, v169, &qword_100158C30, &qword_100113628);
  v120 = v172;
  sub_100008E68(v118, v172, &qword_100158C70, &qword_100113678);
  v121 = sub_10003AE84(&qword_100158CB8, &qword_1001136C8);
  v122 = v120 + *(v121 + 48);
  *v122 = 0;
  *(v122 + 8) = 1;
  sub_100008E68(v119, v120 + *(v121 + 64), &qword_100158C30, &qword_100113628);
  sub_1000035CC(v60, &qword_100158C30, &qword_100113628);
  sub_1000035CC(v117, &qword_100158C70, &qword_100113678);
  sub_1000035CC(v119, &qword_100158C30, &qword_100113628);
  return sub_1000035CC(v118, &qword_100158C70, &qword_100113678);
}

uint64_t sub_1000CCEF8@<X0>(uint64_t a3@<X8>)
{
  v4 = StocksKitCurrencyCache.Provider.name.getter();
  sub_1000CB37C(v4, v5, a3);
}

uint64_t sub_1000CCF6C(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1000CD034(uint64_t a1, uint64_t a2)
{
  v2 = CalculateUnit.id.getter();
  v4 = v3;
  type metadata accessor for UnitConversionPopoverView(0);
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (v9)
  {
    if (v2 == v8 && v9 == v4)
    {

      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1000CD130(uint64_t a1, uint64_t a2)
{
  v2 = CalculateUnitCategory.id.getter();
  v4 = v3;
  type metadata accessor for UnitConversionPopoverView(0);
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (v9)
  {
    if (v2 == v8 && v9 == v4)
    {

      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1000CD22C()
{
  sub_10003AE84(&qword_100158900, &qword_100113310);
  type metadata accessor for KeyEquivalent();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100113090;
  static KeyEquivalent.upArrow.getter();
  static KeyEquivalent.downArrow.getter();
  static KeyEquivalent.leftArrow.getter();
  static KeyEquivalent.rightArrow.getter();
  static KeyEquivalent.space.getter();
  static KeyEquivalent.return.getter();
  v1 = sub_1000CF68C(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1001586B0 = v1;
  return result;
}

double sub_1000CD370()
{
  sub_10003AE84(&qword_100158DF8, &qword_1001137F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001130A0;
  *(v0 + 32) = static Color.clear.getter();
  *(v0 + 40) = static Color.black.getter();
  *(v0 + 48) = static Color.black.getter();
  *(v0 + 56) = static Color.black.getter();
  *(v0 + 64) = static Color.black.getter();
  *(v0 + 72) = static Color.black.getter();
  *(v0 + 80) = static Color.black.getter();
  *(v0 + 88) = static Color.black.getter();
  *(v0 + 96) = static Color.black.getter();
  *(v0 + 104) = static Color.black.getter();
  *(v0 + 112) = static Color.black.getter();
  *(v0 + 120) = static Color.black.getter();
  *(v0 + 128) = static Color.black.getter();
  *(v0 + 136) = static Color.black.getter();
  *(v0 + 144) = static Color.black.getter();
  *(v0 + 152) = static Color.black.getter();
  *(v0 + 160) = static Color.black.getter();
  *(v0 + 168) = static Color.black.getter();
  *(v0 + 176) = static Color.black.getter();
  *(v0 + 184) = static Color.clear.getter();
  Gradient.init(colors:)();
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v2;
  xmmword_1001586B8 = v2;
  unk_1001586C8 = v3;
  qword_1001586D8 = v4;
  return result;
}

uint64_t sub_1000CD4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a3;
  v86 = a1;
  swift_getWitnessTable();
  v4 = type metadata accessor for _ViewModifier_Content();
  v77 = *(v4 - 8);
  __chkstk_darwin(v4);
  v79 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v67 - v7;
  v9 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v81 = *(v9 - 8);
  v82 = v9;
  __chkstk_darwin(v9);
  v80 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v95 = v4;
  v96 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v74 = &v67 - v13;
  v95 = v4;
  v96 = WitnessTable;
  v92 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = OpaqueTypeMetadata2;
  v96 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v75 = *(v15 - 8);
  __chkstk_darwin(v15);
  v73 = &v67 - v16;
  v17 = *(a2 + 24);
  v71 = *(a2 + 16);
  v70 = v17;
  v18 = type metadata accessor for ToolbarItem();
  v19 = swift_getWitnessTable();
  v95 = v18;
  v96 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v78 = OpaqueTypeMetadata2;
  v95 = OpaqueTypeMetadata2;
  v96 = OpaqueTypeConformance2;
  v72 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v95 = v18;
  v96 = v19;
  v22 = v15;
  v23 = swift_getOpaqueTypeConformance2();
  v95 = v15;
  v96 = v20;
  v85 = v20;
  v90 = v23;
  v91 = v21;
  v97 = v21;
  v98 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v67 - v29;
  v31 = type metadata accessor for _ConditionalContent();
  v83 = *(v31 - 8);
  v84 = v31;
  __chkstk_darwin(v31);
  v89 = &v67 - v32;
  if (sub_10003DC4C(v88))
  {
    LocalizedStringKey.init(stringLiteral:)();
    LOWORD(v66) = 2;
    v65 = 21;
    v33 = Text.init(_:tableName:bundle:comment:)();
    v79 = v24;
    v34 = v33;
    v69 = v4;
    v36 = v35;
    v77 = v30;
    v38 = v37;
    v68 = v25;
    v39 = v74;
    View.navigationTitle(_:)();
    v40 = v36;
    v22 = v15;
    sub_10000C6AC(v34, v40, v38 & 1);

    v42 = v80;
    v41 = v81;
    v43 = v82;
    (*(v81 + 104))(v80, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v82);
    v44 = v73;
    v45 = v78;
    View.navigationBarTitleDisplayMode(_:)();
    (*(v41 + 8))(v42, v43);
    v46 = (*(v76 + 8))(v39, v45);
    __chkstk_darwin(v46);
    v47 = v70;
    *(&v67 - 4) = v71;
    *(&v67 - 3) = v47;
    v65 = v88;
    v48 = v85;
    v49 = swift_checkMetadataState();
    v51 = v90;
    v50 = v91;
    View.toolbar<A>(content:)();
    (*(v75 + 8))(v44, v22);
    v95 = v22;
    v96 = v49;
    v97 = v50;
    v98 = v51;
    swift_getOpaqueTypeConformance2();
    v52 = v68;
    v53 = *(v68 + 16);
    v54 = v77;
    v55 = v79;
    v53(v77, v27, v79);
    v56 = *(v52 + 8);
    v56(v27, v55);
    v53(v27, v54, v55);
    sub_100013B54(v27, v55);
    v56(v27, v55);
    v56(v54, v55);
  }

  else
  {
    v57 = v77;
    v58 = *(v77 + 2);
    v58(v8, v86, v4);
    v59 = v79;
    v58(v79, v8, v4);
    v48 = v85;
    v95 = v22;
    v96 = v85;
    v97 = v91;
    v98 = v90;
    swift_getOpaqueTypeConformance2();
    sub_1000BB374(v59, v24, v4);
    v60 = *(v57 + 1);
    v60(v59, v4);
    v60(v8, v4);
  }

  v95 = v22;
  v96 = v48;
  v97 = v91;
  v98 = v90;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = v92;
  v61 = v84;
  swift_getWitnessTable();
  v62 = v83;
  v63 = v89;
  (*(v83 + 16))(v87, v89, v61);
  return (*(v62 + 8))(v63, v61);
}

uint64_t sub_1000CDDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ToolbarItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v16[-v12];
  static ToolbarItemPlacement.confirmationAction.getter();
  v17 = a2;
  v18 = a3;
  v19 = a1;
  ToolbarItem<>.init(placement:content:)();
  swift_getWitnessTable();
  (*(v8 + 16))(v13, v10, v7);
  v14 = *(v8 + 8);
  v14(v10, v7);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (v14)(v13, v7);
}

uint64_t sub_1000CDFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SheetPresentationModifier(0, v9, v10, v11);
  v13 = *(v6 + 16);
  v13(v8, a1 + *(v12 + 36), a2);
  v13(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

void sub_1000CE10C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000CEBE0(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

unint64_t sub_1000CE1DC()
{
  result = qword_100158890;
  if (!qword_100158890)
  {
    sub_10003AECC(&qword_1001587F0, &qword_100113160);
    sub_10003AECC(&qword_1001587E0, &qword_100113150);
    sub_10003AECC(&qword_1001587D8, &qword_100113148);
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_10003AECC(&qword_1001587D0, &qword_100113140);
    sub_100004880(&qword_100158888, &qword_1001587D0, &qword_100113140, &protocol conformance descriptor for NavigationStack<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_10001BAF0(&qword_100157818, sub_10001BB68, &protocol conformance descriptor for <A> A?);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158890);
  }

  return result;
}

uint64_t sub_1000CE3B4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_1000CE454@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000CE500@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000CE554@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000CE5AC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000CE604@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000CE65C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100004880(&qword_1001588F8, &qword_1001588F0, &qword_100113308, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10003AE84(&qword_1001588F0, &qword_100113308);
            v9 = sub_1000ADD1C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CE810(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_10003AE84(&qword_1001588F0, &qword_100113308);
  sub_10003AE84(&qword_100158B28, &qword_1001134F0);
  sub_100004880(&qword_100158B30, &qword_1001588F0, &qword_100113308, &protocol conformance descriptor for [A]);
  sub_10003AECC(&qword_100158A40, &qword_1001133D0);
  sub_1000D02EC();
  swift_getOpaqueTypeConformance2();
  sub_1000D0570(&qword_100158B38, &qword_100155290, CalculateUnit_ptr, &protocol conformance descriptor for CalculateUnit);
  return ForEach<>.init(_:content:)();
}

double sub_1000CE99C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_10003AE84(&qword_1001588F0, &qword_100113308);
  sub_10003AE84(&qword_100158B28, &qword_1001134F0);
  sub_100004880(&qword_100158B30, &qword_1001588F0, &qword_100113308, &protocol conformance descriptor for [A]);
  sub_10003AECC(&qword_100158A40, &qword_1001133D0);
  sub_1000D02EC();
  swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  return result;
}

uint64_t sub_1000CEB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConversionPopoverView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CEBE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000CEC28(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000C2698(a1, a2, v6);
}

unint64_t sub_1000CECA8()
{
  result = qword_100158898;
  if (!qword_100158898)
  {
    sub_10003AECC(&qword_100158820, &qword_100113190);
    sub_1000CED34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158898);
  }

  return result;
}

unint64_t sub_1000CED34()
{
  result = qword_1001588A0;
  if (!qword_1001588A0)
  {
    sub_10003AECC(&qword_100158818, &qword_100113188);
    sub_1000CEDC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001588A0);
  }

  return result;
}

unint64_t sub_1000CEDC0()
{
  result = qword_1001588A8;
  if (!qword_1001588A8)
  {
    sub_10003AECC(&qword_100158810, &qword_100113180);
    sub_1000CEE78();
    sub_100004880(&qword_1001553D0, &qword_1001553D8, &unk_10010D250, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001588A8);
  }

  return result;
}

unint64_t sub_1000CEE78()
{
  result = qword_1001588B0;
  if (!qword_1001588B0)
  {
    sub_10003AECC(&qword_100158808, &qword_100113178);
    sub_1000CEF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001588B0);
  }

  return result;
}

unint64_t sub_1000CEF04()
{
  result = qword_1001588B8;
  if (!qword_1001588B8)
  {
    sub_10003AECC(&qword_100158800, &qword_100113170);
    sub_10003AECC(&qword_1001587F0, &qword_100113160);
    sub_1000CE1DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001588B8);
  }

  return result;
}

uint64_t sub_1000CEFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000CF06C()
{
  result = qword_1001588E0;
  if (!qword_1001588E0)
  {
    sub_10003AECC(&qword_1001588C8, &qword_100113268);
    sub_100004880(&qword_100158348, &qword_100158350, &qword_100112900, &protocol conformance descriptor for Button<A>);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001588E0);
  }

  return result;
}

Swift::Int sub_1000CF204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003AE84(&qword_100154C58, &qword_100113970);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_1000CF36C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10003AE84(&qword_100158D18, &qword_100113760);
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
      sub_1000CEBE0(&qword_100158D20, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1000CEBE0(&qword_100158D28, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
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

void *sub_1000CF68C(uint64_t a1)
{
  v2 = type metadata accessor for KeyEquivalent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10003AE84(&qword_100158908, &qword_100113318);
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
      sub_1000CEBE0(&qword_100158910, &type metadata accessor for KeyEquivalent, &protocol conformance descriptor for KeyEquivalent);
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1000CEBE0(&qword_1001588E8, &type metadata accessor for KeyEquivalent, &protocol conformance descriptor for KeyEquivalent);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
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

unint64_t sub_1000CF9AC()
{
  result = qword_100158948;
  if (!qword_100158948)
  {
    sub_10003AECC(&qword_100158940, &qword_100113348);
    sub_1000CFA38();
    sub_1000CFCEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158948);
  }

  return result;
}

unint64_t sub_1000CFA38()
{
  result = qword_100158950;
  if (!qword_100158950)
  {
    sub_10003AECC(&qword_100158958, &qword_100113350);
    sub_1000CFAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158950);
  }

  return result;
}

unint64_t sub_1000CFAC4()
{
  result = qword_100158960;
  if (!qword_100158960)
  {
    sub_10003AECC(&qword_100158968, &qword_100113358);
    sub_1000CFB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158960);
  }

  return result;
}

unint64_t sub_1000CFB50()
{
  result = qword_100158970;
  if (!qword_100158970)
  {
    sub_10003AECC(&qword_100158978, &qword_100113360);
    sub_1000CFC08();
    sub_100004880(&qword_1001581A0, &qword_1001581A8, &qword_100112778, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158970);
  }

  return result;
}

unint64_t sub_1000CFC08()
{
  result = qword_100158980;
  if (!qword_100158980)
  {
    sub_10003AECC(&qword_100158988, &qword_100113368);
    sub_100004880(&qword_100158990, &qword_100158998, &unk_100113370, &protocol conformance descriptor for VStack<A>);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158980);
  }

  return result;
}

unint64_t sub_1000CFCEC()
{
  result = qword_1001589A0;
  if (!qword_1001589A0)
  {
    sub_10003AECC(&qword_1001589A8, &qword_100113380);
    sub_100004880(&qword_1001589B0, &qword_1001589B8, &qword_100113388, &protocol conformance descriptor for ScrollViewReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001589A0);
  }

  return result;
}

unint64_t sub_1000CFDA4()
{
  result = qword_1001589D0;
  if (!qword_1001589D0)
  {
    sub_10003AECC(&qword_1001589C0, &qword_100113390);
    sub_10003AECC(&qword_1001589D8, &qword_1001133A0);
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_100004880(&qword_1001589E0, &qword_1001589D8, &qword_1001133A0, &protocol conformance descriptor for List<A, B>);
    sub_10001BAF0(&qword_100157818, sub_10001BB68, &protocol conformance descriptor for <A> A?);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001589D0);
  }

  return result;
}

unint64_t sub_1000CFEFC()
{
  result = qword_1001589F0;
  if (!qword_1001589F0)
  {
    sub_10003AECC(&qword_1001589E8, &qword_1001133A8);
    sub_100004880(&qword_1001589F8, &qword_100158A00, &qword_1001133B0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001589F0);
  }

  return result;
}

unint64_t sub_1000CFFB4()
{
  result = qword_100158A08;
  if (!qword_100158A08)
  {
    sub_10003AECC(&qword_100158938, &qword_100113340);
    sub_1000CF9AC();
    sub_10003AECC(&qword_1001589C0, &qword_100113390);
    sub_10003AECC(&qword_1001589C8, &qword_100113398);
    sub_1000CFDA4();
    sub_10003AECC(&qword_1001589E8, &qword_1001133A8);
    sub_1000CFEFC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158A08);
  }

  return result;
}

unint64_t sub_1000D00EC()
{
  result = qword_100158A10;
  if (!qword_100158A10)
  {
    sub_10003AECC(&qword_100158918, &qword_100113320);
    sub_10003AECC(&qword_100158A18, &qword_1001133B8);
    sub_100004880(&qword_100158A20, &qword_100158A18, &qword_1001133B8, &protocol conformance descriptor for ScrollViewReader<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000CEBE0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158A10);
  }

  return result;
}

unint64_t sub_1000D022C()
{
  result = qword_100158A38;
  if (!qword_100158A38)
  {
    sub_10003AECC(&qword_100158A30, &qword_1001133C8);
    sub_10003AECC(&qword_100158A40, &qword_1001133D0);
    sub_1000D02EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158A38);
  }

  return result;
}

unint64_t sub_1000D02EC()
{
  result = qword_100158A48;
  if (!qword_100158A48)
  {
    sub_10003AECC(&qword_100158A40, &qword_1001133D0);
    sub_10003AECC(&qword_100158A50, &qword_1001133D8);
    sub_1000D03E0();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100158A70, &qword_100158A78, &qword_1001133F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158A48);
  }

  return result;
}

unint64_t sub_1000D03E0()
{
  result = qword_100158A58;
  if (!qword_100158A58)
  {
    sub_10003AECC(&qword_100158A50, &qword_1001133D8);
    sub_100004880(&qword_100158A60, &qword_100158A68, &unk_1001133E0, &protocol conformance descriptor for IDView<A, B>);
    sub_100004880(&qword_1001573C8, &qword_1001573D0, &qword_1001115F0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158A58);
  }

  return result;
}

uint64_t sub_1000D04FC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000D0570(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000050A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D05B4()
{
  v1 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000CABAC((v0 + v2), v3);
}

uint64_t sub_1000D0640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1000C5AC0(a1, v6, v7, v8, a2);
}

unint64_t sub_1000D0764()
{
  result = qword_100158B88;
  if (!qword_100158B88)
  {
    sub_10003AECC(&qword_100158B80, &qword_100113590);
    sub_10003AECC(&qword_100158B90, &qword_100113598);
    sub_1000D0824();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158B88);
  }

  return result;
}

unint64_t sub_1000D0824()
{
  result = qword_100158B98;
  if (!qword_100158B98)
  {
    sub_10003AECC(&qword_100158B90, &qword_100113598);
    sub_1000D08DC();
    sub_100004880(&qword_100158BD0, &qword_100158BD8, &qword_1001135B8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158B98);
  }

  return result;
}

unint64_t sub_1000D08DC()
{
  result = qword_100158BA0;
  if (!qword_100158BA0)
  {
    sub_10003AECC(&qword_100158BA8, &qword_1001135A0);
    sub_1000D0968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158BA0);
  }

  return result;
}

unint64_t sub_1000D0968()
{
  result = qword_100158BB0;
  if (!qword_100158BB0)
  {
    sub_10003AECC(&qword_100158BB8, &qword_1001135A8);
    sub_100004880(&qword_100158BC0, &qword_100158BC8, &qword_1001135B0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158BB0);
  }

  return result;
}

double sub_1000D0A20(uint64_t a1)
{
  v3 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000C78E0(a1, v4);
}

uint64_t sub_1000D0B10(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a3(v3 + v6, v3 + v9, v11, v12);
}

unint64_t sub_1000D0C30()
{
  result = qword_100158BE8;
  if (!qword_100158BE8)
  {
    sub_10003AECC(&qword_100158B60, &qword_100113548);
    sub_1000D0CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158BE8);
  }

  return result;
}

unint64_t sub_1000D0CBC()
{
  result = qword_100158BF0;
  if (!qword_100158BF0)
  {
    sub_10003AECC(&qword_100158BE0, &qword_1001135C0);
    sub_10003AECC(&qword_100158B58, &qword_100113540);
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_10003AECC(&qword_100158B50, &qword_100113538);
    sub_10003AECC(&qword_100158B80, &qword_100113590);
    sub_10003AECC(&qword_1001589D8, &qword_1001133A0);
    sub_10003AECC(&qword_100158B68, &qword_100113580);
    sub_100004880(&qword_1001589E0, &qword_1001589D8, &qword_1001133A0, &protocol conformance descriptor for List<A, B>);
    sub_10003AECC(&qword_100158B70, &qword_100113588);
    sub_100004880(&qword_100158B78, &qword_100158B70, &qword_100113588, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000D0764();
    swift_getOpaqueTypeConformance2();
    sub_10001BAF0(&qword_100157818, sub_10001BB68, &protocol conformance descriptor for <A> A?);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158BF0);
  }

  return result;
}

unint64_t sub_1000D0F40()
{
  result = qword_100158C78;
  if (!qword_100158C78)
  {
    sub_10003AECC(&qword_100158C68, &unk_100113668);
    sub_10003AECC(&qword_100158C48, &qword_100113640);
    type metadata accessor for PlainButtonStyle();
    sub_100004880(&qword_100158C80, &qword_100158C48, &qword_100113640, &protocol conformance descriptor for Link<A>);
    sub_1000CEBE0(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000D108C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158C78);
  }

  return result;
}

unint64_t sub_1000D108C()
{
  result = qword_100158C88;
  if (!qword_100158C88)
  {
    sub_10003AECC(&qword_100158C60, &unk_100113658);
    sub_1000D1144();
    sub_100004880(&qword_1001569A8, &qword_1001569B0, &qword_10010FC38, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158C88);
  }

  return result;
}

unint64_t sub_1000D1144()
{
  result = qword_100158C90;
  if (!qword_100158C90)
  {
    sub_10003AECC(&qword_100158C98, &qword_100113680);
    sub_1000D1200();
    sub_1000CEBE0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158C90);
  }

  return result;
}

unint64_t sub_1000D1200()
{
  result = qword_100158CA0;
  if (!qword_100158CA0)
  {
    sub_10003AECC(&qword_100158CA8, &qword_100113688);
    sub_1000B6F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158CA0);
  }

  return result;
}

unint64_t sub_1000D128C()
{
  result = qword_100158CB0;
  if (!qword_100158CB0)
  {
    sub_10003AECC(&qword_100158C38, &qword_100113630);
    sub_1000D108C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158CB0);
  }

  return result;
}

unint64_t sub_1000D1318()
{
  result = qword_100158CD0;
  if (!qword_100158CD0)
  {
    sub_10003AECC(&qword_100158C18, &qword_100113608);
    sub_1000D13D0();
    sub_100004880(&qword_100156378, &qword_100156380, &qword_100112E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158CD0);
  }

  return result;
}

unint64_t sub_1000D13D0()
{
  result = qword_100158CD8;
  if (!qword_100158CD8)
  {
    sub_10003AECC(&qword_100158CC8, &unk_1001136D8);
    sub_1000D1488();
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158CD8);
  }

  return result;
}

unint64_t sub_1000D1488()
{
  result = qword_100158CE0;
  if (!qword_100158CE0)
  {
    sub_10003AECC(&qword_100158CC0, &qword_1001136D0);
    sub_1000D1540();
    sub_100004880(&qword_1001569A8, &qword_1001569B0, &qword_10010FC38, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158CE0);
  }

  return result;
}

unint64_t sub_1000D1540()
{
  result = qword_100158CE8;
  if (!qword_100158CE8)
  {
    sub_10003AECC(&qword_100158B18, &qword_1001134E0);
    sub_1000CEBE0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158CE8);
  }

  return result;
}

unint64_t sub_1000D15FC()
{
  result = qword_100158D00;
  if (!qword_100158D00)
  {
    sub_10003AECC(&qword_100158C20, &qword_100113610);
    sub_1000D16B4();
    sub_100004880(&qword_1001584D8, &qword_1001584E0, &qword_100112E48, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158D00);
  }

  return result;
}

unint64_t sub_1000D16B4()
{
  result = qword_100158D08;
  if (!qword_100158D08)
  {
    sub_10003AECC(&qword_100158CF8, &qword_100113720);
    sub_1000D1740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158D08);
  }

  return result;
}

unint64_t sub_1000D1740()
{
  result = qword_100158D10;
  if (!qword_100158D10)
  {
    sub_10003AECC(&qword_100158CF0, &qword_100113718);
    sub_10003AECC(&qword_100158C18, &qword_100113608);
    sub_1000D1318();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_1001581A0, &qword_1001581A8, &qword_100112778, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158D10);
  }

  return result;
}

uint64_t sub_1000D1840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000C3108(a1, v6, a2);
}

unint64_t sub_1000D18C8()
{
  result = qword_100158DA0;
  if (!qword_100158DA0)
  {
    sub_10003AECC(&qword_100158D98, &qword_1001137C8);
    sub_1000D1954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158DA0);
  }

  return result;
}

unint64_t sub_1000D1954()
{
  result = qword_100158DA8;
  if (!qword_100158DA8)
  {
    sub_10003AECC(&qword_100158DB0, &qword_1001137D0);
    sub_100004880(&qword_100158DB8, &qword_100158DC0, &qword_1001137D8, &protocol conformance descriptor for LazyHStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158DA8);
  }

  return result;
}

unint64_t sub_1000D1A10()
{
  result = qword_100158DD8;
  if (!qword_100158DD8)
  {
    sub_10003AECC(&qword_100158D88, &qword_1001137B8);
    sub_10003AECC(&qword_100158D78, &qword_1001137A8);
    sub_10003AECC(&qword_100158D70, &qword_1001137A0);
    sub_10003AECC(&qword_100158D68, &qword_100113798);
    sub_10003AECC(&qword_100158D60, &qword_100113790);
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_100004880(&qword_100158DC8, &qword_100158D60, &qword_100113790, &protocol conformance descriptor for ScrollView<A>);
    sub_10001BAF0(&qword_100157818, sub_10001BB68, &protocol conformance descriptor for <A> A?);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100158DE0, &qword_100158DE8, &qword_1001137E8, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158DD8);
  }

  return result;
}

uint64_t sub_1000D1C50()
{
  v1 = *(type metadata accessor for ScrollViewProxy() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  return sub_1000C491C(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

unint64_t sub_1000D1D18()
{
  result = qword_100158E10;
  if (!qword_100158E10)
  {
    sub_10003AECC(&qword_100158E08, &qword_100113800);
    sub_100004880(&qword_100158E18, &qword_100158E20, &qword_100113808, &protocol conformance descriptor for IDView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158E10);
  }

  return result;
}

uint64_t sub_1000D1DC8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000C4504(a1, v6, a2);
}

uint64_t sub_1000D1E48()
{
  v1 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000C47FC(v2, v3);
}

uint64_t sub_1000D1EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D1F18(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_1000D1F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1000C8C3C(a1, v6, v7, a2);
}

uint64_t sub_1000D1FF4()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UnitConversionPopoverView(0);
  v6 = *(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + ((v3 + v4 + v6) & ~v6);

  v8 = v5[9];
  v9 = type metadata accessor for UserInterfaceSizeClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v12 = v5[10];
  if (!v11(v7 + v12, 1, v9))
  {
    (*(v10 + 8))(v7 + v12, v9);
  }

  v13 = v5[15];
  v14 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v15 = *(*(v14 - 8) + 8);
  v15(v7 + v13, v14);
  v15(v7 + v5[16], v14);
  v15(v7 + v5[17], v14);
  v15(v7 + v5[18], v14);
  v15(v7 + v5[19], v14);
  v15(v7 + v5[20], v14);

  return swift_deallocObject();
}

uint64_t sub_1000D2330()
{
  v1 = *(type metadata accessor for ScrollViewProxy() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1000CA30C(v0 + v2, v5);
}

unint64_t sub_1000D2404()
{
  result = qword_100158E78;
  if (!qword_100158E78)
  {
    sub_10003AECC(&qword_100158E70, &qword_100113840);
    sub_10003AECC(&qword_100158E80, &qword_100113848);
    sub_10003AECC(&qword_100158E88, &qword_100113850);
    sub_1000D2538();
    sub_100004880(&qword_100158EB8, &qword_100158E88, &qword_100113850, &protocol conformance descriptor for LazyVStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158E78);
  }

  return result;
}

unint64_t sub_1000D2538()
{
  result = qword_100158E90;
  if (!qword_100158E90)
  {
    sub_10003AECC(&qword_100158E80, &qword_100113848);
    sub_1000D25C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158E90);
  }

  return result;
}

unint64_t sub_1000D25C4()
{
  result = qword_100158E98;
  if (!qword_100158E98)
  {
    sub_10003AECC(&qword_100158EA0, &qword_100113858);
    sub_1000D2650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158E98);
  }

  return result;
}

unint64_t sub_1000D2650()
{
  result = qword_100158EA8;
  if (!qword_100158EA8)
  {
    sub_10003AECC(&qword_100158EB0, &unk_100113860);
    sub_10008C7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158EA8);
  }

  return result;
}

void sub_1000D26DC(void *a1)
{
  v3 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);

  sub_1000C93F8(a1, v6, v1 + v4, v5);
}

unint64_t sub_1000D278C()
{
  result = qword_100158ED0;
  if (!qword_100158ED0)
  {
    sub_10003AECC(&qword_100158EC0, &qword_100113888);
    sub_1000D2818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158ED0);
  }

  return result;
}

unint64_t sub_1000D2818()
{
  result = qword_100158ED8;
  if (!qword_100158ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158ED8);
  }

  return result;
}

unint64_t sub_1000D28B4()
{
  result = qword_100158EF0;
  if (!qword_100158EF0)
  {
    sub_10003AECC(&qword_100158EE8, &qword_1001138A0);
    sub_1000D2938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158EF0);
  }

  return result;
}

unint64_t sub_1000D2938()
{
  result = qword_100158EF8;
  if (!qword_100158EF8)
  {
    sub_10003AECC(&qword_100158F00, &qword_1001138A8);
    sub_1000D29C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158EF8);
  }

  return result;
}

unint64_t sub_1000D29C4()
{
  result = qword_100158F08;
  if (!qword_100158F08)
  {
    sub_10003AECC(&qword_100158F10, &qword_1001138B0);
    sub_1000D2A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158F08);
  }

  return result;
}

unint64_t sub_1000D2A50()
{
  result = qword_100158F18;
  if (!qword_100158F18)
  {
    sub_10003AECC(&qword_100158F20, &qword_1001138B8);
    sub_100004880(&qword_100158F28, &qword_100158F30, &qword_1001138C0, &protocol conformance descriptor for VStack<A>);
    sub_100004880(&qword_1001553D0, &qword_1001553D8, &unk_10010D250, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158F18);
  }

  return result;
}

uint64_t sub_1000D2B34@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UnitConversionPopoverView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000C9A10(a1, v9, v2 + v6, v10, v11, v12, a2);
}

void sub_1000D2C04(uint64_t a1)
{
  sub_100013F2C(319, &qword_1001549C8, &type metadata accessor for UserInterfaceSizeClass, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000D2CBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v8)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v16 + v14;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v18 = (v17 & ~v14) + v15;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((a2 - v12 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v21 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v9 >= v11)
        {
          v27 = (*(v7 + 48))(a1);
          if (v27 >= 2)
          {
            return v27 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v25 = *(*(*(a3 + 16) - 8) + 48);

          return v25((a1 + v17) & ~v14, v11);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_33;
  }

LABEL_20:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v12 + (v24 | v22) + 1;
}

void sub_1000D2F00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 64);
  v16 = *(v13 + 80);
  if (v14 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (v11)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 + 1;
  }

  v19 = ((v18 + v16) & ~v16) + *(v13 + 64);
  if (a3 <= v17)
  {
    goto LABEL_21;
  }

  if (v19 <= 3)
  {
    v20 = ((a3 - v17 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v20))
    {
      v8 = 4;
      if (v17 >= a2)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v8 = v21;
    }

    else
    {
      v8 = 0;
    }

LABEL_21:
    if (v17 >= a2)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v8 = 1;
  if (v17 >= a2)
  {
LABEL_31:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v19] = 0;
    }

    else if (v8)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v12 >= v14)
      {
        if (v12 >= a2)
        {
          v29 = *(v10 + 56);

          v29(a1, (a2 + 1));
        }

        else
        {
          if (v18 <= 3)
          {
            v26 = ~(-1 << (8 * v18));
          }

          else
          {
            v26 = -1;
          }

          if (v18)
          {
            v27 = v26 & (~v12 + a2);
            if (v18 <= 3)
            {
              v28 = v18;
            }

            else
            {
              v28 = 4;
            }

            bzero(a1, v18);
            if (v28 > 2)
            {
              if (v28 == 3)
              {
                *a1 = v27;
                a1[2] = BYTE2(v27);
              }

              else
              {
                *a1 = v27;
              }
            }

            else if (v28 == 1)
            {
              *a1 = v27;
            }

            else
            {
              *a1 = v27;
            }
          }
        }
      }

      else
      {
        v25 = *(v13 + 56);

        v25(&a1[v18 + v16] & ~v16, a2, v14);
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_22:
  v22 = ~v17 + a2;
  if (v19 >= 4)
  {
    bzero(a1, v19);
    *a1 = v22;
    v23 = 1;
    if (v8 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v23 = (v22 >> (8 * v19)) + 1;
  if (!v19)
  {
LABEL_59:
    if (v8 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v24 = v22 & ~(-1 << (8 * v19));
  bzero(a1, v19);
  if (v19 == 3)
  {
    *a1 = v24;
    a1[2] = BYTE2(v24);
    goto LABEL_59;
  }

  if (v19 == 2)
  {
    *a1 = v24;
    if (v8 > 1)
    {
LABEL_63:
      if (v8 == 2)
      {
        *&a1[v19] = v23;
      }

      else
      {
        *&a1[v19] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v8 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v8)
  {
    a1[v19] = v23;
  }
}

void *sub_1000D32D8(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10003AE84(&qword_100158FE0, &qword_100113978);
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
      sub_1000CEBE0(&qword_100158FE8, &type metadata accessor for PresentationDetent, &protocol conformance descriptor for PresentationDetent);
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1000CEBE0(&qword_100158FF0, &type metadata accessor for PresentationDetent, &protocol conformance descriptor for PresentationDetent);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t sub_1000D363C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000D3684(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_1000D36D0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 8);
  v12 = *a2;
  v8 = v13;

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D3848(&v12);
    (*(v5 + 8))(v7, v4);
  }

  sub_1000604CC(a1, a2[3]);

  return result;
}

uint64_t sub_1000D3848(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100154810, &qword_10010DF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000D38B0(uint64_t a1, uint64_t a2)
{
  if (!sub_100018480())
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4)
    {
      v5 = [objc_opt_self() mainScreen];
      [v5 bounds];

      sub_10003C664();
    }

    else
    {
      sub_10003D380(a2);
    }
  }
}

void sub_1000D399C(uint64_t a1, char a2, uint64_t a3)
{
  if ((sub_10003D380(a3) & 1) == 0)
  {
    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 || (sub_10003CC9C(a3) & 1) == 0)
    {
      if (a2)
      {
        swift_getKeyPath();
        sub_10001EC3C();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();
      }

      else
      {
        sub_10003C9A0(a3);
      }

      swift_getKeyPath();
      sub_10001EC3C();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_10003DAD4();
    }
  }
}

double sub_1000D3BAC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = sub_10003C9A0(a3);
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  result = 61.0;
  v8 = 45.0;
  if (v4)
  {
    result = 45.0;
    v8 = 22.0;
  }

  if ((a2 & 1) == 0)
  {
    result = v8;
  }

  if (!v6)
  {
    return 28.0;
  }

  return result;
}

double sub_1000D3C58(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_getKeyPath();
    sub_10001EC3C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(a1 + 96);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = dbl_100113AA0[v4 / *(a1 + 104) > 0.98];
  }

  else if (sub_10003C9A0(a3))
  {
    v5 = 0.153846154;
  }

  else
  {
    v5 = 0.25;
  }

  swift_getKeyPath();
  sub_10001EC3C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return v5 * *(a1 + 104);
}

void sub_1000D3DA0(uint64_t a1)
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    swift_getKeyPath();
    sub_10001EC3C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
  }
}

void sub_1000D3EAC(uint64_t a1)
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    swift_getKeyPath();
    sub_10001EC3C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
  }
}

void sub_1000D3FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_10003D380(a3) & 1) == 0)
  {
    sub_10001EB88();
    swift_getKeyPath();
    sub_10001EC3C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
  }
}