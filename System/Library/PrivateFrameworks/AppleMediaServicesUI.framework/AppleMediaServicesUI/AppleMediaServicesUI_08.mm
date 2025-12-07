_BYTE *sub_1000BFAA8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1000BFB84()
{
  result = qword_10026B528;
  if (!qword_10026B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B528);
  }

  return result;
}

id sub_1000BFBD8()
{
  v0 = sub_10007B9A4(&qword_10026B530, &unk_1001EFCD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1000BFD18(0xD00000000000001DLL, 0x80000001001F5E20, v3);
  TimeZone.init(identifier:)();
  v4 = type metadata accessor for TimeZone();
  isa = 0;
  if (sub_100009F34(v2, 1, v4) != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(*(v4 - 8) + 8))(v2, v4);
  }

  [v3 setTimeZone:isa];

  return v3;
}

void sub_1000BFD18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setDateFormat:v4];
}

uint64_t sub_1000BFD7C()
{
  sub_100004768();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100002D20();
  *v3 = v2;

  return _swift_task_switch(sub_1000BFE9C, v1, 0);
}

uint64_t sub_1000BFE9C()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_1000BFEF4()
{
  v2 = *v1;
  v3 = *v1;
  sub_100002D20();
  *v4 = v3;

  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  v8 = v2[2];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v9 = sub_1000C09B4;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v9 = sub_1000C0098;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000C0098()
{
  sub_100004768();
  if (static Task<>.isCancelled.getter())
  {

    sub_100002D8C();

    return v1();
  }

  else
  {
    v3 = *(v0 + 16);
    *(v3 + 152) = 1;
    v5 = (*(v3 + 128) + **(v3 + 128));
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_1000C01C4;

    return v5();
  }
}

uint64_t sub_1000C01C4()
{
  sub_100004768();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100002D20();
  *v3 = v2;

  return _swift_task_switch(sub_1000C02C8, v1, 0);
}

uint64_t sub_1000C02C8()
{
  sub_100004768();
  v1 = *(v0 + 16);
  *(v1 + 152) = 0;
  *(v1 + 144) = 0;

  sub_100002D8C();

  return v2();
}

uint64_t sub_1000C0334()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000C0364()
{
  sub_1000C0334();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C0390(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v28 = a2;
  v36 = a1;
  v6 = sub_10007B9A4(&unk_10026F880, &qword_1001E62B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  sub_10007B9A4(&unk_10026CFA0, &qword_1001E8EC0);
  sub_100002CC4();
  v29 = v9;
  v30 = v10;
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  sub_10007B9A4(&qword_10026B6F8, &qword_1001E8EC8);
  sub_100002CC4();
  v32 = v13;
  v33 = v14;
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  sub_10007B9A4(&unk_10026F890, &unk_1001E74C0);
  swift_allocObject();
  v17 = PassthroughSubject.init()();
  v31 = v4;
  *(v4 + 16) = v17;
  *(v4 + 24) = 0;
  v37 = a2;
  v38 = v17;
  type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  sub_10000BE94();
  sub_100017A08();
  sub_100006070(&qword_10026B700, &unk_10026F890, &unk_1001E74C0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_100062FCC(&qword_10026CFC0, 255, sub_100017A08, &protocol conformance descriptor for OS_dispatch_queue);

  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000C0868(v8);

  v18 = v28;
  v38 = v28;
  sub_10000BE94();
  sub_100006070(&qword_10026B708, &unk_10026CFA0, &qword_1001E8EC0, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v19 = v29;
  Publisher.receive<A>(on:options:)();
  sub_1000C0868(v8);
  (*(v30 + 8))(v12, v19);
  v20 = swift_allocObject();
  v21 = v35;
  *(v20 + 16) = v34;
  *(v20 + 24) = v21;
  sub_100006070(&qword_10026B710, &qword_10026B6F8, &qword_1001E8EC8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v22 = v32;
  v23 = Publisher<>.sink(receiveValue:)();

  v24 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v24 - 8) + 8))(v36, v24);
  (*(v33 + 8))(v16, v22);
  v25 = v31;
  *(v31 + 24) = v23;

  return v25;
}

uint64_t sub_1000C07AC()
{
  if (*(v0 + 24))
  {

    AnyCancellable.cancel()();
  }

  *(v0 + 24) = 0;

  return v0;
}

uint64_t sub_1000C0810()
{
  sub_1000C07AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1000C0868(uint64_t a1)
{
  v2 = sub_10007B9A4(&unk_10026F880, &qword_1001E62B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C08D0()
{
  sub_100004768();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  sub_100002D8C();

  return v3();
}

uint64_t sub_1000C09B8()
{
  type metadata accessor for DebugSocketProtocol();
  sub_1000C0E2C();
  type metadata accessor for NWProtocolFramer.Definition();
  swift_allocObject();
  result = NWProtocolFramer.Definition.init(implementation:)();
  qword_100287790 = result;
  return result;
}

uint64_t sub_1000C0A14(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1000C0A48@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for NWProtocolFramer.StartResult.ready(_:);
  started = type metadata accessor for NWProtocolFramer.StartResult();
  v4 = *(*(started - 8) + 104);

  return v4(a1, v2, started);
}

uint64_t sub_1000C0ABC(uint64_t a1)
{
  __chkstk_darwin(a1);
  NWProtocolFramer.Instance.parseInput(minimumIncompleteLength:maximumLength:parse:)();
  return 4;
}

_DWORD *sub_1000C0BC4(_DWORD *result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    return 0;
  }

  if (result)
  {
    if (a2 - result >= a5)
    {
      *a6 = *result;
      *(a6 + 4) = 0;
      return a5;
    }

    return 0;
  }

  if (a5 >= 1)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void sub_1000C0C00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (HIDWORD(a3))
  {
    goto LABEL_7;
  }

  v4 = Data.init(bytes:count:)();
  v6 = v5;
  NWProtocolFramer.Instance.writeOutput(data:)();
  sub_1000253FC(v4, v6);
  NWProtocolFramer.Instance.writeOutputNoCopy(length:)(a3);
  if (v7)
  {
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001E61B0;
    _StringGuts.grow(_:)(20);
    v9._object = 0x80000001001F5F10;
    v9._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v9);
    sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    _print_unlocked<A, B>(_:_:)();
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }
}

unint64_t sub_1000C0E2C()
{
  result = qword_10026B7B8;
  if (!qword_10026B7B8)
  {
    type metadata accessor for DebugSocketProtocol();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B7B8);
  }

  return result;
}

uint64_t sub_1000C0E80()
{
  type metadata accessor for NWParameters();
  v0 = static NWParameters.tcp.getter();
  if (qword_100268628 != -1)
  {
    swift_once();
  }

  type metadata accessor for NWProtocolFramer.Options();
  swift_allocObject();

  v1 = NWProtocolFramer.Options.init(definition:)();
  NWParameters.defaultProtocolStack.getter();

  v2 = dispatch thunk of NWParameters.ProtocolStack.applicationProtocols.modify();
  sub_1000C2034(0, *v3);
  sub_100113190(0, 0, v1);
  v2(&v5, 0);

  return v0;
}

uint64_t sub_1000C0F9C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v6 = v5 - v4;
  v7 = type metadata accessor for NWEndpoint.Port();
  __chkstk_darwin(v7 - 8);
  sub_100002DEC();
  v8 = type metadata accessor for NWEndpoint.Host();
  __chkstk_darwin(v8 - 8);
  sub_100002DEC();
  swift_defaultActor_initialize();
  type metadata accessor for NWConnection();
  NWEndpoint.Host.init(stringLiteral:)();
  NWEndpoint.Port.init(integerLiteral:)();
  sub_1000C0E80();
  v9 = NWConnection.__allocating_init(host:port:using:)();

  NWConnection.stateUpdateHandler.setter();
  sub_100017A08();
  (*(v3 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v2);
  v10 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v6, v2);
  NWConnection.start(queue:)();

  *(v1 + 112) = v9;
  return v1;
}

uint64_t sub_1000C11B4(uint64_t a1)
{
  v2 = type metadata accessor for NWConnection.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  result = (*(v3 + 88))(v5, v2);
  if (result == enum case for NWConnection.State.failed(_:))
  {
    NWConnection.cancel()();
  }

  else if (result == enum case for NWConnection.State.ready(_:))
  {
    return result;
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000C12E8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for NWConnection.SendCompletion();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000C13D8, v2, 0);
}

uint64_t sub_1000C13D8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  *v1 = sub_1000C208C;
  v1[1] = v3;
  (*(v2 + 104))(v1, enum case for NWConnection.SendCompletion.contentProcessed(_:), v4);
  type metadata accessor for NWConnection.ContentContext();

  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  (*(v2 + 8))(v1, v4);
  sub_1000C220C(&qword_10026B878, v5, type metadata accessor for DebugSocketService, &unk_1001E8FA0);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1000C15DC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 6);
}

uint64_t sub_1000C15DC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_1000C1958;
  }

  else
  {
    v4 = sub_1000C1734;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C1734()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[8] = 0;
  v5 = [v3 JSONObjectWithData:isa options:0 error:v0 + 8];

  v6 = v0[8];
  if (v5)
  {
    v7 = v6;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    if (swift_dynamicCast())
    {
      v8 = v0[9];
    }

    else
    {
      v8 = Dictionary.init(dictionaryLiteral:)();
    }

    sub_1000253FC(v1, v2);

    v12 = v0[1];

    return v12(v8);
  }

  else
  {
    v9 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000253FC(v1, v2);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000C1958()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C19E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026B888, &qword_1001E8FD8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  if (qword_1002686C0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F60;
  *(&v15 + 1) = type metadata accessor for DebugSocketService();
  *&v14 = a2;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v14);
  LogInterpolation.init(stringLiteral:)();
  sub_1000C2148(a1, v6);
  v10 = type metadata accessor for NWError();
  if (sub_100009F34(v6, 1, v10) == 1)
  {
    sub_100009F5C(v6, &qword_10026B888, &qword_1001E8FD8);
    v14 = 0u;
    v15 = 0u;
  }

  else
  {
    *(&v15 + 1) = v10;
    v11 = sub_100017E64(&v14);
    (*(*(v10 - 8) + 32))(v11, v6, v10);
  }

  static LogInterpolation.safe(_:)();
  sub_100009F5C(&v14, &qword_10026D350, &qword_1001E6050);
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12, v7);
}

uint64_t sub_1000C1CA0(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_10026B880, &qword_1001E8FD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  NWConnection.receiveMessage(completion:)();
}

uint64_t sub_1000C1DEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10007B9A4(&qword_10026B888, &qword_1001E8FD8);
  __chkstk_darwin(v8 - 8);
  v10 = v15 - v9;
  if (a2 >> 60 == 15)
  {
    sub_1000C2148(a5, v10);
    v11 = type metadata accessor for NWError();
    if (sub_100009F34(v10, 1, v11) == 1)
    {
      sub_100009F5C(v10, &qword_10026B888, &qword_1001E8FD8);
      sub_1000C21B8();
      v12 = swift_allocError();
    }

    else
    {
      sub_1000C220C(&qword_10026B898, 255, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      v12 = swift_allocError();
      (*(*(v11 - 8) + 32))(v14, v10, v11);
    }

    v15[0] = v12;
    sub_10007B9A4(&qword_10026B880, &qword_1001E8FD0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v15[0] = a1;
    v15[1] = a2;
    sub_10003A5E0(a1, a2);
    sub_10007B9A4(&qword_10026B880, &qword_1001E8FD0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000C1FD0()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C2034(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C209C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10007B9A4(&qword_10026B880, &qword_1001E8FD0);

  return sub_1000C1DEC(a1, a2, a3, a4, a5);
}

uint64_t sub_1000C2148(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026B888, &qword_1001E8FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C21B8()
{
  result = qword_10026B890;
  if (!qword_10026B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B890);
  }

  return result;
}

uint64_t sub_1000C220C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_BYTE *storeEnumTagSinglePayload for DebugSocketService.DebugSocketError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1000C2304()
{
  result = qword_10026B8A0;
  if (!qword_10026B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B8A0);
  }

  return result;
}

void sub_1000C2358(uint64_t a1, char a2)
{
  sub_1000272C4(a2);
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = sub_100003B80();
  CFPreferencesSetAppValue(v4, v5, v3);

  applicationID = String._bridgeToObjectiveC()();

  CFPreferencesAppSynchronize(applicationID);
}

id sub_1000C2440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, "dealloc");
}

CFPropertyListRef sub_1000C248C(char a1)
{
  result = sub_1000571D4(a1);
  if (result)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C24F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  sub_1000C2358(v2, 10);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000C254C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1000C25EC(void *a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 112);
  if (v7)
  {
    if (a2)
    {

      v9 = sub_1001C3DB8(v8, a2);

      v7 = *(v3 + 112);
      if (v9)
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    v10 = 0;
    *a1 = v7;
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_4:
  *(v3 + 112) = a3;

  *a1 = a3;

  v10 = 1;
LABEL_7:

  return v10;
}

uint64_t sub_1000C2694()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000C270C()
{
  sub_1000C2694();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C2750(unint64_t a1, unint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return sub_1001C3DB8(a1, a2);
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_1000C277C()
{
  type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
  v0 = swift_allocObject();
  result = sub_1000C40C8();
  qword_100287798 = v0;
  return result;
}

uint64_t sub_1000C27B8(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  return _swift_task_switch(sub_1000C2800, 0, 0);
}

uint64_t sub_1000C2800()
{
  v1 = v0[24];
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = sub_1000C430C(v1, v2);
  v5 = v4;
  v0[21] = v3;
  v0[22] = v4;

  v0[27] = v5;
  v6 = sub_100049574(v5);
  v0[28] = v6;
  if (!v6)
  {

    if (qword_1002686F0 != -1)
    {
      sub_100006B94(&qword_1002686F0);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v12 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v12);
    v8 = sub_1000057D8();
    *(v8 + 16) = xmmword_1001E5F70;
    v13 = type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
    sub_100023D2C(v13);
    v10 = AMSLogKey();
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_6:
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_14:
    sub_100004BE0();

    sub_100002C00(v0 + 10);
    LogInterpolation.init(stringLiteral:)();
    v15 = static os_log_type_t.default.getter();
    sub_1000036B0(v15, v8);

    v16 = sub_100007484();

    return v17(v16);
  }

  if ([objc_opt_self() isBuddyRunning])
  {

    if (qword_1002686F0 != -1)
    {
      sub_100006B94(&qword_1002686F0);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v7);
    v8 = sub_1000057D8();
    *(v8 + 16) = xmmword_1001E5F70;
    v9 = type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
    sub_100023D2C(v9);
    v10 = AMSLogKey();
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v14 = *(v0[25] + 16);
  v0[29] = v14;

  return _swift_task_switch(sub_1000C2B78, v14, 0);
}

uint64_t sub_1000C2B78()
{
  sub_100004768();
  *(v0 + 289) = sub_1000C25EC((v0 + 80), 0, *(v0 + 216)) & 1;

  return _swift_task_switch(sub_1000C2BFC, 0, 0);
}

uint64_t sub_1000C2BFC()
{
  v2 = *(v0 + 80);
  if (*(v0 + 289) != 1)
  {

    if (qword_1002686F0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  if (qword_100268830 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 224);
  *(v0 + 240) = qword_100287928;
  sub_100012BCC("engagementScheduler");
  *(v0 + 248) = sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  if (v2 < 1)
  {
    __break(1u);
LABEL_18:
    sub_100006B94(&qword_1002686F0);
LABEL_8:
    v5 = *(v0 + 200);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v6 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v6);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1001E5F60;
    *(v0 + 104) = type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
    *(v0 + 80) = v5;

    v8 = AMSLogKey();
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 80));
    LogInterpolation.init(stringLiteral:)();
    *(v0 + 104) = &type metadata for DeviceAccountPrivacyAcknowledgementHandler.State;
    *(v0 + 80) = v2;
    static LogInterpolation.sensitive(_:)();
    sub_100002C5C(v0 + 80);
    v10 = static os_log_type_t.error.getter();
    sub_1000036B0(v10, v7);

    sub_100007484();
    sub_10000481C();

    __asm { BRAA            X2, X16 }
  }

  v3 = *(v0 + 216);
  *(v0 + 256) = 0;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v4 = *(v3 + 32);
  }

  *(v0 + 264) = v4;
  v13 = v4;
  v14 = sub_100005104();
  v15 = [objc_allocWithZone(AMSDeviceAccountPrivacyAcknowledgementTask) initWithAccount:v1 bag:v14];

  v16 = [v15 performPrivacyAcknowledgement];
  *(v0 + 272) = v16;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 288;
  *(v0 + 24) = sub_1000C2FD0;
  v17 = swift_continuation_init();
  v18 = sub_10007B9A4(&qword_10026BA00, &qword_1001E91E8);
  sub_10000BEC8(v18);
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1000C383C;
  *(v0 + 104) = &unk_1002489B8;
  *(v0 + 112) = v17;
  [v16 resultWithCompletion:v0 + 80];
  sub_10000481C();

  return _swift_continuation_await(v19);
}

uint64_t sub_1000C2FD0()
{
  sub_100004768();
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1000C34B4;
  }

  else
  {
    v2 = sub_1000C30DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C30DC()
{
  v27 = *(v0 + 288);

  if (qword_1002686F0 != -1)
  {
    sub_100006B94(&qword_1002686F0);
  }

  v1 = *(v0 + 200);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F60;
  v6 = (v5 + v4);
  *(v0 + 104) = type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
  *(v0 + 80) = v1;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v0 + 264);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 80));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 104) = &type metadata for Bool;
  *(v0 + 80) = v27;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v0 + 80);
  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10, v5);

  v11 = sub_10000AB78();
  if (v16)
  {

    sub_10000B7F4();
    sub_10000481C();

    return _swift_task_switch(v12, v13, v14);
  }

  else
  {
    v17 = sub_100007F48(v11);
    if (v16)
    {
      v19 = *(v18 + 8 * v17 + 32);
    }

    else
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    sub_10000A360(v19);
    v20 = sub_100005104();
    v21 = [objc_allocWithZone(AMSDeviceAccountPrivacyAcknowledgementTask) initWithAccount:v6 bag:v20];

    v22 = [v21 performPrivacyAcknowledgement];
    *(v0 + 272) = v22;

    *(v0 + 16) = v0;
    sub_100008348();
    v23 = sub_10007B9A4(&qword_10026BA00, &qword_1001E91E8);
    sub_10000BEC8(v23);
    *(v0 + 88) = 1107296256;
    sub_1000079B4(&unk_1002489B8);
    [v22 resultWithCompletion:v0 + 80];
    sub_10000481C();

    return _swift_continuation_await(v24);
  }
}

