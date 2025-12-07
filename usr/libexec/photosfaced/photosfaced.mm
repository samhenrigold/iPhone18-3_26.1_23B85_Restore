int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for Daemon();
  swift_allocObject();
  qword_10012BB28 = sub_1000F0F88();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [objc_opt_self() mainRunLoop];
  [v3 run];

  return 0;
}

uint64_t sub_10000200C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002084(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002104@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002148()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100002184(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000021D8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10000224C(void *a1, uint64_t *a2)
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

uint64_t sub_1000022D4@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000231C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002348(uint64_t a1)
{
  v2 = sub_100002528(&qword_100129DB0, &unk_100108948);
  v3 = sub_100002528(&qword_100129DB8, &unk_10010889C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002404(uint64_t a1, int a2)
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

uint64_t sub_100002424(uint64_t result, int a2, int a3)
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

void sub_100002474(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100002528(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AXMFeatureDescriptionOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000025A0@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000C748(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000025CC(char a1)
{
  result = 0x69727453646E6573;
  switch(a1)
  {
    case 1:
      result = 0x65746172656E6567;
      break;
    case 2:
      result = 0x626C416B63617274;
      break;
    case 3:
      result = 0x416B636172746E75;
      break;
    case 4:
      result = 0x75626C41636E7973;
      break;
    case 5:
      result = 0x6C61476B63617274;
      break;
    case 6:
      result = 0x476B636172746E75;
      break;
    case 7:
      result = 0x6C6C6147636E7973;
      break;
    case 8:
      result = 0x7568536B63617274;
      break;
    case 9:
      result = 0x536B636172746E75;
      break;
    case 10:
      result = 0x66756853636E7973;
      break;
    case 11:
      result = 0x6961446B63617274;
      break;
    case 12:
      result = 0x446B636172746E75;
      break;
    case 13:
      result = 0x6C696144636E7973;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100002800()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100002878(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000028BC@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000C758(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000028F4()
{
  v1 = 0x6E79536D75626C61;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6E7953796C696164;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_100002980(char a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 217) = a4;
  *(v5 + 64) = a2;
  *(v5 + 216) = a1;
  v6 = sub_10000560C(&qword_100129F80, &qword_100108DB0);
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  *(v5 + 112) = swift_task_alloc();
  type metadata accessor for ProtocolVersion();
  *(v5 + 120) = swift_task_alloc();
  v7 = type metadata accessor for MessageBody();
  *(v5 + 128) = v7;
  v8 = *(v7 - 8);
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 + 64);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v9 = sub_10000560C(&qword_100129F88, &qword_100108DB8);
  *(v5 + 168) = v9;
  *(v5 + 176) = *(v9 - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_100002BA0, 0, 0);
}

uint64_t sub_100002BA0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = static TestProperties.requestTimeout.getter();
  v5 = v4;
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0, v3, v5);
  sub_10000560C(&qword_100129E78, &unk_100108BE0);
  swift_allocObject();
  v6 = AsyncThrowingChannel.init()();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;

  static ProtocolVersion.current.getter();
  MessageBody.init<A>(serializable:version:)();
  v27 = *(v0 + 192);
  v28 = *(v0 + 176);
  v29 = *(v0 + 168);
  v30 = *(v0 + 184);
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  v26 = v8;
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v11 = *(v0 + 128);
  v12 = *(v0 + 112);
  v24 = v12;
  v13 = *(v0 + 80);
  v25 = *(v0 + 217);
  v23 = *(v0 + 216);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = v11;
  (*(v10 + 16))(v7, v8, v11);
  v16 = (*(v10 + 80) + 49) & ~*(v10 + 80);
  v17 = v16 + v9;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v13;
  *(v18 + 40) = v6;
  *(v18 + 48) = v23;
  (*(v10 + 32))(v18 + v16, v7, v15);
  *(v18 + v17) = v25;

  sub_100005654(0, 0, v24, &unk_100108DC8, v18);

  sub_10000560C(&qword_100129E90, &qword_100108C00);
  *(v0 + 48) = v6;

  *(v0 + 56) = DestructableSequence.__allocating_init(_:_:)();
  sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00, &protocol conformance descriptor for DestructableSequence<A>);
  AsyncThrowingMapSequence.init(_:transform:)();

  (*(v10 + 8))(v26, v15);
  (*(v28 + 16))(v30, v27, v29);
  sub_10000CC24(&qword_100129F90, &qword_100129F88, &qword_100108DB8, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v19 = sub_10000CC24(&qword_100129F98, &qword_100129F80, &qword_100108DB0, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
  v20 = swift_task_alloc();
  *(v0 + 200) = v20;
  *v20 = v0;
  v20[1] = sub_1000030A4;
  v21 = *(v0 + 88);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 32, v21, v19);
}

uint64_t sub_1000030A4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1000032CC;
  }

  else
  {
    v2 = sub_1000031B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1000031B8()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[21];
    v4 = v0[22];
    v6 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v4 + 8))(v2, v3);

    v5 = v0[1];

    v5(v6, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000032CC()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000033BC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 225) = a4;
  *(v5 + 224) = a2;
  *(v5 + 48) = a1;
  v6 = sub_10000560C(&qword_100129F40, &qword_100108D40);
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  *(v5 + 96) = swift_task_alloc();
  type metadata accessor for ProtocolVersion();
  *(v5 + 104) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  v8 = type metadata accessor for MessageBody();
  *(v5 + 136) = v8;
  v9 = *(v8 - 8);
  *(v5 + 144) = v9;
  *(v5 + 152) = *(v9 + 64);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v10 = sub_10000560C(&qword_100129F48, &qword_100108D48);
  *(v5 + 176) = v10;
  *(v5 + 184) = *(v10 - 8);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100003638, 0, 0);
}

uint64_t sub_100003638()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 56);
  v5 = static TestProperties.requestTimeout.getter();
  v7 = v6;
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0, v5, v7);
  sub_10000560C(&qword_100129E78, &unk_100108BE0);
  swift_allocObject();
  v8 = AsyncThrowingChannel.init()();
  (*(v2 + 16))(v1, v4, v3);
  static ProtocolVersion.current.getter();
  MessageBody.init<A>(serializable:version:)();
  v29 = *(v0 + 200);
  v30 = *(v0 + 184);
  v31 = *(v0 + 176);
  v32 = *(v0 + 192);
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v28 = v10;
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  v13 = *(v0 + 136);
  v14 = *(v0 + 96);
  v26 = v14;
  v15 = *(v0 + 64);
  v27 = *(v0 + 225);
  v25 = *(v0 + 224);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = v13;
  (*(v12 + 16))(v9, v10, v13);
  v18 = (*(v12 + 80) + 49) & ~*(v12 + 80);
  v19 = v18 + v11;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v15;
  *(v20 + 40) = v8;
  *(v20 + 48) = v25;
  (*(v12 + 32))(v20 + v18, v9, v17);
  *(v20 + v19) = v27;

  sub_100005654(0, 0, v26, &unk_100108D58, v20);

  sub_10000560C(&qword_100129E90, &qword_100108C00);
  *(v0 + 32) = v8;

  *(v0 + 40) = DestructableSequence.__allocating_init(_:_:)();
  sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00, &protocol conformance descriptor for DestructableSequence<A>);
  AsyncThrowingMapSequence.init(_:transform:)();

  (*(v12 + 8))(v28, v17);
  (*(v30 + 16))(v32, v29, v31);
  sub_10000CC24(&qword_100129F50, &qword_100129F48, &qword_100108D48, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v21 = sub_10000CC24(&qword_100129F58, &qword_100129F40, &qword_100108D40, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
  v22 = swift_task_alloc();
  *(v0 + 208) = v22;
  *v22 = v0;
  v22[1] = sub_100003B58;
  v23 = *(v0 + 72);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v23, v21);
}

uint64_t sub_100003B58()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100003D94;
  }

  else
  {
    v2 = sub_100003C6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003C6C()
{
  if (*(v0 + 24) >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 48);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v4 + 8))(v2, v3);
    *v5 = *(v0 + 16);

    v6 = *(v0 + 8);

    return v6();
  }

  return result;
}

uint64_t sub_100003D94()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100003E90(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v3 = *a2;
  v4 = a2[1];
  v2[3] = type metadata accessor for CommunicationActor();
  v2[4] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_100003F4C;

  return sub_1000F3198(v3, v4);
}

uint64_t sub_100003F4C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = sub_10000CCA4;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    v10 = sub_100004140;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_100004140()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[2];

  *v3 = v2;
  v3[1] = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000041B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 64) = a2;
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  *(v4 + 32) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1000042B4, 0, 0);
}

uint64_t sub_1000042B4()
{
  v20 = v0;
  static Log.session.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = PhotosFaceType.description.getter();
    v11 = sub_100102F80(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Remote device indicated that it has data ready to sync for type %s", v7, 0xCu);
    sub_10000C304(v8);
  }

  (*(v5 + 8))(v4, v6);
  v13 = v0[3];
  v12 = v0[4];
  v14 = v0[2];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = v13;

  sub_1000FBF3C(0, 0, v12, &unk_100108D10, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000044D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000045BC;

  return v7();
}

uint64_t sub_1000045BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000046B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  __chkstk_darwin(v4 - 8);
  v33 = &v27 - v5;
  v6 = type metadata accessor for ProtocolVersion();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for MessageBody();
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  v9 = __chkstk_darwin(v7);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v29 = *(v2 + 16);
  v13 = static TestProperties.requestTimeout.getter();
  v15 = v14;
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  v16 = sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0, v13, v15);
  sub_10000560C(&qword_100129E78, &unk_100108BE0);
  swift_allocObject();
  v17 = AsyncThrowingChannel.init()();
  v35 = a1;

  static ProtocolVersion.current.getter();
  sub_10000560C(&qword_100129E80, &unk_1001091F0);
  sub_10000A914();
  v18 = v34;
  MessageBody.init<A>(serializable:version:)();
  if (v18)
  {
  }

  else
  {
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
    v21 = v30;
    v22 = *(v30 + 16);
    v27 = 0;
    v28 = v12;
    v23 = v31;
    v22(v10, v12);
    v24 = (*(v21 + 80) + 49) & ~*(v21 + 80);
    v34 = v16;
    v25 = v24 + v8;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = v29;
    *(v26 + 40) = v17;
    *(v26 + 48) = 1;
    (*(v21 + 32))(v26 + v24, v10, v23);
    *(v26 + v25) = 1;

    sub_100005654(0, 0, v33, &unk_100108BF8, v26);

    sub_10000560C(&qword_100129E90, &qword_100108C00);
    v35 = v17;

    v35 = DestructableSequence.__allocating_init(_:_:)();
    type metadata accessor for StoredPhoto();
    sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00, &protocol conformance descriptor for DestructableSequence<A>);
    AsyncThrowingMapSequence.init(_:transform:)();

    return (*(v21 + 8))(v28, v23);
  }
}

uint64_t sub_100004B38(char a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  *(v3 + 88) = a1;
  type metadata accessor for CommunicationActor();
  *(v3 + 48) = static CommunicationActor.shared.getter();
  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;

  return _swift_task_switch(sub_100004C04, v5, v4);
}

uint64_t sub_100004C04()
{
  v1 = 0xC060903u >> (8 * *(v0 + 88));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_100004CD8;
  v3 = *(v0 + 32);

  return sub_1000033BC(v0 + 16, v1, v3, 1);
}

uint64_t sub_100004CD8()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = v2[7];
    v4 = v2[8];
    v5 = sub_100004E58;
  }

  else
  {
    sub_10000C868(v2[2], v2[3]);
    v3 = v2[7];
    v4 = v2[8];
    v5 = sub_100004DF4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100004DF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004E58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004EBC(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = a1;
  v3[3] = type metadata accessor for CommunicationActor();
  v3[4] = static CommunicationActor.shared.getter();
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100004FDC;

  return v8(a2);
}

uint64_t sub_100004FDC()
{
  *(*v1 + 48) = v0;

  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1000051DC;
  }

  else
  {
    v4 = sub_100005168;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100005168()
{
  v1 = *(v0 + 16);

  *v1 = xmmword_1001089B0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000051DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005240()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for NetworkEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkEventType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkRequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkRequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100005560()
{
  result = qword_100129E60;
  if (!qword_100129E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100129E60);
  }

  return result;
}

unint64_t sub_1000055B8()
{
  result = qword_100129E68;
  if (!qword_100129E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100129E68);
  }

  return result;
}

uint64_t sub_10000560C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000C04C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000C460(v11, &qword_100129E70, &unk_100109CD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000C460(a3, &qword_100129E70, &unk_100109CD0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000C460(a3, &qword_100129E70, &unk_100109CD0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100005944(uint64_t a1, int a2, char *a3, int a4)
{
  LODWORD(v48) = a4;
  v46 = a1;
  v47 = a3;
  v43 = a2;
  v5 = type metadata accessor for Logger();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v52 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MessageBody();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Message.Operation();
  v10 = *(v40 - 8);
  __chkstk_darwin(v40);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Message();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = sub_10000560C(&qword_100129EA8, &qword_100108C28);
  v45 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  v51 = v4;

  dispatch thunk of MessageDemultiplexer.sendRequest(_:)();

  v46 = v20;
  v44 = v22;
  v23 = v43;
  v24 = InFlightRequest.requestID.getter();
  *v12 = v23;
  v12[1] = v24;
  (*(v10 + 104))(v12, enum case for Message.Operation.request(_:), v40);
  (*(v41 + 16))(v9, v47, v42);
  Message.init(operation:content:complete:)();
  static Log.network.getter();
  v25 = *(v14 + 16);
  v47 = v19;
  v48 = v13;
  v25(v17, v19, v13);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v53 = v42;
    *v28 = 136315394;
    v29 = sub_1000025CC(v23);
    v31 = sub_100102F80(v29, v30, &v53);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    v32 = Message.shortDescription.getter();
    v34 = v33;
    v35 = *(v14 + 8);
    v36 = v48;
    v35(v17, v48);
    v37 = sub_100102F80(v32, v34, &v53);

    *(v28 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "[NMC] Sending request %s: %s", v28, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v35 = *(v14 + 8);
    v36 = v48;
    v35(v17, v48);
  }

  (*(v49 + 8))(v52, v50);
  v38 = v47;
  sub_1000062EC(v47);
  v35(v38, v36);
  return (*(v45 + 8))(v44, v46);
}

uint64_t sub_100005E88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000CC88, 0, 0);
}

uint64_t sub_100005EA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100005EC8, 0, 0);
}

uint64_t sub_100005EC8()
{
  MessageBody.deserialized<A>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005F54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100005F74, 0, 0);
}

uint64_t sub_100005F74()
{
  sub_10000560C(&qword_100129F30, &qword_100108D20);
  sub_10000CC24(&qword_100129F38, &qword_100129F30, &qword_100108D20, &protocol conformance descriptor for SyncedPhotosFace<A>);
  MessageBody.deserialized<A>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000604C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000606C, 0, 0);
}

uint64_t sub_10000606C()
{
  sub_10000560C(&qword_100129F60, &qword_100108D78);
  sub_10000CC24(&qword_100129F68, &qword_100129F60, &qword_100108D78, &protocol conformance descriptor for SyncedPhotosFace<A>);
  MessageBody.deserialized<A>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100006144(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100006164, 0, 0);
}

uint64_t sub_100006164()
{
  sub_10000560C(&qword_100129F70, &qword_100108D90);
  sub_10000CC24(&qword_100129F78, &qword_100129F70, &qword_100108D90, &protocol conformance descriptor for SyncedPhotosFace<A>);
  MessageBody.deserialized<A>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000623C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000625C, 0, 0);
}

uint64_t sub_10000625C()
{
  type metadata accessor for StoredPhoto();
  MessageBody.deserialized<A>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000062EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  __chkstk_darwin(v4 - 8);
  v48 = &v45 - v5;
  v6 = sub_10000560C(&qword_100129EB0, &qword_100108C30);
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  v55 = &v45 - v7;
  v8 = sub_10000560C(&qword_100129EB8, &qword_100108C38);
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v52 = &v45 - v9;
  v10 = type metadata accessor for Message();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v49 = *(v14 - 8);
  v50 = v14;
  __chkstk_darwin(v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.network.getter();
  v57 = v11;
  v17 = v10;
  v51 = *(v11 + 16);
  v51(v13, a1, v10);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v46 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v47 = v1;
    v45 = v22;
    v58[0] = v22;
    *v21 = 136315138;
    sub_10000C578(&qword_100129EE8, &type metadata accessor for Message, &protocol conformance descriptor for Message);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v6;
    v26 = v25;
    (*(v57 + 8))(v13, v17);
    v27 = sub_100102F80(v23, v26, v58);
    v6 = v24;

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "[MSQ] Queueing %s", v21, 0xCu);
    sub_10000C304(v45);
    v2 = v47;

    a1 = v46;
  }

  else
  {

    (*(v57 + 8))(v13, v17);
  }

  (*(v49 + 8))(v16, v50);
  sub_10000560C(&qword_100129EC0, &qword_100108C40);
  v28 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001089C0;
  v51((v29 + v28), a1, v17);
  v58[5] = v29;
  sub_10000560C(&qword_100129EC8, &qword_100108C48);
  sub_10000CC24(&qword_100129ED0, &qword_100129EC8, &qword_100108C48, &protocol conformance descriptor for [A]);
  v30 = v52;
  Sequence.async.getter();

  sub_10000CC24(&qword_100129ED8, &qword_100129EB8, &qword_100108C38, &protocol conformance descriptor for AsyncSyncSequence<A>);
  v31 = v54;
  v32 = v55;
  AsyncSequence<>.throwing.getter();
  (*(v53 + 8))(v30, v31);
  v58[3] = v6;
  v58[4] = sub_10000CC24(&qword_100129EE0, &qword_100129EB0, &qword_100108C30, &protocol conformance descriptor for MakeThrowingSequence<A>);
  v33 = sub_10000C1AC(v58);
  v34 = v56;
  (*(v56 + 16))(v33, v32, v6);
  swift_beginAccess();
  result = *(v2 + 56);
  v36 = *(result + 24);
  v37 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v2 + 56);
    if (*(v39 + 16) < v37 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10000ABC8(isUniquelyReferenced_nonNull_native, v37, 0);
      v39 = *(v2 + 56);
    }

    sub_10000B028((v39 + 16), v39 + 40, v58);
    swift_endAccess();
    sub_10000C304(v58);
    if ((*(v2 + 48) & 1) == 0)
    {
      v40 = type metadata accessor for TaskPriority();
      v41 = v48;
      (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
      type metadata accessor for CommunicationActor();

      v42 = static CommunicationActor.shared.getter();
      v43 = sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
      v44 = swift_allocObject();
      v44[2] = v42;
      v44[3] = v43;
      v44[4] = v2;
      sub_100005654(0, 0, v41, &unk_100108C58, v44);
    }

    return (*(v34 + 8))(v32, v6);
  }

  return result;
}

