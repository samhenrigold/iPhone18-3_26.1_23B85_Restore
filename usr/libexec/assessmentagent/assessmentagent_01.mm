uint64_t sub_10001B68C()
{
  v1 = v0;
  v2 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  type metadata accessor for AEAAuxiliaryParticipantAggregatorSource(0);
  v5 = swift_allocObject();
  UUID.init()();
  v6 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_subject;
  v21 = &_swiftEmptySetSingleton;
  sub_100003F6C(&qword_1000B8200, &qword_100080D38);
  swift_allocObject();
  *(v5 + v6) = CurrentValueSubject.init(_:)();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for AgentActor();
  inited = swift_initStaticObject();
  v9 = sub_10001CFA8();
  v10 = swift_allocObject();
  v10[2] = inited;
  v10[3] = v9;
  v10[4] = v5;
  v10[5] = v1;

  sub_10006F6D0(0, 0, v4, &unk_100080D48, v10);

  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C370(v11, qword_1000BC548);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v5;
    v21 = v15;
    *v14 = 136446210;

    v16 = String.init<A>(describing:)();
    v18 = sub_100043D60(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Created %{public}s", v14, 0xCu);
    sub_100003FB4(v15);
  }

  return v5;
}

uint64_t sub_10001B974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for UUID();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v5[11] = *(v7 + 64);
  v5[12] = swift_task_alloc();
  v8 = sub_100003F6C(&qword_1000B8208, &unk_100080D50);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_10001CFA8();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001BAD8, v10, v9);
}

uint64_t sub_10001BAD8()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v16 = v0[12];
  v5 = v0[8];
  v14 = v0[7];
  v15 = v0[9];
  v0[5] = *(v14 + OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_subject);
  sub_100003F6C(&qword_1000B8200, &qword_100080D38);
  sub_100004EE0(&qword_1000B8210, &qword_1000B8200, &qword_100080D38, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher.dropFirst(_:)();
  sub_100004EE0(&qword_1000B8218, &qword_1000B8208, &unk_100080D50, &protocol conformance descriptor for Publishers.Drop<A>);
  v17 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v2, v3);
  v0[6] = v17;
  v6 = swift_allocObject();
  swift_weakInit();
  v18 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_id;
  (*(v4 + 16))(v16, v14 + OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_id, v15);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, v16, v15);
  swift_allocObject();
  swift_weakInit();
  sub_100003F6C(&qword_1000B7BB8, &qword_100080470);
  sub_100004EE0(&qword_1000B7BC0, &qword_1000B7BB8, &qword_100080470, &protocol conformance descriptor for AnyPublisher<A, B>);
  v9 = Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100003F6C(qword_1000B8220, &unk_100080D60);
  v10 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + 24);
  *(v5 + 24) = 0x8000000000000000;
  sub_100040D00(v10, v9, v14 + v18, isUniquelyReferenced_nonNull_native);
  *(v5 + 24) = v19;
  swift_endAccess();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10001BE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001BF1C(a3);
  }

  return result;
}

uint64_t sub_10001BEC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001C338();
  }

  return result;
}

void sub_10001BF1C(uint64_t a1)
{
  _StringGuts.grow(_:)(25);

  v16[0] = 0xD000000000000017;
  v16[1] = 0x80000001000888B0;
  v2._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v2);

  swift_beginAccess();
  v3 = sub_10001C25C(a1);
  swift_endAccess();
  if (v3)
  {
    if (qword_1000B6430 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C370(v4, qword_1000BC548);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16[0] = v8;
      *v7 = 136446210;
      v9 = sub_100043D60(0xD000000000000017, 0x80000001000888B0, v16);

      *(v7 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Removing %{public}s", v7, 0xCu);
      sub_100003FB4(v8);
    }

    else
    {
    }

    AnyCancellable.cancel()();
    sub_10001C338();
  }

  else
  {
    if (qword_1000B6430 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C370(v10, qword_1000BC548);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16[0] = v14;
      *v13 = 136446210;
      v15 = sub_100043D60(0xD000000000000017, 0x80000001000888B0, v16);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Attempted to remove unknown %{public}s", v13, 0xCu);
      sub_100003FB4(v14);
    }

    else
    {
    }
  }
}

uint64_t sub_10001C25C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100020E18(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10006DC74();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_10005145C(v5, v7);
  *v2 = v7;
  return v10;
}

