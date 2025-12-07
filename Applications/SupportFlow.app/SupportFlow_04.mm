unint64_t sub_100064A54()
{
  result = qword_10018C990;
  if (!qword_10018C990)
  {
    sub_100004D48(&qword_10018C998, &qword_100127EE8);
    sub_100004CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C990);
  }

  return result;
}

uint64_t sub_100064AD8()
{
  v0 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  if (qword_100188368 != -1)
  {
    swift_once();
  }

  Date.init()();
  v3 = type metadata accessor for Date();
  sub_100003CE8(v2, 0, 1, v3);
  return Defaults.lastNotifiedAboutVPN.setter(v2);
}

uint64_t sub_100064BAC()
{
  if (sub_100061B64())
  {

    return 7;
  }

  else
  {
    v1 = sub_1000605E8(0);
    if (v1)
    {
      if (sub_10005F124(v1))
      {
        if (sub_1000622D4())
        {
          if (sub_100062348())
          {
            return 2;
          }

          else if (sub_10005FA34() & 1) == 0 && sub_100060648() && (sub_1000606C0())
          {
            return 5;
          }

          else
          {

            return sub_100064C48();
          }
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100064C48()
{
  if (sub_10005F9B0())
  {
    return 7;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_100064C6C()
{
  if ((sub_10005FA34() & 1) == 0)
  {
    return 5;
  }

  return sub_100064CA4();
}

uint64_t sub_100064CA4()
{
  if (sub_100062348())
  {
    return 2;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_100064CCC()
{
  if ((sub_10005F99C() & 1) == 0)
  {
    return 4;
  }

  return sub_100064C48();
}

void *sub_100064D30@<X0>(__int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = HIBYTE(a2);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E7240(v5);
  v12 = v11;

  if ((v3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  v14 = sub_100064CCC();

  *(a3 + 72) = &type metadata for WiFiStepProvider;
  *(a3 + 80) = sub_10000737C();
  *(a3 + 48) = v14;
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  *a3 = Environment.init<A>(_:)();
  *(a3 + 8) = v15 & 1;
  if (qword_1001881C8 != -1)
  {
    swift_once();
  }

  *(a3 + 16) = qword_1001A5738;
  v20[1] = 0;
  v21 = -1;

  sub_100003768(&qword_10018A630, &qword_100128450);
  result = State.init(wrappedValue:)();
  v17 = v22;
  v18 = v23;
  v19 = v24;
  *(a3 + 96) = 0;
  *(a3 + 104) = v17;
  *(a3 + 112) = v18;
  *(a3 + 120) = v19;
  *(a3 + 32) = v10;
  *(a3 + 40) = v12;
  *(a3 + 24) = 0;
  *(a3 + 88) = 0;
  return result;
}

uint64_t sub_100064F9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100064FDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100065068()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1000651A8()
{
  sub_100065290(v0);
  sub_10002D87C(v0, v3);
  v1 = swift_allocObject();
  memcpy((v1 + 16), v3, 0x80uLL);
  sub_100003768(&qword_10018C9A0, &qword_100128138);
  sub_100065AB0();
  View.onLoad(perform:)();

  return sub_10001D724(v4, &qword_10018C9A0, &qword_100128138);
}

uint64_t sub_100065290(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  *&v14 = *(a1 + 104);
  BYTE8(v14) = v2;
  v15 = v3;
  sub_100003768(&qword_10018C9D0, &qword_1001285B0);
  State.wrappedValue.getter();
  v4 = v13;
  if (v13 == 255)
  {
    v18 = 1;
    sub_100003768(&qword_10018C9C8, &qword_100128148);
    sub_100065BC0();
    sub_100057D3C();
    return _ConditionalContent<>.init(storage:)();
  }

  v5 = v12;
  sub_100006578(a1 + 48, &v14, &qword_100189310, &qword_1001221A0);
  if (v16)
  {
    sub_10003C91C(&v14, v9);
    if ((v4 & 1) == 0 || v5 != 2)
    {
      v7 = v10;
      v8 = v11;
      sub_100025734(v9, v10);
      *&v14 = sub_1000C2D64(v7, *(*(v8 + 8) + 16));
      v17 = 0;
      sub_100003768(&qword_10018BFB0, &qword_100126DB0);
      sub_100065C4C();
      _ConditionalContent<>.init(storage:)();
      sub_1000086BC(v9);
      goto LABEL_10;
    }

    sub_1000086BC(v9);
  }

  else
  {
    sub_10001D724(&v14, &qword_100189310, &qword_1001221A0);
  }

  sub_10000B2C0(*(a1 + 32), *(a1 + 40), a1 + 48, *(a1 + 88), *(a1 + 96), v5, v4 & 1);
  sub_100006578(v9, &v14, &qword_10018BFB0, &qword_100126DB0);
  v17 = 1;
  sub_100003768(&qword_10018BFB0, &qword_100126DB0);
  sub_100065C4C();
  _ConditionalContent<>.init(storage:)();
  sub_10001D724(v9, &qword_10018BFB0, &qword_100126DB0);
LABEL_10:
  sub_100006578(&v12, &v14, &qword_10018C9C8, &qword_100128148);
  v18 = 0;
  sub_100003768(&qword_10018C9C8, &qword_100128148);
  sub_100065BC0();
  sub_100057D3C();
  _ConditionalContent<>.init(storage:)();
  return sub_10001D724(&v12, &qword_10018C9C8, &qword_100128148);
}

uint64_t sub_100065548(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1000655E0, v3, v2);
}

uint64_t sub_1000655E0()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100065678;

  return sub_100054350();
}

uint64_t sub_100065678()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *v0;
  *(v2 + 136) = v3;
  *(v2 + 73) = v4;

  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return _swift_task_switch(sub_1000657A0, v6, v5);
}

uint64_t sub_1000657A0()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);

  v4 = *(v3 + 104);
  v5 = *(v3 + 112);
  v6 = *(v3 + 120);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1 & 1;
  sub_100003768(&qword_10018C9D0, &qword_1001285B0);
  State.wrappedValue.setter();
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  State.wrappedValue.getter();
  if (*(v0 + 88) != 255)
  {
    sub_100065068();
    sub_100085FE4();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000658C0()
{

  if (v0[11])
  {
    sub_1000086BC(v0 + 8);
  }

  if (v0[13])
  {
  }

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100065930()
{
  sub_100025A94();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000659C0;

  return sub_100065548(v0 + 16);
}

uint64_t sub_1000659C0()
{
  sub_100025A94();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100065AB0()
{
  result = qword_10018C9A8;
  if (!qword_10018C9A8)
  {
    sub_100004D48(&qword_10018C9A0, &qword_100128138);
    sub_100065B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C9A8);
  }

  return result;
}

unint64_t sub_100065B34()
{
  result = qword_10018C9B0;
  if (!qword_10018C9B0)
  {
    sub_100004D48(&qword_10018C9B8, &qword_100128140);
    sub_100065BC0();
    sub_100057D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C9B0);
  }

  return result;
}

unint64_t sub_100065BC0()
{
  result = qword_10018C9C0;
  if (!qword_10018C9C0)
  {
    sub_100004D48(&qword_10018C9C8, &qword_100128148);
    sub_100065C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C9C0);
  }

  return result;
}

unint64_t sub_100065C4C()
{
  result = qword_10018BFA8;
  if (!qword_10018BFA8)
  {
    sub_100004D48(&qword_10018BFB0, &qword_100126DB0);
    sub_10000B604();
    sub_10000B658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFA8);
  }

  return result;
}

uint64_t sub_100065CD8()
{
  sub_100004D48(&qword_10018C9A0, &qword_100128138);
  sub_100065AB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100065D3C()
{
  sub_100025A94();
  v0[14] = v1;
  v2 = type metadata accessor for Logger();
  v0[15] = v2;
  v0[16] = *(v2 - 8);
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_100065E30;

  return sub_10006636C();
}

uint64_t sub_100065E30()
{
  sub_100025A94();
  v2 = *v1;
  *(v2 + 160) = v3;
  *(v2 + 168) = v0;

  if (v0)
  {
    v4 = sub_100066124;
  }

  else
  {
    v4 = sub_100065F40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100065F40(uint64_t a1)
{
  static Logger.supportFlowApp.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 160);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Fetched %ld reports.", v6, 0xCu);
  }

  else
  {
  }

  v7 = *(v1 + 160);
  (*(*(v1 + 128) + 8))(*(v1 + 144), *(v1 + 120));
  v8 = *(v7 + 16);
  v9 = *(v1 + 160);
  if (v8)
  {
    v10 = *(v1 + 112);
    v12 = v9[3];
    v11 = v9[4];
    *(v1 + 16) = v9[2];
    *(v1 + 32) = v12;
    *(v1 + 48) = v11;
    sub_10004B340(v1 + 16, v1 + 64);

    v13 = sub_1000998C4(v1 + 16, v10);
  }

  else
  {

    v13 = 0;
  }

  v14 = *(v1 + 8);

  return v14(v13);
}

uint64_t sub_100066124()
{
  v1 = _convertErrorToNSError(_:)();
  sub_100025778(0, &qword_1001893A0, NSError_ptr);
  v2 = sub_10004B038();
  v3 = static NSObject.== infix(_:_:)();

  if (v3)
  {
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    static Logger.supportFlowApp.getter();
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Encountered error, returning report with unknown values: %@", v8, 0xCu);
      sub_1000083A0(v9);
    }

    else
    {
    }

    (*(v0[16] + 8))(v0[17], v0[15]);

    v11 = v0[1];

    return v11(0, 1, 0, 257);
  }
}

uint64_t sub_10006636C()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10006643C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x29286863746566, 0xE700000000000000, sub_100066580, 0, &unk_100179FE0);
}

uint64_t sub_10006643C()
{
  sub_100025A94();
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_100066568;
  }

  else
  {
    v2 = sub_10006654C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100066580(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018C9D8, &qword_100128160);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - v4;
  sub_100025778(0, &qword_10018C9E0, DKComponentPredicate_ptr);
  v6 = sub_100066804(0x79726574746142, 0xE700000000000000, 0x6C616E7265746E49, 0xE800000000000000);
  v7 = [objc_allocWithZone(DKReportManager) init];
  sub_100003768(&qword_10018B570, &qword_100125E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100125DA0;
  *(inited + 32) = v6;
  if (sub_100114850(inited))
  {
    v9 = v6;
    v10 = sub_100066D34(inited);
  }

  else
  {
    swift_setDeallocating();
    v11 = v6;
    sub_10006EC24();
    v10 = &_swiftEmptySetSingleton;
  }

  (*(v3 + 16))(v5, a1, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  (*(v3 + 32))(v13 + v12, v5, v2);
  aBlock[4] = sub_100066F8C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000560DC;
  aBlock[3] = &unk_10017B310;
  v14 = _Block_copy(aBlock);

  sub_10006734C(v10, v14, v7);
  _Block_release(v14);
}

id sub_100066804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() componentPredicateWithType:v5 identifier:v6];

  return v7;
}

uint64_t sub_1000668A4(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v35 = a2;
    swift_errorRetain();
LABEL_3:
    sub_100003768(&qword_10018C9D8, &qword_100128160);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    sub_100025778(0, &qword_1001893A0, NSError_ptr);
    v35 = sub_10004AE10();
    goto LABEL_3;
  }

  isa = [a1 arrayForJSON];
  if (!isa)
  {
    sub_100003768(&qword_10018B580, &unk_100128EB0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  sub_100003768(&qword_10018B580, &unk_100128EB0);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Logger.supportFlowApp.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136315138;
    v18 = Array.description.getter();
    v20 = sub_10009CACC(v18, v19, &v35);
    v33 = v14;
    v21 = v12;
    v22 = isa;
    v23 = v20;

    *(v16 + 4) = v23;
    isa = v22;
    v12 = v21;
    _os_log_impl(&_mh_execute_header, v13, v33, "Successfully fetched reports: %s", v16, 0xCu);
    sub_1000086BC(v17);
  }

  (*(v7 + 8))(v9, v6);
  v24 = objc_opt_self();
  v35 = 0;
  v25 = [v24 dataWithJSONObject:isa options:0 error:&v35];

  v26 = v35;
  if (v25)
  {
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100003768(&qword_10018C9F0, &qword_100128168);
    sub_100067454();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_100008408(v27, v29);

    sub_100003768(&qword_10018C9D8, &qword_100128160);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    v30 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100025778(0, &qword_1001893A0, NSError_ptr);
    v31 = sub_10004AEF0(v12);

    v35 = v31;
    sub_100003768(&qword_10018C9D8, &qword_100128160);
    CheckedContinuation.resume(throwing:)();
  }
}

Swift::Int sub_100066D34(uint64_t a1)
{
  if (sub_1000C9790(a1))
  {
    sub_100003768(&qword_10018CA08, &qword_100128170);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v19 = sub_100114850(a1);
  if (v19)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v18 = a1 & 0xC000000000000001;
    v17 = a1 + 32;
    while (1)
    {
      sub_100096700();
      result = v18 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = NSObject._rawHashValue(seed:)(v2[5]);
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *&v4[8 * v10];
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_100025778(0, &qword_10018C9E0, DKComponentPredicate_ptr);
        v13 = *(v2[6] + 8 * v9);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *&v4[8 * v10] = v12 | v11;
      *(v2[6] + 8 * v9) = v6;
      v15 = v2[2];
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v16;
LABEL_17:
      if (v3 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_100066EF8()
{
  v1 = sub_100003768(&qword_10018C9D8, &qword_100128160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100066F8C(void *a1, void *a2)
{
  v5 = *(sub_100003768(&qword_10018C9D8, &qword_100128160) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000668A4(a1, a2, v6);
}

uint64_t sub_100067018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *sub_100067030(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v32 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_100003768(&qword_10018CA10, &qword_100128178);
  result = static _SetStorage.allocate(capacity:)();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_10006752C(&qword_10018CA18, &protocol conformance descriptor for PresentationDetent);
    v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v15 = ~(-1 << v8[32]);
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *&v35[8 * v17];
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 6) + v16 * v12, v2);
      sub_10006752C(&qword_10018CA20, &protocol conformance descriptor for PresentationDetent);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *&v35[8 * v17] = v19 | v18;
    result = (*v28)(*(v8 + 6) + v16 * v12, v23, v2);
    v24 = *(v8 + 2);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 2) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_10006734C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100025778(0, &qword_10018C9E0, DKComponentPredicate_ptr);
  sub_1000673EC();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [a3 reportWithComponentPredicateManifest:isa completion:a2];
}

unint64_t sub_1000673EC()
{
  result = qword_10018C9E8;
  if (!qword_10018C9E8)
  {
    sub_100025778(255, &qword_10018C9E0, DKComponentPredicate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C9E8);
  }

  return result;
}

unint64_t sub_100067454()
{
  result = qword_10018C9F8;
  if (!qword_10018C9F8)
  {
    sub_100004D48(&qword_10018C9F0, &qword_100128168);
    sub_1000674D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C9F8);
  }

  return result;
}

unint64_t sub_1000674D8()
{
  result = qword_10018CA00;
  if (!qword_10018CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CA00);
  }

  return result;
}

uint64_t sub_10006752C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PresentationDetent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100067574()
{
  v1 = v0;
  v2 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000C30C();
  v8 = v7 - v6;
  v9 = type metadata accessor for DefaultFlowOverride(0);
  __chkstk_darwin(v9 - 8);
  sub_10000C30C();
  v12 = v11 - v10;
  sub_10002CE08(v1, v11 - v10);
  if (sub_10000E5F0(v12, 1, v2) == 1)
  {
    return 1701736270;
  }

  (*(v4 + 32))(v8, v12, v2);
  v13 = SupportFlowIdentifier.rawValue.getter();
  (*(v4 + 8))(v8, v2);
  return v13;
}

uint64_t type metadata accessor for DefaultFlowOverride(uint64_t a1)
{
  result = qword_10018CA98;
  if (!qword_10018CA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100067714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000C30C();
  v15 = (v14 - v13);
  v16 = type metadata accessor for DefaultFlowOverride(0);
  __chkstk_darwin(v16);
  sub_10000C30C();
  v19 = v18 - v17;

  SupportFlowIdentifier.init(rawValue:)();
  if (sub_10000E5F0(v8, 1, v9) == 1)
  {
    sub_100067BEC(v8);
    if (a1 == 1701736302 && a2 == 0xE400000000000000)
    {

      v22 = 1;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v22 = 1;
      if ((v21 & 1) == 0)
      {
        return sub_100003CE8(a3, v22, 1, v16);
      }
    }
  }

  else
  {

    v23 = *(v11 + 32);
    v23(v15, v8, v9);
    v23(v19, v15, v9);
    v22 = 0;
  }

  sub_100003CE8(v19, v22, 1, v9);
  sub_100067C54(v19, a3);
  v22 = 0;
  return sub_100003CE8(a3, v22, 1, v16);
}

uint64_t sub_100067958()
{
  v0 = type metadata accessor for DefaultFlowOverride(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_10000C30C();
  v4 = v3 - v2;
  sub_100003768(&qword_10018CB50, &unk_100128350);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v19 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100121620;
  v8 = type metadata accessor for SupportFlowIdentifier();
  v21 = v6;
  sub_100003CE8(v7 + v6, 1, 1, v8);
  v9 = static SupportFlowIdentifier.allCases.getter();
  v10 = *(v9 + 16);
  if (v10)
  {
    v18 = v7;
    sub_1000D1174(0, v10, 0);
    v11 = *(v8 - 8);
    v20 = *(v11 + 16);
    v12 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    v14 = v19;
    do
    {
      v20(v4, v12, v8);
      sub_100003CE8(v4, 0, 1, v8);
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000D1174(v15 > 1, v16 + 1, 1);
        v14 = v19;
      }

      _swiftEmptyArrayStorage[2] = (v16 + 1);
      sub_100067C54(v4, _swiftEmptyArrayStorage + v21 + v16 * v14);
      v12 += v13;
      --v10;
    }

    while (v10);

    v7 = v18;
  }

  else
  {
  }

  sub_10006ECC4(_swiftEmptyArrayStorage);
  return v7;
}

uint64_t sub_100067BC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100067574();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100067BEC(uint64_t a1)
{
  v2 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100067C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultFlowOverride(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = sub_10000E5F0(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100067D28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SupportFlowIdentifier();

  return sub_100003CE8(a1, v5, a3, v6);
}

uint64_t sub_100067D84(uint64_t a1)
{
  v1 = type metadata accessor for SupportFlowIdentifier();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100067DDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100067958();
  *a1 = result;
  return result;
}

uint64_t sub_100067F2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  *(a1 + 8) = sub_100067FEC(a4, a5);
  result = sub_100067FEC(a6, a7);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100067FEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultFlowOverride(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100068064(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018CAE8, &qword_100128268);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000680FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    sub_10006897C(v9, &_mh_execute_header, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v11, v12, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v13 = sub_10006D73C();

  v14 = 0xD00000000000001BLL;
  v15 = "openApp";
  switch(v13)
  {
    case 1:
      v16 = "BATTERY_NORMAL_SUGGESTIONS";
      goto LABEL_7;
    case 2:
      v15 = "BATTERY_NORMAL_SUGGESTIONS";
      v14 = 0xD000000000000017;
      break;
    case 3:
      v16 = "BATTERY_REPORT_UNAVAILABLE";
LABEL_7:
      v15 = v16 - 32;
      v14 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    sub_10006897C(v17, &_mh_execute_header, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v19, v20, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v21 = sub_10006C624();

  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  v26 = Environment.init<A>(_:)();
  v27 = v22 & 1;
  v28 = v14;
  v29 = v15 | 0x8000000000000000;
  v34 = 0;
  v35 = 0;
  v30 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2 & 1;
  sub_1000103C8();

  View.onForeground(perform:)();

  return sub_1000688DC(&v26);
}

uint64_t sub_100068420(uint64_t a1, char a2)
{
  *(v2 + 96) = a2;
  *(v2 + 24) = a1;
  v3 = type metadata accessor for EnvironmentValues();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 56) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return _swift_task_switch(sub_100068518, v5, v4);
}

uint64_t sub_100068518()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_100068650;

  return sub_10006BC38();
}

uint64_t sub_100068650()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100068794, v3, v2);
}

uint64_t sub_100068794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100068808()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100068840()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000D870;

  return sub_100068420(v2, v3);
}

uint64_t sub_10006897C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_10006899C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001D724(&v10, &qword_10018CBA0, &qword_1001285B8);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_100068AF8()
{
  sub_100068BE0(v0);
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x5AuLL);
  sub_100069D2C(v0, &v3);
  sub_100003768(&qword_10018CB60, &qword_100128578);
  sub_100069D64();
  View.onLoad(perform:)();

  return sub_10001D724(v4, &qword_10018CB60, &qword_100128578);
}

uint64_t sub_100068BE0(uint64_t a1)
{
  v11 = *(a1 + 16);
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.getter();
  if (v18 == 1)
  {
    v17 = 0;
    sub_100003768(&qword_10018CB88, &qword_100128588);
    sub_100057D3C();
    sub_100069E74();
    return _ConditionalContent<>.init(storage:)();
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  sub_100003768(&qword_10018C9D0, &qword_1001285B0);
  State.wrappedValue.getter();
  if (v19 != 255 && (v19 & 1) != 0 && v18 == 2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 80);
    v5 = *(a1 + 88);
    v13 = &type metadata for AirPodsStepProvider;
    v14 = sub_100004C8C();
    LOBYTE(v11) = v5;
    sub_10000B2C0(v3, v4, &v11, 0, 0, v18, 1);
    sub_10001D724(&v11, &qword_100189310, &qword_1001221A0);
    sub_100006578(v9, &v11, &qword_10018BFB0, &qword_100126DB0);
    v15 = 0;
    sub_100003768(&qword_10018BFB0, &qword_100126DB0);
    sub_100065C4C();
    sub_100004984();
    _ConditionalContent<>.init(storage:)();
    sub_100006578(v10, &v11, &qword_10018CB98, &qword_100128590);
    v16 = 0;
    sub_100003768(&qword_10018CB98, &qword_100128590);
    sub_100069F00();
    _ConditionalContent<>.init(storage:)();
    sub_10001D724(v10, &qword_10018CB98, &qword_100128590);
    v6 = v9;
    v7 = &qword_10018BFB0;
    v8 = &qword_100126DB0;
  }

  else
  {
    v11 = *(a1 + 32);
    State.wrappedValue.getter();
    if (v18 != 1)
    {
      LOBYTE(v11) = *(a1 + 89);
      v16 = 1;
      sub_100003768(&qword_10018CB98, &qword_100128590);
      sub_100069F00();
      sub_100004984();
      _ConditionalContent<>.init(storage:)();
      goto LABEL_11;
    }

    LOBYTE(v11) = *(a1 + 88);
    v15 = 1;
    sub_100003768(&qword_10018BFB0, &qword_100126DB0);
    sub_100065C4C();
    sub_100004984();
    _ConditionalContent<>.init(storage:)();
    sub_100006578(v10, &v11, &qword_10018CB98, &qword_100128590);
    v16 = 0;
    sub_100003768(&qword_10018CB98, &qword_100128590);
    sub_100069F00();
    _ConditionalContent<>.init(storage:)();
    v6 = v10;
    v7 = &qword_10018CB98;
    v8 = &qword_100128590;
  }

  sub_10001D724(v6, v7, v8);
LABEL_11:
  sub_100006578(&v18, &v11, &qword_10018CB88, &qword_100128588);
  v17 = 1;
  sub_100003768(&qword_10018CB88, &qword_100128588);
  sub_100057D3C();
  sub_100069E74();
  _ConditionalContent<>.init(storage:)();
  return sub_10001D724(&v18, &qword_10018CB88, &qword_100128588);
}

uint64_t sub_100068FF0(uint64_t a1)
{
  v1[14] = a1;
  sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000690C4, v3, v2);
}

uint64_t sub_1000690C4()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);

  v3 = type metadata accessor for TaskPriority();
  sub_100003CE8(v1, 1, 1, v3);
  sub_100069D2C(v2, v0 + 16);
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  memcpy(v5 + 4, v2, 0x5AuLL);
  sub_100085200();

  sub_10000875C();

  return v6();
}

uint64_t sub_1000691C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[24] = v6;
  v4[25] = v5;

  return _swift_task_switch(sub_10006925C, v6, v5);
}

uint64_t sub_10006925C()
{
  sub_100025A94();
  *(v0 + 208) = sub_10006899C();
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_1000692F4;

  return sub_10010A154();
}

uint64_t sub_1000692F4()
{
  v1 = *v0;
  sub_1000461C8();
  *v3 = v2;
  v4 = *v0;
  sub_1000461C8();
  *v5 = v4;
  *(v7 + 157) = v6;

  v8 = *(v1 + 200);
  v9 = *(v1 + 192);

  return _swift_task_switch(sub_100069438, v9, v8);
}

uint64_t sub_100069438()
{
  v1 = *(v0 + 157);
  v2 = *(v0 + 176);
  *(v0 + 64) = *(v2 + 32);
  v3 = *(v2 + 32);
  *(v0 + 153) = v1;
  *(v0 + 80) = v3;
  *(v0 + 224) = sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.setter();
  *(v0 + 96) = *(v2 + 32);
  State.wrappedValue.getter();
  if (*(v0 + 154))
  {
    if (qword_1001881C8 != -1)
    {
      swift_once();
    }

    v4 = swift_task_alloc();
    *(v0 + 232) = v4;
    *v4 = v0;
    v4[1] = sub_100069614;

    return sub_100054350();
  }

  else
  {

    sub_10006899C();
    sub_10006A104();

    sub_10006A13C(*(v0 + 64));
    sub_100085FE4();

    sub_10006A114();
    sub_10000875C();

    return v6();
  }
}

uint64_t sub_100069614()
{
  sub_100025A94();
  v1 = *v0;
  sub_1000461C8();
  *v3 = v2;
  v4 = *v0;
  sub_1000461C8();
  *v5 = v4;
  *(v7 + 240) = v6;
  *(v7 + 158) = v8;

  v9 = *(v1 + 200);
  v10 = *(v1 + 192);

  return _swift_task_switch(sub_100069734, v10, v9);
}

uint64_t sub_100069734()
{
  v1 = *(v0 + 158);
  v2 = *(v0 + 240);
  v3 = *(v0 + 176);

  v4 = *(v3 + 48);
  v5 = *(v3 + 64);
  *(v0 + 144) = v2;
  *(v0 + 32) = v5;
  *(v0 + 16) = v4;
  *(v0 + 152) = v1 & 1;
  sub_100003768(&qword_10018C9D0, &qword_1001285B0);
  State.wrappedValue.setter();
  v6 = *(v3 + 48);
  *(v0 + 56) = *(v3 + 64);
  *(v0 + 40) = v6;
  State.wrappedValue.getter();
  if (*(v0 + 168) != 255)
  {
    sub_10006899C();
    sub_10006A104();

    sub_100085FE4();
  }

  sub_10006899C();
  sub_10006A104();

  sub_10006A13C(*(v0 + 64));
  sub_100085FE4();

  sub_10006A114();
  sub_10000875C();

  return v7();
}

void *sub_1000698C8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AirPodsFlowViewModel(0);
  sub_1000699F4();
  v2 = Environment.init<A>(_:)();
  v8 = v3 & 1;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  sub_100003768(&qword_10018A630, &qword_100128450);
  result = State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = 0xD000000000000018;
  *(a1 + 80) = 0x8000000100133320;
  *(a1 + 88) = 3083;
  return result;
}

unint64_t sub_1000699F4()
{
  result = qword_10018CB58;
  if (!qword_10018CB58)
  {
    type metadata accessor for AirPodsFlowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CB58);
  }

  return result;
}