uint64_t sub_100006A44()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100006AF0;

  return sub_100006ED4();
}

uint64_t sub_100006AF0()
{

  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000CCA8, v1, v0);
}

uint64_t sub_100006C5C()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100006D08;

  return sub_100006ED4();
}

uint64_t sub_100006D08()
{

  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100006E74, v1, v0);
}

uint64_t sub_100006E74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100006ED4()
{
  v1[26] = v0;
  v2 = type metadata accessor for Message();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  sub_10000560C(&qword_100129EF0, &qword_100108C68);
  v1[30] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = type metadata accessor for CommunicationActor();
  v1[39] = static CommunicationActor.shared.getter();
  v1[40] = sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[41] = v5;
  v1[42] = v4;

  return _swift_task_switch(sub_1000070C4, v5, v4);
}

uint64_t sub_1000070C4()
{
  v56 = v0;
  v1 = *(v0 + 208);
  if (*(v1 + 48) != 1)
  {
    *(v1 + 48) = 1;
    v2 = *(v0 + 208);
    swift_beginAccess();
    if (*(*(v2 + 56) + 24) > 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000B9E8();
      }

      v3 = *(*(v0 + 208) + 56);
      v4 = sub_10000C350(&v3[5 * v3[4] + 5], v0 + 56);
      v10 = v3[4];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        v13 = v3[3];
        if (v12 >= v3[2])
        {
          v12 = 0;
        }

        v3[4] = v12;
        if (!__OFSUB__(v13, 1))
        {
          v3[3] = v13 - 1;
LABEL_12:
          swift_endAccess();
          if (!*(v0 + 80))
          {

            if (*(v0 + 80))
            {
              sub_10000C304((v0 + 56));
            }

            static Log.network.getter();
            v29 = Logger.logObject.getter();
            v30 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              *v31 = 0;
              _os_log_impl(&_mh_execute_header, v29, v30, "[MSQ] No Pending Messages, exiting.", v31, 2u);
            }

            v32 = *(v0 + 288);
            v33 = *(v0 + 256);
            v34 = *(v0 + 248);

            v35 = *(v33 + 8);
            v35(v32, v34);
            static Log.network.getter();
            v36 = Logger.logObject.getter();
            v37 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              *v38 = 0;
              _os_log_impl(&_mh_execute_header, v36, v37, "[MSQ] Task done.", v38, 2u);
            }

            v39 = *(v0 + 264);
            v40 = *(v0 + 248);
            v41 = *(v0 + 208);

            v35(v39, v40);
            *(v41 + 48) = 0;
            goto LABEL_22;
          }

          sub_10000C350((v0 + 56), v0 + 16);
          static Log.network.getter();
          sub_10000C368(v0 + 16, v0 + 96);
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.default.getter();
          v16 = os_log_type_enabled(v14, v15);
          v17 = *(v0 + 296);
          v18 = *(v0 + 248);
          v19 = (*(v0 + 256) + 8);
          if (v16)
          {
            v54 = *(v0 + 248);
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v55 = v21;
            *v20 = 136315138;
            v22 = *(v0 + 120);
            sub_10000C3CC((v0 + 96), v22);
            v53 = v17;
            v23 = *(v22 - 8);
            swift_task_alloc();
            (*(v23 + 16))();
            v24 = String.init<A>(describing:)();
            v26 = v25;

            sub_10000C304((v0 + 96));
            v27 = sub_100102F80(v24, v26, &v55);

            *(v20 + 4) = v27;
            _os_log_impl(&_mh_execute_header, v14, v15, "[MSQ] Dequeue %s", v20, 0xCu);
            sub_10000C304(v21);

            v28 = *v19;
            (*v19)(v53, v54);
          }

          else
          {

            v28 = *v19;
            (*v19)(v17, v18);
            sub_10000C304((v0 + 96));
          }

          *(v0 + 344) = v28;
          v44 = *(v0 + 40);
          v45 = sub_10000C3CC((v0 + 16), v44);
          v46 = *(v44 - 8);
          v47 = swift_task_alloc();
          (*(v46 + 16))(v47, v45, v44);
          *(v0 + 160) = swift_getAssociatedTypeWitness();
          *(v0 + 168) = swift_getAssociatedConformanceWitness();
          sub_10000C1AC((v0 + 136));
          dispatch thunk of AsyncSequence.makeAsyncIterator()();

          v48 = *(v0 + 320);
          v49 = static CommunicationActor.shared.getter();
          *(v0 + 352) = v49;
          v50 = *(v0 + 160);
          v51 = *(v0 + 168);
          sub_10000C410(v0 + 136, v50);
          v52 = swift_task_alloc();
          *(v0 + 360) = v52;
          *v52 = v0;
          v52[1] = sub_100007730;
          v4 = *(v0 + 240);
          v7 = v0 + 200;
          v5 = v49;
          v6 = v48;
          v8 = v50;
          v9 = v51;

          return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, v5, v6, v7, v8, v9);
        }
      }

      __break(1u);
      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, v5, v6, v7, v8, v9);
    }

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_12;
  }

LABEL_22:

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_100007730()
{
  v2 = *v1;

  v3 = *(v2 + 328);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_100007FCC;
  }

  else
  {
    v5 = sub_100007850;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100007850()
{
  v64 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v16 = *(v0 + 320);
    v17 = *(v0 + 232);
    v18 = *(v0 + 208);
    (*(v3 + 32))(v17, v1, v2);
    v19 = static CommunicationActor.shared.getter();
    *(v0 + 368) = v19;
    v20 = swift_task_alloc();
    *(v0 + 376) = v20;
    *(v20 + 16) = v17;
    *(v20 + 24) = v18;
    v21 = swift_task_alloc();
    *(v0 + 384) = v21;
    *v21 = v0;
    v21[1] = sub_10000876C;

    return sub_100009A8C(v19, v16, &unk_100108C80, v20);
  }

  sub_10000C304((v0 + 136));
  sub_10000C304((v0 + 16));
  v4 = *(v0 + 208);
  swift_beginAccess();
  if (*(*(v4 + 56) + 24) <= 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10000B9E8();
  }

  v5 = *(*(v0 + 208) + 56);
  v6 = sub_10000C350(&v5[5 * v5[4] + 5], v0 + 56);
  v12 = v5[4];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, v7, v8, v9, v10, v11);
  }

  v15 = v5[3];
  if (v14 >= v5[2])
  {
    v14 = 0;
  }

  v5[4] = v14;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_31;
  }

  v5[3] = v15 - 1;
LABEL_14:
  swift_endAccess();
  if (*(v0 + 80))
  {
    sub_10000C350((v0 + 56), v0 + 16);
    static Log.network.getter();
    sub_10000C368(v0 + 16, v0 + 96);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 296);
    v27 = *(v0 + 248);
    v28 = (*(v0 + 256) + 8);
    if (v25)
    {
      v62 = *(v0 + 248);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v63 = v30;
      *v29 = 136315138;
      v31 = *(v0 + 120);
      sub_10000C3CC((v0 + 96), v31);
      v61 = v26;
      v32 = *(v31 - 8);
      swift_task_alloc();
      (*(v32 + 16))();
      v33 = String.init<A>(describing:)();
      v35 = v34;

      sub_10000C304((v0 + 96));
      v36 = sub_100102F80(v33, v35, &v63);

      *(v29 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v23, v24, "[MSQ] Dequeue %s", v29, 0xCu);
      sub_10000C304(v30);

      v37 = *v28;
      (*v28)(v61, v62);
    }

    else
    {

      v37 = *v28;
      (*v28)(v26, v27);
      sub_10000C304((v0 + 96));
    }

    *(v0 + 344) = v37;
    v52 = *(v0 + 40);
    v53 = sub_10000C3CC((v0 + 16), v52);
    v54 = *(v52 - 8);
    v55 = swift_task_alloc();
    (*(v54 + 16))(v55, v53, v52);
    *(v0 + 160) = swift_getAssociatedTypeWitness();
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    sub_10000C1AC((v0 + 136));
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v56 = *(v0 + 320);
    v57 = static CommunicationActor.shared.getter();
    *(v0 + 352) = v57;
    v58 = *(v0 + 160);
    v59 = *(v0 + 168);
    sub_10000C410(v0 + 136, v58);
    v60 = swift_task_alloc();
    *(v0 + 360) = v60;
    *v60 = v0;
    v60[1] = sub_100007730;
    v6 = *(v0 + 240);
    v9 = v0 + 200;
    v7 = v57;
    v8 = v56;
    v10 = v58;
    v11 = v59;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, v7, v8, v9, v10, v11);
  }

  if (*(v0 + 80))
  {
    sub_10000C304((v0 + 56));
  }

  static Log.network.getter();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "[MSQ] No Pending Messages, exiting.", v40, 2u);
  }

  v41 = *(v0 + 288);
  v42 = *(v0 + 256);
  v43 = *(v0 + 248);

  v44 = *(v42 + 8);
  v44(v41, v43);
  static Log.network.getter();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "[MSQ] Task done.", v47, 2u);
  }

  v48 = *(v0 + 264);
  v49 = *(v0 + 248);
  v50 = *(v0 + 208);

  v44(v48, v49);
  *(v50 + 48) = 0;

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_100007FCC()
{
  v64 = v0;
  v1 = (v0 + 16);
  v62 = (v0 + 136);
  sub_10000C304((v0 + 136));
  static Log.network.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MSQ] Error reading message from stream: %@", v4, 0xCu);
    sub_10000C460(v5, &qword_100129EF8, &qword_100108C70);

    v1 = (v0 + 16);
  }

  else
  {
  }

  (*(v0 + 344))(*(v0 + 280), *(v0 + 248));
  sub_10000C304(v1);
  v7 = *(v0 + 208);
  swift_beginAccess();
  if (*(*(v7 + 56) + 24) > 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000B9E8();
    }

    v8 = *(*(v0 + 208) + 56);
    v9 = sub_10000C350(&v8[5 * v8[4] + 5], v0 + 56);
    v15 = v8[4];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      v18 = v8[3];
      if (v17 >= v8[2])
      {
        v17 = 0;
      }

      v8[4] = v17;
      if (!__OFSUB__(v18, 1))
      {
        v8[3] = v18 - 1;
        goto LABEL_13;
      }
    }

    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, v10, v11, v12, v13, v14);
  }

  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
LABEL_13:
  swift_endAccess();
  if (*(v0 + 80))
  {
    sub_10000C350((v0 + 56), v1);
    static Log.network.getter();
    sub_10000C368(v1, v0 + 96);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 296);
    v23 = *(v0 + 248);
    v24 = (*(v0 + 256) + 8);
    if (v21)
    {
      v25 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v63 = v57;
      *v25 = 136315138;
      v60 = v23;
      v26 = *(v0 + 120);
      sub_10000C3CC((v0 + 96), v26);
      v58 = v22;
      v59 = v24;
      v27 = *(v26 - 8);
      swift_task_alloc();
      v61 = v1;
      (*(v27 + 16))();
      v28 = String.init<A>(describing:)();
      v30 = v29;

      sub_10000C304((v0 + 96));
      v31 = sub_100102F80(v28, v30, &v63);

      *(v25 + 4) = v31;
      v1 = v61;
      _os_log_impl(&_mh_execute_header, v19, v20, "[MSQ] Dequeue %s", v25, 0xCu);
      sub_10000C304(v57);

      v32 = *v59;
      (*v59)(v58, v60);
    }

    else
    {

      v32 = *v24;
      (*v24)(v22, v23);
      sub_10000C304((v0 + 96));
    }

    *(v0 + 344) = v32;
    v48 = *(v0 + 40);
    v49 = sub_10000C3CC(v1, v48);
    v50 = *(v48 - 8);
    v51 = swift_task_alloc();
    (*(v50 + 16))(v51, v49, v48);
    *(v0 + 160) = swift_getAssociatedTypeWitness();
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    sub_10000C1AC(v62);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v52 = *(v0 + 320);
    v53 = static CommunicationActor.shared.getter();
    *(v0 + 352) = v53;
    v54 = *(v0 + 160);
    v55 = *(v0 + 168);
    sub_10000C410(v62, v54);
    v56 = swift_task_alloc();
    *(v0 + 360) = v56;
    *v56 = v0;
    v56[1] = sub_100007730;
    v9 = *(v0 + 240);
    v10 = v53;
    v11 = v52;
    v12 = v0 + 200;
    v13 = v54;
    v14 = v55;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, v10, v11, v12, v13, v14);
  }

  if (*(v0 + 80))
  {
    sub_10000C304((v0 + 56));
  }

  static Log.network.getter();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "[MSQ] No Pending Messages, exiting.", v35, 2u);
  }

  v36 = *(v0 + 288);
  v37 = *(v0 + 256);
  v38 = *(v0 + 248);

  v39 = *(v37 + 8);
  v39(v36, v38);
  static Log.network.getter();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "[MSQ] Task done.", v42, 2u);
  }

  v43 = *(v0 + 264);
  v44 = *(v0 + 248);
  v45 = *(v0 + 208);

  v39(v43, v44);
  *(v45 + 48) = 0;

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_10000876C(char a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 392) = a1 & 1;

    v6 = *(v4 + 328);
    v7 = *(v4 + 336);

    return _swift_task_switch(sub_1000088B8, v6, v7);
  }
}

uint64_t sub_1000088B8(uint64_t a1)
{
  v65 = v1;
  if (*(v1 + 392))
  {
    (*(*(v1 + 224) + 8))(*(v1 + 232), *(v1 + 216));
LABEL_28:
    v57 = *(v1 + 320);
    v58 = static CommunicationActor.shared.getter();
    *(v1 + 352) = v58;
    v59 = *(v1 + 160);
    v60 = *(v1 + 168);
    sub_10000C410(v1 + 136, v59);
    v61 = swift_task_alloc();
    *(v1 + 360) = v61;
    *v61 = v1;
    v61[1] = sub_100007730;
    v13 = *(v1 + 240);
    v16 = v1 + 200;
    v14 = v58;
    v15 = v57;
    v17 = v59;
    v18 = v60;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v13, v14, v15, v16, v17, v18);
  }

  static Log.network.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MSQ] Exiting loop until more data queued", v4, 2u);
  }

  v5 = *(v1 + 344);
  v6 = *(v1 + 272);
  v7 = *(v1 + 248);
  v9 = *(v1 + 224);
  v8 = *(v1 + 232);
  v10 = *(v1 + 216);

  v5(v6, v7);
  (*(v9 + 8))(v8, v10);
  sub_10000C304((v1 + 136));
  sub_10000C304((v1 + 16));
  v11 = *(v1 + 208);
  swift_beginAccess();
  if (*(*(v11 + 56) + 24) > 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000B9E8();
    }

    v12 = *(*(v1 + 208) + 56);
    v13 = sub_10000C350(&v12[5 * v12[4] + 5], v1 + 56);
    v19 = v12[4];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v22 = v12[3];
      if (v21 >= v12[2])
      {
        v21 = 0;
      }

      v12[4] = v21;
      if (!__OFSUB__(v22, 1))
      {
        v12[3] = v22 - 1;
        goto LABEL_14;
      }
    }

    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v13, v14, v15, v16, v17, v18);
  }

  *(v1 + 88) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
LABEL_14:
  swift_endAccess();
  if (*(v1 + 80))
  {
    sub_10000C350((v1 + 56), v1 + 16);
    static Log.network.getter();
    sub_10000C368(v1 + 16, v1 + 96);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v1 + 296);
    v27 = *(v1 + 248);
    v28 = (*(v1 + 256) + 8);
    if (v25)
    {
      v63 = *(v1 + 248);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v64 = v30;
      *v29 = 136315138;
      v31 = *(v1 + 120);
      sub_10000C3CC((v1 + 96), v31);
      v62 = v26;
      v32 = *(v31 - 8);
      swift_task_alloc();
      (*(v32 + 16))();
      v33 = String.init<A>(describing:)();
      v35 = v34;

      sub_10000C304((v1 + 96));
      v36 = sub_100102F80(v33, v35, &v64);

      *(v29 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v23, v24, "[MSQ] Dequeue %s", v29, 0xCu);
      sub_10000C304(v30);

      v37 = *v28;
      (*v28)(v62, v63);
    }

    else
    {

      v37 = *v28;
      (*v28)(v26, v27);
      sub_10000C304((v1 + 96));
    }

    *(v1 + 344) = v37;
    v53 = *(v1 + 40);
    v54 = sub_10000C3CC((v1 + 16), v53);
    v55 = *(v53 - 8);
    v56 = swift_task_alloc();
    (*(v55 + 16))(v56, v54, v53);
    *(v1 + 160) = swift_getAssociatedTypeWitness();
    *(v1 + 168) = swift_getAssociatedConformanceWitness();
    sub_10000C1AC((v1 + 136));
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    goto LABEL_28;
  }

  if (*(v1 + 80))
  {
    sub_10000C304((v1 + 56));
  }

  static Log.network.getter();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "[MSQ] No Pending Messages, exiting.", v40, 2u);
  }

  v41 = *(v1 + 288);
  v42 = *(v1 + 256);
  v43 = *(v1 + 248);

  v44 = *(v42 + 8);
  v44(v41, v43);
  static Log.network.getter();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "[MSQ] Task done.", v47, 2u);
  }

  v48 = *(v1 + 264);
  v49 = *(v1 + 248);
  v50 = *(v1 + 208);

  v44(v48, v49);
  *(v50 + 48) = 0;

  v51 = *(v1 + 8);

  return v51();
}

uint64_t sub_100008FF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Message();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v2[14] = static CommunicationActor.shared.getter();
  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v6;
  v2[16] = v5;

  return _swift_task_switch(sub_1000091A0, v6, v5);
}

uint64_t sub_1000091A0(uint64_t a1)
{
  v31 = v1;
  v2 = v1[8];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[2];
  static Log.network.getter();
  v6 = *(v4 + 16);
  v1[17] = v6;
  v1[18] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[13];
  v12 = v1[9];
  v11 = v1[10];
  v13 = v1[8];
  v15 = v1[4];
  v14 = v1[5];
  if (v9)
  {
    v29 = v1[9];
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v16 = 136315138;
    sub_10000C578(&qword_100129EE8, &type metadata accessor for Message, &protocol conformance descriptor for Message);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v10;
    v19 = v18;
    v26 = v8;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_100102F80(v17, v19, &v30);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v7, v26, "[MSQ] Send start: %s", v16, 0xCu);
    sub_10000C304(v28);

    v22 = *(v11 + 8);
    v22(v27, v29);
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
    v22 = *(v11 + 8);
    v22(v10, v12);
  }

  v1[19] = v22;
  v1[20] = v20;
  v23 = swift_task_alloc();
  v1[21] = v23;
  *v23 = v1;
  v23[1] = sub_100009428;
  v24 = v1[2];

  return sub_100073540(v24);
}

