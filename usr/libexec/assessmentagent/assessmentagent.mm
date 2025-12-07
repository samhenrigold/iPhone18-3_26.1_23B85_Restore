void sub_1000022D8(uint64_t a1, void *a2)
{
  v3 = [a2 ae_map:&stru_1000A5FD8];
  (*(*(a1 + 32) + 16))();
}

void sub_100003534(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 status];
  if (v3 < 2)
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[AEAConcreteAirPlayPrimitives stopAirPlayingWithCompletion:]_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"AEAConcreteAirPlayPrimitives.m" lineNumber:44 description:{@"Should never receve this route setting status %ld", objc_msgSend(v7, "status")}];
  }

  else
  {
    if ((v3 - 3) < 2)
    {
      v4 = *(*(a1 + 32) + 16);
LABEL_7:
      v4();
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      v4 = *(*(a1 + 32) + 16);
      goto LABEL_7;
    }

    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[AEAConcreteAirPlayPrimitives stopAirPlayingWithCompletion:]_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"AEAConcreteAirPlayPrimitives.m" lineNumber:57 description:{@"Encountered unknown AirPlay status %ld", objc_msgSend(v7, "status")}];
  }

LABEL_10:
}

void sub_100003B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003BAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained timerSource];
    v3 = dispatch_source_testcancel(v2);

    WeakRetained = v4;
    if (!v3)
    {
      [v4 timerDidFire];
      WeakRetained = v4;
    }
  }
}

id sub_100003D3C(uint64_t a1)
{
  v2 = [*(a1 + 32) timerSource];
  dispatch_source_cancel(v2);

  v3 = *(a1 + 32);

  return [v3 setFireHandler:0];
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for AEAConcreteEnvironment();
  swift_allocObject();
  v4 = sub_10006B020();
  qword_1000BC4F8 = v4;
  v5 = type metadata accessor for AEAAgent();
  v12[3] = v3;
  v12[4] = &off_1000AB8A0;
  v12[0] = v4;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  swift_retain_n();
  sub_100060EC0(v12, v9, v11);
  sub_100003F04(v9);
  v6 = objc_allocWithZone(v5);
  v7 = sub_100022B38(v11);

  sub_100003FB4(v12);
  qword_1000BC500 = v7;
  sub_100022DE0();
  CFRunLoopRun();
  return 0;
}