uint64_t sub_100069A98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 90))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100069AD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100069B5C()
{

  return _swift_deallocObject(v0, 106, 7);
}

uint64_t sub_100069BB4()
{
  sub_100025A94();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100069C44;

  return sub_100068FF0(v0 + 16);
}

uint64_t sub_100069C44()
{
  sub_100025A94();
  v1 = *v0;
  sub_1000461C8();
  *v2 = v1;

  sub_10000875C();

  return v3();
}

unint64_t sub_100069D64()
{
  result = qword_10018CB68;
  if (!qword_10018CB68)
  {
    sub_100004D48(&qword_10018CB60, &qword_100128578);
    sub_100069DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CB68);
  }

  return result;
}

unint64_t sub_100069DE8()
{
  result = qword_10018CB70;
  if (!qword_10018CB70)
  {
    sub_100004D48(&qword_10018CB78, &qword_100128580);
    sub_100057D3C();
    sub_100069E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CB70);
  }

  return result;
}

unint64_t sub_100069E74()
{
  result = qword_10018CB80;
  if (!qword_10018CB80)
  {
    sub_100004D48(&qword_10018CB88, &qword_100128588);
    sub_100069F00();
    sub_100004984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CB80);
  }

  return result;
}

unint64_t sub_100069F00()
{
  result = qword_10018CB90;
  if (!qword_10018CB90)
  {
    sub_100004D48(&qword_10018CB98, &qword_100128590);
    sub_100065C4C();
    sub_100004984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CB90);
  }

  return result;
}

uint64_t sub_100069F8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 122, 7);
}

uint64_t sub_100069FEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10006A100;

  return sub_1000691C4(a1, v4, v5, v1 + 32);
}

uint64_t sub_10006A09C()
{
  sub_100004D48(&qword_10018CB60, &qword_100128578);
  sub_100069D64();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006A114()
{
  *(v1 + 128) = *(v0 + 16);
  *(v1 + 156) = 0;

  return State.wrappedValue.setter();
}

void *sub_10006A13C(__n128 a1)
{
  v1[7] = a1;

  return State.wrappedValue.getter();
}

uint64_t sub_10006A15C()
{
  swift_getKeyPath();
  sub_10006B880();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

uint64_t sub_10006A1D4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10006A15C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10006A240(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  result = sub_10006B3E4(*(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), a1, a2, a3, a4);
  if (result)
  {
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v12[2] = v4;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = a3;
    v13 = v5;
    sub_10006B35C(v11, sub_10006B860, v12);
  }

  else
  {
    *(v4 + 24) = a1;
    *(v4 + 32) = a2;
    *(v4 + 40) = a3;
    *(v4 + 48) = v5;
  }

  return result;
}

uint64_t sub_10006A328(uint64_t a1)
{
  *(v1 + 16) = &_swiftEmptySetSingleton;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1280;
  ObservationRegistrar.init()();

  sub_10006AF90(sub_10006B8D8, v1);

  return v1;
}

uint64_t sub_10006A394(uint64_t a1)
{
  v1 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  sub_100003CE8(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1000854B8();
}

uint64_t sub_10006A494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10006A4B4, 0, 0);
}

uint64_t sub_10006A4B4()
{
  sub_100025A94();
  sub_10006BA20();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 64) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10006A598, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10006A598()
{
  sub_100025A94();

  sub_10006BA00();

  return _swift_task_switch(sub_10006A608, 0, 0);
}

uint64_t sub_10006A630()
{
  sub_100025A94();
  *(v1 + 48) = v0;
  *(v1 + 44) = v2;
  v3 = type metadata accessor for Logger();
  *(v1 + 56) = v3;
  *(v1 + 64) = *(v3 - 8);
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v1 + 88) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 96) = v5;
  *(v1 + 104) = v4;

  return _swift_task_switch(sub_10006A730, v5, v4);
}

uint64_t sub_10006A730(uint64_t a1)
{
  if (*(v1 + 44) != 1 || (v2 = sub_10006A15C(), (v4 & 0xFF00) == 0x500) || (v7 = v2, (v3 & 1) != 0) && !v2 && (v4 & 0xFF00) == 0x100 && (v4 & 1) != 0)
  {
    sub_10006BA00();
    v5 = swift_task_alloc();
    *(v1 + 112) = v5;
    *v5 = v1;
    v5[1] = sub_10006A8A4;

    return sub_100065D3C();
  }

  else
  {

    v8 = *(v1 + 8);

    return v8(v7);
  }
}

uint64_t sub_10006A8A4(uint64_t a1, char a2, uint64_t a3, __int16 a4)
{
  v6 = *v5;
  v7 = *v5;
  *(v7 + 45) = a2;
  *(v7 + 120) = a1;
  *(v7 + 128) = a3;
  *(v7 + 42) = a4;
  *(v7 + 136) = v4;

  v8 = *(v6 + 104);
  v9 = *(v6 + 96);
  if (v4)
  {
    v10 = sub_10006AD04;
  }

  else
  {
    v10 = sub_10006A9F4;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10006A9F4()
{
  v28 = v0;

  static Logger.supportFlowApp.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 42);
    v5 = *(v0 + 45);
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v24 = *(v0 + 64);
    v25 = *(v0 + 56);
    v26 = *(v0 + 80);
    v1 = v4 >> 8;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    *(v0 + 16) = v7;
    *(v0 + 24) = v5 & 1;
    *(v0 + 32) = v6;
    *(v0 + 40) = v4 & 1;
    *(v0 + 41) = BYTE1(v4);
    v10 = String.init<A>(describing:)();
    v12 = sub_10009CACC(v10, v11, &v27);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received Report: %s", v8, 0xCu);
    sub_1000086BC(v9);
    sub_100008744(v9);
    sub_100008744(v8);

    (*(v24 + 8))(v26, v25);
  }

  else
  {
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    v13 = *(v0 + 64);

    (*(v13 + 8))(v6, v7);
  }

  v14 = *(v0 + 42);
  v15 = v14 >> 8;
  v16 = sub_10006B2F8();
  if ((static Bool.allowOverrides.getter() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = 1701736302;
  v17 = sub_10006F614(v16);
  if (v17 == 1701736302 && v18 == 0xE400000000000000)
  {

    goto LABEL_13;
  }

  v6 = sub_10006B9C8(v17);

  if (v6)
  {
LABEL_13:
    sub_10006B9EC();
    goto LABEL_14;
  }

  v20 = sub_10006B2F8();
  v15 = 2;
  v6 = 1;
  v7 = 100;
  v21 = 0;
  LOBYTE(v1) = 1;
  switch(v20)
  {
    case 1:
      v21 = 0;
      LOBYTE(v1) = 1;
      v7 = 72;
      v6 = 4;
      goto LABEL_20;
    case 2:
      v21 = 0;
      v6 = 1;
      v7 = 100;
      LOBYTE(v1) = 1;
      goto LABEL_20;
    case 3:
      break;
    case 4:
      v6 = 0;
      v7 = 0;
      LOBYTE(v1) = 1;
      v21 = 1;
LABEL_20:
      v15 = 1;
      break;
    default:
      sub_10006B9EC();
      v15 = v14 >> 8;
      break;
  }

LABEL_14:
  sub_10006A240(v6, v1 & 1, v7, v21 & 1 | (v15 << 8));

  v22 = *(v0 + 8);

  return v22(v6);
}

uint64_t sub_10006AD04()
{

  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch battery diagnostics report: %@", v3, 0xCu);
    sub_1000083A0(v4);
    sub_100008744(v4);
    sub_100008744(v3);
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  v6 = sub_10006B2F8();
  if (static Bool.allowOverrides.getter())
  {
    v7 = sub_10006F614(v6);
    if (v7 == 1701736302 && v8 == 0xE400000000000000)
    {
    }

    else
    {
      v10 = sub_10006B9C8(v7);

      if ((v10 & 1) == 0)
      {
        v11 = 2;
        v12 = 100;
        v13 = 1;
        v14 = 0;
        switch(sub_10006B2F8())
        {
          case 1u:
            v14 = 0;
            v11 = 1;
            v12 = 72;
            v13 = 4;
            break;
          case 2u:
            v14 = 0;
            v13 = 1;
            v12 = 100;
            goto LABEL_14;
          case 3u:
            goto LABEL_15;
          default:
            goto LABEL_13;
        }

        goto LABEL_15;
      }
    }
  }

LABEL_13:
  v13 = 0;
  v12 = 0;
  v14 = 1;
LABEL_14:
  v11 = 1;
LABEL_15:
  sub_10006A240(v13, 1, v12, v14 | (v11 << 8));

  v15 = v0[1];

  return v15(v13, 1, v12, v14 | ((v11 & 3) << 8));
}

uint64_t (*sub_10006AFF4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  return sub_10006B714;
}

uint64_t sub_10006B070(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  a1(v6);
  v9 = type metadata accessor for TaskPriority();
  sub_100003CE8(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = a2;

  sub_1000854B8();
}

uint64_t sub_10006B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006B264, v8, v7);
}

uint64_t sub_10006B264()
{
  sub_100025A94();

  sub_10006BA20();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10006AF90(*(v0 + 56), *(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006B2F8()
{
  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950)
  {
    return sub_1000FB3CC();
  }

  else
  {
    return 0;
  }
}

BOOL sub_10006B3E4(uint64_t a1, char a2, uint64_t a3, __int16 a4, unint64_t a5, int a6, uint64_t a7, __int16 a8)
{
  v8 = (a4 & 0xFF00) == 1280;
  if ((a8 & 0xFF00) != 0x500)
  {
    v8 = 0;
  }

  if ((a4 & 0xFF00) != 0x500 && (a8 & 0xFF00) != 0x500)
  {
    if (a2)
    {
      switch(a1)
      {
        case 1:
          v9 = a5 == 1;
          goto LABEL_17;
        case 2:
          v9 = a5 == 2;
          goto LABEL_17;
        case 3:
          v9 = a5 == 3;
          goto LABEL_17;
        case 4:
          v9 = a5 == 4;
          goto LABEL_17;
        case 5:
          v9 = a5 == 5;
          goto LABEL_17;
        case 6:
          v9 = a5 == 6;
          goto LABEL_17;
        case 7:
          v9 = a5 == 7;
          goto LABEL_17;
        case 8:
          v10 = a5 > 7;
          goto LABEL_20;
        default:
          v9 = a5 == 0;
LABEL_17:
          v10 = v9;
LABEL_20:
          if (a6 & v10)
          {
            goto LABEL_21;
          }

          goto LABEL_23;
      }
    }

    if (a6 & 1 | (a1 != a5))
    {
      goto LABEL_23;
    }

LABEL_21:
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
LABEL_23:
        v8 = 0;
        return !v8;
      }

LABEL_26:
      v8 = (a8 ^ a4) < 0x100u;
      return !v8;
    }

    v8 = 0;
    if ((a8 & 1) == 0 && a3 == a7)
    {
      goto LABEL_26;
    }
  }

  return !v8;
}

uint64_t sub_10006B500()
{

  v1 = OBJC_IVAR____TtC11SupportFlow25BatteryDiagnosticsManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for BatteryDiagnosticsManager(uint64_t a1)
{
  result = qword_10018CBD8;
  if (!qword_10018CBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B5F8(uint64_t a1)
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

uint64_t sub_10006B6A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006B2F8();
  *a1 = result;
  return result;
}

uint64_t sub_10006B6D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006B720()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006B758()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006B7A0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_100008768(v5);

  return sub_10006B1C8(v6, v7, v8, v2, v3, v4);
}

__n128 sub_10006B860()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  result = *(v0 + 24);
  *(v1 + 24) = result;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

unint64_t sub_10006B880()
{
  result = qword_10018CD20;
  if (!qword_10018CD20)
  {
    type metadata accessor for BatteryDiagnosticsManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CD20);
  }

  return result;
}

uint64_t sub_10006B8E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006B920()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_100008768(v3);

  return sub_10006A494(v4, v5, v6, v2);
}