uint64_t sub_100009428()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1000097B4;
  }

  else
  {
    v5 = sub_100009564;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100009564()
{
  v26 = v0;
  v1 = v0[17];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[2];

  static Log.network.getter();
  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[19];
  v24 = v0[20];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[7];
  v12 = v0[4];
  if (v7)
  {
    v23 = v0[12];
    v13 = swift_slowAlloc();
    v22 = v10;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    v21 = v8;
    v15 = Message.shortDescription.getter();
    v17 = v16;
    v24(v11, v12);
    v18 = sub_100102F80(v15, v17, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "[MSQ] Send end: %s", v13, 0xCu);
    sub_10000C304(v14);

    v21(v23, v22);
  }

  else
  {

    v24(v11, v12);
    v8(v9, v10);
  }

  v19 = v0[1];

  return v19(1);
}

uint64_t sub_1000097B4()
{
  v29 = v0;
  v1 = v0[17];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];

  static Log.network.getter();
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v27 = v6;
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[6];
  v13 = v0[4];
  if (v7)
  {
    v26 = v0[9];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v14 = 136315394;
    v24 = v10;
    v25 = v8;
    v16 = Message.shortDescription.getter();
    v18 = v17;
    v9(v12, v13);
    v19 = sub_100102F80(v16, v18, &v28);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&_mh_execute_header, v5, v27, "[MSQ] Send failed: %s with error: %@. Will retry.", v14, 0x16u);
    sub_10000C460(v15, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(v23);

    v25(v24, v26);
  }

  else
  {

    v9(v12, v13);
    v8(v10, v11);
  }

  v21 = v0[1];

  return v21(2);
}

uint64_t sub_100009A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v6 = type metadata accessor for ContinuousClock.Instant();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v4[29] = v9;
  v4[30] = v11;

  return _swift_task_switch(sub_100009C60, v9, v11);
}

uint64_t sub_100009C60()
{
  *(v0 + 11) = static Duration.seconds(_:)();
  *(v0 + 12) = v1;
  ContinuousClock.init()();
  swift_beginAccess();
  v4 = (*(v0 + 15) + **(v0 + 15));
  v2 = swift_task_alloc();
  *(v0 + 31) = v2;
  *v2 = v0;
  v2[1] = sub_100009D90;

  return v4(v0 + 81);
}

uint64_t sub_100009D90()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_10000A100;
  }

  else
  {
    v5 = sub_100009ECC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100009ECC()
{
  v17 = v0;
  v1 = *(v0 + 81);
  if (v1 == 2)
  {
    static Log.default.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 200);
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v10 = Duration.description.getter();
      v12 = sub_100102F80(v10, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v2, v3, "Sleeping for %s", v8, 0xCu);
      sub_10000C304(v9);
    }

    v13 = *(v7 + 8);
    v13(v5, v6);
    *(v0 + 264) = v13;
    *(v0 + 104) = *(v0 + 88);
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 1;

    return _swift_task_switch(sub_10000A1C4, 0, 0);
  }

  else
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v14 = *(v0 + 8);

    return v14(v1 & 1);
  }
}

uint64_t sub_10000A100()
{
  (*(v0[27] + 8))(v0[28], v0[26]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_10000A1C4()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  v4 = sub_10000C578(&qword_100129F10, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000C578(&qword_100129F18, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v3 + 8);
  v0[34] = v5;
  v0[35] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_10000A34C;
  v7 = v0[26];
  v8 = v0[20];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 8, v7, v4);
}

uint64_t sub_10000A34C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 136);
  *(*v1 + 296) = v0;

  v3(v4, v5);
  if (v0)
  {
    v6 = sub_10000A6A0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = *(v2 + 232);
    v8 = *(v2 + 240);
    v6 = sub_10000A4D4;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10000A4D4()
{
  static Log.default.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Done sleeping.", v3, 2u);
  }

  (*(v0 + 264))(*(v0 + 192), *(v0 + 168));
  swift_beginAccess();
  dispatch thunk of static DurationProtocol.*= infix(_:_:)();
  swift_endAccess();
  v6 = (*(v0 + 120) + **(v0 + 120));
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  *v4 = v0;
  v4[1] = sub_100009D90;

  return v6(v0 + 81);
}

uint64_t sub_10000A6B8()
{
  static Log.default.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error Sleeping %@", v3, 0xCu);
    sub_10000C460(v4, &qword_100129EF8, &qword_100108C70);
  }

  else
  {
  }

  (*(v0 + 264))(*(v0 + 184), *(v0 + 168));
  swift_beginAccess();
  dispatch thunk of static DurationProtocol.*= infix(_:_:)();
  swift_endAccess();
  v8 = (*(v0 + 120) + **(v0 + 120));
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_100009D90;

  return v8(v0 + 81);
}

unint64_t sub_10000A914()
{
  result = qword_100129E88;
  if (!qword_100129E88)
  {
    sub_10000A990(&qword_100129E80, &unk_1001091F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100129E88);
  }

  return result;
}

uint64_t sub_10000A990(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A9D8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000AAD0;

  return v6(a1);
}

