unint64_t sub_100501B14()
{
  result = qword_1016A2D40;
  if (!qword_1016A2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D40);
  }

  return result;
}

unint64_t sub_100501B68()
{
  result = qword_1016A2D48;
  if (!qword_1016A2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D48);
  }

  return result;
}

unint64_t sub_100501BBC()
{
  result = qword_1016A2D58;
  if (!qword_1016A2D58)
  {
    sub_1000BC580(&qword_1016A2D50, &qword_1013AD1A0);
    sub_100501CC4(&qword_1016A2D60, type metadata accessor for PencilUnpairData.DeviceUnpairData, &unk_1013AD134);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D58);
  }

  return result;
}

unint64_t sub_100501C70()
{
  result = qword_1016A2D70;
  if (!qword_1016A2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D70);
  }

  return result;
}

uint64_t sub_100501CC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100501D40()
{
  result = qword_1016A2D78;
  if (!qword_1016A2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D78);
  }

  return result;
}

unint64_t sub_100501D98()
{
  result = qword_1016A2D80;
  if (!qword_1016A2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D80);
  }

  return result;
}

unint64_t sub_100501DF0()
{
  result = qword_1016A2D88;
  if (!qword_1016A2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D88);
  }

  return result;
}

unint64_t sub_100501E48()
{
  result = qword_1016A2D90;
  if (!qword_1016A2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D90);
  }

  return result;
}

unint64_t sub_100501EA0()
{
  result = qword_1016A2D98;
  if (!qword_1016A2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2D98);
  }

  return result;
}

unint64_t sub_100501EF8()
{
  result = qword_1016A2DA0;
  if (!qword_1016A2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2DA0);
  }

  return result;
}

unint64_t sub_100501F50()
{
  result = qword_1016A2DA8;
  if (!qword_1016A2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2DA8);
  }

  return result;
}

unint64_t sub_100501FA4()
{
  result = qword_1016A2DB0;
  if (!qword_1016A2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2DB0);
  }

  return result;
}

uint64_t sub_100501FFC@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100502180@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100502304(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static Date.trustedNow.getter(v4);
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    sub_100503914(v4);
  }

  return result;
}

uint64_t sub_1005023F4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v6 != *(result + 48))
    {
      *(result + 48) = v6;
      v8 = type metadata accessor for Date();
      v9 = *(*(v8 - 8) + 56);
      v9(v5, 1, 1, v8);
      sub_100503914(v5);
      v9(v5, 1, 1, v8);
      sub_100503784(v5);
    }
  }

  return result;
}

uint64_t sub_10050252C()
{
  v0 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  sub_100501FFC(v5);
  v13 = v7[6];
  if (v13(v5, 1, v6) == 1)
  {
    sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
    v14 = 0;
  }

  else
  {
    v15 = v7[4];
    v15(v12, v5, v6);
    sub_100502180(v3);
    if (v13(v3, 1, v6) == 1)
    {
      static Date.distantPast.getter();
      if (v13(v3, 1, v6) != 1)
      {
        sub_10000B3A8(v3, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v15(v10, v3, v6);
    }

    sub_100503E24(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v16 = dispatch thunk of static Comparable.< infix(_:_:)();
    v17 = v7[1];
    v17(v10, v6);
    v17(v12, v6);
    v14 = v16 ^ 1;
  }

  return v14 & 1;
}

uint64_t sub_1005027E8()
{
  v50 = type metadata accessor for DispatchWorkItemFlags();
  *&v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  *&v48 = &v42 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for DispatchTime();
  v47 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  v46 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v46);
  v45 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v51 = *(v54 - 8);
  v16 = __chkstk_darwin(v54);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v53 = &v42 - v19;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  aBlock = 0x7365547265646E75;
  v58 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v56)
  {
    static DispatchTime.now()();
    *v8 = 1;
    (*(v6 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v5);
    + infix(_:_:)();
    (*(v6 + 8))(v8, v5);
    v47 = *(v47 + 8);
    (v47)(v11, v52);
    sub_1000BC488();
    (*(v2 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v1);
    v20 = static OS_dispatch_queue.global(qos:)();
    (*(v2 + 8))(v4, v1);
    v61 = sub_100503DF4;
    v62 = v55;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100006684;
    v60 = &unk_101625210;
    v21 = _Block_copy(&aBlock);

    v22 = v53;
    static DispatchQoS.unspecified.getter();
    v56 = _swiftEmptyArrayStorage;
    sub_100503E24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v23 = v48;
    v24 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v21);

    (*(v49 + 8))(v23, v24);
    (*(v51 + 8))(v22, v54);
    (v47)(v13, v52);
  }

  else
  {
    v26 = *(v55 + 72);
    if (v26 == 2)
    {
      v27 = static os_log_type_t.default.getter();
      if (qword_101695040 != -1)
      {
        v40 = v27;
        swift_once();
        v27 = v40;
      }

      return os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, qword_10177C388, "Not scheduling coalesced cloudkit activity - no criteria.", 57, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v28 = v26 & 1;
      v29 = (v26 >> 8) & 1;
      v52 = 0x80000001013581B0;
      v30 = *(v55 + 80);
      v48 = *(v55 + 96);
      v49 = v30;
      v31 = v53;
      static DispatchQoS.background.getter();
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      v50 = v32;
      *(v33 + 24) = v28;
      *(v33 + 25) = v29;
      v34 = v48;
      *(v33 + 32) = v49;
      *(v33 + 48) = v34;
      v35 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for XPCActivity();
      v36 = swift_allocObject();
      sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v36 + 40) = v37;
      swift_unknownObjectWeakInit();
      *(v36 + 88) = 0;
      *&v49 = sub_1000BC488();
      *&v48 = ".searchpartyd.CloudKitCoalescer";
      *(v36 + 96) = 0;
      *(v36 + 104) = 0;
      v38 = v51;
      (*(v51 + 16))(v18, v31, v54);
      (*(v42 + 104))(v44, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v43);
      aBlock = _swiftEmptyArrayStorage;
      sub_100503E24(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);

      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      *(v36 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v36 + 24) = 0xD00000000000002FLL;
      *(v36 + 32) = v52;
      *(v36 + 48) = sub_100503DE0;
      *(v36 + 56) = v33;
      *(v36 + 64) = sub_100503DEC;
      *(v36 + 72) = v35;

      sub_100997398();

      (*(v38 + 8))(v53, v54);

      *(v55 + 16) = v36;

      v39 = static os_log_type_t.default.getter();
      if (qword_101695040 != -1)
      {
        v41 = v39;
        swift_once();
        v39 = v41;
      }

      return os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, qword_10177C388, "Scheduled coalesced cloudkit activity.", 38, 2, _swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_1005032FC@<X0>(__int128 *a1@<X0>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a3 + 1);
  v8 = *(a3 + 4);
  v15 = *(a3 + 1);
  v16 = a1[1];
  v17 = *a1;
  v9 = *(a1 + 4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = sub_10050252C();

    v13 = v16;
    v12 = v17;
    if (v11)
    {
      v14 = 256;
      if ((v6 & 1) == 0)
      {
        v14 = 0;
      }

      *&v12 = v14 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
      *(&v12 + 1) = v7;
      v9 = v8;
      v13 = v15;
    }
  }

  else
  {
    v13 = v16;
    v12 = v17;
  }

  *a4 = v12;
  *(a4 + 16) = v13;
  *(a4 + 32) = v9;
  return result;
}

uint64_t sub_1005033D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      v6 = static os_log_type_t.default.getter();
      if (qword_101695040 != -1)
      {
        v7 = v6;
        swift_once();
        v6 = v7;
      }

      os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C388, "CloudKitCoalescer task allowed to execute now - XPCActivity.", 60, 2, _swiftEmptyArrayStorage);

      PassthroughSubject.send(_:)();

      sub_1009971E8();
    }
  }

  return result;
}

uint64_t sub_1005034F4()
{
  if (sub_10050252C())
  {
    if ((*(v0 + 56))())
    {
      type metadata accessor for Transaction();
      static Transaction.named<A>(_:with:)();
      return 0;
    }

    else
    {
      sub_1005027E8();
      return 1;
    }
  }

  else
  {
    v2 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      v3 = v2;
      swift_once();
      v2 = v3;
    }

    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C388, "CloudKitCoalescer no need to run - last execution is after last request.", 72, 2, _swiftEmptyArrayStorage);
    sub_100503D64();
    return swift_allocError();
  }
}

uint64_t sub_100503630(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v6 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v8 = v6;
    swift_once();
    v6 = v8;
  }

  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C388, a3, a4, 2, _swiftEmptyArrayStorage);

  PassthroughSubject.send(_:)();
}

uint64_t sub_100503708()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100503784(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_1000D3410(a1, v4);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v4, v6);
  }

  v9 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v9];

  swift_unknownObjectRelease();
  return sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_100503914(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_1000D3410(a1, v4);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v4, v6);
  }

  v9 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v9];

  swift_unknownObjectRelease();
  return sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
}

void *sub_100503AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  sub_1000BC4D4(&unk_1016C2F50, &unk_1013AD520);
  swift_allocObject();
  v8 = PassthroughSubject.init()();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = v8;
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  AnyCurrentValuePublisher.value.getter();

  *(v3 + 48) = v15;
  v9 = *(a1 + 16);
  *(v3 + 72) = *a1;
  *(v3 + 88) = v9;
  *(v3 + 104) = *(a1 + 32);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016A2F68, &unk_1016C2F50, &unk_1013AD520, &protocol conformance descriptor for PassthroughSubject<A, B>);

  v10 = Publisher<>.sink(receiveValue:)();

  *(v4 + 32) = v10;

  AnyCurrentValuePublisher.publisher.getter();

  swift_allocObject();
  swift_weakInit();

  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40, &protocol conformance descriptor for AnyPublisher<A, B>);
  v11 = Publisher<>.sink(receiveValue:)();

  *(v4 + 40) = v11;

  v12 = sub_1005034F4();
  sub_1000BB584(v12, v13 & 1);
  return v4;
}

unint64_t sub_100503D64()
{
  result = qword_1016A2F70;
  if (!qword_1016A2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2F70);
  }

  return result;
}

uint64_t sub_100503E24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100503E80()
{
  result = qword_1016A2F78;
  if (!qword_1016A2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2F78);
  }

  return result;
}

uint64_t sub_100503ED4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return Data._Representation.subscript.getter();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100503F40(uint64_t a1, unint64_t a2)
{
  v31 = type metadata accessor for Endianness();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v7._countAndFlagsBits = 0x3A656372756F733CLL;
  v7._object = 0xE900000000000020;
  String.append(_:)(v7);
  v30 = a2;
  sub_100503ED4(0, 0, a1, a2);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  v8 = v32;
  if (HIBYTE(v32))
  {
    v8 = 0;
  }

  LOBYTE(v32) = v8;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x49726F646E657620;
  v10._object = 0xEB00000000203A64;
  String.append(_:)(v10);
  sub_100503ED4(1, 2, a1, a2);
  v11 = enum case for Endianness.little(_:);
  v12 = *(v4 + 104);
  v12(v6, enum case for Endianness.little(_:), v31);
  v29 = v12;
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  v13 = v32;
  if (v33)
  {
    v13 = 0;
  }

  v32 = v13;
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x746375646F727020;
  v15._object = 0xEC000000203A6449;
  String.append(_:)(v15);
  v16 = a1;
  v17 = a1;
  v18 = v30;
  sub_100503ED4(3, 4, v17, v30);
  v19 = v31;
  v12(v6, v11, v31);
  FixedWidthInteger.init(data:ofEndianness:)();
  v20 = v32;
  if (v33)
  {
    v20 = 0;
  }

  v32 = v20;
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._object = 0x8000000101358300;
  v22._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v22);
  sub_100503ED4(5, 6, v16, v18);
  v29(v6, v11, v19);
  FixedWidthInteger.init(data:ofEndianness:)();
  v23 = v32;
  if (v33)
  {
    v23 = 0;
  }

  v32 = v23;
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x756C615677617220;
  v25._object = 0xEB00000000203A65;
  String.append(_:)(v25);
  v26._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 62;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  return v34;
}

uint64_t sub_100504370(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v3 = v3;
LABEL_10:
    if (v3 == 7)
    {
      return result;
    }
  }

  sub_100016590(result, a2);
  return 0;
}

uint64_t sub_1005043E0(uint64_t a1, unint64_t a2)
{
  v17 = a1;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100503ED4(1, 2, a1, a2);
  v8 = enum case for Endianness.little(_:);
  v9 = *(v5 + 104);
  v9(v7, enum case for Endianness.little(_:), v4);
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  v16 = v20;
  v10 = v21;
  sub_100503ED4(3, 4, v17, a2);
  v9(v7, v8, v4);
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v16;
  }

  if (v19)
  {
    v12 = 0;
  }

  else
  {
    v12 = v18;
  }

  result = sub_100314604(v11, v12);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005045B0()
{
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

Swift::Int sub_100504614()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100504684(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(*v1 + 24);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005046F0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v24 = 60;
  v25 = 0xE100000000000000;
  *&v23[0] = v0;
  type metadata accessor for Descriptor();
  sub_100504A60(&qword_1016A3048, v6, type metadata accessor for Descriptor, "y]%");
  v7._countAndFlagsBits = CustomDebugStringConvertible.typeDescription.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = CustomDebugStringConvertible<>.addressDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11 = [v5 UUID];
  sub_100B699C8(v4);

  sub_100504A60(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  (*(v2 + 8))(v4, v1);
  v13._countAndFlagsBits = 23328;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14 = [v5 description];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 2112093;
  v19._object = 0xE300000000000000;
  String.append(_:)(v19);
  if ([v5 value])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  v20._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 62;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  return v24;
}

uint64_t sub_100504A60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t CurrentLocationMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*CurrentLocationMonitor.delegate.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100504C50;
}

void sub_100504C54(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *CurrentLocationMonitor.currentLocation.getter()
{
  v1 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_100504D00@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for CLAuthorizationStatus(0);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a1 = v3;
  return result;
}

uint64_t CurrentLocationMonitor.currentAuthorizationStatus.getter()
{
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t sub_100504E04(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, &protocol witness table for CurrentLocationMonitor, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *CurrentLocationMonitor.init(mode:desiredAccuracy:)(int a1, uint64_t a2, int a3)
{
  v4 = v3;
  v37 = a3;
  v36 = a2;
  v45 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation] = 0;
  *&v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor__currentAuthorizationStatus] = 0;
  *&v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager] = 0;
  v44 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue;
  v43 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100281024(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = v10;
  *&v3[v44] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts] = 0;
  v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted] = 0;
  v16 = objc_allocWithZone(NSBundle);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithPath:v17];

  if (v18)
  {
    v19 = [objc_opt_self() authorizationStatusForBundle:v18];
  }

  else
  {
    v19 = 0;
  }

  v4[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_mode] = v45 & 1;
  LODWORD(aBlock[0]) = v19;
  sub_1000BC4D4(&qword_1016A3090, &unk_1013AD6A8);
  swift_allocObject();
  v20 = CurrentValueSubject.init(_:)();
  *&v4[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_authorizationStatusSubject] = v20;
  aBlock[0] = v20;
  sub_1000041A4(&qword_1016A30A0, &qword_1016A3090, &unk_1013AD6A8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  *&v4[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_authorizationStatusPublisher] = Publisher.eraseToAnyPublisher()();
  v21 = type metadata accessor for CurrentLocationMonitor();
  v48.receiver = v4;
  v48.super_class = v21;
  v22 = objc_msgSendSuper2(&v48, "init");
  v23 = objc_allocWithZone(NSBundle);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 initWithPath:v24];

  if (v25)
  {
    v26 = *&v22[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue];
    v27 = swift_allocObject();
    *(v27 + 16) = v22;
    *(v27 + 24) = v25;
    *(v27 + 32) = v36;
    *(v27 + 40) = v37 & 1;
    aBlock[4] = sub_100505710;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016252F0;
    v28 = _Block_copy(aBlock);
    v29 = v26;
    v30 = v22;
    v31 = v25;
    v32 = v15;
    static DispatchQoS.unspecified.getter();
    v46 = _swiftEmptyArrayStorage;
    sub_100281024(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v33 = v40;
    v34 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    (*(v41 + 8))(v33, v34);
    (*(v38 + 8))(v32, v39);
  }

  return v22;
}

void *sub_1005055C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(CLLocationManager) initWithEffectiveBundle:a2 delegate:a1 onQueue:*(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue)];
  v9 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager;
  v10 = *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager);
  *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager) = v8;

  if ((a4 & 1) == 0)
  {
    [*(a1 + v9) setDesiredAccuracy:*&a3];
  }

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v13 & 1) == 0)
  {
    v12 = [objc_opt_self() authorizationStatusForBundle:a2];
    return sub_100010578(v12);
  }

  return result;
}

id sub_100505748(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1016947B0 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177AEF0, "requesting location", 19, 2, _swiftEmptyArrayStorage);
  v3 = *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager);

  return [v3 requestLocation];
}

uint64_t sub_100505828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100281024(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

id sub_100505AE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts;
  v4 = *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v1 = a1;
    *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts) = v6;
    v2 = static os_log_type_t.default.getter();
    if (qword_1016947B0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = qword_10177AEF0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  v9 = *(v1 + v3);
  *(v8 + 16) = xmmword_101385D80;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = v9;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v7, "startCounts = %d", v13);

  if (*(v1 + v3) == 1)
  {
    v11 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v7, "starting location monitor", 25, 2, _swiftEmptyArrayStorage);
    if (*(v1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_mode))
    {
      v12 = &selRef_startMonitoringSignificantLocationChanges;
    }

    else
    {
      v12 = &selRef_startUpdatingLocation;
    }

    result = [*(v1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager) *v12];
    *(v1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted) = 1;
  }

  return result;
}