uint64_t sub_10006B9C8(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10006BA00()
{

  return sub_10006A240(0, 0, 0, 1280);
}

uint64_t sub_10006BA20()
{

  return swift_beginAccess();
}

uint64_t sub_10006BA40()
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_10006EFF8();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0, &unk_10012D890);
  swift_getKeyPath();
  sub_10000AAEC(&qword_10018D1E0, &qword_10018D1E8, &qword_1001287E0, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + *(*v0 + 144));
}

id *sub_10006BB60(uint64_t a1)
{
  v2 = 0;
  result = _swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_11;
    }

    if (*(v5 + 8 * v2++))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = _swiftEmptyArrayStorage;
      v2 = v6;
    }
  }

  return result;
}

uint64_t sub_10006BC38()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  v2 = type metadata accessor for MainActor();
  *(v1 + 24) = sub_10006F3C8(v2);
  sub_10006F37C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  sub_10006F35C(v3, v4);

  return _swift_task_switch(sub_10006BCB8, v6, v5);
}

uint64_t sub_10006BCB8()
{
  sub_10003DCD8();
  if (qword_100188208 != -1)
  {
    sub_10006F31C(&qword_100188208);
  }

  v1 = type metadata accessor for Logger();
  sub_10000C2D4(v1, qword_1001A5778);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving battery suggestions...", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + qword_10018CD40);
  if (static Bool.allowOverrides.getter())
  {
    if (sub_10006F614(v6) == 1701736302 && v7 == 0xE400000000000000)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {

        v10 = sub_10006DCD0();
        v11 = sub_100114850(v10);
        if (!v11)
        {

          if (qword_1001881F8 != -1)
          {
            sub_10006F2FC(&qword_1001881F8);
          }

          v10 = qword_10018CD28;
        }

        sub_10006C6BC(v10);
        sub_10006C574(v11 != 0);
        sub_10006C624();
        sub_100086430();

        sub_10000875C();

        return v12();
      }
    }
  }

  v14 = swift_task_alloc();
  *(v0 + 48) = v14;
  *v14 = v0;
  sub_10006F33C(v14);

  return sub_10006DDA0();
}

uint64_t sub_10006BF24()
{
  sub_100025A94();
  v1 = *v0;
  sub_1000461C8();
  *v3 = v2;
  v4 = *v0;
  sub_1000461C8();
  *v5 = v4;
  *(v7 + 56) = v6;

  v8 = *(v1 + 40);
  v9 = *(v1 + 32);

  return _swift_task_switch(sub_10006C040, v9, v8);
}

uint64_t sub_10006C040()
{
  sub_10003DCD8();

  v1 = *(v0 + 56);
  v2 = sub_100114850(v1);
  if (!v2)
  {

    if (qword_1001881F8 != -1)
    {
      sub_10006F2FC(&qword_1001881F8);
    }

    v1 = qword_10018CD28;
  }

  sub_10006C6BC(v1);
  sub_10006C574(v2 != 0);
  sub_10006C624();
  sub_100086430();

  sub_10000875C();

  return v3();
}

uint64_t sub_10006C138()
{
  swift_getKeyPath();
  v0 = sub_10006F154();
  sub_10006F2DC(v0, v1);

  v2 = sub_10006F394();
  sub_10006F2C8(v2, v3, v4, v5);
  return sub_10006F394();
}

uint64_t sub_10006C1B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 12);
  sub_10006F2C8(*a1, v2, v3, v4);
  return sub_10006C21C(v1, v2, v3, v4);
}

uint64_t sub_10006C21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  KeyPath = swift_getKeyPath();
  v12 = v4;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = v5;
  sub_10006D758(KeyPath, sub_10006F2A4, &v11);
  sub_10006DCBC(a1, a2, a3, v5);
}

uint64_t sub_10006C2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v5 = a1 + qword_10018CD48;
  v6 = *(a1 + qword_10018CD48);
  v7 = *(a1 + qword_10018CD48 + 8);
  v8 = *(a1 + qword_10018CD48 + 16);
  *v5 = a2;
  *(v5 + 8) = a3;
  *(v5 + 16) = a4;
  v9 = *(v5 + 24);
  *(v5 + 24) = a5;
  sub_10006F2C8(a2, a3, a4, a5);
  return sub_10006DCBC(v6, v7, v8, v9);
}

uint64_t sub_10006C340()
{
  swift_getKeyPath();
  v1 = sub_10006F154();
  sub_10006F2DC(v1, v2);

  return sub_10006F36C(v0 + qword_10018CD50);
}

uint64_t sub_10006C3AC()
{
  sub_10006F388();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3;
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  return result;
}

uint64_t sub_10006C418(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = v4 + qword_10018CD50;
  result = sub_10006D7E0(*(v4 + qword_10018CD50), *(v4 + qword_10018CD50 + 8), *(v4 + qword_10018CD50 + 16), *(v4 + qword_10018CD50 + 24), a1, a2, a3, a4);
  if (result)
  {
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    v13[2] = v4;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;
    v14 = v5;
    sub_10006D758(v12, sub_10006F248, v13);
  }

  else
  {
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    *(v9 + 24) = v5;
  }

  return result;
}

uint64_t sub_10006C50C()
{
  swift_getKeyPath();
  v1 = sub_10006F154();
  sub_10006F2DC(v1, v2);

  return *(v0 + qword_10018CD58);
}

uint64_t sub_10006C574(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + qword_10018CD58) == (result & 1))
  {
    *(v1 + qword_10018CD58) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = __chkstk_darwin(KeyPath);
    v5[2] = v1;
    v6 = v2;
    sub_10006D758(v4, sub_10006F200, v5);
  }

  return result;
}

uint64_t sub_10006C624()
{
  swift_getKeyPath();
  v0 = sub_10006F154();
  sub_10006F2DC(v0, v1);
}

uint64_t sub_10006C6BC(unint64_t a1)
{
  v3 = qword_10018CD60;

  v5 = sub_10004C3FC(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    sub_10006D758(v8, sub_10006F138, v9);
  }
}

uint64_t sub_10006C7B8(uint64_t a1, uint64_t a2)
{
  *(a1 + qword_10018CD60) = a2;
}

uint64_t sub_10006C7FC(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  sub_10000C30C();
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  sub_10000C30C();
  v5 = type metadata accessor for SupportFlowIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  sub_10000C30C();
  v9 = v8 - v7;
  v10 = qword_10018CD38;
  type metadata accessor for BatteryDiagnosticsManager(0);
  v11 = swift_allocObject();
  *(v1 + v10) = sub_10006A328(v11);
  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950)
  {
    v12 = sub_1000FB3CC();
  }

  else
  {
    v12 = 0;
  }

  *(v1 + qword_10018CD40) = v12;
  v13 = v1 + qword_10018CD48;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *v13 = 0;
  *(v13 + 24) = 0x8000;
  v14 = v1 + qword_10018CD50;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 1280;
  *(v1 + qword_10018CD58) = 0;
  *(v1 + qword_10018CD60) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  (*(v6 + 104))(v9, enum case for SupportFlowIdentifier.battery(_:), v5);

  sub_10010571C(v9, &type metadata for DefaultStepOverrideProvider, a1, 0, 0, v15);
  v17 = v16;
  swift_retain_n();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10004F504();
  String.init(localized:table:bundle:locale:comment:)();
  sub_1001061A8();
  if (qword_100188238 != -1)
  {
    swift_once();
  }

  sub_10010497C();

  return v17;
}

uint64_t sub_10006CB24()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  v2 = type metadata accessor for MainActor();
  *(v1 + 24) = sub_10006F3C8(v2);
  sub_10006F37C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  sub_10006F35C(v3, v4);

  return _swift_task_switch(sub_10006CBA4, v6, v5);
}

uint64_t sub_10006CBA4()
{
  sub_100025A94();
  sub_10004F504();
  sub_10006C418(v1, v2, v3, 1280);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  sub_10006F33C(v4);

  return sub_10006D10C();
}

uint64_t sub_10006CC40()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_10006CD54, v5, v4);
}

uint64_t sub_10006CD54()
{
  v1 = sub_10006C138();
  v5 = v1;
  v6 = v2;
  if (v4 >> 14 == 1)
  {

    if (qword_100188208 != -1)
    {
      sub_10006F31C(&qword_100188208);
    }

    v9 = type metadata accessor for Logger();
    sub_10000C2D4(v9, qword_1001A5778);
    sub_10006F37C();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to run diagnostics: %@", v12, 0xCu);
      sub_100044F98(v13, &qword_100189390, &qword_1001241D0);
    }

    else
    {

      sub_10006F3A8();
    }

    goto LABEL_15;
  }

  if (v4 >> 14)
  {

LABEL_15:
    sub_10006F3A8();
    goto LABEL_16;
  }

  sub_10006C418(v1, v2 & 1, v3, v4 & 0xFFFFFF01);
  if ((v6 & 1) != 0 && v5 == 1)
  {
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    sub_10006F33C(v7);

    return sub_10006BC38();
  }

LABEL_16:
  sub_10000875C();

  return v15();
}

uint64_t sub_10006CFA0()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_10006D0B4, v5, v4);
}

uint64_t sub_10006D0B4()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_10006D10C()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  *(v1 + 90) = v2;
  v3 = type metadata accessor for MainActor();
  *(v1 + 24) = sub_10006F3C8(v3);
  sub_10006F37C();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  sub_10006F35C(v4, v5);

  return _swift_task_switch(sub_10006D190, v7, v6);
}

uint64_t sub_10006D190()
{
  sub_100025A94();
  v1 = v0[2];
  sub_10004F504();
  sub_10006C21C(v2, v3, v4, 0x8000);
  v0[6] = *(v1 + qword_10018CD38);

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10006D250;

  return sub_10006A630();
}

uint64_t sub_10006D250(uint64_t a1, char a2, uint64_t a3, __int16 a4)
{
  v10 = *v5;
  sub_1000461C8();
  *v11 = v10;
  v12 = *v5;
  sub_10000870C();
  *v13 = v12;
  *(v10 + 64) = v4;

  if (v4)
  {
    v14 = *(v10 + 32);
    v15 = *(v10 + 40);
    v16 = sub_10006D424;
  }

  else
  {

    *(v10 + 88) = a4;
    *(v10 + 91) = a2;
    *(v10 + 72) = a3;
    *(v10 + 80) = a1;
    v14 = *(v10 + 32);
    v15 = *(v10 + 40);
    v16 = sub_10006D398;
  }

  return _swift_task_switch(v16, v14, v15);
}

uint64_t sub_10006D398()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 91);
  v4 = *(v0 + 88);

  sub_10006C21C(v2, v3 & 1, v1, v4 & 0xFFFFFF01);
  sub_10000875C();

  return v5();
}

uint64_t sub_10006D424()
{
  sub_10003DCD8();

  swift_errorRetain();
  sub_10004F504();
  sub_10006C21C(v0, v1, v2, 0x4000);

  sub_10000875C();

  return v3();
}

uint64_t sub_10006D4B4()
{
  v0 = sub_10006C138();
  if ((v3 & 0xC000) != 0)
  {
    sub_10006DCBC(v0, v1, v2, v3);
    v4 = 3;
  }

  else
  {
    v4 = sub_10006D518(v0, v1 & 1, v2, v3 & 0x3F01);
  }

  return sub_100107BB8(v4);
}

uint64_t sub_10006D518(uint64_t a1, char a2, uint64_t a3, __int16 a4)
{
  if (a2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return sub_10006D73C();
      }
    }

    else if (a4 & 0xFF00) == 0x100 && (a4)
    {
      return 3;
    }
  }

  return 2;
}

uint64_t sub_10006D54C()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  v2 = type metadata accessor for MainActor();
  *(v1 + 24) = sub_10006F3C8(v2);
  sub_10006F37C();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006D5D4, v4, v3);
}

void sub_10006D5D4()
{
  sub_10003DCD8();
  if (sub_10006BA40())
  {
    sub_10006C340();
    sub_100085FE4();
  }

  _AXSAutoBrightnessEnabled();
  sub_100085FE4();
  v0 = [objc_opt_self() sharedConnection];
  if (!v0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = sub_10006EF28(v2, v3, v1);

  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v4 integerValue];

  sub_100085FE4();
  sub_10000875C();

  v5();
}

BOOL sub_10006D7E0(uint64_t a1, char a2, uint64_t a3, __int16 a4, unint64_t a5, int a6, uint64_t a7, __int16 a8)
{
  v8 = (a4 & 0xFF00) == 1280;
  if ((a8 & 0xFF00) != 0x500)
  {
    v8 = 0;
  }

  if ((a4 & 0xFF00) != 0x500 && (a8 & 0xFF00) != 0x500)
  {
    if (a2)
    {
      switch(a1)
      {
        case 1:
          v9 = a5 == 1;
          goto LABEL_17;
        case 2:
          v9 = a5 == 2;
          goto LABEL_17;
        case 3:
          v9 = a5 == 3;
          goto LABEL_17;
        case 4:
          v9 = a5 == 4;
          goto LABEL_17;
        case 5:
          v9 = a5 == 5;
          goto LABEL_17;
        case 6:
          v9 = a5 == 6;
          goto LABEL_17;
        case 7:
          v9 = a5 == 7;
          goto LABEL_17;
        case 8:
          v10 = a5 > 7;
          goto LABEL_20;
        default:
          v9 = a5 == 0;
LABEL_17:
          v10 = v9;
LABEL_20:
          if (a6 & v10)
          {
            goto LABEL_21;
          }

          goto LABEL_23;
      }
    }

    if (a6 & 1 | (a1 != a5))
    {
      goto LABEL_23;
    }

LABEL_21:
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
LABEL_23:
        v8 = 0;
        return !v8;
      }

LABEL_26:
      v8 = (a8 ^ a4) < 0x100u;
      return !v8;
    }

    v8 = 0;
    if ((a8 & 1) == 0 && a3 == a7)
    {
      goto LABEL_26;
    }
  }

  return !v8;
}

uint64_t sub_10006D8FC()
{

  v1 = sub_10006F36C(v0 + qword_10018CD48);
  sub_10006DCBC(v1, v2, v3, v4);

  v5 = qword_10018CD68;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  v7 = *(v6 + 8);

  return v7(v0 + v5);
}

uint64_t sub_10006D98C()
{
  v0 = sub_10011484C();

  v1 = sub_10006F36C(v0 + qword_10018CD48);
  sub_10006DCBC(v1, v2, v3, v4);

  v5 = qword_10018CD68;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t sub_10006DA1C()
{
  v0 = sub_10006D98C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for BatteryFlowViewModel(uint64_t a1)
{
  result = qword_10018CD98;
  if (!qword_10018CD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006DABC(uint64_t a1)
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

uint64_t sub_10006DB90(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 sub_10006DBB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_10006DBC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_10006DC0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006DC6C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 24) & 0x701 | (a2 << 14);
    *(result + 8) &= 1uLL;
    *(result + 24) = v2;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    *(result + 24) = 0x8000;
  }

  return result;
}

uint64_t sub_10006DCBC(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0xC000) == 0x4000)
  {
  }

  return v4;
}

id *sub_10006DCD0()
{
  if (sub_10006F614(*(v0 + qword_10018CD40)) == 0xD000000000000011 && 0x80000001001330C0 == v1)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  if (qword_100188200 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006DDA0()
{
  v1 = type metadata accessor for BatterySuggestion(0);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = type metadata accessor for MainActor();
  v0[6] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_10006DEA0;

  return sub_10006E21C();
}

uint64_t sub_10006DEA0()
{
  sub_100025A94();
  sub_1000461C8();
  *v2 = v1;
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;
  *(v6 + 64) = v5;

  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006DFD4, v8, v7);
}

uint64_t sub_10006DFD4()
{
  v1 = v0[8];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v5 = v0[3];
    v4 = v0[4];
    v6 = v0[2];
    type metadata accessor for PlacardInfoItem(0);
    v26 = v6[6];
    v27 = (v4 + v6[8]);
    v25 = (v4 + v6[5]);
    v28 = v4;
    v24 = (v4 + v6[7]);
    v7 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v23 = *(v5 + 72);
    v29 = v0;
    do
    {
      v33 = v2;
      v8 = v0[4];
      sub_10006F04C(v7, v8);
      v32 = UUID.uuidString.getter();
      v10 = v9;
      v31 = URL.absoluteString.getter();
      v12 = v11;
      v14 = *v27;
      v13 = v27[1];
      v15 = v25[1];
      v30 = *v25;
      v17 = *v24;
      v16 = v24[1];
      v18 = sub_10001E360(*(v28 + v26));
      v20 = sub_1000F012C(v32, v10, v31, v12, v14, v13, v30, v15, v17, v16, v18, v19);

      sub_10006F0B0(v8);
      if (v20)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v7 += v23;
      v2 = v33 - 1;
      v0 = v29;
    }

    while (v33 != 1);
  }

  v21 = v0[1];

  return v21(_swiftEmptyArrayStorage);
}