uint64_t sub_10000AAD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000ABC8(char a1, Swift::Int a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    sub_10000560C(&qword_100129F00, &qword_100108CD0);
    v11 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v11 + 16) = v6;
    *(v11 + 24) = v12;
    if (v12 >= 1)
    {
      sub_10000B768(v11 + 16, v11 + 40, v5, v4 + 40);
    }
  }

  else
  {
    sub_10000560C(&qword_100129F08, &qword_100108CD8);
    Deque._Storage._growCapacity(to:linearly:)(a2, a3 & 1);
    if (a1)
    {
      v10 = *(v4 + 24);
      sub_10000560C(&qword_100129F00, &qword_100108CD0);
      v11 = swift_allocObject();
      *(v11 + 16) = (j__malloc_size(v11) - 40) / 40;
      *(v11 + 24) = v10;
      *(v11 + 32) = 0;
      if (v10 >= 1)
      {
        sub_10000B194(v11 + 16, (v11 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      sub_10000560C(&qword_100129F00, &qword_100108CD0);
      v11 = swift_allocObject();
      v13 = j__malloc_size(v11);
      v14 = *(v4 + 24);
      *(v11 + 16) = (v13 - 40) / 40;
      *(v11 + 24) = v14;
      *(v11 + 32) = 0;
      if (v14 >= 1)
      {
        sub_10000B4E0(v11 + 16, v11 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v11;
  return result;
}

size_t sub_10000ADAC(char a1, Swift::Int a2, char a3)
{
  v7 = *v3;
  v8 = (*v3 + 16);
  v9 = *v8;
  v10 = sub_10000560C(&qword_100129F20, &qword_100109B10);
  v11 = v10;
  if (v9 >= a2)
  {
    v20 = *(*(v10 - 8) + 80);
    sub_10000560C(&qword_100129F28, &qword_100108CF0);
    v17 = swift_allocObject();
    v21 = *(v7 + 24);
    *(v17 + 16) = v9;
    *(v17 + 24) = v21;
    if (v21 >= 1)
    {
      sub_10000B880(v17 + 16, v17 + ((v20 + 40) & ~v20), v8, v7 + ((v20 + 40) & ~v20));
    }

    goto LABEL_19;
  }

  Deque._Storage._growCapacity(to:linearly:)(a2, a3 & 1);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  if (a1)
  {
    v14 = *(v7 + 24);
    sub_10000560C(&qword_100129F28, &qword_100108CF0);
    v15 = *(v12 + 72);
    v16 = (v13 + 40) & ~v13;
    v17 = swift_allocObject();
    result = j__malloc_size(v17);
    if (v15)
    {
      if (result - v16 != 0x8000000000000000 || v15 != -1)
      {
        *(v17 + 16) = (result - v16) / v15;
        *(v17 + 24) = v14;
        *(v17 + 32) = 0;
        if (v14 >= 1)
        {
          sub_10000B2D4(v17 + 16, v17 + v16, v8, v7 + v16);
          *(v7 + 24) = 0;
        }

LABEL_19:

        *v3 = v17;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10000560C(&qword_100129F28, &qword_100108CF0);
  v22 = *(v12 + 72);
  v23 = (v13 + 40) & ~v13;
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v22)
  {
    goto LABEL_21;
  }

  if (result - v23 != 0x8000000000000000 || v22 != -1)
  {
    v25 = *(v7 + 24);
    *(v17 + 16) = (result - v23) / v22;
    *(v17 + 24) = v25;
    *(v17 + 32) = 0;
    if (v25 >= 1)
    {
      sub_10000B5F4(v17 + 16, v17 + v23, v8, v7 + v23);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_10000B028(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v7 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (!v7)
  {
    v6 = result;
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v7))
      {
LABEL_9:
        result = sub_10000C368(a3, a2 + 40 * v5);
        v8 = v6[1];
        v7 = __OFADD__(v8, 1);
        v9 = v8 + 1;
        if (!v7)
        {
          v6[1] = v9;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v7 = __OFADD__(v5, *result);
      v5 += *result;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_10000B0B4(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = sub_10000560C(&qword_100129F20, &qword_100109B10);
        result = (*(*(v10 - 8) + 16))(a2 + *(*(v10 - 8) + 72) * v5, a3, v10);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_10000B194(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[40 * v4];
  if (v12 != __dst || &v12[40 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 40 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[40 * v8];
  if (v16 != v11 || v16 >= &v11[40 * v7])
  {

    memmove(v16, v11, 40 * v7);
  }
}

void sub_10000B2D4(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(sub_10000560C(&qword_100129F20, &qword_100109B10) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(sub_10000560C(&qword_100129F20, &qword_100109B10) - 8) + 72) * v11 <= a2)
  {
    sub_10000560C(&qword_100129F20, &qword_100109B10);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(sub_10000560C(&qword_100129F20, &qword_100109B10) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_10000B4E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      sub_10000560C(&qword_100129F08, &qword_100108CD8);
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      sub_10000560C(&qword_100129F08, &qword_100108CD8);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_10000B5F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  sub_10000560C(&qword_100129F20, &qword_100109B10);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_10000560C(&qword_100129F20, &qword_100109B10);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v8 < 1)
  {
    return;
  }

  if (!v9)
  {
LABEL_17:
    __break(1u);
    return;
  }

  sub_10000560C(&qword_100129F20, &qword_100109B10);
  swift_arrayInitWithCopy();
}

void sub_10000B768(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      sub_10000560C(&qword_100129F08, &qword_100108CD8);
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      sub_10000560C(&qword_100129F08, &qword_100108CD8);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_10000B880(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  sub_10000560C(&qword_100129F20, &qword_100109B10);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

LABEL_7:
      if (a4)
      {
        sub_10000560C(&qword_100129F20, &qword_100109B10);
        swift_arrayInitWithCopy();
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v9)
    {
      sub_10000560C(&qword_100129F20, &qword_100109B10);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_17:
    __break(1u);
  }
}

uint64_t sub_10000B9E8()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_10000560C(&qword_100129F00, &qword_100108CD0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_10000B768(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_10000BA8C()
{
  v1 = *v0;
  v2 = sub_10000560C(&qword_100129F20, &qword_100109B10);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  sub_10000560C(&qword_100129F28, &qword_100108CF0);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_10000B880(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

uint64_t sub_10000BB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10000BC30;

  return sub_100008FF0(a2, a3);
}

uint64_t sub_10000BC30(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10000BD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, char a8)
{
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a7;
  *(v8 + 16) = a4;
  *(v8 + 49) = *a6;
  return _swift_task_switch(sub_10000BD70, 0, 0);
}

uint64_t sub_10000BD70()
{
  type metadata accessor for CommunicationActor();
  *(v0 + 40) = static CommunicationActor.shared.getter();
  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000CC94, v2, v1);
}

uint64_t sub_10000BE34(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_10000BE54, 0, 0);
}

uint64_t sub_10000BE54()
{
  MessageBody.deserialized<A>()();
  v2 = v0[3];
  v1 = v0[4];
  *v1 = v0[2];
  v1[1] = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10000BEFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_10000BD40(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_10000C04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C0BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C0F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10000A9D8(a1, v4);
}

uint64_t *sub_10000C1AC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000C210()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C250()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000045BC;

  return sub_100006C5C();
}

uint64_t sub_10000C304(void *a1)
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

uint64_t sub_10000C350(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000C368(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000C3CC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000C410(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10000C460(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000560C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C4C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000045BC;

  return sub_10000BB90(a1, v5, v4);
}

uint64_t sub_10000C578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000C5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, char a8)
{
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a7;
  *(v8 + 16) = a4;
  *(v8 + 49) = *a6;
  return _swift_task_switch(sub_10000C5F4, 0, 0);
}

uint64_t sub_10000C5F4()
{
  type metadata accessor for CommunicationActor();
  *(v0 + 40) = static CommunicationActor.shared.getter();
  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000C6B8, v2, v1);
}

uint64_t sub_10000C6B8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = *(v0 + 49);

  sub_100005944(v3, v4, v2, v1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000C748(uint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10000C758(uint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10000C768()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C7A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1000044D4(a1, v4, v5, v6);
}

uint64_t sub_10000C868(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000C8BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_10000C5C4(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_10000CA04()
{
  v1 = type metadata accessor for MessageBody();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64) + v4;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10000CADC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_10000BD40(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_10000CC24(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000A990(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CCAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for AlbumID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = sub_10000560C(&qword_10012A088, &qword_100108E40);
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10000CE4C, 0, 0);
}

uint64_t sub_10000CE4C()
{
  v82 = v0;
  v1 = objc_opt_self();
  sub_10000560C(&qword_10012A090, &qword_100108E48);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001089C0;
  *(v2 + 32) = AlbumID.album.getter();
  *(v2 + 40) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v1 fetchAssetCollectionsWithLocalIdentifiers:isa options:0];

  v6 = [v5 firstObject];
  if (v6)
  {
    v7 = v0[14];
    v8 = v0[15];
    v68 = v0[13];
    v9 = v0[6];
    v73 = v0[5];
    loga = v0[8];
    v66 = v0[4];
    v67 = v0[3];
    v71 = v0[2];
    v10 = [objc_allocWithZone(PHFetchOptions) init];
    sub_10000D828(0, &qword_10012A0A8, NSPredicate_ptr);
    sub_10000560C(&qword_10012A0B0, &qword_100108E50);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1001089C0;
    *(v11 + 56) = &type metadata for Int;
    *(v11 + 64) = &protocol witness table for Int;
    *(v11 + 32) = 1;
    v12 = NSPredicate.init(format:_:)();
    [v10 setPredicate:v12];

    sub_10000560C(&qword_10012A0B8, &qword_100109430);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100108DE0;
    v14 = objc_allocWithZone(NSSortDescriptor);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 initWithKey:v15 ascending:1];

    *(v13 + 32) = v16;
    v17 = v6;
    sub_10000D828(0, &qword_10012A0C0, NSSortDescriptor_ptr);
    v18 = Array._bridgeToObjectiveC()().super.isa;

    [v10 setSortDescriptors:v18];

    [v10 setIncludeHiddenAssets:0];
    v79 = v10;
    v19 = [objc_opt_self() fetchAssetsInAssetCollection:v6 options:v10];
    PHFetchResult<>.collection.getter();
    v20 = sub_100010EE8(v8, *(v66 + 16), v67);
    (*(v7 + 8))(v8, v68);
    static Log.album.getter();
    (*(v9 + 16))(loga, v71, v73);
    v21 = v19;

    v22 = Logger.logObject.getter();
    LOBYTE(v18) = static os_log_type_t.default.getter();

    v74 = v18;
    log = v22;
    v23 = os_log_type_enabled(v22, v18);
    v24 = v0[12];
    v25 = v0[9];
    v26 = v0[10];
    v27 = v0[8];
    v28 = v0[5];
    v29 = v0[6];
    if (v23)
    {
      v72 = v17;
      v30 = swift_slowAlloc();
      v81[0] = swift_slowAlloc();
      *v30 = 136315906;
      sub_10000D7E4(&qword_10012A0A0, &protocol conformance descriptor for AlbumID);
      v69 = v25;
      v70 = v24;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v29 + 8))(v27, v28);
      v34 = sub_100102F80(v31, v33, v81);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      sub_10000D870(v20);
      v35 = Dictionary.description.getter();
      v37 = v36;

      v38 = sub_100102F80(v35, v37, v81);

      *(v30 + 14) = v38;
      *(v30 + 22) = 2048;
      v39 = [v21 count];

      *(v30 + 24) = v39;
      *(v30 + 32) = 2080;
      sub_10000560C(&qword_100129E80, &unk_1001091F0);
      v40 = Dictionary.description.getter();
      v42 = sub_100102F80(v40, v41, v81);

      *(v30 + 34) = v42;
      _os_log_impl(&_mh_execute_header, log, v74, "%s: Picked %s out of %ld photos: %s", v30, 0x2Au);
      swift_arrayDestroy();

      (*(v26 + 8))(v70, v69);
    }

    else
    {

      (*(v29 + 8))(v27, v28);
      (*(v26 + 8))(v24, v25);
    }

    v62 = v0[1];

    return v62(v20);
  }

  else
  {
    v44 = v0[6];
    v43 = v0[7];
    v45 = v0[5];
    v46 = v0[2];
    static Log.default.getter();
    (*(v44 + 16))(v43, v46, v45);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v51 = v0[10];
    v50 = v0[11];
    v52 = v0[9];
    v54 = v0[6];
    v53 = v0[7];
    v55 = v0[5];
    if (v49)
    {
      v80 = v0[9];
      v56 = swift_slowAlloc();
      v75 = v48;
      v57 = swift_slowAlloc();
      v81[0] = v57;
      *v56 = 136315138;
      sub_10000D7E4(&qword_10012A0A0, &protocol conformance descriptor for AlbumID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      logb = v50;
      v60 = v59;
      (*(v54 + 8))(v53, v55);
      v61 = sub_100102F80(v58, v60, v81);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v47, v75, "Couldn't find album %s", v56, 0xCu);
      sub_10000C304(v57);

      (*(v51 + 8))(logb, v80);
    }

    else
    {

      (*(v54 + 8))(v53, v55);
      (*(v51 + 8))(v50, v52);
    }

    sub_10000D790();
    swift_allocError();
    *v64 = 0;
    swift_willThrow();

    v65 = v0[1];

    return v65();
  }
}

uint64_t sub_10000D700()
{
  sub_10000C304((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_10000D790()
{
  result = qword_10012A098;
  if (!qword_10012A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012A098);
  }

  return result;
}

uint64_t sub_10000D7E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AlbumID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D828(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_10000D870(uint64_t a1)
{
  sub_10000560C(&qword_10012A0C8, &qword_100109580);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v21 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v20 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = *(*(v21 + 48) + 8 * v15);
      swift_getKeyPath();

      swift_getAtKeyPath();

      *(v20 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v3[6] + 8 * v15) = v16;
      *(v3[7] + 8 * v15) = v22;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      v3[2] = v19;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DA14(void *a1)
{
  v143 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace.Source();
  __chkstk_darwin(v143);
  v142 = v134 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000560C(&qword_10012A200, &qword_100108F60);
  __chkstk_darwin(v3 - 8);
  v144 = v134 - v4;
  v168 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace();
  v166 = *(v168 - 8);
  v5 = __chkstk_darwin(v168);
  v164 = v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v165 = v134 - v8;
  v9 = __chkstk_darwin(v7);
  v153 = v134 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v134 - v12;
  __chkstk_darwin(v11);
  v175 = v134 - v14;
  v15 = type metadata accessor for UUID();
  v145 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v172 = v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v152 = v134 - v19;
  v20 = __chkstk_darwin(v18);
  v173 = v134 - v21;
  __chkstk_darwin(v20);
  v174 = v134 - v22;
  v23 = type metadata accessor for DailyPhotosFaceCuration();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Logger();
  v170 = *(v27 - 8);
  v28 = __chkstk_darwin(v27);
  v155 = v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v169 = v134 - v31;
  __chkstk_darwin(v30);
  v33 = v134 - v32;
  static Log.daily.getter();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v167 = a1;

  v36 = os_log_type_enabled(v34, v35);
  v156 = v13;
  v176 = v15;
  v157 = v27;
  v136 = v23;
  v135 = v24;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    *v37 = 136315394;
    *(v37 + 4) = sub_100102F80(0x6728657461647075, 0xEE00293A6E657669, &v177);
    *(v37 + 12) = 2080;
    v38 = Array.description.getter();
    v40 = sub_100102F80(v38, v39, &v177);

    *(v37 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "%s: refreshing daily photos content, given %s", v37, 0x16u);
    swift_arrayDestroy();
    v27 = v157;
    v41 = v156;
  }

  else
  {
    v41 = v13;
  }

  v42 = v170;
  v154 = *(v170 + 8);
  v154(v33, v27);
  static TestProperties.watchFacePerDaySize.getter();
  v43 = [objc_opt_self() sharedPhotoLibrary];
  DailyPhotosFaceCuration.init(maxNumberOfFaces:photoLibrary:)();
  v44 = v167;
  v45 = v167[2];
  v46 = _swiftEmptyArrayStorage;
  v138 = v26;
  if (v45)
  {
    v177 = _swiftEmptyArrayStorage;
    sub_10005C54C(0, v45, 0);
    v46 = v177;
    v171 = *(v145 + 16);
    v47 = v44 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v48 = *(v145 + 72);
    v49 = (v145 + 8);
    do
    {
      v50 = v46;
      v51 = v174;
      v52 = v176;
      (v171)(v174, v47, v176);
      v53 = UUID.uuidString.getter();
      v55 = v54;
      (*v49)(v51, v52);
      v46 = v50;
      v177 = v50;
      v56 = *(v50 + 16);
      v57 = v46[3];
      if (v56 >= v57 >> 1)
      {
        sub_10005C54C((v57 > 1), v56 + 1, 1);
        v46 = v177;
      }

      v46[2] = v56 + 1;
      v58 = &v46[2 * v56];
      v58[4] = v53;
      v58[5] = v55;
      v47 += v48;
      --v45;
    }

    while (v45);
    v41 = v156;
    v27 = v157;
    v42 = v170;
  }

  sub_10006BE04(v59);
  v134[1] = v46;

  v60 = DailyPhotosFaceCuration.getDailyPhotosFaces(excluding:)();

  v61 = v169;
  static Log.daily.getter();

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v168;
  if (v64)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v177 = v67;
    *v66 = 136315394;
    *(v66 + 4) = sub_100102F80(0x6728657461647075, 0xEE00293A6E657669, &v177);
    *(v66 + 12) = 2048;
    *(v66 + 14) = *(v60 + 16);

    _os_log_impl(&_mh_execute_header, v62, v63, "%s: found %ld photos", v66, 0x16u);
    sub_10000C304(v67);

    v68 = v169;
  }

  else
  {

    v68 = v61;
  }

  v154(v68, v27);
  v70 = v144;
  v163 = *(v60 + 16);
  if (v163)
  {
    v71 = 0;
    v174 = (v166 + 16);
    v72 = (v145 + 48);
    v150 = (v145 + 32);
    v169 = (v145 + 16);
    v171 = (v166 + 8);
    v161 = (v145 + 8);
    v149 = v42 + 8;
    v140 = (v166 + 32);
    v139 = (v166 + 40);
    v167 = &_swiftEmptyDictionarySingleton;
    *&v69 = 136316162;
    v141 = v69;
    v162 = v60;
    v151 = (v145 + 48);
    while (v71 < *(v60 + 16))
    {
      v73 = v70;
      v74 = *(v166 + 80);
      v170 = *(v166 + 72);
      v75 = v60 + ((v74 + 32) & ~v74) + v170 * v71;
      v76 = *(v166 + 16);
      v76(v175, v75, v65);
      v77 = DailyPhotosFaceCuration.DailyPhotosFace.asset.getter();
      v78 = [v77 uuid];

      if (!v78)
      {
        goto LABEL_51;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();

      v79 = v176;
      if ((*v72)(v70, 1, v176) == 1)
      {
        (*v171)(v175, v65);
        sub_10000C460(v70, &qword_10012A200, &qword_100108F60);
        v60 = v162;
      }

      else
      {
        v80 = v173;
        (*v150)(v173, v70, v79);
        static Log.daily.getter();
        v81 = v152;
        v160 = *v169;
        v160(v152, v80, v79);
        v82 = v175;
        v76(v41, v175, v65);
        v83 = v153;
        v76(v153, v82, v65);
        v76(v165, v82, v65);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v177 = v148;
          *v86 = v141;
          *(v86 + 4) = sub_100102F80(0x6728657461647075, 0xEE00293A6E657669, &v177);
          *(v86 + 12) = 2080;
          sub_100010E9C(&qword_10012A1C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v147 = v84;
          v87 = v176;
          v88 = dispatch thunk of CustomStringConvertible.description.getter();
          v146 = v85;
          v90 = v89;
          v159 = *v161;
          v159(v81, v87);
          v91 = sub_100102F80(v88, v90, &v177);

          *(v86 + 14) = v91;
          *(v86 + 22) = 2080;
          DailyPhotosFaceCuration.DailyPhotosFace.source.getter();
          v92 = String.init<A>(describing:)();
          v94 = v93;
          v95 = *v171;
          (*v171)(v41, v168);
          v96 = sub_100102F80(v92, v94, &v177);

          *(v86 + 24) = v96;
          *(v86 + 32) = 2080;
          v97 = DailyPhotosFaceCuration.DailyPhotosFace.localizedTitle.getter();
          if (v98)
          {
            v99 = v97;
          }

          else
          {
            v99 = 0x29656E6F6E28;
          }

          if (v98)
          {
            v100 = v98;
          }

          else
          {
            v100 = 0xE600000000000000;
          }

          v95(v83, v168);
          v101 = sub_100102F80(v99, v100, &v177);

          *(v86 + 34) = v101;
          *(v86 + 42) = 2080;
          v102 = v165;
          v103 = DailyPhotosFaceCuration.DailyPhotosFace.localizedSubtitle.getter();
          if (v104)
          {
            v105 = v103;
          }

          else
          {
            v105 = 0x29656E6F6E28;
          }

          if (v104)
          {
            v106 = v104;
          }

          else
          {
            v106 = 0xE600000000000000;
          }

          v158 = v95;
          v95(v102, v168);
          v107 = sub_100102F80(v105, v106, &v177);
          v73 = v144;

          *(v86 + 44) = v107;
          v108 = v147;
          _os_log_impl(&_mh_execute_header, v147, v146, "%s: found %s, src = %s, t = %s, s = %s", v86, 0x34u);
          swift_arrayDestroy();

          v65 = v168;

          v154(v155, v157);
          v109 = v176;
        }

        else
        {

          v110 = v41;
          v111 = *v171;
          (*v171)(v165, v65);
          v111(v83, v65);
          v158 = v111;
          v111(v110, v65);
          v112 = v176;
          v159 = *v161;
          v159(v81, v176);
          v154(v155, v157);
          v109 = v112;
        }

        v113 = v172;
        v114 = v160;
        v160(v172, v173, v109);
        v76(v164, v175, v65);
        v115 = v167;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v177 = v115;
        v117 = sub_100057AFC(v113);
        v119 = *(v115 + 16);
        v120 = (v118 & 1) == 0;
        v121 = __OFADD__(v119, v120);
        v122 = v119 + v120;
        v72 = v151;
        if (v121)
        {
          goto LABEL_49;
        }

        v123 = v118;
        if (*(v115 + 24) >= v122)
        {
          v60 = v162;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v131 = v117;
            sub_1000582B4();
            v117 = v131;
            v60 = v162;
          }
        }

        else
        {
          sub_10005959C(v122, isUniquelyReferenced_nonNull_native);
          v117 = sub_100057AFC(v172);
          v60 = v162;
          if ((v123 & 1) != (v124 & 1))
          {
            goto LABEL_52;
          }
        }

        v125 = v176;
        v126 = v177;
        v167 = v177;
        if (v123)
        {
          (*v139)(v177[7] + v117 * v170, v164, v65);
        }

        else
        {
          v177[(v117 >> 6) + 8] |= 1 << v117;
          v127 = v117;
          v114(v126[6] + *(v145 + 72) * v117, v172, v125);
          (*v140)(v126[7] + v127 * v170, v164, v65);
          v128 = v126[2];
          v121 = __OFADD__(v128, 1);
          v129 = v128 + 1;
          if (v121)
          {
            goto LABEL_50;
          }

          v126[2] = v129;
        }

        v130 = v159;
        v159(v172, v125);
        v130(v173, v125);
        v158(v175, v65);
        v41 = v156;
        v70 = v73;
      }

      if (v163 == ++v71)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v167 = &_swiftEmptyDictionarySingleton;
LABEL_47:
    (*(v135 + 8))(v138, v136);

    v132 = v137;

    *v132 = v167;
    *(v132 + 8) = 1;
  }

  return result;
}

uint64_t sub_10000EB64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  sub_10000560C(&qword_10012A1E8, &unk_100108F50);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10000ECEC, 0, 0);
}

uint64_t sub_10000ECEC()
{
  v42 = v0;
  v1 = *(v0[3] + 56);
  v0[13] = v1;
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 24);
  os_unfair_lock_unlock((v1 + 28));
  if (v2)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[4];
    v7 = sub_100010E9C(&qword_10012A1D0, v3, type metadata accessor for DailyProvider, &unk_100108F04);
    v8 = j___s10PhotosFace13TimeUtilitiesO12currentEpochSivgZ(v6, v7);
    v12 = v8 - 1;
    v0[14] = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      v13 = v0[7];
      v14 = v0[8];
      v15 = v0[6];
      v16 = v0[2];
      static Log.daily.getter();
      (*(v13 + 16))(v14, v16, v15);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      v19 = os_log_type_enabled(v17, v18);
      v20 = v0[12];
      v22 = v0[9];
      v21 = v0[10];
      v24 = v0[7];
      v23 = v0[8];
      v25 = v0[6];
      if (v19)
      {
        v40 = v12;
        v26 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v26 = 136315394;
        *(v26 + 4) = sub_100102F80(0xD00000000000001DLL, 0x8000000100106F70, &v41);
        *(v26 + 12) = 2080;
        sub_100010E9C(&qword_10012A1C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v38 = v22;
        v39 = v20;
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        v37 = v18;
        v30 = *(v24 + 8);
        v30(v23, v25);
        v31 = sub_100102F80(v27, v29, &v41);

        *(v26 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v17, v37, "%s: retrieving yesterday's photos given face %s", v26, 0x16u);
        swift_arrayDestroy();

        v12 = v40;

        v32 = *(v21 + 8);
        v32(v39, v38);
      }

      else
      {

        v30 = *(v24 + 8);
        v30(v23, v25);
        v32 = *(v21 + 8);
        v32(v20, v22);
      }

      v0[15] = v30;
      v0[16] = v32;
      v33 = v0[3];
      v34 = v33[5];
      v35 = v33[6];
      sub_10000C3CC(v33 + 2, v34);
      v36 = swift_task_alloc();
      v0[17] = v36;
      *v36 = v0;
      v36[1] = sub_10000F0A8;
      v8 = v12;
      v9 = v12;
      v10 = v34;
      v11 = v35;
    }

    return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryPhotosForDays(from:to:)(v8, v9, v10, v11);
  }
}

uint64_t sub_10000F0A8(uint64_t a1)
{
  v3 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10000F210, 0, 0);
  }
}

void sub_10000F210()
{
  v24 = v0;
  if (*(*(v0 + 144) + 16) && (v1 = sub_100057BD0(*(v0 + 112)), (v2 & 1) != 0))
  {
    v3 = *(*(*(v0 + 144) + 56) + 8 * v1);
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  static Log.daily.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  if (v6)
  {
    v22 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100102F80(0xD00000000000001DLL, 0x8000000100106F70, v23);
    *(v10 + 12) = 2080;
    sub_10000560C(&qword_100129E80, &unk_1001091F0);
    sub_100010E9C(&qword_10012A1F8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = Dictionary.description.getter();
    v13 = sub_100102F80(v11, v12, v23);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: found yesterday's photos: %s", v10, 0x16u);
    swift_arrayDestroy();

    v22(v8, v9);
    if (!v3[2])
    {
      goto LABEL_11;
    }
  }

  else
  {

    v7(v8, v9);
    if (!v3[2])
    {
      goto LABEL_11;
    }
  }

  v14 = sub_100057AFC(*(v0 + 16));
  if (v15)
  {
    v16 = *(v3[7] + 8 * v14);

    goto LABEL_14;
  }

LABEL_11:
  v17 = *(v0 + 40);
  sub_100072F54(v3, v17);

  v18 = sub_10000560C(&qword_10012A1F0, &unk_100109B30);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    sub_10000C460(*(v0 + 40), &qword_10012A1E8, &unk_100108F50);
    v16 = _swiftEmptyArrayStorage;
  }

  else
  {
    v16 = *(*(v0 + 40) + *(v18 + 48));
    (*(v0 + 120))();
  }

LABEL_14:
  v19 = *(v0 + 152);
  v20 = *(v0 + 104);
  *(swift_task_alloc() + 16) = v16;
  os_unfair_lock_lock(v20 + 7);
  sub_100010E5C(&v20[4]);
  os_unfair_lock_unlock(v20 + 7);
  if (!v19)
  {

    v21 = *(v0 + 8);

    v21();
  }
}

void sub_10000F614(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = type metadata accessor for StoredPhoto();
  v76 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = __chkstk_darwin(v11 - 8);
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v62 - v14;
  v15 = type metadata accessor for UUID();
  v64 = *(v15 - 8);
  v65 = v15;
  __chkstk_darwin(v15);
  v73 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v77 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000560C(&qword_10012A1B8, &qword_100108F20);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = *(a2 + 56);
  v26 = &v62 - v25;
  os_unfair_lock_lock((v24 + 28));
  v78 = a1;
  sub_10000FEB0((v24 + 16), a1, v26);
  if (v3)
  {
    os_unfair_lock_unlock((v24 + 28));
    __break(1u);
    return;
  }

  v27 = 0;
  os_unfair_lock_unlock((v24 + 28));
  sub_10001053C(v26, v23);
  v28 = *(v18 + 48);
  if (v28(v23, 1, v17) == 1)
  {
    sub_10000C460(v23, &qword_10012A1B8, &qword_100108F20);
    v29 = a3;
    goto LABEL_4;
  }

  v74 = v26;
  v75 = 0;
  v68 = a3;
  v62 = v18;
  v63 = v17;
  (*(v18 + 32))(v77, v23, v17);
  v47 = DailyPhotosFaceCuration.DailyPhotosFace.localizedTitle.getter();
  v49 = v48;
  v50 = StoredPhoto.title.getter();
  if (v49)
  {
    if (!v51)
    {
      goto LABEL_24;
    }

    if (v47 == v50 && v49 == v51)
    {
    }

    else
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v52 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else if (v51)
  {
    goto LABEL_24;
  }

  v53 = DailyPhotosFaceCuration.DailyPhotosFace.localizedSubtitle.getter();
  v55 = v54;
  v56 = StoredPhoto.subtitle.getter();
  if (!v55)
  {
    if (!v57)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (!v57)
  {
LABEL_24:

    goto LABEL_25;
  }

  if (v53 != v56 || v55 != v57)
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v61)
    {
      goto LABEL_27;
    }

LABEL_25:
    StoredPhoto.localIdentifier.getter();
    StoredPhoto.modificationDate.getter();
    StoredPhoto.creationDate.getter();
    StoredPhoto.parallaxScale.getter();
    v58 = v77;
    v76 = DailyPhotosFaceCuration.DailyPhotosFace.localizedTitle.getter();
    v72 = v59;
    DailyPhotosFaceCuration.DailyPhotosFace.localizedSubtitle.getter();
    v71 = v60;
    StoredPhoto.preferredLayout.getter();
    StoredPhoto.layouts.getter();
    StoredPhoto.accessibilityDescription.getter();
    StoredPhoto.init(localIdentifier:modificationDate:creationDate:parallaxScale:title:subtitle:preferredLayout:layouts:accessibilityDescription:)();
    (*(v62 + 8))(v58, v63);
    sub_10000C460(v74, &qword_10012A1B8, &qword_100108F20);
    return;
  }

LABEL_27:
  v17 = v63;
  (*(v62 + 8))(v77, v63);
  v29 = v68;
  v26 = v74;
  v27 = v75;
LABEL_4:
  v30 = v28(v26, 1, v17);
  v31 = (v76 + 16);
  if (v30 == 1)
  {
    v32 = v65;
    v74 = v26;
    v75 = v27;
    v33 = v72;
    static Log.daily.getter();
    v34 = *v31;
    v35 = v71;
    (*v31)(v71, v78, v7);
    v36 = v7;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v68 = v29;
      v40 = v39;
      v77 = swift_slowAlloc();
      v79 = v77;
      *v40 = 136315394;
      *(v40 + 4) = sub_100102F80(0x6F6C42646E656D61, 0xEA00000000006B63, &v79);
      *(v40 + 12) = 2080;
      v41 = v73;
      StoredPhoto.localIdentifier.getter();
      sub_100010E9C(&qword_10012A1C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v70) = v38;
      v43 = v42;
      v45 = v44;
      (*(v64 + 8))(v41, v32);
      (*(v76 + 8))(v71, v36);
      v46 = sub_100102F80(v43, v45, &v79);

      *(v40 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v37, v70, "%s: %s has no caption data!", v40, 0x16u);
      swift_arrayDestroy();

      v29 = v68;

      (*(v66 + 8))(v72, v67);
    }

    else
    {

      (*(v76 + 8))(v35, v36);
      (*(v66 + 8))(v33, v67);
    }

    sub_10000C460(v74, &qword_10012A1B8, &qword_100108F20);
    v34(v29, v78, v36);
  }

  else
  {
    sub_10000C460(v26, &qword_10012A1B8, &qword_100108F20);
    (*v31)(v29, v78, v7);
  }
}

uint64_t sub_10000FEB0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v51 = type metadata accessor for UUID();
  v5 = *(v51 - 8);
  v6 = __chkstk_darwin(v51);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = type metadata accessor for StoredPhoto();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = __chkstk_darwin(v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[8])
  {
    StoredPhoto.localIdentifier.getter();
    v20 = *a1;
    if (*(*a1 + 16))
    {
      v21 = sub_100057AFC(v8);
      if (v22)
      {
        v23 = v21;
        v24 = *(v20 + 56);
        v25 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace();
        v26 = *(v25 - 8);
        v27 = v26;
        v28 = v24 + *(v26 + 72) * v23;
        v29 = v52;
        (*(v26 + 16))(v52, v28, v25);
        (*(v5 + 8))(v8, v51);
        return (*(v27 + 56))(v29, 0, 1, v25);
      }
    }

    (*(v5 + 8))(v8, v51);
  }

  else
  {
    v49 = v17;
    v50 = v16;
    static Log.daily.getter();
    (*(v12 + 16))(v14, a2, v11);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v47 = v32;
      v34 = v33;
      v48 = swift_slowAlloc();
      v53 = v48;
      *v34 = 136315394;
      v35 = sub_100102F80(0x6F6C42646E656D61, 0xEA00000000006B63, &v53);
      v46 = v34;
      *(v34 + 4) = v35;
      *(v34 + 12) = 2080;
      StoredPhoto.localIdentifier.getter();
      sub_100010E9C(&qword_10012A1C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = v51;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v31;
      v39 = v38;
      (*(v5 + 8))(v10, v36);
      (*(v12 + 8))(v14, v11);
      v40 = sub_100102F80(v37, v39, &v53);

      v42 = v45;
      v41 = v46;
      *(v46 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v42, v47, "%s: trying to run amend block for %s, but the provider has no valid data", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v12 + 8))(v14, v11);
    }

    (*(v49 + 8))(v19, v50);
  }

  v43 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace();
  return (*(*(v43 - 8) + 56))(v52, 1, 1, v43);
}

uint64_t sub_1000103E0()
{
  sub_10000C304((v0 + 16));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100010444(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100010458(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1000104A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001053C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012A1B8, &qword_100108F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000105AC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  v3 = type metadata accessor for DailyID();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10001074C, 0, 0);
}

uint64_t sub_10001074C()
{
  DailyID.id.getter();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1000107F0;
  v2 = *(v0 + 152);

  return sub_10000EB64(v2);
}

uint64_t sub_1000107F0()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100010DD8;
  }

  else
  {
    v5 = sub_100010960;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100010960()
{
  v44 = v0;
  v1 = *(v0[9] + 56);
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[18];
    v41 = sub_10006465C(*(v2 + 16), 0);
    v5 = sub_10006B7BC(&v43, &v41[(*(v4 + 80) + 32) & ~*(v4 + 80)], v3, v2);
    v6 = v43;

    result = sub_100010E54(v6);
    if (v5 != v3)
    {
      __break(1u);
      return result;
    }

    v8 = v41;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[8];
  os_unfair_lock_unlock((v1 + 28));
  sub_10000560C(&qword_10012A1C8, &unk_100109560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001089C0;
  v16 = sub_100010E9C(&qword_10012A1D0, v15, type metadata accessor for DailyProvider, &unk_100108F04);
  *(inited + 32) = j___s10PhotosFace13TimeUtilitiesO12currentEpochSivgZ(v11, v16);
  *(inited + 40) = v8;
  v17 = sub_10005D7D0(inited);
  swift_setDeallocating();

  sub_10000C460(inited + 32, &qword_10012A1D8, &unk_100108F40);
  static Log.daily.getter();
  (*(v10 + 16))(v9, v13, v12);

  v18 = Logger.logObject.getter();
  LOBYTE(v11) = static os_log_type_t.default.getter();

  v42 = v11;
  v19 = os_log_type_enabled(v18, v11);
  v20 = v0[15];
  v21 = v0[16];
  v22 = v0[13];
  v23 = v0[14];
  v24 = v8;
  v26 = v0[11];
  v25 = v0[12];
  if (v19)
  {
    v40 = v0[16];
    v27 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v27 = 136315650;
    sub_100010E9C(&qword_10012A1E0, 255, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
    log = v18;
    v39 = v23;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v25 + 8))(v22, v26);
    v31 = sub_100102F80(v28, v30, &v43);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2048;
    v32 = *(v24 + 2);

    *(v27 + 14) = v32;

    *(v27 + 22) = 2080;
    sub_10000560C(&qword_100129E80, &unk_1001091F0);
    v33 = Dictionary.description.getter();
    v35 = v17;
    v36 = sub_100102F80(v33, v34, &v43);

    *(v27 + 24) = v36;
    _os_log_impl(&_mh_execute_header, log, v42, "%s: Found %ld daily photos: %s", v27, 0x20u);
    swift_arrayDestroy();

    (*(v20 + 8))(v40, v39);
  }

  else
  {

    (*(v25 + 8))(v22, v26);
    (*(v20 + 8))(v21, v23);
    v35 = v17;
  }

  v37 = v0[1];

  return v37(v35);
}

uint64_t sub_100010DD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100010E5C(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    return sub_10000DA14(*(v1 + 16));
  }

  return result;
}

uint64_t sub_100010E9C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_100010EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = static TimeUtilities.currentEpoch.getter();
  v7 = static TimeUtilities.currentEpoch.getter();
  if (__OFADD__(v7, a3))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 + a3 < v6)
  {
LABEL_8:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  __chkstk_darwin(v7);
  v12[2] = a1;
  v12[3] = a2;
  if (sub_100011154(sub_10001293C, v12, v6, v8)[2])
  {
    sub_10000560C(&qword_10012A300, &qword_100108FF8);
    v9 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v9 = &_swiftEmptyDictionarySingleton;
  }

  v13 = v9;

  sub_100012200(v10, 1, &v13);

  return v13;
}

void *sub_100011014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v5 = static TimeUtilities.currentEpoch.getter();
  v6 = static TimeUtilities.currentEpoch.getter();
  if (__OFADD__(v6, a3))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 + a3 < v5)
  {
LABEL_8:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  __chkstk_darwin(v6);
  v11[2] = &v13;
  v11[3] = a2;
  if (sub_100011154(sub_1000128E0, v11, v5, v7)[2])
  {
    sub_10000560C(&qword_10012A300, &qword_100108FF8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v8 = &_swiftEmptyDictionarySingleton;
  }

  v12 = v8;

  sub_100012200(v9, 1, &v12);

  return v12;
}

void *sub_100011154(void (*a1)(unint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v7 = a3;
  v25 = _swiftEmptyArrayStorage;
  sub_10005C4E8(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v25;
    v9 = a4;
    if (a4 <= v7)
    {
      v9 = v7;
    }

    v19 = v9 - v7 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v11 = v7;
      v22 = v7 + v8;
      a1(&v23, &v22);
      if (v4)
      {
        goto LABEL_22;
      }

      v13 = v23;
      v12 = v24;
      v25 = v6;
      v15 = v6[2];
      v14 = v6[3];
      if (v15 >= v14 >> 1)
      {
        v17 = v24;
        sub_10005C4E8((v14 > 1), v15 + 1, 1);
        v12 = v17;
        v6 = v25;
      }

      v6[2] = v15 + 1;
      v16 = &v6[2 * v15];
      v16[4] = v13;
      v16[5] = v12;
      if (a4 < v11)
      {
        goto LABEL_18;
      }

      if (v19 == ++v8)
      {
        goto LABEL_19;
      }

      v7 = v11;
      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void *sub_1000112D8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = type metadata accessor for UUID();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_10005C508(0, v9, 0);
  v10 = v21;
  v11 = (a3 + 32);
  v16[1] = v6 + 32;
  while (1)
  {
    v12 = *v11++;
    v20 = v12;
    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_10005C508((v13 > 1), v14 + 1, 1);
      v10 = v21;
    }

    v10[2] = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void sub_100011488(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = a1;
  v2 = sub_10000560C(&qword_10012A200, &qword_100108F60);
  __chkstk_darwin(v2 - 8);
  v4 = &v22[-v3];
  v5 = sub_10000560C(&qword_10012A310, &qword_100109008);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v22[-v10];
  sub_10000560C(&qword_10012A088, &qword_100108E40);
  swift_getOpaqueTypeConformance2();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v12 = *(v6 + 8);
  v23 = v5;
  v13 = v5;
  v14 = v12;
  v12(v9, v13);
  v15 = dispatch thunk of Collection.subscript.read();
  v17 = *v16;
  v15(v22, 0);
  v18 = [v17 uuid];

  if (v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    v19 = type metadata accessor for UUID();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v4, 1, v19) != 1)
    {
      v14(v11, v23);
      (*(v20 + 32))(v21, v4, v19);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100011774(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000560C(&qword_10012A200, &qword_100108F60);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v9 = *(a2 + 8 * a1 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_11;
  }

  v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v10 = v9;
  v11 = [v9 uuid];

  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) != 1)
  {
    (*(v13 + 32))(a3, v8, v12);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100011914(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ShuffleID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100011A4C, 0, 0);
}

uint64_t sub_100011A4C()
{
  v71 = v0;
  ShuffleID.people.getter();
  v1 = ShuffleID.pets.getter();
  v2 = ShuffleID.nature.getter();
  v3 = ShuffleID.cityscape.getter();
  v4 = objc_allocWithZone(PFCShuffle);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithPeople:isa pets:v1 & 1 nature:v2 & 1 cityscape:v3 & 1];

  v7 = [objc_opt_self() assetsForShuffle:v6];
  v8 = v0[5];
  v9 = v0[6];
  if (v7)
  {
    v10 = v7;
    v68 = v6;
    v11 = v0[8];
    v13 = v0[3];
    v12 = v0[4];
    v14 = v0[2];
    sub_1000121B4();
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = sub_100011014(v15, *(v12 + 16), v13);
    static Log.shuffle.getter();
    (*(v9 + 16))(v11, v14, v8);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v66 = v18;
      v19 = v0[8];
      v20 = v0[5];
      v21 = v0[6];
      v22 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v22 = 136315906;
      sub_100012170(&qword_10012A2F0, &protocol conformance descriptor for ShuffleID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v21 + 8))(v19, v20);
      v26 = sub_100102F80(v23, v25, v70);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      sub_10001256C(v16);
      v27 = Dictionary.description.getter();
      v29 = v28;

      v30 = sub_100102F80(v27, v29, v70);

      *(v22 + 14) = v30;
      *(v22 + 22) = 2048;
      if (v15 >> 62)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v31 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = v0[12];
      v33 = v0[9];
      v34 = v0[10];

      *(v22 + 24) = v31;

      *(v22 + 32) = 2080;
      sub_10000560C(&qword_100129E80, &unk_1001091F0);
      v35 = Dictionary.description.getter();
      v37 = sub_100102F80(v35, v36, v70);

      *(v22 + 34) = v37;
      _os_log_impl(&_mh_execute_header, v17, v66, "%s: Picked %s out of %ld photos: %s", v22, 0x2Au);
      swift_arrayDestroy();

      (*(v34 + 8))(v32, v33);
    }

    else
    {
      v54 = v0[12];
      v55 = v0[9];
      v56 = v0[10];
      v57 = v0[8];
      v58 = v0[5];
      v59 = v0[6];
      swift_bridgeObjectRelease_n();

      (*(v59 + 8))(v57, v58);
      (*(v56 + 8))(v54, v55);
    }

    v60 = v0[1];

    return v60(v16);
  }

  else
  {
    v38 = v0[7];
    v39 = v0[2];
    static Log.shuffle.getter();
    (*(v9 + 16))(v38, v39, v8);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[10];
    v67 = v0[11];
    v44 = v0[9];
    v46 = v0[6];
    v45 = v0[7];
    v47 = v0[5];
    if (v42)
    {
      v69 = v6;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v70[0] = v49;
      *v48 = 136315138;
      sub_100012170(&qword_10012A2F0, &protocol conformance descriptor for ShuffleID);
      v65 = v44;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v41;
      v52 = v51;
      (*(v46 + 8))(v45, v47);
      v53 = sub_100102F80(v50, v52, v70);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v40, v64, "Couldn't find shuffle %s", v48, 0xCu);
      sub_10000C304(v49);

      v6 = v69;

      (*(v43 + 8))(v67, v65);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
      (*(v43 + 8))(v67, v44);
    }

    sub_10000D790();
    swift_allocError();
    *v62 = 1;
    swift_willThrow();

    v63 = v0[1];

    return v63();
  }
}

uint64_t sub_100012170(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShuffleID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000121B4()
{
  result = qword_10012A2F8;
  if (!qword_10012A2F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012A2F8);
  }

  return result;
}

uint64_t sub_100012200(void *a1, char a2, void *a3)
{
  v44 = a1[2];
  if (!v44)
  {
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_100057BD0(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_100058158();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10000560C(&qword_10012A308, &qword_100109000);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_29;
  }

  sub_10005932C(v13, a2 & 1);
  v17 = sub_100057BD0(v7);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_29:
    _StringGuts.grow(_:)(30);
    v42._object = 0x8000000100107010;
    v42._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v42);
    _print_unlocked<A, B>(_:_:)();
    v43._countAndFlagsBits = 39;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v20[6] + 8 * v14) = v7;
  *(v20[7] + 8 * v14) = v6;
  v21 = v20[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20[2] = v23;
  if (v44 != 1)
  {
    v24 = a1 + 7;
    v25 = 1;
    while (v25 < a1[2])
    {
      v27 = *(v24 - 1);
      v26 = *v24;
      v28 = *a3;
      v29 = sub_100057BD0(v27);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_25;
      }

      v34 = v29;
      v35 = v30;
      v36 = v28[3];

      if (v36 < v33)
      {
        sub_10005932C(v33, 1);
        v37 = sub_100057BD0(v27);
        if ((v35 & 1) != (v38 & 1))
        {
          goto LABEL_28;
        }

        v34 = v37;
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      *(v39[6] + 8 * v34) = v27;
      *(v39[7] + 8 * v34) = v26;
      v40 = v39[2];
      v22 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      ++v25;
      v39[2] = v41;
      v24 += 2;
      if (v44 == v25)
      {
      }
    }

    goto LABEL_27;
  }
}

void *sub_10001256C(uint64_t a1)
{
  sub_10000560C(&qword_10012A0C8, &qword_100109580);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v21 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v20 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = *(*(v21 + 48) + 8 * v15);
      swift_getKeyPath();

      swift_getAtKeyPath();

      *(v20 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v3[6] + 8 * v15) = v16;
      *(v3[7] + 8 * v15) = v22;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      v3[2] = v19;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001271C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v6 = *a1;
  sub_10000560C(&qword_10012A088, &qword_100108E40);
  swift_getOpaqueTypeConformance2();
  dispatch thunk of Collection.count.getter();
  v7 = pickPhotos(totalCount:day:picking:)();
  v10[2] = a2;
  v8 = sub_1000112D8(sub_10001295C, v10, v7);

  *a4 = v6;
  a4[1] = v8;
  return result;
}

uint64_t sub_1000127F8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a4@<X8>)
{
  v5 = *a1;
  v10 = *a2;
  if (v10 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = pickPhotos(totalCount:day:picking:)();
  __chkstk_darwin(v6);
  v9[2] = &v10;
  v7 = sub_1000112D8(sub_100012900, v9, v6);

  *a4 = v5;
  a4[1] = v7;
  return result;
}

uint64_t sub_100012994(int a1, uint64_t (*a2)(char *, char *, uint64_t), char *a3)
{
  v64 = a3;
  v63 = a2;
  LODWORD(v67) = a1;
  v3 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  __chkstk_darwin(v3 - 8);
  v60 = &v52 - v4;
  v5 = type metadata accessor for Logger();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProtocolVersion();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for MessageBody();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Message.Operation();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for Message();
  v56 = *(v61 - 8);
  v13 = *(v56 + 64);
  v14 = __chkstk_darwin(v61);
  v15 = __chkstk_darwin(v14);
  v17 = &v52 - v16;
  __chkstk_darwin(v15);
  v19 = &v52 - v18;
  *v12 = v67;
  (*(v10 + 104))(v12, enum case for Message.Operation.event(_:), v9);
  v66[0] = v63;
  v66[1] = v64;
  sub_100041E80(v63, v64);
  static ProtocolVersion.current.getter();
  v20 = v65;
  MessageBody.init<A>(serializable:version:)();
  if (v20)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v22 = v67;
  v64 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v13;
  Message.init(operation:content:complete:)();
  v23 = v62;
  static Log.network.getter();
  v24 = v56;
  v25 = v61;
  v63 = *(v56 + 16);
  v63(v17, v19, v61);
  v26 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v26, v53);
  v55 = v19;
  if (v27)
  {
    v52 = v26;
    v28 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v28 = 136315394;
    v29 = 0x6E79536D75626C61;
    v30 = 0xD000000000000010;
    v31 = 0x8000000100106E60;
    if (v22 != 2)
    {
      v30 = 0x6E7953796C696164;
      v31 = 0xEE00796461655263;
    }

    if (v22)
    {
      v29 = 0xD000000000000010;
      v32 = 0x8000000100106E80;
    }

    else
    {
      v32 = 0xEE00796461655263;
    }

    if (v22 <= 1u)
    {
      v33 = v29;
    }

    else
    {
      v33 = v30;
    }

    if (v22 <= 1u)
    {
      v34 = v32;
    }

    else
    {
      v34 = v31;
    }

    v35 = sub_100102F80(v33, v34, v66);

    *(v28 + 4) = v35;
    *(v28 + 12) = 2080;
    v36 = Message.shortDescription.getter();
    v38 = v37;
    v39 = *(v24 + 8);
    v54 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40 = v17;
    v41 = v61;
    v67 = v39;
    v39(v40, v61);
    v42 = sub_100102F80(v36, v38, v66);
    v25 = v41;

    *(v28 + 14) = v42;
    v43 = v52;
    _os_log_impl(&_mh_execute_header, v52, v53, "[NMC] Sending event %s: %s", v28, 0x16u);
    swift_arrayDestroy();

    (*(v58 + 8))(v62, v59);
  }

  else
  {

    v44 = *(v24 + 8);
    v54 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v67 = v44;
    v44(v17, v25);
    (*(v58 + 8))(v23, v59);
  }

  v45 = v57;
  v46 = type metadata accessor for TaskPriority();
  v47 = v60;
  (*(*(v46 - 8) + 56))(v60, 1, 1, v46);
  v48 = v64;
  v49 = v55;
  v63(v64, v55, v25);
  v50 = (*(v24 + 80) + 40) & ~*(v24 + 80);
  v51 = swift_allocObject();
  *(v51 + 2) = 0;
  *(v51 + 3) = 0;
  *(v51 + 4) = v45;
  (*(v24 + 32))(&v51[v50], v48, v25);

  sub_100005654(0, 0, v47, &unk_1001090E8, v51);

  return v67(v49, v25);
}

void *sub_100013078(uint64_t a1)
{
  v31 = type metadata accessor for UUID();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v29[1] = v1;
  v40 = _swiftEmptyArrayStorage;
  sub_10005C508(0, v6, 0);
  v7 = v40;
  v39 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v34 = v3 + 32;
  v35 = v3 + 16;
  v30 = a1 + 64;
  v11 = v31;
  v32 = v6;
  v33 = a1;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v39 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_22;
    }

    v36 = v10;
    v38 = *(a1 + 36);
    v14 = *(v3 + 72);
    (*(v3 + 16))(v5, *(a1 + 48) + v14 * v9, v11);
    v40 = v7;
    v15 = v11;
    v17 = v7[2];
    v16 = v7[3];
    v18 = (v17 + 1);
    if (v17 >= v16 >> 1)
    {
      v37 = (v17 + 1);
      sub_10005C508((v16 > 1), v17 + 1, 1);
      v18 = v37;
      v7 = v40;
    }

    v7[2] = v18;
    v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v37 = v7;
    v20 = v7 + v19 + v17 * v14;
    v21 = v3;
    result = (*(v3 + 32))(v20, v5, v15);
    v12 = 1 << *(v33 + 32);
    if (v9 >= v12)
    {
      goto LABEL_23;
    }

    v22 = *(v39 + 8 * v13);
    if ((v22 & (1 << v9)) == 0)
    {
      goto LABEL_24;
    }

    v11 = v15;
    a1 = v33;
    if (v38 != *(v33 + 36))
    {
      goto LABEL_25;
    }

    v23 = v22 & (-2 << (v9 & 0x3F));
    if (v23)
    {
      v12 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v13 << 6;
      v25 = v13 + 1;
      v26 = (v30 + 8 * v13);
      while (v25 < (v12 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_100042AF0(v9, v38, 0);
          v12 = __clz(__rbit64(v27)) + v24;
          goto LABEL_19;
        }
      }

      result = sub_100042AF0(v9, v38, 0);
LABEL_19:
      v11 = v31;
    }

    v10 = v36 + 1;
    v9 = v12;
    v3 = v21;
    v7 = v37;
    if (v36 + 1 == v32)
    {
      return v7;
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
  return result;
}

uint64_t sub_1000133BC()
{
  static Platform.current.getter();
  v1 = Platform.rawValue.getter();
  if (v1 == Platform.rawValue.getter())
  {
    v2 = *(v0[2] + 16);
    v0[3] = v2;

    return _swift_task_switch(sub_100013480, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100013480()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_100109068;
  *(v2 + 24) = v1;

  sub_1000FCA38(1, &unk_100109070, v2);

  return _swift_task_switch(sub_100013550, 0, 0);
}

uint64_t sub_100013550()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1000135BC, v1, 0);
}

uint64_t sub_1000135BC()
{
  sub_1000FCA38(3, &unk_100109080, *(v0 + 16));

  return _swift_task_switch(sub_100013648, 0, 0);
}

uint64_t sub_100013648()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1000136B4, v1, 0);
}

uint64_t sub_1000136B4()
{
  sub_1000FCA38(2, &unk_100109090, *(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100013758()
{
  v1 = sub_100041B5C();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000137F8;

  return sub_100014318(v1);
}

uint64_t sub_1000137F8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100013978;
  }

  else
  {

    v2 = sub_100013914;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013914()
{
  sub_100103EAC(2);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100013978()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000139DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100013A6C;

  return sub_100013BB8();
}

uint64_t sub_100013A6C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;

  if (v3)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    v11 = *(v8 + 8);

    return v11(a1, a2, a3 & 1);
  }
}

uint64_t sub_100013BD8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100013C70;

  return GalleryDatabase.queryList()();
}

uint64_t sub_100013C70(uint64_t a1)
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
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_100013DBC, 0, 0);
  }
}

uint64_t sub_100013DBC()
{
  v1 = *(v0[4] + 16);

  if (v1)
  {
LABEL_2:
    v2 = v0[1];

    return v2(0, 0, 1);
  }

  v4 = sub_100041B5C();
  v0[5] = v4;
  if (!v4[2])
  {

    goto LABEL_2;
  }

  v5 = v4;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_100013EC0;

  return sub_100014318(v5);
}

uint64_t sub_100013EC0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100014224;
  }

  else
  {

    v2 = sub_100013FDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100014084;

  return sub_100014A8C();
}

uint64_t sub_100014084()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1000141B4, 0, 0);
  }
}

uint64_t sub_1000141B4()
{
  sub_100103EAC(2);
  v1 = *(v0 + 8);

  return v1(0, 0, 1);
}

uint64_t sub_100014224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100014288()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100043E40;

  return sub_100013BB8();
}

uint64_t sub_100014318(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ShuffleID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000143D8, 0, 0);
}

uint64_t sub_1000143D8()
{
  v0[7] = *(v0[3] + 32);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100014474;

  return GalleryDatabase.deleteAll()();
}

uint64_t sub_100014474()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1000145C0, 0, 0);
  }
}