uint64_t sub_1000C33E8()
{
  sub_100004768();
  *(*(v0 + 232) + 112) = 0;

  return _swift_task_switch(sub_1000C3454, 0, 0);
}

uint64_t sub_1000C3454()
{
  sub_100004768();
  sub_100012BCC("engagementScheduler");
  v0 = sub_100007484();

  return v1(v0);
}

uint64_t sub_1000C34B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = v3 + 10;
  v4 = v3[34];
  swift_willThrow();

  if (qword_1002686F0 != -1)
  {
    sub_100006B94(&qword_1002686F0);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F60;
  v7 = type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
  sub_100023D2C(v7);
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = v3[35];
  v27 = v3[33];
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v28);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v11 = v3[18];
  v12 = v3[19];
  v3[13] = v12;
  v13 = sub_100017E64(v28);
  (*(*(v12 - 8) + 16))(v13, v11, v12);
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v28);
  v14 = static os_log_type_t.error.getter();
  sub_1000036B0(v14, v6);

  v15 = sub_10000AB78();
  if (v19)
  {

    v16 = sub_10000B7F4();

    return _swift_task_switch(v16, v17, v18);
  }

  else
  {
    v20 = sub_100007F48(v15);
    if (v19)
    {
      v22 = *(v21 + 8 * v20 + 32);
    }

    else
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    sub_10000A360(v22);
    v23 = sub_100005104();
    v24 = [objc_allocWithZone(AMSDeviceAccountPrivacyAcknowledgementTask) initWithAccount:v10 bag:v23];

    v25 = [v24 performPrivacyAcknowledgement];
    v3[34] = v25;

    v3[2] = v3;
    sub_100008348();
    v3[17] = sub_10007B9A4(&qword_10026BA00, &qword_1001E91E8);
    v3[10] = _NSConcreteStackBlock;
    v3[11] = 1107296256;
    sub_1000079B4(&unk_1002489B8);
    [v25 resultWithCompletion:?];

    return _swift_continuation_await(v6);
  }
}

uint64_t sub_1000C383C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_100003CA8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1000F115C();
  }

  else
  {
    v8 = *v5;

    return sub_1000E33AC(v8, v4);
  }
}

uint64_t sub_1000C38C0(uint64_t *a1, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *a1;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v29, v9, &v31);
  sub_10000E1E8(v29);
  if (!v32)
  {
    sub_100002C5C(&v31);
LABEL_6:

    sub_1000EF558();
    v11 = *(*a2 + 16);
    result = sub_1000EF644(v11);
    v13 = *a2;
    *(v13 + 16) = v11 + 1;
    *(v13 + 8 * v11 + 32) = v9;
    return result;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001E5F60;
  v15 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for DeviceAccountPrivacyAcknowledgementHandler();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v16 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v30 = v16;
  v29[0] = v9;

  static LogInterpolation.sensitive(_:)();
  sub_100002C5C(v29);
  v17 = static os_log_type_t.default.getter();
  sub_1000036B0(v17, v14);

  v18 = a4[3];
  v19 = a4[4];
  sub_100003CA8(a4, v18);
  v20 = sub_1000C3E44(v9, v18, v19);
  if (v5)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1001E5F60;
    v22 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v30 = v28;
    v23 = sub_100017E64(v29);
    (*(*(v28 - 8) + 16))(v23);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v29);
    v24 = static os_log_type_t.error.getter();
    sub_1000036B0(v24, v21);
  }

  else if (v20)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_1000040E4(*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10));
    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1001E5F60;
    v26 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v30 = v16;
    v29[0] = v9;

    static LogInterpolation.sensitive(_:)();
    sub_100002C5C(v29);
    v27 = static os_log_type_t.default.getter();
    sub_1000036B0(v27, v25);
  }
}

uint64_t sub_1000C3E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v9, a1, &v10);
  sub_10000E1E8(v9);
  if (!v11)
  {
    sub_100002C5C(&v10);
    goto LABEL_5;
  }

  sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_1000C43E8();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    return v3;
  }

  v3 = sub_1000C4118(0x746E756F636361, a2, a3);

  return v3;
}

uint64_t sub_1000C3F80()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000C3FDC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1000C402C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000C4080(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1000C4098(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1000C40C8()
{
  sub_10007B9A4(&qword_10026B9F8, &qword_1001E91E0);
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_1000C4118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100052D94(a1, &v17);
  if (!v18)
  {
    sub_100002C5C(&v17);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1000C43E8();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    return v3;
  }

  sub_100052D94(a1, &v17);
  if (v18)
  {
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v16;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_100002C5C(&v17);
    v8 = 0;
    v9 = 0;
  }

  sub_100052D94(a1, &v17);
  if (v18)
  {
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v15;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_100002C5C(&v17);
    v12 = 0;
    v13 = 0;
  }

  v3 = (*(a3 + 24))(v15, v8, v9, v12, v13, a2, a3);

  return v3;
}

void *sub_1000C430C(uint64_t a1, void *a2)
{
  v5[3] = sub_100002BC0(0, &unk_100271F90, ACAccountStore_ptr);
  v5[4] = &off_100246688;
  v5[0] = a2;
  v3 = a2;
  sub_10009A4F0();
  sub_100002C00(v5);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_1000C43E8()
{
  result = qword_10026BA08;
  if (!qword_10026BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BA08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccountDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000C451C()
{
  result = qword_10026BA10;
  if (!qword_10026BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BA10);
  }

  return result;
}

uint64_t sub_1000C4570(uint64_t a1)
{
  sub_10007B9A4(&qword_10026AB48, &unk_1001E8700);
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v33 = a1;

  v8 = 0;
  v9 = &unk_10026BA28;
  v34 = v7;
  v35 = v3;
  if (v6)
  {
    while (1)
    {
      v10 = v8;
LABEL_9:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v10 << 6);
      v13 = *(*(v33 + 48) + v12);
      sub_1000262E4(*(v33 + 56) + 40 * v12, &v39);
      LOBYTE(v42) = v13;
      sub_10003B104(&v39, &v42 + 8);
LABEL_10:
      v47[1] = v43;
      v47[2] = v44;
      v47[0] = v42;
      if (!v44)
      {
        break;
      }

      v14 = LOBYTE(v47[0]);
      sub_10003B104((v47 + 8), v46);
      v15 = 0xE300000000000000;
      v16 = 7368801;
      switch(v14)
      {
        case 1:
          v15 = 0xE700000000000000;
          v16 = 0x79726574746162;
          break;
        case 2:
          v15 = 0xE700000000000000;
          v16 = 0x64657461657263;
          break;
        case 3:
          v15 = 0xE900000000000073;
          v16 = 0x73616C4361746164;
          break;
        case 4:
          v15 = 0xE400000000000000;
          v16 = 1702125924;
          break;
        case 5:
          v16 = 0x6441734965746164;
          v15 = 0xEE00657669747061;
          break;
        case 6:
          v15 = 0xE500000000000000;
          v16 = 0x79616C6564;
          break;
        case 7:
          v15 = 0xE600000000000000;
          v16 = 0x73746E657665;
          break;
        case 8:
          v15 = 0xEA00000000007265;
          v16 = 0x696669746E656469;
          break;
        case 9:
          v15 = 0xE500000000000000;
          v16 = 0x6563617267;
          break;
        case 10:
          v15 = 0xE400000000000000;
          v16 = 1701869940;
          break;
        case 11:
          v16 = 0xD000000000000010;
          v15 = 0x80000001001F2E10;
          break;
        case 12:
          v16 = 0x746972777265766FLL;
          v15 = 0xE900000000000065;
          break;
        default:
          break;
      }

      sub_1000262E4(v46, v40);
      *&v39 = v16;
      *(&v39 + 1) = v15;
      v45 = v41;
      v43 = v40[0];
      v44 = v40[1];
      v42 = v39;
      sub_10000A384(&v42, &v39);
      sub_10000A384(&v42, v36);
      sub_10003B104(&v37, v38);
      v17 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100023D48();
      sub_100003058();
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_38;
      }

      sub_100005800();
      sub_10007B9A4(&qword_10026BA30, &qword_1001E92C8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v21))
      {
        sub_100023D48();
        sub_10000BEE8();
        if (!v23)
        {
          goto LABEL_40;
        }

        v9 = v22;
      }

      if (&qword_1001E92C0)
      {

        v24 = (*(v2 + 56) + 40 * v9);
        sub_100002C00(v24);
        sub_10003B104(v38, v24);
        sub_100007494();
        sub_10000A064(v25, v26, &qword_1001E92C0);
        sub_100002C00(v46);
      }

      else
      {
        sub_100005140();
        *(v27 + 16 * v9) = v17;
        sub_10003B104(v38, *(v2 + 56) + 40 * v9);
        sub_100007494();
        sub_10000A064(v28, v29, &qword_1001E92C0);
        sub_100002C00(v46);
        sub_1000079CC();
        if (v31)
        {
          goto LABEL_39;
        }

        *(v2 + 16) = v30;
      }

      sub_100002C00(v40);
      v7 = v34;
      v3 = v35;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return v2;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        v6 = 0;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        goto LABEL_10;
      }

      v6 = *(v3 + 8 * v10);
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

void *sub_1000C49F8(uint64_t a1)
{
  sub_1000AE324();
  v3 = Dictionary.init(dictionaryLiteral:)();
  v4 = a1 + 64;
  sub_100006BB4();
  v6 = v5 >> 6;
  v35 = a1;

  v7 = 0;
  v34 = a1 + 64;
  while (v1)
  {
LABEL_7:
    sub_10000B810();
    v10 = (*(v35 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    sub_100011BAC(*(v35 + 56) + 32 * v9, v39);
    *&v41 = v12;
    *(&v41 + 1) = v11;
    sub_100002C4C(v39, &v42);

LABEL_8:
    v44 = v41;
    v45[0] = v42;
    v45[1] = v43;
    v13 = *(&v41 + 1);
    if (!*(&v41 + 1))
    {

      return v3;
    }

    v14 = v44;
    sub_100002C4C(v45, v40);

    v15._countAndFlagsBits = v14;
    v15._object = v13;
    v16 = _findStringSwitchCase(cases:string:)(&off_100244748, v15);

    if (v16 >= 9)
    {
      sub_100002C00(v40);
    }

    else
    {
      LOBYTE(v39[0]) = v16;
      sub_100011BAC(v40, v39 + 8);
      v41 = v39[0];
      v42 = v39[1];
      sub_10000837C();
      sub_10004ED94(v17, v18, &qword_10026BA38, &unk_1001E92D0);
      sub_10004ED94(&v41, v37, &qword_10026BA38, &unk_1001E92D0);
      v19 = LOBYTE(v39[0]);
      sub_100002C4C(&v38, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000AACB8(v19);
      sub_100003058();
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_23;
      }

      v26 = v21;
      v27 = v22;
      sub_10007B9A4(&qword_10026AFB0, &qword_1001E8738);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
      {
        v28 = sub_1000AACB8(v19);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_25;
        }

        v26 = v28;
      }

      if (v27)
      {
        v30 = (v3[7] + 32 * v26);
        sub_100002C00(v30);
        sub_100002C4C(v36, v30);
        sub_10000A064(&v41, &qword_10026BA38, &unk_1001E92D0);
        sub_100002C00(v40);
      }

      else
      {
        v3[(v26 >> 6) + 8] |= 1 << v26;
        *(v3[6] + v26) = v19;
        sub_100002C4C(v36, (v3[7] + 32 * v26));
        sub_10000A064(&v41, &qword_10026BA38, &unk_1001E92D0);
        sub_100002C00(v40);

        sub_1000079CC();
        if (v32)
        {
          goto LABEL_24;
        }

        v3[2] = v31;
      }

      sub_100002C00(v39 + 1);
      v4 = v34;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      v1 = 0;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      goto LABEL_8;
    }

    v1 = *(v4 + 8 * v8);
    ++v7;
    if (v1)
    {
      v7 = v8;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C4D58(uint64_t a1)
{
  v3 = Dictionary.init(dictionaryLiteral:)();
  v4 = a1 + 64;
  sub_100006BB4();
  v6 = v5 >> 6;
  v37 = a1;

  v7 = 0;
  v8 = &unk_100271F40;
  v38 = v6;
  v39 = v4;
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v1 = 0;
      *&v48 = 0;
      v46 = 0u;
      v47 = 0u;
      goto LABEL_8;
    }

    v1 = *(v4 + 8 * v9);
    ++v7;
    if (v1)
    {
      v7 = v9;
LABEL_7:
      while (1)
      {
        sub_10000B810();
        v11 = *(*(v37 + 48) + v10);
        sub_100011BAC(*(v37 + 56) + 32 * v10, &v44);
        LOBYTE(v46) = v11;
        sub_100002C4C(&v44, (&v46 + 8));
LABEL_8:
        v50[0] = v46;
        v50[1] = v47;
        v51 = v48;
        if (!v48)
        {
          break;
        }

        v12 = LOBYTE(v50[0]);
        sub_100002C4C((v50 + 8), v49);
        v13 = 0xE900000000000073;
        v14 = 0x79654B6863746162;
        switch(v12)
        {
          case 1:
            v13 = 0xE800000000000000;
            v14 = 0x79654B6568636163;
            break;
          case 2:
            v13 = 0xE700000000000000;
            v14 = 0x64657461657263;
            break;
          case 3:
            v13 = 0xE700000000000000;
            v14 = 0x73657269707865;
            break;
          case 4:
            v13 = 0xE800000000000000;
            v14 = 0x617461646174656DLL;
            break;
          case 5:
            v13 = 0xE400000000000000;
            v14 = 1752457584;
            break;
          case 6:
            v13 = 0xE500000000000000;
            v14 = 0x6574617473;
            break;
          case 7:
            v14 = 0x6E6564496B736174;
            v13 = 0xEE00726569666974;
            break;
          case 8:
            v13 = 0xE700000000000000;
            v14 = 0x6E6F6973726576;
            break;
          default:
            break;
        }

        *&v44 = v14;
        *(&v44 + 1) = v13;
        sub_100011BAC(v49, v45);
        v46 = v44;
        v47 = v45[0];
        v48 = v45[1];
        sub_10000A384(&v46, &v44);
        sub_10000A384(&v46, v41);
        sub_100002C4C(&v42, v43);
        v15 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        sub_100023D48();
        sub_100003058();
        if (__OFADD__(v16, v17))
        {
          goto LABEL_32;
        }

        sub_100005800();
        v18 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        if (sub_100006348(v18, v19, v20, v21, v22, v23, v24, v25, v37, v38, v39, v3))
        {
          sub_100023D48();
          sub_10000BEE8();
          if (!v27)
          {
            goto LABEL_34;
          }

          v8 = v26;
        }

        if (&unk_1001EA290)
        {

          v3 = *v40;
          v28 = (*(*v40 + 56) + 32 * v8);
          sub_100002C00(v28);
          sub_100002C4C(v43, v28);
          sub_100007494();
          sub_10000A064(v29, v30, &unk_1001EA290);
          sub_100002C00(v49);
        }

        else
        {
          v3 = *v40;
          sub_100005140();
          *(v31 + 16 * v8) = v15;
          sub_100002C4C(v43, (*(*v40 + 56) + 32 * v8));
          sub_100007494();
          sub_10000A064(v32, v33, &unk_1001EA290);
          sub_100002C00(v49);
          sub_1000079CC();
          if (v35)
          {
            goto LABEL_33;
          }

          *(*v40 + 16) = v34;
        }

        sub_100002C00(v45);
        v6 = v38;
        v4 = v39;
        if (!v1)
        {
          goto LABEL_3;
        }
      }

      return v3;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C5120(uint64_t a1)
{
  sub_1000AF20C();
  v5 = Dictionary.init(dictionaryLiteral:)();
  v6 = a1 + 64;
  sub_100006BB4();
  v8 = v7 >> 6;
  v34 = a1;

  v9 = 0;
  v32 = v8;
  v33 = a1 + 64;
  if (v1)
  {
    while (1)
    {
      v10 = v9;
LABEL_6:
      v11 = (v10 << 9) | (8 * __clz(__rbit64(v1)));
      v12 = *(*(v34 + 48) + v11);
      v13 = *(*(v34 + 56) + v11);
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      v17 = v13;
      v35 = v12;
      v18 = v17;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100012A94();
      sub_100003058();
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        break;
      }

      sub_100005800();
      sub_10007B9A4(&qword_100269868, &qword_1001E6308);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22))
      {
        sub_100012A94();
        sub_10000BEE8();
        if (!v24)
        {
          goto LABEL_21;
        }

        v2 = v23;
      }

      v1 &= v1 - 1;
      if (v3)
      {

        v25 = *(v5 + 56);
        v26 = *(v25 + 8 * v2);
        *(v25 + 8 * v2) = v18;
      }

      else
      {
        sub_100005140();
        v28 = (v27 + 16 * v2);
        *v28 = v14;
        v28[1] = v16;
        *(*(v5 + 56) + 8 * v2) = v18;

        sub_1000079CC();
        if (v30)
        {
          goto LABEL_20;
        }

        *(v5 + 16) = v29;
      }

      v9 = v10;
      v8 = v32;
      v6 = v33;
      if (!v1)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return v5;
      }

      v1 = *(v6 + 8 * v10);
      ++v9;
      if (v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C5360(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v13 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  result = __chkstk_darwin(v13 - 8);
  v16 = &v19 - v15;
  if (a4)
  {
    if (qword_100268830 != -1)
    {
      sub_100006940(&qword_100268830);
    }

    sub_100011C54(a5, a6);
    sub_100003CA8(a7, a7[3]);

    sub_1001CF380();

    v17 = type metadata accessor for TaskPriority();
    sub_10000A7C0(v16, 1, 1, v17);
    sub_1000262E4(a7, v20);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    sub_10003B104(v20, (v18 + 4));
    v18[9] = a8;
    v18[10] = a5;
    v18[11] = a6;

    sub_1000E349C();
  }

  return result;
}

uint64_t sub_1000C54F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  return _swift_task_switch(sub_1000C5518, 0, 0);
}

uint64_t sub_1000C5518()
{
  v1 = *(v0 + 112);
  v2 = sub_100003CA8(*(v0 + 104), *(*(v0 + 104) + 24));
  *(v0 + 88) = type metadata accessor for DynamicActivityTaskScheduler();
  *(v0 + 96) = &off_100248A70;
  *(v0 + 64) = v1;
  v4 = *v2;
  v3 = v2[1];
  *(v0 + 41) = *(v2 + 25);
  *(v0 + 16) = v4;
  *(v0 + 32) = v3;

  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_1000C55F8;

  return sub_10015DEDC();
}

uint64_t sub_1000C55F8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1000C57AC;
  }

  else
  {
    sub_100002C00((v2 + 64));
    v3 = sub_1000C5724;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C5724()
{
  if (qword_100268830 != -1)
  {
    sub_100006940(&qword_100268830);
  }

  sub_1001AE448(v0[15], v0[16]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000C57AC()
{
  sub_100002C00(v0 + 8);
  if (qword_100268830 != -1)
  {
    sub_100006940(&qword_100268830);
  }

  sub_1001AE448(v0[15], v0[16]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000C5860(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000B1388;

  return sub_1000C54F4(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_1000C5934()
{
  v2 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v2);
  sub_100004E78();
  __chkstk_darwin(v3);
  v5 = &v23 - v4;
  v6 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v6);
  sub_100004E78();
  __chkstk_darwin(v7);
  v8 = sub_100003F40();
  sub_100002CC4();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v13);
  v15 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  sub_100047A74(v1);
  if (sub_100009F34(v1, 1, v8) == 1)
  {
    return sub_100009FB0(v1, &unk_10026FEE0, &unk_1001E67C0);
  }

  v19 = *(v10 + 32);
  v19(v17, v1, v8);
  v20 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v5, 1, 1, v20);
  (*(v10 + 16))(v15, v17, v8);
  v21 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v0;
  v19(&v22[v21], v15, v8);
  sub_1000E349C();

  return (*(v10 + 8))(v17, v8);
}

uint64_t sub_1000C5B98()
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v2);
  sub_100004E78();
  __chkstk_darwin(v3);
  v4 = sub_100003F40();
  sub_100002CC4();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_100047C24(v1);
  if (sub_100009F34(v1, 1, v4) == 1)
  {
    return sub_100009FB0(v1, &unk_10026FEE0, &unk_1001E67C0);
  }

  v14 = *(v6 + 32);
  v34 = v6 + 32;
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v14;
  v14(v12, v1, v4);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v15 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v15);
  v36 = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001E5F60;
  v17 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for DynamicUICache();
  v37 = v0;
  sub_10000719C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v18 = v36;
  v41 = v4;
  sub_100017E64(&aBlock);
  v19 = *(v6 + 16);
  sub_10000874C();
  v19();
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&aBlock, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v20 = static os_log_type_t.info.getter();
  sub_1000036B0(v20, v16);

  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v21 = sub_1000078B4();
  v22 = v35;
  if (qword_100268648 != -1)
  {
    sub_10000BEF8(&qword_100268648);
  }

  v23 = [v21 arrayForKey:qword_1002877B0];

  v24 = [v23 valuePromise];
  sub_10000874C();
  v19();
  v25 = v18;
  v26 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v27 = swift_allocObject();
  v28 = v37;
  *(v27 + 16) = v37;
  v33(v27 + v26, v22, v4);
  v42 = sub_1000CB7FC;
  v43 = v27;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_10008E0EC;
  v41 = &unk_100248BF0;
  v29 = _Block_copy(&aBlock);

  [v24 addSuccessBlock:v29];
  _Block_release(v29);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v42 = sub_1000CB884;
  v43 = v30;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_1000266E0;
  v41 = &unk_100248C40;
  v31 = _Block_copy(&aBlock);

  [v24 addErrorBlock:v31];
  _Block_release(v31);

  return (*(v6 + 8))(v25, v4);
}

NSString sub_1000C60B4()
{
  result = String._bridgeToObjectiveC()();
  qword_1002877A0 = result;
  return result;
}

NSString sub_1000C60F0()
{
  result = String._bridgeToObjectiveC()();
  qword_1002877A8 = result;
  return result;
}

NSString sub_1000C6128()
{
  result = String._bridgeToObjectiveC()();
  qword_1002877B0 = result;
  return result;
}

NSString sub_1000C6168()
{
  result = String._bridgeToObjectiveC()();
  qword_1002877B8 = result;
  return result;
}

NSString sub_1000C61A0()
{
  result = String._bridgeToObjectiveC()();
  qword_1002877C0 = result;
  return result;
}

NSString sub_1000C61D8()
{
  result = String._bridgeToObjectiveC()();
  qword_1002877C8 = result;
  return result;
}

void sub_1000C6210()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  v1 = [objc_opt_self() sessionWithConfiguration:v0];

  qword_10026BAD8 = v1;
}

CFPropertyListRef sub_1000C6284()
{
  type metadata accessor for Defaults();
  result = sub_1000571D4(13);
  if (result)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C6300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000C6320, 0, 0);
}

uint64_t sub_1000C6320()
{
  sub_100004768();
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v1 = sub_1000078B4();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1000C63E8;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1000C995C(v1, v3, v4);
}

uint64_t sub_1000C63E8()
{
  sub_100004768();
  v1 = *(*v0 + 32);

  sub_100002D8C();

  return v2();
}

uint64_t sub_1000C64EC(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  type metadata accessor for AMSBagKey(0);
  sub_1000CB7A4();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v22[0] = 0;
  v5 = [v3 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v22];

  v6 = v22[0];
  if (v5)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    Data.write(to:options:)();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001E5F60;
    v17 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for DynamicUICache();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v18 = type metadata accessor for URL();
    v23 = v18;
    v19 = sub_100017E64(v22);
    (*(*(v18 - 8) + 16))(v19, a2, v18);
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v22, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v20 = static os_log_type_t.info.getter();
    sub_1000036B0(v20, v16);

    return sub_1000253FC(v7, v9);
  }

  else
  {
    v10 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1001E5F60;
    v12 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for DynamicUICache();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v23 = v21;
    v13 = sub_100017E64(v22);
    (*(*(v21 - 8) + 16))(v13);
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v22, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v14 = static os_log_type_t.error.getter();
    sub_1000036B0(v14, v11);
  }
}

id sub_1000C69C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  sub_100002CC4();
  v57 = v5;
  __chkstk_darwin(v6);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v10);
  v13 = *(v12 + 80);
  v14 = (v13 + 32) & ~v13;
  v64 = 3 * *(v11 + 72);
  v65 = v13;
  v67 = v9;
  v15 = swift_allocObject();
  v62 = xmmword_1001E5F60;
  *(v15 + 16) = xmmword_1001E5F60;
  v66 = v14;
  v16 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = type metadata accessor for DynamicUICache();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v17 = type metadata accessor for URL();
  v70 = v17;
  sub_100017E64(v69);
  sub_1000074A0();
  v19 = *(v18 + 16);
  v59 = v18 + 16;
  v60 = v19;
  v19();
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v69, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v20 = qword_100287810;
  v21 = static os_log_type_t.info.getter();
  v58 = v20;
  sub_1000036B0(v21, v15);

  v22 = Data.init(contentsOf:options:)();
  v68 = a1;
  v61 = v17;
  v54 = v4;
  v55 = v2;
  v23 = v22;
  v25 = v24;
  v56 = [objc_allocWithZone(AMSSnapshotBagBuilder) init];
  sub_100002BC0(0, &unk_10026FEF0, NSKeyedUnarchiver_ptr);
  sub_10007B9A4(&qword_10026BB78, &qword_1001EF740);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1001E6580;
  *(v26 + 32) = sub_100002BC0(0, &qword_10026BB80, NSArray_ptr);
  *(v26 + 40) = sub_100002BC0(0, &qword_10026FF00, NSDictionary_ptr);
  *(v26 + 48) = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  *(v26 + 56) = sub_100002BC0(0, &qword_10026A528, NSString_ptr);
  sub_10000719C();
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  v53[0] = v23;
  v53[1] = v25;

  if (v70)
  {
    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v33 = swift_dynamicCast();
    v34 = v54;
    if (v33)
    {
      v35.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      goto LABEL_10;
    }
  }

  else
  {
    sub_100009FB0(v69, &qword_10026D350, &qword_1001E6050);
    v34 = v54;
  }

  v35.super.isa = 0;
LABEL_10:
  v36 = v56;
  [v56 setData:v35.super.isa];

  static Date.distantFuture.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v38 = v8;
  v39 = v36;
  (*(v57 + 8))(v38, v34);
  [v36 setExpirationDate:isa];

  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v40 = sub_1000060F4();
  v41 = [v40 profile];

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  sub_10004A67C(v42, v44, v36, &selRef_setProfile_);
  v45 = sub_1000060F4();
  v46 = [v45 profileVersion];

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  sub_10004A67C(v47, v49, v39, &selRef_setProfileVersion_);
  v69[0] = 0;
  v50 = [v39 buildWithError:v69];
  v51 = v69[0];
  if (v50)
  {

    sub_1000293BC();
  }

  else
  {
    v52 = v51;
    sub_100011610();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000293BC();
    v27 = swift_allocObject();
    *(v27 + 16) = v62;
    v28 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000719C();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v29 = v61;
    v70 = v61;
    v30 = sub_100017E64(v69);
    (v60)(v30, v68, v29);
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v69, &qword_10026D350, &qword_1001E6050);
    v31 = static os_log_type_t.info.getter();
    sub_1000036B0(v31, v27);

    return 0;
  }

  return v50;
}