uint64_t sub_10006E21C()
{
  sub_100025A94();
  sub_100003768(&qword_10018D200, &unk_100128820);
  v0[11] = swift_task_alloc();
  v1 = type metadata accessor for BatterySuggestion(0);
  v0[12] = v1;
  v0[13] = *(v1 - 8);
  v0[14] = swift_task_alloc();
  sub_10004F504();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10006E308()
{
  v1 = batteryUISuggestionSummary();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = batteryUIInsightSummary();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006EDD8(v2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = _swiftEmptyArrayStorage;
    v8 = v0[13];
    while (1)
    {
      sub_10001E894(v6, (v0 + 2));
      sub_10001E894((v0 + 2), (v0 + 6));
      sub_100003768(&qword_10018B580, &unk_100128EB0);
      v9 = swift_dynamicCast();
      v11 = v0[11];
      v10 = v0[12];
      if (v9)
      {
        sub_10001DF34(v0[10], v0[11]);
        sub_1000086BC(v0 + 2);
        if (sub_10000E5F0(v11, 1, v10) != 1)
        {
          sub_10001E8F0(v0[11], v0[14]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000D0A10();
            v7 = v14;
          }

          v12 = v7[2];
          if (v12 >= v7[3] >> 1)
          {
            sub_1000D0A10();
            v7 = v15;
          }

          v13 = v0[14];
          v7[2] = (v12 + 1);
          sub_10001E8F0(v13, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12);
          goto LABEL_12;
        }
      }

      else
      {
        sub_1000086BC(v0 + 2);
        sub_100003CE8(v11, 1, 1, v10);
      }

      sub_100044F98(v0[11], &qword_10018D200, &unk_100128820);
LABEL_12:
      v6 += 32;
      if (!--v5)
      {

        goto LABEL_15;
      }
    }
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_15:

  v16 = v0[1];

  return v16(v7);
}

uint64_t sub_10006E57C()
{
  sub_100003768(&qword_10018D1F0, &qword_100128808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100121620;
  type metadata accessor for PlacardInfoItem(0);
  *(inited + 32) = sub_1000E8E48();
  v1 = sub_10006BB60(inited);
  swift_setDeallocating();
  result = sub_10006EC64();
  qword_10018CD28 = v1;
  return result;
}

uint64_t sub_10006E60C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  sub_100003768(&qword_10018D1F0, &qword_100128808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100128690;
  type metadata accessor for PlacardInfoItem(0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v3 = String.init(localized:table:bundle:locale:comment:)();
  v5 = sub_1000F012C(0xD000000000000013, 0x8000000100136CC0, 0xD000000000000018, 0x8000000100136CE0, 0xD000000000000023, 0x8000000100136D00, 0x5520746E65636552, 0xEC00000065676173, 0xD000000000000062, 0x8000000100136D30, v3, v4);

  *(inited + 32) = v5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v6 = String.init(localized:table:bundle:locale:comment:)();
  v8 = sub_1000F012C(0xD000000000000016, 0x8000000100136DA0, 0xD000000000000020, 0x8000000100136DC0, 0xD000000000000020, 0x8000000100136DF0, 0xD000000000000010, 0x8000000100136E20, 0xD000000000000049, 0x8000000100136E40, v6, v7);

  *(inited + 40) = v8;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = sub_1000F012C(0xD000000000000018, 0x8000000100136E90, 0xD00000000000003ELL, 0x8000000100136EB0, 0xD00000000000001ELL, 0x8000000100136EF0, 0xD000000000000011, 0x8000000100136F10, 0xD00000000000006FLL, 0x8000000100136F30, v9, v10);

  *(inited + 48) = v11;
  v12 = sub_10006BB60(inited);
  swift_setDeallocating();
  result = sub_10006EC64();
  qword_10018CD30 = v12;
  return result;
}

uint64_t sub_10006E9E8()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  sub_10000C270(v4, qword_1001A5778);
  sub_10000C2D4(v4, qword_1001A5778);
  (*(v1 + 104))(v3, enum case for SupportFlowIdentifier.battery(_:), v0);
  return Logger.init(flowId:)();
}

uint64_t sub_10006EAEC()
{
  sub_10006F388();
  result = sub_1000A091C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_10006EB40()
{
  swift_arrayDestroy();
  v0 = sub_10006F34C();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10006EBAC(uint64_t (*a1)(void))
{
  a1(0);
  swift_arrayDestroy();
  v1 = sub_10006F34C();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t sub_10006EC24()
{
  swift_arrayDestroy();
  v0 = sub_10006F34C();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10006EC64()
{
  sub_100003768(&qword_10018D1F8, &qword_100128810);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10006ECC4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10006EEB0(result, 1, sub_1000CFE98);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for DefaultFlowOverride(0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10006EDD8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_10006EEB0(result, 1, sub_1000D0AE8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10006EEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

id sub_10006EF28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 effectiveValueForSetting:v4];

  return v5;
}

uint64_t sub_10006EF8C()
{
  sub_10006F388();
  result = sub_1000A091C();
  *v0 = result & 1;
  return result;
}

__n128 sub_10006EFEC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_10006EFF8()
{
  result = qword_10018D1D8;
  if (!qword_10018D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D1D8);
  }

  return result;
}

uint64_t sub_10006F04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatterySuggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006F0B0(uint64_t a1)
{
  v2 = type metadata accessor for BatterySuggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006F10C()
{
  sub_10006F388();
  result = sub_10006C624();
  *v0 = result;
  return result;
}

unint64_t sub_10006F154()
{
  result = qword_100188710;
  if (!qword_100188710)
  {
    type metadata accessor for BatteryFlowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188710);
  }

  return result;
}

uint64_t sub_10006F1AC()
{
  sub_10006F388();
  result = sub_10006C50C();
  *v0 = result & 1;
  return result;
}

__n128 sub_10006F248()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = (*(v0 + 16) + qword_10018CD50);
  result = *(v0 + 24);
  *v3 = result;
  v3[1].n128_u64[0] = v1;
  v3[1].n128_u16[4] = v2;
  return result;
}

uint64_t sub_10006F2C8(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0xC000) == 0x4000)
  {
    return swift_errorRetain();
  }

  return v4;
}

uint64_t sub_10006F2DC(uint64_t a1, uint64_t a2, ...)
{

  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10006F2FC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10006F31C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10006F35C(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_10006F3A8()
{

  return sub_10006DCBC(v0, v1, v2, v3);
}

uint64_t sub_10006F3C8(uint64_t a1)
{

  return static MainActor.shared.getter();
}

_BYTE *storeEnumTagSinglePayload for BatteryDiagnosticsOverride(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10006F4ACLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10006F50C(char a1)
{
  result = 1701736270;
  switch(a1)
  {
    case 1:
      result = 0x7474614220776F4CLL;
      break;
    case 2:
      result = 0x42206C616D726F4ELL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10006F5C8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176508, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10006F614(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x6574746142776F6CLL;
      break;
    case 2:
      result = 0x61426C616D726F6ELL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10006F6F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006F5C8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10006F720@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10006F614(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10006F790()
{
  result = qword_10018D208;
  if (!qword_10018D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D208);
  }

  return result;
}

unint64_t sub_10006F7E4()
{
  result = qword_10018D210;
  if (!qword_10018D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D210);
  }

  return result;
}

uint64_t sub_10006F8A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018D220, &qword_100128958);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006F91C()
{
  result = qword_10018D268;
  if (!qword_10018D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D268);
  }

  return result;
}

unint64_t sub_10006F970()
{
  result = qword_10018D270;
  if (!qword_10018D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D270);
  }

  return result;
}

uint64_t sub_10006F9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10006FA2C()
{
  result = qword_10018D278;
  if (!qword_10018D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D278);
  }

  return result;
}

unint64_t sub_10006FA80()
{
  result = qword_10018D280;
  if (!qword_10018D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D280);
  }

  return result;
}

unint64_t sub_10006FADC()
{
  result = qword_10018D288;
  if (!qword_10018D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D288);
  }

  return result;
}

uint64_t sub_10006FB30(char a1)
{
  switch(a1)
  {
    case 1:
      return 0x72662F6163;
    case 14:
      return 0;
    case 7:
      return 27509;
    case 3:
      return 1701079139;
  }

  sub_10006FBD8(a1);
  countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10006FBD8(char a1)
{
  result = 21825;
  switch(a1)
  {
    case 1:
      result = 1094939238;
      break;
    case 2:
      result = 16707;
      break;
    case 3:
      result = 18499;
      break;
    case 4:
      result = 20035;
      break;
    case 5:
      result = 17732;
      break;
    case 6:
      result = 21317;
      break;
    case 7:
      result = 16967;
      break;
    case 8:
      result = 17737;
      break;
    case 9:
      result = 20041;
      break;
    case 10:
      result = 21577;
      break;
    case 11:
      result = 22605;
      break;
    case 12:
      result = 23118;
      break;
    case 13:
      result = 18259;
      break;
    case 14:
      result = 21333;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10006FCD4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100174DC0, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10006FD44@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006FCD4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006FD74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006FBD8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ServiceStatusInfoProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10006FE6CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10006FEA8()
{
  result = qword_10018D290;
  if (!qword_10018D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D290);
  }

  return result;
}

double sub_10006FF28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v5 = type metadata accessor for ActionInfoType(0);
  sub_10000AF7C();
  v7 = __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v24 - v17;
  __chkstk_darwin(v16);
  v20 = &v24 - v19;
  *(&v24 - v19) = 1;
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v20, 0, 1, v5);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_10000EC9C(v20, v18, &qword_10018ADD0, &unk_1001256A0);
  sub_10000EC9C(v27, v25, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v18, v15, &qword_10018ADD0, &unk_1001256A0);
  if (sub_10000E5F0(v15, 1, v5) == 1)
  {

    sub_10000ABCC(v18, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v27, &qword_100189310, &qword_1001221A0);
    sub_10000ABCC(v20, &qword_10018ADD0, &unk_1001256A0);
    v21 = 0;
  }

  else
  {
    sub_10003F558(v15, v11);
    type metadata accessor for ActionInfo(0);
    sub_10003F5BC(v11, v9);

    v21 = sub_1000ED69C(v9, 1, 0, 0);
    sub_10003F620(v11);
    sub_10000ABCC(v18, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v27, &qword_100189310, &qword_1001221A0);
    sub_10000ABCC(v20, &qword_10018ADD0, &unk_1001256A0);
  }

  *a3 = v24;
  *(a3 + 8) = a2;
  *(a3 + 64) = 0;
  *(a3 + 72) = v21;
  result = *v25;
  v23 = v25[1];
  *(a3 + 16) = v25[0];
  *(a3 + 32) = v23;
  *(a3 + 48) = v26;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

double sub_100070248@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13[1] = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  *(a3 + 72) = &type metadata for WiFiStepProvider;
  *(a3 + 80) = sub_10000737C();
  *(a3 + 48) = 7;
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  *a3 = Environment.init<A>(_:)();
  *(a3 + 8) = v11 & 1;
  *(a3 + 32) = 0xD000000000000016;
  *(a3 + 40) = 0x8000000100135C30;
  *&result = 1229343063;
  *(a3 + 16) = xmmword_100128CD0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  return result;
}

id *sub_100070428(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  sub_1000780C0();
  v8 = sub_10007788C(v5, v6, v7, a1);
  sub_100077BA0(v10);
  if (v8 != v4)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v2;
}

id *sub_1000704B4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  sub_1000780C0();
  v6 = a3();
  sub_100077BA0(v8);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_100070548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v293 = a2;
  v251 = a3;
  v4 = 0;
  v5 = type metadata accessor for TriageRequest.HMTContext.UserAction();
  sub_100008780();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  v11 = v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v246 - v12;
  v283 = type metadata accessor for TriageRequest.HMTContext.Article();
  sub_100008780();
  v271 = v14;
  __chkstk_darwin(v15);
  sub_100077C50();
  v266 = v16;
  sub_10002B0CC();
  __chkstk_darwin(v17);
  sub_100077F40();
  v265 = v18;
  sub_10002B0CC();
  __chkstk_darwin(v19);
  sub_100077F40();
  v269 = v20;
  sub_10002B0CC();
  __chkstk_darwin(v21);
  sub_100077EF8();
  v268 = v22;
  sub_100077EEC();
  v267 = type metadata accessor for TriageRequest.HMTContext.BCSArticle();
  sub_100008780();
  v264 = v23;
  __chkstk_darwin(v24);
  sub_100077C50();
  v258 = v25;
  sub_10002B0CC();
  __chkstk_darwin(v26);
  sub_100077F40();
  v257 = v27;
  sub_10002B0CC();
  __chkstk_darwin(v28);
  sub_100077F40();
  v260 = v29;
  sub_10002B0CC();
  __chkstk_darwin(v30);
  sub_100077EF8();
  v259 = v31;
  sub_100077EEC();
  v32 = type metadata accessor for HMTSolution.Article.ArticleType();
  sub_100008780();
  v256 = v33;
  __chkstk_darwin(v34);
  sub_100077C50();
  v284 = v35;
  sub_10002B0CC();
  __chkstk_darwin(v36);
  sub_100077EF8();
  v285 = v37;
  sub_100077EEC();
  type metadata accessor for HMTSolution.Article();
  sub_100008780();
  v287 = v38;
  v288 = v39;
  __chkstk_darwin(v38);
  sub_100077C50();
  v278 = v40;
  sub_10002B0CC();
  __chkstk_darwin(v41);
  sub_100077F40();
  v294 = v42;
  sub_10002B0CC();
  __chkstk_darwin(v43);
  sub_100077F40();
  v280 = v44;
  sub_10002B0CC();
  __chkstk_darwin(v45);
  sub_100077EF8();
  v286 = v46;
  sub_100077EEC();
  v250 = type metadata accessor for TriageRequest.HMTContext.UserSelection();
  sub_100008780();
  v277 = v47;
  __chkstk_darwin(v48);
  v249 = v246 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100077EEC();
  v301 = type metadata accessor for TriageRequest.HMTContext.SettingsGroup();
  sub_100008780();
  v290 = v50;
  __chkstk_darwin(v51);
  sub_100077C50();
  v300 = v52;
  sub_10002B0CC();
  __chkstk_darwin(v53);
  sub_100077EF8();
  v299 = v54;
  sub_100077EEC();
  v302 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent();
  sub_100008780();
  v282 = v55;
  __chkstk_darwin(v56);
  sub_100077C50();
  v298 = v57;
  sub_10002B0CC();
  __chkstk_darwin(v58);
  sub_100077EF8();
  v279 = v59;
  v60 = sub_100003768(&qword_10018D298, &qword_100128DC0);
  v61 = sub_10000ED84(v60);
  __chkstk_darwin(v61);
  sub_100077C50();
  v281 = v62;
  sub_10002B0CC();
  __chkstk_darwin(v63);
  sub_100077EF8();
  v296 = v64;
  v65 = sub_100077EEC();
  v272 = type metadata accessor for HandoffBundle(v65);
  v273 = a1;
  v66 = *(a1 + v272[6]);
  v67 = *(v66 + 16);
  v68 = _swiftEmptyArrayStorage;
  v289 = v32;
  v303 = v7;
  if (v67)
  {
    v291 = v13;
    *&v311[0] = _swiftEmptyArrayStorage;
    sub_1000780F4();
    v68 = *&v311[0];
    v297 = (v7 + 4);
    sub_100077DA4();
    v71 = sub_100075780(v69, v70, &protocol conformance descriptor for TriageRequest.HMTContext.UserAction);
    v295 = v71;
    v72 = v11;
    v73 = (v66 + 72);
    do
    {
      v292 = v68;
      v74 = *(v73 - 4);
      v75 = *(v73 - 3);
      v76 = *(v73 - 2);
      v77 = *(v73 - 8);
      v78 = *v73;
      v316[0] = *(v73 - 5);
      v316[1] = v74;
      v316[2] = v75;
      v316[3] = v76;
      v317 = v77;
      v318 = v78;
      __chkstk_darwin(v71);
      sub_100077FA0();
      *(v79 - 16) = v316;

      sub_100077FC0();

      v68 = v292;
      sub_1000780D4();
      if (v81)
      {
        sub_100077FF4(v80);
        v68 = *&v311[0];
      }

      v68[2] = v76;
      v7 = v303;
      sub_100077EAC();
      v71 = (v7[4])(v68 + v82 + v7[9] * v74, v72, v5);
      v73 += 6;
      --v67;
    }

    while (v67);
    v13 = v291;
  }

  v292 = v68;
  v83 = *(v273 + v272[7]);
  v84 = *(v83 + 16);
  if (v84)
  {
    *&v311[0] = _swiftEmptyArrayStorage;
    sub_1000780F4();
    v85 = *&v311[0];
    v297 = (v7 + 4);
    sub_100077DA4();
    v88 = sub_100075780(v86, v87, &protocol conformance descriptor for TriageRequest.HMTContext.UserAction);
    v295 = v88;
    v89 = (v83 + 72);
    do
    {
      v291 = v85;
      v7 = v246;
      v90 = *(v89 - 4);
      v91 = *(v89 - 3);
      v92 = *(v89 - 2);
      v93 = *(v89 - 8);
      v94 = *v89;
      v313[0] = *(v89 - 5);
      v313[1] = v90;
      v313[2] = v91;
      v313[3] = v92;
      v314 = v93;
      v315 = v94;
      __chkstk_darwin(v88);
      sub_100077FA0();
      *(v95 - 16) = v313;

      sub_100077FC0();

      v85 = v291;
      sub_1000780D4();
      if (v81)
      {
        sub_100077FF4(v96);
        v85 = *&v311[0];
      }

      v85[2] = v90;
      sub_100077EAC();
      v88 = (*(v98 + 32))(v85 + v97 + *(v98 + 72) * v92, v13, v5);
      v89 += 6;
      --v84;
    }

    while (v84);
  }

  else
  {
    v85 = _swiftEmptyArrayStorage;
  }

  v291 = v85;
  v310 = _swiftEmptyArrayStorage;
  v309 = _swiftEmptyArrayStorage;
  v308 = _swiftEmptyArrayStorage;
  v307 = _swiftEmptyArrayStorage;
  v99 = *(*(v273 + v272[8]) + 16);
  if (v99)
  {
    sub_100077F24();
    v276 = (v100 + 88);
    v275 = *v101;
    LODWORD(v263) = *v102;
    LODWORD(v262) = *v103;
    v255 = *v104;
    v274 = (v105 + 8);
    v247 = (v264 + 16);
    v248 = (v100 + 8);
    v246[1] = v264 + 32;
    v246[2] = v264 + 8;
    v253 = v271 + 8;
    v254 = v271 + 16;
    v252 = v271 + 32;
    v107 = v106 + 56;
    v261 = _swiftEmptyArrayStorage;
    v270 = _swiftEmptyArrayStorage;
    while (1)
    {
      v108 = *(v293 + 32);
      if (*(v108 + 16))
      {
        break;
      }

LABEL_23:
      v107 += 32;
      if (!--v99)
      {
        goto LABEL_43;
      }
    }

    sub_100078030();

    v109 = sub_100083754(v7, v84);
    if (v110)
    {
      v112 = v287;
      v111 = v288;
      v113 = v278;
      (v288[2])(v278, *(v108 + 56) + v288[9] * v109, v287);

      v114 = v294;
      (v111[4])(v294, v113, v112);
      v115 = v284;
      HMTSolution.Article.type.getter();
      v116 = (*v276)(v115, v289);
      if (v116 != v275)
      {
        if (v116 == v263 || v116 == v262)
        {
          __chkstk_darwin(v116);
          sub_100077DF0(v246);
          *(v118 - 16) = v114;
          sub_100077D5C();
          v120 = sub_100075780(&qword_10018D2D0, v119, &protocol conformance descriptor for TriageRequest.HMTContext.Article);
          sub_100078144(sub_100077C14, &v246[-8], v121, v120);

          sub_100078074();
          v122();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100077CBC();
            sub_1000D063C();
            v270 = v137;
          }

          sub_100077DE0();
          if (v81)
          {
            sub_100077C78(v123);
            sub_1000D063C();
            v270 = v138;
          }

          v7 = v271;
          v124 = v283;
          (*(v271 + 8))(v265, v283);
          v84 = v270;
          v125 = sub_100077C2C();
          v126(v125, v266, v124);
          v310 = v84;
          goto LABEL_41;
        }

        if (v116 == v255)
        {
          __chkstk_darwin(v116);
          sub_100077DF0(v246);
          *(v127 - 16) = v114;
          sub_100077D44();
          v129 = sub_100075780(&qword_10018D2C8, v128, &protocol conformance descriptor for TriageRequest.HMTContext.BCSArticle);
          v130 = v257;
          v131 = v267;
          sub_100078144(sub_100077BFC, &v246[-8], v132, v129);

          (*v247)(v258, v130, v131);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100077CBC();
            sub_1000D0564();
            v261 = v139;
          }

          sub_100077DE0();
          if (v81)
          {
            sub_100077C78(v133);
            sub_1000D0564();
            v261 = v140;
          }

          v7 = v264;
          v134 = v267;
          (*(v264 + 8))(v257, v267);
          v84 = v261;
          v135 = sub_100077C2C();
          v136(v135, v258, v134);
          v308 = v84;
LABEL_41:
          (*v274)(v294, v287);
          goto LABEL_23;
        }

        (*v274)(v114, v287);

        (*v248)(v284, v289);
        goto LABEL_22;
      }

      (*v274)(v114, v112);
    }

    else
    {
    }

LABEL_22:
    v4 = v303;
    goto LABEL_23;
  }

LABEL_43:
  v141 = *(*(v273 + v272[9]) + 16);
  if (v141)
  {
    sub_100077F24();
    v294 = (v142 + 88);
    LODWORD(v284) = enum case for HMTSolution.Article.ArticleType.unknown(_:);
    v275 = enum case for HMTSolution.Article.ArticleType.support(_:);
    LODWORD(v274) = enum case for HMTSolution.Article.ArticleType.userGuide(_:);
    LODWORD(v266) = enum case for HMTSolution.Article.ArticleType.apple(_:);
    v278 = (v143 + 8);
    v258 = (v264 + 16);
    v256 = v264 + 32;
    v257 = v264 + 8;
    v265 = v271 + 16;
    v263 = v271 + 8;
    v261 = (v142 + 8);
    v262 = v271 + 32;
    v145 = v144 + 56;
    v270 = _swiftEmptyArrayStorage;
    v276 = _swiftEmptyArrayStorage;
    v146 = v287;
    do
    {
      v147 = *(v293 + 32);
      if (*(v147 + 16))
      {
        sub_100078030();

        v148 = sub_100083754(v7, v84);
        if (v149)
        {
          v150 = v288;
          v151 = v280;
          (v288[2])(v280, *(v147 + 56) + v288[9] * v148, v146);

          v152 = v286;
          (v150[4])(v286, v151, v146);
          v153 = v146;
          v154 = v285;
          HMTSolution.Article.type.getter();
          v155 = (*v294)(v154, v289);
          if (v155 == v284)
          {
            (*v278)(v152, v153);

            v146 = v153;
          }

          else
          {
            if (v155 == v275 || v155 == v274)
            {
              __chkstk_darwin(v155);
              sub_100077DF0(v246);
              *(v157 - 16) = v286;
              sub_100077D5C();
              v159 = sub_100075780(&qword_10018D2D0, v158, &protocol conformance descriptor for TriageRequest.HMTContext.Article);
              sub_100078144(sub_1000756A0, &v246[-8], v160, v159);

              sub_100078074();
              v161();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v146 = v287;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_100077CBC();
                sub_1000D063C();
                v276 = v178;
              }

              sub_100077DE0();
              if (v81)
              {
                sub_100077C78(v163);
                sub_1000D063C();
                v276 = v179;
              }

              v7 = v271;
              v164 = v283;
              (*(v271 + 8))(v268, v283);
              v84 = v276;
              v165 = sub_100077C2C();
              v166(v165, v269, v164);
              v309 = v84;
              goto LABEL_70;
            }

            v146 = v287;
            if (v155 == v266)
            {
              __chkstk_darwin(v286);
              sub_100077DF0(v246);
              *(v168 - 16) = v167;
              sub_100077D44();
              v170 = sub_100075780(&qword_10018D2C8, v169, &protocol conformance descriptor for TriageRequest.HMTContext.BCSArticle);
              v171 = v259;
              v172 = v267;
              sub_100078144(sub_100075638, &v246[-8], v173, v170);

              (*v258)(v260, v171, v172);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_100077CBC();
                sub_1000D0564();
                v270 = v180;
              }

              sub_100077DE0();
              if (v81)
              {
                sub_100077C78(v174);
                sub_1000D0564();
                v270 = v181;
              }

              v7 = v264;
              v175 = v267;
              (*(v264 + 8))(v259, v267);
              v84 = v270;
              v176 = sub_100077C2C();
              v177(v176, v260, v175);
              v307 = v84;
LABEL_70:
              (*v278)(v286, v146);
              goto LABEL_51;
            }

            (*v278)(v286, v287);

            (*v261)(v285, v289);
          }
        }

        else
        {
        }

        v4 = v303;
      }

LABEL_51:
      v145 += 32;
      --v141;
    }

    while (v141);
  }

  v183 = v272;
  v182 = v273;
  v184 = sub_100074238(*(v273 + v272[10]));
  result = sub_100074238(*(v182 + v183[11]));
  v289 = result;
  v186 = 0;
  v188 = v184 + 8;
  v187 = v184[8];
  v280 = v184;
  v189 = 1 << *(v184 + 32);
  v190 = _swiftEmptyArrayStorage;
  v306 = _swiftEmptyArrayStorage;
  v191 = -1;
  if (v189 < 64)
  {
    v191 = ~(-1 << v189);
  }

  v192 = v191 & v187;
  v193 = (v189 + 63) >> 6;
  v194 = v281;
  v278 = (v282 + 16);
  v295 = (v282 + 32);
  v286 = (v290 + 16);
  v287 = v193;
  v284 = v290 + 32;
  v285 = v290 + 8;
  v283 = (v282 + 8);
  v288 = v184 + 8;
  while (1)
  {
    v195 = v296;
    v297 = v190;
    if (!v192)
    {
      break;
    }

    v303 = v4;
    v196 = v186;
LABEL_80:
    v197 = __clz(__rbit64(v192));
    v192 &= v192 - 1;
    v198 = v197 | (v196 << 6);
    v199 = v279;
    v200 = v280[7];
    v201 = v280[6] + 16 * v198;
    v202 = *(v201 + 8);
    v294 = *v201;
    v203 = v282;
    v204 = v302;
    (*(v282 + 16))(v279, v200 + *(v282 + 72) * v198, v302);
    v205 = sub_100003768(&qword_10018D2A8, &qword_100128DC8);
    v206 = *(v205 + 48);
    v207 = v281;
    *v281 = v294;
    *(v207 + 1) = v202;
    v208 = v199;
    v194 = v207;
    (*(v203 + 32))(&v207[v206], v208, v204);
    sub_100003CE8(v194, 0, 1, v205);

    v195 = v296;
    v4 = v303;
LABEL_81:
    sub_1000754A8(v194, v195);
    v209 = sub_100003768(&qword_10018D2A8, &qword_100128DC8);
    if (sub_10000E5F0(v195, 1, v209) == 1)
    {

      v229 = *(v273 + v272[12]);
      v230 = *(v229 + 16);
      v231 = _swiftEmptyArrayStorage;
      if (v230)
      {
        v305 = _swiftEmptyArrayStorage;
        sub_1000D11CC(0, v230, 0);
        v231 = v305;
        v233 = (v229 + 32);
        v303 = (v277 + 32);
        v235 = v249;
        v234 = v250;
        do
        {
          v236 = *v233;
          v237 = v233[1];
          v238 = v233[2];
          v312 = *(v233 + 6);
          v311[1] = v237;
          v311[2] = v238;
          v311[0] = v236;
          __chkstk_darwin(v232);
          sub_100077FA0();
          *(v239 - 16) = v311;
          sub_100075534(v311, &v304);
          sub_100075780(&qword_10018D2B0, &type metadata accessor for TriageRequest.HMTContext.UserSelection, &protocol conformance descriptor for TriageRequest.HMTContext.UserSelection);
          static Message.with(_:)();
          sub_100075590(v311);
          v305 = v231;
          v241 = v231[2];
          v240 = v231[3];
          if (v241 >= v240 >> 1)
          {
            sub_1000D11CC(v240 > 1, v241 + 1, 1);
            v231 = v305;
          }

          v231[2] = (v241 + 1);
          sub_100077EAC();
          v232 = (*(v243 + 32))(v231 + v242 + *(v243 + 72) * v241, v235, v234);
          v233 = (v233 + 56);
          --v230;
        }

        while (v230);
      }

      v244 = type metadata accessor for TriageRequest.HMTContext();
      __chkstk_darwin(v244);
      v245 = v291;
      v246[-8] = v292;
      v246[-7] = v245;
      v246[-6] = &v310;
      v246[-5] = &v309;
      v246[-4] = &v308;
      v246[-3] = &v307;
      v246[-2] = &v306;
      v246[-1] = v231;
      sub_100075780(&qword_10018D2B8, &type metadata accessor for TriageRequest.HMTContext, &protocol conformance descriptor for TriageRequest.HMTContext);
      static Message.with(_:)();
    }

    v210 = v195;
    v212 = *v195;
    v211 = v195[1];
    v213 = v298;
    v214 = (*v295)(v298, v210 + *(v209 + 48), v302);
    __chkstk_darwin(v214);
    v246[-4] = v212;
    v246[-3] = v211;
    v215 = v289;
    v246[-2] = v213;
    v246[-1] = v215;
    sub_100075780(&qword_10018D2C0, &type metadata accessor for TriageRequest.HMTContext.SettingsGroup, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsGroup);
    v216 = v299;
    v217 = v301;
    static Message.with(_:)();

    (*v286)(v300, v216, v217);
    v218 = v297;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100077CBC();
      sub_1000D048C();
      v218 = v227;
    }

    v219 = v194;
    v221 = v218[2];
    v220 = v218[3];
    if (v221 >= v220 >> 1)
    {
      sub_100077C78(v220);
      sub_1000D048C();
      v222 = v228;
    }

    else
    {
      v222 = v218;
    }

    v223 = v290;
    v224 = v301;
    (*(v290 + 8))(v299, v301);
    v222[2] = (v221 + 1);
    sub_100077EAC();
    v190 = v222;
    (*(v223 + 32))(v222 + v225 + *(v223 + 72) * v221, v300, v224);
    v306 = v222;
    result = (*v283)(v298, v302);
    v193 = v287;
    v188 = v288;
    v194 = v219;
  }

  while (1)
  {
    v196 = v186 + 1;
    if (__OFADD__(v186, 1))
    {
      break;
    }

    if (v196 >= v193)
    {
      v226 = sub_100003768(&qword_10018D2A8, &qword_100128DC8);
      sub_100003CE8(v194, 1, 1, v226);
      v192 = 0;
      goto LABEL_81;
    }

    v192 = v188[v196];
    ++v186;
    if (v192)
    {
      v303 = v4;
      v186 = v196;
      goto LABEL_80;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100071D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  v5 = type metadata accessor for ContactType();
  v4[26] = v5;
  sub_100052F6C(v5);
  v4[27] = v6;
  v4[28] = sub_100052FA4();
  v7 = type metadata accessor for Logger();
  v4[29] = v7;
  sub_100052F6C(v7);
  v4[30] = v8;
  v4[31] = sub_100052FA4();
  v9 = type metadata accessor for UUID();
  v4[32] = v9;
  sub_100052F6C(v9);
  v4[33] = v10;
  v4[34] = sub_100052FA4();
  v11 = type metadata accessor for DeviceExpertTroubleshooting.UserSelection();
  v4[35] = v11;
  sub_100052F6C(v11);
  v4[36] = v12;
  v4[37] = sub_100052FA4();
  v13 = type metadata accessor for DeviceExpertTroubleshooting.Setting();
  v4[38] = v13;
  sub_100052F6C(v13);
  v4[39] = v14;
  v4[40] = sub_100052FA4();
  v15 = type metadata accessor for DeviceExpertTroubleshooting.Article();
  v4[41] = v15;
  sub_100052F6C(v15);
  v4[42] = v16;
  v4[43] = sub_100052FA4();
  v17 = type metadata accessor for Date();
  v4[44] = v17;
  sub_100052F6C(v17);
  v4[45] = v18;
  v4[46] = sub_100052FA4();
  v19 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  sub_10000ED84(v19);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v20 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v4[51] = v20;
  sub_100052F6C(v20);
  v4[52] = v21;
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v22 = type metadata accessor for DeviceExpertTroubleshooting.Action();
  v4[59] = v22;
  sub_100052F6C(v22);
  v4[60] = v23;
  v4[61] = sub_100052FA4();
  v24 = type metadata accessor for DeviceExpertTroubleshooting.Entity();
  v4[62] = v24;
  sub_100052F6C(v24);
  v4[63] = v25;
  v4[64] = sub_100052FA4();
  v26 = type metadata accessor for DeviceExpertTroubleshooting.Interaction();
  v4[65] = v26;
  sub_100052F6C(v26);
  v4[66] = v27;
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v28 = type metadata accessor for DeviceExpertTroubleshooting();
  v4[72] = v28;
  sub_100052F6C(v28);
  v4[73] = v29;
  v4[74] = sub_100052FA4();
  v30 = sub_100003768(&qword_10018D300, &qword_100128DE8);
  sub_10000ED84(v30);
  v4[75] = sub_100052FA4();
  v31 = sub_100003768(&qword_10018D308, &qword_100128DF0);
  v4[76] = v31;
  sub_100052F6C(v31);
  v4[77] = v32;
  v4[78] = sub_100052FA4();
  v33 = sub_100003768(&qword_10018D310, &qword_100128DF8);
  v4[79] = v33;
  sub_100052F6C(v33);
  v4[80] = v34;
  v4[81] = sub_100052FA4();

  return _swift_task_switch(sub_1000722C8, 0, 0);
}

uint64_t sub_1000722C8()
{
  v1 = *(v0 + 184);
  sub_100077CF4();
  v17 = Dictionary.init(dictionaryLiteral:)();
  sub_100077CF4();
  v16 = Dictionary.init(dictionaryLiteral:)();
  v2 = sub_100077CF4();
  v15 = sub_10007812C(v2);
  v3 = sub_100077CF4();
  v14 = sub_10007812C(v3);
  v4 = sub_100077CF4();
  v5 = sub_10007812C(v4);
  v6 = sub_100077CF4();
  v7 = sub_10007812C(v6);
  sub_100077CF4();
  v8 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 96) = v1;
  sub_100003768(&qword_10018D318, &qword_100128E00);
  sub_10000AAEC(&qword_10018D320, &qword_10018D318, &qword_100128E00, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.values.getter();
  AsyncThrowingPublisher.makeAsyncIterator()();
  v9 = sub_100077DD4();
  v10(v9);
  *(v0 + 784) = enum case for DeviceExpertTroubleshooting.Entity.action(_:);
  *(v0 + 788) = enum case for DeviceExpertTroubleshooting.Entity.article(_:);
  *(v0 + 792) = enum case for DeviceExpertTroubleshooting.Entity.setting(_:);
  *(v0 + 796) = enum case for DeviceExpertTroubleshooting.Entity.selection(_:);
  *(v0 + 800) = enum case for DeviceExpertTroubleshooting.ActionType.suggested(_:);
  *(v0 + 760) = v17;
  *(v0 + 752) = v16;
  *(v0 + 744) = v15;
  *(v0 + 736) = v14;
  *(v0 + 728) = v5;
  *(v0 + 720) = v7;
  *(v0 + 712) = v8;
  *(v0 + 704) = v17;
  *(v0 + 696) = v16;
  *(v0 + 688) = v15;
  *(v0 + 680) = v8;
  *(v0 + 672) = v7;
  *(v0 + 664) = v5;
  *(v0 + 656) = v14;
  sub_100077E00(&qword_10018D328, &qword_10018D310, &qword_100128DF8);
  v11 = swift_task_alloc();
  *(v0 + 768) = v11;
  *v11 = v0;
  v12 = sub_100077D00(v11);

  return dispatch thunk of AsyncIteratorProtocol.next()(v12);
}

uint64_t sub_10007254C()
{
  *(*v1 + 776) = v0;

  if (v0)
  {
    v2 = sub_100073F44;
  }

  else
  {
    v2 = sub_100072660;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100072660()
{
  v330 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 576);
  if (sub_10000E5F0(v1, 1, v2) == 1)
  {
    (*(*(v0 + 640) + 8))(*(v0 + 648), *(v0 + 632));
    static Logger.supportFlowApp.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Biome stream read finished", v5, 2u);
    }

    v6 = *(v0 + 776);
    v7 = *(v0 + 248);
    v8 = *(v0 + 232);
    v9 = *(v0 + 240);
    v10 = v3;
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    v13 = *(v0 + 208);
    v14 = *(v0 + 192);

    (*(v9 + 8))(v7, v8);
    (*(v11 + 16))(v12, v14, v13);

    sub_100077DBC();
    v17 = sub_1000704B4(v15, v16, sub_1000779F8);
    sub_100078018(v17);
    sub_1000758C0(v329);
    if (!v6)
    {

      v18 = v329[0];

      sub_100077DBC();
      v21 = sub_1000704B4(v19, v20, sub_1000779F8);
      sub_100078018(v21);
      sub_1000758C0(v329);

      v22 = v329[0];

      v24 = sub_100077E68(v23);
      sub_100078018(v24);
      sub_100077D8C();
      sub_100075834(v329, v25, v26, sub_1000D1EFC);

      v27 = v329[0];

      v29 = sub_100077E68(v28);
      sub_100078018(v29);
      sub_100077D8C();
      sub_100075834(v329, v30, v31, sub_1000D1EFC);

      v32 = v329[0];

      v34 = sub_100077E34(v33);
      sub_100078018(v34);
      sub_100077D74();
      sub_100075834(v329, v35, v36, sub_1000D1EFC);

      v37 = v329[0];

      v39 = sub_100077E34(v38);
      sub_100078018(v39);
      sub_100077D74();
      sub_100075834(v329, v40, v41, sub_1000D1EFC);

      v42 = v329[0];

      v329[0] = sub_1000704B4(v43, sub_1000D0EBC, sub_1000776E4);

      sub_1000757C8(v329);
      v299 = v0;
      v302 = v0 + 216;
      v301 = *(v0 + 216);
      v300 = *(v302 + 8);
      v310 = v42;
      v311 = v37;
      v303 = v299[26];
      v308 = v299[25];
      v304 = v299[22];

      v309 = v329[0];
      (*(v301 + 32))(v304, v300, v303);
      sub_10007592C(v308, (v299 + 2));

      v305 = type metadata accessor for HandoffBundle(0);
      memcpy((v304 + v305[5]), v308, 0x50uLL);
      *(v304 + v305[6]) = v18;
      *(v304 + v305[7]) = v22;
      *(v304 + v305[8]) = v27;
      *(v304 + v305[9]) = v32;
      *(v304 + v305[10]) = v311;
      *(v304 + v305[11]) = v310;
      *(v304 + v305[12]) = v309;

      sub_100077F04();

      __asm { BRAA            X1, X16 }
    }

    sub_100077F04();
    return;
  }

  v323 = *(v0 + 784);
  v44 = *(v0 + 568);
  v45 = *(v0 + 528);
  v46 = *(v0 + 520);
  v48 = *(v0 + 504);
  v47 = *(v0 + 512);
  v49 = *(v0 + 496);
  (*(*(v0 + 584) + 32))(*(v0 + 592), v1, v2);
  DeviceExpertTroubleshooting.interaction.getter();
  DeviceExpertTroubleshooting.Interaction.entity.getter();
  v52 = *(v45 + 8);
  v51 = v45 + 8;
  v50 = v52;
  v52(v44, v46);
  v53 = (*(v48 + 88))(v47, v49);
  if (v53 != v323)
  {
    if (v53 != *(v0 + 788))
    {
      if (v53 != *(v0 + 792))
      {
        if (v53 != *(v0 + 796))
        {
          v223 = *(v0 + 504);
          (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));
          v107 = v223 + 8;
          v224 = sub_100077FE8();
          v225(v224);
          sub_100077CCC();
          sub_100077F68();
          sub_100077CA4();
          v102 = *(v0 + 672);
          v100 = *(v0 + 664);
          goto LABEL_111;
        }

        v149 = *(v0 + 288);
        v148 = *(v0 + 296);
        v150 = *(v0 + 280);
        (*(*(v0 + 504) + 96))(*(v0 + 512), *(v0 + 496));
        v151 = swift_projectBox();
        (*(v149 + 16))(v148, v151, v150);
        v152 = DeviceExpertTroubleshooting.step.getter();
        if (v153)
        {
          v154 = v152;
          v155 = v153;
        }

        else
        {
          UUID.init()();
          v154 = UUID.uuidString.getter();
          v155 = v261;
          v262 = sub_100077CF4();
          v263(v262);
        }

        DeviceExpertTroubleshooting.UserSelection.question.getter();
        DeviceExpertTroubleshooting.UserSelection.answer.getter();
        DeviceExpertTroubleshooting.writeTimestamp.getter();
        sub_1000780A0();
        if (sub_10000E5F0(v264, v265, v266) == 1)
        {
          sub_10001D724(*(v0 + 376), &qword_10018C850, &qword_1001277D0);
          Date.init()();
        }

        v267 = *(v0 + 680);
        Date.timeIntervalSince1970.getter();
        v268 = sub_100077CF4();
        v269(v268);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 112) = v267;
        v271 = sub_100077DD4();
        v96 = sub_100083754(v271, v272);
        v274 = *(v267 + 16);
        v275 = (v273 & 1) == 0;
        v276 = v274 + v275;
        if (__OFADD__(v274, v275))
        {
          goto LABEL_126;
        }

        v277 = v96;
        v278 = v273;
        sub_100003768(&qword_10018D338, &qword_100128E08);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v276))
        {
          v279 = sub_100077DD4();
          v281 = sub_100083754(v279, v280);
          if ((v278 & 1) != (v282 & 1))
          {
            goto LABEL_96;
          }

          v277 = v281;
        }

        v49 = *(v0 + 112);
        if (v278)
        {
          sub_100077F74((*(v49 + 56) + 56 * v277));
        }

        else
        {
          sub_100077E8C(v49 + 8 * (v277 >> 6));
          v285 = (*(v49 + 48) + 16 * v277);
          *v285 = v154;
          v285[1] = v155;
          sub_100077F74((*(v49 + 56) + 56 * v277));
          v286 = *(v49 + 16);
          v168 = __OFADD__(v286, 1);
          v287 = v286 + 1;
          if (v168)
          {
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }

          *(v49 + 16) = v287;
        }

        sub_100077D34();
        (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
        v288 = sub_100077CF4();
        v289(v288);

        sub_100077CCC();
        sub_100077F68();
        v107 = *(v0 + 704);
        v47 = *(v0 + 696);
        v51 = *(v0 + 688);
        v102 = *(v0 + 672);
        v100 = *(v0 + 664);
        v176 = v49;
        goto LABEL_111;
      }

      v110 = *(v0 + 312);
      v109 = *(v0 + 320);
      v111 = *(v0 + 304);
      (*(*(v0 + 504) + 96))(*(v0 + 512), *(v0 + 496));
      v112 = swift_projectBox();
      (*(v110 + 16))(v109, v112, v111);
      v107 = DeviceExpertTroubleshooting.Setting.settingId.getter();
      v114 = v113;
      DeviceExpertTroubleshooting.Setting.value.getter();
      v115 = String._bridgeToObjectiveC()();

      v328 = [v115 BOOLValue];

      DeviceExpertTroubleshooting.writeTimestamp.getter();
      sub_1000780A0();
      if (sub_10000E5F0(v116, v117, v118) == 1)
      {
        sub_10001D724(*(v0 + 384), &qword_10018C850, &qword_1001277D0);
        Date.init()();
      }

      v189 = *(v0 + 728);
      Date.timeIntervalSince1970.getter();
      v191 = v190;
      v192 = sub_100077CF4();
      v193(v192);
      v194 = *(v189 + 16);

      if (v194)
      {
        v195 = sub_100077DD4();
        sub_100083754(v195, v196);
        if (v197)
        {
          v198 = *(v0 + 672);
          v51 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 136) = v198;
          v199 = sub_100077DD4();
          sub_100083754(v199, v200);
          sub_100052F7C();
          v204 = v202 + v203;
          if (__OFADD__(v202, v203))
          {
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          v47 = v96;
          v49 = v201;
          sub_100003768(&qword_10018D340, &qword_100128E10);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v51, v204))
          {
            v205 = sub_100077DD4();
            sub_100083754(v205, v206);
            sub_100077FB0();
            v208 = v328;
            if (!v147)
            {
              goto LABEL_96;
            }

            v47 = v207;
          }

          else
          {
            v208 = v328;
          }

          v102 = *(v0 + 136);
          if (v49)
          {
            v284 = *(v102 + 56) + 32 * v47;
            *v284 = v107;
            *(v284 + 8) = v114;
            *(v284 + 16) = v208;
            *(v284 + 24) = v191;
          }

          else
          {
            sub_100077E8C(v102 + 8 * (v47 >> 6));
            v290 = (*(v102 + 48) + 16 * v47);
            *v290 = v107;
            v290[1] = v114;
            v291 = *(v102 + 56) + 32 * v47;
            *v291 = v107;
            *(v291 + 8) = v114;
            *(v291 + 16) = v292;
            *(v291 + 24) = v191;
            v293 = *(v102 + 16);
            v168 = __OFADD__(v293, 1);
            v294 = v293 + 1;
            if (v168)
            {
LABEL_133:
              __break(1u);
_$sScI4next7ElementQzSgyYaKFTj:
              dispatch thunk of AsyncIteratorProtocol.next()(v96);
              return;
            }

            *(v102 + 16) = v294;
          }

          sub_100077D34();
          (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
          v295 = sub_100077CF4();
          v296(v295);

          sub_100077CCC();
          sub_100077CA4();
          v100 = *(v0 + 664);
          v177 = v102;
          goto LABEL_111;
        }
      }

      v209 = *(v0 + 664);

      v210 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 120) = v209;
      v211 = sub_100077DD4();
      sub_100083754(v211, v212);
      sub_100052F7C();
      v216 = v214 + v215;
      if (__OFADD__(v214, v215))
      {
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v217 = v96;
      v218 = v213;
      v47 = sub_100003768(&qword_10018D340, &qword_100128E10);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v210, v216))
      {
        v219 = sub_100077DD4();
        v221 = sub_100083754(v219, v220);
        if ((v218 & 1) != (v222 & 1))
        {
          goto LABEL_96;
        }

        v217 = v221;
      }

      v100 = *(v0 + 120);
      if (v218)
      {
        sub_100077E9C(v100[7] + 32 * v217);
      }

      else
      {
        sub_100077E8C(&v100[v217 >> 6]);
        v242 = (v100[6] + 16 * v217);
        *v242 = v107;
        v242[1] = v114;
        sub_100077E9C(v100[7] + 32 * v217);
        v243 = v100[2];
        v168 = __OFADD__(v243, 1);
        v244 = v243 + 1;
        if (v168)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v100[2] = v244;
      }

      v245 = *(v0 + 672);
      v246 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 128) = v245;
      v247 = sub_100077DD4();
      sub_100083754(v247, v248);
      v51 = v249;
      sub_100052F7C();
      if (__OFADD__(v250, v251))
      {
        goto LABEL_125;
      }

      v49 = v96;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v246, v250 + v251))
      {
        v252 = sub_100077DD4();
        v254 = sub_100083754(v252, v253);
        if ((v51 & 1) != (v255 & 1))
        {
          goto LABEL_96;
        }

        v49 = v254;
      }

      v102 = *(v0 + 128);
      if (v51)
      {
        sub_100077E9C(*(v102 + 56) + 32 * v49);
      }

      else
      {
        sub_100077E8C(v102 + 8 * (v49 >> 6));
        v256 = (*(v102 + 48) + 16 * v49);
        *v256 = v107;
        v256[1] = v114;
        sub_100077E9C(*(v102 + 56) + 32 * v49);
        v257 = *(v102 + 16);
        v168 = __OFADD__(v257, 1);
        v258 = v257 + 1;
        if (v168)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        *(v102 + 16) = v258;
      }

      sub_100077D34();
      (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
      v259 = sub_100077CF4();
      v260(v259);

      sub_100077CCC();
      sub_100077CA4();
      v177 = v102;
      v175 = v100;
      goto LABEL_111;
    }

    v322 = *(v0 + 800);
    v69 = *(v0 + 544);
    v326 = *(v0 + 520);
    v70 = *(v0 + 440);
    v316 = *(v0 + 432);
    v71 = *(v0 + 408);
    v72 = *(v0 + 416);
    v74 = *(v0 + 336);
    v73 = *(v0 + 344);
    v75 = *(v0 + 328);
    (*(*(v0 + 504) + 96))(*(v0 + 512), *(v0 + 496));
    v76 = swift_projectBox();
    (*(v74 + 16))(v73, v76, v75);
    v318 = DeviceExpertTroubleshooting.Article.articleId.getter();
    v320 = v77;
    DeviceExpertTroubleshooting.interaction.getter();
    DeviceExpertTroubleshooting.Interaction.type.getter();
    v78 = v326;
    v327 = v50;
    v50(v69, v78);
    (*(v72 + 32))(v316, v70, v71);
    v79 = sub_100077CF4();
    v314 = v80;
    if ((v80)(v79) != v322)
    {
      (*(*(v0 + 416) + 8))(*(v0 + 432), *(v0 + 408));
    }

    DeviceExpertTroubleshooting.writeTimestamp.getter();
    sub_1000780A0();
    if (sub_10000E5F0(v81, v82, v83) == 1)
    {
      v84 = (v0 + 368);
      sub_10001D724(*(v0 + 392), &qword_10018C850, &qword_1001277D0);
      Date.init()();
    }

    else
    {
      v84 = (v0 + 392);
    }

    v133 = *v84;
    v107 = *(v0 + 800);
    v134 = *(v0 + 536);
    v135 = *(v0 + 520);
    v136 = *(v0 + 424);
    v137 = *(v0 + 408);
    v139 = *(v0 + 352);
    v138 = *(v0 + 360);
    Date.timeIntervalSince1970.getter();
    (*(v138 + 8))(v133, v139);
    v100 = v320;

    DeviceExpertTroubleshooting.interaction.getter();
    DeviceExpertTroubleshooting.Interaction.type.getter();
    v327(v134, v135);
    if (v314(v136, v137) != v107)
    {
      v156 = *(v0 + 656);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 144) = v156;
      sub_100078114();
      sub_100052F7C();
      v160 = v158 + v159;
      if (!__OFADD__(v158, v159))
      {
        v161 = v96;
        v162 = v157;
        sub_100003768(&qword_10018D348, &qword_100128E18);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v51, v160))
        {
          sub_100078114();
          sub_100077FB0();
          if (!v147)
          {
            goto LABEL_96;
          }

          v161 = v163;
        }

        v164 = *(v0 + 144);
        if (v162)
        {
          sub_100077EB8(v164[7]);
        }

        else
        {
          sub_100077C64();
          sub_100077E58();
          v232 = (v164[6] + 16 * v161);
          *v232 = v318;
          v232[1] = v320;
          sub_100078054(v233);
          v234 = v164[2];
          v168 = __OFADD__(v234, 1);
          v235 = v234 + 1;
          if (v168)
          {
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          v164[2] = v235;
        }

        v236 = *(v0 + 584);
        v238 = *(v0 + 416);
        v237 = *(v0 + 424);
        v107 = *(v0 + 408);
        (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
        v47 = v236 + 8;
        v239 = sub_100077CF4();
        v240(v239);
        v241 = *(v238 + 8);
        v49 = v238 + 8;
        v241(v237, v107);

        sub_100077F68();
        sub_100077CA4();
        v102 = *(v0 + 672);
        v174 = v164;
        v100 = *(v0 + 664);
        goto LABEL_112;
      }

LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v140 = *(v0 + 688);
    v141 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 152) = v140;
    sub_100078114();
    sub_100052F7C();
    v102 = v143 + v144;
    if (!__OFADD__(v143, v144))
    {
      v145 = v96;
      v49 = v142;
      sub_100003768(&qword_10018D348, &qword_100128E18);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v141, v102))
      {
        sub_100078114();
        sub_100077FB0();
        if (!v147)
        {
          goto LABEL_96;
        }

        v145 = v146;
      }

      v51 = *(v0 + 152);
      if (v49)
      {
        sub_100077EB8(*(v51 + 56));
      }

      else
      {
        sub_100077C64();
        sub_100077E58();
        v226 = (*(v51 + 48) + 16 * v145);
        *v226 = v318;
        v226[1] = v320;
        sub_100078054(v227);
        v228 = *(v51 + 16);
        v168 = __OFADD__(v228, 1);
        v229 = v228 + 1;
        if (v168)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        *(v51 + 16) = v229;
      }

      sub_100077D34();
      (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
      v230 = sub_100077CF4();
      v231(v230);

      sub_100077CE0();
      v47 = *(v0 + 696);
      sub_100077E24();
      v173 = v51;
      goto LABEL_111;
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v321 = *(v0 + 800);
  v54 = *(v0 + 560);
  v324 = *(v0 + 520);
  v55 = *(v0 + 488);
  v56 = *(v0 + 472);
  v57 = *(v0 + 480);
  v58 = *(v0 + 464);
  v315 = *(v0 + 456);
  v59 = *(v0 + 416);
  v312 = *(v0 + 408);
  (*(*(v0 + 504) + 96))(*(v0 + 512), *(v0 + 496));
  v60 = swift_projectBox();
  (*(v57 + 16))(v55, v60, v56);
  v317 = DeviceExpertTroubleshooting.Action.actionId.getter();
  v62 = v61;
  DeviceExpertTroubleshooting.Action.title.getter();
  DeviceExpertTroubleshooting.interaction.getter();
  DeviceExpertTroubleshooting.Interaction.type.getter();
  v63 = v324;
  v325 = v50;
  v50(v54, v63);
  (*(v59 + 32))(v315, v58, v312);
  v64 = sub_100077CF4();
  v313 = v65;
  if ((v65)(v64) != v321)
  {
    (*(*(v0 + 416) + 8))(*(v0 + 456), *(v0 + 408));
  }

  v66 = *(v0 + 400);
  v67 = *(v0 + 352);
  DeviceExpertTroubleshooting.writeTimestamp.getter();
  v319 = v62;
  if (sub_10000E5F0(v66, 1, v67) == 1)
  {
    v68 = (v0 + 368);
    sub_10001D724(*(v0 + 400), &qword_10018C850, &qword_1001277D0);
    Date.init()();
  }

  else
  {
    v68 = (v0 + 400);
  }

  v85 = *v68;
  v49 = *(v0 + 800);
  v86 = *(v0 + 552);
  v87 = *(v0 + 520);
  v88 = *(v0 + 448);
  v89 = *(v0 + 408);
  v91 = *(v0 + 352);
  v90 = *(v0 + 360);
  Date.timeIntervalSince1970.getter();
  (*(v90 + 8))(v85, v91);

  DeviceExpertTroubleshooting.interaction.getter();
  DeviceExpertTroubleshooting.Interaction.type.getter();
  v325(v86, v87);
  if (v313(v88, v89) != v49)
  {
    v119 = *(v0 + 696);
    v120 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 160) = v119;
    v121 = sub_100077FE8();
    sub_100083754(v121, v122);
    sub_100052F7C();
    v126 = v124 + v125;
    if (!__OFADD__(v124, v125))
    {
      v127 = v96;
      v102 = v123;
      sub_100003768(&qword_10018D350, &unk_100128E20);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v120, v126))
      {
        v128 = sub_100077FE8();
        v130 = sub_100083754(v128, v129);
        if ((v102 & 1) != (v131 & 1))
        {
          goto LABEL_96;
        }

        v127 = v130;
      }

      v47 = *(v0 + 160);
      if (v102)
      {
        sub_100077C64();
        sub_100078068();
        sub_100077C8C(v132);
      }

      else
      {
        sub_100077C64();
        sub_100077E58();
        v179 = (*(v47 + 48) + 16 * v127);
        *v179 = v317;
        v179[1] = v319;
        sub_100078068();
        sub_100077C8C(v180);
        v181 = *(v47 + 16);
        v168 = __OFADD__(v181, 1);
        v182 = v181 + 1;
        if (v168)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        *(v47 + 16) = v182;
      }

      v183 = *(v0 + 584);
      v184 = *(v0 + 448);
      v107 = *(v0 + 408);
      v185 = *(v0 + 416);
      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
      v100 = (v183 + 8);
      v186 = sub_100077CF4();
      v187(v186);
      v188 = *(v185 + 8);
      v49 = v185 + 8;
      v188(v184, v107);

      sub_100077CE0();
      v51 = *(v0 + 688);
      sub_100077E24();
      v172 = v47;
      goto LABEL_111;
    }

    goto LABEL_119;
  }

  v92 = *(v0 + 704);
  v93 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 168) = v92;
  v94 = sub_100077FE8();
  sub_100083754(v94, v95);
  sub_100052F7C();
  v100 = (v98 + v99);
  if (__OFADD__(v98, v99))
  {
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v101 = v96;
  v102 = v97;
  sub_100003768(&qword_10018D350, &unk_100128E20);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v93, v100))
  {
LABEL_23:
    v107 = *(v0 + 168);
    if (v102)
    {
      sub_100077C64();
      sub_100078068();
      sub_100077C8C(v108);

LABEL_55:
      sub_100077D34();
      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
      v170 = sub_100077CF4();
      v171(v170);

      sub_100077F68();
      v47 = *(v0 + 696);
      v51 = *(v0 + 688);
      sub_100077E24();
      v178 = v107;
LABEL_111:
      v164 = *(v0 + 656);
LABEL_112:
      *(v0 + 760) = v178;
      *(v0 + 752) = v172;
      *(v0 + 744) = v173;
      *(v0 + 736) = v174;
      *(v0 + 728) = v175;
      *(v0 + 720) = v177;
      *(v0 + 712) = v176;
      *(v0 + 704) = v107;
      *(v0 + 696) = v47;
      *(v0 + 688) = v51;
      *(v0 + 680) = v49;
      *(v0 + 672) = v102;
      *(v0 + 664) = v100;
      *(v0 + 656) = v164;
      sub_100077E00(&qword_10018D328, &qword_10018D310, &qword_100128DF8);
      v297 = swift_task_alloc();
      *(v0 + 768) = v297;
      *v297 = v0;
      sub_100077D00(v297);
      sub_100077F04();

      goto _$sScI4next7ElementQzSgyYaKFTj;
    }

    sub_100077C64();
    sub_100077E58();
    v165 = (*(v107 + 48) + 16 * v101);
    *v165 = v317;
    v165[1] = v319;
    sub_100078068();
    sub_100077C8C(v166);
    v167 = *(v107 + 16);
    v168 = __OFADD__(v167, 1);
    v169 = v167 + 1;
    if (!v168)
    {
      *(v107 + 16) = v169;
      goto LABEL_55;
    }

    goto LABEL_122;
  }

  v103 = sub_100077FE8();
  v105 = sub_100083754(v103, v104);
  if ((v102 & 1) == (v106 & 1))
  {
    v101 = v105;
    goto LABEL_23;
  }