uint64_t sub_1000145C0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v2 + 32);
  *(v0 + 104) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 72) = v6;
    *(v0 + 80) = v8;
    (*(v1 + 16))(*(v0 + 48), *(v7 + 48) + *(v1 + 72) * (__clz(__rbit64(v6)) | (v8 << 6)), *(v0 + 32));
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v10[1] = sub_100014750;
    v11 = *(v0 + 48);

    return GalleryDatabase.insert(id:)(v11);
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100014750()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[5] + 8))(v2[6], v2[4]);
  if (v0)
  {
    v3 = sub_100014A20;
  }

  else
  {
    v3 = sub_1000148B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000148B8(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = (*(v1 + 72) - 1) & *(v1 + 72);
  if (v3)
  {
    v4 = *(v1 + 16);
LABEL_7:
    *(v1 + 72) = v3;
    *(v1 + 80) = v2;
    (*(*(v1 + 40) + 16))(*(v1 + 48), *(v4 + 48) + *(*(v1 + 40) + 72) * (__clz(__rbit64(v3)) | (v2 << 6)), *(v1 + 32));
    v6 = swift_task_alloc();
    *(v1 + 88) = v6;
    *v6 = v1;
    v6[1] = sub_100014750;
    a1 = *(v1 + 48);

    return GalleryDatabase.insert(id:)(a1);
  }

  else
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return GalleryDatabase.insert(id:)(a1);
      }

      if (v5 >= (((1 << *(v1 + 104)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v1 + 16);
      v3 = *(v4 + 8 * v5 + 56);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    v7 = *(v1 + 8);

    return v7();
  }
}

uint64_t sub_100014A20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100014A8C()
{
  v1[2] = v0;
  v2 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for ShuffleID();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for CommunicationActor();
  v1[22] = static CommunicationActor.shared.getter();
  v1[23] = static CommunicationActor.shared.getter();
  v5 = type metadata accessor for GalleryDatabase();
  v6 = sub_1000438BC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  v7 = swift_task_alloc();
  v1[24] = v7;
  *v7 = v1;
  v7[1] = sub_100014D28;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v5, v6);
}

uint64_t sub_100014D28(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  v3[27] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_100015788;
  }

  else
  {
    v6 = sub_100014EBC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100014EBC()
{

  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 224) = v2;
  *(v0 + 232) = v1;

  return _swift_task_switch(sub_100014F48, v2, v1);
}

uint64_t sub_100014F48(uint64_t a1)
{
  v83 = v1;
  v2 = v1[25];
  v3 = *(v2 + 16);
  v1[30] = v3;
  if (!v3)
  {

    static Log.session.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v1[20];
    v27 = v1[13];
    v26 = v1[14];
    if (v24)
    {
      v80 = v1[20];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v82[0] = v29;
      *v28 = 136315138;
      v30 = PhotosFaceType.description.getter();
      v32 = v31;

      v33 = sub_100102F80(v30, v32, v82);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "No %s faces. Exiting.", v28, 0xCu);
      sub_10000C304(v29);

      (*(v26 + 8))(v80, v27);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }

    v47 = v1[1];
    goto LABEL_14;
  }

  static Log.session.getter();
  swift_bridgeObjectRetain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[19];
  v8 = v1[13];
  v9 = v1[14];
  if (v6)
  {
    v79 = v1[19];
    v10 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v10 = 134218498;
    *(v10 + 4) = *(v2 + 16);
    *(v10 + 12) = 2080;
    v11 = PhotosFaceType.description.getter();
    v77 = v8;
    v13 = v12;

    v14 = sub_100102F80(v11, v13, v82);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2080;
    v15 = Array.description.getter();
    v17 = v16;
    swift_bridgeObjectRelease_n();
    v18 = sub_100102F80(v15, v17, v82);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Processing %ld %s: %s", v10, 0x20u);
    swift_arrayDestroy();

    v21 = *(v9 + 8);
    v20 = v9 + 8;
    v19 = v21;
    v21(v79, v77);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v34 = *(v9 + 8);
    v20 = v9 + 8;
    v19 = v34;
    v34(v7, v8);
  }

  v1[31] = v20;
  v1[32] = v19;
  v35 = v1[7];
  v36 = v1[25];
  v37 = v1[26];
  v1[36] = 0;
  v1[37] = 0;
  v1[35] = 0;
  v38 = *(v36 + 16);

  if (!v38)
  {
    __break(1u);
    return result;
  }

  v42 = *(v35 + 16);
  v41 = v35 + 16;
  v40 = v42;
  v43 = v1[12];
  v44 = v1[6];
  v45 = (*(v41 + 64) + 32) & ~*(v41 + 64);
  v1[38] = v42;
  v1[39] = v41 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v42(v43, result + v45, v44);
  static Task<>.checkCancellation()();
  v46 = v1[6];
  if (v37)
  {
    (*(v1[7] + 8))(v1[12], v1[6]);

    swift_bridgeObjectRelease_n();

    v47 = v1[1];
LABEL_14:

    return v47();
  }

  v49 = v1[11];
  v48 = v1[12];
  static Log.photos.getter();
  v40(v49, v48, v46);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v1[32];
  v54 = v1[17];
  v55 = v1[13];
  v56 = v1[11];
  if (v52)
  {
    v75 = v51;
    v57 = v1[10];
    v73 = v1[7];
    v78 = v1[17];
    v81 = v1[32];
    v58 = v1[6];
    log = v50;
    v59 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v59 = 136315394;
    v76 = v55;
    v60 = PhotosFaceType.description.getter();
    v62 = v61;

    v63 = sub_100102F80(v60, v62, v82);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v40(v57, v56, v58);
    v64 = *(v73 + 8);
    v64(v56, v58);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v64(v57, v58);
    v68 = sub_100102F80(v65, v67, v82);

    *(v59 + 14) = v68;
    _os_log_impl(&_mh_execute_header, log, v75, "Processing %s face %s", v59, 0x16u);
    swift_arrayDestroy();

    v81(v78, v76);
  }

  else
  {
    v64 = *(v1[7] + 8);
    v64(v1[11], v1[6]);

    v53(v54, v55);
  }

  v1[42] = v64;
  v69 = static TestProperties.bufferSize.getter();
  v70 = swift_task_alloc();
  v1[43] = v70;
  *v70 = v1;
  v70[1] = sub_100015AE0;
  v71 = v1[12];
  v72 = v1[5];

  return sub_1000203C4(v72, v71, v69);
}