uint64_t sub_1000C7118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  v93 = a2;
  v77 = type metadata accessor for JetpackOutputWriter(0);
  v3 = __chkstk_darwin(v77);
  v73 = (&v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v82 = (&v70 - v5);
  v6 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v7 = __chkstk_darwin(v6 - 8);
  v72 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v81 = &v70 - v9;
  v87 = type metadata accessor for URL();
  v10 = *(v87 - 8);
  v11 = __chkstk_darwin(v87);
  v71 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v70 = &v70 - v14;
  v15 = __chkstk_darwin(v13);
  v76 = &v70 - v16;
  v17 = __chkstk_darwin(v15);
  v80 = &v70 - v18;
  __chkstk_darwin(v17);
  v79 = &v70 - v19;
  v86 = type metadata accessor for NSFastEnumerationIterator();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSArray.makeIterator()();
  v83 = 0;
  v75 = (v10 + 32);
  v84 = (v10 + 8);
  v74 = (v10 + 16);
  v89 = "Invalid identifier";
  v22 = &unk_10026FEA0;
  v23 = &unk_1001E7540;
  v90 = "Failed to lookup sources";
  v92 = xmmword_1001E5F60;
  v88 = xmmword_1001E5F70;
  v91 = v21;
  while (1)
  {
    NSFastEnumerationIterator.next()();
    if (!v98)
    {
      return (*(v85 + 8))(v21, v86);
    }

    sub_100002C4C(&v97, &v96);
    sub_100011BAC(&v96, v95);
    v24 = sub_10007B9A4(v22, v23);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v37 = swift_allocObject();
      *(v37 + 16) = v92;
      v38 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for DynamicUICache();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      sub_100011BAC(&v96, v95);
      static LogInterpolation.safe(_:)();
      sub_100009FB0(v95, &qword_10026D350, &qword_1001E6050);
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v39 = static os_log_type_t.error.getter();
      sub_1000036B0(v39, v37);

      goto LABEL_20;
    }

    v25 = v94;
    if (*(v94 + 16) && (v26 = sub_100012A94(), (v27 & 1) != 0) && (sub_100011BAC(*(v25 + 56) + 32 * v26, v95), (swift_dynamicCast() & 1) != 0))
    {
      if (*(v25 + 16))
      {
        v28 = sub_100012A94();
        if (v29)
        {
          sub_100011BAC(*(v25 + 56) + 32 * v28, v95);
          if (swift_dynamicCast())
          {
            v30 = v22;
            v31 = v81;
            URL.init(string:)();

            v32 = v87;
            if (sub_100009F34(v31, 1, v87) != 1)
            {

              v46 = v79;
              (*v75)(v79, v31, v32);
              v47 = v76;
              v48 = v78;
              URL.appendingPathComponent(_:)();

              URL.pathExtension.getter();
              v49 = v80;
              URL.appendingPathExtension(_:)();

              v50 = *v84;
              (*v84)(v47, v32);
              sub_1000C7EB8(v46, v49);
              v51 = v77;
              v52 = *v74;
              v53 = v82;
              (*v74)(v82 + *(v77 + 20), v48, v32);
              v52(v53 + *(v51 + 24), v49, v32);
              v53[2] = 0u;
              v53[3] = 0u;
              *v53 = 0u;
              v53[1] = 0u;
              *(v53 + *(v51 + 28)) = 1;
              v54 = v83;
              sub_1000FDA8C();
              if (v54)
              {
              }

              v83 = 0;
              v22 = v30;
              sub_1000CB88C(v82);
              v67 = v87;
              v50(v80, v87);
              v50(v79, v67);
              v23 = &unk_1001E7540;
              goto LABEL_20;
            }

            sub_100009FB0(v31, &unk_10026FEE0, &unk_1001E67C0);
            v22 = v30;
            v23 = &unk_1001E7540;
          }
        }
      }

      if (!*(v25 + 16) || (v33 = sub_100012A94(), (v34 & 1) == 0))
      {

        goto LABEL_25;
      }

      sub_100011BAC(*(v25 + 56) + 32 * v33, v95);

      if (swift_dynamicCast())
      {
        v35 = v72;
        URL.init(string:)();

        v36 = v87;
        if (sub_100009F34(v35, 1, v87) == 1)
        {

          sub_100009FB0(v35, &unk_10026FEE0, &unk_1001E67C0);
          goto LABEL_26;
        }

        v55 = v23;
        v56 = v22;
        v57 = v70;
        (*v75)(v70, v35, v36);
        v58 = v76;
        v59 = v78;
        URL.appendingPathComponent(_:)();

        URL.pathExtension.getter();
        v60 = v36;
        v61 = v71;
        URL.appendingPathExtension(_:)();

        v62 = *v84;
        (*v84)(v58, v60);
        sub_1000C7EB8(v57, v61);
        v63 = v77;
        v64 = *v74;
        v65 = v73;
        (*v74)(v73 + *(v77 + 20), v59, v60);
        v64(v65 + *(v63 + 24), v61, v60);
        v65[2] = 0u;
        v65[3] = 0u;
        *v65 = 0u;
        v65[1] = 0u;
        *(v65 + *(v63 + 28)) = 0;
        v66 = v83;
        sub_1000FDA8C();
        if (v66)
        {
        }

        v83 = 0;
        v22 = v56;
        sub_1000CB88C(v73);
        v68 = v87;
        v62(v71, v87);
        v62(v70, v68);
        v23 = v55;
        v21 = v91;
LABEL_20:
        sub_100002C00(&v96);
      }

      else
      {
LABEL_25:

LABEL_26:
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        type metadata accessor for LogInterpolation();
        v43 = swift_allocObject();
        *(v43 + 16) = v88;
        v44 = AMSSetLogKeyIfNeeded();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for DynamicUICache();
        static LogInterpolation.prefix<A>(_:_:)();

        LogInterpolation.init(stringLiteral:)();
        if (qword_1002686B0 != -1)
        {
          swift_once();
        }

        v45 = static os_log_type_t.error.getter();
        sub_1000036B0(v45, v43);

        sub_100002C00(&v96);
      }
    }

    else
    {
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v40 = swift_allocObject();
      *(v40 + 16) = v92;
      v41 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for DynamicUICache();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v95[3] = v24;
      v95[0] = v25;
      static LogInterpolation.safe(_:)();
      sub_100009FB0(v95, &qword_10026D350, &qword_1001E6050);
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v42 = static os_log_type_t.error.getter();
      sub_1000036B0(v42, v40);

      sub_100002C00(&v96);
      v21 = v91;
    }
  }
}