id sub_100505CA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts;
  v4 = *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v1 = a1;
    *(a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_startCounts) = v6;
    v2 = static os_log_type_t.default.getter();
    if (qword_1016947B0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = qword_10177AEF0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  v9 = *(v1 + v3);
  *(v8 + 16) = xmmword_101385D80;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = v9;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v7, "startCounts = %d", v13);

  if (!*(v1 + v3))
  {
    v11 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v7, "stopping location monitor", 25, 2, _swiftEmptyArrayStorage);
    if (*(v1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_mode))
    {
      v12 = &selRef_stopMonitoringSignificantLocationChanges;
    }

    else
    {
      v12 = &selRef_stopUpdatingLocation;
    }

    result = [*(v1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager) *v12];
    *(v1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted) = 0;
  }

  return result;
}

_BYTE *sub_100505E50(_BYTE *result)
{
  v1 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted;
  if ((result[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted] & 1) == 0)
  {
    v2 = result;
    v3 = static os_log_type_t.default.getter();
    if (qword_1016947B0 != -1)
    {
      v4 = v3;
      swift_once();
      v3 = v4;
    }

    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10177AEF0, "startMonitorIfNeeded starting location monitor", 46, 2, _swiftEmptyArrayStorage);
    result = [*&v2[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager] startUpdatingLocation];
    v2[v1] = 1;
  }

  return result;
}

_BYTE *sub_100505F44(_BYTE *result)
{
  v1 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted;
  if (result[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationMonitorStarted] == 1)
  {
    v2 = result;
    v3 = static os_log_type_t.default.getter();
    if (qword_1016947B0 != -1)
    {
      v4 = v3;
      swift_once();
      v3 = v4;
    }

    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10177AEF0, "force stopping location monitor", 31, 2, _swiftEmptyArrayStorage);
    result = [*&v2[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_locationManager] stopUpdatingLocation];
    v2[v1] = 0;
  }

  return result;
}

id CurrentLocationMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CurrentLocationMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurrentLocationMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100506164()
{
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t (*sub_1005061D8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100506DAC;
}

void sub_100506278(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100506310(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, &protocol witness table for CurrentLocationMonitor, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CurrentLocationMonitor.locationManager(_:didFailWithError:)(uint64_t a1, uint64_t a2)
{
  v2 = static os_log_type_t.error.getter();
  if (qword_1016947B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10177AEF0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "failed with error - %{public}@", 30, 2, v4);
}

uint64_t sub_100506698()
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10177AEF0 = result;
  return result;
}

uint64_t sub_100506710(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.default.getter();
  if (qword_1016947B0 != -1)
  {
    swift_once();
  }

  v11 = qword_10177AEF0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  v13 = &v1[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *(v13 + 1);
  aBlock = Strong;
  v51 = v15;
  sub_1000BC4D4(&unk_1016A3170, &qword_1013AD7B0);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v12 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v12 + 64) = v19;
  *(v12 + 32) = v16;
  *(v12 + 40) = v18;
  if (a1 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  aBlock = v20;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v19;
  *(v12 + 72) = v21;
  *(v12 + 80) = v22;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "didUpdateLocations(%{pubic}@) - %{public}@", 42, 2, v12);

  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v24 = *(a1 + 32);
  }

  v25 = v24;
  if (sub_1010E1130())
  {
    v26 = 0;
  }

  else
  {
    v27 = v25;
    v26 = v25;
  }

  v28 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v29 = *&v2[v28];
  *&v2[v28] = v26;
  v30 = v26;

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v32 = v41;
  v31 = v42;
  (*(v41 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v42);
  v33 = static OS_dispatch_queue.global(qos:)();
  (*(v32 + 8))(v9, v31);
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  *(v34 + 24) = v26;
  v54 = sub_100506D54;
  v55 = v34;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_100006684;
  v53 = &unk_101625610;
  v35 = _Block_copy(&aBlock);
  v36 = v30;
  v37 = v2;
  v38 = v43;
  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  sub_100281024(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v39 = v45;
  v40 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  (*(v47 + 8))(v39, v40);
  (*(v44 + 8))(v38, v46);
}

unint64_t sub_100506CE4()
{
  result = qword_1016A30D0;
  if (!qword_1016A30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A30D0);
  }

  return result;
}

uint64_t sub_100506DE0(void *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v9 = sub_1000BC4D4(a3, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14[-v11];
  sub_1000035D0(a1, a1[3]);
  a5();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[31] = a2;
  sub_100328B5C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_100506F34@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100507020()
{
  v1 = *v0;
  v2 = 0x70656363616E752ELL;
  v3 = 0x746E65732ELL;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x64656C6961662ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657470656363612ELL;
  if (v1 != 1)
  {
    v5 = 0x747365757165722ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100507110(uint64_t a1)
{
  v2 = sub_1005075A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050714C(uint64_t a1)
{
  v2 = sub_1005075A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100507188@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005075F8(a1, &qword_1016A31B0, &qword_1013ADAF0, sub_1005075A4, &type metadata for OwnerCircleMemberState.CodingKeys);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100507228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E61747065636361 && a2 == 0xEF65746174536563)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1005072B8(uint64_t a1)
{
  v2 = sub_100507778();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005072F4(uint64_t a1)
{
  v2 = sub_100507778();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100507330@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005075F8(a1, &qword_1016A31C8, &qword_1013ADB00, sub_100507778, &type metadata for MemberCircleMemberState.CodingKeys);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1005073D4()
{
  result = qword_1016A3180;
  if (!qword_1016A3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3180);
  }

  return result;
}

unint64_t sub_10050742C()
{
  result = qword_1016A3188;
  if (!qword_1016A3188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3188);
  }

  return result;
}

unint64_t sub_100507484()
{
  result = qword_1016A3190;
  if (!qword_1016A3190)
  {
    sub_1000BC580(&qword_1016A3198, qword_1013AD998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3190);
  }

  return result;
}

unint64_t sub_1005074EC()
{
  result = qword_1016A31A0;
  if (!qword_1016A31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31A0);
  }

  return result;
}

unint64_t _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_100507550()
{
  result = qword_1016A31A8;
  if (!qword_1016A31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31A8);
  }

  return result;
}

unint64_t sub_1005075A4()
{
  result = qword_1016A31B8;
  if (!qword_1016A31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31B8);
  }

  return result;
}

unint64_t sub_1005075F8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = sub_1000BC4D4(a2, a3);
  v15 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = sub_1000035D0(a1, a1[3]);
  a4();
  v12 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_100328A48();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v15 + 8))(v10, v8);
    v12 = v16;
    sub_100007BAC(a1);
  }

  return v12;
}

unint64_t sub_100507778()
{
  result = qword_1016A31D0;
  if (!qword_1016A31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31D0);
  }

  return result;
}

unint64_t sub_1005077F0()
{
  result = qword_1016A31E0;
  if (!qword_1016A31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31E0);
  }

  return result;
}

unint64_t sub_100507848()
{
  result = qword_1016A31E8;
  if (!qword_1016A31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31E8);
  }

  return result;
}

unint64_t sub_1005078A0()
{
  result = qword_1016A31F0;
  if (!qword_1016A31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31F0);
  }

  return result;
}

unint64_t sub_1005078F8()
{
  result = qword_1016A31F8;
  if (!qword_1016A31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A31F8);
  }

  return result;
}

unint64_t sub_100507950()
{
  result = qword_1016A3200;
  if (!qword_1016A3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3200);
  }

  return result;
}

unint64_t sub_1005079A8()
{
  result = qword_1016A3208;
  if (!qword_1016A3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3208);
  }

  return result;
}

unint64_t sub_100507A08(uint64_t a1)
{
  *(a1 + 8) = sub_100507A38();
  result = sub_100507A8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100507A38()
{
  result = qword_1016A3210;
  if (!qword_1016A3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3210);
  }

  return result;
}

unint64_t sub_100507A8C()
{
  result = qword_1016A3218;
  if (!qword_1016A3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3218);
  }

  return result;
}

uint64_t sub_100507AF0()
{
  v1 = v0;
  v2 = type metadata accessor for ClientOrigin();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RequestOrigin();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface____lazy_storage___session;
  if (*(v1 + OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface____lazy_storage___session))
  {
    v8 = *(v1 + OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface____lazy_storage___session);
  }

  else
  {
    (*(v3 + 104))(v5, enum case for ClientOrigin.other(_:), v2);
    RequestOrigin.init(_:)();
    type metadata accessor for Session();
    swift_allocObject();
    v8 = Session.init(_:)();
    *(v1 + v7) = v8;
  }

  return v8;
}

uint64_t sub_100507C6C()
{
  v1[5] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_100507D68, v0, 0);
}

uint64_t sub_100507D68()
{
  v44 = v0;
  v1 = v0[11];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_fetchState;
  swift_beginAccess();
  sub_10050B054(v2 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = v0[11];
      v7 = v0[8];
      v6 = v0[9];
      v8 = v0[6];
      v9 = v0[7];
      v10 = *v5;
      v11 = sub_1000BC4D4(&qword_1016A3438, &qword_1013ADEB0);
      (*(v9 + 32))(v6, &v5[*(v11 + 48)], v8);
      static ContinuousClock.now.getter();
      ContinuousClock.Instant.duration(to:)();
      v12 = *(v9 + 8);
      v12(v7, v8);
      if (qword_101695500 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000076D4(v13, qword_10177CE70);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v16 = 136446466;
        if (v10 <= 1)
        {
          if (v10)
          {
            v17 = 0xEA00000000006563;
            v18 = 0x6976654473696874;
          }

          else
          {
            v17 = 0xE700000000000000;
            v18 = 0x6E776F6E6B6E75;
          }
        }

        else if (v10 == 2)
        {
          v17 = 0xEB00000000656369;
          v18 = 0x766544726568746FLL;
        }

        else if (v10 == 3)
        {
          v17 = 0xEF6563697665446ELL;
          v18 = 0x6F696E61706D6F63;
        }

        else
        {
          v17 = 0xE400000000000000;
          v18 = 1701736302;
        }

        v41 = v0[6];
        v42 = v0[9];
        v35 = sub_1000136BC(v18, v17, &v43);

        *(v16 + 4) = v35;
        *(v16 + 12) = 2080;
        v36 = Duration.description.getter();
        v38 = sub_1000136BC(v36, v37, &v43);

        *(v16 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v14, v15, "Returning location sharing device %{public}s, last read %s ago.", v16, 0x16u);
        swift_arrayDestroy();

        v12(v42, v41);
        v10 = v10;
      }

      else
      {
        v33 = v0[9];
        v34 = v0[6];

        v12(v33, v34);
      }

      v39 = v0[1];

      return v39(v10);
    }

    if (qword_101695500 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177CE70);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Initial read of the location sharing device state.", v30, 2u);
    }

    v31 = sub_100509CA0();
    v0[12] = v31;
    v32 = swift_task_alloc();
    v0[13] = v32;
    *v32 = v0;
    v32[1] = sub_100508374;
    v25 = (v0 + 129);
    v26 = v31;
  }

  else
  {
    v19 = *v0[11];
    v0[14] = v19;
    if (qword_101695500 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177CE70);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Already reading location sharing device state, waiting for task.", v23, 2u);
    }

    v24 = swift_task_alloc();
    v0[15] = v24;
    *v24 = v0;
    v24[1] = sub_100508524;
    v25 = v0 + 16;
    v26 = v19;
  }

  return Task<>.value.getter(v25, v26, &type metadata for SystemInfoDynamic.MeDeviceState);
}

uint64_t sub_100508374()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1005084A0, v1, 0);
}

uint64_t sub_1005084A0()
{
  v1 = *(v0 + 129);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100508524()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100508634, v1, 0);
}

uint64_t sub_100508634()
{

  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1005086C0()
{
  if (qword_101695500 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177CE70);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Asked to refresh the location sharing device.", v3, 2u);
  }

  sub_100509CA0();
}

uint64_t sub_1005087B4()
{
  v1[2] = v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[3] = swift_task_alloc();
  v2 = sub_1000BC4D4(&qword_1016A3440, &qword_1013ADEB8);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1005088CC, v0, 0);
}

uint64_t sub_1005088CC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_registeredForPreferencesStateChanges;
  v0[9] = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_registeredForPreferencesStateChanges;
  if (*(v1 + v2))
  {
    if (qword_101695500 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177CE70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Already registered for preferences changes.", v6, 2u);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    *(v1 + v2) = 1;
    if (qword_101695500 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    v0[10] = sub_1000076D4(v9, qword_10177CE70);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Registering for preferences changes.", v12, 2u);
    }

    v0[11] = sub_100507AF0();
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_100508B58;
    v14 = v0[8];

    return Session.startMonitoringPreferencesChange()(v14);
  }
}

uint64_t sub_100508B58()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_100508E40;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_100508C80;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100508C80()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v4 + 16))(v2, v1, v5);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v4 + 32))(v11 + v9, v2, v5);
  *(v11 + v10) = v7;

  sub_100BB9ADC(0, 0, v6, &unk_1013ADEC8, v11);

  sub_10000B3A8(v6, &qword_101698C00, &qword_10138B570);
  (*(v4 + 8))(v1, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100508E40()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not subscribe to preferences change: %{public}@.", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  *(v0[2] + v0[9]) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_100508FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for Device();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A3448, &qword_1013ADED0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for PreferenceStreamChange();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A3450, &qword_1013ADED8);
  v5[18] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016A3458, &unk_1013ADEE0);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_100509208, 0, 0);
}

uint64_t sub_100509208()
{
  sub_1000BC4D4(&qword_1016A3440, &qword_1013ADEB8);
  AsyncStream.makeAsyncIterator()();
  *(v0 + 176) = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_fetchState;
  *(v0 + 208) = enum case for PreferenceStreamChange.meDevice(_:);
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1005092EC;
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_1005092EC()
{

  return _swift_task_switch(sub_1005093E8, 0, 0);
}

uint64_t sub_1005093E8()
{
  v45 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 208);
  v7 = *(v0 + 136);
  (*(v3 + 32))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  v11 = *(v0 + 120);
  if (v8 != v6)
  {
    (*(v9 + 8))(*(v0 + 136), v11);
LABEL_13:
    v22 = swift_task_alloc();
    *(v0 + 184) = v22;
    *v22 = v0;
    v22[1] = sub_1005092EC;
    v23 = *(v0 + 144);
    v24 = *(v0 + 152);

    return AsyncStream.Iterator.next(isolation:)(v23, 0, 0, v24);
  }

  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);
  (*(v9 + 96))(*(v0 + 136), v11);
  sub_10050AF2C(v10, v13);
  sub_10050AF9C(v13, v12);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_10000B3A8(*(v0 + 104), &qword_1016A3448, &qword_1013ADED0);
    if (qword_101695500 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177CE70);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 112);
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Got a preference change without a device.", v21, 2u);
    }

    sub_10000B3A8(v20, &qword_1016A3448, &qword_1013ADED0);
    goto LABEL_13;
  }

  (*(*(v0 + 80) + 32))(*(v0 + 96), *(v0 + 104), *(v0 + 72));
  if (qword_101695500 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 88);
  v26 = *(v0 + 96);
  v27 = *(v0 + 72);
  v28 = *(v0 + 80);
  v29 = type metadata accessor for Logger();
  *(v0 + 192) = sub_1000076D4(v29, qword_10177CE70);
  (*(v28 + 16))(v25, v26, v27);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v34 = *(v0 + 80);
  v33 = *(v0 + 88);
  v35 = *(v0 + 72);
  if (v32)
  {
    v36 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v36 = 136315138;
    sub_10050B00C(&qword_1016A3460, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v40 = *(v34 + 8);
    v40(v33, v35);
    v41 = sub_1000136BC(v37, v39, &v44);

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "Got a preference change for device %s.", v36, 0xCu);
    sub_100007BAC(v43);
  }

  else
  {

    v40 = *(v34 + 8);
    v40(v33, v35);
  }

  *(v0 + 200) = v40;
  v42 = *(v0 + 48);

  return _swift_task_switch(sub_10050995C, v42, 0);
}

uint64_t sub_10050995C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = Device.isThisDevice.getter();
  *(v0 + 212) = v4 & 1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  sub_1000BC4D4(&qword_1016A3438, &qword_1013ADEB0);
  *v2 = v5;
  static ContinuousClock.Instant.now.getter();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_10050AD00(v2, v3 + v1);
  swift_endAccess();

  return _swift_task_switch(sub_100509A4C, 0, 0);
}

uint64_t sub_100509A4C(uint64_t a1)
{
  v24 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 212);
    v21 = *(v1 + 200);
    v22 = *(v1 + 112);
    v5 = *(v1 + 96);
    v6 = *(v1 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136446210;
    if (v4)
    {
      v9 = 0x6976654473696874;
    }

    else
    {
      v9 = 0x766544726568746FLL;
    }

    if (v4)
    {
      v10 = 0xEA00000000006563;
    }

    else
    {
      v10 = 0xEB00000000656369;
    }

    v11 = sub_1000136BC(v9, v10, &v23);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Read me device state from preference update: %{public}s.", v7, 0xCu);
    sub_100007BAC(v8);

    v21(v5, v6);
    v12 = v22;
  }

  else
  {
    v13 = *(v1 + 200);
    v14 = *(v1 + 112);
    v15 = *(v1 + 96);
    v16 = *(v1 + 72);

    v13(v15, v16);
    v12 = v14;
  }

  sub_10000B3A8(v12, &qword_1016A3448, &qword_1013ADED0);
  v17 = swift_task_alloc();
  *(v1 + 184) = v17;
  *v17 = v1;
  v17[1] = sub_1005092EC;
  v18 = *(v1 + 144);
  v19 = *(v1 + 152);

  return AsyncStream.Iterator.next(isolation:)(v18, 0, 0, v19);
}