LABEL_96:
  sub_100077F04();

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100073F44()
{
  *(v0 + 104) = *(v0 + 776);
  sub_100003768(&qword_100189398, &unk_100122910);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100073FD8, 0, 0);
}

uint64_t sub_100073FD8()
{
  (*(v0[80] + 8))(v0[81], v0[79]);

  v1 = v0[1];

  return v1();
}

void *sub_100074238(uint64_t a1)
{
  v2 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v91 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v90 = v73 - v7;
  v8 = __chkstk_darwin(v6);
  v82 = v73 - v9;
  v10 = __chkstk_darwin(v8);
  v76 = v73 - v11;
  __chkstk_darwin(v10);
  v85 = v73 - v12;
  v93 = type metadata accessor for TriageRequest.HMTContext.Setting();
  v13 = *(v93 - 8);
  v14 = __chkstk_darwin(v93);
  v83 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v94 = v73 - v16;
  v17 = Dictionary.init(dictionaryLiteral:)();
  v18 = *(a1 + 16);
  if (v18)
  {
    v73[2] = 0x8000000100137040;
    v73[1] = 0x8000000100137060;
    v89 = (v3 + 16);
    v84 = v3 + 32;
    v74 = (v13 + 16);
    v73[3] = v13 + 32;
    v78 = (v3 + 40);
    v87 = (v3 + 8);
    v88 = v3;
    v75 = v13;
    v86 = (v13 + 8);
    v19 = (a1 + 56);
    while (2)
    {
      v20 = *(v19 - 3);
      v21 = *(v19 - 2);
      v22 = *(v19 - 8);
      v23 = *v19;
      swift_bridgeObjectRetain_n();
      v24 = sub_10009A9A8(v20, v21);
      v25 = 0xE800000000000000;
      v95 = 0x6C69614D2D534F69;
      switch(v24)
      {
        case 3:
        case 4:
        case 5:
        case 6:
          v95 = 0x694669572D534F69;
          goto LABEL_9;
        case 7:
        case 8:
        case 9:
          v95 = 0x656E65472D534F69;
          v26 = 7102834;
          goto LABEL_8;
        case 10:
        case 11:
          v95 = 0x7373654D2D534F69;
          v25 = 0xEC00000073656761;
          goto LABEL_9;
        case 12:
        case 13:
        case 14:
          v95 = 0x507269412D534F69;
          v26 = 7562351;
          goto LABEL_8;
        case 15:
          v95 = 0xD000000000000010;
          v69 = &v97;
          goto LABEL_41;
        case 16:
          v95 = 0xD000000000000011;
          v69 = &v98;
LABEL_41:
          v25 = *(v69 - 32);
          goto LABEL_9;
        case 17:
          goto LABEL_9;
        case 18:

          goto LABEL_35;
        default:
          v95 = 0x747461422D534F69;
          v26 = 7959141;
LABEL_8:
          v25 = v26 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_9:
          v92 = v18;
          __chkstk_darwin(v24);
          v73[-4] = v20;
          v73[-3] = v21;
          LOBYTE(v73[-2]) = v22;
          v73[-1] = v23;
          sub_100075780(&qword_10018D2E0, &type metadata accessor for TriageRequest.HMTContext.Setting, &protocol conformance descriptor for TriageRequest.HMTContext.Setting);
          v27 = static Message.with(_:)();
          if (v17[2] && (v27 = sub_100083754(v95, v25), (v28 & 1) != 0))
          {
            v29 = v27;

            v30 = v17[7];
            v31 = v88;
            v79 = *(v88 + 72);
            v32 = v30 + v79 * v29;
            v33 = *(v88 + 16);
            v34 = v76;
            v33(v76, v32, v2);
            v77 = *(v31 + 32);
            v77(v85, v34, v2);
            (*v74)(v83, v94, v93);
            v35 = TriageRequest.HMTContext.SettingsEvent.settings.modify();
            v37 = v36;
            v38 = *v36;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v37 = v38;
            v81 = v33;
            v80 = v35;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1000D03B4();
              v38 = v70;
              *v37 = v70;
            }

            v18 = v92;
            v40 = *(v38 + 16);
            if (v40 >= *(v38 + 24) >> 1)
            {
              sub_1000D03B4();
              v38 = v71;
              *v37 = v71;
            }

            *(v38 + 16) = v40 + 1;
            (*(v75 + 32))(v38 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v40, v83, v93);
            v80(&v96, 0);
            v81(v82, v85, v2);
            v41 = swift_isUniquelyReferenced_nonNull_native();
            v96 = v17;
            v42 = sub_100083754(v95, v25);
            v44 = v17[2];
            v45 = (v43 & 1) == 0;
            v46 = v44 + v45;
            if (__OFADD__(v44, v45))
            {
              goto LABEL_45;
            }

            v47 = v42;
            v48 = v43;
            sub_100003768(&qword_10018D2F0, &qword_100128DD8);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v41, v46))
            {
              v49 = sub_100083754(v95, v25);
              if ((v48 & 1) != (v50 & 1))
              {
                goto LABEL_47;
              }

              v47 = v49;
            }

            v17 = v96;
            if (v48)
            {
              (*v78)(v96[7] + v47 * v79, v82, v2);
            }

            else
            {
              v96[(v47 >> 6) + 8] |= 1 << v47;
              v66 = (v17[6] + 16 * v47);
              *v66 = v95;
              v66[1] = v25;
              v77((v17[7] + v47 * v79), v82, v2);
              v67 = v17[2];
              v64 = __OFADD__(v67, 1);
              v68 = v67 + 1;
              if (v64)
              {
                goto LABEL_46;
              }

              v17[2] = v68;
            }

            (*v87)(v85, v2);
          }

          else
          {
            __chkstk_darwin(v27);
            v73[-6] = v20;
            v73[-5] = v21;
            LOBYTE(v73[-4]) = v22;
            v73[-3] = v23;
            v73[-2] = v94;
            sub_100075780(&qword_10018D2E8, &type metadata accessor for TriageRequest.HMTContext.SettingsEvent, &protocol conformance descriptor for TriageRequest.HMTContext.SettingsEvent);
            v51 = v90;
            static Message.with(_:)();

            (*v89)(v91, v51, v2);
            v52 = swift_isUniquelyReferenced_nonNull_native();
            v96 = v17;
            v53 = sub_100083754(v95, v25);
            v55 = v17[2];
            v56 = (v54 & 1) == 0;
            v57 = v55 + v56;
            if (__OFADD__(v55, v56))
            {
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              JUMPOUT(0x100074C44);
            }

            v58 = v53;
            v59 = v54;
            sub_100003768(&qword_10018D2F0, &qword_100128DD8);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v52, v57))
            {
              v60 = sub_100083754(v95, v25);
              v18 = v92;
              if ((v59 & 1) != (v61 & 1))
              {
                goto LABEL_47;
              }

              v58 = v60;
            }

            else
            {
              v18 = v92;
            }

            v17 = v96;
            if (v59)
            {
              (*(v88 + 40))(v96[7] + *(v88 + 72) * v58, v91, v2);
            }

            else
            {
              v96[(v58 >> 6) + 8] |= 1 << v58;
              v62 = (v17[6] + 16 * v58);
              *v62 = v95;
              v62[1] = v25;
              (*(v88 + 32))(v17[7] + *(v88 + 72) * v58, v91, v2);
              v63 = v17[2];
              v64 = __OFADD__(v63, 1);
              v65 = v63 + 1;
              if (v64)
              {
                goto LABEL_44;
              }

              v17[2] = v65;
            }

            (*v87)(v90, v2);
          }

          (*v86)(v94, v93);