uint64_t sub_1000C7EB8(char *a1, uint64_t a2)
{
  v54 = a2;
  v58 = a1;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v53[6] = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = v6;
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLRequest();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v11 = *(type metadata accessor for LogInterpolation() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v53[4] = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001E5F60;
  v53[3] = v13;
  v15 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = v63;
  v53[2] = type metadata accessor for DynamicUICache();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v53[5] = v12;
  v17 = v58;
  v67 = v4;
  v18 = sub_100017E64(&aBlock);
  v59 = v5;
  v19 = *(v5 + 16);
  v19(v18, v17, v4);
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&aBlock, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v20 = qword_100287810;
  v21 = static os_log_type_t.default.getter();
  v53[1] = v20;
  sub_1000036B0(v21, v14);

  v57 = v4;
  v55 = v19;
  v19(v7, v17, v4);
  v22 = v62;
  v58 = v7;
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v23 = [objc_opt_self() defaultManager];
  v24 = v54;
  URL.path.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v23 fileExistsAtPath:v25];

  v27 = sub_1000C6284();
  v29 = v22;
  v30 = v16;
  v31 = v24;
  if (v28)
  {
    v32 = v28;
    if (v26)
    {
      v53[0] = v27;
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1001E5F70;
      v34 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();
      v31 = v24;

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v35._countAndFlagsBits = 0xD000000000000013;
      v35._object = 0x80000001001F6700;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
      v67 = &type metadata for String;
      v36 = v53[0];
      aBlock = v53[0];
      v65 = v32;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009FB0(&aBlock, &qword_10026D350, &qword_1001E6050);
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
      LogInterpolation.init(stringInterpolation:)();
      v38 = static os_log_type_t.debug.getter();
      sub_1000036B0(v38, v33);
      v29 = v62;
      v30 = v63;

      v39._object = 0x80000001001F6720;
      v40._countAndFlagsBits = v36;
      v40._object = v32;
      v39._countAndFlagsBits = 0xD000000000000011;
      URLRequest.addValue(_:forHTTPHeaderField:)(v40, v39);
    }
  }

  v41 = v26;
  v42 = v31;
  if (qword_100268668 != -1)
  {
    swift_once();
  }

  v43 = qword_10026BAD8;
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v45 = v57;
  v46 = v58;
  v55(v58, v42, v57);
  v47 = v59;
  v48 = (*(v59 + 80) + 25) & ~*(v59 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v30;
  *(v49 + 24) = v41;
  (*(v47 + 32))(v49 + v48, v46, v45);
  v68 = sub_1000CB8E8;
  v69 = v49;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_1000C9650;
  v67 = &unk_100248C90;
  v50 = _Block_copy(&aBlock);

  v51 = [v43 downloadTaskWithRequest:isa completionHandler:v50];
  _Block_release(v50);

  [v51 resume];
  return (*(v60 + 8))(v29, v61);
}

uint64_t sub_1000C85A0(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001E5F60;
  v3 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for DynamicUICache();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v8[3] = v7;
  v4 = sub_100017E64(v8);
  (*(*(v7 - 8) + 16))(v4);
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v8, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v5 = static os_log_type_t.error.getter();
  sub_1000036B0(v5, v2);
}

void sub_1000C87A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v110 = a6;
  v111 = a4;
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v11);
  v13 = v99 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v18 - 8);
  v20 = v99 - v19;
  v21 = type metadata accessor for URL();
  v22 = __chkstk_darwin(v21);
  v25 = v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1001E5F60;
    swift_errorRetain();
    v27 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for DynamicUICache();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v28 = v112;
    v29 = v113;
    v117 = v113;
    v30 = sub_100017E64(v116);
    (*(*(v29 - 1) + 16))(v30, v28, v29);
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v116, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v31 = static os_log_type_t.error.getter();
    sub_1000036B0(v31, v26);

    return;
  }

  v106 = v15;
  v107 = v13;
  v32 = a2;
  v108 = v25;
  v109 = v23;
  v33 = v22;
  sub_10001EC70(a1, v20);
  if (sub_100009F34(v20, 1, v33) != 1)
  {
    v34 = *(v109 + 32);
    v105 = v33;
    v34(v108, v20, v33);
    if (!v32 || (objc_opt_self(), (v35 = swift_dynamicCastObjCClass()) == 0))
    {
      (*(v109 + 8))(v108, v105);
      goto LABEL_14;
    }

    v36 = v35;
    sub_100002BC0(0, &unk_100270B80, NSDateFormatter_ptr);
    v102 = v32;
    v37 = sub_1000BFBD8();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v106 + 8))(v17, v14);
    v101 = v37;
    v39 = [v37 stringForObjectValue:isa];

    type metadata accessor for Defaults();
    sub_1000C2358(v39, 13);

    v40 = [v36 statusCode];
    v41 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v42 = *(type metadata accessor for LogInterpolation() - 8);
    v43 = *(v42 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v103 = *(v42 + 80);
    v106 = v41;
    v45 = swift_allocObject();
    v100 = xmmword_1001E5F70;
    *(v45 + 16) = xmmword_1001E5F70;
    v104 = v44;
    v46 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = type metadata accessor for DynamicUICache();
    static LogInterpolation.prefix<A>(_:_:)();
    v48 = v43;

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v49._countAndFlagsBits = 0xD000000000000029;
    v49._object = 0x80000001001F6760;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
    v117 = &type metadata for Int;
    v116[0] = v40;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v116, &qword_10026D350, &qword_1001E6050);
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v51 = qword_100287810;
    v52 = static os_log_type_t.debug.getter();
    sub_1000036B0(v52, v45);

    if (v40 == 304)
    {
      v53 = swift_allocObject();
      *(v53 + 16) = v100;
      v54 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v55 = static os_log_type_t.info.getter();
      sub_1000036B0(v55, v53);

      v56 = &v119;
LABEL_26:

      (*(v109 + 8))(v108, v105);
      return;
    }

    v107 = v51;
    v99[1] = v47;
    if (a5)
    {
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_1001E5F60;
      v66 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v67 = v105;
      v117 = v105;
      v68 = sub_100017E64(v116);
      (*(v109 + 16))(v68, v110, v67);
      static LogInterpolation.safe(_:)();
      sub_100009FB0(v116, &qword_10026D350, &qword_1001E6050);
      v69 = static os_log_type_t.info.getter();
      sub_1000036B0(v69, v65);

      v70 = [objc_opt_self() defaultManager];
      URL.path.getter();
      v71 = String._bridgeToObjectiveC()();

      v116[0] = 0;
      v72 = [v70 removeItemAtPath:v71 error:v116];

      v73 = v116[0];
      if (!v72)
      {
LABEL_25:
        v92 = v73;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1001E5F60;
        v94 = AMSSetLogKeyIfNeeded();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        static LogInterpolation.prefix<A>(_:_:)();

        LogInterpolation.init(stringLiteral:)();
        swift_getErrorValue();
        v95 = v114;
        v96 = v115;
        v117 = v115;
        v97 = sub_100017E64(v116);
        (*(*(v96 - 1) + 16))(v97, v95, v96);
        static LogInterpolation.safe(_:)();
        sub_100009FB0(v116, &qword_10026D350, &qword_1001E6050);
        v98 = static os_log_type_t.error.getter();
        sub_1000036B0(v98, v93);

        v56 = &v118;
        goto LABEL_26;
      }

      v74 = v116[0];
    }

    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1001E5F60;
    v76 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    *&v100 = v48;
    LogInterpolation.init(stringLiteral:)();
    v77 = v105;
    v117 = v105;
    v78 = sub_100017E64(v116);
    v79 = v109;
    (*(v109 + 16))(v78, v110, v77);
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v116, &qword_10026D350, &qword_1001E6050);
    v80 = static os_log_type_t.info.getter();
    sub_1000036B0(v80, v75);

    v81 = [objc_opt_self() defaultManager];
    v82 = v108;
    URL._bridgeToObjectiveC()(v83);
    v85 = v84;
    URL._bridgeToObjectiveC()(v86);
    v88 = v87;
    v116[0] = 0;
    v89 = [v81 moveItemAtURL:v85 toURL:v87 error:v116];

    v73 = v116[0];
    if (v89)
    {
      v90 = *(v79 + 8);
      v91 = v116[0];
      v90(v82, v77);

      return;
    }

    goto LABEL_25;
  }

  sub_100009FB0(v20, &unk_10026FEE0, &unk_1001E67C0);
LABEL_14:
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1001E5F70;
  v58 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for DynamicUICache();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v59._countAndFlagsBits = 0xD00000000000001BLL;
  v59._object = 0x80000001001F6740;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v59);
  if (v32)
  {
    v60 = sub_100002BC0(0, &qword_10026BBA0, NSURLResponse_ptr);
    v61 = v32;
  }

  else
  {
    v61 = 0;
    v60 = 0;
    v116[1] = 0;
    v116[2] = 0;
  }

  v116[0] = v61;
  v117 = v60;
  v62 = v32;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v116, &qword_10026D350, &qword_1001E6050);
  v63._countAndFlagsBits = 41;
  v63._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v63);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v64 = static os_log_type_t.error.getter();
  sub_1000036B0(v64, v57);
}

uint64_t sub_1000C9650(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = 1;
  }

  sub_10000A7C0(v10, v13, 1, v12);

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_100009FB0(v10, &unk_10026FEE0, &unk_1001E67C0);
}

uint64_t sub_1000C9780()
{
  sub_100003D28();
  v3 = v2;
  v4 = type metadata accessor for URL();
  sub_100003D10(v4);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1000C9870;

  return sub_1000C6300(v3, v7, v8, v9, v0 + v6);
}

uint64_t sub_1000C9870()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_1000C995C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[85] = a3;
  v3[84] = a2;
  v3[83] = a1;
  return _swift_task_switch(sub_1000C9984, 0, 0);
}