uint64_t sub_100509CA0()
{
  v1 = *v0;
  State = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  __chkstk_darwin(State);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = sub_10050B00C(&qword_1016A3430, type metadata accessor for LocationSharingDeviceInterface, "9T%");
  v10 = swift_allocObject();
  v10[2] = v0;
  v10[3] = v9;
  v10[4] = v0;
  v10[5] = v1;
  swift_retain_n();
  v11 = sub_10025F3E8(0, 0, v7, &unk_1013ADE90, v10);
  *v4 = v11;
  swift_storeEnumTagMultiPayload();
  v12 = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_fetchState;
  swift_beginAccess();

  sub_10050AD00(v4, v0 + v12);
  swift_endAccess();
  if (qword_101695500 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177CE70);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "In progress fetch task started.", v16, 2u);
  }

  return v11;
}

uint64_t sub_100509F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v4[10] = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for Device();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10050A064, a4, 0);
}

uint64_t sub_10050A064()
{

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_10050A134;
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  return withTimeout<A>(_:block:)(v2, 500000000000000000, 0, &unk_1013ADEA0, v4, v3);
}

uint64_t sub_10050A134()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_10050A4FC;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_10050A278;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10050A278()
{
  v22 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = Device.isThisDevice.getter();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  sub_1000BC4D4(&qword_1016A3438, &qword_1013ADEB0);
  *v1 = v4;
  static ContinuousClock.Instant.now.getter();
  swift_storeEnumTagMultiPayload();
  v5 = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_fetchState;
  swift_beginAccess();
  sub_10050AD00(v1, v2 + v5);
  swift_endAccess();
  if (qword_101695500 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177CE70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 96);
  if (v9)
  {
    v20 = v4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    if (v3)
    {
      v15 = 0x6976654473696874;
    }

    else
    {
      v15 = 0x766544726568746FLL;
    }

    if (v3)
    {
      v16 = 0xEA00000000006563;
    }

    else
    {
      v16 = 0xEB00000000656369;
    }

    v17 = sub_1000136BC(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Read me device state: %{public}s.", v13, 0xCu);
    sub_100007BAC(v14);

    v4 = v20;
  }

  (*(v11 + 8))(v10, v12);
  **(v0 + 64) = v4;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10050A4FC()
{

  if (qword_101695500 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CE70);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to read me device state: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 88);
  v8 = *(v0 + 72);
  swift_storeEnumTagMultiPayload();
  v9 = OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_fetchState;
  swift_beginAccess();
  sub_10050AD00(v7, v8 + v9);
  swift_endAccess();
  **(v0 + 64) = 0;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10050A708(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10050A724, a2, 0);
}

uint64_t sub_10050A724()
{
  v0[4] = sub_100507AF0();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_10050A7D0;
  v2 = v0[2];

  return Session.activeLocationSharingDevice(cached:)(v2, 0);
}

uint64_t sub_10050A7D0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10050A90C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10050A90C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10050A970()
{
  sub_10050B0B8(v0 + OBJC_IVAR____TtC12searchpartyd30LocationSharingDeviceInterface_fetchState);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10050A9E8(uint64_t a1)
{
  result = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(319);
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

void sub_10050AAB8(uint64_t a1)
{
  sub_10050AB2C();
  if (v1 <= 0x3F)
  {
    sub_10050ABD4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10050AB2C()
{
  if (!qword_1016A33F0)
  {
    sub_10050AB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A33F0);
    }
  }
}

void sub_10050AB74()
{
  if (!qword_1016A33F8)
  {
    v0 = type metadata accessor for Task();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A33F8);
    }
  }
}

void sub_10050ABD4(uint64_t a1)
{
  if (!qword_1016A3400)
  {
    type metadata accessor for ContinuousClock.Instant();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016A3400);
    }
  }
}

uint64_t sub_10050AC40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100509F70(a1, v4, v5, v6);
}

uint64_t sub_10050AD00(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t sub_10050AD64(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_10050A708(a1, v1);
}

uint64_t sub_10050AE00(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016A3440, &qword_1013ADEB8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100508FCC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10050AF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A3448, &qword_1013ADED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10050AF9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A3448, &qword_1013ADED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10050B00C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10050B054(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_10050B0B8(uint64_t a1)
{
  State = type metadata accessor for LocationSharingDeviceInterface.SharingDeviceFetchState(0);
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t sub_10050B114@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for FMNAccountType.pairingLock(_:);
  v3 = type metadata accessor for FMNAccountType();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  type metadata accessor for PairingLockAckEndPoint(0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.path.setter();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074618(v5);

  return URLComponents.host.setter();
}

uint64_t type metadata accessor for PairingLockAckEndPoint(uint64_t a1)
{
  result = qword_1016A34C0;
  if (!qword_1016A34C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10050B394(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10050B4EC(319, &qword_1016B1C20, &type metadata accessor for UUID, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000E3404();
      if (v3 <= 0x3F)
      {
        sub_10050B4EC(319, &unk_1016A35F0, type metadata accessor for PeerTrustEnvelopeV1, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10050B4EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10050B670(char a1)
{
  result = 0x6564496572616873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6C65646F6DLL;
      break;
    case 5:
      result = 0x65566D6574737973;
      break;
    case 6:
      result = 0x6449726F646E6576;
      break;
    case 7:
      result = 0x49746375646F7270;
      break;
    case 8:
      result = 0x614E6E6F63616562;
      break;
    case 9:
      result = 1701605234;
      break;
    case 10:
      result = 0x696A6F6D65;
      break;
    case 11:
      result = 0x616B63615079656BLL;
      break;
    case 12:
      result = 0x5064657473757274;
      break;
    case 13:
      result = 0x7079546572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10050B814(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A3930, &qword_1013AE348);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10050E034();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for UUID();
  sub_10050EA9C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CircleTrustEnvelopeV1(0);
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = (v3 + v9[15]);
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 11;
    sub_100017D5C(v13, v11);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, v14);
    v13 = *(v3 + v9[16]);
    v15 = 12;
    sub_1000BC4D4(&qword_1016A38B0, &qword_1013AE300);
    sub_10050EA00(&qword_1016A3938, &qword_1016A3940, &unk_1013CCC14, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = *(v3 + v9[17]);
    v15 = 13;
    sub_100157FD8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10050BCB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = __chkstk_darwin(v3 - 8);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = &v53 - v6;
  v7 = type metadata accessor for UUID();
  v61 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v62 = &v53 - v11;
  v65 = sub_1000BC4D4(&qword_1016A38A0, &qword_1013AE2F8);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v13 = &v53 - v12;
  v14 = type metadata accessor for CircleTrustEnvelopeV1(0);
  __chkstk_darwin(v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10050E034();
  v64 = v13;
  v17 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100007BAC(a1);
  }

  v55 = v10;
  v56 = v14;
  v66 = a1;
  v57 = v16;
  LOBYTE(v67) = 0;
  sub_10050EA9C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18 = v62;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v7;
  v21 = *(v61 + 32);
  v22 = v57;
  v21(v57, v18, v20);
  LOBYTE(v67) = 1;
  v23 = v60;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v54 = v20;
  v24 = v22;
  v25 = v56;
  sub_10012C154(v23, &v24[v56[5]]);
  LOBYTE(v67) = 2;
  v26 = v55;
  v60 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21(&v57[v25[6]], v26, v20);
  LOBYTE(v67) = 3;
  v27 = v59;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10012C154(v27, &v57[v25[7]]);
  LOBYTE(v67) = 4;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = &v57[v25[8]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v67) = 5;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = &v57[v25[9]];
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v67) = 6;
  *&v57[v25[10]] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v67) = 7;
  *&v57[v56[11]] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v67) = 8;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v62 = 0;
  v40 = &v57[v56[12]];
  *v40 = v38;
  v40[1] = v39;
  LOBYTE(v67) = 9;
  v41 = v62;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  v62 = v41;
  if (v41 || (*&v57[v56[13]] = v42, LOBYTE(v67) = 10, v43 = v62, v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v62 = v43) != 0))
  {
    (*(v63 + 8))(v64, v65);
    LODWORD(v63) = 0;
    LODWORD(v64) = 0;
    LODWORD(v65) = 0;
  }

  else
  {
    v48 = &v57[v56[14]];
    *v48 = v44;
    v48[1] = v45;
    v68 = 11;
    sub_1000E307C();
    v49 = v62;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v62 = v49;
    if (v49)
    {
      (*(v63 + 8))(v64, v65);
      LODWORD(v64) = 0;
      LODWORD(v65) = 0;
      LODWORD(v63) = 1;
    }

    else
    {
      *&v57[v56[15]] = v67;
      sub_1000BC4D4(&qword_1016A38B0, &qword_1013AE300);
      v68 = 12;
      sub_10050EA00(&qword_1016A38B8, &qword_1016A38C0, &unk_1013CCC3C, &protocol conformance descriptor for <A> [A]);
      v50 = v62;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v62 = v50;
      if (v50)
      {
        (*(v63 + 8))(v64, v65);
        LODWORD(v65) = 0;
        LODWORD(v63) = 1;
        LODWORD(v64) = 1;
      }

      else
      {
        *&v57[v56[16]] = v67;
        v68 = 13;
        sub_100157E70();
        v51 = v62;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v62 = v51;
        if (!v51)
        {
          (*(v63 + 8))(v64, v65);
          v52 = v57;
          v57[v56[17]] = v67;
          sub_10050E088(v52, v58);
          sub_100007BAC(v66);
          return sub_10050E0EC(v52);
        }

        (*(v63 + 8))(v64, v65);
        LODWORD(v63) = 1;
        LODWORD(v64) = 1;
        LODWORD(v65) = 1;
      }
    }
  }

  v47 = v60;
  v46 = v61;
  sub_100007BAC(v66);
  v34 = *(v46 + 8);
  v35 = v57;
  v34(v57, v54);
  if (!v47)
  {
    sub_1002EA198(&v35[v56[5]]);
  }

  v37 = v56;
  v36 = v57;
  v34(&v57[v56[6]], v54);
  sub_1002EA198(&v36[v37[7]]);

  if (v63)
  {

    if (v64)
    {
LABEL_9:
      result = sub_100016590(*&v36[v37[15]], *&v36[v37[15] + 8]);
      if (v65)
      {
      }

      return result;
    }
  }

  else if (v64)
  {
    goto LABEL_9;
  }

  if (v65)
  {
  }

  return result;
}

uint64_t sub_10050C740@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for UUID();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A38C8, &qword_1013AE308);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CircleTrustAckEnvelopeV1(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10050E148();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_10050EA9C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_10050E1F0(v11, v13, type metadata accessor for CircleTrustAckEnvelopeV1);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10050C9DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for UUID();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A38D8, &qword_1013AE310);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CircleTrustAcceptEnvelopeV1(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10050E19C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_10050EA9C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_10050E1F0(v11, v13, type metadata accessor for CircleTrustAcceptEnvelopeV1);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10050CC78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for UUID();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A38E8, &qword_1013AE318);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CircleTrustDeclineEnvelopeV1(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10050DFE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_10050EA9C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_10050E1F0(v11, v13, type metadata accessor for CircleTrustDeclineEnvelopeV1);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10050CF14(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v9 = sub_1000BC4D4(a3, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_1000035D0(a1, a1[3]);
  a5();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[3] = a2;
  sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  sub_10050EAE4(&qword_1016BF380, &qword_101698330, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10050D0B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for UUID();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A3910, &qword_1013AE338);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CircleTrustRequestEnvelopeV1(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10050E958();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_10050EA9C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_10050E1F0(v11, v13, type metadata accessor for CircleTrustRequestEnvelopeV1);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10050D350@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for UUID();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A3920, &qword_1013AE340);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DelegatedCircleTrustStopEnvelopeV1(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10050E9AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_10050EA9C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_10050E1F0(v11, v13, type metadata accessor for DelegatedCircleTrustStopEnvelopeV1);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10050D5F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10050E258(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10050D61C(uint64_t a1)
{
  v2 = sub_10050E034();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050D658(uint64_t a1)
{
  v2 = sub_10050E034();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10050D6E8(uint64_t a1)
{
  v2 = sub_10050E148();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050D724(uint64_t a1)
{
  v2 = sub_10050E148();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10050D7BC(uint64_t a1)
{
  v2 = sub_10050E19C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050D7F8(uint64_t a1)
{
  v2 = sub_10050E19C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10050D890(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_1000BC4D4(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_1000035D0(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_10050EA9C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10050DA10(uint64_t a1)
{
  v2 = sub_10050DFE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050DA4C(uint64_t a1)
{
  v2 = sub_10050DFE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10050DAE4(uint64_t a1)
{
  v2 = sub_10050E6E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050DB20(uint64_t a1)
{
  v2 = sub_10050E6E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10050DB5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10050E738(a1, &qword_1016A38F0, &unk_1013AE320, sub_10050E6E4, &type metadata for CirclesUpdatedEnvelopeV1.CodingKeys);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10050DBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001013587B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10050DC90(uint64_t a1)
{
  v2 = sub_10050E904();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050DCCC(uint64_t a1)
{
  v2 = sub_10050E904();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10050DD08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10050E738(a1, &qword_1016A3900, &qword_1013AE330, sub_10050E904, &type metadata for CirclesStoppedEnvelopeV1.CodingKeys);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10050DDA8(uint64_t a1)
{
  v2 = sub_10050E958();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050DDE4(uint64_t a1)
{
  v2 = sub_10050E958();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10050DE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6564496572616873 && a2 == 0xEF7265696669746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10050DF0C(uint64_t a1)
{
  v2 = sub_10050E9AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10050DF48(uint64_t a1)
{
  v2 = sub_10050E9AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10050DFE0()
{
  result = qword_1016A3898;
  if (!qword_1016A3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3898);
  }

  return result;
}

unint64_t sub_10050E034()
{
  result = qword_1016A38A8;
  if (!qword_1016A38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A38A8);
  }

  return result;
}

uint64_t sub_10050E088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleTrustEnvelopeV1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10050E0EC(uint64_t a1)
{
  v2 = type metadata accessor for CircleTrustEnvelopeV1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10050E148()
{
  result = qword_1016A38D0;
  if (!qword_1016A38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A38D0);
  }

  return result;
}

unint64_t sub_10050E19C()
{
  result = qword_1016A38E0;
  if (!qword_1016A38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A38E0);
  }

  return result;
}

uint64_t sub_10050E1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10050E258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496572616873 && a2 == 0xEF7265696669746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101358770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101358790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x614E6E6F63616562 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xEB00000000736567 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x5064657473757274 && a2 == 0xEC00000073726565 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7079546572616873 && a2 == 0xE900000000000065)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_10050E6E4()
{
  result = qword_1016A38F8;
  if (!qword_1016A38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A38F8);
  }

  return result;
}

void *sub_10050E738(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = sub_1000BC4D4(a2, a3);
  v15 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = sub_1000035D0(a1, a1[3]);
  a4();
  v12 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
    sub_10050EAE4(&qword_1016CBC30, &qword_101698300, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v15 + 8))(v10, v8);
    v12 = v16;
    sub_100007BAC(a1);
  }

  return v12;
}

unint64_t sub_10050E904()
{
  result = qword_1016A3908;
  if (!qword_1016A3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3908);
  }

  return result;
}

unint64_t sub_10050E958()
{
  result = qword_1016A3918;
  if (!qword_1016A3918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3918);
  }

  return result;
}

unint64_t sub_10050E9AC()
{
  result = qword_1016A3928;
  if (!qword_1016A3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3928);
  }

  return result;
}

uint64_t sub_10050EA00(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A38B0, &qword_1013AE300);
    sub_10050EA9C(a2, type metadata accessor for PeerTrustEnvelopeV1, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10050EA9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10050EAE4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&unk_1016BF350, &unk_1013E4AF0);
    sub_10050EA9C(a2, &type metadata accessor for UUID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10050EC04()
{
  result = qword_1016A3978;
  if (!qword_1016A3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3978);
  }

  return result;
}

unint64_t sub_10050EC5C()
{
  result = qword_1016A3980;
  if (!qword_1016A3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3980);
  }

  return result;
}

unint64_t sub_10050ECB4()
{
  result = qword_1016A3988;
  if (!qword_1016A3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3988);
  }

  return result;
}

unint64_t sub_10050ED0C()
{
  result = qword_1016A3990;
  if (!qword_1016A3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3990);
  }

  return result;
}

unint64_t sub_10050ED64()
{
  result = qword_1016A3998;
  if (!qword_1016A3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3998);
  }

  return result;
}

unint64_t sub_10050EDBC()
{
  result = qword_1016A39A0;
  if (!qword_1016A39A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39A0);
  }

  return result;
}

unint64_t sub_10050EE14()
{
  result = qword_1016A39A8;
  if (!qword_1016A39A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39A8);
  }

  return result;
}

unint64_t sub_10050EE6C()
{
  result = qword_1016A39B0;
  if (!qword_1016A39B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39B0);
  }

  return result;
}

unint64_t sub_10050EEC4()
{
  result = qword_1016A39B8;
  if (!qword_1016A39B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39B8);
  }

  return result;
}

unint64_t sub_10050EF1C()
{
  result = qword_1016A39C0;
  if (!qword_1016A39C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39C0);
  }

  return result;
}

unint64_t sub_10050EF74()
{
  result = qword_1016A39C8;
  if (!qword_1016A39C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39C8);
  }

  return result;
}

unint64_t sub_10050EFCC()
{
  result = qword_1016A39D0;
  if (!qword_1016A39D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39D0);
  }

  return result;
}

unint64_t sub_10050F024()
{
  result = qword_1016A39D8;
  if (!qword_1016A39D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39D8);
  }

  return result;
}

unint64_t sub_10050F07C()
{
  result = qword_1016A39E0;
  if (!qword_1016A39E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39E0);
  }

  return result;
}

unint64_t sub_10050F0D4()
{
  result = qword_1016A39E8;
  if (!qword_1016A39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39E8);
  }

  return result;
}

unint64_t sub_10050F12C()
{
  result = qword_1016A39F0;
  if (!qword_1016A39F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39F0);
  }

  return result;
}

unint64_t sub_10050F184()
{
  result = qword_1016A39F8;
  if (!qword_1016A39F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A39F8);
  }

  return result;
}

unint64_t sub_10050F1DC()
{
  result = qword_1016A3A00;
  if (!qword_1016A3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A00);
  }

  return result;
}

unint64_t sub_10050F234()
{
  result = qword_1016A3A08;
  if (!qword_1016A3A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A08);
  }

  return result;
}

unint64_t sub_10050F28C()
{
  result = qword_1016A3A10;
  if (!qword_1016A3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A10);
  }

  return result;
}