LABEL_35:
          v19 += 4;
          if (!--v18)
          {
            return v17;
          }

          continue;
      }
    }
  }

  return v17;
}

uint64_t sub_100074C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v7 = sub_100003768(&qword_10018D2D8, &qword_100128DD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v20 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v19 - v14;

  TriageRequest.HMTContext.SettingsGroup.groupKey.setter();
  v16 = *(v11 + 16);
  v16(v15, v21, v10);
  TriageRequest.HMTContext.SettingsGroup.pre.setter();
  sub_100082D34(a2, a3, v22, v9);
  if (sub_10000E5F0(v9, 1, v10) == 1)
  {
    return sub_10001D724(v9, &qword_10018D2D8, &qword_100128DD0);
  }

  v18 = v20;
  (*(v11 + 32))(v20, v9, v10);
  v16(v15, v18, v10);
  TriageRequest.HMTContext.SettingsGroup.post.setter();
  return (*(v11 + 8))(v18, v10);
}

uint64_t sub_100074EB4(uint64_t a1, uint64_t *a2)
{

  TriageRequest.HMTContext.UserSelection.id.setter();

  TriageRequest.HMTContext.UserSelection.question.setter();

  return TriageRequest.HMTContext.UserSelection.answer.setter();
}

uint64_t sub_100074F30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9)
{

  TriageRequest.HMTContext.suggestedUserActions.setter();

  TriageRequest.HMTContext.executedUserActions.setter();

  TriageRequest.HMTContext.suggestedArticles.setter();

  TriageRequest.HMTContext.openedArticles.setter();

  TriageRequest.HMTContext.suggestedBcsArticles.setter();

  TriageRequest.HMTContext.openedBcsArticles.setter();

  TriageRequest.HMTContext.settingsGroups.setter();

  return TriageRequest.HMTContext.userSelections.setter();
}