uint64_t sub_1000C9984()
{
  v1 = v0;
  v2 = (v0 + 400);
  *(v1 + 688) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  *(v1 + 696) = *(v4 + 72);
  *(v1 + 920) = *(v5 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F60;
  v7 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  *(v1 + 704) = type metadata accessor for DynamicUICache();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  *(v1 + 424) = type metadata accessor for URL();
  sub_100017E64(v2);
  sub_1000047A4();
  (*(v8 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v2, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  *(v1 + 712) = qword_100287810;
  v9 = static os_log_type_t.info.getter();
  sub_1000036B0(v9, v6);

  if (qword_100268638 != -1)
  {
    swift_once();
  }

  v10 = *(v1 + 664);
  v11 = qword_1002877A0;
  *(v1 + 720) = qword_1002877A0;
  v12 = [v10 stringForKey:v11];
  v13 = [v12 valuePromise];
  *(v1 + 728) = v13;

  sub_10001CBB4();
  *(v1 + 80) = v14;
  *(v1 + 120) = v1 + 608;
  *(v1 + 88) = sub_1000C9CE0;
  v15 = sub_1000181A4();
  v16 = sub_10007B9A4(&qword_10026BB88, &qword_1001E9398);
  *(v1 + 736) = v16;
  *(v1 + 456) = v16;
  *(v1 + 400) = _NSConcreteStackBlock;
  sub_10000B1E0(COERCE_DOUBLE(1107296256));
  sub_10000AB8C();
  *(v1 + 424) = v17;
  *(v1 + 432) = v15;
  [v13 resultWithCompletion:v2];

  return _swift_continuation_await(v1 + 80);
}

uint64_t sub_1000C9CE0()
{
  sub_100004768();
  sub_10000A870();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 744) = v4;
  if (v4)
  {
  }

  sub_100006368();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000C9DE0()
{
  sub_100003D28();
  v1 = v0[91];
  v2 = v0[90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100011A0C(isUniquelyReferenced_nonNull_native, v4, v5, v6, v7, v8, v9, v10, v20, v22);

  v0[94] = v21;
  if (qword_100268640 != -1)
  {
    sub_1000048E0(&qword_100268640);
  }

  v11 = v0[83];
  v12 = qword_1002877A8;
  v0[95] = qword_1002877A8;
  v13 = [v11 dictionaryForKey:v12];
  v14 = [v13 valuePromise];
  v0[96] = v14;

  sub_100015BB0();
  v0[26] = v15;
  v0[31] = v0 + 76;
  v0[27] = sub_1000CA1A0;
  v16 = sub_1000181A4();
  v17 = sub_10007B9A4(&qword_10026BB90, &unk_1001EE250);
  v0[97] = v17;
  v0[57] = v17;
  sub_100006BDC();
  sub_100017F58(COERCE_DOUBLE(1107296256));
  sub_100019BCC();
  v0[53] = v18;
  v0[54] = v16;
  [v14 resultWithCompletion:v0 + 50];

  return _swift_continuation_await(v0 + 26);
}

uint64_t sub_1000CA1A0()
{
  sub_100004768();
  sub_10000A870();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 240);
  *(v1 + 784) = v4;
  if (v4)
  {
  }

  sub_100006368();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000CA2A0()
{
  sub_100003D28();
  v1 = v0[96];
  v2 = v0[95];
  v3 = sub_10000A6EC();
  sub_100011A0C(v3, v4, v5, v6, v7, v8, v9, v10, v18, v20);

  v0[99] = v19;
  if (qword_100268648 != -1)
  {
    sub_10000BEF8(&qword_100268648);
  }

  v11 = v0[83];
  v12 = qword_1002877B0;
  v0[100] = qword_1002877B0;
  v13 = [v11 arrayForKey:v12];
  v0[101] = [v13 valuePromise];

  sub_100015BB0();
  v0[42] = v14;
  v0[47] = v0 + 76;
  v0[43] = sub_1000CA658;
  v15 = sub_1000181A4();
  v0[57] = sub_10007B9A4(&qword_100269878, &qword_1001E6318);
  sub_100006BDC();
  sub_100017F58(COERCE_DOUBLE(1107296256));
  v0[52] = sub_100048FD8;
  v0[53] = &unk_100248B28;
  v0[54] = v15;
  sub_100022238(v16, "resultWithCompletion:");

  return _swift_continuation_await(v0 + 42);
}

uint64_t sub_1000CA658()
{
  sub_100004768();
  sub_10000A870();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 368);
  *(v1 + 816) = v4;
  if (v4)
  {
  }

  sub_100006368();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000CA758()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = sub_10000A6EC();
  sub_10000A998(v3, v4, v5, v6, v7, v8, v9, v10, v19);

  v0[103] = v20;
  if (qword_100268660 != -1)
  {
    sub_10000C35C(&qword_100268660);
  }

  v11 = v0[97];
  v12 = v0[83];
  v13 = qword_1002877C8;
  v0[104] = qword_1002877C8;
  v14 = [v12 dictionaryForKey:v13];
  v0[105] = [v14 valuePromise];

  sub_100015BB0();
  v0[2] = v15;
  v0[7] = v0 + 76;
  v0[3] = sub_1000CAAD8;
  sub_1000181A4();
  v0[57] = v11;
  sub_100006BDC();
  sub_100017F58(COERCE_DOUBLE(1107296256));
  sub_100019BCC();
  v0[53] = v17;
  v0[54] = v16;
  sub_100022238(v16, "resultWithCompletion:");

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000CAAD8()
{
  sub_100004768();
  sub_10000A870();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 848) = v4;
  if (v4)
  {
  }

  sub_100006368();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000CABD8()
{
  sub_100003D28();
  v1 = v0[105];
  v2 = v0[104];
  v3 = sub_10000A6EC();
  sub_100011A0C(v3, v4, v5, v6, v7, v8, v9, v10, v18, v20);

  v0[107] = v19;
  if (qword_100268650 != -1)
  {
    sub_1000067B8(&qword_100268650);
  }

  v11 = v0[83];
  v12 = qword_1002877B8;
  v0[108] = qword_1002877B8;
  v13 = [v11 BOOLForKey:v12];
  v0[109] = [v13 valuePromise];

  sub_100015BB0();
  v0[34] = v14;
  v0[39] = v0 + 76;
  v0[35] = sub_1000CAF8C;
  v15 = sub_1000181A4();
  v0[57] = sub_10007B9A4(&qword_10026BB98, &qword_1001E93A0);
  sub_100006BDC();
  sub_100017F58(COERCE_DOUBLE(1107296256));
  v0[52] = sub_1000E42D8;
  v0[53] = &unk_100248B78;
  v0[54] = v15;
  sub_100022238(v16, "resultWithCompletion:");

  return _swift_continuation_await(v0 + 34);
}

uint64_t sub_1000CAF8C()
{
  sub_100004768();
  sub_10000A870();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 304);
  *(v1 + 880) = v4;
  if (v4)
  {
  }

  sub_100006368();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000CB08C()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = sub_10000A6EC();
  sub_10000A998(v3, v4, v5, v6, v7, v8, v9, v10, v18);

  v0[111] = v19;
  if (qword_100268658 != -1)
  {
    sub_100005C4C(&qword_100268658);
  }

  v11 = v0[92];
  v12 = v0[83];
  v13 = qword_1002877C0;
  v0[112] = qword_1002877C0;
  v14 = [v12 stringForKey:v13];
  v0[113] = [v14 valuePromise];

  sub_100015BB0();
  v0[18] = v15;
  v0[23] = v0 + 76;
  v0[19] = sub_1000CB41C;
  sub_1000181A4();
  v0[57] = v11;
  sub_100006BDC();
  sub_100017F58(COERCE_DOUBLE(1107296256));
  v0[52] = sub_100048FD8;
  v0[53] = &unk_100248BA0;
  v0[54] = v16;
  sub_100022238(v16, "resultWithCompletion:");

  return _swift_continuation_await(v0 + 18);
}

uint64_t sub_1000CB41C()
{
  sub_100004768();
  sub_10000A870();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 176);
  *(v1 + 912) = v4;
  if (v4)
  {
  }

  sub_100006368();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000CB51C()
{
  sub_100003D28();
  v1 = v0[113];
  v2 = v0[112];
  v3 = sub_10000A6EC();
  sub_10000A998(v3, v4, v5, v6, v7, v8, v9, v10, v13);

  if (*(v14 + 16))
  {
    sub_1000C64EC(v14, v0[84]);
  }

  sub_100002D8C();

  return v11();
}

uint64_t sub_1000CB5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[113];
  swift_willThrow();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F60;
  v6 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000719C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v3[53] = v3[74];
  sub_100017E64(v3 + 50);
  sub_1000074A0();
  (*(v7 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v3 + 50), &qword_10026D350, &qword_1001E6050);
  v8 = static os_log_type_t.error.getter();
  sub_1000036B0(v8, v5);

  if (*(v3[111] + 16))
  {
    sub_1000C64EC(v3[111], v3[84]);
  }

  sub_100002D8C();

  return v9();
}

unint64_t sub_1000CB7A4()
{
  result = qword_100268B58;
  if (!qword_100268B58)
  {
    type metadata accessor for AMSBagKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268B58);
  }

  return result;
}

uint64_t sub_1000CB7FC(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  sub_100003D10(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_1000C7118(a1, v5, v6);
}

uint64_t sub_1000CB86C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000CB88C(uint64_t a1)
{
  v2 = type metadata accessor for JetpackOutputWriter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000CB8E8()
{
  v0 = type metadata accessor for URL();
  sub_100003D10(v0);
  sub_10000874C();

  sub_1000C87A0(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1000CB9A8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((a1[4] & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_19;
      }

      return 1;
    }

    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a1[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = v4 == v6 && v5 == v7;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v8 == v10 && v9 == v11)
  {
    return 1;
  }

LABEL_19:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000CBA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (*(a3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_10001ECE0();

      if (!StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v15 = sub_10003A3C0(v14, v13, a3);

    return v15;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000CBBEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42[1] = a4;
  v48 = type metadata accessor for Calendar.Identifier();
  sub_100002CC4();
  v47 = v7;
  __chkstk_darwin(v8);
  sub_100002DEC();
  v11 = v10 - v9;
  type metadata accessor for Calendar();
  sub_100002CC4();
  v45 = v13;
  v46 = v12;
  __chkstk_darwin(v12);
  sub_100002DEC();
  v16 = v15 - v14;
  v17 = sub_10007B9A4(&qword_10026B530, &unk_1001EFCD0);
  __chkstk_darwin(v17 - 8);
  v19 = v42 - v18;
  v20 = type metadata accessor for Locale();
  sub_100002CC4();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_100002DEC();
  v26 = v25 - v24;
  v43 = sub_1000CBA78(a1, a2, a3);
  v44 = v27;
  if (v27)
  {
    v42[0] = a2;
    v28 = [objc_allocWithZone(NSDateFormatter) init];
    Locale.init(identifier:)();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v22 + 8))(v26, v20);
    [v28 setLocale:isa];

    TimeZone.init(secondsFromGMT:)();
    v30 = type metadata accessor for TimeZone();
    v31 = 0;
    if (sub_100009F34(v19, 1, v30) != 1)
    {
      v31 = TimeZone._bridgeToObjectiveC()().super.isa;
      (*(*(v30 - 8) + 8))(v19, v30);
    }

    [v28 setTimeZone:v31];

    sub_1000BFD18(0xD00000000000001BLL, 0x80000001001F6830, v28);
    v32 = v47;
    v33 = v48;
    (*(v47 + 104))(v11, enum case for Calendar.Identifier.gregorian(_:), v48);
    Calendar.init(identifier:)();
    (*(v32 + 8))(v11, v33);
    v34 = Calendar._bridgeToObjectiveC()().super.isa;
    (*(v45 + 8))(v16, v46);
    [v28 setCalendar:v34];

    v36 = v43;
    v35 = v44;
    v37 = String._bridgeToObjectiveC()();
    v38 = [v28 dateFromString:v37];

    v39 = v42[0];
    if (v38)
    {

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_1000CC06C();
      swift_allocError();
      *v41 = a1;
      *(v41 + 8) = v39;
      *(v41 + 16) = v36;
      *(v41 + 24) = v35;
      *(v41 + 32) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_1000CC06C();
    swift_allocError();
    *v40 = a1;
    *(v40 + 8) = a2;
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0;
    swift_willThrow();
  }
}

unint64_t sub_1000CC06C()
{
  result = qword_10026BBA8;
  if (!qword_10026BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBA8);
  }

  return result;
}

uint64_t sub_1000CC0CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CC10C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void *sub_1000CC170(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    v3 = a2 + 64;
    v4 = 1 << *(a2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a2 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v27 = result;
    while (v6)
    {
LABEL_10:
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = (result[6] + 16 * v10);
      v12 = result[7] + 32 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v30 = *(v12 + 16);
      v31 = *v11;
      v29 = *(v12 + 24);
      v32 = v11[1];
      if (*v12)
      {
        v15 = v13[2] + 1;
        do
        {
          if (!--v15)
          {

            goto LABEL_25;
          }

          v16 = v13[4];
          v17 = v13[5];
          v18 = v16 == 0x676F6C61746163 && v17 == 0xE700000000000000;
        }

        while (!v18 && (sub_10000A704(v16, v17) & 1) == 0);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v19 = _swiftEmptyArrayStorage;
        }

        else
        {
          sub_100003030();
          sub_1000D5158();
        }

        if (v19[2] >= v19[3] >> 1)
        {
          sub_1000D5158();
        }

        sub_100017D4C(v19);
        *(v20 + 32) = 1;
        *(v20 + 40) = v31;
        *(v20 + 48) = v32;
        sub_10001CD3C(v20, v27, v28, v29, v30);
      }

      else
      {

LABEL_25:
      }

      v6 &= v6 - 1;
      if (v14)
      {
        v21 = v14[2] + 1;
        do
        {
          if (!--v21)
          {

            goto LABEL_41;
          }

          v22 = v14[4];
          v23 = v14[5];
          v24 = v22 == 0x676F6C61746163 && v23 == 0xE700000000000000;
        }

        while (!v24 && (sub_10000A704(v22, v23) & 1) == 0);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v25 = _swiftEmptyArrayStorage;
        }

        else
        {
          sub_100003030();
          sub_1000D5158();
        }

        if (v25[2] >= v25[3] >> 1)
        {
          sub_1000D5158();
        }

        sub_100017D4C(v25);
        *(v26 + 32) = 0;
        *(v26 + 40) = v31;
        *(v26 + 48) = v32;
        sub_10001CD3C(v26, v27, v28, v29, v30);
        result = v27;
      }

      else
      {
LABEL_41:

        result = v27;
      }
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return _swiftEmptyArrayStorage;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000CC430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000CEE1C(a4, v11);
  if (*(&v11[0] + 1))
  {
    v6 = v12;
    sub_1000CEF5C(v11);
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  v7 = *(a5 + 16);
  if (v7)
  {
    v8 = sub_100012A94();
    if (v9)
    {
      LODWORD(v7) = *(*(a5 + 56) + 32 * v8 + 24);
      return v6 & v7 & 1;
    }

LABEL_8:
    LODWORD(v7) = 0;
  }

  return v6 & v7 & 1;
}

void *sub_1000CC4CC()
{
  v0 = type metadata accessor for BagValueType();
  sub_100002CC4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000056E8();
  v6 = (v4 - v5);
  __chkstk_darwin(v7);
  v9 = (&v24 - v8);
  v10 = 0;
  sub_100004B44();
  v26 = v11;
  v27 = enum case for BagValueType.dictionary(_:);
  v12 = (v2 + 104);
  v25 = enum case for BagValueType.string(_:);
  v13 = _swiftEmptyArrayStorage;
  do
  {
    if (!*(&off_1002444F8 + v10 + 32))
    {
      v14 = 0x70612D616964656DLL;
      v15 = 0xEE00636E79732D69;
      goto LABEL_6;
    }

    if (*(&off_1002444F8 + v10 + 32) == 1)
    {
      v14 = 0xD00000000000001ALL;
      v15 = v26;
LABEL_6:
      *v9 = v14;
      v9[1] = v15;
      (*v12)(v9, v27, v0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100003030();
        sub_1000D507C();
        v13 = v19;
      }

      v16 = v13[2];
      v17 = v16 + 1;
      if (v16 >= v13[3] >> 1)
      {
        sub_10001CBC0();
        v13 = v20;
      }

      v18 = v9;
      goto LABEL_16;
    }

    *v6 = 0x437972746E756F63;
    v6[1] = 0xEB0000000065646FLL;
    (*v12)(v6, v25, v0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100003030();
      sub_1000D507C();
      v13 = v21;
    }

    v16 = v13[2];
    v17 = v16 + 1;
    if (v16 >= v13[3] >> 1)
    {
      sub_10001CBC0();
      v13 = v22;
    }

    v18 = v6;
LABEL_16:
    ++v10;
    v13[2] = v17;
    (*(v2 + 32))(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v18, v0);
  }

  while (v10 != 3);
  return v13;
}

void *sub_1000CC754()
{
  v1 = type metadata accessor for BagValueType();
  sub_100002CC4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000056E8();
  v65 = (v5 - v6);
  sub_100003F08();
  __chkstk_darwin(v7);
  sub_10000714C();
  v67 = v8;
  sub_100003F08();
  __chkstk_darwin(v9);
  sub_10000714C();
  v64 = v10;
  sub_100003F08();
  __chkstk_darwin(v11);
  sub_10000714C();
  v63 = v12;
  sub_100003F08();
  __chkstk_darwin(v13);
  sub_10000714C();
  v62 = v14;
  sub_100003F08();
  __chkstk_darwin(v15);
  v17 = (&v53 - v16);
  v18 = 0;
  v61 = enum case for BagValueType.double(_:);
  v19 = (v3 + 104);
  sub_100004B44();
  v60 = v20;
  v59 = enum case for BagValueType.integer(_:);
  sub_100004B44();
  v58 = v21;
  v57 = enum case for BagValueType.array(_:);
  v56 = enum case for BagValueType.BOOL(_:);
  v66 = enum case for BagValueType.string(_:);
  sub_100004B44();
  v55 = v22;
  v54 = enum case for BagValueType.dictionary(_:);
  v23 = _swiftEmptyArrayStorage;
  v53 = "shold_seconds";
  do
  {
    v24 = &off_100244B18 + v18++;
    v25 = v24[32];
    v26 = 0xD00000000000001DLL;
    v27 = 0xE400000000000000;
    v28 = 1953722216;
    v29 = "backoff-jitter-range-in-seconds";
    switch(v25)
    {
      case 1:
        v28 = 1752457584;
        goto LABEL_10;
      case 2:
        v27 = 0xE700000000000000;
        v28 = 0x6E6F6973726576;
        goto LABEL_10;
      case 3:
        v33 = v63;
        v34 = v58;
        *v63 = 0xD00000000000001BLL;
        v33[1] = v34;
        (*v19)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003030();
          sub_1000D507C();
          v23 = v46;
        }

        sub_1000079D8();
        if (v32)
        {
          sub_10000B83C();
          v23 = v47;
        }

        break;
      case 4:
        v30 = v64;
        v31 = v60;
        *v64 = 0xD00000000000001FLL;
        v30[1] = v31;
        (*v19)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003030();
          sub_1000D507C();
          v23 = v44;
        }

        sub_1000079D8();
        if (v32)
        {
          sub_10000B83C();
          v23 = v45;
        }

        break;
      case 5:
        goto LABEL_21;
      case 6:
        v36 = sub_100004C00(v62);
        (*v19)(v36, v56, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003030();
          sub_1000D507C();
          v23 = v48;
        }

        sub_1000079D8();
        if (v32)
        {
          sub_10000B83C();
          v23 = v49;
        }

        break;
      case 7:
        v26 = 0xD000000000000018;
        v29 = v53;
LABEL_21:
        v35 = v67;
        *v67 = v26;
        v35[1] = v29 | 0x8000000000000000;
        (*v19)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003030();
          sub_1000D507C();
          v23 = v42;
        }

        sub_1000079D8();
        if (v32)
        {
          sub_10000B83C();
          v23 = v43;
        }

        break;
      case 8:
        v37 = v65;
        *v65 = 0xD000000000000010;
        v37[1] = v55;
        (*v19)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003030();
          sub_1000D507C();
          v23 = v50;
        }

        sub_1000079D8();
        if (v32)
        {
          sub_10000B83C();
          v23 = v51;
        }

        break;
      default:
LABEL_10:
        *v17 = v28;
        v17[1] = v27;
        (*v19)(v17, v66, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003030();
          sub_1000D507C();
          v23 = v40;
        }

        sub_1000079D8();
        if (v32)
        {
          sub_10000B83C();
          v23 = v41;
        }

        break;
    }

    sub_10000C37C();
    (*(v3 + 32))(v38 + v39 * v0);
  }

  while (v18 != 9);
  return v23;
}

unint64_t sub_1000CCC68(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244B48, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000CCCBC(char a1)
{
  result = 1953722216;
  switch(a1)
  {
    case 1:
      result = 1752457584;
      break;
    case 2:
      result = 0x6E6F6973726576;
      break;
    case 3:
      v3 = 11;
      goto LABEL_8;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      v3 = 13;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    case 6:
      result = 0x64656C62616E65;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1000CCDC4(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 4) == *(a2 + 32) && *(a1 + 5) == *(a2 + 40);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1001C4018();
  if ((v7 & 1) == 0 || *(a1 + 7) != *(a2 + 56))
  {
    return 0;
  }

  v8 = *(a2 + 72);
  if (a1[9])
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (a1[8] != *(a2 + 64))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (((*(a1 + 73) ^ *(a2 + 73)) & 1) != 0 || a1[10] != *(a2 + 80))
  {
    return 0;
  }

  v9 = *(a2 + 88);
  if (*(a1 + 11))
  {
    if (!v9)
    {
      return 0;
    }

    sub_1001C4B20();
    v11 = v10;

    return (v11 & 1) != 0;
  }

  return !v9;
}

uint64_t sub_1000CCEF8(void *a1)
{
  v3 = v1;
  v5 = sub_10007B9A4(&qword_10026BC58, &qword_1001E9730);
  sub_100002CC4();
  v7 = v6;
  sub_100004E78();
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100003CA8(a1, a1[3]);
  sub_1000CF618();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  sub_100008390();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_100008390();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 2;
    sub_100008390();
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 48);
    HIBYTE(v13) = 3;
    sub_10007B9A4(&qword_10026BC50, &unk_1001E9720);
    sub_100005830();
    sub_1000CF66C(v11);
    sub_1000083A4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 4;
    sub_1000083A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 5;
    sub_100008390();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 6;
    sub_1000083A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 7;
    sub_1000083A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 88);
    HIBYTE(v13) = 8;
    sub_10007B9A4(&qword_10026A790, &qword_1001ED5B0);
    sub_1000CF6C0(&qword_10026A7B8);
    sub_1000083A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1000CD1B4(const void *a1)
{
  v2 = v1;
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10007A83C(a1, *(v2 + 48));
  Hasher._combine(_:)(*(v2 + 56));
  if (*(v2 + 72) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v2 + 64);
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }

  Hasher._combine(_:)(*(v2 + 73) & 1);
  v6 = *(v2 + 80);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  v7 = *(v2 + 88);
  if (v7)
  {
    Hasher._combine(_:)(1u);

    sub_10007A508(a1, v7);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000CD2A8()
{
  Hasher.init(_seed:)();
  sub_1000CD1B4(v1);
  return Hasher._finalize()();
}

void *sub_1000CD2E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10007B9A4(&qword_10026BC40, &qword_1001E9718);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v5);
  sub_100003CA8(a1, a1[3]);
  sub_1000CF618();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002C00(a1);
  }

  LOBYTE(v29[0]) = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  sub_100005180(1);
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v9;
  sub_100005180(2);
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v10;
  sub_10007B9A4(&qword_10026BC50, &unk_1001E9720);
  LOBYTE(__src[0]) = 3;
  sub_1000074B0();
  sub_1000CF66C(v11);
  sub_1000071A8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v29[0];
  sub_100005180(4);
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100005180(5);
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = v12 & 1;
  sub_100005180(6);
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100005180(7);
  KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v13;
  sub_10007B9A4(&qword_10026A790, &qword_1001ED5B0);
  v34 = 8;
  sub_1000CF6C0(&qword_10026A798);
  sub_1000071A8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 &= 1u;
  v14 = sub_10000BF18();
  v15(v14);
  __src[0] = v6;
  __src[1] = v8;
  __src[2] = v25;
  __src[3] = v27;
  __src[4] = v24;
  __src[5] = v26;
  __src[6] = v23;
  __src[7] = v22;
  __src[8] = v21;
  v16 = v36;
  LOBYTE(__src[9]) = v36;
  BYTE1(__src[9]) = v20;
  __src[10] = v19;
  __src[11] = v35;
  v17 = v35;
  sub_10007BA94(__src, v29);
  sub_100002C00(a1);
  v29[0] = v6;
  v29[1] = v8;
  v29[2] = v25;
  v29[3] = v27;
  v29[4] = v24;
  v29[5] = v26;
  v29[6] = v23;
  v29[7] = v22;
  v29[8] = v21;
  v30 = v16;
  v31 = v20;
  v32 = v19;
  v33 = v17;
  sub_10007BAF0(v29);
  return memcpy(a2, __src, 0x60uLL);
}

unint64_t sub_1000CD820@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CCC68(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000CD850@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000CCCBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000CD898@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CCCB4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CD8E0(uint64_t a1)
{
  v2 = sub_1000CF618();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CD91C(uint64_t a1)
{
  v2 = sub_1000CF618();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000CD958@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000CD2E8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

Swift::Int sub_1000CD9C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000CD1B4(v2);
  return Hasher._finalize()();
}

void *sub_1000CDA04()
{
  v1 = type metadata accessor for BagValueType();
  sub_100002CC4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000056E8();
  v35 = (v5 - v6);
  sub_100003F08();
  v8 = __chkstk_darwin(v7);
  v10 = (&v31 - v9);
  __chkstk_darwin(v8);
  v12 = (&v31 - v11);
  v13 = 0;
  v34 = enum case for BagValueType.array(_:);
  v14 = (v3 + 104);
  sub_100004B44();
  v33 = v15;
  v16 = _swiftEmptyArrayStorage;
  v31 = enum case for BagValueType.BOOL(_:);
  v32 = enum case for BagValueType.integer(_:);
  do
  {
    v17 = *(&off_100244C40 + v13++ + 32);
    v18 = 0xE400000000000000;
    v19 = 1936748641;
    switch(v17)
    {
      case 1:
        v18 = 0xE700000000000000;
        v19 = 0x7373656E746966;
        goto LABEL_4;
      case 2:
        *v10 = 0xD000000000000016;
        v10[1] = v33;
        (*v14)(v10, v32, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003030();
          sub_1000D507C();
          v16 = v26;
        }

        sub_100009E20();
        if (v20)
        {
          sub_10000B83C();
          v16 = v27;
        }

        break;
      case 3:
        v21 = sub_100004C00(v35);
        (*v14)(v21, v31, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003030();
          sub_1000D507C();
          v16 = v28;
        }

        sub_100009E20();
        if (v20)
        {
          sub_10000B83C();
          v16 = v29;
        }

        break;
      default:
LABEL_4:
        *v12 = v19;
        v12[1] = v18;
        (*v14)(v12, v34, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003030();
          sub_1000D507C();
          v16 = v24;
        }

        sub_100009E20();
        if (v20)
        {
          sub_10000B83C();
          v16 = v25;
        }

        break;
    }

    sub_10000C37C();
    (*(v3 + 32))(v22 + v23 * v0);
  }

  while (v13 != 4);
  return v16;
}

unint64_t sub_1000CDCE8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244C68, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000CDD34(char a1)
{
  result = 1936748641;
  switch(a1)
  {
    case 1:
      result = 0x7373656E746966;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x64656C62616E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000CDDB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1)
  {
    if (!a5 || (sub_1001C3F8C(a1, a5) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (a5)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    v17 = 0;
    if (a6)
    {
      return v17 & 1;
    }

    goto LABEL_13;
  }

  if (!a6)
  {
LABEL_10:
    v17 = 0;
    return v17 & 1;
  }

  v14 = sub_100006378();
  v16 = sub_1001C3F8C(v14, v15);
  v17 = 0;
  if ((v16 & 1) == 0)
  {
    return v17 & 1;
  }

LABEL_13:
  if (a3 == a7)
  {
    v17 = a4 ^ a8 ^ 1;
  }

  return v17 & 1;
}

void sub_1000CDE54()
{
  sub_100007E34();
  v12[3] = v1;
  v13 = v2;
  v4 = v3;
  v5 = sub_10007B9A4(&qword_10026BCC8, &qword_1001E9BA0);
  sub_100002CC4();
  v7 = v6;
  sub_100004E78();
  __chkstk_darwin(v8);
  v10 = v12 - v9;
  sub_100003CA8(v4, v4[3]);
  sub_1000CFC68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  sub_100005830();
  sub_1000CFCBC(v11);
  sub_10000A3AC();
  sub_100003DDC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v0)
  {
    sub_1000060B8();
    sub_10000A3AC();
    sub_100003DDC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100003DDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100003DDC();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v7 + 8))(v10, v5);
  sub_100005B78();
}

void sub_1000CE030(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4, char a5)
{
  if (!a2)
  {
    Hasher._combine(_:)(0);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(1u);
  sub_10007A7D8(a1, a2);
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  sub_10007A7D8(a1, a3);
LABEL_6:
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(a5 & 1);
}

Swift::Int sub_1000CE0C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_10000A604();
  v5 = Hasher.init(_seed:)();
  v13 = sub_10003AE98(v5, v6, v7, v8, v9, v10, v11, v12, v18, v19);
  sub_1000CE030(v13, v14, v15, v16, a4);
  return Hasher._finalize()();
}

void sub_1000CE120()
{
  sub_100007E34();
  v1 = v0;
  sub_10007B9A4(&qword_10026BCB8, &unk_1001E9B90);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v2);
  sub_100006264();
  sub_100003CA8(v1, v1[3]);
  v3 = sub_1000CFC68();
  sub_10000AF00(&unk_100249098, v4, v3);
  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  sub_1000074B0();
  sub_1000CFCBC(v5);
  sub_10000AED0();
  sub_1000060B8();
  sub_10000AED0();
  sub_100007F6C(2);
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_100007F6C(3);
  KeyedDecodingContainer.decode(_:forKey:)();
  v6 = sub_100006378();
  v7(v6);
  sub_100002C00(v1);
  sub_100005B78();
}

unint64_t sub_1000CE35C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CDCE8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000CE38C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000CDD34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000CE3C0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CDCE8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CE408(uint64_t a1)
{
  v2 = sub_1000CFC68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CE444(uint64_t a1)
{
  v2 = sub_1000CFC68();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000CE480(uint64_t a1@<X8>)
{
  sub_1000CE120();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6 & 1;
  }
}

Swift::Int sub_1000CE4FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  Hasher.init(_seed:)();
  sub_1000CE030(v7, v2, v3, v4, v5);
  return Hasher._finalize()();
}

unint64_t sub_1000CE580(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244D10, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000CE5CC(char a1)
{
  if (!a1)
  {
    return 0x70612D616964656DLL;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0x437972746E756F63;
}

uint64_t sub_1000CE63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    sub_1001C4C1C();
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (!a2)
  {
    if (!a6)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!a6)
  {
    return 0;
  }

  v16 = sub_100006378();
  sub_1001C4D24(v16, v17);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000CE744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100007E34();
  v23 = v22;
  v24 = sub_10007B9A4(&qword_10026BC10, &qword_1001E9710);
  sub_100002CC4();
  v26 = v25;
  sub_100004E78();
  __chkstk_darwin(v27);
  sub_100006264();
  sub_100003CA8(v23, v23[3]);
  sub_1000CF12C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10007B9A4(&qword_10026BBD0, &qword_1001E96F8);
  sub_1000CF3CC();
  sub_10000A3AC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v20)
  {
    sub_1000060B8();
    sub_10007B9A4(&qword_10026BBF8, &qword_1001E9708);
    sub_1000CF538();
    sub_10000A3AC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v26 + 8))(v21, v24);
  sub_100005B78();
}

uint64_t sub_1000CE8FC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    Hasher._combine(_:)(1u);
    sub_10007A074(a1, a2);
    if (a3)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      sub_100079E5C(a1, a3);
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:

  return String.hash(into:)();
}