unint64_t sub_10050F2E4()
{
  result = qword_1016A3A18;
  if (!qword_1016A3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A18);
  }

  return result;
}

unint64_t sub_10050F33C()
{
  result = qword_1016A3A20;
  if (!qword_1016A3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A20);
  }

  return result;
}

unint64_t sub_10050F394()
{
  result = qword_1016A3A28;
  if (!qword_1016A3A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A28);
  }

  return result;
}

unint64_t sub_10050F3EC()
{
  result = qword_1016A3A30;
  if (!qword_1016A3A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3A30);
  }

  return result;
}

uint64_t sub_10050F450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10050F4A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_10050F5EC(uint64_t a1)
{
  sub_10050F6D8(319, &qword_1016A3BD8, type metadata accessor for DeviceEventFormat.LocationFormat);
  if (v1 <= 0x3F)
  {
    sub_10050F6D8(319, &qword_1016A3BE0, type metadata accessor for DeviceEventFormat.AttachmentInfoFormat);
    if (v2 <= 0x3F)
    {
      sub_10050F72C();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10050F6D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10050F72C()
{
  if (!qword_1016A3BE8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A3BE8);
    }
  }
}

uint64_t sub_10050F7D4(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10050F850(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10050F898(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10050F8E8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A3D60, &qword_1013AF220);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_10051234C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1001022C4(&v17, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v13, *(&v13 + 1));
  }

  else
  {
    sub_100016590(v13, *(&v13 + 1));
    v16 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_1001022C4(&v16, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v15 = v3[2];
    v13 = v3[2];
    v12 = 2;
    sub_1001022C4(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = v3[3];
    v14 = v13;
    v12 = 3;
    sub_1001022C4(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    LOBYTE(v13) = 4;
    sub_1005123A0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10050FBA0(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v17 = a5;
  v20 = a4;
  v9 = sub_1000BC4D4(&qword_1016A3E28, &qword_1013AF278);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  sub_1000035D0(a1, a1[3]);
  sub_1005131D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v19 = a3;
  v21 = 0;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v5)
  {
    sub_100016590(v18, v19);
  }

  else
  {
    v13 = v17;
    sub_100016590(v18, v19);
    v14 = BYTE1(v20);
    LOBYTE(v18) = v20;
    v21 = 1;
    sub_1005132CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = v14;
    v21 = 2;
    sub_100513320();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v13;
    v21 = 3;
    sub_1000BC4D4(&qword_1016A3E18, &qword_1013AF270);
    sub_100513374(&qword_1016A3E40, &qword_1016A3CB8, &unk_1013AEF5C, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10050FE30(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A3DF0, &qword_1013AF260);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1005130B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_100017D5C(v12, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v12, v13);
  if (!v2)
  {
    type metadata accessor for DeviceEventEncodedInfo(0);
    LOBYTE(v12) = 1;
    type metadata accessor for Date();
    sub_100510AD4(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10051000C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for Date();
  v20 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016A3DE0, &qword_1013AF258);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for DeviceEventEncodedInfo(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1005130B4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v19 = v8;
  v12 = v22;
  v11 = v23;
  v13 = v10;
  v26 = 0;
  sub_1000E307C();
  v14 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v13;
  *v13 = v25;
  LOBYTE(v25) = 1;
  sub_100510AD4(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v14);
  v15 = v18;
  (*(v20 + 32))(&v18[*(v19 + 20)], v5, v11);
  sub_100513108(v15, v21, type metadata accessor for DeviceEventEncodedInfo);
  sub_100007BAC(a1);
  return sub_100513170(v15, type metadata accessor for DeviceEventEncodedInfo);
}

Swift::Int sub_100510358()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1005103C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100510414@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101609338, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100510534()
{
  v1 = *v0;
  v2 = 0x727574616E676973;
  v3 = 6775156;
  v4 = 0x65636E6F6ELL;
  if (v1 != 3)
  {
    v4 = 0x687469726F676C61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574707972636E65;
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

uint64_t sub_1005105D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100512448(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1005105FC(uint64_t a1)
{
  v2 = sub_10051234C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100510638(uint64_t a1)
{
  v2 = sub_10051234C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100510674@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100512608(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1005106D0()
{
  v1 = 25705;
  v2 = 1701080941;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    v1 = 0x6570795479656BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100510740@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100512BE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100510768(uint64_t a1)
{
  v2 = sub_1005131D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005107A4(uint64_t a1)
{
  v2 = sub_1005131D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005107F8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100512D40(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_100510858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEA00000000007354)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100510934(uint64_t a1)
{
  v2 = sub_1005130B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100510970(uint64_t a1)
{
  v2 = sub_1005130B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005109AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100510A50(uint64_t a1)
{
  *(a1 + 8) = sub_100510AD4(&qword_1016A3CB0, type metadata accessor for DeviceEventEncodedInfo, &unk_1013AEF84);
  result = sub_100510AD4(&qword_1016A3CB8, type metadata accessor for DeviceEventEncodedInfo, &unk_1013AEF5C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100510AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100510B1C@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100513050(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100510BFC()
{
  result = qword_1016A3CC0;
  if (!qword_1016A3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3CC0);
  }

  return result;
}

uint64_t sub_100510C50(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A3D38, &qword_1013AF218);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1005122A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for DeviceEventFormat.LocationFormat(0);
  sub_100510AD4(&qword_1016A3D48, type metadata accessor for DeviceEventFormat.LocationFormat, &unk_1013AF158);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for DeviceEventFormat(0);
    v11[14] = 1;
    type metadata accessor for DeviceEventFormat.AttachmentInfoFormat(0);
    sub_100510AD4(&qword_1016A3D50, type metadata accessor for DeviceEventFormat.AttachmentInfoFormat, &unk_1013AF0B8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_1005122F8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11[11] = 3;
    type metadata accessor for Date();
    sub_100510AD4(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100510F0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = type metadata accessor for Date();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016A3B68, &unk_1013AEE10);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_1000BC4D4(&qword_1016A3B60, &qword_1013AEE08);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_1000BC4D4(&qword_1016A3DA0, &qword_1013AF240);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for DeviceEventFormat(0);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v32 = a1;
  sub_1000035D0(a1, v17);
  sub_1005122A4();
  v30 = v13;
  v18 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100007BAC(v32);
  }

  v19 = v28;
  v20 = v16;
  v31 = v4;
  type metadata accessor for DeviceEventFormat.LocationFormat(0);
  v37 = 0;
  sub_100510AD4(&qword_1016A3DA8, type metadata accessor for DeviceEventFormat.LocationFormat, &unk_1013AF180);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v10, v16, &qword_1016A3B60, &qword_1013AEE08);
  type metadata accessor for DeviceEventFormat.AttachmentInfoFormat(0);
  v36 = 1;
  sub_100510AD4(&qword_1016A3DB0, type metadata accessor for DeviceEventFormat.AttachmentInfoFormat, &unk_1013AF0E0);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v14;
  sub_1000D2AD8(v7, v20 + *(v14 + 20), &qword_1016A3B68, &unk_1013AEE10);
  v34 = 2;
  sub_100512AD0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v20 + *(v14 + 24)) = v35;
  v33 = 3;
  sub_100510AD4(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v22 = v31;
  v23 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 8))(v30, v29);
  (*(v25 + 32))(v20 + *(v21 + 28), v22, v23);
  sub_100513108(v20, v26, type metadata accessor for DeviceEventFormat);
  sub_100007BAC(v32);
  return sub_100513170(v20, type metadata accessor for DeviceEventFormat);
}

uint64_t sub_100511484(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A3D88, &qword_1013AF230);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_1005123F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for DeviceEventFormat.LocationFormat(0);
    v8[12] = 3;
    type metadata accessor for Date();
    sub_100510AD4(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1005116C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for Date();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A3D78, &qword_1013AF228);
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for DeviceEventFormat.LocationFormat(0);
  __chkstk_darwin(v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v29 = a1;
  sub_1000035D0(a1, v13);
  sub_1005123F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v6;
    v33 = 0;
    v15 = v27;
    KeyedDecodingContainer.decode(_:forKey:)();
    *v12 = v16;
    v32 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v15;
    v12[1] = v18;
    v31 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v12;
    v12[2] = v21;
    v30 = 3;
    sub_100510AD4(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v22 = v14;
    v23 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v9, v23);
    (*(v25 + 32))(v20 + *(v10 + 28), v22, v4);
    sub_100512B78(v20, v26, type metadata accessor for DeviceEventFormat.LocationFormat);
  }

  return sub_100007BAC(v29);
}

uint64_t sub_100511A30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for UUID();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A3DC0, &qword_1013AF248);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DeviceEventFormat.AttachmentInfoFormat(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100512B24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_100510AD4(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_100512B78(v11, v13, type metadata accessor for DeviceEventFormat.AttachmentInfoFormat);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_100511CCC()
{
  v1 = 0x6E6F697461636F6CLL;
  v2 = 0x656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v1 = 0x656D686361747461;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100511D54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100513B08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100511D7C(uint64_t a1)
{
  v2 = sub_1005122A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100511DB8(uint64_t a1)
{
  v2 = sub_1005122A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100511E24(uint64_t a1)
{
  v2 = sub_1005123F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100511E60(uint64_t a1)
{
  v2 = sub_1005123F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100511EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001013587D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100511F7C(uint64_t a1)
{
  v2 = sub_100512B24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100511FB8(uint64_t a1)
{
  v2 = sub_100512B24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051200C(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016A3DD0, &qword_1013AF250);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_100512B24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_100510AD4(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1005121CC(uint64_t a1)
{
  *(a1 + 8) = sub_1005121FC();
  result = sub_100512250();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1005121FC()
{
  result = qword_1016A3D28;
  if (!qword_1016A3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D28);
  }

  return result;
}

unint64_t sub_100512250()
{
  result = qword_1016A3D30;
  if (!qword_1016A3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D30);
  }

  return result;
}

unint64_t sub_1005122A4()
{
  result = qword_1016A3D40;
  if (!qword_1016A3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D40);
  }

  return result;
}

unint64_t sub_1005122F8()
{
  result = qword_1016A3D58;
  if (!qword_1016A3D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D58);
  }

  return result;
}

unint64_t sub_10051234C()
{
  result = qword_1016A3D68;
  if (!qword_1016A3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D68);
  }

  return result;
}

unint64_t sub_1005123A0()
{
  result = qword_1016A3D70;
  if (!qword_1016A3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D70);
  }

  return result;
}

unint64_t sub_1005123F4()
{
  result = qword_1016A3D80;
  if (!qword_1016A3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D80);
  }

  return result;
}

uint64_t sub_100512448(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL)
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

uint64_t sub_100512608@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A3D90, &qword_1013AF238);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10051234C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v22) = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *(&v26[0] + 1);
  v21 = *&v26[0];
  LOBYTE(v22) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v26[0];
  LOBYTE(v22) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v26[0];
  LOBYTE(v22) = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = *(&v26[0] + 1);
  v19 = *&v26[0];
  v29 = 4;
  sub_100512A44();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v20;
  *&v22 = v21;
  *(&v22 + 1) = v20;
  v11 = v18;
  v23 = v18;
  v12 = v17;
  v24 = v17;
  *&v25 = v19;
  *(&v25 + 1) = v9;
  sub_100512A98(&v22, v26);
  sub_100007BAC(a1);
  *&v26[0] = v21;
  *(&v26[0] + 1) = v10;
  v26[1] = v11;
  v26[2] = v12;
  v27 = v19;
  v28 = v9;
  result = sub_1000D2840(v26);
  v14 = v23;
  *a2 = v22;
  a2[1] = v14;
  v15 = v25;
  a2[2] = v24;
  a2[3] = v15;
  return result;
}

unint64_t sub_100512A44()
{
  result = qword_1016A3D98;
  if (!qword_1016A3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3D98);
  }

  return result;
}

unint64_t sub_100512AD0()
{
  result = qword_1016A3DB8;
  if (!qword_1016A3DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3DB8);
  }

  return result;
}

unint64_t sub_100512B24()
{
  result = qword_1016A3DC8;
  if (!qword_1016A3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3DC8);
  }

  return result;
}

uint64_t sub_100512B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100512BE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795479656BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100512D40(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A3DF8, &qword_1013AF268);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_1005131D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v12 = 0;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v10[0];
    v9 = v10[1];
    v12 = 1;
    sub_100513224();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = 2;
    sub_100513278();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = LOBYTE(v10[0]);
    sub_1000BC4D4(&qword_1016A3E18, &qword_1013AF270);
    v12 = 3;
    sub_100513374(&qword_1016A3E20, &qword_1016A3CB0, &unk_1013AEF84, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_100017D5C(v7, v9);

    sub_100007BAC(a1);
    sub_100016590(v7, v9);
  }

  return v7;
}

uint64_t sub_100513050(uint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

unint64_t sub_100513060()
{
  result = qword_1016A3DD8;
  if (!qword_1016A3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3DD8);
  }

  return result;
}

unint64_t sub_1005130B4()
{
  result = qword_1016A3DE8;
  if (!qword_1016A3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3DE8);
  }

  return result;
}

uint64_t sub_100513108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100513170(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1005131D0()
{
  result = qword_1016A3E00;
  if (!qword_1016A3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E00);
  }

  return result;
}

unint64_t sub_100513224()
{
  result = qword_1016A3E08;
  if (!qword_1016A3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E08);
  }

  return result;
}

unint64_t sub_100513278()
{
  result = qword_1016A3E10;
  if (!qword_1016A3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E10);
  }

  return result;
}

unint64_t sub_1005132CC()
{
  result = qword_1016A3E30;
  if (!qword_1016A3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E30);
  }

  return result;
}

unint64_t sub_100513320()
{
  result = qword_1016A3E38;
  if (!qword_1016A3E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E38);
  }

  return result;
}

uint64_t sub_100513374(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A3E18, &qword_1013AF270);
    sub_100510AD4(a2, type metadata accessor for DeviceEventEncodedInfo, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100513484()
{
  result = qword_1016A3E48;
  if (!qword_1016A3E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E48);
  }

  return result;
}

unint64_t sub_1005134DC()
{
  result = qword_1016A3E50;
  if (!qword_1016A3E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E50);
  }

  return result;
}

unint64_t sub_100513534()
{
  result = qword_1016A3E58;
  if (!qword_1016A3E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E58);
  }

  return result;
}

unint64_t sub_10051358C()
{
  result = qword_1016A3E60;
  if (!qword_1016A3E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E60);
  }

  return result;
}

unint64_t sub_1005135E4()
{
  result = qword_1016A3E68;
  if (!qword_1016A3E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E68);
  }

  return result;
}

unint64_t sub_10051363C()
{
  result = qword_1016A3E70;
  if (!qword_1016A3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E70);
  }

  return result;
}

unint64_t sub_100513694()
{
  result = qword_1016A3E78;
  if (!qword_1016A3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E78);
  }

  return result;
}

unint64_t sub_1005136EC()
{
  result = qword_1016A3E80;
  if (!qword_1016A3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E80);
  }

  return result;
}

unint64_t sub_100513744()
{
  result = qword_1016A3E88;
  if (!qword_1016A3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E88);
  }

  return result;
}

unint64_t sub_10051379C()
{
  result = qword_1016A3E90;
  if (!qword_1016A3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E90);
  }

  return result;
}

unint64_t sub_1005137F4()
{
  result = qword_1016A3E98;
  if (!qword_1016A3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3E98);
  }

  return result;
}

unint64_t sub_10051384C()
{
  result = qword_1016A3EA0;
  if (!qword_1016A3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EA0);
  }

  return result;
}

unint64_t sub_1005138A4()
{
  result = qword_1016A3EA8;
  if (!qword_1016A3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EA8);
  }

  return result;
}

unint64_t sub_1005138FC()
{
  result = qword_1016A3EB0;
  if (!qword_1016A3EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EB0);
  }

  return result;
}

unint64_t sub_100513954()
{
  result = qword_1016A3EB8;
  if (!qword_1016A3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EB8);
  }

  return result;
}

unint64_t sub_1005139AC()
{
  result = qword_1016A3EC0;
  if (!qword_1016A3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EC0);
  }

  return result;
}

unint64_t sub_100513A04()
{
  result = qword_1016A3EC8;
  if (!qword_1016A3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EC8);
  }

  return result;
}

unint64_t sub_100513A5C()
{
  result = qword_1016A3ED0;
  if (!qword_1016A3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3ED0);
  }

  return result;
}

unint64_t sub_100513AB4()
{
  result = qword_1016A3ED8;
  if (!qword_1016A3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3ED8);
  }

  return result;
}

uint64_t sub_100513B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEE006F666E49746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_100513C78()
{
  result = qword_1016A3EE0;
  if (!qword_1016A3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A3EE0);
  }

  return result;
}