uint64_t sub_100015788()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100043E34, v1, v0);
}

uint64_t sub_100015814()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_100043E38;
  }

  else
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_100015930;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100015930()
{
  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  *v1 = v0;
  v1[1] = sub_1000159C4;

  return sub_10006254C();
}

uint64_t sub_1000159C4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_100043E3C;
  }

  else
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_100043E24;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100015AE0()
{
  v2 = *v1;
  v2[44] = v0;

  if (v0)
  {
    v3 = v2[28];
    v4 = v2[29];

    return _swift_task_switch(sub_100015E24, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[45] = v5;
    v6 = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
    *v5 = v2;
    v5[1] = sub_100015C94;
    v7 = v2[3];

    return AsyncSequence.collect()(v7, v6);
  }
}

uint64_t sub_100015C94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[46] = a1;
  v4[47] = v1;

  (*(v3[4] + 8))(v3[5], v3[3]);
  v5 = v3[29];
  v6 = v3[28];
  if (v1)
  {
    v7 = sub_100016E84;
  }

  else
  {
    v7 = sub_100016624;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100015E24(uint64_t a1)
{
  v78 = v1;
  v2 = v1[38];
  v3 = v1[12];
  v4 = v1[8];
  v5 = v1[6];
  static Log.photos.getter();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[38];
    v74 = v1[32];
    v68 = v1[13];
    v70 = v1[15];
    v72 = v1[12];
    v67 = v7;
    v9 = v1[10];
    v10 = v1[6];
    v11 = v1[8];
    v12 = v1[42];
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    log = swift_slowAlloc();
    v77[0] = log;
    *v13 = 136315394;
    v8(v9, v11, v10);
    v12(v11, v10);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v12(v9, v10);
    v17 = sub_100102F80(v14, v16, v77);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v63 = v18;
    _os_log_impl(&_mh_execute_header, v6, v67, "Failed to process face %s with error %@", v13, 0x16u);
    sub_10000C460(v63, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v74(v70, v68);
    result = (v12)(v72, v10);
  }

  else
  {
    v75 = v1[32];
    v20 = v1[15];
    v22 = v1[12];
    v21 = v1[13];
    v23 = v1[6];
    v24 = v6;
    v25 = v1[42];
    v25(v1[8], v23);

    v75(v20, v21);
    result = v25(v22, v23);
  }

  v27 = v1[36];
  v26 = v1[37];
  v1[48] = v26;
  v28 = v1[35] + 1;
  if (v28 == v1[30])
  {

    v29 = swift_task_alloc();
    v1[33] = v29;
    *v29 = v1;
    v29[1] = sub_100015814;

    return sub_10002D750();
  }

  else
  {
    v1[36] = v27;
    v1[37] = v26;
    v1[35] = v28;
    v30 = v1[25];
    if (v28 >= *(v30 + 16))
    {
      __break(1u);
    }

    else
    {
      v31 = v1[12];
      v32 = v1[6];
      v33 = v1[7];
      v35 = *(v33 + 16);
      v33 += 16;
      v34 = v35;
      v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64)) + *(v33 + 56) * v28;
      v1[38] = v35;
      v1[39] = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v35(v31, v36, v32);
      static Task<>.checkCancellation()();
      v37 = v1[6];
      v39 = v1[11];
      v38 = v1[12];
      static Log.photos.getter();
      v35(v39, v38, v37);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v1[32];
      v44 = v1[17];
      v45 = v1[13];
      v46 = v1[11];
      if (v42)
      {
        v69 = v41;
        v47 = v1[10];
        v64 = v1[7];
        v73 = v1[17];
        v76 = v1[32];
        v48 = v1[6];
        loga = v40;
        v49 = swift_slowAlloc();
        v77[0] = swift_slowAlloc();
        *v49 = 136315394;
        v71 = v45;
        v50 = PhotosFaceType.description.getter();
        v52 = v51;

        v53 = sub_100102F80(v50, v52, v77);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v34(v47, v46, v48);
        v54 = *(v64 + 8);
        v54(v46, v48);
        sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v54(v47, v48);
        v58 = sub_100102F80(v55, v57, v77);

        *(v49 + 14) = v58;
        _os_log_impl(&_mh_execute_header, loga, v69, "Processing %s face %s", v49, 0x16u);
        swift_arrayDestroy();

        v76(v73, v71);
      }

      else
      {
        v54 = *(v1[7] + 8);
        v54(v1[11], v1[6]);

        v43(v44, v45);
      }

      v1[42] = v54;
      v59 = static TestProperties.bufferSize.getter();
      v60 = swift_task_alloc();
      v1[43] = v60;
      *v60 = v1;
      v60[1] = sub_100015AE0;
      v61 = v1[12];
      v62 = v1[5];

      return sub_1000203C4(v62, v61, v59);
    }
  }

  return result;
}