void sub_10001C338()
{
  v1 = 1;
  swift_beginAccess();

  v3 = sub_10001C858(v2);

  *(v0 + 24) = v3;

  v4 = *(v0 + 24);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v7)
  {
LABEL_4:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v1 = *(*(v4 + 56) + ((v9 << 10) | (16 * v11)));
    if (swift_weakLoadStrong())
    {

      CurrentValueSubject.value.getter();

      v1 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1000727E0(0, v10[2] + 1, 1, v10);
      }

      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        v10 = sub_1000727E0((v13 > 1), v14 + 1, 1, v10);
      }

      v10[2] = v14 + 1;
      v10[v14 + 4] = v25;
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_4;
    }
  }

  v15 = v10[2];
  if (v15)
  {
    v16 = 0;
    v1 = (v10 + 4);
    while (v16 < v10[2])
    {
      v17 = v16 + 1;

      sub_10001C6D8(v18);
      v16 = v17;
      if (v15 == v17)
      {
        goto LABEL_19;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_22;
  }

LABEL_19:

  v10 = &_swiftEmptySetSingleton;
  CurrentValueSubject.value.getter();
  v19 = sub_10001A944(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);

  if (v19)
  {

    return;
  }

  CurrentValueSubject.value.getter();
  v1 = *(&_swiftEmptySetSingleton + 2);

  CurrentValueSubject.send(_:)();
  if (qword_1000B6430 != -1)
  {
    goto LABEL_27;
  }

LABEL_22:
  v20 = type metadata accessor for Logger();
  sub_10000C370(v20, qword_1000BC548);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134349312;
    *(v23 + 4) = v1;
    *(v23 + 12) = 2050;
    v24 = v10[2];

    *(v23 + 14) = v24;

    _os_log_impl(&_mh_execute_header, v21, v22, "Updated auxiliary participant aggregate: %{public}ld → %{public}ld", v23, 0x16u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_10001C6D8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_10001CA20(v12, v13))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 40 * (v9 | (v8 << 6));
    LODWORD(v9) = *(v10 + 32);
    v11 = *(v10 + 16);
    v17[0] = *v10;
    v17[1] = v11;
    v18 = v9;
    sub_10001CA34(v17, v14);
    sub_1000446A0(v14, v17);
    v12 = v15;
    v13 = v16;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001C7F4()
{

  return swift_deallocClassInstance();
}

void *sub_10001C858(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_10001CA90(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_10001CE58(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_10001C9B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001C9CC(a1, a2);
  }

  return a1;
}

uint64_t sub_10001C9CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001CA20(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005A80(result, a2);
  }

  return result;
}

uint64_t sub_10001CA90(unint64_t *a1, uint64_t a2, void *a3)
{
  v35 = a2;
  v36 = a1;
  v45 = sub_100003F6C(&qword_1000B81F8, &unk_100080D28);
  v4 = __chkstk_darwin(v45);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v34 - v7;
  v8 = type metadata accessor for UUID();
  result = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v13 = 0;
  v46 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v42 = v15;
  v43 = v10;
  v39 = (v10 + 8);
  v40 = v10 + 16;
  v41 = v20;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v48 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = v46;
    v26 = *(v43 + 16);
    v26(v12, v46[6] + *(v43 + 72) * v24, v8);
    v27 = v25[7];
    v38 = v24;
    v47 = *(v27 + 16 * v24);
    v28 = v44;
    v26(v44, v12, v8);
    *(v28 + *(v45 + 48)) = v47;
    sub_10001CED0(v28, v6);
    swift_retain_n();
    swift_retain_n();

    v29 = v6;
    Strong = swift_weakLoadStrong();

    sub_10001CF40(v28);
    if (Strong)
    {

      v32 = *v39;
      (*v39)(v29, v8);

      result = (v32)(v12, v8);
      *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v33 = __OFADD__(v37++, 1);
      v6 = v29;
      v20 = v41;
      v15 = v42;
      v19 = v48;
      if (v33)
      {
        __break(1u);
        return sub_10005308C(v36, v35, v37, v46);
      }
    }

    else
    {
      v31 = *v39;
      (*v39)(v29, v8);

      result = (v31)(v12, v8);
      v6 = v29;
      v20 = v41;
      v15 = v42;
      v19 = v48;
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_10005308C(v36, v35, v37, v46);
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v48 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10001CE58(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10001CA90(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_10001CED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B81F8, &unk_100080D28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001CF40(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B81F8, &unk_100080D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001CFA8()
{
  result = qword_1000B80C8;
  if (!qword_1000B80C8)
  {
    type metadata accessor for AgentActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B80C8);
  }

  return result;
}

uint64_t sub_10001D000()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001D048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000F618;

  return sub_10001B974(a1, v4, v5, v7, v6);
}

uint64_t sub_10001D108()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D140()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001D204(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10001BE64(a1, v4, v5);
}

uint64_t sub_10001D2BC()
{
  [*(v0 + 16) releaseTransaction];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001D328(uint64_t a1)
{
  v3 = *(v1 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10001D34C, 0, 0);
}

uint64_t sub_10001D34C()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) acquireAssessmentModeTransaction];
  v1[3] = &type metadata for AEAOSTransactionDeactivation;
  v1[4] = &off_1000A7820;
  v3 = swift_allocObject();
  *v1 = v3;
  v3[2] = 0xD00000000000002ALL;
  v3[3] = 0x80000001000888D0;
  v3[4] = 5;
  v3[5] = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001D41C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001D4C0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void *sub_10001D510(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = type metadata accessor for URL();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_10004A97C(0, v9, 0);
  v10 = v21;
  v16 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v12 = *i;
    v20[0] = *(i - 1);
    v20[1] = v12;

    v18(v20);
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
      sub_10004A97C((v13 > 1), v14 + 1, 1);
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

uint64_t sub_10001D6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.deletingLastPathComponent()();
  v9 = *(v4 + 16);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v17 = 0;
  LODWORD(v9) = [v9 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v17];

  if (v9)
  {
    v13 = v17;
    Data.write(to:options:)();
  }

  else
  {
    v14 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v6 + 8))(v8, v5);
}

id sub_10001D88C()
{
  v1 = type metadata accessor for CocoaError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (&v13 - v4);
  v6 = *(v0 + 16);
  URL._bridgeToObjectiveC()(v4);
  v8 = v7;
  v13 = 0;
  v9 = [v6 removeItemAtURL:v7 error:&v13];

  if (v9)
  {
    return v13;
  }

  v11 = v13;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  static CocoaError.fileNoSuchFile.getter();
  sub_10001DF10();
  v12 = static _ErrorCodeProtocol.~= infix(_:_:)();

  result = (*(v2 + 8))(v5, v1);
  if (v12)
  {
  }

  return result;
}

void *sub_10001DA3C(uint64_t a1)
{
  v3 = *(v1 + 16);
  URL.path.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 enumeratorAtPath:v4];

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = [v5 allObjects];

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_10001DB70(v7);

  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v9);
  v12[2] = a1;
  v10 = sub_10001D510(sub_10001DEDC, v12, v8);

  return v10;
}

void *sub_10001DB70(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10004A8CC(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000C6FC(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10004A8CC((v5 > 1), v6 + 1, 1);
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

uint64_t sub_10001DC84()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10001DCE0()
{
  v1 = OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingValues;
  v4 = type metadata accessor for URLResourceValues();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAConcreteFileSystemPrimitives.ConcreteURLResourceValues(uint64_t a1)
{
  result = qword_1000B83B0;
  if (!qword_1000B83B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001DE10(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URLResourceValues();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10001DF10()
{
  result = qword_1000B8498;
  if (!qword_1000B8498)
  {
    type metadata accessor for CocoaError.Code();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8498);
  }

  return result;
}

uint64_t sub_10001DFB0()
{
  v0 = type metadata accessor for Logger();
  sub_10001E028(v0, qword_1000BC548);
  sub_10000C370(v0, qword_1000BC548);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10001E028(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10001E0B8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10001E028(v3, a2);
  sub_10000C370(v3, a2);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001E12C()
{
  v0 = type metadata accessor for Logger();
  sub_10001E028(v0, qword_1000BC578);
  sub_10000C370(v0, qword_1000BC578);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001E1A4()
{
  v0 = type metadata accessor for Logger();
  sub_10001E028(v0, qword_1000BC590);
  sub_10000C370(v0, qword_1000BC590);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

id sub_10001E21C()
{
  [*&v0[OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_XPCListener] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AEAActiveRestrictionUUIDFetchingService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10001E324(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_xpc] = a1;
  *&v2[OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_sessionManager] = a2;
  swift_unknownObjectRetain();

  v4 = [a1 makeActiveRestrictionUUIDFetchingListener];
  *&v2[OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_XPCListener] = v4;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for AEAActiveRestrictionUUIDFetchingService();
  v5 = objc_msgSendSuper2(&v9, "init");
  v6 = *&v5[OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_XPCListener];
  v7 = v5;
  [v6 setDelegate:v7];

  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_10001E480()
{
  sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
  swift_allocObject();
  PassthroughSubject.init()();
  sub_10001E620();
  v0 = Publisher.eraseToAnyPublisher()();

  return v0;
}

unint64_t sub_10001E620()
{
  result = qword_1000B8548;
  if (!qword_1000B8548)
  {
    sub_100004B50(&qword_1000B8540, &qword_100080FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8548);
  }

  return result;
}

id sub_10001E684(void *a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_xpc) connectionCanFetchActiveRestrictionUUIDs:a1];
  if (v4)
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C370(v5, qword_1000BC518);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Configuring new connection for reading published active restriction UUIDs…", v8, 2u);
    }

    v9 = [objc_allocWithZone(AEActiveRestrictionUUIDFetchingXPCInterfaceFactory) init];
    v10 = [v9 makeInterface];

    [a1 setExportedInterface:v10];
    [a1 setExportedObject:v2];
    v11 = &selRef_resume;
  }

  else
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C370(v12, qword_1000BC518);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Invalid active restriction reader. Invalidating connection.", v15, 2u);
    }

    v11 = &selRef_invalidate;
  }

  [a1 *v11];
  return v4;
}

uint64_t sub_10001E8C0(Swift::Int a1, Swift::Int a2)
{
  swift_beginAccess();

  sub_100044308(&v8, a1, a2);
  swift_endAccess();

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  type metadata accessor for AEABlockCancelable();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10001EB24;
  *(v6 + 24) = v5;

  return v6;
}

uint64_t sub_10001E9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_100039CB8(a2, a3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10001EA50()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10001EAAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EAE4()
{

  return _swift_deallocObject(v0, 40, 7);
}

__n128 sub_10001EB30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001EB44(uint64_t a1, int a2)
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

uint64_t sub_10001EB8C(uint64_t result, int a2, int a3)
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

uint64_t sub_10001EBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AEAParticipant.SecurityInfo(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001ECD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AEAParticipant.SecurityInfo(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001ED98(uint64_t a1)
{
  result = type metadata accessor for AEAParticipant.SecurityInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_10001EE1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001EE30(uint64_t a1, int a2)
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

uint64_t sub_10001EE78(uint64_t result, int a2, int a3)
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

uint64_t sub_10001EEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10001EFB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001F068(uint64_t a1)
{
  sub_10001F0FC();
  if (v1 <= 0x3F)
  {
    sub_1000059E4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001F0FC()
{
  if (!qword_1000B8718)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B8718);
    }
  }
}

__n128 sub_10001F15C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001F178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10001F1C0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10001F230(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AEAParticipant.SecurityInfo(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10001F2F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AEAParticipant.SecurityInfo(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001F3B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F3EC(uint64_t a1)
{
  result = sub_100022884(319, &qword_1000B87B8, &off_1000A4EB8);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AEAParticipant.SecurityInfo(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001F488()
{
  v1 = v0;
  _StringGuts.grow(_:)(22);
  v2 = v0[3];
  v3 = v0[4];
  sub_100005A3C(v1, v1[3]);
  v4._countAndFlagsBits = (*(v3 + 48))(v2, v3);
  String.append(_:)(v4);

  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6 = v0[3];
  v7 = v0[4];
  sub_100005A3C(v1, v1[3]);
  (*(v7 + 40))(v6, v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x756769666E6F6320;
  v9._object = 0xEF3A6E6F69746172;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

Swift::Int sub_10001F5F0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_10001F648(uint64_t a1)
{
  sub_100005A3C(v1, v1[3]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Bool.hashValue.getter();
  Hasher._combine(_:)(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4 = NSObject.hashValue.getter();

  Hasher._combine(_:)(v4);
}

Swift::Int sub_10001F6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001F748@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_100005A3C(v1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_10001F7AC()
{
  v1 = [*v0 dataRepresentation];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_10001F804()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_10001F83C()
{
  v4 = *(v0 + 8);

  v1._countAndFlagsBits = 45;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  [*v0 processIdentifier];
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return v4;
}

void sub_10001F8C4(uint64_t *a1@<X8>)
{
  v3 = [*v1 dataRepresentation];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

Swift::Int sub_10001F91C()
{
  Hasher.init(_seed:)();
  v1 = [*v0 dataRepresentation];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  Data.hash(into:)();
  sub_100005A80(v2, v4);
  return Hasher._finalize()();
}

uint64_t sub_10001F9A4(uint64_t a1)
{
  v2 = [*v1 dataRepresentation];
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  Data.hash(into:)();

  return sub_100005A80(v3, v5);
}

Swift::Int sub_10001FA20()
{
  Hasher.init(_seed:)();
  v1 = [*v0 dataRepresentation];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  Data.hash(into:)();
  sub_100005A80(v2, v4);
  return Hasher._finalize()();
}

unint64_t sub_10001FB44()
{
  result = qword_1000B87F8;
  if (!qword_1000B87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B87F8);
  }

  return result;
}

uint64_t sub_10001FB98(uint64_t a1)
{
  *(a1 + 8) = sub_10001FC1C(&qword_1000B8800, type metadata accessor for AEAParticipant.Process, &unk_100081188);
  result = sub_10001FC1C(&qword_1000B8808, type metadata accessor for AEAParticipant.Process, &unk_1000811C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001FC1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001FC68()
{
  result = qword_1000B8810;
  if (!qword_1000B8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8810);
  }

  return result;
}

void sub_10001FCBC(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - v7;
  Hasher._combine(_:)(*v1);
  if (*(v1 + 16))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  sub_100019D8C(v1 + *(v9 + 24), v8, &qword_1000B7620, &qword_100081CE0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    sub_10001FC1C(&qword_1000B8860, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_10001FEDC()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 != 15)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001FFF0()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_100020040@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
    a1[1] = v8;
  }

  return result;
}

Swift::Int sub_100020140()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    Data.hash(into:)();
    sub_10001CA20(v4, v6);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t sub_10002026C(uint64_t a1)
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  result = (*(v2 + 8))(v4, v1);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    Data.hash(into:)();
    return sub_10001CA20(v5, v7);
  }

  return result;
}

Swift::Int sub_100020384()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    Data.hash(into:)();
    sub_10001CA20(v4, v6);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t sub_1000204B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_1000204E4()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100020548(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_100020580()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000205E0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

Swift::Int sub_100020640()
{
  Hasher.init(_seed:)();
  sub_10001FCBC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100020684()
{
  Hasher.init(_seed:)();
  sub_10001FCBC(v1);
  return Hasher._finalize()();
}

unint64_t sub_1000206C4()
{
  result = sub_100021EC0(_swiftEmptyArrayStorage);
  word_1000BC5A8 = 1;
  qword_1000BC5B0 = result;
  return result;
}

Swift::Int sub_1000206F8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_10002076C()
{
  v0 = Bool.hashValue.getter();
  Hasher._combine(_:)(v0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v2 = NSObject.hashValue.getter();

  Hasher._combine(_:)(v2);
}

Swift::Int sub_1000207E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100020858(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_100022884(0, &qword_1000B8878, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4 = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = static NSObject.== infix(_:_:)();

  return v5 & 1;
}

unint64_t sub_100020934()
{
  result = qword_1000B8818;
  if (!qword_1000B8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8818);
  }

  return result;
}

unint64_t sub_1000209D4()
{
  result = qword_1000B8828;
  if (!qword_1000B8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8828);
  }

  return result;
}

uint64_t sub_100020A70(uint64_t a1)
{
  *(a1 + 8) = sub_10001FC1C(&qword_1000B8838, type metadata accessor for AEAParticipant.AuxiliaryProcess, &unk_10008146C);
  result = sub_10001FC1C(&qword_1000B8840, type metadata accessor for AEAParticipant.AuxiliaryProcess, &unk_1000814AC);
  *(a1 + 16) = result;
  return result;
}

Swift::Int sub_100020AF4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100020B90(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_100020C0C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100020CA4(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (v3)
    {
      if (v5)
      {
        v9 = v2 == v6 && v3 == v5;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return v4 ^ v7 ^ 1u;
        }
      }
    }

    else if (!v5)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return 0;
}

unint64_t sub_100020D54()
{
  result = qword_1000B8848;
  if (!qword_1000B8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8848);
  }

  return result;
}

unint64_t sub_100020DD4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100021128(a1, v4);
}

unint64_t sub_100020E18(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10001FC1C(&qword_1000B88A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000211F0(a1, v2);
}

unint64_t sub_100020EB0(uint64_t *a1)
{
  v2 = a1[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(a1[4] & 1);
  v3 = Hasher._finalize()();

  return sub_1000213B0(a1, v3);
}

uint64_t sub_100020F98(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t sub_10002102C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000218E0(a1, v4);
}

unint64_t sub_100021070(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100021128(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100022828(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100010B30(v8);
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

unint64_t sub_1000211F0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10001FC1C(&qword_1000B88A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1000213B0(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v8 = *a1;
    v7 = a1[1];
    v9 = a1[3];
    v18 = a1[2];
    v19 = *(a1 + 32);
    v10 = *(v2 + 48);
    do
    {
      v11 = v10 + 40 * v5;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v14 = *(v11 + 32);
      v15 = *v11 == v8 && *(v11 + 8) == v7;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v12)
        {
          if (v9)
          {
            v16 = v13 == v18 && v12 == v9;
            if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
LABEL_4:
              if (((v14 ^ v19) & 1) == 0)
              {
                return v5;
              }
            }
          }
        }

        else if (!v9)
        {
          goto LABEL_4;
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000214E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_10001C9CC(v17, v16);
          sub_100043B30(v45, v9, v8, &v44);
          sub_100005A80(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_10001C9CC(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_10001C9CC(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_100043B30(v34, a1, a2, v45);
        sub_100005A80(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_10001C9CC(v17, v16);
      sub_100043B30(v45, v9, v8, &v44);
      sub_100005A80(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_1000218E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100022884(0, &qword_1000B88C8, AEAssessmentApplicationDescriptor_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000219B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  sub_100005A3C(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  v8 = v7;
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  sub_100005A3C(a2, v9);
  v11 = (*(v10 + 24))(v9, v10);
  v13 = v12;
  LOBYTE(v10) = sub_10002D0C4(v6, v8, v11, v12);
  sub_100005A80(v11, v13);
  sub_100005A80(v6, v8);
  if ((v10 & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  sub_100022884(0, &qword_1000B8878, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;
  v17 = static NSObject.== infix(_:_:)();

  return v17 & 1;
}

BOOL sub_100021B34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_100003F6C(&qword_1000B8868, &qword_100081578);
  v12 = __chkstk_darwin(v11);
  v14 = &v24 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v16 = *(a1 + 2);
  v17 = *(a2 + 2);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    v18 = v12;
    if ((*(a1 + 1) != *(a2 + 1) || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v18 = v12;
    if (v17)
    {
      return 0;
    }
  }

  v19 = *(type metadata accessor for AEAParticipant.SecurityInfo(0) + 24);
  v20 = *(v18 + 48);
  sub_100019D8C(&a1[v19], v14, &qword_1000B7620, &qword_100081CE0);
  sub_100019D8C(&a2[v19], &v14[v20], &qword_1000B7620, &qword_100081CE0);
  v21 = *(v5 + 48);
  if (v21(v14, 1, v4) == 1)
  {
    if (v21(&v14[v20], 1, v4) == 1)
    {
      sub_100019B28(v14, &qword_1000B7620, &qword_100081CE0);
      return 1;
    }

    goto LABEL_16;
  }

  sub_100019D8C(v14, v10, &qword_1000B7620, &qword_100081CE0);
  if (v21(&v14[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_16:
    sub_100019B28(v14, &qword_1000B8868, &qword_100081578);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v20], v4);
  sub_10001FC1C(&qword_1000B8870, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  sub_100019B28(v14, &qword_1000B7620, &qword_100081CE0);
  return (v22 & 1) != 0;
}

unint64_t sub_100021EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B8850, &qword_100081568);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019D8C(v4, &v13, &qword_1000B8858, &qword_100081570);
      v5 = v13;
      v6 = v14;
      result = sub_100020F98(v13, v14, &String.hash(into:), sub_100021070);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010B20(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100022018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002207C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&unk_1000B88D0, &qword_1000815B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019D8C(v4, v13, &qword_1000B7CE8, &unk_100080780);
      result = sub_100020DD4(v13);
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
      result = sub_100010B20(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000221B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B88C0, &qword_1000815B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100020F98(v5, v6, &String.hash(into:), sub_100021070);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100022304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100003F6C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100020F98(v7, v8, &String.hash(into:), sub_100021070);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100022428(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B8880, &unk_100081580);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_100006174(v7, v8, v9);
      result = sub_100020F98(v5, v6, &String.hash(into:), sub_100021070);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100022574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B8888, &unk_1000836F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 5);
      v7 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 16);
      v9 = *(i - 8);
      v10 = *(i - 7);
      v11 = *i;
      *&v20 = *(i - 6);
      *(&v20 + 1) = v5;
      *&v21 = v7;
      *(&v21 + 1) = v6;
      v22 = v8;

      result = sub_100020EB0(&v20);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 40 * result;
      v15 = v21;
      *v14 = v20;
      *(v14 + 16) = v15;
      *(v14 + 32) = v22;
      v16 = v3[7] + 16 * result;
      *v16 = v9;
      *(v16 + 1) = v10;
      *(v16 + 8) = v11;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000226C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B8890, &qword_100081590);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019D8C(v4, v14, &qword_1000B8898, &qword_100081598);
      result = sub_100020F98(*&v14[0], *(&v14[0] + 1), &Data.hash(into:), sub_1000214E0);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v14[0];
      v7 = v3[7] + 56 * result;
      v8 = v14[1];
      v9 = v14[2];
      v10 = v14[3];
      *(v7 + 48) = v15;
      *(v7 + 16) = v9;
      *(v7 + 32) = v10;
      *v7 = v8;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100022884(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000228D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 2;
  }

  v5 = sub_100020DA8(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 2;
  }

  sub_10000C6FC(*(a4 + 56) + 32 * v5, v10);
  sub_100005C1C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  v7 = [v9 BOOLValue];

  return v7;
}

id sub_100022974()
{
  v1 = *&v0[OBJC_IVAR____TtC15assessmentagent8AEAAgent_services];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;

    do
    {
      sub_10000859C(v3, v8);
      v4 = v9;
      v5 = v10;
      sub_100005A3C(v8, v9);
      (*(v5 + 24))(v4, v5);
      sub_100003FB4(v8);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AEAAgent();
  return objc_msgSendSuper2(&v7, "dealloc");
}

id sub_100022B38(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_languagePreferencesChangedObservation] = 0;
  v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_shouldKillAgentAfterSessionEnds] = 0;
  *&v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_cancellables] = &_swiftEmptySetSingleton;
  sub_100023F10(a1, &v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_args]);
  type metadata accessor for AEATaskQueue();
  swift_allocObject();
  v4 = sub_10005C69C();
  *&v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_taskQueue] = v4;
  v5 = &v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_taskSource];
  sub_10000859C(a1 + 56, &v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_taskSource]);
  v6 = *(a1 + 96);
  sub_10000859C(a1 + 104, v5 + 48);
  *(v5 + 40) = v6;
  v7 = *(a1 + 160);
  sub_100023F48(v5, v19);

  v8 = v7(v19, v4);

  sub_100023D58(v19);
  *&v2[OBJC_IVAR____TtC15assessmentagent8AEAAgent_services] = v8;
  sub_100023F10(a1, v19);
  v9 = swift_allocObject();
  v10 = v19[9];
  v9[9] = v19[8];
  v9[10] = v10;
  v9[11] = v19[10];
  v11 = v19[5];
  v9[5] = v19[4];
  v9[6] = v11;
  v12 = v19[7];
  v9[7] = v19[6];
  v9[8] = v12;
  v13 = v19[1];
  v9[1] = v19[0];
  v9[2] = v13;
  v14 = v19[3];
  v9[3] = v19[2];
  v9[4] = v14;
  v15 = sub_10003B6A0(sub_10002400C, v9);

  *&v2[OBJC_IVAR____TtC15assessmentagent8AEAAgent_sigtermSourceSignal] = v15;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for AEAAgent();
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_100023D28(a1);
  return v16;
}

void sub_100022D10()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Received SIGINT. Tearing down.", v3, 2u);
  }

  exit(2);
}

void sub_100022DE0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_args);
  sub_100005A3C((v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_args), *(v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_args + 24));
  v11 = sub_10006AD78();
  v12 = [v11 enterSandbox];

  v13 = [v12 value];
  if (v13)
  {
    v14 = [v13 BOOLValue];

    if (v14)
    {
      sub_1000237D4();
    }

    v53 = v7;
    v54 = v3;
    if (qword_1000B6460 != -1)
    {
      swift_once();
    }

    v15 = qword_1000BC5B8;
    v61 = sub_100075AE0;
    v62 = 0;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100023CC8;
    v60 = &unk_1000A7D18;
    v16 = _Block_copy(&aBlock);

    xpc_set_event_stream_handler("com.apple.notifyd.matching", v15, v16);
    _Block_release(v16);
    v61 = sub_100075C80;
    v62 = 0;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v51 = &v59;
    v59 = sub_100023CC8;
    v60 = &unk_1000A7D40;
    v17 = _Block_copy(&aBlock);

    v44 = v15;
    xpc_set_event_stream_handler("com.apple.fsevents.matching", v15, v17);
    _Block_release(v17);
    v18 = v10[18];
    v45 = v10;
    v52 = v1;
    v46 = v18(v1 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_taskSource);
    v19 = *(v46 + 16);
    if (v19)
    {
      v20 = v2;
      v21 = v9;
      v49 = *(v52 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_taskQueue);
      v22 = (v46 + 32);
      v48 = (v54 + 8);
      v47 = (v53 + 8);
      v50 = v6;
      do
      {
        v23 = *v22++;
        v24 = v49;
        v53 = *(v49 + 16);
        v54 = v19;
        v25 = swift_allocObject();
        v25[2] = v24;
        v25[3] = v23;
        v25[4] = 0;
        v25[5] = 0;
        v61 = sub_100023E14;
        v62 = v25;
        aBlock = _NSConcreteStackBlock;
        v58 = 1107296256;
        v59 = sub_100063354;
        v60 = &unk_1000A7D90;
        v26 = _Block_copy(&aBlock);
        swift_retain_n();

        static DispatchQoS.unspecified.getter();
        *&v55[0] = _swiftEmptyArrayStorage;
        sub_10000BD9C();
        sub_100003F6C(&unk_1000B7860, &qword_100080450);
        sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v27 = v50;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v26);

        (*v48)(v5, v20);
        (*v47)(v21, v27);

        v19 = v54 - 1;
      }

      while (v54 != 1);
    }

    v28 = v52;
    v29 = *(v52 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_services);
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = v29 + 32;
      do
      {
        sub_10000859C(v31, &aBlock);
        v32 = v60;
        v33 = v61;
        sub_100005A3C(&aBlock, v60);
        v56 = v33[5](v32, v33);
        v34 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_10000859C(&aBlock, v55);
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        sub_100008748(v55, v35 + 24);
        v36 = swift_allocObject();
        *(v36 + 16) = sub_100023E9C;
        *(v36 + 24) = v35;
        sub_100003F6C(&qword_1000B8968, &unk_100081640);
        sub_100004EE0(qword_1000B8970, &qword_1000B8968, &unk_100081640, &protocol conformance descriptor for AnyPublisher<A, B>);
        v28 = v52;
        Publisher<>.sink(receiveValue:)();

        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v37 = v60;
        v38 = v61;
        sub_100005A3C(&aBlock, v60);
        v38[1](v37, v38);
        sub_100003FB4(&aBlock);
        v31 += 40;
        --v30;
      }

      while (v30);
    }

    v39 = *(*sub_100005A3C(v45, v45[3]) + 208);
    swift_unknownObjectRetain();
    v40 = String._bridgeToObjectiveC()();
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = sub_100023F08;
    v62 = v41;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100063354;
    v60 = &unk_1000A7E30;
    v42 = _Block_copy(&aBlock);

    v43 = [v39 observeSystemNotificationWithName:v40 onQueue:v44 withHandler:v42];
    swift_unknownObjectRelease();
    _Block_release(v42);

    *(v28 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_languagePreferencesChangedObservation) = v43;
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_100023630()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC518);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Received filepath keepalive event", v2, 2u);
  }
}

void sub_100023718(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC15assessmentagent8AEAAgent_shouldKillAgentAfterSessionEnds) == 1)
    {
      sub_100023A10();
    }
  }
}

void sub_100023780(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100023A10();
  }
}

id sub_1000237D4()
{
  result = *(*sub_100005A3C((v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_args), *(v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_args + 24)) + 16);
  if (result)
  {
    v15 = 0;
    v2 = [result enterSandboxWithError:&v15];
    v3 = v15;
    if (!v2)
    {
      v4 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000B6420 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C370(v5, qword_1000BC518);
      swift_errorRetain();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v15 = v9;
        *v8 = 136446210;
        swift_getErrorValue();
        v10 = sub_100067820(v13, v14);
        v12 = sub_100043D60(v10, v11, &v15);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Failed to enter sandbox. Error: %{public}s", v8, 0xCu);
        sub_100003FB4(v9);
      }

      exit(1);
    }

    return v3;
  }

  return result;
}

void sub_100023A10()
{
  v1 = *(v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_services);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_6:
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_100023C60(v10);
    exit(0);
  }

  v3 = 0;
  v4 = v1 + 32;
  while (v3 < *(v1 + 16))
  {
    sub_10000859C(v4, &v7);
    v5 = v8;
    v6 = v9;
    sub_100005A3C(&v7, v8);
    if ((*(v6 + 32))(v5, v6))
    {
      sub_100008748(&v7, v10);
      sub_100023C60(v10);
      *(v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_shouldKillAgentAfterSessionEnds) = 1;
      return;
    }

    ++v3;
    sub_100003FB4(&v7);
    v4 += 40;
    if (v2 == v3)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

__n128 sub_100023B68(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_100023B9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_100023BE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100023C60(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B8948, &qword_100081638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100023CC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100023DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023DC4()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100023E24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023E5C()
{

  sub_100003FB4((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100023EA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023FA4()
{
  sub_100003FB4(v0 + 2);
  swift_unknownObjectRelease();
  sub_100003FB4(v0 + 9);

  sub_100003FB4(v0 + 15);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002402C(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10002412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 48);
  v11[0] = *(a2 + 16);
  v11[1] = a3;
  v11[2] = v6;
  v12 = a4;
  v13 = *(a2 + 32);
  v14 = v7;
  v8 = _s17AEADeltaPublisherV17DeltaSubscriptionCMa(0, v11);
  v9 = sub_1000268E8(v4, a1);
  v12 = v8;
  *&v13 = swift_getWitnessTable();
  v11[0] = v9;
  dispatch thunk of Subscriber.receive(subscription:)();
  return sub_100003FB4(v11);
}

uint64_t sub_1000241F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  if ((static Array<A>.== infix(_:_:)() & 1) == 0 || (static Array<A>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return static Array<A>.== infix(_:_:)();
}

uint64_t *sub_1000243B0()
{

  v1 = *(*v0 + 136);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 144);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1000086E0(v0 + *(*v0 + 168));

  return v0;
}

uint64_t sub_1000244F8()
{
  sub_1000243B0();

  return swift_deallocClassInstance();
}

void sub_100024564()
{
  v1 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(v1);
  sub_1000245E8(v0);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1000245E8(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v19 - v7;
  v8 = *(v3 + 88);
  v9 = type metadata accessor for Optional();
  result = __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v14 = *(v3 + 160);
  if ((*(a1 + v14) & 1) == 0)
  {
    v20 = v11;
    v21 = result;
    v22 = v1;
    *(a1 + v14) = 1;
    v15 = *(*a1 + 168);
    swift_beginAccess();
    sub_100008670(a1 + v15, &v24);
    if (*(&v25 + 1))
    {
      sub_10000859C(&v24, v23);
      sub_1000086E0(&v24);
      v19 = v6;
      sub_100005A3C(v23, v23[3]);
      v6 = v19;
      dispatch thunk of Cancellable.cancel()();
      sub_100003FB4(v23);
    }

    else
    {
      sub_1000086E0(&v24);
    }

    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    swift_beginAccess();
    sub_100008600(&v24, a1 + v15);
    swift_endAccess();
    (*(*(v8 - 8) + 56))(v13, 1, 1, v8);
    v16 = *(*a1 + 144);
    swift_beginAccess();
    (*(v20 + 40))(a1 + v16, v13, v21);
    swift_endAccess();
    v17 = v27;
    (*(*(v4 - 8) + 56))(v27, 1, 1, v4);
    v18 = *(*a1 + 136);
    swift_beginAccess();
    (*(v6 + 40))(a1 + v18, v17, v5);
    swift_endAccess();
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Dictionary();
    Dictionary.removeAll(keepingCapacity:)(0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100024A78(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v3);
  sub_100024B1C(v1, a1, &v5);
  os_unfair_lock_unlock(v3);
  v5();
}

uint64_t sub_100024B1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((*(result + *(*result + 160)) & 1) == 0)
  {
    v5 = *(*result + 168);
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

void sub_100024C50(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v3);
  sub_100024CDC(v1, a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_100024CDC(uint64_t result, uint64_t a2)
{
  if ((*(result + *(*result + 160)) & 1) == 0)
  {
    v2 = result;
    sub_10000859C(a2, v4);
    v3 = *(*v2 + 168);
    swift_beginAccess();
    sub_100008600(v4, v2 + v3);
    return swift_endAccess();
  }

  return result;
}

void sub_100024D80(uint64_t a1)
{
  v3 = *&v1[*(*v1 + 152)];
  os_unfair_lock_lock(v3);
  sub_100024E0C(v1, a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_100024E0C(char *a1, uint64_t a2)
{
  v15 = a2;
  v3 = *a1;
  v4 = *a1;
  v5 = *(*a1 + 88);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = &v15 - v12;
  if ((a1[*(v3 + 160)] & 1) == 0)
  {
    v14 = *(v4 + 144);
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

uint64_t (*sub_100025078(void (*a1)(char *, uint64_t)))@<X0>(uint64_t *a1@<X8>)
{
  v3 = *&v1[*(*v1 + 152)];
  os_unfair_lock_lock(v3);
  sub_100025118(v1, a1, &v5);
  os_unfair_lock_unlock(v3);
  v5(&v5);

  return v5;
}

uint64_t sub_100025118@<X0>(char *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t (**a3)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v36 = a3;
  v4 = *a1;
  v5 = *a1;
  v34 = a2;
  v35 = v5;
  v6 = *(v4 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  result = __chkstk_darwin(v14);
  v18 = &v32 - v17;
  v19 = sub_1000076C0;
  if (a1[*(v4 + 160)])
  {
    v20 = 0;
  }

  else
  {
    v33 = v16;
    v21 = *(v35 + 144);
    swift_beginAccess();
    (*(v8 + 16))(v11, &a1[v21], v7);
    if ((*(v12 + 48))(v11, 1, v6) == 1)
    {
      result = (*(v8 + 8))(v11, v7);
      v20 = 0;
      v19 = sub_1000076C0;
    }

    else
    {
      v22 = *(v12 + 32);
      v22(v18, v11, v6);
      v34 = sub_100025464(v34);
      v24 = v23;
      v26 = v25;
      v27 = v33;
      v22(v33, v18, v6);
      v28 = (*(v12 + 80) + 72) & ~*(v12 + 80);
      v20 = swift_allocObject();
      v29 = v35;
      *(v20 + 16) = *(v35 + 80);
      *(v20 + 24) = v6;
      *(v20 + 32) = *(v29 + 96);
      *(v20 + 40) = *(v29 + 104);
      *(v20 + 48) = *(v29 + 112);
      *(v20 + 64) = *(v29 + 128);
      result = (v22)(v20 + v28, v27, v6);
      v30 = (v20 + ((v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v30 = v34;
      v30[1] = v24;
      v30[2] = v26;
      v19 = sub_100026A04;
    }
  }

  v31 = v36;
  *v36 = v19;
  v31[1] = v20;
  return result;
}

uint64_t sub_100025464(void (*a1)(char *, uint64_t))
{
  v101 = a1;
  v81 = *v1;
  v2 = *(v81 + 128);
  v96 = *(*(v81 + 112) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = __chkstk_darwin(v4 - 8);
  v79 = &v74 - v6;
  v78 = *(AssociatedTypeWitness - 8);
  v7 = __chkstk_darwin(v5);
  v100 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v74 - v9;
  v10 = swift_checkMetadataState();
  v98 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v82 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v80 = &v74 - v14;
  __chkstk_darwin(v13);
  v16 = &v74 - v15;
  v94 = type metadata accessor for Optional();
  v91 = *(v94 - 8);
  v17 = __chkstk_darwin(v94);
  v93 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v103 = &v74 - v20;
  __chkstk_darwin(v19);
  v97 = &v74 - v21;
  v22 = swift_checkMetadataState();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v92 = &v74 - v24;
  v99 = swift_getAssociatedTypeWitness();
  v77 = *(v99 - 8);
  __chkstk_darwin(v99);
  v26 = &v74 - v25;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v109 = Dictionary.init()();
  v27 = *(*v1 + 176);
  swift_beginAccess();
  v76 = v1;
  v75 = v27;
  v108 = *(v1 + v27);

  v107 = Array.init()();
  v106 = Array.init()();
  v105 = Array.init()();
  (*(v23 + 16))(v92, v101, v22);
  v28 = v97;
  dispatch thunk of Sequence.makeIterator()();
  v29 = swift_getAssociatedConformanceWitness();
  v96 = v26;
  v92 = v29;
  dispatch thunk of IteratorProtocol.next()();
  v30 = v98;
  v32 = v98 + 48;
  v31 = *(v98 + 48);
  v33 = v31(v28, 1, v10);
  v104 = AssociatedTypeWitness;
  if (v33 != 1)
  {
    v40 = v30 + 32;
    v41 = *(v30 + 32);
    v42 = (v78 + 8);
    v86 = (v40 - 16);
    v43 = (v91 + 8);
    v83 = (v40 + 24);
    v91 = v2;
    v98 = v40;
    v90 = v32;
    v88 = v41;
    v89 = v31;
    v87 = (v78 + 8);
    v85 = (v40 - 24);
    v84 = v43;
    do
    {
      v41(v16, v28, v10);
      v51 = v95;
      v52 = v31;
      dispatch thunk of Identifiable.id.getter();
      v53 = v10;
      v55 = v103;
      v54 = v104;
      Dictionary.subscript.getter();
      v101 = *v42;
      v101(v51, v54);
      v56 = v55;
      v10 = v53;
      if (v52(v56, 1, v53) == 1)
      {
        v44 = v84;
        v45 = v94;
        (*v84)(v103, v94);
        v46 = v86;
        (*v86)(v82, v16, v10);
        type metadata accessor for Array();
        Array.append(_:)();
        v47 = v85;
      }

      else
      {
        v57 = v80;
        v41(v80, v103, v53);
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v46 = v86;
        if ((v58 & 1) == 0)
        {
          (*v86)(v82, v16, v53);
          type metadata accessor for Array();
          Array.append(_:)();
        }

        v47 = v85;
        (*v85)(v57, v53);
        v45 = v94;
        v44 = v84;
      }

      v48 = v100;
      dispatch thunk of Identifiable.id.getter();
      v49 = v93;
      (*v46)(v93, v16, v10);
      (*v83)(v49, 0, 1, v10);
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      dispatch thunk of Identifiable.id.getter();
      Dictionary.removeValue(forKey:)();
      v42 = v87;
      v101(v48, v104);
      (*v44)(v49, v45);
      (*v47)(v16, v10);
      v28 = v97;
      dispatch thunk of IteratorProtocol.next()();
      v31 = v89;
      v50 = v89(v28, 1, v10);
      v41 = v88;
    }

    while (v50 != 1);
  }

  (*(v77 + 8))(v96, v99);
  v34 = v108;
  if ((v108 & 0xC000000000000001) != 0)
  {
    v35 = __CocoaDictionary.makeIterator()();
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = v35 | 0x8000000000000000;
  }

  else
  {
    v59 = -1 << *(v108 + 32);
    v37 = ~v59;
    v36 = v108 + 64;
    v60 = -v59;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v38 = v61 & *(v108 + 64);
    v39 = v108;
  }

  v62 = (v78 + 56);
  v101 = v37;
  AssociatedConformanceWitness = v34;
  v63 = (v37 + 64) >> 6;
  v103 = (v78 + 16);
  v64 = (v78 + 32);

  v66 = 0;
  while ((v39 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.nextKey()())
    {
      v71 = v79;
LABEL_27:
      (*v62)(v71, 1, 1, v104);
      sub_100019F14(v39);
      *(v76 + v75) = v109;

      v73 = v107;

      return v73;
    }

    v72 = v79;
    v69 = v104;
    _forceBridgeFromObjectiveC<A>(_:_:)();
    v71 = v72;
    swift_unknownObjectRelease();
LABEL_18:
    (*v62)(v71, 0, 1, v69);
    (*v64)(v100, v71, v69);
    type metadata accessor for Array();
    result = Array.append(_:)();
  }

  v70 = v66;
  v71 = v79;
  if (v38)
  {
    v67 = v66;
LABEL_17:
    v68 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v69 = v104;
    (*(v78 + 16))(v79, *(v39 + 48) + *(v78 + 72) * (v68 | (v67 << 6)), v104);
    goto LABEL_18;
  }

  while (1)
  {
    v67 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v67 >= v63)
    {
      goto LABEL_27;
    }

    v38 = *(v36 + 8 * v67);
    ++v70;
    if (v38)
    {
      v66 = v67;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002606C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000260B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000260C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100026110(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100026170(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_100026320(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v39 = a1;
  v4 = *v2;
  v44 = (*v2 + 104);
  v5 = v4[11];
  v43 = type metadata accessor for Optional();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v28 - v6;
  v7 = v4[10];
  v8 = type metadata accessor for Optional();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v33 = &v28 - v9;
  v10 = v4[17];
  v11 = *(v7 - 8);
  v31 = *(v11 + 56);
  v31(&v3[v10], 1, 1, v7);
  v12 = *(*v3 + 144);
  v34 = v5;
  v13 = *(v5 - 8);
  v14 = *(v13 + 56);
  v30 = v13 + 56;
  v35 = v14;
  v14(&v3[v12], 1, 1, v5);
  v15 = *(*v3 + 152);
  v16 = swift_slowAlloc();
  *&v3[v15] = v16;
  *v16 = 0;
  v3[*(*v3 + 160)] = 0;
  v17 = &v3[*(*v3 + 168)];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v28 = *(*v3 + 176);
  v18 = v4[16];
  v36 = v4[14];
  v32 = v4[12];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v29 = v18;
  swift_getAssociatedTypeWitness();
  swift_checkMetadataState();
  swift_getAssociatedConformanceWitness();
  *&v3[v28] = Dictionary.init()();
  v19 = v33;
  (*(v11 + 16))(v33, v39, v7);
  v31(v19, 0, 1, v7);
  v20 = *(*v3 + 136);
  swift_beginAccess();
  (*(v37 + 40))(&v3[v20], v19, v38);
  swift_endAccess();
  v21 = v40;
  v22 = v34;
  (*(v13 + 16))(v40, v42, v34);
  v35(v21, 0, 1, v22);
  v23 = *(*v3 + 144);
  swift_beginAccess();
  (*(v41 + 40))(&v3[v23], v21, v43);
  swift_endAccess();
  v49 = v3;
  v24 = v4[15];
  *&v25 = v32;
  *(&v25 + 1) = *v44;
  *&v26 = v7;
  *(&v26 + 1) = v22;
  v45[1] = v25;
  v45[0] = v26;
  v46 = v36;
  v47 = v24;
  v48 = v29;
  _s17AEADeltaPublisherV17DeltaSubscriptionCMa(0, v45);
  swift_getWitnessTable();
  dispatch thunk of Publisher.receive<A>(subscriber:)();
  return v3;
}

char *sub_1000268E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 128);
  v6 = *(v2 + 96);
  v8[0] = *(v2 + 80);
  v8[1] = v6;
  v8[2] = *(v2 + 112);
  v9 = v5;
  _s17AEADeltaPublisherV17DeltaSubscriptionCMa(0, v8);
  swift_allocObject();
  return sub_100026320(a1, a2);
}

uint64_t sub_10002695C()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 24, v2 | 7);
}

uint64_t sub_100026A04@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of Subscriber.receive(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100026AB0()
{
  sub_100003FB4((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100026AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100058E98();

  return sub_100026B2C(a1, a2);
}

uint64_t sub_100026B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BBFF0, &qword_100081B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026B9C(uint64_t a1, void *a2)
{
  v3 = sub_100005A3C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100026C48(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100005A3C((a1 + 32), *(a1 + 56));
  sub_100022884(0, &unk_1000B8D60, SBSConnectedDisplayInfo_ptr);
  **(*(v2 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v2);
}

id sub_100026CF0()
{
  sub_100026FB8();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AEAConcreteSpringBoardPrimitives.AppRestrictionsMonitoringSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100026DD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100003F6C(&qword_1000B8D48, &qword_100081990);
  __chkstk_darwin(v6);
  v8 = &v2[OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_invalidationHandler];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_monitoringAssertion] = 0;
  v9 = OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_streamMulticaster;
  *(&v19.receiver - v7) = 1;
  (*(v10 + 104))(&v19 - v7, enum case for CATAsyncStreamMulticaster.BufferingPolicy.bufferingNewest<A>(_:));
  sub_100003F6C(&qword_1000B8D50, &qword_100081998);
  swift_allocObject();
  *&v2[v9] = CATAsyncStreamMulticaster.init(bufferingPolicy:)();
  v11 = *v8;
  v12 = v8[1];
  *v8 = a1;
  v8[1] = a2;

  sub_10000858C(v11, v12);
  v13 = type metadata accessor for AEAConcreteSpringBoardPrimitives.AppRestrictionsMonitoringSession();
  v19.receiver = v3;
  v19.super_class = v13;
  v14 = objc_msgSendSuper2(&v19, "init");
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 registerMonitor:v16];

  *&v16[OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_monitoringAssertion] = v17;

  swift_unknownObjectRelease();
  return v16;
}

void sub_100026FB8()
{
  v1 = (v0 + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_invalidationHandler);
  v2 = *(v0 + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_invalidationHandler);
  v3 = *(v0 + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_invalidationHandler + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_10000858C(v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_monitoringAssertion);
  if (v4)
  {
    *(v0 + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_monitoringAssertion) = 0;
    [v4 invalidate];
    swift_unknownObjectRelease();
  }

  CATAsyncStreamMulticaster.finish()();
}

uint64_t sub_100027304(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_100027328, 0, 0);
}

uint64_t sub_100027328()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v1[20];
  v5 = v1[19];
  *(v1[21] + 16) = 0;
  v6 = objc_opt_self();
  v1[14] = v5;
  v1[15] = v4;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100063354;
  v1[13] = &unk_1000A80D8;
  v7 = _Block_copy(v3);
  v1[22] = v7;

  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1000274C4;
  v8 = swift_continuation_init();
  v1[17] = sub_100003F6C(&qword_1000B8D40, &qword_100081988);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000276E8;
  v1[13] = &unk_1000A8100;
  v1[14] = v8;
  [v6 beginConfigurationSessionWithInvalidationHandler:v7 completion:v3];

  return _swift_continuation_await(v2);
}

uint64_t sub_1000274C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100027658;
  }

  else
  {
    v2 = sub_1000275D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000275D4()
{
  v1 = v0[21];
  v2 = v0[22];

  *(v1 + 16) = v0[18];
  swift_unknownObjectRelease();
  _Block_release(v2);
  v3 = v0[1];
  v4 = v0[21];

  return v3(v4);
}

uint64_t sub_100027658(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000276E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100005A3C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000277C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return _swift_task_switch(sub_1000277EC, 0, 0);
}

uint64_t sub_1000277EC()
{
  v1 = *(v0[22] + 16);
  if (v1)
  {
    if (v0[19])
    {
      v3 = v0[20];
      v2 = v0[21];
      v4 = objc_allocWithZone(SBSHomeScreenConfiguration);
      swift_unknownObjectRetain();
      v5 = [v4 init];
      v6 = String._bridgeToObjectiveC()();
      [v5 setName:v6];

      v7 = sub_100027FAC(v3, v2);
      [v5 setLayout:v7];
    }

    else
    {
      swift_unknownObjectRetain();
      v5 = 0;
    }

    v0[23] = v1;
    v0[24] = v5;
    v0[2] = v0;
    v0[3] = sub_1000279E8;
    v10 = swift_continuation_init();
    v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026B9C;
    v0[13] = &unk_1000A80B0;
    v0[14] = v10;
    [v1 applyConfiguration:v5 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000279E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_100027B60;
  }

  else
  {
    v2 = sub_100027AF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100027AF8()
{
  v1 = *(v0 + 192);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100027B60(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100027BFC()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  v0[19] = v2;
  if (v2)
  {
    *(v1 + 16) = 0;
    v0[2] = v0;
    v0[3] = sub_100027D50;
    v3 = swift_continuation_init();
    v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026B9C;
    v0[13] = &unk_1000A8088;
    v0[14] = v3;
    [v2 endConfigurationSessionWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100027D50()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_100027EC4;
  }

  else
  {
    v2 = sub_100027E60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100027E60()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100027EC4(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100027F38()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_100027FAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = a1 + 40;
    do
    {
      v6 = objc_allocWithZone(SBSHomeScreenItemApplication);

      v7 = String._bridgeToObjectiveC()();
      [v6 initWithBundleIdentifier:v7];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  if (a2)
  {
    v8 = *(a2 + 16);
    v9 = _swiftEmptyArrayStorage;
    if (v8)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v10 = a2 + 40;
      do
      {
        v11 = objc_allocWithZone(SBSHomeScreenItemApplication);

        v12 = String._bridgeToObjectiveC()();
        [v11 initWithBundleIdentifier:v12];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v10 += 16;
        --v8;
      }

      while (v8);
      v9 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v9 = 0;
  }

  sub_100022884(0, &qword_1000B8D30, SBSHomeScreenItem_ptr);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v9)
  {
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  v15 = [objc_allocWithZone(SBSHomeScreenConfigurationLayout) initWithItems:v13.super.isa dockItems:v14.super.isa];

  return v15;
}

uint64_t sub_1000281EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100028204(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000282CC()
{
  v1 = [objc_allocWithZone(SBSExternalDisplayService) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100028404;
  v2 = swift_continuation_init();
  v0[17] = sub_100003F6C(&qword_1000B8D58, &qword_1000819A8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100026C48;
  v0[13] = &unk_1000A8128;
  v0[14] = v2;
  [v1 getConnectedDisplayInfoWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100028404()
{

  return _swift_task_switch(sub_1000284E4, 0, 0);
}

void sub_1000284E4()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = _swiftEmptyArrayStorage;
  p_base_props = &AEAConcreteMediaPrimitives.base_props;
  v20 = v1;
  v21 = v2;
  do
  {
    if (v4)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v1 + 8 * v3 + 32);
    }

    v8 = v7;
    if (([v7 isMirrored] & 1) == 0)
    {
      v9 = p_base_props;
      v10 = [v8 p_base_props[483]];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000726D4(0, *(v5 + 2) + 1, 1, v5);
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        v5 = sub_1000726D4((v14 > 1), v15 + 1, 1, v5);
      }

      *(v5 + 2) = v15 + 1;
      v16 = &v5[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      p_base_props = v9;
      v17 = [v8 v9[483]];
      if (!v17)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = String._bridgeToObjectiveC()();
      }

      [*(v22 + 152) setMirroringEnabled:1 forDisplay:v17];

      v1 = v20;
      v2 = v21;
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_19:
  v18 = *(v22 + 152);

  v19 = *(v22 + 8);

  v19(v5);
}

uint64_t sub_100028730()
{
  if (*(v0[19] + 16))
  {
    v1 = [objc_allocWithZone(SBSExternalDisplayService) init];
    v0[20] = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000288A4;
    v2 = swift_continuation_init();
    v0[17] = sub_100003F6C(&qword_1000B8D58, &qword_1000819A8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026C48;
    v0[13] = &unk_1000A8150;
    v0[14] = v2;
    [v1 getConnectedDisplayInfoWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1000288A4()
{

  return _swift_task_switch(sub_100028984, 0, 0);
}

void sub_100028984()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    v14 = *(v0 + 144);
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v14;
    v2 = v15;
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_14;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v18 = v1 & 0xC000000000000001;
  v4 = v1;
  do
  {
    if (v18)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = *(v0 + 152);
    v8 = [v5 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(v0 + 80) = v9;
    *(v0 + 88) = v11;
    v12 = swift_task_alloc();
    *(v12 + 16) = v0 + 80;
    LOBYTE(v7) = sub_100028204(sub_100028B78, v12, v7);

    if (v7)
    {
      v13 = [v6 identifier];
      if (!v13)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = String._bridgeToObjectiveC()();
      }

      [*(v0 + 160) setMirroringEnabled:0 forDisplay:v13];
    }

    ++v3;

    v1 = v4;
  }

  while (v2 != v3);
LABEL_14:
  v16 = *(v0 + 160);

  v17 = *(v0 + 8);

  v17();
}

uint64_t sub_100028B78(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_100028C14(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v6 = sub_100003F6C(&qword_1000B91E8, &qword_100081CD8);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v38 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v9 = __chkstk_darwin(v38);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v34 = &v34 - v12;
  v35 = v11;
  v13 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 56);
  v17 = (v14 + 63) >> 6;
  v36 = (v11 + 48);
  v40 = a3;

  v19 = 0;
  v45 = _swiftEmptyArrayStorage;
  if (v16)
  {
LABEL_10:
    while (1)
    {
      v21 = *(v40 + 48) + 40 * (__clz(__rbit64(v16)) | (v19 << 6));
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      LODWORD(v21) = *(v21 + 32);
      v41[0] = v23;
      v41[1] = v22;
      v42 = v24;
      v43 = v25;
      v44 = v21;

      sub_10001C9B8(v24, v25);
      v39(v41);
      if (v4)
      {
        break;
      }

      v16 &= v16 - 1;
      v26 = v42;
      v27 = v43;

      sub_10001CA20(v26, v27);
      if ((*v36)(v8, 1, v38) == 1)
      {
        result = sub_100019B28(v8, &qword_1000B91E8, &qword_100081CD8);
        if (!v16)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v28 = v34;
        sub_10002C438(v8, v34, type metadata accessor for AEAParticipant.AuxiliaryProcess);
        sub_10002C438(v28, v37, type metadata accessor for AEAParticipant.AuxiliaryProcess);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_100072948(0, v45[2] + 1, 1, v45);
        }

        v30 = v45[2];
        v29 = v45[3];
        if (v30 >= v29 >> 1)
        {
          v45 = sub_100072948((v29 > 1), v30 + 1, 1, v45);
        }

        v31 = v45;
        v45[2] = v30 + 1;
        result = sub_10002C438(v37, v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, type metadata accessor for AEAParticipant.AuxiliaryProcess);
        if (!v16)
        {
          goto LABEL_6;
        }
      }
    }

    v32 = v42;
    v33 = v43;

    sub_10001CA20(v32, v33);

LABEL_19:

    return v45;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_19;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100028FE8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_100029054()
{
  v1 = v0;
  v43 = *v0;
  v2 = sub_100003F6C(&qword_1000B9188, &qword_100081CA0);
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = v34 - v3;
  v4 = sub_100003F6C(&qword_1000B9190, &qword_100081CA8);
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = v34 - v5;
  v7 = sub_100003F6C(&qword_1000B9198, &qword_100081CB0);
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v37 = v34 - v8;
  v9 = sub_100003F6C(&qword_1000B91A0, &qword_100081CB8);
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C370(v12, qword_1000BC548);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Resuming participant matching", v15, 2u);
  }

  v16 = v1[2];
  *&v45 = sub_10007C0EC();
  v34[1] = sub_100003F6C(&qword_1000B7BB8, &qword_100080470);
  v34[2] = sub_100004EE0(&qword_1000B7BC0, &qword_1000B7BB8, &qword_100080470, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100004EE0(&qword_1000B91A8, &qword_1000B91B0, &unk_1000856A0, &protocol conformance descriptor for Set<A>);
  Publisher<>.removeDuplicates()();

  sub_10000859C((v1 + 8), &v45);
  v17 = swift_allocObject();
  sub_100008748(&v45, v17 + 16);
  v18 = v43;
  *(v17 + 56) = v16;
  *(v17 + 64) = v18;
  v19 = &v11[*(v9 + 76)];
  *v19 = sub_10002C278;
  v19[1] = v17;
  swift_allocObject();
  swift_weakInit();
  sub_100004EE0(&qword_1000B91B8, &qword_1000B91A0, &qword_100081CB8, &unk_10007FEC0);
  swift_unknownObjectRetain();
  Publisher<>.sink(receiveValue:)();

  sub_100019B28(v11, &qword_1000B91A0, &qword_100081CB8);
  swift_beginAccess();
  sub_100003F6C(&qword_1000B80F0, &unk_100081CC0);
  sub_100004EE0(&qword_1000B80F8, &qword_1000B80F0, &unk_100081CC0, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  *&v45 = *(*(v1 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager_auxiliaryParticipantAggregator) + 16);
  sub_100003F6C(&qword_1000B8200, &qword_100080D38);
  sub_100004EE0(&qword_1000B8210, &qword_1000B8200, &qword_100080D38, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.removeDuplicates()();
  sub_100004EE0(&qword_1000B91C0, &qword_1000B9190, &qword_100081CA8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v20 = v36;
  v21 = Publisher.eraseToAnyPublisher()();
  (*(v35 + 8))(v6, v20);
  v44 = v21;
  sub_10000859C((v1 + 8), &v45);
  v22 = swift_allocObject();
  sub_100008748(&v45, v22 + 16);
  *(v22 + 56) = v43;
  sub_100003F6C(&qword_1000B8EB0, &qword_100083220);
  v23 = v37;
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_100004EE0(&qword_1000B91C8, &qword_1000B9198, &qword_100081CB0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v24 = v39;
  Publisher<>.sink(receiveValue:)();

  (*(v38 + 8))(v23, v24);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v25 = sub_10002B138();
  v26 = *(v25 + 16);
  if (v26)
  {
    v44 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v27 = v25 + 32;
    do
    {
      sub_10000859C(v27, &v45);
      v28 = v46;
      v29 = v47;
      sub_100005A3C(&v45, v46);
      (*(v29 + 8))(v28, v29);
      sub_100003FB4(&v45);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v27 += 40;
      --v26;
    }

    while (v26);

    v30 = v44;
  }

  else
  {

    v30 = _swiftEmptyArrayStorage;
  }

  *&v45 = v30;
  sub_100003F6C(&qword_1000B91D0, &qword_100081CD0);
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  sub_100004EE0(&qword_1000B91D8, &qword_1000B91D0, &qword_100081CD0, &protocol conformance descriptor for Publishers.AEACombineLatestMany<A>);
  v31 = v40;
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_100004EE0(&qword_1000B91E0, &qword_1000B9188, &qword_100081CA0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v32 = v42;
  Publisher<>.sink(receiveValue:)();

  (*(v41 + 8))(v31, v32);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_100029A14@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100003F6C(&qword_1000B91F0, &qword_100081CE8);
  __chkstk_darwin(v8 - 8);
  v10 = &v33[-1] - v9;
  v11 = a1[3];
  if (v11 >> 60 != 15)
  {
    v12 = a1[2];
    sub_10001C9CC(v12, a1[3]);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14 = [a3 auditTokenForData:isa];

    if (v14)
    {
      v15 = a2[3];
      v16 = a2[4];
      sub_100005A3C(a2, v15);
      (*(v16 + 8))(v14, v15, v16);
      v17 = type metadata accessor for AEAParticipant.Process(0);
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v10, 1, v17) == 1)
      {
        sub_100019B28(v10, &qword_1000B91F0, &qword_100081CE8);
        if (qword_1000B6430 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_10000C370(v19, qword_1000BC548);
        sub_10001CA34(a1, v33);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        sub_10002C3E4(a1);
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v32 = a4;
          v33[0] = v23;
          v24 = v23;
          *v22 = 136446210;
          *(v22 + 4) = sub_100043D60(*a1, a1[1], v33);
          _os_log_impl(&_mh_execute_header, v20, v21, "Failed to lift process for application: %{public}s", v22, 0xCu);
          sub_100003FB4(v24);
          a4 = v32;
        }

        sub_10001CA20(v12, v11);

        return (*(v18 + 56))(a4, 1, 1, v17);
      }

      else
      {
        sub_10001CA20(v12, v11);

        sub_10002C438(v10, a4, type metadata accessor for AEAParticipant.Process);
        return (*(v18 + 56))(a4, 0, 1, v17);
      }
    }

    sub_10001CA20(v12, v11);
  }

  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000C370(v26, qword_1000BC548);
  sub_10001CA34(a1, v33);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  sub_10002C3E4(a1);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33[0] = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_100043D60(*a1, a1[1], v33);
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create audit token for application: %{public}s", v29, 0xCu);
    sub_100003FB4(v30);
  }

  v31 = type metadata accessor for AEAParticipant.Process(0);
  return (*(*(v31 - 8) + 56))(a4, 1, 1, v31);
}

uint64_t sub_100029E94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v9[2] = a2;
  v9[3] = a3;
  v6 = sub_100028C14(sub_10002C39C, v9, v5);
  v7 = sub_10004C298(v6);

  *a4 = v7;
  return result;
}

uint64_t sub_100029F08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_100003F6C(&qword_1000B91E8, &qword_100081CD8);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v13 = a2[3];
  v12 = a2[4];
  sub_100005A3C(a2, v13);
  v14 = *(a1 + 32);
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = *(v12 + 16);
  v29 = v16;
  v30 = v15;
  v18(v14, v15, v16, v8, v13, v12);
  sub_100019B28(v8, &qword_1000B7620, &qword_100081CE0);
  v19 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v11, 1, v19) == 1)
  {
    sub_100019B28(v11, &qword_1000B91E8, &qword_100081CD8);
    if (qword_1000B6430 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C370(v21, qword_1000BC548);
    sub_10001CA34(a1, v31);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_10002C3E4(a1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_100043D60(v30, v29, v31);
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to lift process for application: %{public}s", v24, 0xCu);
      sub_100003FB4(v25);
    }

    v26 = 1;
  }

  else
  {
    sub_10002C438(v11, a3, type metadata accessor for AEAParticipant.AuxiliaryProcess);
    v26 = 0;
  }

  return (*(v20 + 56))(a3, v26, 1, v19);
}

uint64_t sub_10002A260(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t *sub_10002A2F8@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      v6 = v5 + 1;

      result = sub_10006FC94(v7);
      v5 = v6;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v8 = sub_10004C3EC(_swiftEmptyArrayStorage);

    *a2 = v8;
  }

  return result;
}

uint64_t sub_10002A39C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = qword_1000B6430;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C370(v5, qword_1000BC548);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      sub_10002C1E4();
      v10 = Set.description.getter();
      v12 = sub_100043D60(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Publishing Participants: %{public}s", v8, 0xCu);
      sub_100003FB4(v9);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v2;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10002A56C()
{
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC548);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Suspending participant matching", v3, 2u);
  }

  swift_beginAccess();
  sub_10006F5E4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v15[0] = &_swiftEmptySetSingleton;

  static Published.subscript.setter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v15[0] = v7;
    *v6 = 136446210;
    sub_10002C1E4();
    v8 = Set.description.getter();
    v10 = sub_100043D60(v8, v9, v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Publishing Participants: %{public}s", v6, 0xCu);
    sub_100003FB4(v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v15[0] = &_swiftEmptySetSingleton;

  static Published.subscript.setter();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_10002A934();
  sub_100019D8C(v15, v14, &qword_1000BBFF0, &qword_100081B30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100019D8C(v14, &v13, &qword_1000BBFF0, &qword_100081B30);
  static Published.subscript.setter();
  sub_100019B28(v14, &qword_1000BBFF0, &qword_100081B30);
  sub_100019B28(v15, &qword_1000BBFF0, &qword_100081B30);
  v11 = sub_100022574(_swiftEmptyArrayStorage);
  sub_10002AA20();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v15[0] = v11;
  return static Published.subscript.setter();
}

uint64_t sub_10002A934()
{
  v1 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___mainParticipantSource;
  if (*(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___mainParticipantSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___mainParticipantSource);
  }

  else
  {
    type metadata accessor for AEAMainParticipantSource(0);
    v2 = swift_allocObject();
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_100019D8C(v5, v4, &qword_1000BBFF0, &qword_100081B30);
    sub_100003F6C(&qword_1000BBFF0, &qword_100081B30);
    Published.init(initialValue:)();
    sub_100019B28(v5, &qword_1000BBFF0, &qword_100081B30);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10002AA20()
{
  v1 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___configurationParticipantSource;
  if (*(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___configurationParticipantSource))
  {
    v6 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___configurationParticipantSource);
  }

  else
  {
    swift_beginAccess();
    sub_100003F6C(&qword_1000B9170, &qword_100081BB8);
    v7 = v0;
    Published.projectedValue.getter();
    swift_endAccess();
    type metadata accessor for AEAConfigurationParticipantSource(0);
    v6 = swift_allocObject();
    v9[1] = _swiftEmptyDictionarySingleton;
    sub_100003F6C(&qword_1000B9178, &qword_100081BC0);
    Published.init(initialValue:)();
    (*(v2 + 32))(v6 + OBJC_IVAR____TtC15assessmentagent33AEAConfigurationParticipantSource_candidateProcesses, v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_10002ABF4(uint64_t a1)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  if (qword_1000B6450 != -1)
  {
    swift_once();
  }

  v1 = 256;
  if (!HIBYTE(word_1000BC5A8))
  {
    v1 = 0;
  }

  v2 = v1 | word_1000BC5A8;

  return v2;
}

uint64_t sub_10002ACAC(uint64_t *a1, uint64_t a2)
{
  v5 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = *a1;
  if (*(v2 + v9))
  {
    v10 = *(v2 + v9);
  }

  else
  {
    swift_beginAccess();
    sub_100003F6C(&qword_1000B9170, &qword_100081BB8);
    v11 = v2;
    Published.projectedValue.getter();
    swift_endAccess();
    type metadata accessor for AEACandidateMatchingParticipantSource(0);
    v10 = swift_allocObject();
    (*(v6 + 32))(v10 + OBJC_IVAR____TtC15assessmentagent37AEACandidateMatchingParticipantSource_candidateProcesses, v8, v5);
    v12 = (v10 + OBJC_IVAR____TtC15assessmentagent37AEACandidateMatchingParticipantSource_configurationBuilder);
    *v12 = a2;
    v12[1] = 0;
    *(v11 + v9) = v10;
  }

  return v10;
}

uint64_t sub_10002AE3C(uint64_t a1)
{
  if (qword_1000B6550 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  if ((sub_1000317C4(*(a1 + 8), *(a1 + 16), qword_1000BC770) & 1) == 0)
  {
    return 0;
  }

  if (qword_1000B6450 != -1)
  {
    swift_once();
  }

  v1 = 256;
  if (!HIBYTE(word_1000BC5A8))
  {
    v1 = 0;
  }

  v2 = v1 | word_1000BC5A8;

  return v2;
}

uint64_t sub_10002AF1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003F6C(&qword_1000B9160, &qword_100081BA0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___auxiliaryParticipantSource;
  swift_beginAccess();
  sub_100019D8C(v1 + v9, v8, &qword_1000B9160, &qword_100081BA0);
  v10 = type metadata accessor for AEAAnyTrustedParticipantSource(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_10002C438(v8, a1, type metadata accessor for AEAAnyTrustedParticipantSource);
  }

  sub_100019B28(v8, &qword_1000B9160, &qword_100081BA0);
  swift_beginAccess();
  sub_100003F6C(&qword_1000B9168, &unk_100081BA8);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10002BED0(a1, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10002BF34(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_10002B138()
{
  v1 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___participantSources;
  if (*(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___participantSources))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___participantSources);
  }

  else
  {
    sub_100003F6C(&qword_1000B9158, &qword_100081B98);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100080700;
    v3 = sub_10002A934();
    *(v2 + 56) = type metadata accessor for AEAMainParticipantSource(0);
    *(v2 + 64) = &off_1000A9A28;
    *(v2 + 32) = v3;
    v4 = sub_10002AA20();
    *(v2 + 96) = type metadata accessor for AEAConfigurationParticipantSource(0);
    *(v2 + 104) = &off_1000A96A0;
    *(v2 + 72) = v4;
    v5 = sub_10002ABD4();
    v6 = type metadata accessor for AEACandidateMatchingParticipantSource(0);
    *(v2 + 136) = v6;
    *(v2 + 144) = &off_1000A63D8;
    *(v2 + 112) = v5;
    v7 = sub_10002AC8C();
    *(v2 + 176) = v6;
    *(v2 + 184) = &off_1000A63D8;
    *(v2 + 152) = v7;
    *(v2 + 216) = type metadata accessor for AEAAnyTrustedParticipantSource(0);
    *(v2 + 224) = &off_1000A9528;
    v8 = sub_100004F80((v2 + 192));
    sub_10002AF1C(v8);
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_10002B264()
{
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 24));
  sub_100003FB4((v0 + 64));
  v1 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager__candidateProcesses;
  v2 = sub_100003F6C(&qword_1000B9170, &qword_100081BB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager__auxiliaryProcesses;
  v4 = sub_100003F6C(&qword_1000B9168, &unk_100081BA8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager__participants;
  v6 = sub_100003F6C(&qword_1000B9140, &qword_100081B90);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_100019B28(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___auxiliaryParticipantSource, &qword_1000B9160, &qword_100081BA0);

  return v0;
}

uint64_t sub_10002B410()
{
  sub_10002B264();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAmacOSParticipantManager(uint64_t a1)
{
  result = qword_1000B8E90;
  if (!qword_1000B8E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002B4BC(uint64_t a1)
{
  sub_10002B688(319, &qword_1000B8EA0, &unk_1000B7360, &unk_100081AA0);
  if (v1 <= 0x3F)
  {
    sub_10002B688(319, &qword_1000B8EA8, &qword_1000B8EB0, &qword_100083220);
    if (v2 <= 0x3F)
    {
      sub_10002B688(319, &qword_1000B8EB8, &qword_1000B7418, &qword_100081AB0);
      if (v3 <= 0x3F)
      {
        sub_10002B6DC(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10002B688(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100004B50(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10002B6DC(uint64_t a1)
{
  if (!qword_1000B8EC0)
  {
    type metadata accessor for AEAAnyTrustedParticipantSource(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B8EC0);
    }
  }
}

uint64_t sub_10002B734()
{
  v0 = sub_100003F6C(&qword_1000B9130, &qword_100081B80);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  v4 = sub_100003F6C(&qword_1000B9138, &qword_100081B88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  swift_beginAccess();
  sub_100003F6C(&qword_1000B9140, &qword_100081B90);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100004EE0(&qword_1000B9148, &qword_1000B9130, &qword_100081B80, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100004EE0(&qword_1000B7410, &qword_1000B7418, &qword_100081AB0, &protocol conformance descriptor for Set<A>);
  Publisher<>.removeDuplicates()();
  (*(v1 + 8))(v3, v0);
  sub_100004EE0(&qword_1000B9150, &qword_1000B9138, &qword_100081B88, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v8 = Publisher.eraseToAnyPublisher()();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_10002B9B0()
{
  sub_10002A934();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10002BA38(uint64_t a1)
{
  sub_10002A934();
  sub_100019D8C(a1, v4, &qword_1000BBFF0, &qword_100081B30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100019D8C(v4, &v3, &qword_1000BBFF0, &qword_100081B30);
  static Published.subscript.setter();
  sub_100019B28(a1, &qword_1000BBFF0, &qword_100081B30);
  return sub_100019B28(v4, &qword_1000BBFF0, &qword_100081B30);
}

uint64_t sub_10002BB04(uint64_t a1)
{
  sub_10002AA20();
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t sub_10002BBA4(void *a1, uint64_t *a2)
{

  sub_10002BFA4(v2);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10002BC38@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_10002BCF0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10002BD90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10002BE10(uint64_t a1, uint64_t *a2)
{
  sub_100019D8C(a1, v4, &qword_1000BBFF0, &qword_100081B30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100019D8C(v4, &v3, &qword_1000BBFF0, &qword_100081B30);

  static Published.subscript.setter();
  return sub_100019B28(v4, &qword_1000BBFF0, &qword_100081B30);
}

uint64_t sub_10002BED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAAnyTrustedParticipantSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BF34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B9160, &qword_100081BA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10002BFA4(uint64_t a1)
{
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC548);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    sub_10002C1E4();
    v5 = Set.description.getter();
    v7 = sub_100043D60(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Publishing Participants: %{public}s", v3, 0xCu);
    sub_100003FB4(v4);
  }
}

unint64_t sub_10002C1E4()
{
  result = qword_1000B9180;
  if (!qword_1000B9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9180);
  }

  return result;
}

uint64_t sub_10002C238()
{
  sub_100003FB4((v0 + 16));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002C278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 56);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return sub_100029A14(v6, (v2 + 16), v3, a2);
}

uint64_t sub_10002C2C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C324()
{
  sub_100003FB4((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002C39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return sub_100029F08(v6, v3, a2);
}

uint64_t sub_10002C438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Int sub_10002C4B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10002C558(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  String.hash(into:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_10002C5DC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10002C67C@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v7;
  v10 = v8;
  if (v8 >> 60 == 15 && (static String.Encoding.utf8.getter(), v9 = String.data(using:allowLossyConversion:)(), v10 = v11, result = (*(v4 + 8))(v6, v3), v10 >> 60 == 15))
  {
    __break(1u);
  }

  else
  {
    *a1 = v9;
    a1[1] = v10;
    return sub_10001C9B8(v7, v8);
  }

  return result;
}

BOOL sub_10002C7B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_10002D22C(v5, v7);
}

uint64_t sub_10002C7FC()
{
  sub_100003F6C(&qword_1000B80D8, &unk_100081EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100081CF0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v5;
  *(inited + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = v6;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v7;
  *(inited + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 152) = v8;
  *(inited + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 168) = v9;
  v10 = sub_100030F08(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1000B91F8 = v10;
  return result;
}

uint64_t sub_10002C940()
{
  v1 = [v0 bundleIdentifier];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = [v0 applicationState];
  v7 = [v6 isInstalled];

  if (!v7)
  {
    if (qword_1000B6440 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C370(v16, qword_1000BC578);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136446210;
      v21 = sub_100043D60(v3, v5, &v23);

      *(v19 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s is not installed", v19, 0xCu);
      sub_100003FB4(v20);
    }

    else
    {
    }

    return 2;
  }

  v8 = [v0 applicationState];
  v9 = [v8 isRestricted];

  if (!v9)
  {
    goto LABEL_15;
  }

  if (qword_1000B6458 != -1)
  {
    swift_once();
  }

  if (sub_1000317C4(v3, v5, qword_1000B91F8))
  {
    if (qword_1000B6440 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C370(v10, qword_1000BC578);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      v15 = sub_100043D60(v3, v5, &v23);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s is a restricted system application", v13, 0xCu);
      sub_100003FB4(v14);
    }

    else
    {
    }

    return 1;
  }

  else
  {
LABEL_15:

    return 0;
  }
}

uint64_t sub_10002CCB4()
{
  v1 = [*v0 localizedName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10002CD30(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10002CD4C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_10002CD74(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002CD88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_10002CDD0(uint64_t result, int a2, int a3)
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
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002CE28()
{
  result = qword_1000B9200;
  if (!qword_1000B9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9200);
  }

  return result;
}

uint64_t sub_10002CE7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10002D00C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100005A80(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100043B30(v13, a3, a4, &v12);
  v10 = v4;
  sub_100005A80(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10002D00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100043B30(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_10002D0C4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10001C9CC(a3, a4);
          return sub_10002CE7C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_10002D22C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 1);
  v11 = *(a2 + 16);
  v12 = v5;
  v6 = v5;
  v7 = v11;
  if (*(&v5 + 1) >> 60 != 15)
  {
    if (*(&v11 + 1) >> 60 != 15)
    {
      sub_10002D388(&v12, v10);
      sub_10002D388(&v11, v10);
      v9 = sub_10002D0C4(v6, *(&v6 + 1), v7, *(&v7 + 1));
      sub_10001CA20(v7, *(&v7 + 1));
      sub_10001CA20(v6, *(&v6 + 1));
      if (v9)
      {
        return *(a1 + 8) == *(a2 + 32);
      }

      return 0;
    }

LABEL_10:
    sub_10002D388(&v12, v10);
    sub_10002D388(&v11, v10);
    sub_10001CA20(v6, *(&v6 + 1));
    sub_10001CA20(v7, *(&v7 + 1));
    return 0;
  }

  if (*(&v11 + 1) >> 60 != 15)
  {
    goto LABEL_10;
  }

  sub_10002D388(&v12, v10);
  sub_10002D388(&v11, v10);
  sub_10001CA20(v6, *(&v6 + 1));
  return *(a1 + 8) == *(a2 + 32);
}

uint64_t sub_10002D388(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B9208, &qword_100081ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AEAApplicationAvailability(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AEAApplicationAvailability(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002D554()
{
  result = qword_1000B9210;
  if (!qword_1000B9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9210);
  }

  return result;
}

uint64_t sub_10002D5A8()
{
  v1[19] = v0;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100030C80(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_10002D670, v3, v2);
}

uint64_t sub_10002D670()
{
  v1 = v0[19];
  if (*(v1 + 152))
  {
    v6 = v0[1];

    return v6(v2);
  }

  else
  {
    v4 = *(v1 + 16);
    v0[22] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10002D7E4;
    v5 = swift_continuation_init();
    v0[17] = sub_100003F6C(&qword_1000B93F0, &unk_100082060);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10002DE3C;
    v0[13] = &unk_1000A8430;
    v0[14] = v5;
    [v4 fetchNetworkContentFilterBundleIdentifiersWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10002D7E4()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return _swift_task_switch(sub_10002D8EC, v2, v1);
}

uint64_t sub_10002D8EC()
{
  v45 = v0;
  v1 = *(v0 + 144);
  if (qword_1000B6428 != -1)
  {
LABEL_48:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC530);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v44 = v6;
    *v5 = 136446210;
    v7 = Array.description.getter();
    v9 = sub_100043D60(v7, v8, &v44);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Discovered Web Content Filters %{public}s", v5, 0xCu);
    sub_100003FB4(v6);
  }

  v10 = v1[2];
  if (v10)
  {
    v11 = 0;
    v12 = -v10;
    v13 = v1 + 5;
    v14 = _swiftEmptyArrayStorage;
    while (2)
    {
      v15 = &v13[2 * v11++];
      while (1)
      {
        if ((v11 - 1) >= v1[2])
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v16 = v43[22];

        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 machOUUIDsForBundleIdentifier:v17];

        if (v18)
        {
          break;
        }

        ++v11;
        v15 += 2;
        if (v12 + v11 == 1)
        {
          goto LABEL_18;
        }
      }

      type metadata accessor for UUID();
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100072A98(0, v14[2] + 1, 1, v14);
      }

      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        v14 = sub_100072A98((v20 > 1), v21 + 1, 1, v14);
      }

      v14[2] = v21 + 1;
      v14[v21 + 4] = v19;
      v13 = v1 + 5;
      if (v12 + v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_18:

  v22 = v14[2];
  if (v22)
  {
    v23 = 0;
    v1 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v23 >= v14[2])
      {
        goto LABEL_43;
      }

      v24 = v14[v23 + 4];
      v25 = *(v24 + 16);
      v26 = v1[2];
      v27 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_44;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v27 <= v1[3] >> 1)
      {
        if (!*(v24 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v26 <= v27)
        {
          v29 = v26 + v25;
        }

        else
        {
          v29 = v26;
        }

        v1 = sub_100072BF0(isUniquelyReferenced_nonNull_native, v29, 1, v1);
        if (!*(v24 + 16))
        {
LABEL_20:

          if (v25)
          {
            goto LABEL_45;
          }

          goto LABEL_21;
        }
      }

      v30 = (v1[3] >> 1) - v1[2];
      type metadata accessor for UUID();
      if (v30 < v25)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();

      if (v25)
      {
        v31 = v1[2];
        v32 = __OFADD__(v31, v25);
        v33 = v31 + v25;
        if (v32)
        {
          goto LABEL_47;
        }

        v1[2] = v33;
      }

LABEL_21:
      if (v22 == ++v23)
      {
        goto LABEL_37;
      }
    }
  }

  v1 = _swiftEmptyArrayStorage;
LABEL_37:

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v36 = 136446210;
    type metadata accessor for UUID();
    v38 = Array.description.getter();
    v40 = sub_100043D60(v38, v39, &v44);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "Granting access to UUIDs %{public}s", v36, 0xCu);
    sub_100003FB4(v37);
  }

  *(v43[19] + 152) = v1;

  v41 = v43[1];

  return v41(v1);
}

uint64_t sub_10002DE3C(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100005A3C((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v2);
}

uint64_t sub_10002DEAC()
{
  v1 = v0;
  v2 = sub_100003F6C(&qword_1000B93A8, &qword_100082028);
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  __chkstk_darwin(v2);
  v18 = v17 - v4;
  v5 = v0[11];
  v6 = v0[12];
  sub_100005A3C(v0 + 8, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  v20 = v7;
  v0[16] = v7;

  v19 = v9;
  v10 = v0[14];
  v24 = v0[13];
  v25 = v9;
  v23 = v10;

  v17[1] = sub_100003F6C(&qword_1000B93B0, &qword_100082030);
  sub_100003F6C(&qword_1000B93B8, &qword_100082038);
  sub_100003F6C(&qword_1000B93C0, &qword_100082040);
  sub_100004EE0(&qword_1000B93C8, &qword_1000B93B0, &qword_100082030, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100004EE0(&qword_1000B93D0, &qword_1000B93B8, &qword_100082038, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100004EE0(&qword_1000B93D8, &qword_1000B93C0, &qword_100082040, &protocol conformance descriptor for AnyPublisher<A, B>);
  v11 = v18;
  Publishers.CombineLatest3.init(_:_:_:)();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100030D60;
  *(v13 + 24) = v12;
  sub_100004EE0(&qword_1000B93E0, &qword_1000B93A8, &qword_100082028, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  v14 = v21;
  v15 = Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v11, v14);
  v1[17] = v15;
}

uint64_t sub_10002E1CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v12 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1 & 1;
    *(v13 + 32) = a2;
    *(v13 + 40) = a3;
    *(v13 + 48) = a4;
    *(v13 + 56) = a5;

    sub_100003F6C(&qword_1000B93E8, &qword_100082058);
    CATSerializer.enqueue<A>(respectingCancelAll:_:)();
  }

  return result;
}

uint64_t sub_10002E33C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = a7;
  *(v7 + 112) = a4;
  *(v7 + 120) = a5;
  *(v7 + 184) = a3;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100030C80(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 144) = v8;
  *(v7 + 152) = v9;

  return _swift_task_switch(sub_10002E444, v8, v9);
}

uint64_t sub_10002E444()
{
  v33 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 128);
    v4 = *(v3 + 32);
    v5 = v4 & 0x3F;
    v6 = ((1 << v4) + 63) >> 6;
    v7 = 8 * v6;

    v9 = v3;
    v31 = v2;
    if (v5 > 0xD)
    {
      goto LABEL_25;
    }

    do
    {
      v29[1] = v29;
      v30 = v6;
      __chkstk_darwin(isStackAllocationSafe);
      v10 = v29 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v10, v7);
      v32 = 0;
      v11 = 0;
      v12 = 1 << *(v3 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v9 + 56);
      v3 = (v12 + 63) >> 6;
      v6 = 56;
      while (v14)
      {
        v15 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_13:
        v7 = v15 | (v11 << 6);
        sub_100030BD0(*(v9 + 48) + 56 * v7, v0 + 16);
        v18 = *(v0 + 56);
        sub_100030C2C(v0 + 16);
        if (v18 == 1)
        {
          *&v10[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
          if (__OFADD__(v32++, 1))
          {
            __break(1u);
LABEL_17:
            v20 = sub_10004B4F8(v10, v30, v32, *(v0 + 128));
            goto LABEL_18;
          }
        }
      }

      v16 = v11;
      while (1)
      {
        v11 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v11 >= v3)
        {
          goto LABEL_17;
        }

        v17 = *(v9 + 56 + 8 * v11);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v14 = (v17 - 1) & v17;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      v9 = *(v0 + 128);
    }

    while ((isStackAllocationSafe & 1) != 0);
    v28 = swift_slowAlloc();
    v20 = sub_1000306F8(v28, v6, v9, sub_10002EA1C);

LABEL_18:
    *(v0 + 168) = v20;
    v21 = swift_task_alloc();
    *(v0 + 176) = v21;
    *v21 = v0;
    v21[1] = sub_10002E7EC;
    v22 = *(v0 + 136);
    v23 = *(v0 + 112);
    v24 = *(v0 + 120);
    v25 = *(v0 + 184);

    return sub_10002EAD4(v25, v23, v24, v20, v22);
  }

  else
  {
    **(v0 + 96) = 1;
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_10002E7EC()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_10002E980, v3, v2);
}

uint64_t sub_10002E980()
{
  **(v0 + 96) = *(v0 + 160) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002EA24(void *a1, void (*a2)(uint64_t, uint64_t (*)(), uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v9 = a1[3];
  v8 = a1[4];

  a2(v4, sub_100030DA8, v7, v9, v8);
}

uint64_t sub_10002EAD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = v5;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 32) = a2;
  *(v6 + 112) = a1;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100030C80(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 72) = v8;
  *(v6 + 80) = v7;

  return _swift_task_switch(sub_10002EBA8, v8, v7);
}

uint64_t sub_10002EBA8()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 144);
  if (v2)
  {
    [v2 releaseRestrictions];
    v1 = *(v0 + 64);
  }

  v3 = *(v0 + 112);
  v4 = *(v1 + 16);
  *(v0 + 88) = v4;
  [v4 clearUUIDCache];
  if (v3 == 1)
  {
    if (qword_1000B6428 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C370(v5, qword_1000BC530);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Not applying network restrictions because the config allows network access", v8, 2u);
    }

    (*(v0 + 32))(0, 0);
    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = *(v0 + 64);
    v13 = *(v0 + 48);
    *(v0 + 16) = _swiftEmptyArrayStorage;
    *(v0 + 24) = _swiftEmptyArrayStorage;

    sub_10003097C(v13, (v0 + 24), v12, v0 + 16);
    sub_100030A98(v11, v12);

    v14 = swift_task_alloc();
    *(v0 + 96) = v14;
    *v14 = v0;
    v14[1] = sub_10002EDDC;

    return sub_10002D5A8();
  }
}

uint64_t sub_10002EDDC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_10002EF04, v4, v3);
}

uint64_t sub_10002EF04()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  sub_1000700BC(*(v0 + 104));
  sub_100005C1C();
  isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for UUID();
  v4 = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v1 restrictNetworkExcludingProcessesWithIdentifiers:isa machOUUIDs:v4];

  *(v2 + 144) = v5;

  swift_unknownObjectRelease();
  (*(v0 + 32))(0, 0);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10002F018(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v62 = a3;
  v56 = a2;
  v5 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  __chkstk_darwin(v8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for URL();
  v10 = *(v63 - 8);
  v11 = __chkstk_darwin(v63);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v53 - v14;
  if (qword_1000B6428 != -1)
  {
LABEL_24:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_10000C370(v15, qword_1000BC530);
  sub_100030BD0(a1, v64);
  v55 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v60 = v13;
  v58 = v8;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v67 = v21;
    *v20 = 136446210;
    v22 = sub_10001F488();
    v23 = a1;
    v25 = v24;
    sub_100030C2C(v64);
    v26 = sub_100043D60(v22, v25, &v67);
    a1 = v23;

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "Creating policy for %{public}s", v20, 0xCu);
    sub_100003FB4(v21);
  }

  else
  {

    sub_100030C2C(v64);
  }

  v27 = a1[3];
  v28 = a1[4];
  sub_100005A3C(a1, v27);
  [objc_allocWithZone(NSNumber) initWithInt:{(*(v28 + 40))(v27, v28)}];
  v29 = v56;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100030BD0(a1, v64);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67240192;
    v33 = a1;
    v34 = v65;
    v35 = v66;
    sub_100005A3C(v64, v65);
    v36 = *(v35 + 40);
    v37 = v35;
    a1 = v33;
    v38 = v36(v34, v37);
    sub_100030C2C(v64);
    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "Granting access for process %{public}d", v32, 8u);
  }

  else
  {
    sub_100030C2C(v64);
  }

  v39 = v7;
  v40 = v57;
  v7 = v58;
  v41 = v63;
  v42 = a1[3];
  v43 = a1[4];
  sub_100005A3C(a1, v42);
  (*(v43 + 56))(v42, v43);
  sub_100005AD4(v40 + *(v7 + 6), v39);
  sub_100030CC8(v40, type metadata accessor for AEAParticipant.SecurityInfo);
  if ((*(v10 + 6))(v39, 1, v41) == 1)
  {
    return sub_100005B44(v39);
  }

  v13 = v54;
  (*(v10 + 4))(v54, v39, v41);
  if (sub_10002F6C8(v13))
  {
    v8 = v59;
    sub_100005A3C((v62 + 24), *(v62 + 48));
    v45 = sub_10001DA3C(v13);
  }

  else
  {
    v8 = v59;
    sub_100003F6C(&qword_1000B9388, &unk_100082010);
    v46 = (v10[80] + 32) & ~v10[80];
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1000807D0;
    (*(v10 + 2))(v45 + v46, v13, v41);
  }

  v59 = *(v45 + 16);
  if (v59)
  {
    v47 = 0;
    a1 = v10 + 16;
    v48 = (v10 + 8);
    v58 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      if (v47 >= *(v45 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v49 = v45 + ((v10[80] + 32) & ~v10[80]) + *(v10 + 9) * v47;
      v7 = v10;
      v50 = *(v10 + 2);
      v13 = v60;
      v51 = v63;
      v50(v60, v49, v63);
      sub_10002FA24(v13, v62);
      if (v8)
      {
        break;
      }

      ++v47;
      v52 = *v48;
      (*v48)(v13, v51);
      v10 = v7;
      if (v59 == v47)
      {
        goto LABEL_22;
      }
    }

    result = (*v48)(v13, v51);
    __break(1u);
  }

  else
  {
    v52 = *(v10 + 1);
LABEL_22:
    v52(v54, v63);
  }

  return result;
}

uint64_t sub_10002F6C8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v22 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  sub_100003F6C(&qword_1000B9398, &unk_100084B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000807D0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v13 = NSURLIsDirectoryKey;
  sub_100030788(inited);
  swift_setDeallocating();
  sub_100030CC8(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  v14 = v22;
  (*(v22 + 16))(v4, a1, v2);
  v21 = *(v6 + 16);
  v21(v9, v11, v5);
  v15 = type metadata accessor for AEAConcreteFileSystemPrimitives.ConcreteURLResourceValues(0);
  v16 = swift_allocObject();
  (*(v14 + 32))(v16 + OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingURL, v4, v2);
  (*(v6 + 32))(v16 + OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingValues, v9, v5);
  v24 = v15;
  v25 = &off_1000A78F8;
  *&v23 = v16;
  v17 = *(v6 + 8);
  v17(v11, v5);
  sub_100008748(&v23, v26);
  v18 = *sub_100005A3C(v26, v26[3]);
  v19 = OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingValues;
  swift_beginAccess();
  v21(v9, (v18 + v19), v5);
  LOBYTE(v18) = URLResourceValues.isDirectory.getter();
  v17(v9, v5);
  sub_100003FB4(v26);
  return v18 & 1;
}

void sub_10002FA24(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (&v28 - v8);
  v10 = *(a2 + 16);
  URL._bridgeToObjectiveC()(v8);
  v12 = v11;
  v13 = [v10 machOUUIDsForExecutableURL:v11];

  if (v13)
  {
    type metadata accessor for UUID();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000700BC(v14);
    if (qword_1000B6428 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C370(v15, qword_1000BC530);
    (*(v6 + 16))(v9, a1, v5);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = v2;
      v19 = v18;
      v30 = swift_slowAlloc();
      v32 = v30;
      *v19 = 136446466;
      sub_100030C80(&qword_1000B9390, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v17;
      v22 = v21;
      (*(v6 + 8))(v9, v5);
      v23 = sub_100043D60(v20, v22, &v32);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v24 = Array.description.getter();
      v26 = v25;

      v27 = sub_100043D60(v24, v26, &v32);

      *(v19 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v16, v29, "Granting access for executable at %{public}s with UUIDs %{public}s", v19, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }
}

void sub_10002FD8C(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a2 + 16);
  URL.init(fileURLWithPath:)();
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v15 = [v11 machOUUIDsForExecutableURL:v14];

  if (v15)
  {
    type metadata accessor for UUID();
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v16 + 16))
    {
      if (qword_1000B6428 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000C370(v17, qword_1000BC530);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v30[1] = v2;
        v21 = v20;
        v31 = swift_slowAlloc();
        *v21 = 136446466;
        *(v21 + 4) = sub_100043D60(v9, v10, &v31);
        *(v21 + 12) = 2082;
        v22 = Array.description.getter();
        v24 = sub_100043D60(v22, v23, &v31);

        *(v21 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Granting access for executable at %{public}s with UUIDs %{public}s", v21, 0x16u);
        swift_arrayDestroy();
      }

      sub_1000700BC(v16);
      return;
    }
  }

  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000C370(v25, qword_1000BC518);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_100043D60(v9, v10, &v31);
    _os_log_impl(&_mh_execute_header, v26, v27, "Can't grant network access for executable at: %{public}s", v28, 0xCu);
    sub_100003FB4(v29);
  }
}

void *sub_100030170()
{
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 24));
  sub_100003FB4((v0 + 64));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1000301D8()
{
  sub_100030170();

  return swift_deallocClassInstance();
}

uint64_t sub_10003022C()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001A778;

  return sub_10003119C(v2);
}

uint64_t sub_1000302C0(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100030C80(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100030388, v4, v3);
}

uint64_t sub_100030388()
{
  v1 = *(v0 + 184);
  v19 = *(v0 + 176);
  v2 = v1[3];
  sub_10000859C((v1 + 4), v0 + 16);
  sub_10000859C((v1 + 9), v0 + 56);
  v17 = v1[14];
  v18 = v1[15];
  v3 = *(v0 + 40);
  v4 = sub_10001A19C(v0 + 16, v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  v7 = *v6;
  v8 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  *(v0 + 120) = v8;
  *(v0 + 128) = &off_1000A7928;
  *(v0 + 96) = v7;
  type metadata accessor for AEANetworkAssertion();
  v9 = swift_allocObject();
  v10 = sub_10001A19C(v0 + 96, v8);
  v11 = *(v8 - 8);
  v12 = swift_task_alloc();
  (*(v11 + 16))(v12, v10, v8);
  v13 = *v12;
  *(v0 + 160) = v8;
  *(v0 + 168) = &off_1000A7928;
  *(v0 + 136) = v13;
  type metadata accessor for CATSerializer();
  swift_allocObject();
  swift_unknownObjectRetain();

  *(v9 + 120) = CATSerializer.init()();
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 16) = v2;
  sub_100008748((v0 + 136), v9 + 24);
  sub_100008748((v0 + 56), v9 + 64);
  *(v9 + 104) = v17;
  *(v9 + 112) = v18;
  sub_100003FB4((v0 + 96));

  sub_100003FB4((v0 + 16));

  sub_10002DEAC();
  v19[3] = &type metadata for AEANetworkDeactivation;
  v19[4] = &off_1000A85F0;
  v14 = swift_allocObject();
  *v19 = v14;
  v14[2] = 0xD000000000000024;
  v14[3] = 0x80000001000892D0;
  v14[4] = 4;
  v14[5] = v9;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100030660(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000F618;

  return sub_1000302C0(a1);
}

unint64_t *sub_1000306F8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10004BDE4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_100030788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B93A0, &qword_100082020);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10003097C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    sub_100030BD0(*(a1 + 48) + 56 * (v17 | (v16 << 6)), v18);
    sub_10002F018(v18, a2, a3, a4);
    result = sub_100030C2C(v18);
    if (v4)
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100030A98(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a1 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v15[0] = *v13;
      v15[1] = v14;

      sub_10002FD8C(v15, a2);
      if (v2)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100030C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100030CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100030D28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030D68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100030DB4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100030E04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000F618;

  return sub_10002E33C(a1, v4, v5, v6, v7, v9, v8);
}

Swift::Int sub_100030F08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B93F8, &unk_100083270);
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

__n128 sub_100031070(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100031094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1000310DC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10003114C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003119C(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100030C80(&qword_1000B80C8, type metadata accessor for AgentActor, &unk_100082DB4);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100031264, v3, v2);
}

uint64_t sub_100031264()
{
  v1 = *(v0 + 16);
  CATSerializer.cancelAllTasks()();
  if (*(v1 + 136))
  {

    AnyCancellable.cancel()();
  }

  v2 = *(*(v0 + 16) + 144);
  if (v2)
  {
    [v2 releaseRestrictions];
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100031314(void (*a1)(void ***), uint64_t a2)
{
  v5 = *v2;

  sub_100031370(v5, a1, a2);
}

uint64_t sub_100031370(uint64_t a1, void (*a2)(void ***), uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10000CB28;
  *(v11 + 24) = v10;
  v12 = qword_1000B6460;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_1000BC5B8;
  *v9 = qword_1000BC5B8;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v13)
  {
    v16 = *(a1 + 136);
    if (v16)
    {
      if (*(a1 + 144))
      {
        sub_10003176C();
        v17 = swift_allocError();
        *v18 = 0;
        aBlock = v17;
        LOBYTE(v22) = 1;
        swift_unknownObjectRetain();
        swift_errorRetain();
        a2(&aBlock);

        swift_unknownObjectRelease();
      }

      else
      {
        *(a1 + 144) = 1;
        swift_unknownObjectRetain();
        sub_10005A384();
        v19 = swift_allocObject();
        v19[2] = a1;
        v19[3] = sub_10000CB34;
        v19[4] = v11;
        v25 = sub_100031748;
        v26 = v19;
        aBlock = _NSConcreteStackBlock;
        v22 = 1107296256;
        v23 = sub_100063398;
        v24 = &unk_1000A86B0;
        v20 = _Block_copy(&aBlock);

        [v16 deactivateWithCompletion:v20];

        _Block_release(v20);

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      aBlock = 0;
      LOBYTE(v22) = 0;
      a2(&aBlock);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000316D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031708()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031754(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10003176C()
{
  result = qword_1000B9418;
  if (!qword_1000B9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9418);
  }

  return result;
}

uint64_t sub_1000317C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000318E0()
{
  sub_100032B7C();

  sub_100019B28(v0 + OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_browsingToken, &qword_1000B9608, &unk_100082268);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAConcreteRunningBoardPrimitives.RunningApplicationMonitor(uint64_t a1)
{
  result = qword_1000B94F8;
  if (!qword_1000B94F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000319CC(uint64_t a1)
{
  sub_100033080(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100031A84(uint64_t a1)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_100003F6C(&qword_1000B9608, &unk_100082268);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for UUID();
  v47 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v42 = v8;
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v15 = qword_1000BC5B8;
  *v14 = qword_1000BC5B8;
  v16 = *(v12 + 104);
  v46 = enum case for DispatchPredicate.onQueue(_:);
  v45 = v16;
  v16(v14);
  v17 = v15;
  v18 = _dispatchPreconditionTest(_:)();
  v44 = *(v12 + 8);
  result = v44(v14, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  UUID.init()();
  v20 = *(v47 + 16);
  v41 = v10;
  v21 = v10;
  v22 = v47;
  v39 = v20;
  v20(v5, v21, v6);
  (*(v22 + 56))(v5, 0, 1, v6);
  v40 = v6;
  v23 = OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_browsingToken;
  swift_beginAccess();
  sub_1000331AC(v5, v2 + v23);
  swift_endAccess();
  v24 = v48;
  *(v2 + OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs) = v48;

  *v14 = v17;
  v45(v14, v46, v11);
  v25 = v17;
  v26 = _dispatchPreconditionTest(_:)();
  result = v44(v14, v11);
  if ((v26 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  CurrentValueSubject.value.getter();
  v27 = aBlock[0];

  v28 = sub_100033510(v27, v2);

  aBlock[0] = v28;
  CurrentValueSubject.send(_:)();

  v29 = *(v2 + 16);
  v30 = v43;
  v31 = v40;
  v32 = v41;
  v39(v43, v41, v40);
  v33 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v24;
  *(v34 + 24) = v2;
  (*(v22 + 32))(v34 + v33, v30, v31);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100033964;
  *(v35 + 24) = v34;
  aBlock[4] = sub_1000339E8;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100032B28;
  aBlock[3] = &unk_1000A8758;
  v36 = _Block_copy(aBlock);

  [v29 updateConfiguration:v36];
  _Block_release(v36);
  (*(v22 + 8))(v32, v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_100031FBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100003F6C(&qword_1000B9670, &unk_100082278);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000821D0;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v11 = [objc_opt_self() predicateMatchingBundleIdentifiers:isa];

  *(v9 + 32) = v11;
  sub_100033A28();
  v12 = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates:v12];

  v13 = [objc_allocWithZone(RBSProcessStateDescriptor) init];
  [a1 setStateDescriptor:v13];

  v14 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v7 + 32))(v16 + v15, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  aBlock[4] = sub_100033B70;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100032A88;
  aBlock[3] = &unk_1000A87D0;
  v17 = _Block_copy(aBlock);

  [a1 setUpdateHandler:v17];
  _Block_release(v17);
}

uint64_t sub_100032280(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a2;
  v29 = a3;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v25[1] = qword_1000BC5B8;
  (*(v12 + 16))(v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v27;
  (*(v12 + 32))(v17 + v15, v14, v11);
  v19 = v28;
  v18 = v29;
  *(v17 + v16) = v28;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_100033CEC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A8820;
  v20 = _Block_copy(aBlock);

  v21 = v19;
  v22 = v18;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100033DF8(&qword_1000B8950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450, &protocol conformance descriptor for [A]);
  v23 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v32 + 8))(v7, v23);
  (*(v30 + 8))(v10, v31);
}

uint64_t sub_100032680(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v27 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003F6C(qword_1000B9680, &qword_100082288);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_100003F6C(&qword_1000B9608, &unk_100082268);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v26 = a4;
    (*(v7 + 16))(v18, a2, v6);
    (*(v7 + 56))(v18, 0, 1, v6);
    v21 = OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_browsingToken;
    swift_beginAccess();
    v22 = *(v10 + 48);
    sub_100033D88(v18, v12);
    sub_100033D88(v20 + v21, &v12[v22]);
    v23 = *(v7 + 48);
    if (v23(v12, 1, v6) == 1)
    {
      sub_100019B28(v18, &qword_1000B9608, &unk_100082268);
      if (v23(&v12[v22], 1, v6) == 1)
      {
        sub_100019B28(v12, &qword_1000B9608, &unk_100082268);
LABEL_9:
        sub_100032DB4(v27, v26);
      }
    }

    else
    {
      sub_100033D88(v12, v16);
      if (v23(&v12[v22], 1, v6) != 1)
      {
        (*(v7 + 32))(v9, &v12[v22], v6);
        sub_100033DF8(&qword_1000B88A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *(v7 + 8);
        v25(v9, v6);
        sub_100019B28(v18, &qword_1000B9608, &unk_100082268);
        v25(v16, v6);
        sub_100019B28(v12, &qword_1000B9608, &unk_100082268);
        if (v24)
        {
          goto LABEL_9;
        }
      }

      sub_100019B28(v18, &qword_1000B9608, &unk_100082268);
      (*(v7 + 8))(v16, v6);
    }

    sub_100019B28(v12, qword_1000B9680, &qword_100082288);
  }

  return result;
}

void sub_100032A88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

uint64_t sub_100032B28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100032B7C()
{
  v1 = sub_100003F6C(&qword_1000B9608, &unk_100082268);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v8 = qword_1000BC5B8;
  *v7 = qword_1000BC5B8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    [*(v0 + 16) invalidate];
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    v12 = OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_browsingToken;
    swift_beginAccess();
    sub_1000331AC(v3, v0 + v12);
    swift_endAccess();
    *(v0 + OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs) = &_swiftEmptySetSingleton;

    v13[1] = &_swiftEmptySetSingleton;
    return CurrentValueSubject.send(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100032DB4(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v8 = qword_1000BC5B8;
  *v7 = qword_1000BC5B8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = [a1 bundle];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 identifier];

      if (v12)
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        [a1 auditToken];
        v27 = v31;
        v28 = v30;
        v16 = objc_allocWithZone(AEAConcreteAuditToken);
        v30 = v28;
        v31 = v27;
        v17 = [v16 initWithAuditToken:&v30];
        CurrentValueSubject.value.getter();
        v18 = [a2 state];
        if (v18 && (v19 = v18, v20 = [v18 isRunning], v19, v20))
        {

          sub_1000457F4(&v30, v13, v15, v17);
        }

        else
        {
          v21 = sub_100039DF4(v13, v15, v17);
          sub_100033168(v21, v22, v23);
        }

        v24 = v29;
        v25 = *(v29 + 16);
        CurrentValueSubject.value.getter();
        v26 = *(v30 + 16);

        if (v25 != v26)
        {
          *&v30 = v24;
          CurrentValueSubject.send(_:)();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100033080(uint64_t a1)
{
  if (!qword_1000B9508)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B9508);
    }
  }
}

uint64_t sub_1000330D8()
{
  sub_100003F6C(&qword_1000B95F8, &qword_100082260);
  sub_100004EE0(&qword_1000B9600, &qword_1000B95F8, &qword_100082260, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  return Publisher.eraseToAnyPublisher()();
}

void sub_100033168(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1000331AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B9608, &unk_100082268);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t *sub_10003321C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1000332B8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1000332B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 56);
  v30 = OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs;
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = *(a4 + v30);
    if (*(v13 + 16))
    {
      v33 = v8;
      v27 = v10 | (v4 << 6);
      v14 = (*(a3 + 48) + 24 * v27);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      Hasher.init(_seed:)();
      v32 = v17;

      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(v13 + 32);
      v20 = v18 & ~v19;
      if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(v13 + 48) + 16 * v20);
          v23 = *v22 == v15 && v22[1] == v16;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(a1 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v24 = __OFADD__(v28++, 1);
        v8 = v33;
        if (v24)
        {
          __break(1u);
LABEL_26:

          sub_10004B748(a1, a2, v28, a3);
          return;
        }
      }

      else
      {
LABEL_5:

        v8 = v33;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_26;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
}

Swift::Int sub_100033510(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v35 = v8;
    v36 = v3;
    v34 = &v34;
    __chkstk_darwin(v10);
    v37 = &v34 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v9);
    v3 = 0;
    v8 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = v11 < 64 ? ~(-1 << v11) : -1;
    v13 = v12 & *(v5 + 56);
    v41 = 0;
    v42 = OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs;
    v14 = (v11 + 63) >> 6;
    v38 = v5;
    v39 = a2;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v3 << 6);
      v19 = *(a2 + v42);
      if (*(v19 + 16))
      {
        v44 = v13;
        v20 = *(v5 + 48);
        v40 = v18;
        v21 = (v20 + 24 * v18);
        v9 = *v21;
        v22 = v21[1];
        v23 = v21[2];
        Hasher.init(_seed:)();
        v43 = v23;

        String.hash(into:)();
        v24 = Hasher._finalize()();
        v25 = -1 << *(v19 + 32);
        v26 = v24 & ~v25;
        if ((*(v19 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          while (1)
          {
            v28 = (*(v19 + 48) + 16 * v26);
            v29 = *v28 == v9 && v28[1] == v22;
            if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v19 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          a2 = v39;
          v5 = v38;
          *&v37[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
          v30 = __OFADD__(v41++, 1);
          v13 = v44;
          if (v30)
          {
            __break(1u);
LABEL_27:
            v31 = sub_10004B748(v37, v35, v41, v5);

            return v31;
          }
        }

        else
        {
LABEL_6:

          v5 = v38;
          a2 = v39;
          v13 = v44;
        }
      }
    }

    v16 = v3;
    while (1)
    {
      v3 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v3 >= v14)
      {
        goto LABEL_27;
      }

      v17 = *(v8 + 8 * v3);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v31 = sub_10003321C(v33, v8, v5, a2);

  return v31;
}