uint64_t sub_100074FFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  TriageRequest.HMTContext.Setting.key.setter();
  return TriageRequest.HMTContext.Setting.value.setter();
}

uint64_t sub_100075070(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for Google_Protobuf_Timestamp();
  __chkstk_darwin(v7 - 8);
  Google_Protobuf_Timestamp.init(timeIntervalSince1970:)();
  TriageRequest.HMTContext.SettingsEvent.capturedTimestamp.setter();
  sub_100003768(&qword_10018D2F8, &qword_10012E030);
  v8 = type metadata accessor for TriageRequest.HMTContext.Setting();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100121620;
  (*(v9 + 16))(v11 + v10, a6, v8);
  return TriageRequest.HMTContext.SettingsEvent.settings.setter();
}

uint64_t sub_1000751D4(uint64_t a1, double *a2)
{
  v2 = type metadata accessor for Google_Protobuf_Timestamp();
  __chkstk_darwin(v2 - 8);

  TriageRequest.HMTContext.UserAction.id.setter();

  TriageRequest.HMTContext.UserAction.actionTitle.setter();
  Google_Protobuf_Timestamp.init(timeIntervalSince1970:)();
  return TriageRequest.HMTContext.UserAction.capturedTimestamp.setter();
}

uint64_t sub_10007529C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t (*a8)(uint64_t), uint64_t (*a9)(uint64_t, unint64_t), uint64_t (*a10)(char *))
{
  v32 = a10;
  v15 = type metadata accessor for Google_Protobuf_Timestamp();
  v16 = sub_10000ED84(v15);
  __chkstk_darwin(v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v20 = sub_10000ED84(v19);
  __chkstk_darwin(v20);
  v22 = &v32 - v21;

  a7(a3, a4);
  v23 = HMTSolution.Article.title.getter();
  a8(v23);
  HMTSolution.Article.url.getter();
  v24 = type metadata accessor for URL();
  sub_1000780A0();
  if (sub_10000E5F0(v25, v26, v27) == 1)
  {
    sub_10001D724(v22, &qword_100188EE0, &unk_100122AE0);
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v28 = URL.absoluteString.getter();
    v29 = v30;
    (*(*(v24 - 8) + 8))(v22, v24);
  }

  a9(v28, v29);
  Google_Protobuf_Timestamp.init(timeIntervalSince1970:)();
  return v32(v18);
}

uint64_t sub_1000754A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018D298, &qword_100128DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100075780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_1000757C8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100077B8C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_10007599C(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_100075834(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;
  result = sub_100075A90(v11, a3, a4);
  *a1 = v8;
  return result;
}

Swift::Int sub_1000758C0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100077BD0(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_100075B94(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_10007592C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018D330, &qword_10012A460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10007599C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_100075E38(v7, v8, a1, v4);
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
    return sub_100075C88(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100075A90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 <= 1)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10[0] = (v9 + 4);
      v10[1] = v8;
      sub_10007637C(v10, v11, a1, v7, a3);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_100075D24(0, v5, 1, a1);
  }

  return result;
}

Swift::Int sub_100075B94(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_100076870(v7, v8, a1, v4);
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
    return sub_100075DA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100075C88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 56 * a3 + 48);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 - 32);
        *(v9 + 8) = *(v9 - 48);
        v13 = *(v9 + 24);
        result = *(v9 + 32);
        v14 = *(v9 + 40);
        v15 = *(v9 + 48);
        *(v9 + 24) = v12;
        *(v9 + 40) = *(v9 - 16);
        *(v9 + 56) = *v9;
        *(v9 - 48) = v10;
        *(v9 - 40) = v11;
        *(v9 - 32) = v13;
        *(v9 - 24) = result;
        *(v9 - 16) = v14;
        *(v9 - 8) = v15;
        *v9 = v7;
        v9 -= 56;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 56;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100075D24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 24);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 + 24);
        v13 = *(v9 - 8);
        *(v9 + 8) = *(v9 - 24);
        *(v9 + 24) = v13;
        *(v9 - 24) = v10;
        *(v9 - 16) = v11;
        *(v9 - 8) = v12;
        *v9 = v7;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100075DA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 48 * a3 + 40);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 - 24);
        *(v9 + 8) = *(v9 - 40);
        v13 = *(v9 + 24);
        result = *(v9 + 32);
        v14 = *(v9 + 40);
        *(v9 + 24) = v12;
        *(v9 + 40) = *(v9 - 8);
        *(v9 - 40) = v10;
        *(v9 - 32) = v11;
        *(v9 - 24) = v13;
        *(v9 - 16) = result;
        *(v9 - 8) = v14;
        *v9 = v7;
        v9 -= 48;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 48;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100075E38(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v98 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v93 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 56 * v9 + 48);
        v11 = *a3 + 56 * v7;
        v12 = *(v11 + 48);
        v13 = (v11 + 160);
        v14 = v7 + 2;
        v15 = v10;
        while (1)
        {
          v16 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = *v13;
          v13 += 7;
          v18 = (v10 < v12) ^ (v17 >= v15);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v12)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v19 = 56 * v6 - 24;
            v20 = 56 * v7 + 48;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v20);
                v25 = (v23 + v19);
                v26 = *(v24 - 3);
                v27 = *(v24 - 2);
                v28 = *(v24 - 2);
                v29 = *(v24 - 1);
                v30 = *v24;
                v32 = *(v25 - 1);
                v31 = *v25;
                v33 = *(v25 - 2);
                *v24 = *(v25 + 2);
                *(v24 - 2) = v32;
                *(v24 - 1) = v31;
                *(v24 - 3) = v33;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
                *(v25 + 1) = v29;
                *(v25 + 2) = v30;
              }

              ++v22;
              v19 -= 56;
              v20 += 56;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v34 = *a3;
            v35 = *a3 + 56 * v9 - 8;
            v36 = v7 - v9;
            do
            {
              v37 = *(v34 + 56 * v9 + 48);
              v38 = v36;
              v39 = v35;
              do
              {
                if (v37 >= *v39)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_111;
                }

                v40 = *(v39 + 8);
                v41 = *(v39 + 16);
                v42 = *(v39 - 32);
                *(v39 + 8) = *(v39 - 48);
                v43 = *(v39 + 24);
                v44 = *(v39 + 32);
                v45 = *(v39 + 40);
                v46 = *(v39 + 48);
                *(v39 + 24) = v42;
                *(v39 + 40) = *(v39 - 16);
                *(v39 + 56) = *v39;
                *(v39 - 48) = v40;
                *(v39 - 40) = v41;
                *(v39 - 32) = v43;
                *(v39 - 24) = v44;
                *(v39 - 16) = v45;
                *(v39 - 8) = v46;
                *v39 = v37;
                v39 -= 56;
              }

              while (!__CFADD__(v38++, 1));
              ++v9;
              v35 += 56;
              --v36;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v95 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000D02E0();
        v8 = v91;
      }

      v48 = v8[2];
      v49 = v48 + 1;
      if (v48 >= v8[3] >> 1)
      {
        sub_1000D02E0();
        v8 = v92;
      }

      v8[2] = v49;
      v50 = v8 + 4;
      v51 = &v8[2 * v48 + 4];
      *v51 = v7;
      v51[1] = v95;
      v96 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          v53 = &v50[2 * v49 - 2];
          v54 = &v8[2 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v55 = v8[4];
            v56 = v8[5];
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_56:
            if (v58)
            {
              goto LABEL_96;
            }

            v70 = *v54;
            v69 = v54[1];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_99;
            }

            v74 = v53[1];
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_104;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v52 = v49 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v49 < 2)
          {
            goto LABEL_98;
          }

          v77 = *v54;
          v76 = v54[1];
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_71:
          if (v73)
          {
            goto LABEL_101;
          }

          v79 = *v53;
          v78 = v53[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_103;
          }

          if (v80 < v72)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v84 = &v50[2 * v52 - 2];
          v85 = *v84;
          v86 = &v50[2 * v52];
          v87 = v86[1];
          sub_10007713C((*a3 + 56 * *v84), (*a3 + 56 * *v86), *a3 + 56 * v87, v96);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v87 < v85)
          {
            goto LABEL_91;
          }

          v88 = v8;
          v89 = v8[2];
          if (v52 > v89)
          {
            goto LABEL_92;
          }

          *v84 = v85;
          v84[1] = v87;
          if (v52 >= v89)
          {
            goto LABEL_93;
          }

          v49 = v89 - 1;
          memmove(&v50[2 * v52], v86 + 2, 16 * (v89 - 1 - v52));
          v88[2] = (v89 - 1);
          v90 = v89 > 2;
          v8 = v88;
          v5 = 0;
          if (!v90)
          {
            goto LABEL_85;
          }
        }

        v59 = &v50[2 * v49];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_94;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_95;
        }

        v66 = v54[1];
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_97;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_100;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = v53[1];
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_105;
          }

          if (v57 < v83)
          {
            v52 = v49 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v95;
      a4 = v93;
      if (v95 >= v6)
      {
        v98 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_100076D9C(&v98, *result, a3);
LABEL_89:
}

void sub_10007637C(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a3[1];
  v95 = _swiftEmptyArrayStorage;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    v90 = a4;
    while (1)
    {
      v10 = v8 + 1;
      if (v8 + 1 < v7)
      {
        sub_1000780E8();
        v12 = *(v11 + 32 * v10 + 24);
        v13 = v11 + 32 * v8;
        v14 = *(v13 + 24);
        v15 = (v13 + 88);
        v16 = v8 + 2;
        v17 = v12;
        while (1)
        {
          v18 = v16;
          if (++v10 >= v7)
          {
            break;
          }

          v19 = *v15;
          v15 += 4;
          v20 = (v12 < v14) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v10 = v7;
LABEL_9:
        if (v12 < v14)
        {
          if (v10 < v8)
          {
            goto LABEL_108;
          }

          if (v8 < v10)
          {
            if (v7 >= v18)
            {
              v7 = v18;
            }

            v21 = 32 * v7 - 16;
            v22 = 32 * v8 + 24;
            v23 = v10;
            v24 = v8;
            do
            {
              if (v24 != --v23)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v26 = (v25 + v22);
                v27 = (v25 + v21);
                v28 = *(v26 - 3);
                v29 = *(v26 - 2);
                v30 = *(v26 - 8);
                v31 = *v26;
                v32 = *v27;
                *(v26 - 3) = *(v27 - 1);
                *(v26 - 1) = v32;
                *(v27 - 2) = v28;
                *(v27 - 1) = v29;
                *v27 = v30;
                *(v27 + 1) = v31;
              }

              ++v24;
              v21 -= 32;
              v22 += 32;
            }

            while (v24 < v23);
            sub_100078094();
          }
        }
      }

      if (v10 < v7)
      {
        if (__OFSUB__(v10, v8))
        {
          goto LABEL_107;
        }

        if (v10 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_109;
          }

          if (v8 + a4 < v7)
          {
            v7 = v8 + a4;
          }

          if (v7 < v8)
          {
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
            return;
          }

          if (v10 != v7)
          {
            sub_1000780E8();
            v35 = v34 + 32 * v10 - 8;
            v36 = v8 - v10;
            do
            {
              v37 = *(v34 + 32 * v10 + 24);
              v38 = v36;
              v39 = v35;
              do
              {
                if (v37 >= *v39)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_111;
                }

                v40 = *(v39 + 8);
                v41 = *(v39 + 16);
                v42 = *(v39 + 24);
                v43 = *(v39 - 8);
                *(v39 + 8) = *(v39 - 24);
                *(v39 + 24) = v43;
                *(v39 - 24) = v40;
                *(v39 - 16) = v41;
                *(v39 - 8) = v42;
                *v39 = v37;
                v39 -= 32;
              }

              while (!__CFADD__(v38++, 1));
              ++v10;
              v35 += 32;
              --v36;
            }

            while (v10 != v33);
            v10 = v33;
          }
        }
      }

      if (v10 < v8)
      {
        goto LABEL_106;
      }

      v92 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100077CBC();
        sub_1000D02E0();
        v9 = v88;
      }

      v45 = v9[2];
      v46 = v45 + 1;
      if (v45 >= v9[3] >> 1)
      {
        sub_1000D02E0();
        v9 = v89;
      }

      v9[2] = v46;
      v47 = v9 + 4;
      v48 = &v9[2 * v45 + 4];
      *v48 = v8;
      v48[1] = v92;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v9[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v9[4];
            v53 = v9[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_56:
            if (v55)
            {
              goto LABEL_96;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_99;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_104;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v46 < 2)
          {
            goto LABEL_98;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_71:
          if (v70)
          {
            goto LABEL_101;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_103;
          }

          if (v77 < v69)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = &v47[2 * v49];
          v84 = v83[1];
          sub_1000772FC();
          if (v6)
          {
            goto LABEL_89;
          }

          if (v84 < v82)
          {
            goto LABEL_91;
          }

          v85 = v9;
          v86 = v9[2];
          if (v49 > v86)
          {
            goto LABEL_92;
          }

          *v81 = v82;
          v81[1] = v84;
          if (v49 >= v86)
          {
            goto LABEL_93;
          }

          v46 = v86 - 1;
          memmove(&v47[2 * v49], v83 + 2, 16 * (v86 - 1 - v49));
          v85[2] = (v86 - 1);
          v87 = v86 > 2;
          v9 = v85;
          v6 = 0;
          if (!v87)
          {
            goto LABEL_85;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_94;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_95;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_97;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_100;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_105;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      sub_100078094();
      v8 = v92;
      a4 = v90;
      if (v92 >= v7)
      {
        v95 = v9;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_100076ED4(&v95, *result, a3, a5);
LABEL_89:
}

void sub_100076870(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v93 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        sub_1000780E8();
        v11 = *(v10 + 48 * v9 + 40);
        v12 = v10 + 48 * v7;
        v13 = *(v12 + 40);
        v14 = (v12 + 136);
        v15 = v7 + 2;
        v16 = v11;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 6;
          v19 = (v11 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v11 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 48 * v6 - 24;
            v21 = 48 * v7 + 40;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v21);
                v26 = *(v24 + v21 - 40);
                v27 = v24 + v20;
                v28 = *(v25 - 3);
                v29 = *(v25 - 2);
                v30 = *(v25 - 8);
                v31 = *v25;
                v32 = *(v27 + 8);
                v33 = *(v27 - 8);
                *(v25 - 5) = *(v27 - 24);
                *(v25 - 3) = v33;
                *(v25 - 1) = v32;
                *(v27 - 24) = v26;
                *(v27 - 8) = v28;
                *v27 = v29;
                *(v27 + 8) = v30;
                *(v27 + 16) = v31;
              }

              ++v23;
              v20 -= 48;
              v21 += 48;
            }

            while (v23 < v22);
            sub_100078094();
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            sub_1000780E8();
            v36 = v35 + 48 * v9 - 8;
            v37 = v7 - v9;
            do
            {
              v38 = *(v35 + 48 * v9 + 40);
              v39 = v37;
              v40 = v36;
              do
              {
                if (v38 >= *v40)
                {
                  break;
                }

                if (!v35)
                {
                  goto LABEL_111;
                }

                v41 = *(v40 + 8);
                v42 = *(v40 + 16);
                v43 = *(v40 - 24);
                *(v40 + 8) = *(v40 - 40);
                v44 = *(v40 + 24);
                v45 = *(v40 + 32);
                v46 = *(v40 + 40);
                *(v40 + 24) = v43;
                *(v40 + 40) = *(v40 - 8);
                *(v40 - 40) = v41;
                *(v40 - 32) = v42;
                *(v40 - 24) = v44;
                *(v40 - 16) = v45;
                *(v40 - 8) = v46;
                *v40 = v38;
                v40 -= 48;
              }

              while (!__CFADD__(v39++, 1));
              ++v9;
              v36 += 48;
              --v37;
            }

            while (v9 != v34);
            v9 = v34;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v95 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100077CBC();
        sub_1000D02E0();
        v8 = v91;
      }

      v48 = v8[2];
      v49 = v48 + 1;
      if (v48 >= v8[3] >> 1)
      {
        sub_1000D02E0();
        v8 = v92;
      }

      v8[2] = v49;
      v50 = v8 + 4;
      v51 = &v8[2 * v48 + 4];
      *v51 = v7;
      v51[1] = v95;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          v53 = &v50[2 * v49 - 2];
          v54 = &v8[2 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v55 = v8[4];
            v56 = v8[5];
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_56:
            if (v58)
            {
              goto LABEL_96;
            }

            v70 = *v54;
            v69 = v54[1];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_99;
            }

            v74 = v53[1];
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_104;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v52 = v49 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v49 < 2)
          {
            goto LABEL_98;
          }

          v77 = *v54;
          v76 = v54[1];
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_71:
          if (v73)
          {
            goto LABEL_101;
          }

          v79 = *v53;
          v78 = v53[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_103;
          }

          if (v80 < v72)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v84 = &v50[2 * v52 - 2];
          v85 = *v84;
          v86 = &v50[2 * v52];
          v87 = v86[1];
          sub_100077464();
          if (v5)
          {
            goto LABEL_89;
          }

          if (v87 < v85)
          {
            goto LABEL_91;
          }

          v88 = v8;
          v89 = v8[2];
          if (v52 > v89)
          {
            goto LABEL_92;
          }

          *v84 = v85;
          v84[1] = v87;
          if (v52 >= v89)
          {
            goto LABEL_93;
          }

          v49 = v89 - 1;
          memmove(&v50[2 * v52], v86 + 2, 16 * (v89 - 1 - v52));
          v88[2] = (v89 - 1);
          v90 = v89 > 2;
          v8 = v88;
          v5 = 0;
          if (!v90)
          {
            goto LABEL_85;
          }
        }

        v59 = &v50[2 * v49];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_94;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_95;
        }

        v66 = v54[1];
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_97;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_100;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = v53[1];
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_105;
          }

          if (v57 < v83)
          {
            v52 = v49 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      sub_100078094();
      v7 = v95;
      a4 = v93;
      if (v95 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_100077004(&v97, *result, a3);
LABEL_89:
}

uint64_t sub_100076D9C(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1000775D0(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_10007713C((*a3 + 56 * *v4), (*a3 + 56 * *v9), *a3 + 56 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_100076ED4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a1;
  v6 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1000775D0(v6);
    v6 = result;
  }

  v14 = v5;
  *v5 = v6;
  v8 = (v6 + 16);
  for (i = *(v6 + 16); ; *v8 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v14 = v6;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v5 = (v6 + 16 * i);
    v10 = *v5;
    v11 = &v8[2 * i];
    v12 = v11[1];
    sub_1000772FC();
    if (v4)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v8)
    {
      goto LABEL_12;
    }

    *v5 = v10;
    v5[1] = v12;
    v13 = *v8 - i;
    if (*v8 < i)
    {
      goto LABEL_13;
    }

    i = *v8 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v6;
  __break(1u);
  return result;
}

uint64_t sub_100077004(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v14 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1000775D0(v14);
    v14 = result;
  }

  v12 = v4;
  *v4 = v14;
  v6 = (v14 + 16);
  for (i = *(v14 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v14;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v14 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_100077464();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v14;
  __break(1u);
  return result;
}

uint64_t sub_10007713C(double *a1, double *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_1000D1104(a1, (a2 - a1) / 56, a4);
    v10 = &v4[7 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[6] >= v4[6])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 7;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 7;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 7;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    v16 = *(v12 + 2);
    v7[6] = v12[6];
    *(v7 + 1) = v15;
    *(v7 + 2) = v16;
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1000D1104(a2, (a3 - a2) / 56, a4);
  v10 = &v4[7 * v9];
LABEL_15:
  for (v5 -= 56; v10 > v4 && v6 > v7; v5 -= 56)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v21 = v6 - 7;
      v13 = v5 + 56 == v6;
      v6 -= 7;
      if (!v13)
      {
        v22 = *v21;
        v23 = *(v21 + 1);
        v24 = *(v21 + 2);
        *(v5 + 48) = v21[6];
        *(v5 + 16) = v23;
        *(v5 + 32) = v24;
        *v5 = v22;
        v6 = v21;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 56))
    {
      v18 = *(v10 - 7);
      v19 = *(v10 - 5);
      v20 = *(v10 - 3);
      *(v5 + 48) = *(v10 - 1);
      *(v5 + 16) = v19;
      *(v5 + 32) = v20;
      *v5 = v18;
    }

    v10 -= 7;
  }

LABEL_28:
  v25 = (v10 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[7 * v25])
  {
    memmove(v6, v4, 56 * v25);
  }

  return 1;
}

uint64_t sub_1000772FC()
{
  sub_100077F4C();
  sub_1000780AC();
  if (v7 != v8)
  {
    sub_100078074();
    v9();
    v14 = &v0[4 * v4];
    while (1)
    {
      if (v0 >= v14 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_28;
      }

      if (v1[3] >= v0[3])
      {
        break;
      }

      v11 = v1;
      v12 = v2 == v1;
      v1 += 4;
      if (!v12)
      {
        goto LABEL_13;
      }

LABEL_14:
      v2 += 4;
    }

    v11 = v0;
    v12 = v2 == v0;
    v0 += 4;
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_13:
    v13 = *(v11 + 1);
    *v2 = *v11;
    *(v2 + 1) = v13;
    goto LABEL_14;
  }

  v6(v1, v5, v0);
  v14 = &v0[4 * v5];
LABEL_15:
  for (v3 -= 4; v14 > v0 && v1 > v2; v3 -= 4)
  {
    if (*(v14 - 1) < *(v1 - 1))
    {
      v17 = v1 - 4;
      v12 = v3 + 4 == v1;
      v1 -= 4;
      if (!v12)
      {
        v18 = *(v17 + 1);
        *v3 = *v17;
        *(v3 + 1) = v18;
        v1 = v17;
      }

      goto LABEL_15;
    }

    if (v14 != v3 + 4)
    {
      v16 = *(v14 - 1);
      *v3 = *(v14 - 2);
      *(v3 + 1) = v16;
    }

    v14 -= 4;
  }

LABEL_28:
  v19 = (v14 - v0) / 32;
  if (v1 != v0 || v1 >= &v0[4 * v19])
  {
    memmove(v1, v0, 32 * v19);
  }

  return 1;
}

uint64_t sub_100077464()
{
  sub_100077F4C();
  sub_1000780AC();
  if (v6 != v7)
  {
    sub_100078074();
    sub_1000D114C(v8, v9, v10);
    v16 = v0 + 48 * v4;
    while (1)
    {
      if (v0 >= v16 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_28;
      }

      if (*(v1 + 40) >= *(v0 + 40))
      {
        break;
      }

      v12 = v1;
      v13 = v2 == v1;
      v1 += 48;
      if (!v13)
      {
        goto LABEL_13;
      }

LABEL_14:
      v2 += 3;
    }

    v12 = v0;
    v13 = v2 == v0;
    v0 += 48;
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_13:
    v14 = *v12;
    v15 = v12[2];
    v2[1] = v12[1];
    v2[2] = v15;
    *v2 = v14;
    goto LABEL_14;
  }

  sub_1000D114C(v1, v5, v0);
  v16 = v0 + 48 * v5;
LABEL_15:
  for (v3 -= 48; v16 > v0 && v1 > v2; v3 -= 48)
  {
    if (*(v16 - 8) < *(v1 - 8))
    {
      v13 = v3 + 48 == v1;
      v1 -= 48;
      if (!v13)
      {
        sub_100078080();
        v1 = v19;
      }

      goto LABEL_15;
    }

    v18 = v16 - 48;
    if (v16 != v3 + 48)
    {
      sub_100078080();
    }

    v16 = v18;
  }

LABEL_28:
  v20 = (v16 - v0) / 48;
  if (v1 != v0 || v1 >= v0 + 48 * v20)
  {
    memmove(v1, v0, 48 * v20);
  }

  return 1;
}

id *sub_1000775E4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003768(&qword_10018D358, &qword_10012E100);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 16));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_1000776E4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = a4;
      v16 = (*(a4 + 56) + 56 * (__clz(__rbit64(v7)) | (v14 << 6)));
      v17 = v16[1];
      v7 &= v7 - 1;
      v18 = v16[2];
      v19 = v16[3];
      v20 = v16[4];
      v21 = v16[5];
      v22 = v16[6];
      *v9 = *v16;
      v9[1] = v17;
      v9[2] = v18;
      v9[3] = v19;
      v9[4] = v20;
      v9[5] = v21;
      v9[6] = v22;
      if (v13 == v8)
      {
        break;
      }

      v9 += 7;

      v10 = v13;
      v11 = v14;
      a4 = v15;
    }

    v11 = v14;
    a4 = v15;
LABEL_19:
    v5 = v23;
    result = v24;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_10007788C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(a4 + 56) + ((v15 << 11) | (32 * v16));
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      *v11 = *v17;
      *(v11 + 8) = v18;
      *(v11 + 16) = v19;
      *(v11 + 24) = v20;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 32;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}