Swift::Int sub_1000CE9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000A604();
  v5 = Hasher.init(_seed:)();
  v13 = sub_10003AE98(v5, v6, v7, v8, v9, v10, v11, v12, v18, v19);
  sub_1000CE8FC(v13, v14, v15, v16, a4);
  return Hasher._finalize()();
}

void sub_1000CE9F8()
{
  sub_100007E34();
  v2 = v1;
  sub_10007B9A4(&qword_10026BBC0, &qword_1001E96F0);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v3);
  sub_100006264();
  sub_100003CA8(v2, v2[3]);
  v4 = sub_1000CF12C();
  sub_10000AF00(&unk_100248F80, v5, v4);
  if (!v0)
  {
    sub_10007B9A4(&qword_10026BBD0, &qword_1001E96F8);
    v6 = sub_1000CF180();
    sub_100012BEC(v6);
    sub_10007B9A4(&qword_10026BBF8, &qword_1001E9708);
    sub_1000060B8();
    v7 = sub_1000CF2EC();
    sub_100012BEC(v7);
    sub_100007F6C(2);
    KeyedDecodingContainer.decode(_:forKey:)();
    v8 = sub_100006378();
    v9(v8);
  }

  sub_100002C00(v2);
  sub_100005B78();
}

unint64_t sub_1000CEC18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CE580(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CEC48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000CE5CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000CEC7C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CE580(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CECC4(uint64_t a1)
{
  v2 = sub_1000CF12C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CED00(uint64_t a1)
{
  v2 = sub_1000CF12C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000CED3C(void *a1@<X8>)
{
  sub_1000CE9F8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

Swift::Int sub_1000CEDA4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  Hasher.init(_seed:)();
  sub_1000CE8FC(v7, v2, v3, v5, v4);
  return Hasher._finalize()();
}

void sub_1000CEE1C(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    if (*(a1 + 16) && (v10 = sub_100012A94(), (v11 & 1) != 0) && (v12 = *(*(a1 + 56) + 8 * v10), , , *(v12 + 16)) && (v13 = sub_100012A94(), (v14 & 1) != 0))
    {
      memcpy(__dst, (*(v12 + 56) + 96 * v13), sizeof(__dst));
      sub_10007BA94(__dst, &v15);

      v9 = __dst[0];
      v4 = __dst[1];
      v5 = __dst[2];
      v6 = __dst[3];
      v7 = __dst[4];
      v8 = __dst[5];
    }

    else
    {

      *&v4 = sub_100005F54();
      v9 = 0uLL;
    }
  }

  else
  {
    *&v4 = sub_100005F54();
  }

  *a2 = v9;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
}

uint64_t sub_1000CEF5C(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_100269AE8, &qword_1001E94D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CEFD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1000CF018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000CF080()
{
  result = qword_10026BBB0;
  if (!qword_10026BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBB0);
  }

  return result;
}

unint64_t sub_1000CF0D8()
{
  result = qword_10026BBB8;
  if (!qword_10026BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBB8);
  }

  return result;
}

unint64_t sub_1000CF12C()
{
  result = qword_10026BBC8;
  if (!qword_10026BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBC8);
  }

  return result;
}

unint64_t sub_1000CF180()
{
  result = qword_10026BBD8;
  if (!qword_10026BBD8)
  {
    sub_10007BC70(&qword_10026BBD0, &qword_1001E96F8);
    sub_1000CF20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBD8);
  }

  return result;
}

unint64_t sub_1000CF20C()
{
  result = qword_10026BBE0;
  if (!qword_10026BBE0)
  {
    sub_10007BC70(&qword_10026BBE8, &qword_1001E9700);
    sub_1000CF298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBE0);
  }

  return result;
}

unint64_t sub_1000CF298()
{
  result = qword_10026BBF0;
  if (!qword_10026BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BBF0);
  }

  return result;
}

unint64_t sub_1000CF2EC()
{
  result = qword_10026BC00;
  if (!qword_10026BC00)
  {
    sub_10007BC70(&qword_10026BBF8, &qword_1001E9708);
    sub_1000CF378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC00);
  }

  return result;
}

unint64_t sub_1000CF378()
{
  result = qword_10026BC08;
  if (!qword_10026BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC08);
  }

  return result;
}

unint64_t sub_1000CF3CC()
{
  result = qword_10026BC18;
  if (!qword_10026BC18)
  {
    sub_10007BC70(&qword_10026BBD0, &qword_1001E96F8);
    sub_1000CF458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC18);
  }

  return result;
}

unint64_t sub_1000CF458()
{
  result = qword_10026BC20;
  if (!qword_10026BC20)
  {
    sub_10007BC70(&qword_10026BBE8, &qword_1001E9700);
    sub_1000CF4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC20);
  }

  return result;
}

unint64_t sub_1000CF4E4()
{
  result = qword_10026BC28;
  if (!qword_10026BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC28);
  }

  return result;
}

unint64_t sub_1000CF538()
{
  result = qword_10026BC30;
  if (!qword_10026BC30)
  {
    sub_10007BC70(&qword_10026BBF8, &qword_1001E9708);
    sub_1000CF5C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC30);
  }

  return result;
}

unint64_t sub_1000CF5C4()
{
  result = qword_10026BC38;
  if (!qword_10026BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC38);
  }

  return result;
}

unint64_t sub_1000CF618()
{
  result = qword_10026BC48;
  if (!qword_10026BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC48);
  }

  return result;
}

unint64_t sub_1000CF66C(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    sub_10000A604();
    v3 = sub_10007BC70(&qword_10026BC50, &unk_1001E9720);
    result = sub_10002400C(v3);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000CF6C0(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    sub_10000A604();
    sub_10007BC70(&qword_10026A790, &qword_1001ED5B0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_1000CF724(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        break;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000CF7FC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1000CF8D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000CF8E8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CF93C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1000CF9A4()
{
  result = qword_10026BC60;
  if (!qword_10026BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC60);
  }

  return result;
}

unint64_t sub_1000CFA2C()
{
  result = qword_10026BC78;
  if (!qword_10026BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC78);
  }

  return result;
}

unint64_t sub_1000CFAB4()
{
  result = qword_10026BC90;
  if (!qword_10026BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC90);
  }

  return result;
}

unint64_t sub_1000CFB0C()
{
  result = qword_10026BC98;
  if (!qword_10026BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BC98);
  }

  return result;
}

unint64_t sub_1000CFB64()
{
  result = qword_10026BCA0;
  if (!qword_10026BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCA0);
  }

  return result;
}

unint64_t sub_1000CFBBC()
{
  result = qword_10026BCA8;
  if (!qword_10026BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCA8);
  }

  return result;
}

unint64_t sub_1000CFC14()
{
  result = qword_10026BCB0;
  if (!qword_10026BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCB0);
  }

  return result;
}

unint64_t sub_1000CFC68()
{
  result = qword_10026BCC0;
  if (!qword_10026BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCC0);
  }

  return result;
}