uint64_t sub_100016624(uint64_t a1)
{
  v84 = v1;
  v2 = v1[38];
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[6];
  static Log.photos.getter();
  v2(v4, v3, v5);
  swift_bridgeObjectRetain_n();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  log = v6;
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[46];
  v81 = v1[42];
  if (v8)
  {
    v69 = v1[38];
    v77 = v1[32];
    v71 = v1[13];
    v73 = v1[16];
    v74 = v1[12];
    v11 = v1[9];
    v10 = v1[10];
    v12 = v1[6];
    v13 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v13 = 136315650;
    v14 = PhotosFaceType.description.getter();
    v16 = v15;

    v17 = sub_100102F80(v14, v16, v83);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    LOBYTE(v16) = v7;
    v18 = *(v9 + 16);

    *(v13 + 14) = v18;

    *(v13 + 22) = 2080;
    v69(v10, v11, v12);
    v81(v11, v12);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v81(v10, v12);
    v22 = sub_100102F80(v19, v21, v83);

    *(v13 + 24) = v22;
    _os_log_impl(&_mh_execute_header, log, v16, "Processed %s %ld photos from %s", v13, 0x20u);
    swift_arrayDestroy();

    v77(v73, v71);
    v81(v74, v12);
  }

  else
  {
    v78 = v1[32];
    v23 = v1[16];
    v25 = v1[12];
    v24 = v1[13];
    v26 = v1[9];
    v27 = v1[6];

    v81(v26, v27);

    v78(v23, v24);
    v81(v25, v27);
  }

  v28 = v1[36];
  v29 = *(v1[46] + 16);

  v31 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_21;
  }

  v32 = v1[47];
  v1[48] = v31;
  v33 = v1[35] + 1;
  if (v33 == v1[30])
  {

    v34 = swift_task_alloc();
    v1[33] = v34;
    *v34 = v1;
    v34[1] = sub_100015814;

    return sub_10002D750();
  }

  v1[36] = v31;
  v1[37] = v31;
  v1[35] = v33;
  v35 = v1[25];
  if (v33 >= *(v35 + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v36 = v1[12];
  v37 = v1[6];
  v38 = v1[7];
  v40 = *(v38 + 16);
  v38 += 16;
  v39 = v40;
  v41 = v35 + ((*(v38 + 64) + 32) & ~*(v38 + 64)) + *(v38 + 56) * v33;
  v1[38] = v40;
  v1[39] = v38 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v36, v41, v37);
  static Task<>.checkCancellation()();
  v42 = v1[6];
  if (v32)
  {
    (*(v1[7] + 8))(v1[12], v1[6]);

    swift_bridgeObjectRelease_n();

    v43 = v1[1];

    return v43();
  }

  else
  {
    v45 = v1[11];
    v44 = v1[12];
    static Log.photos.getter();
    v39(v45, v44, v42);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v1[32];
    v50 = v1[17];
    v51 = v1[13];
    v52 = v1[11];
    if (v48)
    {
      v75 = v47;
      v53 = v1[10];
      v70 = v1[7];
      loga = v1[17];
      v82 = v1[32];
      v54 = v1[6];
      v72 = v46;
      v55 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v55 = 136315394;
      v76 = v51;
      v56 = PhotosFaceType.description.getter();
      v58 = v57;

      v59 = sub_100102F80(v56, v58, v83);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      v39(v53, v52, v54);
      v60 = *(v70 + 8);
      v60(v52, v54);
      sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v60(v53, v54);
      v64 = sub_100102F80(v61, v63, v83);

      *(v55 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v72, v75, "Processing %s face %s", v55, 0x16u);
      swift_arrayDestroy();

      v82(loga, v76);
    }

    else
    {
      v60 = *(v1[7] + 8);
      v60(v1[11], v1[6]);

      v49(v50, v51);
    }

    v1[42] = v60;
    v65 = static TestProperties.bufferSize.getter();
    v66 = swift_task_alloc();
    v1[43] = v66;
    *v66 = v1;
    v66[1] = sub_100015AE0;
    v67 = v1[12];
    v68 = v1[5];

    return sub_1000203C4(v68, v67, v65);
  }
}

uint64_t sub_100016E84(uint64_t a1)
{
  v78 = v1;
  v2 = v1[38];
  v3 = v1[12];
  v4 = v1[8];
  v5 = v1[6];
  static Log.photos.getter();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[38];
    v74 = v1[32];
    v68 = v1[13];
    v70 = v1[15];
    v72 = v1[12];
    v67 = v7;
    v9 = v1[10];
    v10 = v1[6];
    v11 = v1[8];
    v12 = v1[42];
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    log = swift_slowAlloc();
    v77[0] = log;
    *v13 = 136315394;
    v8(v9, v11, v10);
    v12(v11, v10);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v12(v9, v10);
    v17 = sub_100102F80(v14, v16, v77);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v63 = v18;
    _os_log_impl(&_mh_execute_header, v6, v67, "Failed to process face %s with error %@", v13, 0x16u);
    sub_10000C460(v63, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v74(v70, v68);
    result = (v12)(v72, v10);
  }

  else
  {
    v75 = v1[32];
    v20 = v1[15];
    v22 = v1[12];
    v21 = v1[13];
    v23 = v1[6];
    v24 = v6;
    v25 = v1[42];
    v25(v1[8], v23);

    v75(v20, v21);
    result = v25(v22, v23);
  }

  v27 = v1[36];
  v26 = v1[37];
  v1[48] = v26;
  v28 = v1[35] + 1;
  if (v28 == v1[30])
  {

    v29 = swift_task_alloc();
    v1[33] = v29;
    *v29 = v1;
    v29[1] = sub_100015814;

    return sub_10002D750();
  }

  else
  {
    v1[36] = v27;
    v1[37] = v26;
    v1[35] = v28;
    v30 = v1[25];
    if (v28 >= *(v30 + 16))
    {
      __break(1u);
    }

    else
    {
      v31 = v1[12];
      v32 = v1[6];
      v33 = v1[7];
      v35 = *(v33 + 16);
      v33 += 16;
      v34 = v35;
      v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64)) + *(v33 + 56) * v28;
      v1[38] = v35;
      v1[39] = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v35(v31, v36, v32);
      static Task<>.checkCancellation()();
      v37 = v1[6];
      v39 = v1[11];
      v38 = v1[12];
      static Log.photos.getter();
      v35(v39, v38, v37);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v1[32];
      v44 = v1[17];
      v45 = v1[13];
      v46 = v1[11];
      if (v42)
      {
        v69 = v41;
        v47 = v1[10];
        v64 = v1[7];
        v73 = v1[17];
        v76 = v1[32];
        v48 = v1[6];
        loga = v40;
        v49 = swift_slowAlloc();
        v77[0] = swift_slowAlloc();
        *v49 = 136315394;
        v71 = v45;
        v50 = PhotosFaceType.description.getter();
        v52 = v51;

        v53 = sub_100102F80(v50, v52, v77);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v34(v47, v46, v48);
        v54 = *(v64 + 8);
        v54(v46, v48);
        sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v54(v47, v48);
        v58 = sub_100102F80(v55, v57, v77);

        *(v49 + 14) = v58;
        _os_log_impl(&_mh_execute_header, loga, v69, "Processing %s face %s", v49, 0x16u);
        swift_arrayDestroy();

        v76(v73, v71);
      }

      else
      {
        v54 = *(v1[7] + 8);
        v54(v1[11], v1[6]);

        v43(v44, v45);
      }

      v1[42] = v54;
      v59 = static TestProperties.bufferSize.getter();
      v60 = swift_task_alloc();
      v1[43] = v60;
      *v60 = v1;
      v60[1] = sub_100015AE0;
      v61 = v1[12];
      v62 = v1[5];

      return sub_1000203C4(v62, v61, v59);
    }
  }

  return result;
}

uint64_t sub_100017684()
{
  v1[2] = v0;
  v2 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DailyID();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for CommunicationActor();
  v1[22] = static CommunicationActor.shared.getter();
  v1[23] = static CommunicationActor.shared.getter();
  v5 = type metadata accessor for DailyDatabase();
  v6 = sub_1000438BC(&qword_10012A468, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
  v7 = swift_task_alloc();
  v1[24] = v7;
  *v7 = v1;
  v7[1] = sub_100017920;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v5, v6);
}

uint64_t sub_100017920(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  v3[27] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_100015788;
  }

  else
  {
    v6 = sub_100017AB4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100017AB4()
{

  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 224) = v2;
  *(v0 + 232) = v1;

  return _swift_task_switch(sub_100017B40, v2, v1);
}

uint64_t sub_100017B40(uint64_t a1)
{
  v41 = v1;
  v2 = v1[25];
  v3 = *(v2 + 16);
  v1[30] = v3;
  if (v3)
  {
    static Log.session.getter();
    swift_bridgeObjectRetain_n();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v1[19];
    v8 = v1[13];
    v9 = v1[14];
    if (v6)
    {
      v38 = v1[19];
      v10 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v10 = 134218498;
      *(v10 + 4) = *(v2 + 16);
      *(v10 + 12) = 2080;
      v11 = PhotosFaceType.description.getter();
      v37 = v8;
      v13 = v12;

      v14 = sub_100102F80(v11, v13, &v40);

      *(v10 + 14) = v14;
      *(v10 + 22) = 2080;
      v15 = Array.description.getter();
      v17 = v16;
      swift_bridgeObjectRelease_n();
      v18 = sub_100102F80(v15, v17, &v40);

      *(v10 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v4, v5, "Processing %ld %s: %s", v10, 0x20u);
      swift_arrayDestroy();

      v21 = *(v9 + 8);
      v20 = v9 + 8;
      v19 = v21;
      v21(v38, v37);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v34 = *(v9 + 8);
      v20 = v9 + 8;
      v19 = v34;
      v34(v7, v8);
    }

    v1[31] = v20;
    v1[32] = v19;
    v1[33] = *(v1[2] + 32);

    return _swift_task_switch(sub_100017FA4, 0, 0);
  }

  else
  {

    static Log.session.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v1[20];
    v27 = v1[13];
    v26 = v1[14];
    if (v24)
    {
      v39 = v1[20];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315138;
      v30 = PhotosFaceType.description.getter();
      v32 = v31;

      v33 = sub_100102F80(v30, v32, &v40);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "No %s faces. Exiting.", v28, 0xCu);
      sub_10000C304(v29);

      (*(v26 + 8))(v39, v27);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }

    v35 = v1[1];

    return v35();
  }
}

uint64_t sub_100017FA4()
{
  v1 = *(v0[33] + 56);
  os_unfair_lock_lock((v1 + 28));
  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 28));
  v2 = v0[28];
  v3 = v0[29];

  return _swift_task_switch(sub_10001801C, v2, v3);
}