void *sub_100513CD8()
{
  v1 = [v0 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierIDMS];
  v2 = [v0 accountsWithAccountType:v1];
  if (v2 && (v3 = v2, v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v3, v5 = sub_10051463C(v4, &qword_1016A3EF0, ACAccount_ptr), , v5))
  {
    v6 = [v0 aa_primaryAppleAccount];
    v7 = v5 & 0xFFFFFFFFFFFFFF8;
    v24 = v1;
    if (v5 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      v26 = v6;
      v27 = v5 & 0xC000000000000001;
      v25 = v5;
      while (1)
      {
        if (v27)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v7 + 16))
          {
            goto LABEL_34;
          }

          v10 = *(v5 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 aa_altDSID];
        if (v13)
        {
          v14 = v13;
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          if (!v6)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v15 = 0;
          v17 = 0;
          if (!v6)
          {
LABEL_18:
            v20 = 0;
            if (!v17)
            {
              goto LABEL_25;
            }

            goto LABEL_19;
          }
        }

        v18 = [v6 aa_altDSID];
        if (v18)
        {
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v6 = v21;

          if (!v17)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v20 = 0;
          v6 = 0;
          if (!v17)
          {
LABEL_25:
            if (!v6)
            {

              return v11;
            }

LABEL_6:

            goto LABEL_7;
          }
        }

LABEL_19:
        if (!v6)
        {
          goto LABEL_6;
        }

        if (v15 == v20 && v17 == v6)
        {

LABEL_31:

          return v11;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {

          goto LABEL_31;
        }

LABEL_7:
        v5 = v25;
        v6 = v26;
        ++v9;
        if (v12 == i)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100513FCC()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 additionalInfoForAccount:v0];

  if (!v2)
  {
    v20 = static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v19 = OS_os_log.init(subsystem:category:)();
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v19, "Could not obtain additional info.", 33, 2, _swiftEmptyArrayStorage);
    goto LABEL_15;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v5 = OS_os_log.init(subsystem:category:)();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = Dictionary.description.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "additionalInfo: %@", 18, 2, v6);

  if (!*(v3 + 16) || (v10 = sub_100771D58(0xD000000000000016, 0x8000000101358840), (v11 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_100013894(*(v3 + 56) + 32 * v10, v25);

  sub_1000BC4D4(&qword_1016A3EE8, &unk_1013E3660);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_13:
    v18 = static os_log_type_t.error.getter();
    v19 = OS_os_log.init(subsystem:category:)();
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Could not obtain obfuscatedPhoneNumbers.", 40, 2, _swiftEmptyArrayStorage);
LABEL_15:

    return 0;
  }

  v13 = *(v24 + 16);
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = 0;
  while (1)
  {
    if (v14 >= *(v24 + 16))
    {
      __break(1u);
      return result;
    }

    v15 = *(v24 + 8 * v14 + 32);
    if (*(v15 + 16))
    {
      break;
    }

LABEL_7:
    ++v14;
    memset(v25, 0, sizeof(v25));
    result = sub_1004AB638(v25);
    if (v13 == v14)
    {
      goto LABEL_17;
    }
  }

  v16 = sub_100771D58(0x796C746E65636572, 0xEC00000064657355);
  if ((v17 & 1) == 0)
  {

    goto LABEL_7;
  }

  v21 = v16;

  sub_100013894(*(v15 + 56) + 32 * v21, v25);
  sub_1004AB638(v25);
  if (!*(v15 + 16) || (v22 = sub_100771D58(0xD000000000000011, 0x8000000101358890), (v23 & 1) == 0))
  {
LABEL_17:

    return 0;
  }

  sub_100013894(*(v15 + 56) + 32 * v22, v25);

  if (swift_dynamicCast())
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

id sub_10051441C()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 altDSIDForAccount:v0];

  if (!v3)
  {
    return 0;
  }

  v4 = [v1 sharedInstance];
  v5 = [v4 authKitAccountWithAltDSID:v3];

  if (!v5)
  {
    return 0;
  }

  v6 = [v1 sharedInstance];
  v7 = [v6 securityLevelForAccount:v5];

  return v7;
}

void *sub_100514514(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_101123BB8(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100013894(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_101123BB8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10051463C(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100013894(i, v9);
    sub_100008BB8(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

void *sub_100514740(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100013894(i, v5);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_10051482C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = type metadata accessor for URLComponents();
  v47 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v45 - v7;
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v12 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMNAuthenticationProvider();
  (*(v9 + 104))(v11, enum case for FMNAccountType.ownedDeviceLocations(_:), v8);
  static FMNAuthenticationProvider.configurationURL(accountType:)();
  (*(v9 + 8))(v11, v8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
    v19 = v4;
    v20 = v47;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v20 = v47;
    v19 = v4;
    if ((*(v47 + 48))(v3, 1, v4) != 1)
    {
      v41 = *(v20 + 32);
      v42 = v45;
      v41(v45, v3, v4);
      v43 = URLComponents.path.modify();
      v44._countAndFlagsBits = 0x68637465662F3276;
      v44._object = 0xE800000000000000;
      String.append(_:)(v44);
      v43(v49, 0);
      (*(v16 + 8))(v18, v15);
      return (v41)(v48, v42, v4);
    }

    (*(v16 + 8))(v18, v15);
    sub_10000B3A8(v3, &qword_101699BA8, &unk_1013926B0);
  }

  v21 = v46;
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177BFF8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "No url found in account bag.", v25, 2u);
  }

  URLComponents.init()();
  URLComponents.scheme.setter();
  v26 = [objc_opt_self() standardUserDefaults];
  v27 = [objc_opt_self() sharedInstance];
  v28 = [v27 isInternalBuild];

  if (v28 && (v29 = String._bridgeToObjectiveC()(), v30 = [v26 stringForKey:v29], v29, v30))
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1000136BC(v31, v33, v49);
      _os_log_impl(&_mh_execute_header, v34, v35, "Override url found in user defaults %s. ", v36, 0xCu);
      sub_100007BAC(v37);
    }

    v49[0] = 47;
    v49[1] = 0xE100000000000000;
    v38._countAndFlagsBits = v31;
    v38._object = v33;
    String.append(_:)(v38);

    v39._countAndFlagsBits = 0x637465662F32762FLL;
    v39._object = 0xE900000000000068;
    String.append(_:)(v39);
  }

  else
  {
  }

  URLComponents.path.setter();
  URLComponents.host.setter();
  return (*(v20 + 32))(v48, v21, v19);
}

uint64_t type metadata accessor for OwnedDeviceFetchEndpoint(uint64_t a1)
{
  result = qword_1016A3F50;
  if (!qword_1016A3F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OwnedBeaconGroup.Version(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OwnedBeaconGroup.Version(uint64_t result, int a2, int a3)
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

uint64_t sub_100515038(uint64_t a1)
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

uint64_t sub_100515054(uint64_t result, int a2)
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

void sub_1005150AC(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MACAddress();
    if (v2 <= 0x3F)
    {
      sub_100515178(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100515178(uint64_t a1)
{
  if (!qword_1016A3FF8)
  {
    type metadata accessor for OwnedBeaconGroup.PairingState(255);
    sub_100101BAC();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1016A3FF8);
    }
  }
}

void sub_100515204(uint64_t a1)
{
  sub_100515278(319);
  if (v1 <= 0x3F)
  {
    sub_1005152F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100515278(uint64_t a1)
{
  if (!qword_1016A40C8)
  {
    sub_1000BC580(&qword_1016A40D0, &unk_10138BE70);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016A40C8);
    }
  }
}

void sub_1005152F0(uint64_t a1)
{
  if (!qword_1016A40D8)
  {
    __chkstk_darwin(a1);
    type metadata accessor for UUID();
    sub_1000BC580(&qword_1016A40D0, &unk_10138BE70);
    sub_1000BC580(&qword_1016A40E0, &unk_101396F30);
    sub_1000BC580(&unk_1016A40E8, &qword_1013AFA40);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1016A40D8);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for OwnedBeaconGroup.PairingMetadata(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OwnedBeaconGroup.PairingMetadata(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    if ((a2 + 33554179) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = *(a1 + 2);
  }

  v6 = v5 - 4;
  if (v4 < 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for OwnedBeaconGroup.PairingMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554179) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v3)
    {
      v4 = ((a2 - 253) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_100515594(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 32); ; ++i)
  {
    v9 = *i;
    v21 = v9;
    v10 = v9;
    v11 = *(&v9 + 1) >> 62;
    if ((*(&v9 + 1) >> 62) <= 1)
    {
      if (!v11)
      {
        v12 = BYTE14(v9);
        goto LABEL_16;
      }

      v13 = v9;
      if (__OFSUB__(DWORD1(v9), v9))
      {
        goto LABEL_27;
      }

      v12 = DWORD1(v9) - v9;
      goto LABEL_14;
    }

    if (v11 == 2)
    {
      v13 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      v12 = v14 - v15;
      if (__OFSUB__(v14, v15))
      {
        goto LABEL_28;
      }

LABEL_14:
      sub_100017D5C(v13, *(&v9 + 1));
      result = sub_100017D5C(v13, *(&v10 + 1));
      goto LABEL_16;
    }

    v12 = 0;
LABEL_16:
    v16 = __OFSUB__(20, v12);
    v17 = 20 - v12;
    if (v16)
    {
      break;
    }

    if (v17)
    {
      if (v17 <= 14)
      {
        if (v17 < 0)
        {
          goto LABEL_26;
        }

        v4 = 0;
        v1 = v1 & 0xF00000000000000 | (v17 << 48);
        v5 = v1;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v18 = __DataStorage.init(length:)();
        if (v17 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v4 = swift_allocObject();
          *(v4 + 16) = 0;
          *(v4 + 24) = v17;
          v5 = v18 | 0x8000000000000000;
        }

        else
        {
          v4 = v17 << 32;
          v5 = v18 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v4 = 0;
      v5 = 0xC000000000000000;
    }

    v19 = v4;
    v20 = v5;
    sub_100776394(&v19, 0);
    v6 = v19;
    v7 = v20;
    Data.append(_:)();
    sub_100016590(v6, v7);
    v8 = v21;
    Data.append(_:)();
    sub_100016590(v8, *(&v8 + 1));
    result = sub_100016590(v10, *(&v10 + 1));
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_10051578C(uint64_t a1)
{
  v81 = a1;
  v80 = type metadata accessor for MACAddress();
  v2 = *(v80 - 8);
  __chkstk_darwin(v80);
  v63 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1000BC4D4(&qword_1016A4218, &qword_1013AFF98);
  __chkstk_darwin(v79);
  v78 = &v62 - v4;
  v5 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v6 = __chkstk_darwin(v5 - 8);
  v68 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v84 = &v62 - v9;
  __chkstk_darwin(v8);
  v86 = &v62 - v10;
  v82 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v70 = *(v82 - 8);
  v11 = __chkstk_darwin(v82);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v62 - v14;
  v15 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v83 = &v62 - v19;
  v20 = *(v1 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  v21 = *(v20 + 64);
  v65 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v64 = (v22 + 63) >> 6;
  v76 = (v2 + 56);
  v77 = (v2 + 16);
  v25 = (v2 + 48);
  v62 = (v2 + 32);
  v67 = (v2 + 8);
  v71 = v20;

  v26 = 0;
  v74 = v13;
  v75 = v25;
  v85 = v18;
  while (v24)
  {
    v27 = v26;
LABEL_16:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = v30 | (v27 << 6);
    v32 = (*(v71 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    v35 = v69;
    sub_100524368(*(v71 + 56) + *(v70 + 72) * v31, v69, type metadata accessor for OwnedBeaconGroup.PairingState);
    v36 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v37 = *(v36 + 48);
    v38 = v85;
    *v85 = v33;
    v38[1] = v34;
    sub_100523BF4(v35, v38 + v37, type metadata accessor for OwnedBeaconGroup.PairingState);
    v39 = *(*(v36 - 8) + 56);
    v40 = v36;
    v18 = v38;
    v39(v38, 0, 1, v40);
    sub_100017D5C(v33, v34);
LABEL_17:
    v41 = v83;
    sub_1000D2AD8(v18, v83, &unk_1016BBEA0, &unk_101395A80);
    v42 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {
LABEL_26:

      return;
    }

    sub_100016590(*v41, *(v41 + 8));
    sub_100523BF4(v41 + *(v42 + 48), v13, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_26;
      }

      v44 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v45 = v44[12];
      sub_100006654(*&v13[v44[16]], *&v13[v44[16] + 8]);
      v46 = &v13[v44[24]];
      v47 = *v46;
      v72 = v46[1];
      v73 = v47;
      v48 = v86;
      sub_1000D2AD8(&v13[v45], v86, &qword_1016A40D0, &unk_10138BE70);
      v49 = type metadata accessor for UUID();
      (*(*(v49 - 8) + 8))(v13, v49);
    }

    else
    {
      v50 = &v13[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
      v51 = *v50;
      v72 = v50[1];
      v73 = v51;
      v48 = v86;
      sub_1000D2AD8(v13, v86, &qword_1016A40D0, &unk_10138BE70);
    }

    v52 = v84;
    v53 = v80;
    (*v77)(v84, v81, v80);
    (*v76)(v52, 0, 1, v53);
    v54 = v78;
    v55 = *(v79 + 48);
    sub_1000D2A70(v48, v78, &qword_1016A40D0, &unk_10138BE70);
    sub_1000D2A70(v52, v54 + v55, &qword_1016A40D0, &unk_10138BE70);
    v56 = *v75;
    if ((*v75)(v54, 1, v53) == 1)
    {
      sub_10000B3A8(v52, &qword_1016A40D0, &unk_10138BE70);
      sub_10000B3A8(v86, &qword_1016A40D0, &unk_10138BE70);
      if (v56(v54 + v55, 1, v53) == 1)
      {

        sub_10000B3A8(v54, &qword_1016A40D0, &unk_10138BE70);
        return;
      }

LABEL_5:
      sub_10000B3A8(v54, &qword_1016A4218, &qword_1013AFF98);
      v13 = v74;
      v18 = v85;
    }

    else
    {
      v57 = v68;
      sub_1000D2A70(v54, v68, &qword_1016A40D0, &unk_10138BE70);
      if (v56(v54 + v55, 1, v53) == 1)
      {
        sub_10000B3A8(v84, &qword_1016A40D0, &unk_10138BE70);
        sub_10000B3A8(v86, &qword_1016A40D0, &unk_10138BE70);
        (*v67)(v57, v53);
        goto LABEL_5;
      }

      v58 = v54 + v55;
      v59 = v63;
      (*v62)(v63, v58, v53);
      sub_100523A38(&unk_1016C7F60, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v60 = *v67;
      (*v67)(v59, v53);
      sub_10000B3A8(v84, &qword_1016A40D0, &unk_10138BE70);
      sub_10000B3A8(v86, &qword_1016A40D0, &unk_10138BE70);
      v60(v57, v53);
      sub_10000B3A8(v54, &qword_1016A40D0, &unk_10138BE70);
      v13 = v74;
      v18 = v85;
      if (v66)
      {
        goto LABEL_26;
      }
    }
  }

  if (v64 <= v26 + 1)
  {
    v28 = v26 + 1;
  }

  else
  {
    v28 = v64;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v64)
    {
      v61 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v61 - 8) + 56))(v18, 1, 1, v61);
      v24 = 0;
      v26 = v29;
      goto LABEL_17;
    }

    v24 = *(v65 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1005160CC(uint64_t a1)
{
  v286 = a1;
  v285 = type metadata accessor for UUID();
  v281 = *(v285 - 8);
  v2 = __chkstk_darwin(v285);
  v255 = &v241 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v254 = &v241 - v5;
  __chkstk_darwin(v4);
  v275 = &v241 - v6;
  v7 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v7 - 8);
  v269 = &v241 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MACAddress();
  v279 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v253 = &v241 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v252 = &v241 - v13;
  v14 = __chkstk_darwin(v12);
  v251 = &v241 - v15;
  __chkstk_darwin(v14);
  v250 = &v241 - v16;
  v17 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v18 = __chkstk_darwin(v17 - 8);
  v265 = &v241 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v272 = &v241 - v21;
  v22 = __chkstk_darwin(v20);
  v264 = &v241 - v23;
  __chkstk_darwin(v22);
  v271 = &v241 - v24;
  v25 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v277 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v241 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v276 = &v241 - v29;
  v30 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v31 = __chkstk_darwin(v30 - 8);
  v287 = (&v241 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v284 = (&v241 - v33);
  v266 = type metadata accessor for OwnedBeaconGroup(0);
  v34 = __chkstk_darwin(v266);
  v263 = &v241 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v262 = &v241 - v37;
  v38 = __chkstk_darwin(v36);
  v248 = &v241 - v39;
  v40 = __chkstk_darwin(v38);
  v261 = &v241 - v41;
  v42 = __chkstk_darwin(v40);
  v282 = &v241 - v43;
  v44 = __chkstk_darwin(v42);
  v274 = &v241 - v45;
  v46 = __chkstk_darwin(v44);
  v48 = (&v241 - v47);
  v49 = __chkstk_darwin(v46);
  v51 = (&v241 - v50);
  v52 = __chkstk_darwin(v49);
  v54 = &v241 - v53;
  v55 = __chkstk_darwin(v52);
  v57 = &v241 - v56;
  __chkstk_darwin(v55);
  v59 = &v241 - v58;
  sub_100524368(v1, &v241 - v58, type metadata accessor for OwnedBeaconGroup);
  sub_100524368(v1, v57, type metadata accessor for OwnedBeaconGroup);
  sub_100524368(v1, v54, type metadata accessor for OwnedBeaconGroup);
  v268 = v51;
  sub_100524368(v1, v51, type metadata accessor for OwnedBeaconGroup);
  v273 = v1;
  v270 = v48;
  sub_100524368(v1, v48, type metadata accessor for OwnedBeaconGroup);
  v60 = Logger.logObject.getter();
  LODWORD(v267) = static os_log_type_t.default.getter();
  v61 = os_log_type_enabled(v60, v267);
  v283 = v9;
  v280 = v25;
  v278 = v28;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v260 = swift_slowAlloc();
    v288 = v260;
    *v62 = 141559811;
    *(v62 + 4) = 1752392040;
    *(v62 + 12) = 2081;
    v63 = v266;
    sub_100523A38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v259 = v60;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    sub_100523C5C(v59, type metadata accessor for OwnedBeaconGroup);
    v67 = sub_1000136BC(v64, v66, &v288);

    *(v62 + 14) = v67;
    *(v62 + 22) = 2160;
    *(v62 + 24) = 1752392040;
    *(v62 + 32) = 2081;
    sub_100523A38(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v28 = v278;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    sub_100523C5C(v57, type metadata accessor for OwnedBeaconGroup);
    v71 = sub_1000136BC(v68, v70, &v288);

    *(v62 + 34) = v71;
    *(v62 + 42) = 2080;
    sub_100101BAC();
    v72 = Dictionary.description.getter();
    v74 = v73;
    sub_100523C5C(v54, type metadata accessor for OwnedBeaconGroup);
    v75 = sub_1000136BC(v72, v74, &v288);

    *(v62 + 44) = v75;
    *(v62 + 52) = 1024;
    LODWORD(v75) = *(v268 + *(v63 + 32));
    sub_100523C5C(v268, type metadata accessor for OwnedBeaconGroup);
    *(v62 + 54) = v75;
    *(v62 + 58) = 2160;
    *(v62 + 60) = 1752392040;
    *(v62 + 68) = 2081;
    v76 = v270;
    v77 = MACAddress.udid.getter();
    v79 = v78;
    sub_100523C5C(v76, type metadata accessor for OwnedBeaconGroup);
    v80 = sub_1000136BC(v77, v79, &v288);

    *(v62 + 70) = v80;
    v81 = v259;
    _os_log_impl(&_mh_execute_header, v259, v267, "<id:%{private,mask.hash}s mac:%{private,mask.hash}s beaconMap:%s fmns:%{BOOL}d udid: %{private,mask.hash}s>", v62, 0x4Eu);
    swift_arrayDestroy();
  }

  else
  {
    sub_100523C5C(v268, type metadata accessor for OwnedBeaconGroup);

    sub_100523C5C(v270, type metadata accessor for OwnedBeaconGroup);
    sub_100523C5C(v54, type metadata accessor for OwnedBeaconGroup);
    sub_100523C5C(v57, type metadata accessor for OwnedBeaconGroup);
    sub_100523C5C(v59, type metadata accessor for OwnedBeaconGroup);
    v63 = v266;
  }

  v82 = v273;
  v83 = v274;
  sub_100524368(v273, v274, type metadata accessor for OwnedBeaconGroup);
  v84 = v282;
  sub_100524368(v82, v282, type metadata accessor for OwnedBeaconGroup);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v288 = v88;
    *v87 = 141558531;
    *(v87 + 4) = 1752392040;
    *(v87 + 12) = 2081;
    sub_100523A38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v83;
    v92 = v91;
    sub_100523C5C(v90, type metadata accessor for OwnedBeaconGroup);
    v93 = sub_1000136BC(v89, v92, &v288);

    *(v87 + 14) = v93;
    *(v87 + 22) = 2048;
    v94 = *(*(v282 + *(v63 + 40)) + 16);
    sub_100523C5C(v282, type metadata accessor for OwnedBeaconGroup);
    *(v87 + 24) = v94;
    _os_log_impl(&_mh_execute_header, v85, v86, "BeaconMap for group: %{private,mask.hash}s (%ld)", v87, 0x20u);
    sub_100007BAC(v88);
  }

  else
  {
    sub_100523C5C(v84, type metadata accessor for OwnedBeaconGroup);

    sub_100523C5C(v83, type metadata accessor for OwnedBeaconGroup);
  }

  v95 = v275;
  v96 = v287;
  v97 = *(v273 + *(v63 + 40));
  v98 = v97 + 64;
  v99 = 1 << *(v97 + 32);
  v100 = -1;
  if (v99 < 64)
  {
    v100 = ~(-1 << v99);
  }

  v101 = v100 & *(v97 + 64);
  v267 = (v99 + 63) >> 6;
  v260 = (v281 + 32);
  v270 = v279 + 6;
  v259 = v279 + 4;
  v258 = (v281 + 16);
  v257 = v279 + 2;
  v256 = v279 + 1;
  v268 = (v281 + 8);
  v279 = v97;

  v102 = 0;
  *&v103 = 141558787;
  v242 = v103;
  *&v103 = 141559299;
  v247 = v103;
  *&v103 = 141559811;
  v241 = v103;
  *&v103 = 141558275;
  v246 = v103;
  v282 = v98;
  while (v101)
  {
    v104 = v102;
LABEL_21:
    v107 = __clz(__rbit64(v101));
    v101 &= v101 - 1;
    v108 = v107 | (v104 << 6);
    v109 = (v279[6].isa + 16 * v108);
    v110 = *v109;
    v111 = v109[1];
    v112 = v276;
    sub_100524368(v279[7].isa + *(v277 + 72) * v108, v276, type metadata accessor for OwnedBeaconGroup.PairingState);
    v113 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v114 = *(v113 + 48);
    v115 = v287;
    *v287 = v110;
    v115[1] = v111;
    v116 = v112;
    v96 = v115;
    sub_100523BF4(v116, v115 + v114, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v113 - 8) + 56))(v96, 0, 1, v113);
    sub_100017D5C(v110, v111);
LABEL_22:
    v117 = v284;
    sub_1000D2AD8(v96, v284, &unk_1016BBEA0, &unk_101395A80);
    v118 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v118 - 8) + 48))(v117, 1, v118) == 1)
    {

      return;
    }

    v119 = v117;
    v120 = *v117;
    v121 = v119[1];
    sub_100523BF4(v119 + *(v118 + 48), v28, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v123 = v285;
      if (EnumCaseMultiPayload == 1)
      {
        v281 = v120;
        v274 = v121;
        v124 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v125 = *(v124 + 48);
        sub_100006654(*&v28[*(v124 + 64)], *&v28[*(v124 + 64) + 8]);
        (*v260)(v95, v28, v123);
        v126 = &v28[v125];
        v127 = v272;
        sub_1000D2AD8(v126, v272, &qword_1016A40D0, &unk_10138BE70);
        v128 = v127;
        v129 = v265;
        sub_1000D2A70(v128, v265, &qword_1016A40D0, &unk_10138BE70);
        v130 = v283;
        if ((v270->isa)(v129, 1, v283) != 1)
        {
          v180 = v252;
          (v259->isa)(v252, v129, v130);
          sub_100524368(v273, v262, type metadata accessor for OwnedBeaconGroup);
          v181 = v254;
          (*v258)(v254, v95, v123);
          v182 = v253;
          (v257->isa)(v253, v180, v130);
          v183 = v281;
          v184 = v274;
          sub_100017D5C(v281, v274);
          v185 = Logger.logObject.getter();
          v186 = static os_log_type_t.default.getter();
          sub_100016590(v183, v184);
          if (os_log_type_enabled(v185, v186))
          {
            LODWORD(v245) = v186;
            v249 = v185;
            v187 = swift_slowAlloc();
            v244 = swift_slowAlloc();
            v288 = v244;
            *v187 = v241;
            *(v187 + 4) = 1752392040;
            *(v187 + 12) = 2081;
            sub_100523A38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v188 = v262;
            v189 = dispatch thunk of CustomStringConvertible.description.getter();
            v191 = v190;
            sub_100523C5C(v188, type metadata accessor for OwnedBeaconGroup);
            v192 = sub_1000136BC(v189, v191, &v288);

            *(v187 + 14) = v192;
            *(v187 + 22) = 2160;
            *(v187 + 24) = 1752392040;
            *(v187 + 32) = 2081;
            static String.Encoding.utf8.getter();
            v193 = String.init(data:encoding:)();
            if (!v194)
            {
              v193 = Data.hexString.getter();
            }

            v195 = v253;
            v196 = sub_1000136BC(v193, v194, &v288);

            *(v187 + 34) = v196;
            *(v187 + 42) = 2160;
            *(v187 + 44) = 1752392040;
            *(v187 + 52) = 2081;
            v197 = v254;
            v198 = UUID.uuidString.getter();
            v200 = v199;
            v243 = *v268;
            v201 = v197;
            v202 = v285;
            v243(v201, v285);
            v203 = sub_1000136BC(v198, v200, &v288);

            *(v187 + 54) = v203;
            *(v187 + 62) = 2160;
            *(v187 + 64) = 1752392040;
            *(v187 + 72) = 2081;
            v204 = MACAddress.description.getter();
            v206 = v205;
            isa = v256->isa;
            v208 = v195;
            v209 = v283;
            (v256->isa)(v208, v283);
            v210 = sub_1000136BC(v204, v206, &v288);

            *(v187 + 74) = v210;
            v211 = v249;
            _os_log_impl(&_mh_execute_header, v249, v245, "  group: %{private,mask.hash}s serial: %{private,mask.hash}s: \npaired(%{private,mask.hash}s, %{private,mask.hash}s", v187, 0x52u);
            swift_arrayDestroy();

            sub_100016590(v183, v274);
            isa(v252, v209);
            sub_10000B3A8(v272, &qword_1016A40D0, &unk_10138BE70);
            v95 = v275;
            v243(v275, v202);
          }

          else
          {

            sub_100016590(v183, v184);
            v236 = v256->isa;
            v237 = v283;
            (v256->isa)(v182, v283);
            v238 = *v268;
            (*v268)(v181, v123);
            sub_100523C5C(v262, type metadata accessor for OwnedBeaconGroup);
            v236(v180, v237);
            sub_10000B3A8(v272, &qword_1016A40D0, &unk_10138BE70);
            v95 = v275;
            v238(v275, v123);
          }

          goto LABEL_50;
        }

        sub_10000B3A8(v129, &qword_1016A40D0, &unk_10138BE70);
        sub_100524368(v273, v263, type metadata accessor for OwnedBeaconGroup);
        v131 = v255;
        (*v258)(v255, v95, v123);
        v132 = v281;
        v133 = v274;
        sub_100017D5C(v281, v274);
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.default.getter();
        sub_100016590(v132, v133);
        LODWORD(v249) = v135;
        if (os_log_type_enabled(v134, v135))
        {
          v245 = v134;
          v136 = swift_slowAlloc();
          v244 = swift_slowAlloc();
          v288 = v244;
          *v136 = v247;
          *(v136 + 4) = 1752392040;
          *(v136 + 12) = 2081;
          sub_100523A38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v137 = v263;
          v138 = dispatch thunk of CustomStringConvertible.description.getter();
          v140 = v139;
          sub_100523C5C(v137, type metadata accessor for OwnedBeaconGroup);
          v141 = sub_1000136BC(v138, v140, &v288);

          *(v136 + 14) = v141;
          *(v136 + 22) = 2160;
          *(v136 + 24) = 1752392040;
          *(v136 + 32) = 2081;
          static String.Encoding.utf8.getter();
          v142 = String.init(data:encoding:)();
          if (!v143)
          {
            v142 = Data.hexString.getter();
          }

          v144 = v133;
          v145 = sub_1000136BC(v142, v143, &v288);

          *(v136 + 34) = v145;
          *(v136 + 42) = 2160;
          *(v136 + 44) = 1752392040;
          *(v136 + 52) = 2081;
          v146 = v255;
          v147 = UUID.uuidString.getter();
          v149 = v148;
          v150 = *v268;
          v151 = v146;
          v152 = v285;
          (*v268)(v151, v285);
          v153 = sub_1000136BC(v147, v149, &v288);

          *(v136 + 54) = v153;
          v154 = v245;
          _os_log_impl(&_mh_execute_header, v245, v249, "  group: %{private,mask.hash}s serial: %{private,mask.hash}s: paired(%{private,mask.hash}s, N/A)", v136, 0x3Eu);
          swift_arrayDestroy();

          sub_100016590(v132, v144);
          sub_10000B3A8(v272, &qword_1016A40D0, &unk_10138BE70);
          v95 = v275;
          v150(v275, v152);
          goto LABEL_50;
        }

        sub_100016590(v132, v133);
        v235 = *v268;
        (*v268)(v131, v123);
        sub_100523C5C(v263, type metadata accessor for OwnedBeaconGroup);
        sub_10000B3A8(v272, &qword_1016A40D0, &unk_10138BE70);
        v235(v95, v123);
        v98 = v282;
        v28 = v278;
      }

      else
      {
        sub_100017D5C(v120, v121);
        v171 = Logger.logObject.getter();
        v172 = static os_log_type_t.default.getter();
        sub_100016590(v120, v121);
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          v174 = v121;
          v175 = swift_slowAlloc();
          v288 = v175;
          *v173 = v246;
          *(v173 + 4) = 1752392040;
          *(v173 + 12) = 2081;
          static String.Encoding.utf8.getter();
          v176 = String.init(data:encoding:)();
          if (!v177)
          {
            v176 = Data.hexString.getter();
          }

          v178 = sub_1000136BC(v176, v177, &v288);

          *(v173 + 14) = v178;
          _os_log_impl(&_mh_execute_header, v171, v172, "  %{private,mask.hash}s: locked", v173, 0x16u);
          sub_100007BAC(v175);

          sub_100016590(v120, v174);

          goto LABEL_49;
        }

        sub_100016590(v120, v121);
        v98 = v282;
      }
    }

    else
    {
      v155 = v120;
      v156 = v271;
      sub_1000D2AD8(v28, v271, &qword_1016A40D0, &unk_10138BE70);
      v157 = v156;
      v158 = v264;
      sub_1000D2A70(v157, v264, &qword_1016A40D0, &unk_10138BE70);
      v159 = v283;
      if ((v270->isa)(v158, 1, v283) == 1)
      {
        sub_10000B3A8(v158, &qword_1016A40D0, &unk_10138BE70);
        v160 = v248;
        sub_100524368(v273, v248, type metadata accessor for OwnedBeaconGroup);
        sub_100017D5C(v155, v121);
        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.default.getter();
        sub_100016590(v155, v121);
        LODWORD(v281) = v162;
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v288 = swift_slowAlloc();
          *v163 = v242;
          *(v163 + 4) = 1752392040;
          *(v163 + 12) = 2081;
          sub_100523A38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v164 = dispatch thunk of CustomStringConvertible.description.getter();
          v166 = v165;
          sub_100523C5C(v160, type metadata accessor for OwnedBeaconGroup);
          v167 = sub_1000136BC(v164, v166, &v288);

          *(v163 + 14) = v167;
          *(v163 + 22) = 2160;
          *(v163 + 24) = 1752392040;
          *(v163 + 32) = 2081;
          static String.Encoding.utf8.getter();
          v168 = String.init(data:encoding:)();
          if (!v169)
          {
            v168 = Data.hexString.getter();
          }

          v170 = sub_1000136BC(v168, v169, &v288);

          *(v163 + 34) = v170;
          _os_log_impl(&_mh_execute_header, v161, v281, "  group: %{private,mask.hash}s serial: %{private,mask.hash}s: unpaired(N/A)", v163, 0x2Au);
          swift_arrayDestroy();

          sub_100016590(v155, v121);
          goto LABEL_48;
        }

        sub_100016590(v155, v121);
        sub_100523C5C(v160, type metadata accessor for OwnedBeaconGroup);
        sub_10000B3A8(v271, &qword_1016A40D0, &unk_10138BE70);
        v95 = v275;
        v98 = v282;
        v28 = v278;
      }

      else
      {
        v212 = v250;
        (v259->isa)(v250, v158, v159);
        sub_100524368(v273, v261, type metadata accessor for OwnedBeaconGroup);
        v213 = v251;
        (v257->isa)(v251, v212, v159);
        sub_100017D5C(v155, v121);
        v214 = Logger.logObject.getter();
        v215 = static os_log_type_t.default.getter();
        v281 = v155;
        sub_100016590(v155, v121);
        LODWORD(v249) = v215;
        if (os_log_type_enabled(v214, v215))
        {
          v245 = v214;
          v216 = swift_slowAlloc();
          v244 = swift_slowAlloc();
          v288 = v244;
          *v216 = v247;
          *(v216 + 4) = 1752392040;
          *(v216 + 12) = 2081;
          sub_100523A38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v217 = v261;
          v218 = dispatch thunk of CustomStringConvertible.description.getter();
          v220 = v219;
          sub_100523C5C(v217, type metadata accessor for OwnedBeaconGroup);
          v221 = sub_1000136BC(v218, v220, &v288);

          *(v216 + 14) = v221;
          *(v216 + 22) = 2160;
          *(v216 + 24) = 1752392040;
          *(v216 + 32) = 2081;
          static String.Encoding.utf8.getter();
          v222 = v281;
          v223 = String.init(data:encoding:)();
          if (!v224)
          {
            v223 = Data.hexString.getter();
          }

          v225 = sub_1000136BC(v223, v224, &v288);

          *(v216 + 34) = v225;
          *(v216 + 42) = 2160;
          *(v216 + 44) = 1752392040;
          *(v216 + 52) = 2081;
          v226 = v251;
          v227 = MACAddress.description.getter();
          v229 = v228;
          v230 = v256->isa;
          v231 = v226;
          v232 = v283;
          (v256->isa)(v231, v283);
          v233 = sub_1000136BC(v227, v229, &v288);

          *(v216 + 54) = v233;
          v234 = v245;
          _os_log_impl(&_mh_execute_header, v245, v249, "  group: %{private,mask.hash}s serial: %{private,mask.hash}s: unpaired(%{private,mask.hash}s", v216, 0x3Eu);
          swift_arrayDestroy();

          sub_100016590(v222, v121);
          v230(v250, v232);
LABEL_48:
          sub_10000B3A8(v271, &qword_1016A40D0, &unk_10138BE70);
LABEL_49:
          v95 = v275;
LABEL_50:
          v28 = v278;
          v96 = v287;
          goto LABEL_51;
        }

        sub_100016590(v281, v121);
        v239 = v256->isa;
        v240 = v283;
        (v256->isa)(v213, v283);
        sub_100523C5C(v261, type metadata accessor for OwnedBeaconGroup);
        v239(v212, v240);
        sub_10000B3A8(v271, &qword_1016A40D0, &unk_10138BE70);
        v95 = v275;
        v28 = v278;
LABEL_51:
        v98 = v282;
      }
    }
  }

  if (v267 <= v102 + 1)
  {
    v105 = v102 + 1;
  }

  else
  {
    v105 = v267;
  }

  v106 = v105 - 1;
  while (1)
  {
    v104 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      break;
    }

    if (v104 >= v267)
    {
      v179 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v179 - 8) + 56))(v96, 1, 1, v179);
      v101 = 0;
      v102 = v106;
      goto LABEL_22;
    }

    v101 = *(v98 + 8 * v104);
    ++v102;
    if (v101)
    {
      v102 = v104;
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t sub_100518118()
{
  v1 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v21 - v7;
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  result = type metadata accessor for OwnedBeaconGroup(0);
  if (*(v0 + *(result + 32)) != 1)
  {
LABEL_5:
    v17 = sub_10051FA1C() ^ 1;
    return v17 & 1;
  }

  v12 = *(v0 + *(result + 40));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = sub_1003A8624(*(v12 + 16), 0);
    v15 = sub_1003A9374(v23, v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v13, v12);
    v16 = v23[0];
    v21[3] = v23[2];
    v22 = v15;
    v21[1] = v23[4];
    v21[2] = v23[3];

    result = sub_1000128F8(v16);
    if (v22 != v13)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v19 = v14[2];
  while (1)
  {
    if (v19 == v18)
    {

      v17 = 1;
      return v17 & 1;
    }

    if (v18 >= v14[2])
    {
      break;
    }

    sub_100524368(v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18, v10, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100524368(v10, v8, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (!swift_getEnumCaseMultiPayload())
    {

      sub_100523C5C(v8, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_100523C5C(v10, type metadata accessor for OwnedBeaconGroup.PairingState);
      goto LABEL_15;
    }

    ++v18;
    sub_100523C5C(v8, type metadata accessor for OwnedBeaconGroup.PairingState);
    swift_storeEnumTagMultiPayload();
    v20 = sub_100524658(v10, v5);
    sub_100523C5C(v5, type metadata accessor for OwnedBeaconGroup.PairingState);
    result = sub_100523C5C(v10, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (v20)
    {

LABEL_15:
      v17 = 0;
      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005183F0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v27[-v11];
  __chkstk_darwin(v10);
  v14 = &v27[-v13];
  v15 = *(v2 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  if (!*(v15 + 16))
  {
    goto LABEL_6;
  }

  v16 = sub_100771E30(a1, a2);
  if ((v17 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_100524368(*(v15 + 56) + *(v6 + 72) * v16, v12, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100523BF4(v12, v14, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100523BF4(v14, v9, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = &v9[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
    v22 = *v26;
    v23 = v26[1];
    sub_10000B3A8(v9, &qword_1016A40D0, &unk_10138BE70);
    return v22 | (v23 << 8);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v19 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v20 = v19[12];
    sub_100006654(*&v9[v19[16]], *&v9[v19[16] + 8]);
    v21 = &v9[v19[24]];
    v22 = *v21;
    v23 = v21[1];
    sub_10000B3A8(&v9[v20], &qword_1016A40D0, &unk_10138BE70);
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 8))(v9, v24);
  }

  else
  {
LABEL_6:
    v22 = 0;
    v23 = 1;
  }

  return v22 | (v23 << 8);
}

void *sub_100518664(uint64_t a1)
{
  v49 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v3 = __chkstk_darwin(v49);
  v48 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v3);
  v47 = (&v41 - v6);
  v7 = __chkstk_darwin(v5);
  v46 = (&v41 - v8);
  __chkstk_darwin(v7);
  v45 = (&v41 - v9);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v41 = v1;
  v56 = _swiftEmptyArrayStorage;
  sub_101123CB8(0, v10, 0);
  v11 = v56;
  v12 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v14 = result;
  v15 = 0;
  v55 = *(a1 + 36);
  v42 = a1 + 72;
  v43 = v10;
  v44 = a1 + 64;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_22;
    }

    if (v55 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v51 = 1 << v14;
    v52 = v14 >> 6;
    v50 = v15;
    v17 = v49;
    v18 = *(v49 + 48);
    v19 = *(a1 + 56);
    v53 = *(*(a1 + 48) + 16 * v14);
    v20 = v45;
    *v45 = v53;
    v21 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    sub_100524368(v19 + *(*(v21 - 8) + 72) * v14, v20 + v18, type metadata accessor for OwnedBeaconGroup.PairingState);
    v22 = *v20;
    v54 = v11;
    v23 = v46;
    *v46 = v22;
    sub_100523BF4(v20 + v18, v23 + *(v17 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    v24 = v47;
    sub_1000D2A70(v23, v47, &qword_1016A4190, &unk_1013A3550);
    v25 = *(v17 + 48);
    v26 = v48;
    *v48 = *v24;
    sub_100523BF4(v24 + v25, v26 + v25, type metadata accessor for OwnedBeaconGroup.PairingState);
    v27 = a1;
    v29 = *v26;
    v28 = v26[1];
    sub_100017D5C(v53, *(&v53 + 1));
    sub_100017D5C(v29, v28);
    sub_10000B3A8(v26, &qword_1016A4190, &unk_1013A3550);
    v30 = v23;
    v11 = v54;
    result = sub_10000B3A8(v30, &qword_1016A4190, &unk_1013A3550);
    v56 = v11;
    v32 = v11[2];
    v31 = v11[3];
    if (v32 >= v31 >> 1)
    {
      result = sub_101123CB8((v31 > 1), v32 + 1, 1);
      v11 = v56;
    }

    v11[2] = v32 + 1;
    v33 = &v11[2 * v32];
    v33[4] = v29;
    v33[5] = v28;
    v16 = 1 << *(v27 + 32);
    if (v14 >= v16)
    {
      goto LABEL_24;
    }

    a1 = v27;
    v12 = v44;
    v34 = *(v44 + 8 * v52);
    if ((v34 & v51) == 0)
    {
      goto LABEL_25;
    }

    if (v55 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v35 = v34 & (-2 << (v14 & 0x3F));
    if (v35)
    {
      v16 = __clz(__rbit64(v35)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v36 = v52 << 6;
      v37 = v52 + 1;
      v38 = (v42 + 8 * v52);
      while (v37 < (v16 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          result = sub_10040BA00(v14, v55, 0);
          v16 = __clz(__rbit64(v39)) + v36;
          goto LABEL_4;
        }
      }

      result = sub_10040BA00(v14, v55, 0);
    }

LABEL_4:
    v15 = v50 + 1;
    v14 = v16;
    if (v50 + 1 == v43)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_100518A90(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for MACAddress();
  v4 = *(v3 - 1);
  v88 = v3;
  v89 = v4;
  __chkstk_darwin(v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v79 - v11;
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v79 - v14;
  v16 = type metadata accessor for UUID();
  v93 = *(v16 - 8);
  v94 = v16;
  __chkstk_darwin(v16);
  v92 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x72476E6F63616542 && v18 == 0xEB0000000070756FLL)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      sub_100523AF8();
      swift_allocError();
      *v39 = 0;
      goto LABEL_13;
    }
  }

  v20 = [a1 recordID];
  v21 = [v20 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v23 = v93;
  v22 = v94;
  if ((*(v93 + 48))(v15, 1, v94) == 1)
  {
    sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
    sub_100523AF8();
    swift_allocError();
    *v24 = 3;
LABEL_13:
    swift_willThrow();

    return;
  }

  v25 = v23 + 32;
  v86 = *(v23 + 32);
  v86(v92, v15, v22);
  v26 = [a1 encryptedValues];
  v27 = String._bridgeToObjectiveC()();
  v87 = v26;
  v28 = [v26 objectForKeyedSubscript:v27];

  if (!v28 || (v97 = v28, v29 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
    v34 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_101385D80;
    *(v35 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v35 + 64) = sub_10013A2D8();
    *(v35 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v36 = a1;
    v37 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v37, "Invalid Beacon Group (missing macAddress) - %@", 46, 2, v35);

    sub_100523AF8();
    swift_allocError();
    *v38 = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v93 + 8))(v92, v94);
    return;
  }

  v84 = v25;
  v85 = v29;
  v30 = v95;
  v31 = v96;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  sub_100017D5C(v30, v31);
  JSONDecoder.init()();
  sub_100523A38(&unk_1016A4160, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress, &unk_1013B0764);
  v32 = v90;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v32)
  {

    sub_100016590(v30, v31);
    v33 = v31;
  }

  else
  {

    v90 = v31;
    sub_100016590(v30, v31);
    sub_100523BF4(v10, v12, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
    v40 = *v12;
    v41 = v12[8];
    if ((v41 & 1) != 0 || v40 < 2)
    {
      v82 = v30;
      v50 = v91;
      *(v91 + 16) = v40;
      v48 = v50;
      *(v50 + 24) = v41;
      v6 = &v12[*(v7 + 20)];
      v49 = v87;
      goto LABEL_23;
    }

    if (qword_1016946D0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177ACC8);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = os_log_type_enabled(v43, v44);
    v33 = v90;
    if (v45)
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v43, v44, "Ignoring unsupported OwnedBeaconGroup version: %ld > 1", v46, 0xCu);
    }

    sub_100523AF8();
    swift_allocError();
    *v47 = 5;
    swift_willThrow();
    sub_100523C5C(v12, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
  }

  v48 = v91;
  *(v91 + 16) = 0;
  *(v48 + 24) = 1;
  sub_100017D5C(v30, v33);
  MACAddress.init(dataRepresentation:)();
  v49 = v87;
  v82 = v30;
  v90 = v33;

LABEL_23:
  v83 = type metadata accessor for OwnedBeaconGroup(0);
  v51 = v88;
  (*(v89 + 32))(v48 + *(v83 + 28), v6, v88);
  v52 = String._bridgeToObjectiveC()();
  v53 = [v49 objectForKeyedSubscript:v52];

  if (v53)
  {
    v97 = v53;
    if (swift_dynamicCast())
    {
      v54 = v95;
      v55 = v96;
      sub_100017D5C(v95, v96);
      v81 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
      sub_100523B4C();
      sub_100523BA0();
      sub_100101BAC();
      sub_100523A38(&qword_1016A4178, type metadata accessor for OwnedBeaconGroup.PairingState, &unk_1013AFCA8);
      v56 = v55;
      v57 = v54;
      sub_100523A38(&unk_1016A4180, type metadata accessor for OwnedBeaconGroup.PairingState, &unk_1013AFC80);
      v58 = v56;
      v59 = Dictionary<>.init(dataRepresentation:)();
      v60 = String._bridgeToObjectiveC()();
      v61 = v87;
      v62 = [v87 objectForKeyedSubscript:v60];

      v48 = v91;
      if (v62)
      {
        v95 = v62;
        if (swift_dynamicCast())
        {
          LODWORD(v81) = v97;
          v63 = String._bridgeToObjectiveC()();
          v64 = [v61 objectForKeyedSubscript:v63];

          if (v64)
          {
            v97 = v64;
            if (swift_dynamicCast())
            {
              v93 = v95;
              v89 = v96;
              v88 = objc_autoreleasePoolPush();
              v65 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
              [a1 encodeSystemFieldsWithCoder:v65];
              [v65 finishEncoding];
              v66 = v57;
              v67 = [v65 encodedData];
              v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v80 = v68;

              objc_autoreleasePoolPop(v88);
              sub_100016590(v82, v90);
              sub_100016590(v66, v58);
              swift_unknownObjectRelease();

              v69 = v86;
              v70 = v80;
              *v48 = v85;
              *(v48 + 8) = v70;
              v71 = v83;
              v69(v48 + *(v83 + 24), v92, v94);
              *(v48 + v71[8]) = v81;
              v72 = (v48 + v71[9]);
              v73 = v89;
              *v72 = v93;
              v72[1] = v73;
              *(v48 + v71[10]) = v59;
              return;
            }
          }
        }
      }

      sub_100016590(v57, v58);
      v51 = v88;
    }
  }

  v74 = static os_log_type_t.error.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_101385D80;
  *(v75 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v75 + 64) = sub_10013A2D8();
  *(v75 + 32) = a1;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v76 = a1;
  v77 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v74, &_mh_execute_header, v77, "Invalid Beacon Group - %@", 25, 2, v75);

  sub_100523AF8();
  swift_allocError();
  *v78 = 6;
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_100016590(v82, v90);

  (*(v93 + 8))(v92, v94);
  (*(v89 + 8))(v48 + *(v83 + 28), v51);
}

uint64_t sub_100519780(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000BC4D4(&qword_101699858, &qword_101391FF0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = *(v2 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  if (*(v12 + 16) && (v13 = sub_100771E30(a1, a2), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    v18 = *(v17 - 8);
    sub_100524368(v16 + *(v18 + 72) * v15, v11, type metadata accessor for OwnedBeaconGroup.PairingState);
    v19 = *(v18 + 56);
    v19(v11, 0, 1, v17);
    sub_10000B3A8(v11, &qword_101699858, &qword_101391FF0);
    sub_10051A590(a1, a2, v9);
    v20 = sub_1005183F0(a1, a2);
    v21 = sub_100521BB0(a1, a2);
    if (v21 == 3)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    v23 = &v9[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
    *v23 = v20;
    v23[1] = HIBYTE(v20) & 1;
    v23[2] = v22;
    swift_storeEnumTagMultiPayload();
    v19(v9, 0, 1, v17);
    sub_100017D5C(a1, a2);
    sub_1001DD6C0(v9, a1, a2);
    return 1;
  }

  else
  {
    v25 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
    sub_10000B3A8(v11, &qword_101699858, &qword_101391FF0);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177C418);
    sub_100017D5C(a1, a2);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v31 = String.init(data:encoding:)();
      if (!v32)
      {
        v31 = Data.hexString.getter();
      }

      v33 = sub_1000136BC(v31, v32, &v35);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Invalid serial number: %{private,mask.hash}s. Unpair failed!", v29, 0x16u);
      sub_100007BAC(v30);
    }

    return 0;
  }
}

uint64_t sub_100519BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v17 = *(v3 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  if (*(v17 + 16) && (v18 = sub_100771E30(a1, a2), (v19 & 1) != 0))
  {
    sub_100524368(*(v17 + 56) + *(v8 + 72) * v18, v14, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100523BF4(v14, v16, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100523BF4(v16, v11, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v21 = *(v20 + 48);
      sub_100006654(*&v11[*(v20 + 64)], *&v11[*(v20 + 64) + 8]);
      v22 = type metadata accessor for UUID();
      v23 = *(v22 - 8);
      (*(v23 + 32))(a3, v11, v22);
      (*(v23 + 56))(a3, 0, 1, v22);
      return sub_10000B3A8(&v11[v21], &qword_1016A40D0, &unk_10138BE70);
    }

    else
    {
      v27 = type metadata accessor for UUID();
      (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
      return sub_100523C5C(v11, type metadata accessor for OwnedBeaconGroup.PairingState);
    }
  }

  else
  {
    v25 = type metadata accessor for UUID();
    v26 = *(*(v25 - 8) + 56);

    return v26(a3, 1, 1, v25);
  }
}

uint64_t sub_100519EE8(uint64_t result, unint64_t a2)
{
  v11 = result;
  v12 = a2;
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v3 = 0;
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v3 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
LABEL_10:
      sub_100017D5C(result, a2);
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_14;
    }

    v3 = HIDWORD(result) - result;
    goto LABEL_10;
  }

  if (v2)
  {
    goto LABEL_8;
  }

  v3 = BYTE6(a2);
LABEL_11:
  result = 20 - v3;
  if (!__OFSUB__(20, v3))
  {
    v9 = sub_100845C88(result);
    v10 = v6;
    sub_100776394(&v9, 0);
    v7 = v9;
    v8 = v10;
    Data.append(_:)();
    sub_100016590(v7, v8);
    return v11;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_100519FB0()
{
  v53 = type metadata accessor for UUID();
  v1 = *(v53 - 8);
  v2 = __chkstk_darwin(v53);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v51 = &v46 - v5;
  __chkstk_darwin(v4);
  v50 = &v46 - v6;
  v57 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v55 = *(v57 - 8);
  v7 = __chkstk_darwin(v57);
  v60 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v46 - v9;
  v10 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v46 - v14;
  v61 = &_swiftEmptySetSingleton;
  v15 = *(v0 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v48 = (v1 + 16);
  v49 = (v1 + 32);
  v47 = (v1 + 8);
  v56 = v15;

  v21 = 0;
  v59 = v13;
  if (!v19)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v22 = v21;
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = (*(v56 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      v30 = v54;
      sub_100524368(*(v56 + 56) + *(v55 + 72) * v26, v54, type metadata accessor for OwnedBeaconGroup.PairingState);
      v31 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      v32 = *(v31 + 48);
      v33 = v59;
      *v59 = v28;
      v33[1] = v29;
      v34 = v30;
      v13 = v33;
      sub_100523BF4(v34, v33 + v32, type metadata accessor for OwnedBeaconGroup.PairingState);
      (*(*(v31 - 8) + 56))(v13, 0, 1, v31);
      sub_100017D5C(v28, v29);
      v24 = v22;
LABEL_15:
      v35 = v58;
      sub_1000D2AD8(v13, v58, &unk_1016BBEA0, &unk_101395A80);
      v36 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
      {

        return;
      }

      sub_100016590(*v35, *(v35 + 8));
      sub_100523BF4(v35 + *(v36 + 48), v60, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_100523C5C(v60, type metadata accessor for OwnedBeaconGroup.PairingState);
      v21 = v24;
      if (!v19)
      {
        goto LABEL_7;
      }
    }

    v37 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v38 = *(v37 + 48);
    v39 = v60;
    sub_100006654(*(v60 + *(v37 + 64)), *(v60 + *(v37 + 64) + 8));
    v21 = v24;
    v40 = v50;
    v41 = v53;
    (*v49)(v50, v39, v53);
    sub_10000B3A8(v39 + v38, &qword_1016A40D0, &unk_10138BE70);
    v42 = v52;
    (*v48)(v52, v40, v41);
    v43 = v51;
    sub_100DE8BCC(v51, v42);
    v44 = *v47;
    v13 = v59;
    (*v47)(v43, v41);
    v44(v40, v41);
  }

  while (v19);
LABEL_7:
  if (v20 <= v21 + 1)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {
      v45 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
      v19 = 0;
      goto LABEL_15;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_10051A590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v31 - v16;
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  v20 = *(v3 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  if (*(v20 + 16) && (v21 = sub_100771E30(a1, a2), (v22 & 1) != 0))
  {
    sub_100524368(*(v20 + 56) + *(v11 + 72) * v21, v17, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100523BF4(v17, v19, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100523BF4(v19, v14, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_1000D2AD8(v14, v9, &qword_1016A40D0, &unk_10138BE70);
      return sub_1000D2AD8(v9, a3, &qword_1016A40D0, &unk_10138BE70);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v24 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v25 = *(v24 + 48);
      sub_100006654(*&v14[*(v24 + 64)], *&v14[*(v24 + 64) + 8]);
      sub_1000D2AD8(&v14[v25], v9, &qword_1016A40D0, &unk_10138BE70);
      v26 = type metadata accessor for UUID();
      (*(*(v26 - 8) + 8))(v14, v26);
      return sub_1000D2AD8(v9, a3, &qword_1016A40D0, &unk_10138BE70);
    }

    v30 = type metadata accessor for MACAddress();
    return (*(*(v30 - 8) + 56))(a3, 1, 1, v30);
  }

  else
  {
    v27 = type metadata accessor for MACAddress();
    v28 = *(*(v27 - 8) + 56);

    return v28(a3, 1, 1, v27);
  }
}

unint64_t sub_10051A8E8(uint64_t a1)
{
  result = *(*(v1 + *(a1 + 40)) + 16);
  if (result > 0xFF)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_10051A904()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100523A38(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10051A9A0(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100523A38(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10051AA20(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100523A38(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10051AAD4(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10051AC00@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005254A4(*a1);
  *a2 = result;
  return result;
}

void sub_10051AC30(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  v5 = 0xEA00000000007373;
  v6 = 0x657264644163616DLL;
  if (v2 != 5)
  {
    v6 = 0x614D6E6F63616562;
    v5 = 0xE900000000000070;
  }

  v7 = 0x8000000101347C70;
  v8 = 0xD000000000000016;
  if (v2 != 3)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x696669746E656469;
    v3 = 0xEA00000000007265;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000101347C50;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10051AD24()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x657264644163616DLL;
  if (v1 != 5)
  {
    v3 = 0x614D6E6F63616562;
  }

  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x696669746E656469;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10051AE14@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1005254A4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10051AE3C(uint64_t a1)
{
  v2 = sub_100524204();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051AE78(uint64_t a1)
{
  v2 = sub_100524204();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051AEB4(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_1016A42D0, &unk_1013B0000);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_100525EFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10051B01C(void *a1, int a2)
{
  v3 = BYTE2(a2);
  v5 = sub_1000BC4D4(&unk_1016A42B0, &qword_1013AFFF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100525EA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v10[13] = v3;
    v10[12] = 1;
    sub_100525E54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10051B198(uint64_t a1)
{
  v2 = sub_100525EFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051B1D4(uint64_t a1)
{
  v2 = sub_100525EFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10051B210@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1005254F0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10051B258()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  static String.Encoding.utf8.getter();
  result = String.init(data:encoding:)();
  if (!v2)
  {
    return Data.hexString.getter();
  }

  return result;
}

uint64_t sub_10051B2F0()
{
  if (*v0)
  {
    return 0x54676E6972696170;
  }

  else
  {
    return 0x644974726170;
  }
}

uint64_t sub_10051B330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x644974726170 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x54676E6972696170 && a2 == 0xEB00000000657079)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10051B40C(uint64_t a1)
{
  v2 = sub_100525EA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051B448(uint64_t a1)
{
  v2 = sub_100525EA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051B484@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100525664(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = BYTE1(result) & 1;
    a1[2] = BYTE2(result);
  }

  return result;
}

uint64_t sub_10051B528@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for UUID();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v51 - v10;
  v12 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  v15 = v65;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v15)
  {
    v56 = v5;
    v57 = v11;
    v55 = v9;
    v17 = v60;
    v16 = v61;
    v58 = v12;
    v65 = v14;
    sub_10015049C(v63, v64);
    v18 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v22 = v18;
    v23 = v19;
    if (v18 == 117 && v19 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      type metadata accessor for MACAddress();
      sub_10015049C(v63, v64);
      sub_100523A38(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v24 = v57;
      dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent<A>(_:)();
      v25 = a1;
      sub_10015049C(v63, v64);
      v26 = dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent(_:)();
      v27 = v26;
      v28 = (v26 >> 8) & 1;
      sub_10015049C(v63, v64);
      sub_100525E00();
      dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent<A>(_:)();
      v29 = v62[0];
      v30 = v65;
      v31 = (v30 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
      sub_1000D2AD8(v24, v30, &qword_1016A40D0, &unk_10138BE70);
      *v31 = v27;
      v31[1] = v28;
      v31[2] = v29;
LABEL_9:
      v32 = v59;
LABEL_10:
      swift_storeEnumTagMultiPayload();
      sub_100007BAC(v63);
      sub_100523BF4(v30, v32, type metadata accessor for OwnedBeaconGroup.PairingState);
      v20 = v25;
      return sub_100007BAC(v20);
    }

    if (v22 == 112 && v23 == 0xE100000000000000)
    {

      v33 = v16;
      v34 = v17;
LABEL_16:
      sub_10015049C(v63, v64);
      sub_100523A38(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      type metadata accessor for MACAddress();
      sub_10015049C(v63, v64);
      sub_100523A38(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent<A>(_:)();
      v25 = a1;
      sub_10015049C(v63, v64);
      sub_1000E307C();
      dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent<A>(_:)();
      v61 = v62[0];
      v60 = v62[1];
      sub_10015049C(v63, v64);
      v36 = dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent(_:)();
      v54 = v37;
      v57 = v36;
      sub_10015049C(v63, v64);
      v53 = dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent(_:)();
      v52 = (v53 >> 8) & 1;
      sub_10015049C(v63, v64);
      sub_100525E00();
      dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent<A>(_:)();
      v51 = LOBYTE(v62[0]);
      v38 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v39 = v38[12];
      v30 = v65;
      v40 = &v65[v38[16]];
      v41 = &v65[v38[20]];
      v42 = &v65[v38[24]];
      (*(v34 + 32))(v65, v56, v33);
      sub_1000D2AD8(v55, v30 + v39, &qword_1016A40D0, &unk_10138BE70);
      v43 = v60;
      *v40 = v61;
      v40[1] = v43;
      *v41 = v57;
      v41[8] = v54 & 1;
      LOBYTE(v43) = v52;
      *v42 = v53;
      v42[1] = v43;
      v42[2] = v51;
      goto LABEL_9;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v33 = v16;
      v34 = v17;

      goto LABEL_16;
    }

    v25 = a1;
    if (v22 == 108 && v23 == 0xE100000000000000)
    {

      v32 = v59;
      v30 = v65;
      goto LABEL_10;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v32 = v59;
    v30 = v65;
    if (v35)
    {

      goto LABEL_10;
    }

    if (qword_1016946D0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000076D4(v44, qword_10177ACC8);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62[0] = v48;
      *v47 = 136446210;
      v49 = sub_1000136BC(v22, v23, v62);

      *(v47 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v45, v46, "Unhandled type code: %{public}s", v47, 0xCu);
      sub_100007BAC(v48);
    }

    else
    {
    }

    sub_100523AF8();
    swift_allocError();
    *v50 = 6;
    swift_willThrow();
    sub_100007BAC(v63);
  }

  v20 = a1;
  return sub_100007BAC(v20);
}

uint64_t sub_10051BEC4(void *a1)
{
  v2 = v1;
  v66 = type metadata accessor for UUID();
  v68 = *(v66 - 8);
  __chkstk_darwin(v66);
  v67 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MACAddress();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = __chkstk_darwin(v5);
  v62 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v56[-v8];
  v10 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v11 = __chkstk_darwin(v10 - 8);
  v63 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v69 = &v56[-v14];
  v15 = __chkstk_darwin(v13);
  v17 = &v56[-v16];
  __chkstk_darwin(v15);
  v19 = &v56[-v18];
  v20 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  __chkstk_darwin(v20);
  v22 = &v56[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100524368(v2, v22, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v39 = &v22[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
    v40 = *v39;
    v41 = v39[1];
    v42 = v39[2];
    sub_1000D2AD8(v22, v19, &qword_1016A40D0, &unk_10138BE70);
    sub_10015049C(v72, v73);
    v43 = v74;
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v43)
    {
LABEL_6:
      sub_10000B3A8(v19, &qword_1016A40D0, &unk_10138BE70);
      return sub_100007BAC(v72);
    }

    LODWORD(v74) = v40;
    sub_1000D2A70(v19, v17, &qword_1016A40D0, &unk_10138BE70);
    v45 = v64;
    v46 = v65;
    if ((*(v64 + 48))(v17, 1, v65) == 1)
    {
      sub_10000B3A8(v17, &qword_1016A40D0, &unk_10138BE70);
      if (v41)
      {
        goto LABEL_19;
      }
    }

    else
    {
      LODWORD(v69) = v42;
      (*(v45 + 32))(v9, v17, v46);
      sub_10015049C(v72, v73);
      sub_100523A38(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      (*(v45 + 8))(v9, v46);
      v42 = v69;
      if (v41)
      {
LABEL_19:
        if (v42 != 3)
        {
          LOBYTE(v70) = v42;
          sub_10015049C(v72, v73);
          sub_100525E54();
          dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        }

        goto LABEL_6;
      }
    }

    sub_10015049C(v72, v73);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v24 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v25 = v24[12];
    v26 = &v22[v24[16]];
    v27 = *v26;
    v28 = v26[1];
    v29 = &v22[v24[20]];
    v60 = *v29;
    v30 = v29[8];
    v31 = &v22[v24[24]];
    v61 = *v31;
    v32 = v31[1];
    v58 = v30;
    v59 = v32;
    v57 = v31[2];
    v34 = v67;
    v33 = v68;
    v35 = v66;
    (*(v68 + 32))(v67, v22, v66);
    v36 = &v22[v25];
    v37 = v69;
    sub_1000D2AD8(v36, v69, &qword_1016A40D0, &unk_10138BE70);
    sub_10015049C(v72, v73);
    v38 = v74;
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v38)
    {
      sub_100006654(v27, v28);
      sub_10000B3A8(v37, &qword_1016A40D0, &unk_10138BE70);
      (*(v33 + 8))(v34, v35);
    }

    else
    {
      sub_10015049C(v72, v73);
      sub_100523A38(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      v47 = v63;
      sub_1000D2A70(v69, v63, &qword_1016A40D0, &unk_10138BE70);
      v48 = v64;
      v49 = v65;
      v50 = v28;
      if ((*(v64 + 48))(v47, 1, v65) == 1)
      {
        sub_10000B3A8(v47, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
        v51 = v62;
        (*(v48 + 32))(v62, v47, v49);
        sub_10015049C(v72, v73);
        sub_100523A38(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        (*(v48 + 8))(v51, v49);
        v35 = v66;
      }

      if (v50 >> 60 != 15)
      {
        v70 = v27;
        v71 = v50;
        sub_10015049C(v72, v73);
        sub_1000E3190();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      }

      v52 = v59;
      if (v58)
      {
        v53 = v67;
        v54 = v57;
      }

      else
      {
        sub_10015049C(v72, v73);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        v53 = v67;
        v54 = v57;
        v52 = v59;
      }

      if (v52)
      {
        v55 = v68;
      }

      else
      {
        sub_10015049C(v72, v73);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        v55 = v68;
        v54 = v57;
      }

      if (v54 == 3)
      {
        sub_100006654(v27, v50);
        sub_10000B3A8(v69, &qword_1016A40D0, &unk_10138BE70);
        (*(v55 + 8))(v53, v35);
      }

      else
      {
        LOBYTE(v70) = v54;
        sub_10015049C(v72, v73);
        sub_100525E54();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        sub_100006654(v27, v50);
        sub_10000B3A8(v69, &qword_1016A40D0, &unk_10138BE70);
        (*(v68 + 8))(v53, v35);
      }
    }
  }

  else
  {
    sub_10015049C(v72, v73);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100007BAC(v72);
}

uint64_t sub_10051C934()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v67[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v67[-v10];
  v12 = __chkstk_darwin(v9);
  v14 = &v67[-v13];
  __chkstk_darwin(v12);
  v16 = &v67[-v15];
  v17 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  __chkstk_darwin(v17);
  v19 = &v67[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100524368(v0, v19, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v22 = v21[12];
      sub_100006654(*&v19[v21[16]], *&v19[v21[16] + 8]);
      v23 = &v19[v21[20]];
      v69 = *v23;
      v68 = v23[8];
      v24 = &v19[v21[24]];
      v25 = *v24;
      v70 = v24[1];
      v71 = v25;
      v72 = v24[2];
      (*(v2 + 32))(v4, v19, v1);
      sub_1000D2AD8(&v19[v22], v11, &qword_1016A40D0, &unk_10138BE70);
      v74 = 0;
      v75 = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v26._countAndFlagsBits = 0x28646572696170;
      v26._object = 0xE700000000000000;
      String.append(_:)(v26);
      v27._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v27);

      v28._countAndFlagsBits = 8236;
      v28._object = 0xE200000000000000;
      String.append(_:)(v28);
      sub_1000D2A70(v11, v8, &qword_1016A40D0, &unk_10138BE70);
      v29 = type metadata accessor for MACAddress();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v8, 1, v29) == 1)
      {
        sub_10000B3A8(v8, &qword_1016A40D0, &unk_10138BE70);
        v31 = 0;
        v32 = 0xE000000000000000;
      }

      else
      {
        v42 = MACAddress.description.getter();
        v32 = v43;
        (*(v30 + 8))(v8, v29);
        v31 = v42;
      }

      v44 = 0x6E776F6E6B6E752ELL;
      v45 = v32;
      String.append(_:)(*&v31);

      v46._object = 0x8000000101358A30;
      v46._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v46);
      v47 = v69;
      if (v68)
      {
        v47 = 0;
      }

      v73 = v47;
      v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v48);

      v49._countAndFlagsBits = 0x3A64497472617020;
      v49._object = 0xE900000000000020;
      String.append(_:)(v49);
      v50 = v71;
      if (v70)
      {
        v50 = -1;
      }

      LOBYTE(v73) = v50;
      v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v51);

      v52._countAndFlagsBits = 0x676E697269617020;
      v52._object = 0xEE00203A65707954;
      String.append(_:)(v52);
      v53 = 0xE800000000000000;
      if (v72 > 1)
      {
        if (v72 == 2)
        {
          v44 = 0x72656E45776F6C2ELL;
          v53 = 0xEA00000000007967;
        }
      }

      else if (v72)
      {
        v44 = 0x63697373616C632ELL;
      }

      v54._countAndFlagsBits = v44;
      v54._object = v53;
      String.append(_:)(v54);

      v41 = v74;
      sub_10000B3A8(v11, &qword_1016A40D0, &unk_10138BE70);
      (*(v2 + 8))(v4, v1);
    }

    else
    {
      return 0x64656B636F6CLL;
    }
  }

  else
  {
    v33 = &v19[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
    v34 = *v33;
    v35 = v33[1];
    v36 = v33[2];
    sub_1000D2AD8(v19, v16, &qword_1016A40D0, &unk_10138BE70);
    v74 = 0;
    v75 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v74 = 0x6465726961706E75;
    v75 = 0xE900000000000028;
    sub_1000D2A70(v16, v14, &qword_1016A40D0, &unk_10138BE70);
    v37 = type metadata accessor for MACAddress();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v14, 1, v37) == 1)
    {
      sub_10000B3A8(v14, &qword_1016A40D0, &unk_10138BE70);
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    else
    {
      v55 = MACAddress.description.getter();
      v40 = v56;
      (*(v38 + 8))(v14, v37);
      v39 = v55;
    }

    v57 = 0x6E776F6E6B6E752ELL;
    v58 = v40;
    String.append(_:)(*&v39);

    v59._countAndFlagsBits = 0x3A64497472617020;
    v59._object = 0xE900000000000020;
    String.append(_:)(v59);
    if (v35)
    {
      v60 = -1;
    }

    else
    {
      v60 = v34;
    }

    LOBYTE(v73) = v60;
    v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v61);

    v62._countAndFlagsBits = 0x676E697269617020;
    v62._object = 0xEE00203A65707954;
    String.append(_:)(v62);
    v63 = 0xE800000000000000;
    if (v36 > 1)
    {
      if (v36 == 2)
      {
        v57 = 0x72656E45776F6C2ELL;
        v63 = 0xEA00000000007967;
      }
    }

    else if (v36)
    {
      v57 = 0x63697373616C632ELL;
    }

    v64._countAndFlagsBits = v57;
    v64._object = v63;
    String.append(_:)(v64);

    v65._countAndFlagsBits = 41;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    v41 = v74;
    sub_10000B3A8(v16, &qword_1016A40D0, &unk_10138BE70);
  }

  return v41;
}