uint64_t sub_100003F04(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B6578, &qword_10007F640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003F6C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003FB4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

__n128 sub_100004004(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004010(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004030(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100004090(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000040B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

Swift::Int sub_100004190(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100004200(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100004278(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000042F8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000433C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004378(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000043CC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100004440(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_1000044AC(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100004534@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000457C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000045BC(uint64_t a1)
{
  v2 = sub_100004708(&qword_1000B7158, type metadata accessor for URLResourceKey, &unk_10007F7F8);
  v3 = sub_100004708(&qword_1000B7160, type metadata accessor for URLResourceKey, &unk_10007F798);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000047D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000048B0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  result = a2();
  v7 = v6;
  if (v6)
  {
    v8 = result;
    *(a3 + 24) = type metadata accessor for AEAParticipant.Process(0);
    *(a3 + 32) = sub_100004F28();
    v9 = sub_100004F80(a3);
    result = sub_100004FE4(a1, v9);
    *(a3 + 40) = v8 & 1;
    *(a3 + 41) = HIBYTE(v8) & 1;
  }

  else
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  *(a3 + 48) = v7;
  return result;
}

uint64_t sub_100004940()
{
  v1 = OBJC_IVAR____TtC15assessmentagent37AEACandidateMatchingParticipantSource_candidateProcesses;
  v2 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEACandidateMatchingParticipantSource(uint64_t a1)
{
  result = qword_1000B7348;
  if (!qword_1000B7348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004A50(uint64_t a1)
{
  sub_100004AEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100004AEC(uint64_t a1)
{
  if (!qword_1000B7358)
  {
    sub_100004B50(&unk_1000B7360, &unk_100081AA0);
    v1 = type metadata accessor for Published.Publisher();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B7358);
    }
  }
}

uint64_t sub_100004B50(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004B98()
{
  v1 = sub_100003F6C(&qword_1000B73F0, &qword_10007FA00);
  __chkstk_darwin(v1);
  v3 = &v18 - v2;
  v4 = sub_100003F6C(&qword_1000B73F8, &qword_10007FA08);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = *v0;
  v9 = (*v0 + OBJC_IVAR____TtC15assessmentagent37AEACandidateMatchingParticipantSource_configurationBuilder);
  v10 = *v9;
  v11 = v9[1];
  v12 = OBJC_IVAR____TtC15assessmentagent37AEACandidateMatchingParticipantSource_candidateProcesses;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  v14 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  (*(*(v14 - 8) + 16))(v3, v8 + v12, v14);
  v15 = &v3[*(v1 + 76)];
  *v15 = sub_100004E70;
  v15[1] = v13;
  sub_100004EE0(&qword_1000B7408, &qword_1000B73F0, &qword_10007FA00, &unk_10007FEC0);
  sub_100004EE0(&qword_1000B7410, &qword_1000B7418, &qword_100081AB0, &protocol conformance descriptor for Set<A>);

  Publisher<>.removeDuplicates()();
  sub_100004E78(v3);
  sub_100004EE0(&qword_1000B7420, &qword_1000B73F8, &qword_10007FA08, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v16 = Publisher.eraseToAnyPublisher()();
  (*(v5 + 8))(v7, v4);
  return v16;
}

uint64_t sub_100004E38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004E78(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B73F0, &qword_10007FA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004EE0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004B50(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100004F28()
{
  result = qword_1000B7428;
  if (!qword_1000B7428)
  {
    type metadata accessor for AEAParticipant.Process(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7428);
  }

  return result;
}

uint64_t *sub_100004F80(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100004FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAParticipant.Process(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000507C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad____lazy_storage___fileURL;
  swift_beginAccess();
  sub_100005AD4(v1 + v9, v8);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_100005B44(v8);
  URL.appendingPathComponent(_:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_100005BAC(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_100005490()
{
  v2 = v0;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  sub_100005A3C((v0 + 16), *(v0 + 40));
  sub_10000507C(v9);
  sub_10001D88C();
  if (v1)
  {
    return (*(v4 + 8))(v9, v3);
  }

  v11 = *(v4 + 8);
  v11(v9, v3);
  v12 = OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_backing;
  result = swift_beginAccess();
  if (*(*(v2 + v12) + 16))
  {
    v13 = objc_opt_self();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v22 = 0;
    v15 = [v13 dataWithPropertyList:isa format:200 options:0 error:&v22];

    v16 = v22;
    if (v15)
    {
      v21 = v11;
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      sub_100005A3C((v2 + 16), *(v2 + 40));
      sub_10000507C(v7);
      sub_10001D6DC(v17, v19, v7, 2);
      v21(v7, v3);
      return sub_100005A80(v17, v19);
    }

    else
    {
      v20 = v16;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000057C8()
{
  sub_100003FB4((v0 + 16));
  v1 = OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_directoryURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100005B44(v0 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad____lazy_storage___fileURL);

  return swift_deallocClassInstance();
}

uint64_t _s17WritingScratchpadCMa(uint64_t a1)
{
  result = qword_1000B7520;
  if (!qword_1000B7520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000058F4(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1000059E4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000059E4(uint64_t a1)
{
  if (!qword_1000B7530)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B7530);
    }
  }
}

void *sub_100005A3C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005A80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100005AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005B44(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100005C1C()
{
  result = qword_1000B7890;
  if (!qword_1000B7890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B7890);
  }

  return result;
}

__n128 sub_100005C78(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005C84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100005CCC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100005D1C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_100005E44(*a1, *a2))
  {
    if (v2)
    {
      if (v3 && (sub_100005E44(v2, v3) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100005D78(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100005DA8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (sub_100005E44(v2, v5))
    {
      if (v3)
      {
        if (v4 && (sub_100005E44(v3, v4) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v4)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100005E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

__n128 sub_100005ED4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005EE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005F80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100006014(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v3 - 2);
      v8 = *v3;
      if (*v4 > 1u)
      {
        v10 = *(v4 - 1);
        v11 = *(v3 - 1);
        if (*v4 == 2)
        {
          if (v8 != 2 || (v6 != v7 || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v8 != 3)
          {
            return 0;
          }

          sub_100006174(*(v3 - 2), *(v3 - 1), 3);
          sub_100006174(v6, v10, 3);
          v12 = sub_100006014(v6, v7);
          sub_100006198(v7, v11, 3);
          sub_100006198(v6, v10, 3);
          if ((v12 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (*v4)
      {
        if (v8 != 1 || v6 != v7)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (*v3 || ((v7 ^ v6) & 1) != 0)
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100006174(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 3)
  {
  }

  return v3;
}

uint64_t sub_100006198(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 3)
  {
  }

  return v3;
}

uint64_t sub_1000061C4(void *a1)
{
  v1 = a1[13];
  v2 = a1[16];
  v3 = *(a1[17] + 8);
  v4 = a1[18];
  v8 = a1[10];
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  _s17AEADeltaPublisherVMa(255, &v8);
  result = type metadata accessor for Optional();
  if (v6 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    result = type metadata accessor for Optional();
    if (v7 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      v10 = &unk_10007FD48;
      v11 = &value witness table for Builtin.RawPointer + 64;
      v12 = &unk_10007FD60;
      v13 = &unk_10007FD78;
      v14 = &value witness table for Builtin.BridgeObject + 64;
      v15 = &value witness table for Builtin.BridgeObject + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000062FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 32);
  v15 = *(a2 + 16);
  v8 = *(a2 + 64);
  v16 = a3;
  v17 = v7;
  v18 = a4;
  v19 = *(a2 + 48);
  v20 = v8;
  v9 = _s13AEACachingMapV22CachingMapSubscriptionCMa(0, &v15);
  v10 = (v4 + *(a2 + 76));
  v11 = *v10;
  v12 = v10[1];

  v13 = sub_100009360(v4, a1, v11, v12);

  *&v17 = v9;
  *(&v17 + 1) = swift_getWitnessTable();
  *&v15 = v13;
  dispatch thunk of Subscriber.receive(subscription:)();
  return sub_100003FB4(&v15);
}

uint64_t sub_10000640C()
{
  v1 = *v0;

  v2 = *(*v0 + 152);
  v3 = v1[13];
  v4 = v1[16];
  v5 = *(v1[17] + 8);
  v6 = v1[18];
  v11[0] = v1[10];
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  _s17AEADeltaPublisherVMa(255, v11);
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  v8 = *(*v0 + 160);
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  sub_10000858C(*(v0 + *(*v0 + 168)), *(v0 + *(*v0 + 168) + 8));
  sub_1000086E0(v0 + *(*v0 + 192));

  return v0;
}

uint64_t sub_100006608()
{
  sub_10000640C();

  return swift_deallocClassInstance();
}

void sub_100006674()
{
  v1 = *(v0 + *(*v0 + 176));
  os_unfair_lock_lock(v1);
  sub_1000066F8(v0);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1000066F8(uint64_t *a1)
{
  v3 = *a1;
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 128);
  v7 = *(*(*a1 + 136) + 8);
  v8 = *(*a1 + 144);
  v30 = *(*a1 + 104);
  v31 = v5;
  *&v33 = v5;
  *(&v33 + 1) = v30;
  v29 = v6;
  *&v34 = v6;
  *(&v34 + 1) = v7;
  v36 = v8;
  v35 = v8;
  v26 = _s17AEADeltaPublisherVMa(255, &v33);
  v9 = type metadata accessor for Optional();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  v12 = *(v3 + 96);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  result = __chkstk_darwin(v13);
  v17 = v25 - v16;
  v18 = *(v3 + 184);
  if ((*(a1 + v18) & 1) == 0)
  {
    v25[0] = v4;
    v25[1] = v1;
    *(a1 + v18) = 1;
    v19 = *(*a1 + 192);
    swift_beginAccess();
    sub_100008670(a1 + v19, &v33);
    if (*(&v34 + 1))
    {
      sub_10000859C(&v33, v32);
      sub_1000086E0(&v33);
      sub_100005A3C(v32, v32[3]);
      dispatch thunk of Cancellable.cancel()();
      sub_100003FB4(v32);
    }

    else
    {
      sub_1000086E0(&v33);
    }

    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    swift_beginAccess();
    sub_100008600(&v33, a1 + v19);
    swift_endAccess();
    (*(*(v12 - 8) + 56))(v17, 1, 1, v12);
    v20 = *(*a1 + 160);
    swift_beginAccess();
    (*(v14 + 40))(a1 + v20, v17, v13);
    swift_endAccess();
    (*(*(v26 - 8) + 56))(v11, 1, 1);
    v21 = *(*a1 + 152);
    swift_beginAccess();
    (*(v27 + 40))(a1 + v21, v11, v28);
    swift_endAccess();
    v22 = (a1 + *(*a1 + 168));
    v23 = *v22;
    v24 = v22[1];
    *v22 = 0;
    v22[1] = 0;
    sub_10000858C(v23, v24);
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Dictionary();
    Dictionary.removeAll(keepingCapacity:)(0);
    swift_endAccess();
    swift_beginAccess();
    type metadata accessor for Set();
    Set.removeAll(keepingCapacity:)(0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100006C50(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 176));
  os_unfair_lock_lock(v3);
  sub_100006CF4(v1, a1, &v5);
  os_unfair_lock_unlock(v3);
  v5();
}

uint64_t sub_100006CF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void (**a3)()@<X8>)
{
  if ((*(result + *(*result + 184)) & 1) == 0)
  {
    v5 = *(*result + 192);
    v6 = result;
    swift_beginAccess();
    sub_100008670(v6 + v5, &v8);
    if (v9)
    {
      sub_100008748(&v8, v10);
      sub_100008748(v10, &v8);
      v7 = swift_allocObject();
      result = sub_100008748(&v8, v7 + 16);
      *(v7 + 56) = a2;
      *a3 = sub_100008798;
      a3[1] = v7;
      return result;
    }

    result = sub_1000086E0(&v8);
  }

  *a3 = Publishers.AEACombineLatestMany.init(_:);
  a3[1] = 0;
  return result;
}

void sub_100006E28(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 176));
  os_unfair_lock_lock(v3);
  sub_100006EB4(v1, a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_100006EB4(uint64_t result, uint64_t a2)
{
  if ((*(result + *(*result + 184)) & 1) == 0)
  {
    v2 = result;
    sub_10000859C(a2, v4);
    v3 = *(*v2 + 192);
    swift_beginAccess();
    sub_100008600(v4, v2 + v3);
    return swift_endAccess();
  }

  return result;
}

void sub_100006F58(uint64_t a1)
{
  v3 = *&v1[*(*v1 + 176)];
  os_unfair_lock_lock(v3);
  sub_100006FE4(v1, a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_100006FE4(char *a1, uint64_t a2)
{
  v15 = a2;
  v3 = *a1;
  v4 = *a1;
  v5 = *(*a1 + 96);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = &v15 - v12;
  if ((a1[*(v3 + 184)] & 1) == 0)
  {
    v14 = *(v4 + 160);
    swift_beginAccess();
    (*(v10 + 16))(v13, &a1[v14], v9);
    if ((*(v6 + 48))(v13, 1, v5))
    {
      return (*(v10 + 8))(v13, v9);
    }

    else
    {
      (*(v6 + 16))(v8, v13, v5);
      (*(v10 + 8))(v13, v9);
      dispatch thunk of Subscriber.receive(completion:)();
      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t (*sub_100007250(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v7 = *&v3[*(*v3 + 176)];
  os_unfair_lock_lock(v7);
  sub_100007308(v3, a1, a2, a3, &v9);
  os_unfair_lock_unlock(v7);
  v9(&v9);

  return v9;
}

uint64_t sub_100007308@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v38 = a5;
  v6 = *a1;
  v7 = *a1;
  v8 = *(*a1 + 96);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v37 = *(v8 - 8);
  v14 = *(v37 + 64);
  v15 = __chkstk_darwin(v11);
  result = __chkstk_darwin(v15);
  v19 = &v32 - v18;
  v20 = sub_1000076C0;
  if ((a1[*(v6 + 184)] & 1) == 0)
  {
    v32 = v17;
    v33 = v7;
    v22 = *(v7 + 160);
    swift_beginAccess();
    (*(v10 + 16))(v13, &a1[v22], v9);
    v23 = v37;
    if ((*(v37 + 48))(v13, 1, v8) == 1)
    {
      result = (*(v10 + 8))(v13, v9);
    }

    else
    {
      v24 = *(v23 + 32);
      v24(v19, v13, v8);
      v25 = &a1[*(*a1 + 168)];
      v26 = *v25;
      if (*v25)
      {
        v27 = v25[1];
        sub_100008448(*v25, v27);
        v36 = sub_100007824(v34, v35, v36, v26, v27);
        v28 = v32;
        v24(v32, v19, v8);
        v29 = (*(v23 + 80) + 88) & ~*(v23 + 80);
        v21 = swift_allocObject();
        v30 = v33;
        *(v21 + 16) = *(v33 + 80);
        *(v21 + 24) = *(v30 + 88);
        *(v21 + 32) = v8;
        *(v21 + 40) = *(v30 + 104);
        *(v21 + 56) = *(v30 + 120);
        *(v21 + 64) = *(v30 + 128);
        *(v21 + 80) = *(v30 + 144);
        v24((v21 + v29), v28, v8);
        *(v21 + ((v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;

        result = sub_10000858C(v26, v27);
        v20 = sub_1000084EC;
        goto LABEL_9;
      }

      result = (*(v23 + 8))(v19, v8);
    }

    v21 = 0;
    v20 = sub_1000076C0;
    goto LABEL_9;
  }

  v21 = 0;
LABEL_9:
  v31 = v38;
  *v38 = v20;
  v31[1] = v21;
  return result;
}

uint64_t sub_1000076C0@<X0>(uint64_t *a1@<X8>)
{
  result = static Subscribers.Demand.none.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100007824(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v90 = a4;
  v91 = a5;
  v96 = a1;
  v93 = *v5;
  v7 = v93;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  v9 = __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v10;
  __chkstk_darwin(v9);
  v101 = &v69 - v12;
  v13 = *(v7 + 88);
  v99 = type metadata accessor for Optional();
  v73 = *(v99 - 8);
  v14 = __chkstk_darwin(v99);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v92 = &v69 - v18;
  v19 = __chkstk_darwin(v17);
  v94 = (&v69 - v20);
  v102 = v13;
  v72 = *(v13 - 8);
  v21 = __chkstk_darwin(v19);
  v81 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v80 = &v69 - v24;
  v25 = __chkstk_darwin(v23);
  v79 = &v69 - v26;
  __chkstk_darwin(v25);
  v82 = &v69 - v27;
  v97 = *(v7 + 144);
  v103 = AssociatedTypeWitness;
  v28 = swift_getAssociatedTypeWitness();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v78 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v31;
  __chkstk_darwin(v30);
  v33 = &v69 - v32;
  v34 = Array.endIndex.getter();
  v100 = v11;
  v98 = v16;
  if (v34)
  {
    v35 = *(*v5 + 200);
    v76 = *(*v5 + 208);
    swift_beginAccess();
    v36 = 0;
    v89 = (v29 + 16);
    v87 = (v29 + 8);
    v86 = (v72 + 48);
    v75 = (v72 + 32);
    v85 = v73 + 1;
    v74 = (v72 + 8);
    v88 = a3;
    v77 = v35;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v29 + 16))(v33, a3 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v36, v28);
        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v71 != 8)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v104 = result;
        (*v89)(v33, &v104, v28);
        swift_unknownObjectRelease();
        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      swift_getAssociatedConformanceWitness();
      v41 = v5;

      v42 = v102;
      v43 = v94;
      Dictionary.subscript.getter();

      (*v87)(v33, v28);
      if ((*v86)(v43, 1, v42) == 1)
      {
        (*v85)(v43, v99);
      }

      else
      {
        v44 = v29;
        v45 = v33;
        v46 = v82;
        v47 = v102;
        (*v75)(v82, v43, v102);
        swift_beginAccess();
        type metadata accessor for Set();
        v48 = v92;
        Set.remove(_:)();
        (*v85)(v48, v99);
        swift_endAccess();
        v49 = v46;
        v33 = v45;
        v29 = v44;
        (*v74)(v49, v47);
      }

      v5 = v41;
      v11 = v100;
      v37 = v88;
      ++v36;
      v38 = v40 == Array.endIndex.getter();
      a3 = v37;
      v16 = v98;
    }

    while (!v38);
  }

  v83 = v5;
  v51 = v96;
  if (!Array.endIndex.getter())
  {
    goto LABEL_25;
  }

  v52 = 0;
  v53 = *v83;
  v88 = *(*v83 + 200);
  v87 = *(v53 + 208);
  v54 = (v95 + 16);
  v55 = (v95 + 32);
  v56 = (v72 + 48);
  v77 = (v72 + 32);
  v76 = (v72 + 16);
  v75 = (v72 + 56);
  v74 = (v72 + 8);
  v94 = (v95 + 8);
  ++v73;
  v84 = v28;
  v86 = (v95 + 16);
  v85 = (v95 + 32);
  v82 = (v72 + 48);
  while (1)
  {
    v65 = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!v65)
    {
      break;
    }

    (*(v95 + 16))(v101, v51 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v52, v103);
    v66 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_24;
    }

LABEL_19:
    (*v55)(v11, v101, v103);
    v90(v11);
    if ((*v56)(v16, 1, v102) == 1)
    {
      (*v94)(v11, v103);
      (*v73)(v16, v99);
    }

    else
    {
      v57 = v102;
      v58 = v79;
      (*v77)(v79, v16, v102);
      dispatch thunk of Identifiable.id.getter();
      v89 = *v76;
      v59 = v92;
      (v89)(v92, v58, v57);
      (*v75)(v59, 0, 1, v57);
      swift_beginAccess();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      swift_endAccess();
      (v89)(v81, v58, v57);
      v16 = v98;
      swift_beginAccess();
      type metadata accessor for Set();
      v60 = v100;
      v61 = v80;
      v55 = v85;
      Set.insert(_:)();
      v62 = *v74;
      v63 = v61;
      v56 = v82;
      (*v74)(v63, v57);
      swift_endAccess();
      v64 = v57;
      v54 = v86;
      v62(v58, v64);
      v11 = v60;
      (*v94)(v60, v103);
    }

    v51 = v96;
    ++v52;
    if (v66 == Array.endIndex.getter())
    {
      goto LABEL_25;
    }
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  if (v70 != 8)
  {
    goto LABEL_27;
  }

  v104 = result;
  (*v54)(v101, &v104, v103);
  swift_unknownObjectRelease();
  v66 = v52 + 1;
  if (!__OFADD__(v52, 1))
  {
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  v67 = v83;
  v68 = *(*v83 + 208);
  swift_beginAccess();
  return *(v67 + v68);
}

uint64_t sub_100008448(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008458()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000084EC@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of Subscriber.receive(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_10000858C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000859C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008600(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(qword_1000B76B0, &unk_100081890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008670(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(qword_1000B76B0, &unk_100081890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000086E0(uint64_t a1)
{
  v2 = sub_100003F6C(qword_1000B76B0, &unk_100081890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008748(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100008760()
{
  sub_100003FB4((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000087EC(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = *(a1[7] + 8);
  v4 = a1[8];
  v8 = a1[2];
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  result = _s17AEADeltaPublisherVMa(319, &v8);
  if (v6 <= 0x3F)
  {
    v13 = 0;
    v8 = result;
    result = sub_100008C24();
    if (v7 <= 0x3F)
    {
      v14 = 0;
      v9 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100008894(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void sub_1000089D0(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, v9);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v13)
  {
    goto LABEL_35;
  }

  *(a1 + v9) = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v21 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v21 = a2 & 0x7FFFFFFF;
      v21[1] = 0;
    }

    else
    {
      *v21 = a2 - 1;
    }
  }

  else if (v6 >= a2)
  {
    v22 = *(v5 + 56);

    v22();
  }

  else
  {
    if (v8 <= 3)
    {
      v17 = ~(-1 << (8 * v8));
    }

    else
    {
      v17 = -1;
    }

    if (v8)
    {
      v18 = v17 & (~v6 + a2);
      if (v8 <= 3)
      {
        v19 = v8;
      }

      else
      {
        v19 = 4;
      }

      v20 = a1;
      bzero(a1, v8);
      if (v19 > 2)
      {
        if (v19 == 3)
        {
          *v20 = v18;
          *(v20 + 2) = BYTE2(v18);
        }

        else
        {
          *v20 = v18;
        }
      }

      else if (v19 == 1)
      {
        *v20 = v18;
      }

      else
      {
        *v20 = v18;
      }
    }
  }
}

unint64_t sub_100008C24()
{
  result = qword_1000B7738;
  if (!qword_1000B7738)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000B7738);
  }

  return result;
}

char *sub_100008C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a3;
  v65 = a4;
  v61 = a2;
  v58 = a1;
  v6 = *v4;
  v66 = (v6 + 120);
  v7 = *(v6 + 96);
  v62 = type metadata accessor for Optional();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v47 - v8;
  v9 = *(v6 + 80);
  v10 = *(v6 + 104);
  v67 = *(v6 + 144);
  *&v68 = v9;
  v63 = *(v6 + 128);
  v11 = *(*(&v63 + 1) + 8);
  v54 = v9;
  *(&v68 + 1) = v10;
  v55 = v10;
  *&v69 = v63;
  *(&v69 + 1) = v11;
  *&v70 = v67;
  v12 = _s17AEADeltaPublisherVMa(255, &v68);
  v57 = type metadata accessor for Optional();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v51 = &v47 - v13;
  v14 = *(v6 + 152);
  v48 = v12;
  v15 = *(v12 - 8);
  v50 = *(v15 + 56);
  v50(&v5[v14], 1, 1, v12);
  v16 = *(*v5 + 160);
  v52 = v7;
  v17 = *(v7 - 8);
  v18 = *(v17 + 56);
  v49 = v17 + 56;
  v53 = v18;
  v18(&v5[v16], 1, 1, v7);
  v19 = &v5[*(*v5 + 168)];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = *(*v5 + 176);
  v21 = swift_slowAlloc();
  *&v5[v20] = v21;
  *v21 = 0;
  v5[*(*v5 + 184)] = 0;
  v22 = &v5[*(*v5 + 192)];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v47 = *(*v5 + 200);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v23 = *(v6 + 88);
  swift_getAssociatedConformanceWitness();
  *&v5[v47] = Dictionary.init()();
  v24 = *(*v5 + 208);
  v25 = *(v6 + 112);
  v26 = v23;
  *&v5[v24] = Set.init()();
  v27 = v51;
  v28 = v48;
  (*(v15 + 16))(v51, v58, v48);
  v29 = v27;
  v50(v27, 0, 1, v28);
  v30 = *(*v5 + 152);
  swift_beginAccess();
  (*(v56 + 40))(&v5[v30], v29, v57);
  swift_endAccess();
  v31 = v59;
  v32 = v52;
  (*(v17 + 16))(v59, v61, v52);
  v33 = v31;
  v34 = v31;
  v35 = v32;
  v53(v33, 0, 1, v32);
  v36 = *(*v5 + 160);
  swift_beginAccess();
  (*(v60 + 40))(&v5[v36], v34, v62);
  swift_endAccess();
  v37 = &v5[*(*v5 + 168)];
  v38 = *v37;
  v39 = v37[1];
  v40 = v65;
  *v37 = v64;
  v37[1] = v40;

  sub_10000858C(v38, v39);
  *&v41 = v25;
  *(&v41 + 1) = *v66;
  *&v42 = v54;
  *(&v42 + 1) = v26;
  *&v43 = v35;
  *(&v43 + 1) = v55;
  v69 = v43;
  v68 = v42;
  v71 = v63;
  v70 = v41;
  v72 = v67;
  v73 = v5;
  v44 = _s13AEACachingMapV22CachingMapSubscriptionCMa(0, &v68);
  WitnessTable = swift_getWitnessTable();
  sub_10002412C(&v73, v28, v44, WitnessTable);
  return v5;
}

char *sub_100009360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 144);
  v10 = *(v4 + 96);
  v13[0] = *(v4 + 80);
  v13[1] = v10;
  v11 = *(v4 + 128);
  v13[2] = *(v4 + 112);
  v13[3] = v11;
  v14 = v9;
  _s13AEACachingMapV22CachingMapSubscriptionCMa(0, v13);
  swift_allocObject();
  return sub_100008C94(a1, a2, a3, a4);
}

Swift::Int sub_1000093F8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100009464()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id sub_1000094B4()
{
  [*&v0[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_publicationListener] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AEAClientConnection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000095CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_publicationListener);
  [v1 setDelegate:v0];
  [v1 resume];
  v2 = *(v0 + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_10000C54C;
  v12 = v3;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100063354;
  v10 = &unk_1000A69C0;
  v4 = _Block_copy(&v7);

  [v2 setInterruptionHandler:v4];
  _Block_release(v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_10000C568;
  v12 = v5;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100063354;
  v10 = &unk_1000A69E8;
  v6 = _Block_copy(&v7);

  [v2 setInvalidationHandler:v6];
  _Block_release(v6);
}

uint64_t sub_10000978C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_10000C570;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A6A10;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12[1] = _swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_10000BDF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

void sub_100009A18(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C370(v1, qword_1000BC518);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136446210;
      swift_getErrorValue();
      v6 = sub_100067820(v9, v10);
      v8 = sub_100043D60(v6, v7, &v11);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to forward invalidation error to client. Error: %{public}s", v4, 0xCu);
      sub_100003FB4(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_100009BCC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_10000C544;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A6970;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  static DispatchQoS.unspecified.getter();
  v13[1] = _swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_10000BDF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

char *sub_100009E68(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_canUsePrivateConfigurationSPI] = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100064688(a1, 0, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100009F30()
{
  if (qword_1000B6498 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC620;

  return v0;
}

void sub_100009FA4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong invalidate];
  }
}

void sub_10000A000(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100009BCC();
  }
}

id sub_10000A0B4(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v3[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_xpcPrimitives];
  result = [objc_opt_self() currentConnection];
  if (result)
  {
    v14 = result;
    v15 = [v12 auditTokenForConnection:result];

    if (qword_1000B6460 != -1)
    {
      swift_once();
    }

    v16 = swift_allocObject();
    v16[2] = v3;
    v16[3] = a1;
    v17 = v22;
    v16[4] = v15;
    v16[5] = v17;
    v16[6] = a3;
    aBlock[4] = sub_10000C360;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100063354;
    aBlock[3] = &unk_1000A6808;
    v18 = _Block_copy(aBlock);
    v19 = v3;
    v20 = a1;
    v21 = v15;

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_10000BD9C();
    sub_100003F6C(&unk_1000B7860, &qword_100080450);
    sub_10000BDF4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v24 + 8))(v8, v6);
    (*(v9 + 8))(v11, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000A3E0(char *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v15 = result;
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v16 = qword_1000BC5B8;
  *v13 = qword_1000BC5B8;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (qword_1000B6420 != -1)
  {
LABEL_11:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000C370(v18, qword_1000BC518);
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138543362;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "Client did publish state: %{public}@", v22, 0xCu);
    sub_10000C3E8(v23);
  }

  v25 = *(v15 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskSource + 40);
  sub_10000859C(v15 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskSource + 48, v34 + 8);
  *&v34[0] = v25;
  *&v35 = a1;
  *(&v35 + 1) = a3;
  v36 = v19;
  sub_100003F6C(&qword_1000B7870, &qword_100080000);
  v26 = swift_allocObject();
  v27 = v35;
  *(v26 + 48) = v34[2];
  *(v26 + 64) = v27;
  *(v26 + 80) = v36;
  v28 = v34[1];
  *(v26 + 16) = v34[0];
  *(v26 + 32) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  v30 = v19;

  v31 = a1;
  v32 = a3;

  sub_100063404(v26, sub_10000C3E0, v29);
  swift_unknownObjectRelease();
}

void sub_10000A7E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_10000A84C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_10000BD78;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A6790;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_10000BDF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

char *sub_10000AAFC(void *a1, void (*a2)(void), uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;

    sub_100064D7C(a1, 1, v7, a2, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10000AC50()
{
  result = qword_1000B7850;
  if (!qword_1000B7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7850);
  }

  return result;
}

uint64_t sub_10000ACC4()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC518);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Agent beginning SAM", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
    v0[22] = v6;
    v7 = Strong;
    v8 = v6;

    v0[2] = v0;
    v0[3] = sub_10000AF00;
    v9 = swift_continuation_init();
    v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026B9C;
    v0[13] = &unk_1000A6B40;
    v0[14] = v9;
    [v8 handleEventWantsBeginSingleAppModeWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10000AF00()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10000C7B4;
  }

  else
  {
    v2 = sub_10000C7DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000B030()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC518);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Agent ending SAM", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
    v0[22] = v6;
    v7 = Strong;
    v8 = v6;

    v0[2] = v0;
    v0[3] = sub_10000B26C;
    v9 = swift_continuation_init();
    v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026B9C;
    v0[13] = &unk_1000A6B18;
    v0[14] = v9;
    [v8 handleEventWantsEndSingleAppModeWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10000B26C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10000B3E0;
  }

  else
  {
    v2 = sub_10000B37C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000B37C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B3E0()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000B450(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 192) = a3;
  *(v4 + 184) = a4;
  *(v4 + 168) = a1;
  *(v4 + 176) = a2;
  return _swift_task_switch(sub_10000B478, 0, 0);
}

uint64_t sub_10000B478()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[23];
    v3 = *(Strong + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
    *(v0 + 25) = v3;
    v4 = Strong;
    v5 = v3;

    v6 = String._bridgeToObjectiveC()();
    *(v0 + 26) = v6;
    sub_100005C1C();
    isa = NSNumber.init(floatLiteral:)(v2).super.super.isa;
    *(v0 + 27) = isa;
    *(v0 + 2) = v0;
    *(v0 + 3) = sub_10000B658;
    v8 = swift_continuation_init();
    *(v0 + 17) = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    *(v0 + 10) = _NSConcreteStackBlock;
    *(v0 + 11) = 1107296256;
    *(v0 + 12) = sub_100026B9C;
    *(v0 + 13) = &unk_1000A6B68;
    *(v0 + 14) = v8;
    [v5 handleEventWantsPresentBannerWithTitle:v6 duration:isa completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v9 = *(v0 + 1);

    return v9();
  }
}

uint64_t sub_10000B658()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_10000B7D8;
  }

  else
  {
    v2 = sub_10000B768;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000B768()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000B7D8()
{
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000B87C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
    v0[22] = v2;
    v3 = Strong;
    v4 = v2;

    v0[2] = v0;
    v0[3] = sub_10000AF00;
    v5 = swift_continuation_init();
    v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026B9C;
    v0[13] = &unk_1000A6AF0;
    v0[14] = v5;
    [v4 handleEventWantsStartWindowContentCaptureWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10000BA24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
    v0[22] = v2;
    v3 = Strong;
    v4 = v2;

    v0[2] = v0;
    v0[3] = sub_10000AF00;
    v5 = swift_continuation_init();
    v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026B9C;
    v0[13] = &unk_1000A6AC8;
    v0[14] = v5;
    [v4 handleEventWantsStopWindowContentCaptureWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

void sub_10000BBAC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1, 1);
  }

  else
  {
    v9 = type metadata accessor for AEAClientConnection();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v10[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_canUsePrivateConfigurationSPI] = 0;
    *&v10[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_xpcPrimitives] = a4;
    *&v10[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy] = a5;
    v11 = objc_opt_self();
    swift_unknownObjectRetain();
    v12 = a5;
    v13 = [v11 anonymousListener];
    *&v10[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_publicationListener] = v13;
    v15.receiver = v10;
    v15.super_class = v9;
    v14 = objc_msgSendSuper2(&v15, "init");
    a2(v14, 0);
  }
}

uint64_t sub_10000BCF8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BD38()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000BD84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000BD9C()
{
  result = qword_1000B8950;
  if (!qword_1000B8950)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8950);
  }

  return result;
}

unint64_t sub_10000BDF4()
{
  result = qword_1000B8960;
  if (!qword_1000B8960)
  {
    sub_100004B50(&unk_1000B7860, &qword_100080450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8960);
  }

  return result;
}

unint64_t sub_10000BE58(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*&v1[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_xpcPrimitives] connectionCanPublishAssessmentState:a1];
  if (v11)
  {
    v26 = v11;
    if (qword_1000B6460 != -1)
    {
      swift_once();
    }

    v24[1] = qword_1000BC5B8;
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = a1;
    v32 = sub_10000C490;
    v33 = v12;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v24[2] = &v30;
    v30 = sub_100063354;
    v31 = &unk_1000A6880;
    v13 = _Block_copy(&aBlock);
    v25 = v1;
    v14 = a1;
    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_10000BD9C();
    sub_100003F6C(&unk_1000B7860, &qword_100080450);
    sub_10000BDF4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = sub_10000C7A4;
    v33 = v15;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100063354;
    v31 = &unk_1000A68D0;
    v16 = _Block_copy(&aBlock);

    [v14 setInterruptionHandler:v16];
    _Block_release(v16);
    v17 = swift_allocObject();
    v18 = v25;
    swift_unknownObjectWeakInit();
    v32 = sub_10000C7A8;
    v33 = v17;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100063354;
    v31 = &unk_1000A6920;
    v19 = _Block_copy(&aBlock);

    [v14 setInvalidationHandler:v19];
    _Block_release(v19);
    v20 = [objc_allocWithZone(AEAssessmentStatePublishingXPCInterfaceFactory) init];
    v21 = [v20 makeInterface];

    [v14 setExportedInterface:v21];
    [v14 setExportedObject:v18];
    [v14 resume];
    return v26;
  }

  else
  {
    v23 = v11;
    [a1 invalidate];
    return v23;
  }
}

uint64_t sub_10000C310()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000C370(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C3A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C3E8(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B7878, &qword_100080008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C450()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10000C490()
{
  v1 = *(v0 + 16);
  result = [*(v1 + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_xpcPrimitives) connectionCanUsePrivateConfigurationSPI:*(v0 + 24)];
  *(v1 + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_canUsePrivateConfigurationSPI) = result;
  return result;
}

uint64_t sub_10000C4D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C50C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for AEAClientConnection.ClientConnectionError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AEAClientConnection.ClientConnectionError(_WORD *result, int a2, int a3)
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

unint64_t sub_10000C698()
{
  result = qword_1000B7880;
  if (!qword_1000B7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7880);
  }

  return result;
}

uint64_t sub_10000C6FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000C804()
{
  v0 = [objc_opt_self() generalPasteboard];
  sub_100003F6C(&qword_1000B7940, &unk_1000800F0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v0 setItems:isa];
}

uint64_t sub_10000C8B0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (!a1)
  {
    return a2(0, 0);
  }

  swift_errorRetain();
  a2(a1, 1);
}

uint64_t sub_10000C928(void (*a1)(void ***), uint64_t a2)
{
  v5 = *v2;

  sub_10000C984(v5, a1, a2);
}

uint64_t sub_10000C984(void *a1, void (*a2)(void ***), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = [a1 recoverySession];
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_10000CB28;
    *(v9 + 24) = v6;
    v16 = sub_10000CB34;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_100063398;
    v15 = &unk_1000A6C18;
    v10 = _Block_copy(&v12);

    [v8 deactivateWithCompletion:v10];
    _Block_release(v10);

    return swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    LOBYTE(v13) = 0;
    a2(&v12);
  }
}

uint64_t sub_10000CAF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000CB5C()
{
  result = qword_1000B7960;
  if (!qword_1000B7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7960);
  }

  return result;
}

uint64_t sub_10000CBB0()
{
  if (qword_1000B6468 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC5C0;

  return v0;
}

void sub_10000CC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_100003F6C(&qword_1000B7970, &qword_100080300);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  (*(v8 + 16))(aBlock - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  aBlock[4] = sub_10000D34C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000CEA4;
  aBlock[3] = &unk_1000A6DB8;
  v13 = _Block_copy(aBlock);

  [a5 stopAirPlayingWithCompletion:v13];
  _Block_release(v13);
}

uint64_t sub_10000CDC8(char a1)
{
  if (a1)
  {
    memset(v4, 0, 41);
  }

  else
  {
    sub_10000CB5C();
    *&v4[0] = swift_allocError();
    BYTE8(v4[2]) = 1;
  }

  sub_10000D3E0(v4, &v2);
  if (v3)
  {
    sub_100003F6C(&qword_1000B7970, &qword_100080300);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100003F6C(&qword_1000B7970, &qword_100080300);
    CheckedContinuation.resume(returning:)();
  }

  return sub_10000D450(v4);
}

uint64_t sub_10000CEA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

double sub_10000CEF8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10000CF08(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 1);
  *(v2 + 48) = v1[3];
  return _swift_task_switch(sub_10000CF3C, 0, 0);
}

uint64_t sub_10000CF3C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v8 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_100003F6C(&qword_1000BA390, qword_100083400);
  *v4 = v0;
  v4[1] = sub_10000D05C;
  v6 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0x6574617669746361, 0xEF293A6874697728, sub_10000D2AC, v3, v5);
}

uint64_t sub_10000D05C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000D198, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10000D198()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000D1FC()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_10000D248()
{
  result = qword_1000B7968;
  if (!qword_1000B7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7968);
  }

  return result;
}

uint64_t sub_10000D2B8()
{
  v1 = sub_100003F6C(&qword_1000B7970, &qword_100080300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000D34C(char a1)
{
  sub_100003F6C(&qword_1000B7970, &qword_100080300);

  return sub_10000CDC8(a1);
}

uint64_t sub_10000D3C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000D3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(qword_1000B7978, &qword_100080308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D450(uint64_t a1)
{
  v2 = sub_100003F6C(qword_1000B7978, &qword_100080308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D4C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000D530(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_10000D670(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void sub_10000D8C0(Swift::Bool a1)
{
  v2 = v1;
  sub_100005C1C();
  isa = NSNumber.init(BOOLeanLiteral:)(a1).super.super.isa;
  v5 = String._bridgeToObjectiveC()();
  [v2 setNumber:isa forKey:v5];
}

void sub_10000D958(Swift::Bool a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_100005C1C();
  isa = NSNumber.init(BOOLeanLiteral:)(a1).super.super.isa;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = String._bridgeToObjectiveC()();

  [v6 setNumber:isa forKey:v9];
}

uint64_t sub_10000DA08()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 numberForKey:v1];

  if (!v2)
  {
    return 2;
  }

  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_10000DA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 numberForKey:v5];

  if (!v6)
  {
    return 2;
  }

  v7 = [v6 BOOLValue];

  return v7;
}

uint64_t sub_10000DB28()
{
  if (qword_1000B64A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC640;

  return v0;
}

uint64_t sub_10000DBB0()
{
  sub_10000E3F0();
  sub_100003FB4((v0 + 16));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10000DC14()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v0 - 8);
  v34 = v0;
  __chkstk_darwin(v0);
  v32 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003F6C(&qword_1000B7BA0, &qword_100080458);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_100003F6C(&qword_1000B7BA8, &qword_100080460);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = sub_100003F6C(&qword_1000B7BB0, &qword_100080468);
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  aBlock[0] = sub_10007C0EC();
  sub_100003F6C(&qword_1000B7BB8, &qword_100080470);
  sub_100003F6C(&qword_1000B7B98, &qword_100080448);
  sub_100004EE0(&qword_1000B7BC0, &qword_1000B7BB8, &qword_100080470, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.compactMap<A>(_:)();

  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v14 = qword_1000BC5B8;
  aBlock[0] = qword_1000BC5B8;
  v15 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_10000EF70();
  sub_100004EE0(&qword_1000B7BD0, &qword_1000B7BA8, &qword_100080460, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_10000EFBC(&qword_1000B7BD8, sub_10000EF70, &protocol conformance descriptor for OS_dispatch_queue);
  v16 = v14;
  Publisher.receive<A>(on:options:)();
  sub_10000F004(v6);

  (*(v8 + 8))(v10, v7);
  swift_getKeyPath();
  v17 = v28;
  aBlock[0] = v28;
  sub_100004EE0(&qword_1000B7BE0, &qword_1000B7BB0, &qword_100080468, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v18 = v27;
  v19 = Publisher<>.assign<A>(to:on:)();

  (*(v26 + 8))(v13, v18);
  *(v17 + 120) = v19;

  v20 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10000F09C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A6EB0;
  v21 = _Block_copy(aBlock);

  v22 = v29;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_10000EFBC(&qword_1000B8950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v33 + 8))(v23, v24);
  (*(v30 + 8))(v22, v31);
}

uint64_t sub_10000E2CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = *result;
  v5 = *result;
  v6 = 1 << *(*result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v9 = *(v5 + 56);
  v8 = v5 + 56;
  v10 = v7 & v9;
  v11 = (v6 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = *(v4 + 48) + 40 * (__clz(__rbit64(v10)) | (v3 << 6));
    result = *v13;
    v14 = *(v13 + 32);
    if (*v13 != 0x6C7070612E6D6F63 || *(v13 + 8) != 0xEE00697269532E65)
    {
      v10 &= v10 - 1;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    v16 = 0;
LABEL_16:
    *(a2 + 4) = 0;
    *a2 = v14;
    *(a2 + 5) = v16;
    return result;
  }

  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      v14 = 0;
      v16 = 1;
      goto LABEL_16;
    }

    v10 = *(v8 + 8 * v12);
    ++v3;
    if (v10)
    {
      v3 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E3F0()
{
  v1 = v0[14];
  if (v1)
  {
    [v1 end];
  }

  v0[14] = 0;
  swift_unknownObjectRelease();
  if (v0[15])
  {

    AnyCancellable.cancel()();
  }

  v0[15] = 0;

  v2 = v0[13];
  if (v2)
  {
    [v2 releaseSiri];
  }

  v0[13] = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_10000E4EC()
{
  v1 = *(v0 + 96);
  *(v0 + 84) = *(v0 + 92);
  *(v0 + 88) = v1;
  v2 = *(v0 + 56);
  *(v0 + 104) = [v2 disableSiri];
  swift_unknownObjectRelease();
  v3 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_10000EF20;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100063354;
  v7[3] = &unk_1000A6E60;
  v4 = _Block_copy(v7);

  v5 = [v2 observeSiriSuppressionWithHandler:v4];
  _Block_release(v4);
  *(v0 + 112) = v5;
  return swift_unknownObjectRelease();
}

uint64_t sub_10000E618(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v10[1] = qword_1000BC5B8;
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = sub_10000EF40;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A6E88;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10000EFBC(&qword_1000B8950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_10000E960(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_10000E9C0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v6 = qword_1000BC5B8;
  *v5 = qword_1000BC5B8;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_1000B6420 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v8 = type metadata accessor for Logger();
  sub_10000C370(v8, qword_1000BC518);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v11 = 136446466;
    v12 = *(v1 + 88);
    v34 = *(v1 + 84);
    v35 = v12;
    sub_100003F6C(&qword_1000B7B98, &qword_100080448);
    v13 = String.init<A>(describing:)();
    v15 = sub_100043D60(v13, v14, &v36);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = *(v1 + 96);
    v34 = *(v1 + 92);
    v35 = v16;
    v17 = String.init<A>(describing:)();
    v19 = sub_100043D60(v17, v18, &v36);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Siri suppression ended: applied to %{public}s. Current: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *(v1 + 96);
  if (*(v1 + 88))
  {
    if ((*(v1 + 96) & 1) == 0)
    {
LABEL_9:
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Re-instating Siri suppression.", v23, 2u);
      }

      v24 = *(v1 + 96);
      *(v1 + 84) = *(v1 + 92);
      *(v1 + 88) = v24;
      v25 = [*(v1 + 56) disableSiri];
LABEL_19:
      *(v1 + 104) = v25;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (*(v1 + 84) != *(v1 + 92))
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_9;
    }
  }

  v26 = *(v1 + 80);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v29 = os_log_type_enabled(v27, v28);
  if (v26 == 1)
  {
    if (v29)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Final attempt to re-instate Siri suppression.", v30, 2u);
    }

    *(v1 + 80) = 0;
    v25 = [*(v1 + 56) disableSiri];
    goto LABEL_19;
  }

  if (v29)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Could not suppress Siri. Failing the session.", v32, 2u);
  }

  v33 = *(v1 + 64);
  sub_10000EE94();
  swift_allocError();
  v33();
}

unint64_t sub_10000EE94()
{
  result = qword_1000B7B90;
  if (!qword_1000B7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7B90);
  }

  return result;
}

uint64_t sub_10000EEE8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EF28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000EF70()
{
  result = qword_1000B7BC8;
  if (!qword_1000B7BC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B7BC8);
  }

  return result;
}

uint64_t sub_10000EFBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F004(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B7BA0, &qword_100080458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F06C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 96);
  *a2 = *(*result + 92);
  *(a2 + 4) = v2;
  return result;
}

uint64_t sub_10000F084(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 4);
  v3 = *a2;
  *(v3 + 92) = *result;
  *(v3 + 96) = v2;
  return result;
}

unint64_t sub_10000F0E0()
{
  result = qword_1000B7BE8;
  if (!qword_1000B7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7BE8);
  }

  return result;
}

__n128 sub_10000F144(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10000F168(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10000F1B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000F234()
{
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000F2A0(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return _swift_task_switch(sub_10000F2C0, 0, 0);
}

uint64_t sub_10000F2C0()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 24);
  v3 = qword_1000B6460;
  v4 = AEKillAssessmentAgentNotificationName;
  if (v3 != -1)
  {
    swift_once();
    v1 = *(v0 + 144);
  }

  v5 = *(v0 + 136);
  v6 = qword_1000BC5B8;
  sub_10000F70C(v1, v0 + 16);
  v7 = swift_allocObject();
  v8 = *(v0 + 64);
  *(v7 + 48) = *(v0 + 48);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v0 + 80);
  v9 = *(v0 + 32);
  *(v7 + 16) = *(v0 + 16);
  *(v7 + 32) = v9;
  *(v0 + 120) = sub_10000F78C;
  *(v0 + 128) = v7;
  *(v0 + 88) = _NSConcreteStackBlock;
  *(v0 + 96) = 1107296256;
  *(v0 + 104) = sub_100063354;
  *(v0 + 112) = &unk_1000A7050;
  v10 = _Block_copy((v0 + 88));

  v11 = [v2 observeSystemNotificationWithName:v4 onQueue:v6 withHandler:v10];
  _Block_release(v10);

  v5[3] = &type metadata for AEAKillAgentNotificationListenerDeactivation;
  v5[4] = &off_1000A7140;
  v12 = swift_allocObject();
  *v5 = v12;
  v12[2] = 0xD00000000000003ALL;
  v12[3] = 0x80000001000883E0;
  v12[4] = 4;
  v12[5] = v11;
  v13 = *(v0 + 8);

  return v13();
}

void sub_10000F4B0()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC518);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received kill agent notification", v3, 2u);
  }

  exit(9);
}

uint64_t sub_10000F580(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000F618;

  return sub_10000F2A0(a1);
}

uint64_t sub_10000F618()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000F744()
{

  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 48));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10000F794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F7AC()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F7FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    result = static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  *a2 = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_10000F874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for AEAMappedAntiphony(0, AssociatedTypeWitness, a4, v14);
  v20 = a3;
  v21 = a5;
  v16 = sub_100004F80(&v19);
  (*(*(a3 - 8) + 16))(v16, v6, a3);
  v17 = sub_10003A6B8(&v19, a1, a2);
  a6[3] = v15;
  a6[4] = swift_getWitnessTable();
  *a6 = v17;
}

unint64_t sub_10000F97C()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B7CD0, &qword_100080770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100080700;
  v27[0] = kCFUserNotificationAlertHeaderKey;
  v3 = kCFUserNotificationAlertHeaderKey;
  sub_100003F6C(&qword_1000B7CD8, &qword_100080778);
  sub_1000109E8();
  AnyHashable.init<A>(_:)();
  v31 = *v1;
  v4 = v31;
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v4;
  *&v25 = kCFUserNotificationAlertMessageKey;
  sub_100010AC4(&v31, v27);
  v5 = kCFUserNotificationAlertMessageKey;
  AnyHashable.init<A>(_:)();
  v30 = v1[1];
  v6 = v30;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v6;
  *&v25 = kCFUserNotificationDefaultButtonTitleKey;
  sub_100010AC4(&v30, v27);
  v7 = kCFUserNotificationDefaultButtonTitleKey;
  AnyHashable.init<A>(_:)();
  v29 = v1[2];
  v8 = v29;
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v8;
  *&v25 = kCFUserNotificationAlternateButtonTitleKey;
  sub_100010AC4(&v29, v27);
  v9 = kCFUserNotificationAlternateButtonTitleKey;
  AnyHashable.init<A>(_:)();
  v28 = v1[3];
  v10 = v28;
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v10;
  *&v25 = kCFUserNotificationAlertTopMostKey;
  sub_100010AC4(&v28, v27);
  v11 = kCFUserNotificationAlertTopMostKey;
  AnyHashable.init<A>(_:)();
  v12 = *(v1 + 64);
  *(inited + 384) = &type metadata for Bool;
  *(inited + 360) = v12;
  v13 = sub_10002207C(inited);
  swift_setDeallocating();
  sub_100003F6C(&qword_1000B7CE8, &unk_100080780);
  swift_arrayDestroy();
  *&v25 = SBUserNotificationDefaultButtonTag;
  v14 = SBUserNotificationDefaultButtonTag;
  AnyHashable.init<A>(_:)();
  v15 = *(v1 + 65);
  v26 = &type metadata for Int;
  *&v25 = v15;
  sub_100010B20(&v25, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100040938(v24, v27, isUniquelyReferenced_nonNull_native);
  sub_100010B30(v27);
  *&v25 = SBUserNotificationDismissOnLock;
  v17 = SBUserNotificationDismissOnLock;
  AnyHashable.init<A>(_:)();
  v18 = *(v1 + 66);
  v26 = &type metadata for Bool;
  LOBYTE(v25) = v18;
  sub_100010B20(&v25, v24);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100040938(v24, v27, v19);
  sub_100010B30(v27);
  *&v25 = SBUserNotificationDontDismissOnUnlock;
  v20 = SBUserNotificationDontDismissOnUnlock;
  AnyHashable.init<A>(_:)();
  v21 = *(v1 + 67);
  v26 = &type metadata for Bool;
  LOBYTE(v25) = v21;
  sub_100010B20(&v25, v24);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_100040938(v24, v27, v22);
  sub_100010B30(v27);
  return v13;
}

uint64_t sub_10000FCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;

  return _swift_task_switch(sub_10000FD78, 0, 0);
}

uint64_t sub_10000FD78()
{
  *(v0 + 16) = 0;
  if (CFUserNotificationReceiveResponse(*(v0 + 32), *(*(v0 + 40) + 72), (v0 + 16)))
  {
    sub_100010734();
    swift_allocError();
    *v1 = 0;
    *(v1 + 8) = 256;
    swift_willThrow();
  }

  else
  {
    **(v0 + 24) = *(v0 + 16);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000FE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100010910(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100010980(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100010980(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100010980(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100010108(uint64_t a1)
{
  *(v1 + 120) = a1;
  sub_100003F6C(&qword_1000BA380, &qword_100080750);
  *(v1 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1000101D0, 0, 0);
}

uint64_t sub_1000101D0()
{
  *(v0 + 108) = 0;
  v1 = *(*(v0 + 120) + 72);
  sub_10000F97C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = CFUserNotificationCreate(0, v1, 3uLL, (v0 + 108), isa);
  *(v0 + 136) = v3;

  if (v3)
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = v3;
    v8 = v5[1];
    v9 = v5[2];
    v10 = v5[3];
    *(v7 + 104) = v5[4];
    *(v7 + 88) = v10;
    *(v7 + 72) = v9;
    *(v7 + 56) = v8;
    *(v7 + 40) = *v5;
    v11 = v3;
    sub_1000108A8(v5, v0 + 16);
    v12 = sub_10000FE80(0, 0, v4, &unk_100080760, v7);
    *(v0 + 144) = v12;
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    v14 = sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    *(v0 + 160) = v14;
    *v13 = v0;
    v13[1] = sub_1000104AC;

    return Task.result.getter(v0 + 96, v12, &type metadata for UInt, v14, &protocol self-conformance witness table for Error);
  }

  else
  {
    v15 = *(v0 + 108);
    v16 = v15 < 1;
    v17 = v15 & ~(v15 >> 31);
    sub_100010734();
    swift_allocError();
    *v18 = v17;
    *(v18 + 8) = v16;
    swift_willThrow();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1000104AC()
{

  return _swift_task_switch(sub_1000105F0, 0, 0);
}

uint64_t sub_1000105F0()
{
  v1 = *(v0 + 96);
  if (*(v0 + 104))
  {
    v2 = *(v0 + 136);
    *(v0 + 112) = v1;
    swift_errorRetain();
    swift_willThrowTypedImpl();

    sub_100010904(v1, 1);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {

    v5 = *(v0 + 8);

    return v5(v1 == 1);
  }
}

unint64_t sub_100010734()
{
  result = qword_1000B7CC0;
  if (!qword_1000B7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7CC0);
  }

  return result;
}

uint64_t sub_100010788()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000107E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000F618;

  return sub_10000FCE4(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_100010904(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100010910(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010980(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000109E8()
{
  result = qword_1000B7CE0;
  if (!qword_1000B7CE0)
  {
    sub_100004B50(&qword_1000B7CD8, &qword_100080778);
    sub_100010A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7CE0);
  }

  return result;
}

unint64_t sub_100010A6C()
{
  result = qword_1000B71E0;
  if (!qword_1000B71E0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B71E0);
  }

  return result;
}

_OWORD *sub_100010B20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100010B84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10004A8CC(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(a1 + 36);
    v9 = (*(a1 + 48) + 40 * v5);
    v10 = v9[1];
    v23 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_10004A8CC((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v23;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_100019F1C(v5, v22, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_100019F1C(v5, v22, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_100010DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10004A90C(0, v1, 0);
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(a1 + 36);
    v9 = (*(a1 + 48) + 16 * v5);
    v10 = v9[1];
    v23 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_10004A90C((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v23;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_100019F1C(v5, v22, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_100019F1C(v5, v22, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

Swift::Int sub_100010FF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100011064()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000110A8()
{
  if (*v0)
  {
    if (qword_1000B64D0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1000BC690;
  }

  else
  {
    if (qword_1000B64C8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1000BC680;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_100011154()
{
  v1[7] = v0;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_10001121C, v3, v2);
}

uint64_t sub_10001121C()
{
  v3 = (*(*(v0 + 56) + 104) + **(*(v0 + 56) + 104));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100011308;

  return v3();
}

uint64_t sub_100011308()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 72);

    return _swift_task_switch(sub_10001144C, v6, v7);
  }
}

uint64_t sub_10001144C()
{
  v1 = v0[7];
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = type metadata accessor for AEAConcreteManagedConfigurationRestrictionsApplicator();
  swift_allocObject();

  v5 = sub_100077DEC(v3, v2);
  v0[5] = v4;
  v0[6] = &off_1000AC070;
  v0[2] = v5;
  sub_100005A3C(v0 + 2, v4);
  sub_10007A2F4(0);
  sub_100003FB4(v0 + 2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_100011544()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001A778;

  return sub_100011154();
}

uint64_t sub_1000115D0()
{
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001A778;

  return sub_1000126EC();
}

uint64_t sub_100011674@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [a1 stringForKey:v5];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = *(v2 + 24);
    v9 = *(v2 + 32);
  }

  a2[3] = &type metadata for AEARestrictionsRecoveryDeactivation;
  a2[4] = &off_1000A75E0;
  v10 = swift_allocObject();
  *a2 = v10;
  sub_10000859C(v2 + 80, v10 + 64);
  v11 = *(v2 + 200);
  v12 = *(v2 + 224);
  *(v10 + 16) = 0xD000000000000035;
  *(v10 + 24) = 0x8000000100088810;
  *(v10 + 32) = 5;
  *(v10 + 40) = 0;
  *(v10 + 48) = v7;
  *(v10 + 56) = v9;
  *(v10 + 104) = v11;
  *(v10 + 112) = *(v2 + 208);
  *(v10 + 128) = v12;
}

uint64_t sub_1000117B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[40] = a4;
  v5[41] = v4;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100011884, v7, v6);
}

uint64_t sub_100011884()
{
  v1 = v0;
  v2 = *(v0 + 328);
  v44 = *(v1 + 312);
  v45 = *(v1 + 320);
  v46 = *(v1 + 304);
  v42 = *(v2 + 32);
  v43 = *(v2 + 24);
  sub_10000859C(v2 + 40, v1 + 16);
  sub_10000859C(v2 + 80, v1 + 56);
  sub_10000859C(v2 + 120, v1 + 96);
  sub_10000859C(v2 + 160, v1 + 136);
  v37 = *(v2 + 200);
  v38 = *(v2 + 224);
  v39 = *(v2 + 232);
  v40 = *(v2 + 241);
  v41 = *(v2 + 240);
  v3 = *(v1 + 40);
  v47 = *(v2 + 208);
  sub_10001A19C(v1 + 16, v3);
  v4 = *(v3 - 8);
  v36 = swift_task_alloc();
  (*(v4 + 16))();
  v5 = *(v1 + 80);
  sub_10001A19C(v1 + 56, v5);
  v6 = *(v5 - 8);
  v35 = swift_task_alloc();
  (*(v6 + 16))();
  v7 = *(v1 + 120);
  sub_10001A19C(v1 + 96, v7);
  v8 = *(v7 - 8);
  v34 = swift_task_alloc();
  (*(v8 + 16))();
  v9 = *v36;
  v10 = *v35;
  v11 = *v34;
  v12 = type metadata accessor for AEAConcreteLaunchServicesPrimitives();
  *(v1 + 200) = v12;
  *(v1 + 208) = &off_1000AC480;
  *(v1 + 176) = v9;
  v33 = type metadata accessor for AEAConcreteManagedConfigurationPrimitives();
  *(v1 + 216) = v10;
  *(v1 + 240) = v33;
  *(v1 + 248) = &off_1000AC080;
  v32 = type metadata accessor for AEAConcreteSpringBoardPrimitives();
  *(v1 + 280) = v32;
  *(v1 + 288) = &off_1000A8060;
  *(v1 + 256) = v11;
  type metadata accessor for AEARestrictionsAssertion();
  v13 = swift_allocObject();
  sub_10001A19C(v1 + 176, v12);
  v14 = *(v12 - 8);
  v31 = swift_task_alloc();
  (*(v14 + 16))();
  v15 = *(v1 + 240);
  v16 = sub_10001A19C(v1 + 216, v15);
  v17 = *(v15 - 8);
  v18 = swift_task_alloc();
  (*(v17 + 16))(v18, v16, v15);
  v19 = *(v1 + 280);
  v20 = sub_10001A19C(v1 + 256, v19);
  v21 = *(v19 - 8);
  v22 = swift_task_alloc();
  (*(v21 + 16))(v22, v20, v19);
  v23 = *v31;
  v24 = *v18;
  v25 = *v22;
  *(v13 + 56) = v12;
  *(v13 + 64) = &off_1000AC480;
  *(v13 + 32) = v23;
  *(v13 + 136) = v33;
  *(v13 + 144) = &off_1000AC080;
  *(v13 + 112) = v24;
  *(v13 + 96) = v32;
  *(v13 + 104) = &off_1000A8060;
  *(v13 + 72) = v25;
  *(v13 + 256) = _swiftEmptyArrayStorage;
  *(v13 + 264) = 0;
  *(v13 + 304) = 0;
  *(v13 + 272) = 0u;
  *(v13 + 288) = 0u;
  *(v13 + 16) = v43;
  *(v13 + 24) = v42;
  sub_100008748((v1 + 136), v13 + 192);
  *(v13 + 152) = v37;
  *(v13 + 160) = v47;
  *(v13 + 232) = v44;
  *(v13 + 240) = v45;
  *(v13 + 176) = v38;
  *(v13 + 184) = v39;
  *(v13 + 248) = v41;
  *(v13 + 249) = v40;
  swift_bridgeObjectRetain_n();

  sub_100003FB4((v1 + 256));

  sub_100003FB4((v1 + 216));

  sub_100003FB4((v1 + 176));

  sub_100003FB4((v1 + 96));

  sub_100003FB4((v1 + 56));

  sub_100003FB4((v1 + 16));

  v26 = swift_allocObject();
  v26[2] = v46;
  v26[3] = v43;
  v26[4] = v42;
  swift_unknownObjectRetain();
  sub_100013374(sub_10001A540, v26);
  v27 = *(v1 + 296);

  v27[3] = &type metadata for AEARestrictionsDeactivation;
  v27[4] = &off_1000A7600;
  v28 = swift_allocObject();
  *v27 = v28;
  *(v28 + 16) = 0xD00000000000002CLL;
  *(v28 + 24) = 0x80000001000887C0;
  *(v28 + 32) = 5;
  *(v28 + 40) = 0;
  *(v28 + 48) = v13;
  v29 = *(v1 + 8);

  return v29();
}

void sub_100011F1C(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  [a1 setString:v2 forKey:v3];

  v18 = 0;
  v4 = [a1 persistWithError:&v18];
  v5 = v18;
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000B6440 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C370(v8, qword_1000BC578);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = sub_100067820(v16, v17);
      v15 = sub_100043D60(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to persist restriction scratchpad. Error: %{public}s", v11, 0xCu);
      sub_100003FB4(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_1000121B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000F618;

  return sub_1000117B4(a1, a2, a3, a4);
}

uint64_t sub_100012270()
{
  if (v0[37])
  {
    v1 = v0[37];
  }

  else
  {
    v2 = v0[2];
    v3 = v0[3];
    sub_10000859C((v0 + 14), v18);
    sub_10000859C((v0 + 9), v17);
    v4 = v0[29];
    v5 = v0[30];
    v6 = sub_10001A19C(v18, v18[3]);
    __chkstk_darwin(v6);
    v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = sub_10001A19C(v17, v17[3]);
    __chkstk_darwin(v10);
    v12 = (v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v8;
    v15 = *v12;

    v1 = sub_100019378(v2, v3, v14, v15, v4, v5);
    sub_100003FB4(v17);
    sub_100003FB4(v18);
    v0[37] = v1;
  }

  return v1;
}

uint64_t sub_100012490()
{
  if (v0[38])
  {
    v1 = v0[38];
  }

  else
  {
    sub_10000859C((v0 + 9), v18);
    v3 = v0[29];
    v2 = v0[30];
    v4 = sub_10001A19C(v18, v18[3]);
    __chkstk_darwin(v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for AEAConcreteSpringBoardPrimitives();
    v17[3] = v9;
    v17[4] = &off_1000A8060;
    v17[0] = v8;
    type metadata accessor for AEAHomeScreenConfigurer();
    v1 = swift_allocObject();
    v10 = sub_10001A19C(v17, v9);
    __chkstk_darwin(v10);
    v12 = (v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    *(v1 + 40) = v9;
    *(v1 + 48) = &off_1000A8060;
    *(v1 + 16) = v14;
    type metadata accessor for CATSerializer();
    swift_allocObject();

    v15 = CATSerializer.init()();
    *(v1 + 64) = v2;
    *(v1 + 72) = v15;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0;
    *(v1 + 56) = v3;
    sub_100003FB4(v17);
    sub_100003FB4(v18);
    v0[38] = v1;
  }

  return v1;
}

uint64_t sub_1000126EC()
{
  v1[13] = v0;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1000127B4, v3, v2);
}

uint64_t sub_1000127B4()
{
  v1 = *(v0 + 104);
  *(v1 + 264) = 0;
  swift_beginAccess();
  sub_10006F5E4();
  swift_endAccess();
  v2 = *(v1 + 272);
  v3 = *(v1 + 280);
  *(v1 + 272) = 0;
  *(v1 + 280) = 0;
  sub_10000858C(v2, v3);
  v4 = *(v1 + 288);
  if (v4)
  {
    [v4 cancel];
  }

  *(v1 + 288) = 0;
  swift_unknownObjectRelease();
  *(v0 + 128) = sub_100012490();

  return _swift_task_switch(sub_100012878, 0, 0);
}

uint64_t sub_100012878()
{

  v1 = CATSerializer.enqueue<A>(respectingCancelAll:_:)();
  *(v0 + 136) = v1;

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  v3 = sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
  *v2 = v0;
  v2[1] = sub_100012988;

  return Task.value.getter(v3, v1, &type metadata for () + 8, v3, &protocol self-conformance witness table for Error);
}

uint64_t sub_100012988()
{
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = sub_100012BAC;
  }

  else
  {
    v2 = sub_100012AA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100012AA4()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_100012B10, v1, v2);
}

uint64_t sub_100012B10()
{
  *(v0 + 160) = sub_100012270();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_100012E14;

  return sub_1000161F8();
}

uint64_t sub_100012BAC()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_100012C10, v1, v2);
}

uint64_t sub_100012C10()
{
  v12 = v0;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC518);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_100067820(v0[9], v0[10]);
    v8 = sub_100043D60(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to tear down home screen configuration session: %{public}s", v4, 0xCu);
    sub_100003FB4(v5);
  }

  else
  {
  }

  v0[20] = sub_100012270();
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_100012E14;

  return sub_1000161F8();
}

uint64_t sub_100012E14()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_100013310;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_100012F30;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100012F30()
{
  v3 = (*(*(v0 + 104) + 168) + **(*(v0 + 104) + 168));
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_10001301C;

  return v3();
}

uint64_t sub_10001301C()
{
  v2 = *v1;
  v2[24] = v0;

  if (v0)
  {
    v3 = v2[14];
    v4 = v2[15];

    return _swift_task_switch(sub_10001314C, v3, v4);
  }

  else
  {
    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_10001314C()
{
  v12 = v0;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC518);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_100067820(v0[6], v0[7]);
    v8 = sub_100043D60(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "An error occurred while tearing down single app mode: %{public}s", v4, 0xCu);
    sub_100003FB4(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100013310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100013374(uint64_t result, uint64_t a2)
{
  if ((*(v2 + 264) & 1) == 0)
  {
    v3 = v2;
    *(v2 + 264) = 1;
    v5 = *(v2 + 272);
    v4 = *(v2 + 280);
    v3[34] = result;
    v3[35] = a2;

    sub_10000858C(v5, v4);
    v6 = v3[27];
    v7 = v3[28];
    sub_100005A3C(v3 + 24, v6);
    (*(v7 + 16))(v6, v7);
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v3[32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100019F60;
    *(v9 + 24) = v8;
    sub_100003F6C(&qword_1000B80E0, &qword_100080A60);
    sub_100004EE0(&qword_1000B80E8, &qword_1000B80E0, &qword_100080A60, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    sub_100003F6C(&qword_1000B80F0, &unk_100081CC0);
    sub_100004EE0(&qword_1000B80F8, &qword_1000B80F0, &unk_100081CC0, &protocol conformance descriptor for [A]);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1000135F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_100019F70(a1, v18);
    type metadata accessor for AgentActor();
    inited = swift_initStaticObject();
    v14 = sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
    v15 = swift_allocObject();
    v16 = v18[3];
    *(v15 + 72) = v18[2];
    *(v15 + 88) = v16;
    *(v15 + 104) = *v19;
    v17 = v18[1];
    *(v15 + 40) = v18[0];
    *(v15 + 16) = inited;
    *(v15 + 24) = v14;
    *(v15 + 32) = v11;
    *(v15 + 119) = *&v19[15];
    *(v15 + 56) = v17;
    *(v15 + 128) = a2;
    *(v15 + 136) = a3;

    sub_10006F6D0(0, 0, v9, &unk_100080A70, v15);
  }

  return result;
}

uint64_t sub_1000137C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_10000F618;

  return sub_100013890(a5, a6, a7);
}

uint64_t sub_100013890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[48] = a3;
  v4[49] = v3;
  v4[46] = a1;
  v4[47] = a2;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[50] = v6;
  v4[51] = v5;

  return _swift_task_switch(sub_10001395C, v6, v5);
}

uint64_t sub_10001395C()
{
  v1 = *(v0 + 392);
  v2 = v1[34];
  if (v2)
  {
    v3 = v1[35];
    v1[34] = 0;
    v1[35] = 0;
    v2();
    sub_10000858C(v2, v3);
    v1 = *(v0 + 392);
  }

  v4 = *(v0 + 368);
  v5 = sub_100005A3C(v1 + 4, v1[7]);
  sub_100042268(*v5, v4, v0 + 128);
  v6 = sub_100012270();
  v7 = *(v0 + 128);
  *(v0 + 416) = v6;
  *(v0 + 424) = v7;
  *(v0 + 344) = v7;
  sub_10001973C(v7, v0 + 72);
  v8 = *(v0 + 104) | ((*(v0 + 108) | (*(v0 + 110) << 16)) << 32);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = *(v0 + 88);
  *(v0 + 48) = v8;
  *(v0 + 56) = *(v0 + 112);
  v9 = swift_task_alloc();
  *(v0 + 432) = v9;
  *v9 = v0;
  v9[1] = sub_100013A9C;

  return sub_100015360(v0 + 16);
}

uint64_t sub_100013A9C()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_100014F84;
  }

  else
  {
    sub_100019AD4(v2 + 72);

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_100013BC4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100013BC4()
{
  v1 = *(v0 + 392);
  if (!*(v1 + 288))
  {
    *(v1 + 288) = sub_10001E8C0(*(v1 + 16), *(v1 + 24));
    swift_unknownObjectRelease();
    v1 = *(v0 + 392);
  }

  if (*(v1 + 249) == 1)
  {
    v2 = *(v0 + 424);
    *(v0 + 448) = sub_100012490();
    *(v0 + 456) = sub_100019B88(v2);
    *(v0 + 464) = v3;
    *(v0 + 472) = v4;
    *(v0 + 480) = v5;

    return _swift_task_switch(sub_100013FEC, 0, 0);
  }

  if (*(v1 + 248) == 1)
  {
    if (*(*(*(v0 + 368) + 56) + 16))
    {
      v6 = *(*(v0 + 424) + 16);
      sub_100019B28(v0 + 344, &qword_1000B80D0, &qword_100083180);
      *(v0 + 272) = *(v0 + 136);
      sub_100019B28(v0 + 272, &qword_1000B80D0, &qword_100083180);
      *(v0 + 280) = *(v0 + 144);
      sub_100019B28(v0 + 280, &qword_1000B80D0, &qword_100083180);
      *(v0 + 288) = *(v0 + 152);
      sub_100019B28(v0 + 288, &qword_1000B80D0, &qword_100083180);
      *(v0 + 296) = *(v0 + 160);
      sub_100019B28(v0 + 296, &qword_1000B80D0, &qword_100083180);
      if (v6 != 1)
      {
        v11 = (*(*(v0 + 392) + 168) + **(*(v0 + 392) + 168));
        v7 = swift_task_alloc();
        *(v0 + 528) = v7;
        *v7 = v0;
        v8 = sub_100014C78;
LABEL_16:
        v7[1] = v8;

        return v11();
      }
    }

    else
    {
      sub_100019B28(v0 + 344, &qword_1000B80D0, &qword_100083180);
      *(v0 + 304) = *(v0 + 136);
      sub_100019B28(v0 + 304, &qword_1000B80D0, &qword_100083180);
      *(v0 + 312) = *(v0 + 144);
      sub_100019B28(v0 + 312, &qword_1000B80D0, &qword_100083180);
      *(v0 + 320) = *(v0 + 152);
      sub_100019B28(v0 + 320, &qword_1000B80D0, &qword_100083180);
      *(v0 + 328) = *(v0 + 160);
      sub_100019B28(v0 + 328, &qword_1000B80D0, &qword_100083180);
    }

    v11 = (*(*(v0 + 392) + 152) + **(*(v0 + 392) + 152));
    v7 = swift_task_alloc();
    *(v0 + 512) = v7;
    *v7 = v0;
    v8 = sub_100014900;
    goto LABEL_16;
  }

  sub_100019B28(v0 + 344, &qword_1000B80D0, &qword_100083180);
  *(v0 + 240) = *(v0 + 136);
  sub_100019B28(v0 + 240, &qword_1000B80D0, &qword_100083180);
  *(v0 + 248) = *(v0 + 144);
  sub_100019B28(v0 + 248, &qword_1000B80D0, &qword_100083180);
  *(v0 + 256) = *(v0 + 152);
  sub_100019B28(v0 + 256, &qword_1000B80D0, &qword_100083180);
  *(v0 + 360) = *(v0 + 160);
  sub_100019B28(v0 + 360, &qword_1000B80D0, &qword_100083180);
  (*(v0 + 376))(0, 0);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100013FEC()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = *(v0 + 464);
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;

  v5 = CATSerializer.enqueue<A>(respectingCancelAll:_:)();
  *(v0 + 488) = v5;

  v6 = swift_task_alloc();
  *(v0 + 496) = v6;
  v7 = sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
  *v6 = v0;
  v6[1] = sub_100014130;

  return Task.value.getter(v7, v5, &type metadata for () + 8, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_100014130()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    sub_100019B28((v2 + 43), &qword_1000B80D0, &qword_100083180);
    v2[26] = v2[17];
    sub_100019B28((v2 + 26), &qword_1000B80D0, &qword_100083180);
    v2[27] = v2[18];
    sub_100019B28((v2 + 27), &qword_1000B80D0, &qword_100083180);
    v2[28] = v2[19];
    sub_100019B28((v2 + 28), &qword_1000B80D0, &qword_100083180);
    v2[29] = v2[20];
    sub_100019B28((v2 + 29), &qword_1000B80D0, &qword_100083180);

    v3 = sub_1000146CC;
  }

  else
  {
    v3 = sub_1000142D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000142D8()
{

  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return _swift_task_switch(sub_100014348, v1, v2);
}

uint64_t sub_100014348()
{
  if (*(*(v0 + 392) + 248) == 1)
  {
    if (*(*(*(v0 + 368) + 56) + 16))
    {
      v1 = *(*(v0 + 424) + 16);
      sub_100019B28(v0 + 344, &qword_1000B80D0, &qword_100083180);
      *(v0 + 272) = *(v0 + 136);
      sub_100019B28(v0 + 272, &qword_1000B80D0, &qword_100083180);
      *(v0 + 280) = *(v0 + 144);
      sub_100019B28(v0 + 280, &qword_1000B80D0, &qword_100083180);
      *(v0 + 288) = *(v0 + 152);
      sub_100019B28(v0 + 288, &qword_1000B80D0, &qword_100083180);
      *(v0 + 296) = *(v0 + 160);
      sub_100019B28(v0 + 296, &qword_1000B80D0, &qword_100083180);
      if (v1 != 1)
      {
        v6 = (*(*(v0 + 392) + 168) + **(*(v0 + 392) + 168));
        v2 = swift_task_alloc();
        *(v0 + 528) = v2;
        *v2 = v0;
        v3 = sub_100014C78;
LABEL_10:
        v2[1] = v3;

        return v6();
      }
    }

    else
    {
      sub_100019B28(v0 + 344, &qword_1000B80D0, &qword_100083180);
      *(v0 + 304) = *(v0 + 136);
      sub_100019B28(v0 + 304, &qword_1000B80D0, &qword_100083180);
      *(v0 + 312) = *(v0 + 144);
      sub_100019B28(v0 + 312, &qword_1000B80D0, &qword_100083180);
      *(v0 + 320) = *(v0 + 152);
      sub_100019B28(v0 + 320, &qword_1000B80D0, &qword_100083180);
      *(v0 + 328) = *(v0 + 160);
      sub_100019B28(v0 + 328, &qword_1000B80D0, &qword_100083180);
    }

    v6 = (*(*(v0 + 392) + 152) + **(*(v0 + 392) + 152));
    v2 = swift_task_alloc();
    *(v0 + 512) = v2;
    *v2 = v0;
    v3 = sub_100014900;
    goto LABEL_10;
  }

  sub_100019B28(v0 + 344, &qword_1000B80D0, &qword_100083180);
  *(v0 + 240) = *(v0 + 136);
  sub_100019B28(v0 + 240, &qword_1000B80D0, &qword_100083180);
  *(v0 + 248) = *(v0 + 144);
  sub_100019B28(v0 + 248, &qword_1000B80D0, &qword_100083180);
  *(v0 + 256) = *(v0 + 152);
  sub_100019B28(v0 + 256, &qword_1000B80D0, &qword_100083180);
  *(v0 + 360) = *(v0 + 160);
  sub_100019B28(v0 + 360, &qword_1000B80D0, &qword_100083180);
  (*(v0 + 376))(0, 0);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000146CC()
{

  v1 = *(v0 + 400);
  v2 = *(v0 + 408);

  return _swift_task_switch(sub_100014730, v1, v2);
}

uint64_t sub_100014730()
{
  v14 = v0;
  v1 = v0[63];
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC578);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_100067820(v0[22], v0[23]);
    v9 = sub_100043D60(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to apply restrictions for configuration: %{public}s", v5, 0xCu);
    sub_100003FB4(v6);
  }

  v10 = v0[47];
  swift_errorRetain();
  v10(v1, 1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100014900()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = sub_100014AA8;
  }

  else
  {
    v5 = sub_100014A3C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100014A3C()
{
  (*(v0 + 376))(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100014AA8()
{
  v14 = v0;
  v1 = v0[65];
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC578);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_100067820(v0[22], v0[23]);
    v9 = sub_100043D60(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to apply restrictions for configuration: %{public}s", v5, 0xCu);
    sub_100003FB4(v6);
  }

  v10 = v0[47];
  swift_errorRetain();
  v10(v1, 1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100014C78()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = sub_100014DB4;
  }

  else
  {
    v5 = sub_10001A788;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100014DB4()
{
  v14 = v0;
  v1 = v0[67];
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC578);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_100067820(v0[22], v0[23]);
    v9 = sub_100043D60(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to apply restrictions for configuration: %{public}s", v5, 0xCu);
    sub_100003FB4(v6);
  }

  v10 = v0[47];
  swift_errorRetain();
  v10(v1, 1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100014F84()
{
  v14 = v0;
  sub_100019AD4((v0 + 9));

  sub_100019B28((v0 + 43), &qword_1000B80D0, &qword_100083180);
  v0[42] = v0[17];
  sub_100019B28((v0 + 42), &qword_1000B80D0, &qword_100083180);
  v0[33] = v0[18];
  sub_100019B28((v0 + 33), &qword_1000B80D0, &qword_100083180);
  v0[24] = v0[19];
  sub_100019B28((v0 + 24), &qword_1000B80D0, &qword_100083180);
  v0[25] = v0[20];
  sub_100019B28((v0 + 25), &qword_1000B80D0, &qword_100083180);
  v1 = v0[55];
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC578);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_100067820(v0[22], v0[23]);
    v9 = sub_100043D60(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to apply restrictions for configuration: %{public}s", v5, 0xCu);
    sub_100003FB4(v6);
  }

  v10 = v0[47];
  swift_errorRetain();
  v10(v1, 1);

  v11 = v0[1];

  return v11();
}

void *sub_1000151F0()
{

  sub_100003FB4(v0 + 4);
  sub_100003FB4(v0 + 9);
  sub_100003FB4(v0 + 14);

  sub_100003FB4(v0 + 24);

  sub_10000858C(v0[34], v0[35]);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100015284()
{
  sub_1000151F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1000152D8()
{
  [*(v0 + 152) cancel];
  sub_100003FB4((v0 + 112));
  swift_unknownObjectRelease();
  sub_100018A5C(*(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100015360(uint64_t a1)
{
  *(v2 + 904) = v1;
  *(v2 + 896) = a1;
  return _swift_task_switch(sub_100015384, v1, 0);
}

uint64_t sub_100015384()
{
  v102 = v0;
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  v3 = v1[21];
  v5 = v1[22];
  v4 = v1[23];
  v6 = v1[24];
  v7 = v1[25];
  v8 = *(v1 + 13);
  v9 = *v2;
  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v12 = *(v2 + 40);
  v98 = *(v2 + 32);
  v99 = v2;
  v13 = *(v2 + 48);
  v14 = v1[26];
  v96 = *v2;
  if (v12 == 1)
  {
    if (v8 == 1)
    {
      sub_100018A14(v3, v5, v4, v6, v7, 1, *(&v8 + 1));
      sub_100019D8C(v2, v100 + 744, &qword_1000B80C0, &unk_100080A30);
      sub_100018A5C(v96, *(&v96 + 1), v11, v10, v98, 1, v13);
LABEL_15:
      if (qword_1000B6440 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000C370(v39, qword_1000BC578);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v17 = v100;
      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_37;
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Skipping duplicate restrictions update", v42, 2u);
      goto LABEL_36;
    }

    goto LABEL_5;
  }

  if (v8 == 1)
  {
LABEL_5:
    v90 = v1;
    v91 = v1 + 21;
    v92 = v1[23];
    v94 = *(v2 + 48);
    v15 = v1[27];
    v16 = v1[24];
    sub_100018A14(v3, v5, v92, v6, v7, v8, *(&v8 + 1));
    sub_100019D8C(v2, v100 + 296, &qword_1000B80C0, &unk_100080A30);
    sub_100018A5C(v96, *(&v96 + 1), v11, v10, v98, v12, v94);
    sub_100018A5C(v3, v5, v92, v16, v7, v14, v15);
    goto LABEL_6;
  }

  v90 = v1;
  v91 = v1 + 21;
  *(v100 + 16) = v3;
  *(v100 + 24) = v5;
  *(v100 + 32) = v4;
  *(v100 + 40) = v6;
  *(v100 + 48) = v7;
  *(v100 + 54) = BYTE6(v7);
  *(v100 + 52) = WORD2(v7);
  *(v100 + 72) = v9;
  *(v100 + 56) = v8;
  *(v100 + 88) = v11;
  *(v100 + 96) = v10;
  *(v100 + 104) = v98;
  *(v100 + 110) = BYTE6(v98);
  *(v100 + 108) = WORD2(v98);
  *(v100 + 112) = v12;
  *(v100 + 120) = v13;
  v89 = v11;
  v38 = v6;
  v88 = *(&v8 + 1);
  v93 = sub_100062FE4(v100 + 72, v100 + 16);
  sub_100018A14(v3, v5, v4, v38, v7, v14, v88);
  sub_100019D8C(v2, v100 + 800, &qword_1000B80C0, &unk_100080A30);
  sub_100018A5C(v3, v5, v4, v38, v7, v14, v88);
  sub_100018A5C(v96, *(&v96 + 1), v89, v10, v98, v12, v13);
  if (v93)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v17 = v100;
  v18 = *(v100 + 896);
  v19 = type metadata accessor for Logger();
  *(v100 + 912) = sub_10000C370(v19, qword_1000BC578);
  sub_100019D8C(v18, v100 + 352, &qword_1000B80C0, &unk_100080A30);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  sub_100019B28(v18, &qword_1000B80C0, &unk_100080A30);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v100 + 896);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v101[0] = v24;
    *v23 = 136315138;
    v26 = *(v22 + 16);
    v25 = *(v22 + 32);
    v27 = *v22;
    *(v100 + 680) = *(v22 + 48);
    *(v100 + 648) = v26;
    *(v100 + 664) = v25;
    *(v100 + 632) = v27;
    sub_100019D8C(v22, v100 + 688, &qword_1000B80C0, &unk_100080A30);
    sub_100003F6C(&qword_1000B80C0, &unk_100080A30);
    v28 = String.init<A>(describing:)();
    v30 = sub_100043D60(v28, v29, v101);

    *(v23 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v20, v21, "Applying restrictions: %s", v23, 0xCu);
    sub_100003FB4(v24);
  }

  v31 = *sub_100005A3C((*(v100 + 904) + 112), *(*(v100 + 904) + 136));
  v32 = *(v99 + 40);
  if (v32 == 1)
  {
    v33 = 0;
  }

  else
  {
    v34 = *(v100 + 896);
    v35 = *(v99 + 48);
    v36 = *(v34 + 32);
    v37 = *(v34 + 16);
    *(v100 + 184) = *v34;
    *(v100 + 200) = v37;
    *(v100 + 216) = v36;
    *(v100 + 224) = v32;
    *(v100 + 232) = v35;
    v33 = sub_1000781BC(*(v31 + 32));
  }

  sub_10007A2F4(v33);
  v97 = (v100 + 856);
  v43 = *(v100 + 896);

  v44 = v90[21];
  v45 = v90[22];
  v46 = v90[23];
  v47 = v90[24];
  v49 = v90[25];
  v48 = v90[26];
  v50 = v90[27];
  v51 = *(v43 + 48);
  v52 = *(v43 + 32);
  v53 = *v43;
  *(v91 + 1) = *(v43 + 16);
  *(v91 + 2) = v52;
  *v91 = v53;
  v91[6] = v51;
  sub_100019D8C(v43, v100 + 408, &qword_1000B80C0, &unk_100080A30);
  sub_100018A14(v44, v45, v46, v47, v49, v48, v50);
  sub_100018A5C(v44, v45, v46, v47, v49, v48, v50);
  v54 = *(v100 + 896);
  if (v48 != 1)
  {
    *(v100 + 128) = v44;
    *(v100 + 136) = v45;
    *(v100 + 144) = v46;
    *(v100 + 152) = v47;
    *(v100 + 160) = v49;
    *(v100 + 166) = BYTE6(v49);
    *(v100 + 164) = WORD2(v49);
    *(v100 + 168) = v48;
    *(v100 + 176) = v50;
    v95 = sub_100016104();
    sub_100018A5C(v44, v45, v46, v47, v49, v48, v50);
    v61 = *v54;
    v62 = v54[1];
    *(v100 + 888) = *(v54 + 4);
    *v97 = v61;
    *(v100 + 872) = v62;
    v58 = v99;
    v59 = *(v99 + 40);
    if (v59 != 1)
    {
      v57 = v100 + 856;
      v60 = v95;
      goto LABEL_28;
    }

    if (v95)
    {
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "Skipping SpringBoard observation: deactivating app restrictions", v65, 2u);
      }

      goto LABEL_34;
    }

LABEL_31:
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Skipping SpringBoard observation: no change in app restrictions", v73, 2u);
    }

LABEL_34:
    v74 = *(v100 + 896);
    sub_100019D8C(v74, v100 + 464, &qword_1000B80C0, &unk_100080A30);
    v40 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    sub_100019B28(v74, &qword_1000B80C0, &unk_100080A30);
    if (!os_log_type_enabled(v40, v75))
    {
LABEL_37:

      v85 = *(v17 + 8);

      return v85();
    }

    v76 = *(v100 + 896);
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v101[0] = v78;
    *v77 = 136315138;
    v80 = *(v76 + 16);
    v79 = *(v76 + 32);
    v81 = *v76;
    *(v100 + 568) = *(v76 + 48);
    *(v100 + 536) = v80;
    *(v100 + 552) = v79;
    *(v100 + 520) = v81;
    sub_100019D8C(v76, v100 + 576, &qword_1000B80C0, &unk_100080A30);
    sub_100003F6C(&qword_1000B80C0, &unk_100080A30);
    v82 = String.init<A>(describing:)();
    v84 = sub_100043D60(v82, v83, v101);

    *(v77 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v40, v75, "Finished applying restrictions: %s", v77, 0xCu);
    sub_100003FB4(v78);

LABEL_36:

    goto LABEL_37;
  }

  v55 = *v54;
  v56 = v54[1];
  v57 = v100 + 856;
  *(v100 + 888) = *(v54 + 4);
  *v97 = v55;
  *(v100 + 872) = v56;
  v58 = v99;
  v59 = *(v99 + 40);
  if (v59 == 1)
  {
    goto LABEL_31;
  }

  v60 = 0;
LABEL_28:
  *(v100 + 920) = v60;
  v66 = *(v58 + 48);
  v67 = *(v57 + 16);
  *(v100 + 240) = *v57;
  *(v100 + 256) = v67;
  *(v100 + 272) = *(v57 + 32);
  *(v100 + 280) = v59;
  *(v100 + 288) = v66;
  v68 = sub_100016104();
  *(v100 + 928) = v68;
  if (v60)
  {

    v70 = sub_10001A78C(v69, v68);

    if (v70)
    {

      goto LABEL_31;
    }
  }

  v87 = swift_task_alloc();
  *(v100 + 936) = v87;
  *v87 = v100;
  v87[1] = sub_100015D88;

  return sub_10001653C(v68);
}

uint64_t sub_100015D88()
{
  v2 = *v1;
  *(*v1 + 944) = v0;

  v3 = *(v2 + 904);
  if (v0)
  {
    v4 = sub_100016098;
  }

  else
  {
    v4 = sub_100015EB4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100015EB4()
{
  v16 = v0;

  v1 = *(v0 + 896);
  sub_100019D8C(v1, v0 + 464, &qword_1000B80C0, &unk_100080A30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_100019B28(v1, &qword_1000B80C0, &unk_100080A30);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 896);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v8 = *(v4 + 16);
    v7 = *(v4 + 32);
    v9 = *v4;
    *(v0 + 568) = *(v4 + 48);
    *(v0 + 536) = v8;
    *(v0 + 552) = v7;
    *(v0 + 520) = v9;
    sub_100019D8C(v4, v0 + 576, &qword_1000B80C0, &unk_100080A30);
    sub_100003F6C(&qword_1000B80C0, &unk_100080A30);
    v10 = String.init<A>(describing:)();
    v12 = sub_100043D60(v10, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished applying restrictions: %s", v5, 0xCu);
    sub_100003FB4(v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100016098()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100016104()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    sub_10004A8CC(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v6 >= v7 >> 1)
      {
        sub_10004A8CC((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v6];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v9 = sub_10004C148(_swiftEmptyArrayStorage);

  return v9;
}

uint64_t sub_100016218()
{
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC578);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Tearing down restrictions and restriction monitoring session…", v4, 2u);
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 56) = xmmword_1000807B0;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_100016388;

  return sub_100015360(v0 + 16);
}

uint64_t sub_100016388()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 72);

    return _swift_task_switch(sub_1000164CC, v6, 0);
  }
}

uint64_t sub_1000164CC()
{
  [*(*(v0 + 72) + 152) cancel];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001653C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000165FC, v1, 0);
}

uint64_t sub_1000165FC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  *(v0 + 16) = xmmword_1000807C0;
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  ContinuousClock.init()();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = sub_100019624(&qword_1000B80A8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v4 = v0;
  v4[1] = sub_100016758;
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);

  return static Task<>.cat_withTimeout<A, B>(duration:clock:body:)(v5, v0 + 16, v6, &unk_100080A18, v3, &type metadata for () + 8, v7, v5);
}

uint64_t sub_100016758()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_100016960;
  }

  else
  {
    v7 = sub_1000168FC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000168FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016960()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000169C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = sub_100003F6C(&qword_1000B80B0, &qword_100080A20);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_100003F6C(&qword_1000B80B8, &qword_100080A28);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100016AF8, 0, 0);
}

uint64_t sub_100016AF8()
{
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = sub_10000C370(v1, qword_1000BC578);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Beginning SpringBoard observation for expected app restriction update", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  type metadata accessor for AEAConcreteSpringBoardPrimitives.AppRestrictionsMonitoringSession();
  sub_1000272D8();
  AsyncStream.makeAsyncIterator()();
  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_100016CD8;
  v9 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v9);
}

uint64_t sub_100016CD8()
{

  return _swift_task_switch(sub_100016DD4, 0, 0);
}

uint64_t sub_100016DD4()
{
  v16 = v0;
  v1 = v0[2];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;

    v6 = Set.description.getter();
    v8 = v7;

    v9 = sub_100043D60(v6, v8, &v15);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Observed SpringBoard app restriction update: %s", v4, 0xCu);
    sub_100003FB4(v5);
  }

  v10 = sub_10001A78C(v1, v0[4]);

  if ((v10 & 1) == 0)
  {
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_100016CD8;
    v14 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v14);
  }

  else
  {
LABEL_5:
    (*(v0[9] + 8))(v0[10], v0[8]);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100017040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a5;
  v6[36] = a6;
  v6[33] = a3;
  v6[34] = a4;
  v6[32] = a2;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[37] = v8;
  v6[38] = v7;

  return _swift_task_switch(sub_100017110, v8, v7);
}

uint64_t sub_100017110()
{
  v51 = v0;
  v1 = v0[36];
  v2 = v0[33];
  v4 = v1[15];
  v3 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  if (!v3)
  {
    v9 = v0[34];
    v10 = v0[35];
    v11 = v0[32];

    sub_1000188D8(v11, v2, v9, v10);
    sub_1000188D8(v4, 0, v5, v6);
    goto LABEL_20;
  }

  v7 = v4 == v0[32] && v3 == v2;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    sub_100019EC4(v4, v3, v5, v6);

LABEL_17:

    goto LABEL_18;
  }

  if ((sub_1000061BC(v0[34], v5) & 1) == 0)
  {

    sub_100019EC4(v4, v3, v5, v6);

LABEL_18:

LABEL_19:

    goto LABEL_20;
  }

  if (!v0[35])
  {

    if (!v6)
    {
      sub_100019EC4(v4, v3, v5, 0);

      goto LABEL_37;
    }

    sub_100019EC4(v4, v3, v5, v6);

    goto LABEL_17;
  }

  if (!v6)
  {

    sub_100019EC4(v4, v3, v5, 0);

    goto LABEL_19;
  }

  v8 = sub_1000061BC(v0[35], v6);

  sub_100019EC4(v4, v3, v5, v6);

  if (v8)
  {
    goto LABEL_37;
  }

LABEL_20:
  v12 = v0[36];
  swift_beginAccess();
  sub_100019D8C(v12 + 80, (v0 + 2), &qword_1000B80A0, &qword_100080A08);
  v13 = v0[5];
  sub_100019B28((v0 + 2), &qword_1000B80A0, &qword_100080A08);
  if (v13)
  {
    if (qword_1000B6440 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C370(v14, qword_1000BC578);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[34];
      v18 = v0[35];
      v20 = v0[32];
      v19 = v0[33];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v50 = v22;
      *v21 = 136446210;
      v0[22] = v20;
      v0[23] = v19;
      v0[24] = v17;
      v0[25] = v18;

      v23 = String.init<A>(describing:)();
      v25 = sub_100043D60(v23, v24, &v50);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Updating home screen with configuration: %{public}s", v21, 0xCu);
      sub_100003FB4(v22);
    }

    sub_100019D8C(v0[36] + 80, (v0 + 12), &qword_1000B80A0, &qword_100080A08);
    if (v0[15])
    {
      v26 = v0[33];
      v27 = v0[34];
      sub_10000859C((v0 + 12), (v0 + 17));
      sub_100019B28((v0 + 12), &qword_1000B80A0, &qword_100080A08);
      sub_100005A3C(v0 + 17, v0[20]);
      v28 = swift_task_alloc();
      v0[44] = v28;
      *v28 = v0;
      v28[1] = sub_100017DE0;
      v29 = v0[35];
      v30 = v0[32];

      return sub_1000277C4(v30, v26, v27, v29);
    }

    sub_100019B28((v0 + 12), &qword_1000B80A0, &qword_100080A08);
    v42 = v0[35];
    v41 = v0[36];
    v43 = v0[33];
    v44 = v0[34];
    v45 = v41[15];
    v46 = v41[16];
    v47 = v41[17];
    v48 = v41[18];
    v41[15] = v0[32];
    v41[16] = v43;
    v41[17] = v44;
    v41[18] = v42;

    sub_1000188D8(v45, v46, v47, v48);
LABEL_37:
    v49 = v0[1];

    return v49();
  }

  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000C370(v32, qword_1000BC578);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Beginning home screen configuration session for the first time", v35, 2u);
  }

  v36 = v0[36];

  v38 = *(v36 + 56);
  v37 = *(v36 + 64);
  v39 = swift_allocObject();
  v0[39] = v39;
  *(v39 + 16) = v38;
  *(v39 + 24) = v37;
  v0[40] = type metadata accessor for AEAConcreteSpringBoardPrimitives.HomeScreenConfigurationSession();
  swift_allocObject();

  v40 = swift_task_alloc();
  v0[41] = v40;
  *v40 = v0;
  v40[1] = sub_1000178BC;

  return sub_100027304(sub_100019E2C, v39);
}

uint64_t sub_1000178BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {

    v5 = v4[37];
    v6 = v4[38];
    v7 = sub_100017DC8;
  }

  else
  {
    v4[43] = a1;
    v7 = sub_1000179F0;
    v5 = 0;
    v6 = 0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000179F0()
{
  v1 = v0[43];
  v0[10] = v0[40];
  v0[11] = &off_1000A8038;

  v0[7] = v1;
  v2 = v0[37];
  v3 = v0[38];

  return _swift_task_switch(sub_100017A68, v2, v3);
}

uint64_t sub_100017A68()
{
  v30 = v0;
  v1 = v0[36];
  swift_beginAccess();
  sub_100019E54((v0 + 7), v1 + 80);
  swift_endAccess();
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC578);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[34];
    v6 = v0[35];
    v8 = v0[32];
    v7 = v0[33];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136446210;
    v0[22] = v8;
    v0[23] = v7;
    v0[24] = v5;
    v0[25] = v6;

    v11 = String.init<A>(describing:)();
    v13 = sub_100043D60(v11, v12, &v29);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating home screen with configuration: %{public}s", v9, 0xCu);
    sub_100003FB4(v10);
  }

  sub_100019D8C(v0[36] + 80, (v0 + 12), &qword_1000B80A0, &qword_100080A08);
  if (v0[15])
  {
    v14 = v0[33];
    v15 = v0[34];
    sub_10000859C((v0 + 12), (v0 + 17));
    sub_100019B28((v0 + 12), &qword_1000B80A0, &qword_100080A08);
    sub_100005A3C(v0 + 17, v0[20]);
    v16 = swift_task_alloc();
    v0[44] = v16;
    *v16 = v0;
    v16[1] = sub_100017DE0;
    v17 = v0[35];
    v18 = v0[32];

    return sub_1000277C4(v18, v14, v15, v17);
  }

  else
  {
    sub_100019B28((v0 + 12), &qword_1000B80A0, &qword_100080A08);
    v21 = v0[35];
    v20 = v0[36];
    v22 = v0[33];
    v23 = v0[34];
    v24 = v20[15];
    v25 = v20[16];
    v26 = v20[17];
    v27 = v20[18];
    v20[15] = v0[32];
    v20[16] = v22;
    v20[17] = v23;
    v20[18] = v21;

    sub_1000188D8(v24, v25, v26, v27);
    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_100017DE0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_100017FD4;
  }

  else
  {
    v5 = sub_100017F1C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100017F1C()
{
  sub_100003FB4(v0 + 17);
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  v8 = v1[18];
  v1[15] = v0[32];
  v1[16] = v3;
  v1[17] = v4;
  v1[18] = v2;

  sub_1000188D8(v5, v6, v7, v8);
  v9 = v0[1];

  return v9();
}

uint64_t sub_100017FD4()
{
  sub_100003FB4((v0 + 136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018038(void (*a1)(void), uint64_t a2, const char *a3, char a4)
{
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C370(v7, qword_1000BC578);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 2u);
  }

  sub_1000186FC();
  swift_allocError();
  *v11 = a4;
  a1();
}

uint64_t sub_100018170(uint64_t a1, uint64_t a2)
{
  v2[23] = a2;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[24] = v4;
  v2[25] = v3;

  return _swift_task_switch(sub_100018238, v4, v3);
}

uint64_t sub_100018238()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  sub_100019D8C(v1 + 80, v0 + 56, &qword_1000B80A0, &qword_100080A08);
  if (*(v0 + 80))
  {
    sub_100008748((v0 + 56), v0 + 16);
    if (qword_1000B6440 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C370(v2, qword_1000BC578);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Ending home screen configuration session", v5, 2u);
    }

    *(v0 + 128) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 96) = 0u;
    swift_beginAccess();
    sub_100019E54(v0 + 96, v1 + 80);
    swift_endAccess();
    sub_100005A3C((v0 + 16), *(v0 + 40));
    v6 = swift_task_alloc();
    *(v0 + 208) = v6;
    *v6 = v0;
    v6[1] = sub_100018464;

    return sub_100027BDC();
  }

  else
  {
    sub_100019B28(v0 + 56, &qword_1000B80A0, &qword_100080A08);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100018464()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_100018604;
  }

  else
  {
    v5 = sub_1000185A0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000185A0()
{
  sub_100003FB4((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018604()
{
  sub_100003FB4((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018668()
{
  sub_100003FB4(v0 + 2);

  sub_100019B28((v0 + 10), &qword_1000B80A0, &qword_100080A08);
  sub_1000188D8(v0[15], v0[16], v0[17], v0[18]);

  return swift_deallocClassInstance();
}

unint64_t sub_1000186FC()
{
  result = qword_1000B8098;
  if (!qword_1000B8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8098);
  }

  return result;
}

void *sub_100018750()
{
  if (qword_1000B6558 != -1)
  {
    swift_once();
  }

  v1 = qword_1000BC778;
  sub_100003F6C(&qword_1000B80D8, &unk_100081EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000807D0;
  v3 = v0[3];
  v4 = v0[4];
  sub_100005A3C(v0, v3);
  v5 = *(v4 + 48);

  *(inited + 32) = v5(v3, v4);
  *(inited + 40) = v6;

  v8 = sub_100010B84(v7);

  sub_10006FBA0(v8);
  v9 = sub_10004C148(inited);

  if (*(v9 + 16) <= v1[2] >> 3)
  {
    sub_100018AA4(v9);
  }

  else
  {
    v1 = sub_100018BD0(v9, v1);
  }

  v10 = sub_100010DB0(v1);

  return v10;
}

void sub_1000188D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_100018928()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018968(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001A778;

  return sub_1000169C4(a1, v5, v4);
}

void sub_100018A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6 != 1)
  {
  }
}

void sub_100018A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6 != 1)
  {
  }
}

uint64_t sub_100018AA4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100039CB8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

_BYTE *sub_100018BD0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_10004B2D4(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_100019140(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_100019F14(v13);
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t *sub_100019140(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_10004B2D4(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_100019378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = type metadata accessor for AEAConcreteManagedConfigurationPrimitives();
  v29 = &off_1000AC080;
  v27[0] = a3;
  v25 = type metadata accessor for AEAConcreteSpringBoardPrimitives();
  v26 = &off_1000A8060;
  v24[0] = a4;
  type metadata accessor for AEARestrictionsApplicator();
  v12 = swift_allocObject();
  v13 = sub_10001A19C(v27, v28);
  __chkstk_darwin(v13);
  (*(v15 + 16))(v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10001A19C(v24, v25);
  __chkstk_darwin(v16);
  (*(v18 + 16))(v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));

  swift_defaultActor_initialize();
  *(v12 + 200) = 0;
  *(v12 + 184) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 208) = xmmword_1000807B0;
  v19 = type metadata accessor for AEAConcreteManagedConfigurationRestrictionsApplicator();
  swift_allocObject();
  v20 = sub_100077DEC(a1, a2);
  *(v12 + 136) = v19;
  *(v12 + 144) = &off_1000AC070;
  *(v12 + 112) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  v22 = objc_allocWithZone(type metadata accessor for AEAConcreteSpringBoardPrimitives.AppRestrictionsMonitoringSession());
  *(v12 + 152) = sub_100026DD8(sub_10001A1EC, v21);
  *(v12 + 160) = &off_1000A8050;
  sub_100003FB4(v24);
  sub_100003FB4(v27);
  return v12;
}

uint64_t sub_100019624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10001966C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004A90C(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v6 >= v7 >> 1)
      {
        sub_10004A90C((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v6];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10001973C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = v2[71];
  v70 = v2[72];
  v71 = v2[73];
  v73 = v2[74];
  v74 = v2[75];
  v75 = v2[69];
  v76 = v2[64];
  v79 = v2[77];
  v77 = v2[70];
  v78 = v2[68];
  v80 = v2[76];
  v5 = v2[67];
  v6 = v2[65];
  v7 = v2[66];
  v8 = sub_1000544CC();
  if (v9 && (v10 = v8, v11 = v9, v12 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v14 = sub_1000228D8(v12, v13, v10 & 0x101, v11), , , v14 != 2) && (v14 & 1) != 0)
  {
    v15 = 256;
  }

  else
  {
    v15 = 256;
    if (!v2[78])
    {
      v15 = 0;
    }
  }

  v69 = v15;
  v16 = sub_1000544CC();
  if (v17 && (v18 = v16, v19 = v17, v20 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v22 = sub_1000228D8(v20, v21, v18 & 0x101, v19), , , v22 != 2) && (v22 & 1) != 0)
  {
    v23 = 0x10000;
    v24 = sub_1000544CC();
    if (!v25)
    {
LABEL_11:
      v26 = 3;
      goto LABEL_17;
    }
  }

  else
  {
    if (v2[79])
    {
      v23 = 0x10000;
    }

    else
    {
      v23 = 0;
    }

    v24 = sub_1000544CC();
    if (!v25)
    {
      goto LABEL_11;
    }
  }

  v27 = v24;
  v28 = v25;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = sub_1000228D8(v29, v30, v27 & 0x101, v28);

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v7;
  v33 = sub_1000228D8(v31, v32, v27 & 0x101, v28);

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v23;
  v37 = v5;
  v38 = sub_1000228D8(v34, v35, v27 & 0x101, v28);

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = sub_1000228D8(v39, v40, v27 & 0x101, v28);

  v42 = v67 | (v33 << 8);
  v7 = v68;
  v43 = v42 & 0xFF00FFFF | (v38 << 16);
  v5 = v37;
  v23 = v36;
  v26 = v43 | (v41 << 24);
LABEL_17:
  v44 = 256;
  if (v70)
  {
    v45 = 256;
  }

  else
  {
    v45 = 0;
  }

  v46 = v45 | v72;
  if (v71)
  {
    v47 = 0x10000;
  }

  else
  {
    v47 = 0;
  }

  v48 = &_mh_execute_header;
  if (v73)
  {
    v49 = &_mh_execute_header;
  }

  else
  {
    v49 = 0;
  }

  v50 = v46 | v47 | v49;
  if (v74)
  {
    v51 = 0x10000000000;
  }

  else
  {
    v51 = 0;
  }

  v52 = 0x1000000000000;
  if (!v75)
  {
    v52 = 0;
  }

  v53 = 0x100000000000000;
  if (!v76)
  {
    v53 = 0;
  }

  v54 = v50 | v51 | v52 | v53;
  if (v77)
  {
    v55 = 0x10000;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55 | v79;
  v57 = 0x1000000;
  if (!v78)
  {
    v57 = 0;
  }

  if (!v80)
  {
    v48 = 0;
  }

  v58 = v56 | v57 | v48;
  if (v5)
  {
    v59 = 0x10000000000;
  }

  else
  {
    v59 = 0;
  }

  v60 = v58 | v59;
  if (!v7)
  {
    v44 = 0;
  }

  v61 = v44 | v6;
  v62 = v26 >> 8;
  v63 = HIBYTE(v26);
  v64 = v69 | v23 | (v26 << 24);
  v65 = sub_10001966C(a1);
  result = sub_100018750();
  *a2 = v54;
  *(a2 + 8) = v60;
  *(a2 + 16) = v61;
  *(a2 + 24) = 0;
  *(a2 + 38) = v63;
  *(a2 + 36) = v62;
  *(a2 + 32) = v64;
  *(a2 + 40) = v65;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_100019B28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003F6C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100019B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004A944(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v6 >= v7 >> 1)
      {
        sub_10004A944((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v6];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return 0xD000000000000019;
}

uint64_t sub_100019C74()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019CC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000F618;

  return sub_100017040(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100019D8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003F6C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100019DF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B80A0, &qword_100080A08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100019EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_100019F1C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100019F28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019FCC()
{
  swift_unknownObjectRelease();

  sub_100003FB4((v0 + 40));

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_10001A02C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[16];
  v8 = v1[17];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000F618;

  return sub_1000137C8(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_10001A100(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001A778;

  return sub_100018170(a1, v1);
}

uint64_t sub_10001A19C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for AEARestrictionsActionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AEARestrictionsActionError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001A388()
{
  result = qword_1000B8100;
  if (!qword_1000B8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8100);
  }

  return result;
}

__n128 sub_10001A3DC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 120);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_10001A428(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 242))
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

uint64_t sub_10001A470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 242) = 1;
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

    *(result + 242) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A500()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001A54C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001A58C()
{

  sub_100003FB4((v0 + 64));

  return _swift_deallocObject(v0, 136, 7);
}

__n128 sub_10001A5E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10001A610(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10001A658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10001A6C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001A6D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10001A720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A78C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001A944(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v130 = a2 + 56;
  v120 = v8;
  v121 = a1 + 56;
  if (v7)
  {
LABEL_7:
    v9 = __clz(__rbit64(v7));
    v115 = (v7 - 1) & v7;
    goto LABEL_13;
  }

  while (1)
  {
    v10 = v3;
    do
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
    }

    while (!v11);
    v9 = __clz(__rbit64(v11));
    v115 = (v11 - 1) & v11;
LABEL_13:
    v116 = v3;
    v117 = a1;
    v12 = *(a1 + 48) + 40 * (v9 | (v3 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v128 = *(v12 + 32);
    Hasher.init(_seed:)();

    sub_10001C9B8(v16, v15);
    String.hash(into:)();
    if (v15 >> 60 == 15)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Data.hash(into:)();
    }

    Hasher._combine(_:)(v128);
    v17 = Hasher._finalize()();
    v18 = -1 << *(v2 + 32);
    v19 = v17 & ~v18;
    if (((*(v130 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_182:

      sub_10001CA20(v16, v15);
      return 0;
    }

    v129 = ~v18;
    v127 = v15 >> 62;
    v20 = !v16 && v15 == 0xC000000000000000;
    v21 = !v20;
    v126 = v21;
    v22 = __OFSUB__(HIDWORD(v16), v16);
    v125 = v22;
    v118 = (v16 >> 32) - v16;
    v119 = v16 >> 32;
    while (1)
    {
      v25 = *(v2 + 48) + 40 * v19;
      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      v131 = *(v25 + 32);
      v28 = *v25 == v14 && *(v25 + 8) == v13;
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_29;
      }

      if (v26 >> 60 == 15)
      {
        if (v15 >> 60 == 15)
        {
          sub_10001C9B8(v27, v26);
          sub_10001C9B8(v16, v15);
          goto LABEL_80;
        }

        goto LABEL_27;
      }

      if (v15 >> 60 != 15)
      {
        break;
      }

LABEL_27:
      sub_10001C9B8(v27, v26);
      sub_10001C9B8(v16, v15);
      sub_10001CA20(v27, v26);
      v23 = v16;
      v24 = v15;
LABEL_28:
      sub_10001CA20(v23, v24);
LABEL_29:
      v19 = (v19 + 1) & v129;
      if (((*(v130 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_182;
      }
    }

    v29 = v26 >> 62;
    if (v26 >> 62 != 3)
    {
      v31 = v15 >> 62;
      if (v29 <= 1)
      {
        if (v29)
        {
          LODWORD(v36) = HIDWORD(v27) - v27;
          if (__OFSUB__(HIDWORD(v27), v27))
          {
            goto LABEL_188;
          }

          v36 = v36;
          if (v127 > 1)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v36 = BYTE6(v26);
          if (v127 > 1)
          {
            goto LABEL_62;
          }
        }

        goto LABEL_58;
      }

      if (v29 != 2)
      {
        goto LABEL_61;
      }

      v38 = *(v27 + 16);
      v37 = *(v27 + 24);
      v39 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (v39)
      {
        goto LABEL_187;
      }

      if (v127 <= 1)
      {
        goto LABEL_58;
      }

LABEL_62:
      if (v31 == 2)
      {
        v42 = *(v16 + 16);
        v41 = *(v16 + 24);
        v39 = __OFSUB__(v41, v42);
        v40 = v41 - v42;
        if (v39)
        {
          goto LABEL_185;
        }

        goto LABEL_64;
      }

      if (!v36)
      {
        goto LABEL_77;
      }

LABEL_76:
      sub_10001C9B8(v27, v26);
      sub_10001C9B8(v16, v15);
      sub_10001CA20(v16, v15);
      v23 = v27;
      v24 = v26;
      goto LABEL_28;
    }

    if (v27)
    {
      v30 = 0;
    }

    else
    {
      v30 = v26 == 0xC000000000000000;
    }

    v31 = v15 >> 62;
    v33 = !v30 || v15 >> 62 != 3;
    if (((v33 | v126) & 1) == 0)
    {

      sub_10001C9B8(0, 0xC000000000000000);
      sub_10001C9B8(0, 0xC000000000000000);
      sub_10001C9B8(0, 0xC000000000000000);
      v34 = 0;
      v35 = 0xC000000000000000;
      goto LABEL_79;
    }

LABEL_61:
    v36 = 0;
    if (v31 > 1)
    {
      goto LABEL_62;
    }

LABEL_58:
    v40 = BYTE6(v15);
    if (v31)
    {
      v40 = HIDWORD(v16) - v16;
      if (v125)
      {
        goto LABEL_186;
      }
    }

LABEL_64:
    if (v36 != v40)
    {
      goto LABEL_76;
    }

    if (v36 < 1)
    {
LABEL_77:

      sub_10001C9B8(v27, v26);
      sub_10001C9B8(v27, v26);
      sub_10001C9B8(v16, v15);
      goto LABEL_78;
    }

    if (v29 > 1)
    {
      break;
    }

    if (v29)
    {
      v124 = v2;
      if (v27 > v27 >> 32)
      {
        goto LABEL_189;
      }

      sub_10001C9B8(v27, v26);
      sub_10001C9B8(v27, v26);
      sub_10001C9B8(v16, v15);
      v51 = __DataStorage._bytes.getter();
      if (v51)
      {
        v110 = v51;
        v52 = __DataStorage._offset.getter();
        if (__OFSUB__(v27, v52))
        {
          goto LABEL_191;
        }

        v111 = &v110[v27 - v52];
      }

      else
      {
        v111 = 0;
      }

      __DataStorage._length.getter();
      if (v127 != 2)
      {
        if (v127 == 1)
        {
          if (v119 < v16)
          {
            goto LABEL_200;
          }

          v63 = __DataStorage._bytes.getter();
          if (v63)
          {
            v64 = v63;
            v65 = __DataStorage._offset.getter();
            if (__OFSUB__(v16, v65))
            {
              goto LABEL_207;
            }

            v101 = (v16 - v65 + v64);
          }

          else
          {
            v101 = 0;
          }

          v2 = v124;
          v95 = __DataStorage._length.getter();
          v91 = (v16 >> 32) - v16;
          if (v95 < v118)
          {
            v91 = v95;
          }

          v58 = v111;
          if (!v111)
          {
            goto LABEL_218;
          }

          v59 = v101;
          if (!v101)
          {
            goto LABEL_217;
          }

          goto LABEL_174;
        }

        v58 = v111;
        *__s1 = v16;
        *&__s1[8] = v15;
        __s1[10] = BYTE2(v15);
        __s1[11] = BYTE3(v15);
        __s1[12] = BYTE4(v15);
        __s1[13] = BYTE5(v15);
        if (!v111)
        {
          goto LABEL_216;
        }

LABEL_134:
        v59 = __s1;
LABEL_135:
        v85 = BYTE6(v15);
LABEL_176:
        v88 = memcmp(v58, v59, v85);
        sub_10001CA20(v16, v15);
        goto LABEL_177;
      }

      __s2b = *(v16 + 24);
      v105 = *(v16 + 16);
      v80 = __DataStorage._bytes.getter();
      if (v80)
      {
        v81 = v80;
        v82 = __DataStorage._offset.getter();
        v83 = v105;
        if (__OFSUB__(v105, v82))
        {
          goto LABEL_206;
        }

        v84 = &v105[v81 - v82];
      }

      else
      {
        v84 = 0;
        v83 = v105;
      }

      v107 = v84;
      v93 = (__s2b - v83);
      if (__OFSUB__(__s2b, v83))
      {
        goto LABEL_201;
      }

      v94 = __DataStorage._length.getter();
      if (v94 >= v93)
      {
        v91 = v93;
      }

      else
      {
        v91 = v94;
      }

      v58 = v111;
      if (!v111)
      {
        goto LABEL_220;
      }

      v2 = v124;
      v59 = v107;
      if (!v107)
      {
        goto LABEL_219;
      }

LABEL_174:
      if (v58 != v59)
      {
        v85 = v91;
        goto LABEL_176;
      }

LABEL_78:
      v34 = v16;
      v35 = v15;
LABEL_79:
      sub_10001CA20(v34, v35);
      sub_10001CA20(v27, v26);

LABEL_80:
      sub_10001CA20(v27, v26);
      goto LABEL_81;
    }

    *__s1 = v27;
    *&__s1[8] = v26;
    __s1[10] = BYTE2(v26);
    __s1[11] = BYTE3(v26);
    __s1[12] = BYTE4(v26);
    __s1[13] = BYTE5(v26);
    if (!v31)
    {
      goto LABEL_104;
    }

    v122 = v2;
    if (v31 != 1)
    {
      v103 = *(v16 + 24);
      v113 = *(v16 + 16);

      sub_10001C9B8(v27, v26);
      sub_10001C9B8(v27, v26);
      sub_10001C9B8(v16, v15);
      v71 = __DataStorage._bytes.getter();
      if (v71)
      {
        v72 = v71;
        v73 = __DataStorage._offset.getter();
        v74 = v113;
        if (__OFSUB__(v113, v73))
        {
          goto LABEL_203;
        }

        __s2 = &v113[v72 - v73];
      }

      else
      {
        __s2 = 0;
        v74 = v113;
      }

      v86 = (v103 - v74);
      if (__OFSUB__(v103, v74))
      {
        goto LABEL_196;
      }

      v87 = __DataStorage._length.getter();
      v57 = __s2;
      if (!__s2)
      {
        goto LABEL_221;
      }

      goto LABEL_143;
    }

    if (v119 < v16)
    {
      goto LABEL_193;
    }

    sub_10001C9B8(v27, v26);
    sub_10001C9B8(v27, v26);
    sub_10001C9B8(v16, v15);
    v43 = __DataStorage._bytes.getter();
    if (!v43)
    {
      goto LABEL_223;
    }

    v44 = v43;
    v45 = __DataStorage._offset.getter();
    if (__OFSUB__(v16, v45))
    {
      goto LABEL_198;
    }

    v46 = (v16 - v45 + v44);
    v47 = __DataStorage._length.getter();
    if (!v46)
    {
      goto LABEL_222;
    }

LABEL_100:
    if (v47 >= v118)
    {
      v56 = (v16 >> 32) - v16;
    }

    else
    {
      v56 = v47;
    }

    v57 = v46;
LABEL_146:
    v88 = memcmp(__s1, v57, v56);
    sub_10001CA20(v16, v15);
    v2 = v122;
LABEL_177:
    sub_10001CA20(v27, v26);

    sub_10001CA20(v27, v26);
    if (v88)
    {
      goto LABEL_29;
    }

LABEL_81:
    if (v131 != v128)
    {
      goto LABEL_29;
    }

    sub_10001CA20(v16, v15);
    v3 = v116;
    a1 = v117;
    v8 = v120;
    v4 = v121;
    v7 = v115;
    if (v115)
    {
      goto LABEL_7;
    }
  }

  if (v29 == 2)
  {
    v123 = v2;
    v108 = *(v27 + 16);

    sub_10001C9B8(v27, v26);
    sub_10001C9B8(v27, v26);
    sub_10001C9B8(v16, v15);
    v48 = __DataStorage._bytes.getter();
    if (v48)
    {
      v49 = v48;
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v108, v50))
      {
        goto LABEL_190;
      }

      v109 = &v108[v49 - v50];
    }

    else
    {
      v109 = 0;
    }

    __DataStorage._length.getter();
    v2 = v123;
    if (v127 != 2)
    {
      if (v127 == 1)
      {
        if (v119 < v16)
        {
          goto LABEL_194;
        }

        v60 = __DataStorage._bytes.getter();
        if (v60)
        {
          v61 = v60;
          v62 = __DataStorage._offset.getter();
          if (__OFSUB__(v16, v62))
          {
            goto LABEL_205;
          }

          v100 = (v16 - v62 + v61);
        }

        else
        {
          v100 = 0;
        }

        v2 = v123;
        v92 = __DataStorage._length.getter();
        v91 = (v16 >> 32) - v16;
        if (v92 < v118)
        {
          v91 = v92;
        }

        v58 = v109;
        if (!v109)
        {
          goto LABEL_213;
        }

        v59 = v100;
        if (!v100)
        {
          goto LABEL_212;
        }

        goto LABEL_174;
      }

      v58 = v109;
      *__s1 = v16;
      *&__s1[8] = v15;
      __s1[10] = BYTE2(v15);
      __s1[11] = BYTE3(v15);
      __s1[12] = BYTE4(v15);
      __s1[13] = BYTE5(v15);
      if (!v109)
      {
        goto LABEL_211;
      }

      goto LABEL_134;
    }

    __s2a = *(v16 + 24);
    v104 = *(v16 + 16);
    v75 = __DataStorage._bytes.getter();
    if (v75)
    {
      v76 = v75;
      v77 = __DataStorage._offset.getter();
      v78 = v104;
      if (__OFSUB__(v104, v77))
      {
        goto LABEL_204;
      }

      v79 = &v104[v76 - v77];
    }

    else
    {
      v79 = 0;
      v78 = v104;
    }

    v106 = v79;
    v89 = (__s2a - v78);
    if (__OFSUB__(__s2a, v78))
    {
      goto LABEL_199;
    }

    v90 = __DataStorage._length.getter();
    if (v90 >= v89)
    {
      v91 = v89;
    }

    else
    {
      v91 = v90;
    }

    v58 = v109;
    if (!v109)
    {
      goto LABEL_215;
    }

    v2 = v123;
    v59 = v106;
    if (!v106)
    {
      goto LABEL_214;
    }

    goto LABEL_174;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (v31 == 2)
  {
    v122 = v2;
    v102 = *(v16 + 24);
    v112 = *(v16 + 16);

    sub_10001C9B8(v27, v26);
    sub_10001C9B8(v27, v26);
    sub_10001C9B8(v16, v15);
    v66 = __DataStorage._bytes.getter();
    if (v66)
    {
      v67 = v66;
      v68 = __DataStorage._offset.getter();
      v69 = v112;
      if (__OFSUB__(v112, v68))
      {
        goto LABEL_202;
      }

      v70 = &v112[v67 - v68];
    }

    else
    {
      v70 = 0;
      v69 = v112;
    }

    v114 = v70;
    v86 = (v102 - v69);
    if (__OFSUB__(v102, v69))
    {
      goto LABEL_195;
    }

    v87 = __DataStorage._length.getter();
    v57 = v114;
    if (!v114)
    {
      goto LABEL_210;
    }

LABEL_143:
    if (v87 >= v86)
    {
      v56 = v86;
    }

    else
    {
      v56 = v87;
    }

    goto LABEL_146;
  }

  if (v31 != 1)
  {
LABEL_104:
    v132 = v16;
    v133 = v15;
    v134 = BYTE2(v15);
    v135 = BYTE3(v15);
    v136 = BYTE4(v15);
    v137 = BYTE5(v15);

    sub_10001C9B8(v27, v26);
    sub_10001C9B8(v27, v26);
    sub_10001C9B8(v16, v15);
    v58 = __s1;
    v59 = &v132;
    goto LABEL_135;
  }

  v122 = v2;
  if (v119 < v16)
  {
    goto LABEL_192;
  }

  sub_10001C9B8(v27, v26);
  sub_10001C9B8(v27, v26);
  sub_10001C9B8(v16, v15);
  v53 = __DataStorage._bytes.getter();
  if (v53)
  {
    v54 = v53;
    v55 = __DataStorage._offset.getter();
    if (__OFSUB__(v16, v55))
    {
      goto LABEL_197;
    }

    v46 = (v16 - v55 + v54);
    v47 = __DataStorage._length.getter();
    if (!v46)
    {
      goto LABEL_209;
    }

    goto LABEL_100;
  }

  __DataStorage._length.getter();
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}