unint64_t sub_1000CFCBC(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    sub_10000A604();
    v3 = sub_10007BC70(&qword_1002704A0, &unk_1001ECCF0);
    result = sub_10002400C(v3);
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_1000CFD10(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000CFE18(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    sub_10007BC70(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000CFE6C()
{
  result = qword_10026BCE0;
  if (!qword_10026BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCE0);
  }

  return result;
}

unint64_t sub_1000CFEC4()
{
  result = qword_10026BCE8;
  if (!qword_10026BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCE8);
  }

  return result;
}

unint64_t sub_1000CFF1C()
{
  result = qword_10026BCF0;
  if (!qword_10026BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCF0);
  }

  return result;
}

uint64_t sub_1000CFF74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000CFFB4(uint64_t result, int a2, int a3)
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

uint64_t sub_1000D0004(char a1, uint64_t a2, uint64_t a3)
{

  v4._countAndFlagsBits = 95;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  if (a1)
  {
    sub_100006BF8();
    if (v5)
    {
      v7 = 1936748641;
    }

    else
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (v5)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xE700000000000000;
    }
  }

  else
  {
    v8 = 0xE700000000000000;
    v7 = 0x7373656E746966;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  return a2;
}

uint64_t sub_1000D00A8()
{
  sub_10001ECE0();
  v0 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  if (*(v0 + 16) == 2)
  {

    static String._fromSubstring(_:)();

    if (*(v0 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {

      v2 = static String._fromSubstring(_:)();
      v4 = v3;

      v6._countAndFlagsBits = v2;
      v6._object = v4;
      LODWORD(result) = sub_1000E16C4(v6);
      if (result == 3)
      {
        return 2;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {

    sub_100090C64();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000D0210(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001001F6850 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000D02DC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6369706F74;
  }
}

uint64_t sub_1000D0314(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = 0x7373656E746966;
  if (a1)
  {
    sub_100006BF8();
    if (v11)
    {
      v13 = 1936748641;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (v11)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE700000000000000;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
    v13 = 0x7373656E746966;
  }

  if (a4)
  {
    sub_100006BF8();
    if (v15)
    {
      v10 = 1936748641;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0xE700000000000000;
    }
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  if (v13 == v10 && v14 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000D0474(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = sub_10007B9A4(&qword_10026BD18, &qword_1001E9E50);
  sub_100002CC4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v14 - v11;
  sub_100003CA8(a1, a1[3]);
  sub_1000D0AD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_1000D0B78();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1000D05F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_100006BF8();
  }

  else
  {
    sub_100002CE8();
  }

  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000D0690(char a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    sub_100006BF8();
  }

  else
  {
    sub_100002CE8();
  }

  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000D073C(void *a1)
{
  v3 = sub_10007B9A4(&qword_10026BD00, &qword_1001E9E48);
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_100003CA8(a1, v9);
  sub_1000D0AD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11[14] = 0;
    sub_1000D0B24();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v11[15];
    v11[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100002C00(a1);
  return v9;
}

uint64_t sub_1000D08FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D0210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D0924(uint64_t a1)
{
  v2 = sub_1000D0AD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0960(uint64_t a1)
{
  v2 = sub_1000D0AD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D099C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000D073C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

Swift::Int sub_1000D0A04(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000D0AD0()
{
  result = qword_10026BD08;
  if (!qword_10026BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD08);
  }

  return result;
}

unint64_t sub_1000D0B24()
{
  result = qword_10026BD10;
  if (!qword_10026BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD10);
  }

  return result;
}

unint64_t sub_1000D0B78()
{
  result = qword_10026BD20;
  if (!qword_10026BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000D0CAC()
{
  result = qword_10026BD28;
  if (!qword_10026BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD28);
  }

  return result;
}

unint64_t sub_1000D0D04()
{
  result = qword_10026BD30;
  if (!qword_10026BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD30);
  }

  return result;
}

unint64_t sub_1000D0D5C()
{
  result = qword_10026BD38;
  if (!qword_10026BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD38);
  }

  return result;
}

uint64_t sub_1000D0DB0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>, uint64_t a4@<X3>, uint64_t a5@<X4>)
{
  v33 = a3;
  v9 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v9 - 8);
  v36 = &v30[-v10];
  v35 = type metadata accessor for URLComponents();
  sub_100002CC4();
  v34 = v11;
  __chkstk_darwin(v12);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for URL();
  sub_100002CC4();
  v32 = v16;
  __chkstk_darwin(v17);
  v19 = &v30[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = *a1;
  sub_1000CEE1C(a2, &v37);
  if (*(&v37 + 1))
  {
    v39 = v37;
    memcpy(v40, v38, sizeof(v40));
    v20 = v41;
    sub_1000D1280(&v39, a1, a4, a5, v14);
    result = sub_10000A064(&v37, &qword_100269AE8, &qword_1001E94D0);
    if (v20)
    {
      return result;
    }

    v22 = v36;
    URLComponents.url.getter();
    (*(v34 + 8))(v14, v35);
    if (sub_100009F34(v22, 1, v15) != 1)
    {
      v25 = *(v32 + 32);
      v25(v19, v22, v15);
      v26 = v33;
      v25(v33, v19, v15);
      v28 = *(a1 + 1);
      v27 = *(a1 + 2);
      v29 = &v26[*(type metadata accessor for MediaCatalogSyncRequest(0) + 20)];
      *v29 = v31;
      *(v29 + 1) = v28;
      *(v29 + 2) = v27;
    }

    sub_10000A064(v22, &unk_10026FEE0, &unk_1001E67C0);
    sub_100090C64();
    swift_allocError();
    v24 = 5;
  }

  else
  {
    sub_100090C64();
    swift_allocError();
    v24 = 6;
  }

  *v23 = v24;
  return swift_willThrow();
}

double sub_1000D1110@<D0>(uint64_t a3@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000D3150();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v3)
  {
    result = *&v6;
    *a3 = v6;
    *(a3 + 16) = v7;
    *(a3 + 32) = v8;
  }

  return result;
}

BOOL sub_1000D11C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000D30FC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v2)
  {
    if (v6)
    {
      v4 = *(v6 + 16);

      return v4 != 0;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1000D1280@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = sub_10007B9A4(&qword_10026BD40, &unk_1001E9F70);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  if (a2[4])
  {
    URLComponents.init(string:)();
    v13 = type metadata accessor for URLComponents();
    if (sub_100009F34(v12, 1, v13) == 1)
    {
      sub_10000A064(v12, &qword_10026BD40, &unk_1001E9F70);
      sub_100090C64();
      swift_allocError();
      *v14 = 3;
      return swift_willThrow();
    }

    (*(*(v13 - 8) + 32))(a5, v12, v13);

    URLComponents.host.setter();
    sub_1000030A8();
    v19 = URLComponents.queryItems.getter();
    v20 = a1;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v16 = a2[6];
    v28 = a2[5];
    v24 = v16;
    URLComponents.init()();

    URLComponents.host.setter();
    sub_1000030A8();
    v17 = *(a1 + 2);
    v27 = *(a1 + 1);
    strcpy(v26, "{version}");
    HIWORD(v26[2]) = 0;
    v26[3] = -385875968;
    v25 = v17;
    sub_10001ECE0();
    *&v27 = sub_100005198(v26, &v25);
    *(&v27 + 1) = v18;
    strcpy(v26, "{storefront}");
    BYTE1(v26[3]) = 0;
    HIWORD(v26[3]) = -5120;
    *&v25 = a3;
    *(&v25 + 1) = a4;
    sub_100005198(v26, &v25);

    URLComponents.path.setter();
    v19 = URLComponents.queryItems.getter();
    v20 = a1;
    v21 = v28;
    v22 = v24;
  }

  sub_1000D1544(v20, v21, v22, v19);

  return URLComponents.queryItems.setter();
}

void *sub_1000D1544(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for URLQueryItem();
  sub_100002CC4();
  v45 = v8;
  v46 = v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = *(a1 + 88);
  if (!v15)
  {
    return 0;
  }

  v16 = *(v15 + 16);
  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v37 = a2;
    v38 = a3;
    v39 = v12;
    v40 = a4;
    v51 = _swiftEmptyArrayStorage;
    sub_10009B720();
    v17 = v51;
    v20 = sub_10018BEAC();
    v21 = 0;
    v12 = (v15 + 64);
    v43 = (v15 + 64);
    v44 = v46 + 32;
    v41 = v15 + 72;
    v42 = v16;
    if ((v20 & 0x8000000000000000) == 0)
    {
      while (v20 < 1 << *(v15 + 32))
      {
        v22 = v20 >> 6;
        if ((*&v12[8 * (v20 >> 6)] & (1 << v20)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v15 + 36) != v18)
        {
          goto LABEL_34;
        }

        v47 = v19;
        v48 = v21;
        v49 = v18;
        a4 = *(*(v15 + 48) + 16 * v20 + 8);

        URLQueryItem.init(name:value:)();

        v51 = v17;
        v23 = v17[2];
        v12 = (v23 + 1);
        if (v23 >= v17[3] >> 1)
        {
          sub_10009B720();
          v17 = v51;
        }

        v17[2] = v12;
        (*(v46 + 32))(v17 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v23, v14, v45);
        v24 = 1 << *(v15 + 32);
        if (v20 >= v24)
        {
          goto LABEL_35;
        }

        v12 = v43;
        v25 = *&v43[8 * v22];
        if ((v25 & (1 << v20)) == 0)
        {
          goto LABEL_36;
        }

        if (*(v15 + 36) != v49)
        {
          goto LABEL_37;
        }

        v26 = v25 & (-2 << (v20 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v20 & 0x7FFFFFFFFFFFFFC0;
          v27 = v42;
        }

        else
        {
          a4 = v22 << 6;
          v28 = v22 + 1;
          v27 = v42;
          v29 = (v41 + 8 * v22);
          while (v28 < (v24 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            a4 += 64;
            ++v28;
            if (v31)
            {
              sub_100083998(v20, v49, v47 & 1);
              v24 = __clz(__rbit64(v30)) + a4;
              goto LABEL_19;
            }
          }

          sub_100083998(v20, v49, v47 & 1);
        }

LABEL_19:
        v21 = v48 + 1;
        if (v48 + 1 == v27)
        {
          v12 = v39;
          a4 = v40;
          a3 = v38;
          goto LABEL_24;
        }

        v19 = 0;
        v18 = *(v15 + 36);
        v20 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_24:
  v51 = v17;
  if (a3)
  {
    URLQueryItem.init(name:value:)();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_26:
      v33 = v17[2];
      if (v33 >= v17[3] >> 1)
      {
        sub_1000D4ECC();
        v17 = v36;
      }

      v17[2] = v33 + 1;
      (*(v46 + 32))(v17 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v33, v12, v45);
      v51 = v17;
      goto LABEL_29;
    }

LABEL_38:
    sub_1000D4ECC();
    v17 = v35;
    goto LABEL_26;
  }

LABEL_29:
  if (a4)
  {

    sub_10010F44C(v34);
    v17 = v51;
  }

  v50 = v17;

  sub_1000D1A40(&v50);

  return v50;
}

uint64_t sub_1000D19A8()
{
  v0 = URLQueryItem.name.getter();
  v2 = v1;
  if (v0 == URLQueryItem.name.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_1000D1A40(uint64_t *a1)
{
  v2 = *(type metadata accessor for URLQueryItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000F03F4();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1000D1AE8(v7);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000D1AE8(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        type metadata accessor for URLQueryItem();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for URLQueryItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000D1F38(v8, v9, a1, v4);
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
    return sub_1000D1C18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000D1C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for URLQueryItem();
  v9 = __chkstk_darwin(v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  result = __chkstk_darwin(v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        v52(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = URLQueryItem.name.getter();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == URLQueryItem.name.getter() && v31 == v32)
        {
          break;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v35 = *v51;
        (*v51)(v29, v8);
        result = (v35)(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return result;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v36)(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      result = (v39)(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000D1F38(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v145 = a1;
  v8 = type metadata accessor for URLQueryItem();
  v9 = __chkstk_darwin(v8);
  v150 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v163 = &v141 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v141 - v14;
  v16 = __chkstk_darwin(v13);
  v17 = __chkstk_darwin(v16);
  v159 = &v141 - v18;
  v19 = __chkstk_darwin(v17);
  v158 = &v141 - v20;
  v21 = __chkstk_darwin(v19);
  __chkstk_darwin(v21);
  v26 = &v141 - v22;
  v156 = v23;
  v157 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_114:
    v168 = *v145;
    if (!v168)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v164 = v24;
  v141 = a4;
  v28 = 0;
  v168 = v23 + 16;
  v166 = (v23 + 32);
  v167 = (v23 + 8);
  v29 = _swiftEmptyArrayStorage;
  v160 = v8;
  v152 = v15;
  v142 = v25;
  v144 = &v141 - v22;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v147 = v28;
    if (v28 + 1 < v27)
    {
      v162 = v27;
      v143 = v29;
      v32 = v26;
      v33 = *v157;
      v34 = *(v23 + 72);
      v35 = v25;
      v155 = v28 + 1;
      v36 = v28;
      v37 = &v33[v34 * (v28 + 1)];
      v38 = *(v23 + 16);
      v38(v32, v37, v8);
      v39 = &v33[v34 * v36];
      v40 = v144;
      v154 = v38;
      v38(v35, v39, v8);
      LODWORD(v161) = sub_1000D19A8();
      if (v5)
      {
        v140 = *v167;
        (*v167)(v35, v8);
        (v140)(v40, v8);
LABEL_124:

        return;
      }

      v146 = 0;
      v29 = v167;
      v41 = *v167;
      (*v167)(v35, v8);
      v153 = v41;
      (v41)(v40, v8);
      v42 = v147 + 2;
      v43 = &v33[v34 * (v147 + 2)];
      v31 = v155;
      v44 = v34;
      v165 = v34;
      v45 = v162;
      while (1)
      {
        v46 = v42;
        if (v31 + 1 >= v45)
        {
          break;
        }

        v47 = v31;
        v48 = v160;
        v5 = v154;
        (v154)(v158, v43, v160);
        v5(v159, v37, v48);
        v49 = URLQueryItem.name.getter();
        v51 = v50;
        if (v49 == URLQueryItem.name.getter() && v51 == v52)
        {
          v54 = 0;
        }

        else
        {
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v55 = v160;
        v29 = v153;
        (v153)(v159, v160);
        (v29)(v158, v55);
        v44 = v165;
        v43 += v165;
        v37 += v165;
        v31 = v47 + 1;
        v42 = v46 + 1;
        v45 = v162;
        if ((v161 ^ v54))
        {
          goto LABEL_16;
        }
      }

      v31 = v45;
LABEL_16:
      if (v161)
      {
        v30 = v147;
        if (v31 < v147)
        {
          goto LABEL_149;
        }

        v5 = v146;
        if (v147 >= v31)
        {
          v23 = v156;
          v29 = v143;
          v8 = v160;
          v15 = v152;
          goto LABEL_39;
        }

        if (v45 >= v46)
        {
          v56 = v46;
        }

        else
        {
          v56 = v45;
        }

        v57 = v44 * (v56 - 1);
        v58 = v44 * v56;
        v59 = v147;
        v60 = v147 * v44;
        v61 = v31;
        do
        {
          if (v59 != --v61)
          {
            v62 = *v157;
            if (!*v157)
            {
              goto LABEL_154;
            }

            v63 = v160;
            v162 = *v166;
            v162(v150, &v62[v60], v160);
            v64 = v60 < v57 || &v62[v60] >= &v62[v58];
            if (v64)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v60 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v162(&v62[v57], v150, v63);
            v5 = v146;
            v44 = v165;
          }

          ++v59;
          v57 -= v44;
          v58 -= v44;
          v60 += v44;
        }

        while (v59 < v61);
      }

      else
      {
        v5 = v146;
      }

      v23 = v156;
      v29 = v143;
      v8 = v160;
      v15 = v152;
      v30 = v147;
    }

LABEL_39:
    v65 = v157[1];
    if (v31 < v65)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_146;
      }

      if (v31 - v30 < v141)
      {
        break;
      }
    }

LABEL_62:
    if (v31 < v30)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000D4E00();
      v29 = v131;
    }

    v88 = *(v29 + 2);
    v87 = *(v29 + 3);
    v89 = v88 + 1;
    v155 = v31;
    if (v88 >= v87 >> 1)
    {
      sub_1000D4E00();
      v29 = v132;
    }

    *(v29 + 2) = v89;
    v90 = v29 + 32;
    v91 = &v29[16 * v88 + 32];
    v92 = v155;
    *v91 = v147;
    *(v91 + 1) = v92;
    v165 = *v145;
    if (!v165)
    {
      goto LABEL_155;
    }

    if (v88)
    {
      while (1)
      {
        v93 = v89 - 1;
        v94 = &v90[16 * v89 - 16];
        v95 = &v29[16 * v89];
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v96 = *(v29 + 4);
          v97 = *(v29 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_82:
          if (v99)
          {
            goto LABEL_132;
          }

          v111 = *v95;
          v110 = *(v95 + 1);
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_135;
          }

          v115 = *(v94 + 1);
          v116 = v115 - *v94;
          if (__OFSUB__(v115, *v94))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v113, v116))
          {
            goto LABEL_140;
          }

          if (v113 + v116 >= v98)
          {
            if (v98 < v116)
            {
              v93 = v89 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v89 < 2)
        {
          goto LABEL_134;
        }

        v118 = *v95;
        v117 = *(v95 + 1);
        v106 = __OFSUB__(v117, v118);
        v113 = v117 - v118;
        v114 = v106;
LABEL_97:
        if (v114)
        {
          goto LABEL_137;
        }

        v120 = *v94;
        v119 = *(v94 + 1);
        v106 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v106)
        {
          goto LABEL_139;
        }

        if (v121 < v113)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v93 - 1 >= v89)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v157)
        {
          goto LABEL_152;
        }

        v125 = v29;
        v126 = &v90[16 * v93 - 16];
        v29 = *v126;
        v127 = &v90[16 * v93];
        v128 = *(v127 + 1);
        sub_1000D2AF4(&(*v157)[*(v156 + 72) * *v126], &(*v157)[*(v156 + 72) * *v127], &(*v157)[*(v156 + 72) * v128], v165);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v128 < v29)
        {
          goto LABEL_127;
        }

        v129 = *(v125 + 2);
        if (v93 > v129)
        {
          goto LABEL_128;
        }

        *v126 = v29;
        *(v126 + 1) = v128;
        if (v93 >= v129)
        {
          goto LABEL_129;
        }

        v89 = v129 - 1;
        sub_1000F02C8(v127 + 16, v129 - 1 - v93, &v90[16 * v93]);
        v29 = v125;
        *(v125 + 2) = v129 - 1;
        v130 = v129 > 2;
        v15 = v152;
        if (!v130)
        {
          goto LABEL_111;
        }
      }

      v100 = &v90[16 * v89];
      v101 = *(v100 - 8);
      v102 = *(v100 - 7);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_130;
      }

      v105 = *(v100 - 6);
      v104 = *(v100 - 5);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_131;
      }

      v107 = *(v95 + 1);
      v108 = v107 - *v95;
      if (__OFSUB__(v107, *v95))
      {
        goto LABEL_133;
      }

      v106 = __OFADD__(v98, v108);
      v109 = v98 + v108;
      if (v106)
      {
        goto LABEL_136;
      }

      if (v109 >= v103)
      {
        v123 = *v94;
        v122 = *(v94 + 1);
        v106 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v106)
        {
          goto LABEL_144;
        }

        if (v98 < v124)
        {
          v93 = v89 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v156;
    v27 = v157[1];
    v28 = v155;
    v8 = v160;
    v25 = v142;
    v26 = v144;
    if (v155 >= v27)
    {
      goto LABEL_114;
    }
  }

  v66 = (v30 + v141);
  if (__OFADD__(v30, v141))
  {
    goto LABEL_147;
  }

  if (v66 >= v65)
  {
    v66 = v157[1];
  }

  if (v66 < v30)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v29 = sub_1000F02B4(v29);
LABEL_116:
    v133 = v29 + 16;
    v134 = *(v29 + 2);
    while (v134 >= 2)
    {
      if (!*v157)
      {
        goto LABEL_153;
      }

      v135 = v29;
      v29 += 16 * v134;
      v136 = *v29;
      v137 = &v133[2 * v134];
      v138 = *(v137 + 1);
      sub_1000D2AF4(&(*v157)[*(v156 + 72) * *v29], &(*v157)[*(v156 + 72) * *v137], &(*v157)[*(v156 + 72) * v138], v168);
      if (v5)
      {
        break;
      }

      if (v138 < v136)
      {
        goto LABEL_141;
      }

      if (v134 - 2 >= *v133)
      {
        goto LABEL_142;
      }

      *v29 = v136;
      *(v29 + 1) = v138;
      v139 = *v133 - v134;
      if (*v133 < v134)
      {
        goto LABEL_143;
      }

      v134 = *v133 - 1;
      sub_1000F02C8(v137 + 16, v139, v137);
      *v133 = v134;
      v29 = v135;
    }

    goto LABEL_124;
  }

  if (v31 == v66)
  {
    goto LABEL_62;
  }

  v143 = v29;
  v146 = v5;
  v67 = *v157;
  v68 = *(v23 + 72);
  v165 = *(v23 + 16);
  v69 = &v67[v68 * (v31 - 1)];
  v161 = -v68;
  v162 = v67;
  v70 = (v30 - v31);
  v148 = v68;
  v149 = v66;
  v71 = &v67[v31 * v68];
  v72 = v164;
LABEL_48:
  v154 = v69;
  v155 = v31;
  v151 = v71;
  v153 = v70;
  while (1)
  {
    v73 = v165;
    (v165)(v72, v71, v8);
    v73(v15, v69, v8);
    v74 = v15;
    v75 = URLQueryItem.name.getter();
    v76 = v8;
    v78 = v77;
    if (v75 == URLQueryItem.name.getter() && v78 == v79)
    {

      v86 = *v167;
      (*v167)(v74, v76);
      (v86)(v72, v76);
      v8 = v76;
      v15 = v74;
      goto LABEL_60;
    }

    v81 = v72;
    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v83 = *v167;
    (*v167)(v74, v76);
    (v83)(v81, v76);
    v8 = v76;
    v15 = v74;
    if ((v82 & 1) == 0)
    {
      v72 = v164;
LABEL_60:
      v31 = v155 + 1;
      v69 = &v154[v148];
      v70 = v153 - 1;
      v71 = &v151[v148];
      if ((v155 + 1) == v149)
      {
        v31 = v149;
        v5 = v146;
        v29 = v143;
        v30 = v147;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v162)
    {
      break;
    }

    v84 = *v166;
    v85 = v163;
    (*v166)(v163, v71, v76);
    swift_arrayInitWithTakeFrontToBack();
    v84(v69, v85, v76);
    v69 += v161;
    v71 += v161;
    v64 = __CFADD__(v70++, 1);
    v72 = v164;
    if (v64)
    {
      goto LABEL_60;
    }
  }

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
}

uint64_t sub_1000D2AF4(char *a1, unint64_t a2, char *a3, uint64_t a4)
{
  v8 = type metadata accessor for URLQueryItem();
  v9 = __chkstk_darwin(v8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v70 = &v64 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v64 - v14;
  result = __chkstk_darwin(v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v24 = (a2 - a1) / v20;
  v77 = a1;
  v76 = a4;
  v72 = (v17 + 8);
  v73 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    v68 = &v64 - v18;
    v70 = v15;
    sub_1000D6698(a1, (a2 - a1) / v20, a4);
    v71 = (a4 + v24 * v20);
    v75 = v71;
    v26 = a4;
    v27 = v20;
    v67 = v8;
    v69 = a3;
    while (1)
    {
      if (v26 >= v71 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v29 = a1;
      v30 = *v73;
      v31 = v68;
      v32 = a2;
      (*v73)(v68, a2, v8);
      v74 = v26;
      v33 = v70;
      v30();
      v34 = URLQueryItem.name.getter();
      v36 = v35;
      if (v34 == URLQueryItem.name.getter() && v36 == v37)
      {

        v44 = *v72;
        (*v72)(v33, v8);
        v44(v31, v8);
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v40 = *v72;
        (*v72)(v33, v8);
        v40(v31, v8);
        if (v39)
        {
          v41 = v32;
          a2 = v32 + v27;
          v42 = v29;
          if (v29 < v32 || v29 >= a2)
          {
            v8 = v67;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v69;
          }

          else
          {
            a3 = v69;
            v8 = v67;
            if (v29 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v74;
          goto LABEL_40;
        }
      }

      v26 = v74 + v27;
      v42 = v29;
      v45 = v29 < v74 || v29 >= v26;
      a2 = v32;
      if (v45)
      {
        v8 = v67;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v69;
      }

      else
      {
        a3 = v69;
        v8 = v67;
        if (v29 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v26;
LABEL_40:
      a1 = (v42 + v27);
      v77 = a1;
    }
  }

  sub_1000D6698(a2, v22 / v20, a4);
  v74 = a4;
  v46 = a4 + v25 * v20;
  v47 = -v20;
  v48 = v46;
  v68 = -v20;
LABEL_42:
  v69 = a2;
  v67 = a2 + v47;
  v49 = a3;
  v65 = v48;
  while (1)
  {
    if (v46 <= v74)
    {
      v77 = v69;
      v75 = v48;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v66 = v48;
    v50 = v46 + v47;
    v51 = *v73;
    (*v73)(v70, v46 + v47, v8);
    (v51)(v71, v67, v8);
    v52 = URLQueryItem.name.getter();
    v54 = v53;
    if (v52 == URLQueryItem.name.getter() && v54 == v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v58 = &v49[v68];
    v59 = *v72;
    (*v72)(v71, v8);
    v59(v70, v8);
    if (v57)
    {
      v61 = v49 < v69 || v58 >= v69;
      a3 = v58;
      if (v61)
      {
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v66;
        v47 = v68;
      }

      else
      {
        v63 = v66;
        v62 = v67;
        v48 = v66;
        v21 = v49 == v69;
        a2 = v67;
        v47 = v68;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v62;
          v48 = v63;
        }
      }

      goto LABEL_42;
    }

    if (v49 < v46 || v58 >= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
      v49 = v58;
      v46 = v50;
      v48 = v50;
      v47 = v68;
    }

    else
    {
      v48 = v50;
      v21 = v46 == v49;
      v49 = v58;
      v46 = v50;
      v47 = v68;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v49 = v58;
        v46 = v50;
        v48 = v50;
      }
    }
  }

  v77 = v69;
  v75 = v65;
LABEL_70:
  sub_1001619F4(&v77, &v76, &v75);
  return 1;
}

unint64_t sub_1000D30FC()
{
  result = qword_10026BD48;
  if (!qword_10026BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD48);
  }

  return result;
}

unint64_t sub_1000D3150()
{
  result = qword_10026BD50;
  if (!qword_10026BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BD50);
  }

  return result;
}

uint64_t type metadata accessor for MediaCatalogSyncPage(uint64_t a1)
{
  result = qword_10026BDB0;
  if (!qword_10026BDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D3218(uint64_t a1)
{
  result = type metadata accessor for MediaCatalogSyncPageMetadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000D32B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001001F6870 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000D3384(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x4C5255656C6966;
  }
}

uint64_t sub_1000D33C0(uint64_t a1, uint64_t a2)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MediaCatalogSyncPageMetadata(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = *(a1 + v4 + 16);
  v8 = a2 + v4;
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *v8;
  v12 = *v5;

  return sub_1000D0314(v12, v6, v7, v11, v9, v10);
}

uint64_t sub_1000D3430(void *a1)
{
  v3 = v1;
  v5 = sub_10007B9A4(&qword_10026BEA0, &qword_1001EA080);
  sub_100002CC4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v18[-v9];
  sub_100003CA8(a1, a1[3]);
  sub_1000D3BB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19[0] = 0;
  type metadata accessor for URL();
  sub_100006C04();
  sub_1000D3C5C(v11, v12, &protocol conformance descriptor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = (v3 + *(type metadata accessor for MediaCatalogSyncPageMetadata(0) + 20));
    v14 = *v13;
    v16 = *(v13 + 1);
    v15 = *(v13 + 2);
    v19[0] = v14;
    v20 = v16;
    v21 = v15;
    v18[7] = 1;
    sub_1000D3CA4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1000D35F0(uint64_t a1)
{
  type metadata accessor for URL();
  sub_100006C04();
  sub_1000D3C5C(v1, v2, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for MediaCatalogSyncPageMetadata(0);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000D36EC()
{
  Hasher.init(_seed:)();
  sub_1000D35F0(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000D372C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = type metadata accessor for URL();
  sub_100002CC4();
  v28 = v4;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_10026BE80, &qword_1001EA078);
  sub_100002CC4();
  v29 = v8;
  v30 = v9;
  __chkstk_darwin(v8);
  v10 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CA8(a1, a1[3]);
  sub_1000D3BB4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002C00(a1);
  }

  v26 = v10;
  v13 = v28;
  v32[0] = 0;
  sub_100006C04();
  sub_1000D3C5C(v14, v15, &protocol conformance descriptor for URL);
  v16 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v13 + 32);
  v25 = v12;
  v17(v12, v7, v16);
  v35 = 1;
  sub_1000D3C08();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = sub_1000051C0();
  v19(v18);
  v20 = v33;
  v21 = v34;
  v22 = v25;
  v23 = &v25[*(v26 + 20)];
  *v23 = v32[0];
  *(v23 + 1) = v20;
  *(v23 + 2) = v21;
  sub_10007ACE4(v22, v27);
  sub_100002C00(a1);
  return sub_10007AD48(v22);
}

uint64_t sub_1000D3A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D32B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D3A7C(uint64_t a1)
{
  v2 = sub_1000D3BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D3AB8(uint64_t a1)
{
  v2 = sub_1000D3BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000D3AFC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000D35F0(v2);
  return Hasher._finalize()();
}

unint64_t sub_1000D3BB4()
{
  result = qword_10026BE88;
  if (!qword_10026BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BE88);
  }

  return result;
}

unint64_t sub_1000D3C08()
{
  result = qword_10026BE98;
  if (!qword_10026BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BE98);
  }

  return result;
}

uint64_t sub_1000D3C5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000D3CA4()
{
  result = qword_10026BEB0;
  if (!qword_10026BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BEB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncPageMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000D3DD8()
{
  result = qword_10026BEB8;
  if (!qword_10026BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BEB8);
  }

  return result;
}

unint64_t sub_1000D3E30()
{
  result = qword_10026BEC0;
  if (!qword_10026BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BEC0);
  }

  return result;
}

unint64_t sub_1000D3E88()
{
  result = qword_10026BEC8;
  if (!qword_10026BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BEC8);
  }

  return result;
}

void sub_1000D3EDC(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  sub_100002CC4();
  v37 = v4;
  v6 = __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  sub_100003CA8(v1, v1[3]);
  sub_1000D4838(v10);
  v11 = v36;
  v12 = dispatch thunk of FileStore.items(within:)();
  if (v11)
  {

    (*(v37 + 8))(v10, v3);
  }

  else
  {
    v13 = v12;
    v35 = *(v37 + 8);
    v36 = v37 + 8;
    v35(v10, v3);
    v34 = *(v13 + 16);
    if (v34)
    {
      v29 = v1;
      v30 = 0;
      v14 = 0;
      sub_100004864();
      v32 = v13 + v16;
      v33 = v13;
      v17 = *(a1 + 16);
      v31 = v15 + 16;
      while (v14 < *(v13 + 16))
      {
        v18 = v14++;
        v19 = v3;
        (*(v15 + 16))(v8, v32 + *(v15 + 72) * v18, v3);
        v20 = 0;
        while (v17 != v20)
        {
          v21 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
          sub_100002CFC(v21);
          v22 = URL.lastPathComponent.getter();
          v24 = v23;
          if (v22 == URL.lastPathComponent.getter() && v24 == v25)
          {

            goto LABEL_17;
          }

          ++v20;
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            goto LABEL_17;
          }
        }

        sub_100003CA8(v29, v29[3]);
        v28 = v30;
        dispatch thunk of FileStore.removeItem(at:)();
        v30 = v28;
        if (v28)
        {

          v35(v8, v19);
          return;
        }

LABEL_17:
        v3 = v19;
        v35(v8, v19);
        v13 = v33;
        v15 = v37;
        if (v14 == v34)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:
    }
  }
}

uint64_t sub_1000D422C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v30 = a2;
  v33 = type metadata accessor for FileStoreProtectionType();
  sub_100002CC4();
  v31 = v3;
  __chkstk_darwin(v4);
  sub_100002DEC();
  v32 = v6 - v5;
  v7 = type metadata accessor for URL();
  sub_100002CC4();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v28 - v14;
  sub_100003CA8(v2, v2[3]);
  sub_1000D4838(v15);
  v16 = v35;
  dispatch thunk of FileStore.createFolder(at:createIntermediateFolders:)();
  if (v16)
  {
    return (*(v9 + 8))(v15, v7);
  }

  v18 = *(v9 + 8);
  v18(v15, v7);
  sub_1000D4BF0(v34);
  v28[0] = v9;
  v28[1] = v18;
  v35 = v7;
  sub_1000D4AA8(v13);

  v19 = v2[3];
  v28[3] = v2[4];
  v28[2] = sub_100003CA8(v2, v19);
  v20 = v33;
  v21 = v31;
  v22 = v32;
  (*(v31 + 104))(v32, enum case for FileStoreProtectionType.completeUntilFirstUserAuthentication(_:), v33);
  v29 = v13;
  dispatch thunk of FileStore.createFile(at:contents:protectionType:)();
  (*(v21 + 8))(v22, v20);
  v23 = v30;
  (*(v28[0] + 32))(v30, v29, v35);
  v24 = *v34;
  v26 = *(v34 + 1);
  v25 = *(v34 + 2);
  v27 = v23 + *(type metadata accessor for MediaCatalogSyncPageMetadata(0) + 20);
  *v27 = v24;
  *(v27 + 8) = v26;
  *(v27 + 16) = v25;
}

void *sub_1000D4534(uint64_t a1)
{
  type metadata accessor for MediaCatalogSyncPage(0);
  sub_100002CC4();
  v32 = v3;
  __chkstk_darwin(v3);
  sub_100002DEC();
  v6 = v5 - v4;
  v7 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v7 - 8);
  sub_100002DEC();
  v8 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  v9 = sub_100002CFC(v8);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v12 = v11 - v10;
  v13 = 0;
  v33 = a1;
  v35 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  while (v35 != v13)
  {
    sub_100004864();
    sub_10007ACE4(v33 + v15 + *(v16 + 72) * v13, v12);
    sub_100003CA8(v34, v34[3]);
    v17 = dispatch thunk of FileStore.contents(at:)();
    if (v1)
    {
      goto LABEL_11;
    }

    v19 = v17;
    v20 = v18;
    static String.Encoding.utf8.getter();
    v21 = String.init(data:encoding:)();
    if (!v22)
    {
      sub_100090C64();
      swift_allocError();
      *v30 = 1;
      swift_willThrow();
      sub_1000253FC(v19, v20);
LABEL_11:
      sub_10007AD48(v12);

      return v14;
    }

    v23 = v21;
    v24 = v22;
    sub_1000253FC(v19, v20);
    sub_10007ACE4(v12, v6);
    v25 = (v6 + *(v32 + 20));
    *v25 = v23;
    v25[1] = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1000D5230(0, v14[2] + 1, 1, v14);
    }

    v27 = v14[2];
    v26 = v14[3];
    if (v27 >= v26 >> 1)
    {
      v14 = sub_1000D5230((v26 > 1), v27 + 1, 1, v14);
    }

    sub_10007AD48(v12);
    v14[2] = v27 + 1;
    sub_100004864();
    sub_1000D5354(v6, v14 + v28 + *(v29 + 72) * v27);
    ++v13;
  }

  return v14;
}

uint64_t sub_1000D4838@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL.DirectoryHint();
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = v9 - v8;
  v11 = type metadata accessor for MediaCatalogSyncPageStoreCore(0);
  v12 = *(v11 + 20);
  type metadata accessor for URL();
  sub_100002DDC();
  (*(v13 + 16))(a1, v2 + v12);
  v14 = *(v6 + 104);
  v15 = sub_10003AEAC();
  v14(v15);
  sub_10001ECE0();
  URL.append<A>(component:directoryHint:)();
  v16 = *(v6 + 8);
  v16(v10, v4);
  sub_1000D0004(*(v20 + *(v11 + 24)), *(v20 + *(v11 + 24) + 8), *(v20 + *(v11 + 24) + 16));
  v17 = sub_10003AEAC();
  v14(v17);
  URL.append<A>(component:directoryHint:)();
  v16(v10, v4);

  v18 = sub_10003AEAC();
  v14(v18);
  URL.append<A>(component:directoryHint:)();
  return (v16)(v10, v4);
}

uint64_t type metadata accessor for MediaCatalogSyncPageStoreCore(uint64_t a1)
{
  result = qword_10026C010;
  if (!qword_10026C010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D4AA8@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = v9 - v8;
  sub_1000D4838(a3);

  v11._countAndFlagsBits = 0x6E6F736A2ELL;
  v11._object = 0xE500000000000000;
  String.append(_:)(v11);
  (*(v6 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10001ECE0();
  URL.append<A>(component:directoryHint:)();
  (*(v6 + 8))(v10, v4);
}

uint64_t sub_1000D4BF0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  sub_100002CC4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002DEC();
  v8 = v7 - v6;
  if (*(a1 + 64))
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    sub_100090C64();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  return sub_100002FD8();
}