uint64_t sub_10001801C()
{
  v46 = v0;
  v1 = v0[7];
  v2 = v0[25];
  v3 = v0[26];
  v0[37] = 0;
  v0[38] = 0;
  v0[36] = 0;
  v4 = *(v2 + 16);

  if (v4)
  {
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v6 = v8;
    v9 = v0[12];
    v10 = v0[6];
    v11 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v0[39] = v8;
    v0[40] = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v9, result + v11, v10);
    static Task<>.checkCancellation()();
    v12 = v0[6];
    if (v3)
    {
      (*(v0[7] + 8))(v0[12], v0[6]);

      swift_bridgeObjectRelease_n();

      v13 = v0[1];

      return v13();
    }

    else
    {
      v15 = v0[11];
      v14 = v0[12];
      static Log.photos.getter();
      v6(v15, v14, v12);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = v0[32];
      v20 = v0[17];
      v21 = v0[13];
      v22 = v0[11];
      if (v18)
      {
        v41 = v17;
        v23 = v0[10];
        v39 = v0[7];
        v43 = v0[17];
        v44 = v0[32];
        v24 = v0[6];
        log = v16;
        v25 = swift_slowAlloc();
        v45[0] = swift_slowAlloc();
        *v25 = 136315394;
        v42 = v21;
        v26 = PhotosFaceType.description.getter();
        v28 = v27;

        v29 = sub_100102F80(v26, v28, v45);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        v6(v23, v22, v24);
        v30 = *(v39 + 8);
        v30(v22, v24);
        sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        v30(v23, v24);
        v34 = sub_100102F80(v31, v33, v45);

        *(v25 + 14) = v34;
        _os_log_impl(&_mh_execute_header, log, v41, "Processing %s face %s", v25, 0x16u);
        swift_arrayDestroy();

        v44(v43, v42);
      }

      else
      {
        v30 = *(v0[7] + 8);
        v30(v0[11], v0[6]);

        v19(v20, v21);
      }

      v0[43] = v30;
      v35 = static TestProperties.bufferSize.getter();
      v36 = swift_task_alloc();
      v0[44] = v36;
      *v36 = v0;
      v36[1] = sub_100018C84;
      v37 = v0[12];
      v38 = v0[5];

      return sub_100020A84(v38, v37, v35);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000184B8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_100018784;
  }

  else
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_1000185D4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000185D4()
{
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_100018668;

  return sub_10006254C();
}

uint64_t sub_100018668()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_100018B7C;
  }

  else
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_10001888C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100018784()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001888C()
{
  v23 = v0;

  static Log.session.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v21 = v0[32];
    v3 = v0[25];
    v20 = v0[18];
    v18 = v0[49];
    v19 = v0[13];
    v4 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v4 = 134218754;
    *(v4 + 4) = *(v3 + 16);
    *(v4 + 12) = 2080;
    v5 = PhotosFaceType.description.getter();
    v7 = v6;

    v8 = sub_100102F80(v5, v7, &v22);

    *(v4 + 14) = v8;
    *(v4 + 22) = 2048;
    *(v4 + 24) = v18;
    *(v4 + 32) = 2080;
    v9 = Array.description.getter();
    v11 = v10;
    swift_bridgeObjectRelease_n();
    v12 = sub_100102F80(v9, v11, &v22);

    *(v4 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Processed %ld %s faces: %ld photos in faces: %s", v4, 0x2Au);
    swift_arrayDestroy();

    v21(v20, v19);
  }

  else
  {
    v13 = v0[32];
    v14 = v0[18];
    v15 = v0[13];
    swift_bridgeObjectRelease_n();

    v13(v14, v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100018B7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018C84()
{
  v2 = *v1;
  v2[45] = v0;

  if (v0)
  {
    v3 = v2[28];
    v4 = v2[29];

    return _swift_task_switch(sub_100018FC8, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[46] = v5;
    v6 = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
    *v5 = v2;
    v5[1] = sub_100018E38;
    v7 = v2[3];

    return AsyncSequence.collect()(v7, v6);
  }
}

uint64_t sub_100018E38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  (*(v3[4] + 8))(v3[5], v3[3]);
  v5 = v3[29];
  v6 = v3[28];
  if (v1)
  {
    v7 = sub_10001A028;
  }

  else
  {
    v7 = sub_1000197C8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100018FC8(uint64_t a1)
{
  v78 = v1;
  v2 = v1[39];
  v3 = v1[12];
  v4 = v1[8];
  v5 = v1[6];
  static Log.photos.getter();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[39];
    v74 = v1[32];
    v68 = v1[13];
    v70 = v1[15];
    v72 = v1[12];
    v67 = v7;
    v9 = v1[10];
    v10 = v1[6];
    v11 = v1[8];
    v12 = v1[43];
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    log = swift_slowAlloc();
    v77[0] = log;
    *v13 = 136315394;
    v8(v9, v11, v10);
    v12(v11, v10);
    sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v12(v9, v10);
    v17 = sub_100102F80(v14, v16, v77);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v63 = v18;
    _os_log_impl(&_mh_execute_header, v6, v67, "Failed to process face %s with error %@", v13, 0x16u);
    sub_10000C460(v63, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v74(v70, v68);
    result = (v12)(v72, v10);
  }

  else
  {
    v75 = v1[32];
    v20 = v1[15];
    v22 = v1[12];
    v21 = v1[13];
    v23 = v1[6];
    v24 = v6;
    v25 = v1[43];
    v25(v1[8], v23);

    v75(v20, v21);
    result = v25(v22, v23);
  }

  v27 = v1[37];
  v26 = v1[38];
  v1[49] = v26;
  v28 = v1[36] + 1;
  if (v28 == v1[30])
  {

    v29 = swift_task_alloc();
    v1[34] = v29;
    *v29 = v1;
    v29[1] = sub_1000184B8;

    return sub_10002E4C4();
  }

  else
  {
    v1[37] = v27;
    v1[38] = v26;
    v1[36] = v28;
    v30 = v1[25];
    if (v28 >= *(v30 + 16))
    {
      __break(1u);
    }

    else
    {
      v31 = v1[12];
      v32 = v1[6];
      v33 = v1[7];
      v35 = *(v33 + 16);
      v33 += 16;
      v34 = v35;
      v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64)) + *(v33 + 56) * v28;
      v1[39] = v35;
      v1[40] = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v35(v31, v36, v32);
      static Task<>.checkCancellation()();
      v37 = v1[6];
      v39 = v1[11];
      v38 = v1[12];
      static Log.photos.getter();
      v35(v39, v38, v37);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v1[32];
      v44 = v1[17];
      v45 = v1[13];
      v46 = v1[11];
      if (v42)
      {
        v69 = v41;
        v47 = v1[10];
        v64 = v1[7];
        v73 = v1[17];
        v76 = v1[32];
        v48 = v1[6];
        loga = v40;
        v49 = swift_slowAlloc();
        v77[0] = swift_slowAlloc();
        *v49 = 136315394;
        v71 = v45;
        v50 = PhotosFaceType.description.getter();
        v52 = v51;

        v53 = sub_100102F80(v50, v52, v77);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v34(v47, v46, v48);
        v54 = *(v64 + 8);
        v54(v46, v48);
        sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v54(v47, v48);
        v58 = sub_100102F80(v55, v57, v77);

        *(v49 + 14) = v58;
        _os_log_impl(&_mh_execute_header, loga, v69, "Processing %s face %s", v49, 0x16u);
        swift_arrayDestroy();

        v76(v73, v71);
      }

      else
      {
        v54 = *(v1[7] + 8);
        v54(v1[11], v1[6]);

        v43(v44, v45);
      }

      v1[43] = v54;
      v59 = static TestProperties.bufferSize.getter();
      v60 = swift_task_alloc();
      v1[44] = v60;
      *v60 = v1;
      v60[1] = sub_100018C84;
      v61 = v1[12];
      v62 = v1[5];

      return sub_100020A84(v62, v61, v59);
    }
  }

  return result;
}

uint64_t sub_1000197C8(uint64_t a1)
{
  v84 = v1;
  v2 = v1[39];
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[6];
  static Log.photos.getter();
  v2(v4, v3, v5);
  swift_bridgeObjectRetain_n();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  log = v6;
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[47];
  v81 = v1[43];
  if (v8)
  {
    v69 = v1[39];
    v77 = v1[32];
    v71 = v1[13];
    v73 = v1[16];
    v74 = v1[12];
    v11 = v1[9];
    v10 = v1[10];
    v12 = v1[6];
    v13 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v13 = 136315650;
    v14 = PhotosFaceType.description.getter();
    v16 = v15;

    v17 = sub_100102F80(v14, v16, v83);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    LOBYTE(v16) = v7;
    v18 = *(v9 + 16);

    *(v13 + 14) = v18;

    *(v13 + 22) = 2080;
    v69(v10, v11, v12);
    v81(v11, v12);
    sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v81(v10, v12);
    v22 = sub_100102F80(v19, v21, v83);

    *(v13 + 24) = v22;
    _os_log_impl(&_mh_execute_header, log, v16, "Processed %s %ld photos from %s", v13, 0x20u);
    swift_arrayDestroy();

    v77(v73, v71);
    v81(v74, v12);
  }

  else
  {
    v78 = v1[32];
    v23 = v1[16];
    v25 = v1[12];
    v24 = v1[13];
    v26 = v1[9];
    v27 = v1[6];

    v81(v26, v27);

    v78(v23, v24);
    v81(v25, v27);
  }

  v28 = v1[37];
  v29 = *(v1[47] + 16);

  v31 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_21;
  }

  v32 = v1[48];
  v1[49] = v31;
  v33 = v1[36] + 1;
  if (v33 == v1[30])
  {

    v34 = swift_task_alloc();
    v1[34] = v34;
    *v34 = v1;
    v34[1] = sub_1000184B8;

    return sub_10002E4C4();
  }

  v1[37] = v31;
  v1[38] = v31;
  v1[36] = v33;
  v35 = v1[25];
  if (v33 >= *(v35 + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v36 = v1[12];
  v37 = v1[6];
  v38 = v1[7];
  v40 = *(v38 + 16);
  v38 += 16;
  v39 = v40;
  v41 = v35 + ((*(v38 + 64) + 32) & ~*(v38 + 64)) + *(v38 + 56) * v33;
  v1[39] = v40;
  v1[40] = v38 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v36, v41, v37);
  static Task<>.checkCancellation()();
  v42 = v1[6];
  if (v32)
  {
    (*(v1[7] + 8))(v1[12], v1[6]);

    swift_bridgeObjectRelease_n();

    v43 = v1[1];

    return v43();
  }

  else
  {
    v45 = v1[11];
    v44 = v1[12];
    static Log.photos.getter();
    v39(v45, v44, v42);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v1[32];
    v50 = v1[17];
    v51 = v1[13];
    v52 = v1[11];
    if (v48)
    {
      v75 = v47;
      v53 = v1[10];
      v70 = v1[7];
      loga = v1[17];
      v82 = v1[32];
      v54 = v1[6];
      v72 = v46;
      v55 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v55 = 136315394;
      v76 = v51;
      v56 = PhotosFaceType.description.getter();
      v58 = v57;

      v59 = sub_100102F80(v56, v58, v83);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      v39(v53, v52, v54);
      v60 = *(v70 + 8);
      v60(v52, v54);
      sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v60(v53, v54);
      v64 = sub_100102F80(v61, v63, v83);

      *(v55 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v72, v75, "Processing %s face %s", v55, 0x16u);
      swift_arrayDestroy();

      v82(loga, v76);
    }

    else
    {
      v60 = *(v1[7] + 8);
      v60(v1[11], v1[6]);

      v49(v50, v51);
    }

    v1[43] = v60;
    v65 = static TestProperties.bufferSize.getter();
    v66 = swift_task_alloc();
    v1[44] = v66;
    *v66 = v1;
    v66[1] = sub_100018C84;
    v67 = v1[12];
    v68 = v1[5];

    return sub_100020A84(v68, v67, v65);
  }
}

uint64_t sub_10001A028(uint64_t a1)
{
  v78 = v1;
  v2 = v1[39];
  v3 = v1[12];
  v4 = v1[8];
  v5 = v1[6];
  static Log.photos.getter();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[39];
    v74 = v1[32];
    v68 = v1[13];
    v70 = v1[15];
    v72 = v1[12];
    v67 = v7;
    v9 = v1[10];
    v10 = v1[6];
    v11 = v1[8];
    v12 = v1[43];
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    log = swift_slowAlloc();
    v77[0] = log;
    *v13 = 136315394;
    v8(v9, v11, v10);
    v12(v11, v10);
    sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v12(v9, v10);
    v17 = sub_100102F80(v14, v16, v77);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v63 = v18;
    _os_log_impl(&_mh_execute_header, v6, v67, "Failed to process face %s with error %@", v13, 0x16u);
    sub_10000C460(v63, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v74(v70, v68);
    result = (v12)(v72, v10);
  }

  else
  {
    v75 = v1[32];
    v20 = v1[15];
    v22 = v1[12];
    v21 = v1[13];
    v23 = v1[6];
    v24 = v6;
    v25 = v1[43];
    v25(v1[8], v23);

    v75(v20, v21);
    result = v25(v22, v23);
  }

  v27 = v1[37];
  v26 = v1[38];
  v1[49] = v26;
  v28 = v1[36] + 1;
  if (v28 == v1[30])
  {

    v29 = swift_task_alloc();
    v1[34] = v29;
    *v29 = v1;
    v29[1] = sub_1000184B8;

    return sub_10002E4C4();
  }

  else
  {
    v1[37] = v27;
    v1[38] = v26;
    v1[36] = v28;
    v30 = v1[25];
    if (v28 >= *(v30 + 16))
    {
      __break(1u);
    }

    else
    {
      v31 = v1[12];
      v32 = v1[6];
      v33 = v1[7];
      v35 = *(v33 + 16);
      v33 += 16;
      v34 = v35;
      v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64)) + *(v33 + 56) * v28;
      v1[39] = v35;
      v1[40] = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v35(v31, v36, v32);
      static Task<>.checkCancellation()();
      v37 = v1[6];
      v39 = v1[11];
      v38 = v1[12];
      static Log.photos.getter();
      v35(v39, v38, v37);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v1[32];
      v44 = v1[17];
      v45 = v1[13];
      v46 = v1[11];
      if (v42)
      {
        v69 = v41;
        v47 = v1[10];
        v64 = v1[7];
        v73 = v1[17];
        v76 = v1[32];
        v48 = v1[6];
        loga = v40;
        v49 = swift_slowAlloc();
        v77[0] = swift_slowAlloc();
        *v49 = 136315394;
        v71 = v45;
        v50 = PhotosFaceType.description.getter();
        v52 = v51;

        v53 = sub_100102F80(v50, v52, v77);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v34(v47, v46, v48);
        v54 = *(v64 + 8);
        v54(v46, v48);
        sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v54(v47, v48);
        v58 = sub_100102F80(v55, v57, v77);

        *(v49 + 14) = v58;
        _os_log_impl(&_mh_execute_header, loga, v69, "Processing %s face %s", v49, 0x16u);
        swift_arrayDestroy();

        v76(v73, v71);
      }

      else
      {
        v54 = *(v1[7] + 8);
        v54(v1[11], v1[6]);

        v43(v44, v45);
      }

      v1[43] = v54;
      v59 = static TestProperties.bufferSize.getter();
      v60 = swift_task_alloc();
      v1[44] = v60;
      *v60 = v1;
      v60[1] = sub_100018C84;
      v61 = v1[12];
      v62 = v1[5];

      return sub_100020A84(v62, v61, v59);
    }
  }

  return result;
}

uint64_t sub_10001A828()
{
  v1[2] = v0;
  v2 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for ShuffleID();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for CommunicationActor();
  v1[22] = static CommunicationActor.shared.getter();
  v1[23] = static CommunicationActor.shared.getter();
  v5 = type metadata accessor for ShuffleDatabase();
  v6 = sub_1000438BC(&qword_10012A478, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
  v7 = swift_task_alloc();
  v1[24] = v7;
  *v7 = v1;
  v7[1] = sub_10001AAC4;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v5, v6);
}

uint64_t sub_10001AAC4(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  v3[27] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_100015788;
  }

  else
  {
    v6 = sub_10001AC58;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10001AC58()
{

  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 224) = v2;
  *(v0 + 232) = v1;

  return _swift_task_switch(sub_10001ACE4, v2, v1);
}

uint64_t sub_10001ACE4(uint64_t a1)
{
  v83 = v1;
  v2 = v1[25];
  v3 = *(v2 + 16);
  v1[30] = v3;
  if (!v3)
  {

    static Log.session.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v1[20];
    v27 = v1[13];
    v26 = v1[14];
    if (v24)
    {
      v80 = v1[20];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v82[0] = v29;
      *v28 = 136315138;
      v30 = PhotosFaceType.description.getter();
      v32 = v31;

      v33 = sub_100102F80(v30, v32, v82);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "No %s faces. Exiting.", v28, 0xCu);
      sub_10000C304(v29);

      (*(v26 + 8))(v80, v27);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }

    v47 = v1[1];
    goto LABEL_14;
  }

  static Log.session.getter();
  swift_bridgeObjectRetain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[19];
  v8 = v1[13];
  v9 = v1[14];
  if (v6)
  {
    v79 = v1[19];
    v10 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v10 = 134218498;
    *(v10 + 4) = *(v2 + 16);
    *(v10 + 12) = 2080;
    v11 = PhotosFaceType.description.getter();
    v77 = v8;
    v13 = v12;

    v14 = sub_100102F80(v11, v13, v82);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2080;
    v15 = Array.description.getter();
    v17 = v16;
    swift_bridgeObjectRelease_n();
    v18 = sub_100102F80(v15, v17, v82);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Processing %ld %s: %s", v10, 0x20u);
    swift_arrayDestroy();

    v21 = *(v9 + 8);
    v20 = v9 + 8;
    v19 = v21;
    v21(v79, v77);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v34 = *(v9 + 8);
    v20 = v9 + 8;
    v19 = v34;
    v34(v7, v8);
  }

  v1[31] = v20;
  v1[32] = v19;
  v35 = v1[7];
  v36 = v1[25];
  v37 = v1[26];
  v1[36] = 0;
  v1[37] = 0;
  v1[35] = 0;
  v38 = *(v36 + 16);

  if (!v38)
  {
    __break(1u);
    return result;
  }

  v42 = *(v35 + 16);
  v41 = v35 + 16;
  v40 = v42;
  v43 = v1[12];
  v44 = v1[6];
  v45 = (*(v41 + 64) + 32) & ~*(v41 + 64);
  v1[38] = v42;
  v1[39] = v41 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v42(v43, result + v45, v44);
  static Task<>.checkCancellation()();
  v46 = v1[6];
  if (v37)
  {
    (*(v1[7] + 8))(v1[12], v1[6]);

    swift_bridgeObjectRelease_n();

    v47 = v1[1];
LABEL_14:

    return v47();
  }

  v49 = v1[11];
  v48 = v1[12];
  static Log.photos.getter();
  v40(v49, v48, v46);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v1[32];
  v54 = v1[17];
  v55 = v1[13];
  v56 = v1[11];
  if (v52)
  {
    v75 = v51;
    v57 = v1[10];
    v73 = v1[7];
    v78 = v1[17];
    v81 = v1[32];
    v58 = v1[6];
    log = v50;
    v59 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v59 = 136315394;
    v76 = v55;
    v60 = PhotosFaceType.description.getter();
    v62 = v61;

    v63 = sub_100102F80(v60, v62, v82);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v40(v57, v56, v58);
    v64 = *(v73 + 8);
    v64(v56, v58);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v64(v57, v58);
    v68 = sub_100102F80(v65, v67, v82);

    *(v59 + 14) = v68;
    _os_log_impl(&_mh_execute_header, log, v75, "Processing %s face %s", v59, 0x16u);
    swift_arrayDestroy();

    v81(v78, v76);
  }

  else
  {
    v64 = *(v1[7] + 8);
    v64(v1[11], v1[6]);

    v53(v54, v55);
  }

  v1[42] = v64;
  v69 = static TestProperties.bufferSize.getter();
  v70 = swift_task_alloc();
  v1[43] = v70;
  *v70 = v1;
  v70[1] = sub_10001B524;
  v71 = v1[12];
  v72 = v1[5];

  return sub_100021028(v72, v71, v69);
}

uint64_t sub_10001B524()
{
  v2 = *v1;
  v2[44] = v0;

  if (v0)
  {
    v3 = v2[28];
    v4 = v2[29];

    return _swift_task_switch(sub_10001B868, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[45] = v5;
    v6 = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
    *v5 = v2;
    v5[1] = sub_10001B6D8;
    v7 = v2[3];

    return AsyncSequence.collect()(v7, v6);
  }
}

uint64_t sub_10001B6D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[46] = a1;
  v4[47] = v1;

  (*(v3[4] + 8))(v3[5], v3[3]);
  v5 = v3[29];
  v6 = v3[28];
  if (v1)
  {
    v7 = sub_10001C8C8;
  }

  else
  {
    v7 = sub_10001C068;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10001B868(uint64_t a1)
{
  v78 = v1;
  v2 = v1[38];
  v3 = v1[12];
  v4 = v1[8];
  v5 = v1[6];
  static Log.photos.getter();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[38];
    v74 = v1[32];
    v68 = v1[13];
    v70 = v1[15];
    v72 = v1[12];
    v67 = v7;
    v9 = v1[10];
    v10 = v1[6];
    v11 = v1[8];
    v12 = v1[42];
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    log = swift_slowAlloc();
    v77[0] = log;
    *v13 = 136315394;
    v8(v9, v11, v10);
    v12(v11, v10);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v12(v9, v10);
    v17 = sub_100102F80(v14, v16, v77);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v63 = v18;
    _os_log_impl(&_mh_execute_header, v6, v67, "Failed to process face %s with error %@", v13, 0x16u);
    sub_10000C460(v63, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v74(v70, v68);
    result = (v12)(v72, v10);
  }

  else
  {
    v75 = v1[32];
    v20 = v1[15];
    v22 = v1[12];
    v21 = v1[13];
    v23 = v1[6];
    v24 = v6;
    v25 = v1[42];
    v25(v1[8], v23);

    v75(v20, v21);
    result = v25(v22, v23);
  }

  v27 = v1[36];
  v26 = v1[37];
  v1[48] = v26;
  v28 = v1[35] + 1;
  if (v28 == v1[30])
  {

    v29 = swift_task_alloc();
    v1[33] = v29;
    *v29 = v1;
    v29[1] = sub_100015814;

    return sub_10002EC2C();
  }

  else
  {
    v1[36] = v27;
    v1[37] = v26;
    v1[35] = v28;
    v30 = v1[25];
    if (v28 >= *(v30 + 16))
    {
      __break(1u);
    }

    else
    {
      v31 = v1[12];
      v32 = v1[6];
      v33 = v1[7];
      v35 = *(v33 + 16);
      v33 += 16;
      v34 = v35;
      v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64)) + *(v33 + 56) * v28;
      v1[38] = v35;
      v1[39] = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v35(v31, v36, v32);
      static Task<>.checkCancellation()();
      v37 = v1[6];
      v39 = v1[11];
      v38 = v1[12];
      static Log.photos.getter();
      v35(v39, v38, v37);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v1[32];
      v44 = v1[17];
      v45 = v1[13];
      v46 = v1[11];
      if (v42)
      {
        v69 = v41;
        v47 = v1[10];
        v64 = v1[7];
        v73 = v1[17];
        v76 = v1[32];
        v48 = v1[6];
        loga = v40;
        v49 = swift_slowAlloc();
        v77[0] = swift_slowAlloc();
        *v49 = 136315394;
        v71 = v45;
        v50 = PhotosFaceType.description.getter();
        v52 = v51;

        v53 = sub_100102F80(v50, v52, v77);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v34(v47, v46, v48);
        v54 = *(v64 + 8);
        v54(v46, v48);
        sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v54(v47, v48);
        v58 = sub_100102F80(v55, v57, v77);

        *(v49 + 14) = v58;
        _os_log_impl(&_mh_execute_header, loga, v69, "Processing %s face %s", v49, 0x16u);
        swift_arrayDestroy();

        v76(v73, v71);
      }

      else
      {
        v54 = *(v1[7] + 8);
        v54(v1[11], v1[6]);

        v43(v44, v45);
      }

      v1[42] = v54;
      v59 = static TestProperties.bufferSize.getter();
      v60 = swift_task_alloc();
      v1[43] = v60;
      *v60 = v1;
      v60[1] = sub_10001B524;
      v61 = v1[12];
      v62 = v1[5];

      return sub_100021028(v62, v61, v59);
    }
  }

  return result;
}

uint64_t sub_10001C068(uint64_t a1)
{
  v84 = v1;
  v2 = v1[38];
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[6];
  static Log.photos.getter();
  v2(v4, v3, v5);
  swift_bridgeObjectRetain_n();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  log = v6;
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[46];
  v81 = v1[42];
  if (v8)
  {
    v69 = v1[38];
    v77 = v1[32];
    v71 = v1[13];
    v73 = v1[16];
    v74 = v1[12];
    v11 = v1[9];
    v10 = v1[10];
    v12 = v1[6];
    v13 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v13 = 136315650;
    v14 = PhotosFaceType.description.getter();
    v16 = v15;

    v17 = sub_100102F80(v14, v16, v83);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    LOBYTE(v16) = v7;
    v18 = *(v9 + 16);

    *(v13 + 14) = v18;

    *(v13 + 22) = 2080;
    v69(v10, v11, v12);
    v81(v11, v12);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v81(v10, v12);
    v22 = sub_100102F80(v19, v21, v83);

    *(v13 + 24) = v22;
    _os_log_impl(&_mh_execute_header, log, v16, "Processed %s %ld photos from %s", v13, 0x20u);
    swift_arrayDestroy();

    v77(v73, v71);
    v81(v74, v12);
  }

  else
  {
    v78 = v1[32];
    v23 = v1[16];
    v25 = v1[12];
    v24 = v1[13];
    v26 = v1[9];
    v27 = v1[6];

    v81(v26, v27);

    v78(v23, v24);
    v81(v25, v27);
  }

  v28 = v1[36];
  v29 = *(v1[46] + 16);

  v31 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_21;
  }

  v32 = v1[47];
  v1[48] = v31;
  v33 = v1[35] + 1;
  if (v33 == v1[30])
  {

    v34 = swift_task_alloc();
    v1[33] = v34;
    *v34 = v1;
    v34[1] = sub_100015814;

    return sub_10002EC2C();
  }

  v1[36] = v31;
  v1[37] = v31;
  v1[35] = v33;
  v35 = v1[25];
  if (v33 >= *(v35 + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v36 = v1[12];
  v37 = v1[6];
  v38 = v1[7];
  v40 = *(v38 + 16);
  v38 += 16;
  v39 = v40;
  v41 = v35 + ((*(v38 + 64) + 32) & ~*(v38 + 64)) + *(v38 + 56) * v33;
  v1[38] = v40;
  v1[39] = v38 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v36, v41, v37);
  static Task<>.checkCancellation()();
  v42 = v1[6];
  if (v32)
  {
    (*(v1[7] + 8))(v1[12], v1[6]);

    swift_bridgeObjectRelease_n();

    v43 = v1[1];

    return v43();
  }

  else
  {
    v45 = v1[11];
    v44 = v1[12];
    static Log.photos.getter();
    v39(v45, v44, v42);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v1[32];
    v50 = v1[17];
    v51 = v1[13];
    v52 = v1[11];
    if (v48)
    {
      v75 = v47;
      v53 = v1[10];
      v70 = v1[7];
      loga = v1[17];
      v82 = v1[32];
      v54 = v1[6];
      v72 = v46;
      v55 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v55 = 136315394;
      v76 = v51;
      v56 = PhotosFaceType.description.getter();
      v58 = v57;

      v59 = sub_100102F80(v56, v58, v83);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      v39(v53, v52, v54);
      v60 = *(v70 + 8);
      v60(v52, v54);
      sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v60(v53, v54);
      v64 = sub_100102F80(v61, v63, v83);

      *(v55 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v72, v75, "Processing %s face %s", v55, 0x16u);
      swift_arrayDestroy();

      v82(loga, v76);
    }

    else
    {
      v60 = *(v1[7] + 8);
      v60(v1[11], v1[6]);

      v49(v50, v51);
    }

    v1[42] = v60;
    v65 = static TestProperties.bufferSize.getter();
    v66 = swift_task_alloc();
    v1[43] = v66;
    *v66 = v1;
    v66[1] = sub_10001B524;
    v67 = v1[12];
    v68 = v1[5];

    return sub_100021028(v68, v67, v65);
  }
}