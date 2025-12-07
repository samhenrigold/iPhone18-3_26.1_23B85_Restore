uint64_t sub_1000458E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045920()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004597C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000459C4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100045A74()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100045AD8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_100045B1C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_100045B9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045BDC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000240AC;

  return sub_100042E6C(a1, v5, v4);
}

uint64_t sub_100045C88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CUEnvironmentValues.cpsResponderDaemonEnabled.getter()
{
  sub_10002B3AC();
  CUEnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_100045D6C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for CUEnvironmentValues();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_100046F44(&qword_10009B998, &unk_10006E6BC);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v5;
  v2[12] = v4;

  return _swift_task_switch(sub_100045E88, v5, v4);
}

uint64_t sub_100045E88()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = CUNextIDDecimal64();
  v21 = *(v2 + 16);
  v22 = v6;
  v21(v1, v3 + OBJC_IVAR____TtC10companiond18CPSResponderDaemon_environment, v4);
  type metadata accessor for CPSResponderSession(0);
  v7 = swift_allocObject();
  v0[13] = v7;
  *(v7 + 16) = 0;
  *(v7 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler) = 0;
  *(v7 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler) = 0;
  *(v7 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession) = 0;
  v8 = OBJC_IVAR____TtC10companiond19CPSResponderSession__requesterConfiguration;
  v9 = type metadata accessor for CPSRequesterUseCaseConfiguration();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  swift_weakInit();
  v10 = OBJC_IVAR____TtC10companiond19CPSResponderSession__startTicks;
  *(v7 + v10) = mach_absolute_time();
  *(v7 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession) = 0;
  v11 = *(v7 + 16);
  *(v7 + 16) = v5;
  v12 = v5;

  v21(v7 + OBJC_IVAR____TtC10companiond19CPSResponderSession_environment, v1, v4);
  v0[5] = v22;
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14;
  (*(v2 + 8))(v1, v4);
  v16 = (v7 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label);
  *v16 = v13;
  v16[1] = v15;
  swift_weakAssign();
  *(v7 + OBJC_IVAR____TtC10companiond19CPSResponderSession__sessionID) = v22;
  v17 = OBJC_IVAR____TtC10companiond18CPSResponderDaemon__sessions;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v3 + v17);
  *(v3 + v17) = 0x8000000000000000;
  sub_100031B5C(v7, v22, isUniquelyReferenced_nonNull_native);
  *(v3 + v17) = v23;
  swift_endAccess();
  v19 = swift_task_alloc();
  v0[14] = v19;
  *v19 = v0;
  v19[1] = sub_100046130;

  return sub_100047C44();
}

uint64_t sub_100046130()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_100046250, v3, v2);
}

uint64_t sub_100046250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000462BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_100031B5C(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1000311FC(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1000323E4();
        v11 = v13;
      }

      result = sub_100037A54(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_10004637C()
{
  v1[8] = v0;
  sub_100046F44(&qword_10009B998, &unk_10006E6BC);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_10004643C, v3, v2);
}

uint64_t sub_10004643C()
{
  v26 = v0;
  v1 = *(v0 + 64);
  _StringGuts.grow(_:)(26);

  v24 = 0xD000000000000017;
  v25 = 0x80000001000735D0;
  v2 = OBJC_IVAR____TtC10companiond18CPSResponderDaemon__sessions;
  swift_beginAccess();
  *(v0 + 56) = *(*(v1 + v2) + 16);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5 = v25;
  *(v0 + 40) = v24;
  *(v0 + 48) = v5;
  v6 = *(v1 + v2);
  *(v0 + 88) = v6;
  v7 = *(v6 + 32);
  *(v0 + 152) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-(-1 << v7) < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v6 + 64);
  *(v0 + 96) = _swiftEmptyArrayStorage;

  if (v10)
  {
    v12 = 0;
LABEL_8:
    *(v0 + 104) = v10;
    *(v0 + 112) = v12;
    *(v0 + 120) = *(*(v11 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));

    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = sub_10004671C;

    return sub_100046F88();
  }

  else
  {
    v13 = 0;
    while (((63 - v9) >> 6) - 1 != v13)
    {
      v12 = v13 + 1;
      v10 = *(v11 + 8 * v13++ + 72);
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v24 = _swiftEmptyArrayStorage;

    sub_100037BC8(&v24);

    v16 = *(v24 + 2);
    if (v16)
    {
      v17 = (v24 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;

        v20._countAndFlagsBits = v18;
        v20._object = v19;
        String.append(_:)(v20);

        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    v23 = *(v0 + 8);

    return v23(v21, v22);
  }
}

uint64_t sub_10004671C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = a2;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);

  return _swift_task_switch(sub_100046844, v6, v5);
}

uint64_t sub_100046844()
{
  v24 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 96);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_20:
    v2 = sub_100037778(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100037778((v3 > 1), v4 + 1, 1, v2);
  }

  v6 = *(v0 + 136);
  v5 = *(v0 + 144);

  *(v2 + 2) = v4 + 1;
  v7 = &v2[16 * v4];
  *(v7 + 4) = v6;
  *(v7 + 5) = v5;
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  *(v0 + 96) = v2;
  v10 = (v9 - 1) & v9;
  if (v10)
  {
    v11 = *(v0 + 88);
LABEL_10:
    *(v0 + 104) = v10;
    *(v0 + 112) = v8;
    *(v0 + 120) = *(*(v11 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v10)))));

    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_10004671C;

    return sub_100046F88();
  }

  else
  {
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      v11 = *(v0 + 88);
      if (v12 >= (((1 << *(v0 + 152)) + 63) >> 6))
      {
        break;
      }

      v10 = *(v11 + 8 * v12 + 64);
      ++v8;
      if (v10)
      {
        v8 = v12;
        goto LABEL_10;
      }
    }

    v23 = v2;

    sub_100037BC8(&v23);

    v15 = *(v23 + 2);
    if (v15)
    {
      v16 = (v23 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;

        v19._countAndFlagsBits = v17;
        v19._object = v18;
        String.append(_:)(v19);

        v16 += 2;
        --v15;
      }

      while (v15);
    }

    v20 = *(v0 + 40);
    v21 = *(v0 + 48);
    v22 = *(v0 + 8);

    return v22(v20, v21);
  }
}

uint64_t sub_100046ACC()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC10companiond18CPSResponderDaemon_environment;
  v2 = type metadata accessor for CUEnvironmentValues();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100046B80(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_100046F44(&qword_10009B990, &unk_10006E66C);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_100046C0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002B200;

  return sub_10004637C();
}

uint64_t sub_100046C9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond18CPSResponderDaemon_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t (*CUEnvironmentValues.cpsResponderDaemonEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_10002B3AC();
  CUEnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return sub_100046DBC;
}

uint64_t type metadata accessor for CPSResponderDaemon(uint64_t a1)
{
  result = qword_10009B8F8;
  if (!qword_10009B8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100046E48(uint64_t a1)
{
  result = type metadata accessor for CUEnvironmentValues();
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

uint64_t sub_100046F00(uint64_t a1)
{
  result = sub_100046F44(&qword_10009B990, &unk_10006E66C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100046F44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CPSResponderDaemon(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100046F88()
{
  v1[7] = v0;
  v2 = type metadata accessor for DefaultStringInterpolation.PrintUtilsTimeDuration();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_100024EA8(&qword_10009BB08, &qword_10006E808);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for CPSRequesterUseCaseConfiguration();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  appended = type metadata accessor for CUStringAppendFlags();
  v1[15] = appended;
  v1[16] = *(appended - 8);
  v1[17] = swift_task_alloc();
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000471A8, v6, v5);
}

uint64_t sub_1000471A8()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[7];
  static CUStringAppendFlags.comma.getter();
  v0[5] = *(v4 + OBJC_IVAR____TtC10companiond19CPSResponderSession__sessionID);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  String.append(_:_:)();

  v6 = OBJC_IVAR____TtC10companiond19CPSResponderSession__requesterConfiguration;
  swift_beginAccess();
  sub_10004F218(v4 + v6, v3, &qword_10009BB08, &qword_10006E808);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10002556C(v0[11], &qword_10009BB08, &qword_10006E808);
  }

  else
  {
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[12];
    (*(v8 + 32))(v7, v0[11], v9);
    sub_10004F4C0(&qword_10009B740, &type metadata accessor for CPSRequesterUseCaseConfiguration, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration);
    dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:_:)();

    (*(v8 + 8))(v7, v9);
  }

  v10 = v0[7];
  if (*(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession))
  {
    v11 = 0x657669746361;
  }

  else
  {
    v11 = 7104878;
  }

  if (*(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession))
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  String.append(_:_:)();

  v14._countAndFlagsBits = 4026485;
  v14._object = 0xE300000000000000;
  String.append(_:)(v14);
  v15 = mach_absolute_time();
  v16 = *(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__startTicks);
  v17 = v15 >= v16;
  result = v15 - v16;
  if (v17)
  {
    v20 = v0[16];
    v19 = v0[17];
    v21 = v0[15];
    v22 = v0[10];
    v24 = v0[8];
    v23 = v0[9];
    v0[6] = UpTicksToSeconds();
    (*(v23 + 104))(v22, enum case for DefaultStringInterpolation.PrintUtilsTimeDuration.duration(_:), v24);
    sub_10002B46C();
    DefaultStringInterpolation.appendInterpolation<A>(_:_:)();
    (*(v23 + 8))(v22, v24);
    String.append(_:_:)();

    v25._countAndFlagsBits = 10;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    (*(v20 + 8))(v19, v21);

    v26 = v0[1];

    return v26(0x3A6E6F6973736553, 0xE900000000000020);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004758C()
{
  v1[5] = v0;
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_100047660, v3, v2);
}

uint64_t sub_100047660()
{
  v19 = v0;
  if (qword_10009AD58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009B9A0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100030690(*(v4 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v4 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] invalidate", v5, 0xCu);
    sub_100024EF0(v6);
  }

  v7 = v0[5];
  v8 = *(v7 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession);
  *(v7 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession) = 0;
  [v8 invalidate];

  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  swift_weakAssign();
  v10 = v0[5];
  if (Strong)
  {
    v0[9] = *(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__sessionID);
    type metadata accessor for CPSResponderDaemon(0);
    sub_10004F4C0(&qword_10009B998, type metadata accessor for CPSResponderDaemon, &unk_10006E6BC);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10004798C, v12, v11);
  }

  else
  {
    *(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler) = 0;

    *(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler) = 0;

    v13 = OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession;
    v14 = *(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession);
    v0[10] = v14;
    *(v10 + v13) = 0;
    if (v14)
    {
      v15 = swift_task_alloc();
      v0[11] = v15;
      *v15 = v0;
      v15[1] = sub_100047B34;

      return NXSession.cancel()();
    }

    else
    {
      v16 = v0[1];

      return v16();
    }
  }
}

uint64_t sub_10004798C()
{
  v1 = v0[9];
  swift_beginAccess();
  sub_1000462BC(0, v1);
  swift_endAccess();

  v2 = v0[6];
  v3 = v0[7];

  return _swift_task_switch(sub_100047A30, v2, v3);
}

uint64_t sub_100047A30()
{
  v1 = v0[5];
  *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler) = 0;

  *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler) = 0;

  v2 = OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession;
  v3 = *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession);
  v0[10] = v3;
  *(v1 + v2) = 0;
  if (v3)
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_100047B34;

    return NXSession.cancel()();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100047B34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100047C44()
{
  v1[28] = v0;
  v2 = sub_100024EA8(&qword_10009B2E0, &qword_10006E0B0);
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v3 = type metadata accessor for CUEnvironmentValues();
  v1[32] = v3;
  v1[33] = *(v3 - 8);
  v1[34] = swift_task_alloc();
  type metadata accessor for NXSession.Configuration();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[37] = v5;
  v1[38] = v4;

  return _swift_task_switch(sub_100047E1C, v5, v4);
}

uint64_t sub_100047E1C()
{
  v19 = v0;
  if (qword_10009AD58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 312) = sub_10002AF48(v1, qword_10009B9A0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 224);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100030690(*(v4 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v4 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] activate", v5, 0xCu);
    sub_100024EF0(v6);
  }

  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v9 = *(v0 + 256);
  v10 = *(v0 + 224);
  type metadata accessor for NXSession();
  static NXSession.Configuration.default.getter();
  swift_getKeyPath();
  *(v0 + 424) = 1;
  sub_10004F4C0(&qword_10009B760, &type metadata accessor for NXSession.Configuration, &protocol conformance descriptor for NXSession.Configuration);
  CUKeyPathModifiable.set<A>(_:_:)();

  v11 = OBJC_IVAR____TtC10companiond19CPSResponderSession_environment;
  *(v0 + 320) = OBJC_IVAR____TtC10companiond19CPSResponderSession_environment;
  (*(v8 + 16))(v7, v10 + v11, v9);
  v12 = NXSession.__allocating_init(configuration:environment:)();
  *(v0 + 328) = v12;
  *(v10 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession) = v12;

  v13 = swift_allocObject();
  *(v0 + 336) = v13;
  swift_weakInit();
  v14 = swift_allocObject();
  *(v0 + 344) = v14;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  sub_10004F4C0(&qword_10009B770, &type metadata accessor for NXSession, &protocol conformance descriptor for NXSession);

  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 352) = v16;
  *(v0 + 360) = v15;

  return _swift_task_switch(sub_100048140, v16, v15);
}

uint64_t sub_100048140()
{
  _s5Nexus9NXSessionC15setEventHandleryyyAC0D0OYaYbYAcF();

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return _swift_task_switch(sub_1000481D8, v1, v2);
}

uint64_t sub_1000481D8()
{
  swift_allocObject();
  swift_weakInit();
  v0[21] = type metadata accessor for CPSRequesterStartHandler();
  v0[22] = sub_10004F4C0(&qword_10009BB20, &type metadata accessor for CPSRequesterStartHandler, &protocol conformance descriptor for CPSRequesterStartHandler);
  sub_100034710(v0 + 18);
  CPSRequesterStartHandler.init(handler:)();
  v1 = v0[44];
  v2 = v0[45];

  return _swift_task_switch(sub_1000482C8, v1, v2);
}

uint64_t sub_1000482C8()
{
  v0[46] = NXSession.register(requestHandler:)();
  v0[47] = 0;
  sub_100024EF0(v0 + 18);
  v1 = v0[37];
  v2 = v0[38];

  return _swift_task_switch(sub_100048368, v1, v2);
}

uint64_t sub_100048368()
{
  v1 = v0[46];
  v0[48] = v0[47];
  *(v0[28] + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler) = v1;

  swift_allocObject();
  swift_weakInit();
  v0[26] = type metadata accessor for CPSRequesterEndHandler();
  v0[27] = sub_10004F4C0(&qword_10009BB28, &type metadata accessor for CPSRequesterEndHandler, &protocol conformance descriptor for CPSRequesterEndHandler);
  sub_100034710(v0 + 23);
  CPSRequesterEndHandler.init(handler:)();
  v2 = v0[44];
  v3 = v0[45];

  return _swift_task_switch(sub_100048474, v2, v3);
}

uint64_t sub_100048474()
{
  v1 = v0[48];
  v0[49] = NXSession.register(requestHandler:)();
  if (v1)
  {

    v2 = v0[37];
    v3 = v0[38];
    v4 = sub_100048DB4;
  }

  else
  {
    sub_100024EF0(v0 + 23);
    v2 = v0[37];
    v3 = v0[38];
    v4 = sub_100048514;
  }

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100048514()
{
  v20 = v0;
  v1 = v0[28];
  *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler) = v0[49];

  v2 = *(v1 + 16);
  v0[50] = v2;
  if (v2)
  {
    v4 = v0[30];
    v3 = v0[31];
    v5 = v0[29];
    v6 = v2;
    v7 = CUEnvironmentValues.dispatchQueue.getter();
    [v6 setDispatchQueue:v7];

    v0[2] = v0;
    v0[3] = sub_100048920;
    swift_continuation_init();
    v0[17] = v5;
    v8 = sub_100034710(v0 + 14);
    sub_100024EA8(&qword_10009B2E8, &qword_10006E0B8);
    CheckedContinuation.init(continuation:function:)();
    (*(v4 + 32))(v8, v3, v5);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10002DCC0;
    v0[13] = &unk_10008B598;
    [v6 activateWithCompletion:v0 + 10];
    (*(v4 + 8))(v8, v5);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v9 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[28];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_100030690(*(v12 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v12 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v19);
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] ### activate failed: error=%@", v13, 0x16u);
      sub_10002556C(v14, &unk_10009B2F0, &unk_10006E0C0);

      sub_100024EF0(v15);
    }

    else
    {
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100048920()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 304);
  v4 = *(v1 + 296);
  if (v2)
  {
    v5 = sub_1000491C4;
  }

  else
  {
    v5 = sub_100048A50;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100048A50()
{
  v1 = *(v0 + 400);
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_100048AEC;

  return NXSession.add(bluetoothServerConnection:)(v1);
}

uint64_t sub_100048AEC()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return _swift_task_switch(sub_100048C0C, v3, v2);
}

uint64_t sub_100048C0C()
{
  v1 = *(v0 + 400);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100048CA4()
{
  sub_100024EF0(v0 + 18);
  v0[48] = 0;
  *(v0[28] + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterStartHandler) = 0;

  swift_allocObject();
  swift_weakInit();
  v0[26] = type metadata accessor for CPSRequesterEndHandler();
  v0[27] = sub_10004F4C0(&qword_10009BB28, &type metadata accessor for CPSRequesterEndHandler, &protocol conformance descriptor for CPSRequesterEndHandler);
  sub_100034710(v0 + 23);
  CPSRequesterEndHandler.init(handler:)();
  v1 = v0[44];
  v2 = v0[45];

  return _swift_task_switch(sub_100048474, v1, v2);
}

uint64_t sub_100048DB4()
{
  v20 = v0;
  sub_100024EF0(v0 + 23);
  v1 = v0[28];
  *(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusRequesterEndHandler) = 0;

  v2 = *(v1 + 16);
  v0[50] = v2;
  if (v2)
  {
    v4 = v0[30];
    v3 = v0[31];
    v5 = v0[29];
    v6 = v2;
    v7 = CUEnvironmentValues.dispatchQueue.getter();
    [v6 setDispatchQueue:v7];

    v0[2] = v0;
    v0[3] = sub_100048920;
    swift_continuation_init();
    v0[17] = v5;
    v8 = sub_100034710(v0 + 14);
    sub_100024EA8(&qword_10009B2E8, &qword_10006E0B8);
    CheckedContinuation.init(continuation:function:)();
    (*(v4 + 32))(v8, v3, v5);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10002DCC0;
    v0[13] = &unk_10008B598;
    [v6 activateWithCompletion:v0 + 10];
    (*(v4 + 8))(v8, v5);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v9 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[28];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_100030690(*(v12 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v12 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v19);
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] ### activate failed: error=%@", v13, 0x16u);
      sub_10002556C(v14, &unk_10009B2F0, &unk_10006E0C0);

      sub_100024EF0(v15);
    }

    else
    {
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1000491C4()
{
  v12 = v0;
  v1 = v0[50];
  swift_willThrow();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[28];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100030690(*(v4 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v4 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v11);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] ### activate failed: error=%@", v5, 0x16u);
    sub_10002556C(v6, &unk_10009B2F0, &unk_10006E0C0);

    sub_100024EF0(v7);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000493CC()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009B9A0);
  sub_10002AF48(v0, qword_10009B9A0);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100049438()
{
  v1 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label);
  v2 = *(v0 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8);
  v4 = qword_10009AD58;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10002AF48(v5, qword_10009B9A0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = sub_100030690(v3, v2, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] deinit", v8, 0xCu);
    sub_100024EF0(v9);
  }

  else
  {
  }

  v11 = OBJC_IVAR____TtC10companiond19CPSResponderSession_environment;
  v12 = type metadata accessor for CUEnvironmentValues();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);

  sub_10002556C(v1 + OBJC_IVAR____TtC10companiond19CPSResponderSession__requesterConfiguration, &qword_10009BB08, &qword_10006E808);
  swift_weakDestroy();

  return v1;
}

uint64_t sub_100049678()
{
  sub_100049438();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CPSResponderSession(uint64_t a1)
{
  result = qword_10009BA28;
  if (!qword_10009BA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049724(uint64_t a1)
{
  type metadata accessor for CUEnvironmentValues();
  if (v1 <= 0x3F)
  {
    sub_100049824(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100049824(uint64_t a1)
{
  if (!qword_10009BA38)
  {
    type metadata accessor for CPSRequesterUseCaseConfiguration();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10009BA38);
    }
  }
}

uint64_t sub_10004987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10004989C, 0, 0);
}

uint64_t sub_10004989C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_10004998C;
    v3 = v0[5];

    return sub_100049A9C(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10004998C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100049A9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for NXConnection.Event();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for NXSession.Event();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v6;
  v2[12] = v5;

  return _swift_task_switch(sub_100049C3C, v6, v5);
}

uint64_t sub_100049C3C()
{
  v31 = v0;
  v2 = v0 + 10;
  v1 = v0[10];
  v3 = v0[9];
  v5 = v0 + 8;
  v4 = v0[8];
  (*(v3 + 16))(v1, v0[2], v4);
  if ((*(v3 + 88))(v1, v4) == enum case for NXSession.Event.connectionEvent(_:))
  {
    v2 = v0 + 6;
    v6 = v0[6];
    v7 = v0[10];
    v8 = v0[7];
    v9 = v0[5];
    v5 = v0 + 4;
    v10 = v0[4];
    (*(v0[9] + 96))(v7, v0[8]);

    v11 = sub_100024EA8(&unk_10009BB80, &qword_10006E8E0);
    (*(v9 + 32))(v8, v7 + *(v11 + 48), v10);
    (*(v9 + 16))(v6, v8, v10);
    v12 = (*(v9 + 88))(v6, v10);
    v13 = v0[5];
    v14 = v0[4];
    if (v12 == enum case for NXConnection.Event.disconnected(_:))
    {
      v15 = v0[6];
      (*(v13 + 96))(v15, v14);
      v16 = *v15;
      v0[13] = *v15;
      if (qword_10009AD58 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10002AF48(v17, qword_10009B9A0);
      v18 = v16;

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = v0[3];
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        *v22 = 136315394;
        *(v22 + 4) = sub_100030690(*(v21 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v21 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v30);
        *(v22 + 12) = 2112;
        *(v22 + 14) = v18;
        *v23 = v16;
        v25 = v18;
        _os_log_impl(&_mh_execute_header, v19, v20, "[%s] disconnected: error=%@", v22, 0x16u);
        sub_10002556C(v23, &unk_10009B2F0, &unk_10006E0C0);

        sub_100024EF0(v24);
      }

      v26 = swift_task_alloc();
      v0[14] = v26;
      *v26 = v0;
      v26[1] = sub_10004A03C;

      return sub_10004758C();
    }

    v28 = *(v13 + 8);
    v28(v0[7], v14);
  }

  else
  {
    v28 = *(v0[9] + 8);
  }

  v28(*v2, *v5);

  v29 = v0[1];

  return v29();
}

uint64_t sub_10004A03C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_10004A15C, v3, v2);
}

uint64_t sub_10004A15C()
{
  v1 = *(v0 + 40);

  (*(v1 + 8))(*(v0 + 56), *(v0 + 32));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004A200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a4;
  v4[5] = a1;
  return _swift_task_switch(sub_10004A224, 0, 0);
}

uint64_t sub_10004A224()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10004A364;
    v3 = v0[6];

    return sub_10004A478(v3);
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10004A364()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10004F520;
  }

  else
  {
    v2 = sub_10004F51C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004A478(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  sub_100024EA8(&qword_10009BB30, &qword_10006E890);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v4 = type metadata accessor for CPSLocalizationKey();
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[33] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[34] = swift_task_alloc();
  sub_100024EA8(&qword_10009BB38, &qword_10006E898);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  sub_100024EA8(&qword_10009BB08, &qword_10006E808);
  v2[37] = swift_task_alloc();
  v5 = type metadata accessor for CPSRequesterUseCaseConfiguration.UseCase();
  v2[38] = v5;
  v2[39] = *(v5 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v6 = type metadata accessor for CPSResponderUseCaseConfiguration();
  v2[42] = v6;
  v2[43] = *(v6 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v7 = type metadata accessor for CPSRequesterUseCaseConfiguration();
  v2[46] = v7;
  v2[47] = *(v7 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004A868, v9, v8);
}

uint64_t sub_10004A868()
{
  v174 = v0;
  CPSRequesterStartMessage.configuration.getter();
  v1 = static CPSResponderUseCaseConfiguration.useCases.getter();
  CPSRequesterUseCaseConfiguration.useCase.getter();
  if (*(v1 + 16))
  {
    v2 = sub_1000312FC(v0[41]);
    if (v3)
    {
      v166 = v0[50];
      v5 = v0[46];
      v4 = v0[47];
      v6 = v0[43];
      v7 = v0[41];
      v9 = v0[38];
      v8 = v0[39];
      v10 = v0[37];
      v11 = v0[24];
      log = *(v6 + 16);
      (log)(v0[45], *(v1 + 56) + *(v6 + 72) * v2, v0[42]);
      (*(v8 + 8))(v7, v9);

      v12 = v166;
      v167 = *(v4 + 16);
      v167(v10, v12, v5);
      (*(v4 + 56))(v10, 0, 1, v5);
      v13 = OBJC_IVAR____TtC10companiond19CPSResponderSession__requesterConfiguration;
      swift_beginAccess();
      sub_10004EF20(v10, v11 + v13);
      swift_endAccess();
      if (qword_10009AD58 != -1)
      {
        swift_once();
      }

      v14 = v0[49];
      v15 = v0[50];
      v16 = v0[46];
      v164 = v0[45];
      v17 = v0[44];
      v18 = v0[42];
      v19 = type metadata accessor for Logger();
      sub_10002AF48(v19, qword_10009B9A0);
      v167(v14, v15, v16);
      (log)(v17, v164, v18);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[49];
      v25 = v0[46];
      v24 = v0[47];
      v26 = v0[43];
      v27 = v0[44];
      v28 = v0[42];
      if (v22)
      {
        logc = v20;
        v29 = v0[24];
        v162 = v21;
        v30 = swift_slowAlloc();
        v173[0] = swift_slowAlloc();
        *v30 = 136315650;
        *(v30 + 4) = sub_100030690(*(v29 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v29 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), v173);
        *(v30 + 12) = 2080;
        sub_10004F4C0(&qword_10009B740, &type metadata accessor for CPSRequesterUseCaseConfiguration, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        v168 = *(v24 + 8);
        v168(v23, v25);
        v34 = sub_100030690(v31, v33, v173);

        *(v30 + 14) = v34;
        *(v30 + 22) = 2080;
        sub_10004F4C0(&qword_10009BB50, &type metadata accessor for CPSResponderUseCaseConfiguration, &protocol conformance descriptor for CPSResponderUseCaseConfiguration);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        v165 = *(v26 + 8);
        v165(v27, v28);
        v38 = sub_100030690(v35, v37, v173);

        *(v30 + 24) = v38;
        _os_log_impl(&_mh_execute_header, logc, v162, "[%s] requester start: requesterConfiguration={%s}, responderConfiguration={%s}", v30, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v165 = *(v26 + 8);
        v165(v27, v28);
        v168 = *(v24 + 8);
        v168(v23, v25);
      }

      v69 = v0[24];
      v70 = OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession;
      v71 = *(v69 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession);
      *(v69 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession) = 0;
      if (v71)
      {

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = v0[24];
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v173[0] = v76;
          *v75 = 136315138;
          *(v75 + 4) = sub_100030690(*(v74 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v74 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), v173);
          _os_log_impl(&_mh_execute_header, v72, v73, "[%s] cancel previous banner", v75, 0xCu);
          sub_100024EF0(v76);
        }

        [v71 invalidate];
      }

      v77 = [objc_allocWithZone(CUUserNotificationSession) init];
      v78 = *(v69 + v70);
      *(v69 + v70) = v77;
      v79 = v77;

      static CPSConstants.userNotificationBundleID.getter();
      v80 = String._bridgeToObjectiveC()();

      [v79 setBundleID:v80];

      CPSResponderUseCaseConfiguration.bannerCategoryID.getter();
      if (!v81)
      {
        static CPSConstants.userNotificationCategoryGeneric.getter();
      }

      v82 = String._bridgeToObjectiveC()();

      [v79 setCategoryID:v82];

      v83 = CUEnvironmentValues.dispatchQueue.getter();
      [v79 setDispatchQueue:v83];

      CPSResponderUseCaseConfiguration.bannerDefaultActionID.getter();
      if (v84 || (CPSResponderUseCaseConfiguration.bannerOtherActionID.getter(), v85))
      {

        v86 = 153;
      }

      else
      {
        v86 = 17;
      }

      [v79 setFlags:v86];
      CPSResponderUseCaseConfiguration.bannerIconSystemName.getter();
      if (v87)
      {
        v88 = String._bridgeToObjectiveC()();
      }

      else
      {
        v88 = 0;
      }

      v89 = v0[36];
      v90 = v0[30];
      v91 = v0[31];
      logb = v79;
      [v79 setIconSystemName:v88];

      CPSResponderUseCaseConfiguration.bannerTitleKey.getter();
      v92 = *(v91 + 48);
      if (v92(v89, 1, v90) == 1)
      {
        sub_10002556C(v0[36], &qword_10009BB38, &qword_10006E898);
      }

      else
      {
        v93 = v0[36];
        v94 = v0[30];
        v95 = v0[31];
        v96 = CPSLocalizationKey.resolve()();
        (*(v95 + 8))(v93, v94);
        CPSResponderUseCaseConfiguration.bannerLocalizedFilename.getter();
        if (v97)
        {
          String.LocalizationValue.init(_:)();
          static CPSConstants.userNotificationBundlePath.getter();
          v98 = objc_allocWithZone(NSBundle);
          v99 = String._bridgeToObjectiveC()();

          [v98 initWithPath:v99];

          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v100 = String._bridgeToObjectiveC()();

          [v79 setTitleKey:v100];
        }

        else
        {

          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v173[0] = v104;
            *v103 = 136315138;
            *(v103 + 4) = sub_100030690(v96._countAndFlagsBits, v96._object, v173);
            _os_log_impl(&_mh_execute_header, v101, v102, "$$$ titleKey=%s", v103, 0xCu);
            sub_100024EF0(v104);
          }

          v105 = String._bridgeToObjectiveC()();

          [v79 setTitleKey:v105];
        }
      }

      v106 = v0[35];
      v107 = v0[30];
      CPSResponderUseCaseConfiguration.bannerBodyKey.getter();
      if (v92(v106, 1, v107) == 1)
      {
        v108 = v0[26];
        v109 = v0[27];
        v110 = v0[25];
        sub_10002556C(v0[35], &qword_10009BB38, &qword_10006E898);
        CPSRequesterUseCaseConfiguration.requesterAlternative.getter();
        v111 = logb;
        if ((*(v109 + 48))(v110, 1, v108) == 1)
        {
          sub_10002556C(v0[25], &qword_10009BB30, &qword_10006E890);
          goto LABEL_48;
        }

        v119 = v0[28];
        v120 = v0[29];
        v121 = v0[26];
        v122 = v0[27];
        (*(v122 + 32))(v120, v0[25], v121);
        (*(v122 + 16))(v119, v120, v121);
        if ((*(v122 + 88))(v119, v121) != enum case for CPSRequesterUseCaseConfiguration.RequesterAlternative.qrCodeURL(_:))
        {
          v128 = v0[28];
          v129 = v0[26];
          v130 = *(v0[27] + 8);
          v130(v0[29], v129);
          v130(v128, v129);
          goto LABEL_48;
        }

        v123 = v0[28];
        (*(v0[27] + 96))(v123, v0[26]);
        v124 = *(v123 + *(sub_100024EA8(&qword_10009BB48, &qword_10006E8A0) + 48) + 8);

        v125 = type metadata accessor for URL();
        (*(*(v125 - 8) + 8))(v123, v125);
        if (v124)
        {
        }

        v126 = String._bridgeToObjectiveC()();
        v131 = CUAddSuffixForCurrentDeviceClass();

        v132 = v0[29];
        v133 = v0[26];
        v134 = v0[27];
        if (!v131)
        {
          (*(v134 + 8))(v0[29], v0[26]);
          goto LABEL_48;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v134 + 8))(v132, v133);
      }

      else
      {
        v113 = v0[31];
        v112 = v0[32];
        v114 = v0[30];
        (*(v113 + 32))(v112, v0[35], v114);
        CPSLocalizationKey.resolve()();
        (*(v113 + 8))(v112, v114);
        v111 = v79;
      }

      CPSResponderUseCaseConfiguration.bannerLocalizedFilename.getter();
      if (v115)
      {
        String.LocalizationValue.init(_:)();
        static CPSConstants.userNotificationBundlePath.getter();
        v116 = objc_allocWithZone(NSBundle);
        v117 = String._bridgeToObjectiveC()();

        [v116 initWithPath:v117];

        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v118 = String._bridgeToObjectiveC()();

        [v111 setBodyKey:v118];
      }

      else
      {
        v127 = String._bridgeToObjectiveC()();

        [v111 setBodyKey:v127];
      }

LABEL_48:
      v135 = CPSRequesterUseCaseConfiguration.bannerBodyParameters.getter();
      if (v135)
      {
        sub_10004C360(v135);

        v136.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v136.super.isa = 0;
      }

      [v111 setBodyArguments:v136.super.isa];

      v137 = swift_allocObject();
      swift_weakInit();
      v0[6] = sub_10004EF90;
      v0[7] = v137;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_10004CEC0;
      v0[5] = &unk_10008B5C0;
      v138 = _Block_copy(v0 + 2);

      [v111 setActionHandler:v138];
      _Block_release(v138);
      v139 = CPSResponderUseCaseConfiguration.bannerDefaultActionID.getter();
      if (v140)
      {
        v141 = v139;
        v142 = v140;
        v143 = String._bridgeToObjectiveC()();
        v144 = String._bridgeToObjectiveC()();
        v145 = swift_allocObject();
        swift_weakInit();
        v146 = swift_allocObject();
        v146[2] = v145;
        v146[3] = v141;
        v146[4] = v142;
        v0[18] = sub_10004F040;
        v0[19] = v146;
        v0[14] = _NSConcreteStackBlock;
        v0[15] = 1107296256;
        v0[16] = sub_100025F68;
        v0[17] = &unk_10008B660;
        v147 = _Block_copy(v0 + 14);

        [v111 addActionWithIdentifier:v143 title:v144 flags:0 handler:v147];

        _Block_release(v147);
      }

      v148 = CPSResponderUseCaseConfiguration.bannerOtherActionID.getter();
      if (v149)
      {
        v150 = v148;
        v151 = v149;
        v152 = String._bridgeToObjectiveC()();
        v153 = String._bridgeToObjectiveC()();
        v154 = swift_allocObject();
        swift_weakInit();
        v155 = swift_allocObject();
        v155[2] = v154;
        v155[3] = v150;
        v155[4] = v151;
        v0[12] = sub_10004EFDC;
        v0[13] = v155;
        v0[8] = _NSConcreteStackBlock;
        v0[9] = 1107296256;
        v0[10] = sub_100025F68;
        v0[11] = &unk_10008B610;
        v156 = _Block_copy(v0 + 8);

        [v111 addActionWithIdentifier:v152 title:v153 flags:0 handler:v156];

        _Block_release(v156);
      }

      v157 = v0[50];
      v159 = v0[45];
      v158 = v0[46];
      v160 = v0[42];
      [v111 activate];

      v165(v159, v160);
      v168(v157, v158);

      v68 = v0[1];
      goto LABEL_56;
    }
  }

  v39 = v0[40];
  v40 = v0[41];
  v41 = v0[38];
  v42 = v0[39];

  v43 = *(v42 + 8);
  v43(v40, v41);
  _StringGuts.grow(_:)(24);

  v173[0] = 0xD000000000000016;
  v173[1] = 0x8000000100073710;
  CPSRequesterUseCaseConfiguration.useCase.getter();
  sub_10004F4C0(&qword_10009BB40, &type metadata accessor for CPSRequesterUseCaseConfiguration.UseCase, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration.UseCase);
  v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v44);

  v43(v39, v41);
  v45 = objc_allocWithZone(type metadata accessor for CUError());
  v46 = CUError.init(_:_:_:)();
  if (qword_10009AD58 != -1)
  {
    swift_once();
  }

  v47 = v0[50];
  v49 = v0[47];
  v48 = v0[48];
  v50 = v0[46];
  v51 = type metadata accessor for Logger();
  sub_10002AF48(v51, qword_10009B9A0);
  (*(v49 + 16))(v48, v47, v50);

  v52 = v46;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  v55 = os_log_type_enabled(v53, v54);
  v56 = v0[47];
  v57 = v0[48];
  v58 = v0[46];
  if (v55)
  {
    v59 = v0[24];
    v60 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v173[0] = swift_slowAlloc();
    *v60 = 136315650;
    *(v60 + 4) = sub_100030690(*(v59 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v59 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), v173);
    *(v60 + 12) = 2080;
    sub_10004F4C0(&qword_10009B740, &type metadata accessor for CPSRequesterUseCaseConfiguration, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    loga = *(v56 + 8);
    (loga)(v57, v58);
    v64 = sub_100030690(v61, v63, v173);

    *(v60 + 14) = v64;
    *(v60 + 22) = 2112;
    *(v60 + 24) = v52;
    *v163 = v52;
    v65 = v52;
    _os_log_impl(&_mh_execute_header, v53, v54, "[%s] ### requester start failed: requesterConfiguration={%s}, error=%@", v60, 0x20u);
    sub_10002556C(v163, &unk_10009B2F0, &unk_10006E0C0);

    swift_arrayDestroy();
  }

  else
  {

    loga = *(v56 + 8);
    (loga)(v57, v58);
  }

  v66 = v0[50];
  v67 = v0[46];
  swift_willThrow();
  (loga)(v66, v67);

  v68 = v0[1];
LABEL_56:

  return v68();
}

uint64_t sub_10004BE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a4;
  v4[5] = a1;
  return _swift_task_switch(sub_10004BE70, 0, 0);
}

uint64_t sub_10004BE70()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10003F1BC;
    v3 = v0[6];

    return sub_10004BFB0(v3);
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10004BFB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CPSRequesterEndMessage();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004C0E0, v5, v4);
}

uint64_t sub_10004C0E0()
{
  v22 = v0;
  if (qword_10009AD58 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10002AF48(v5, qword_10009B9A0);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_100030690(*(v12 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v12 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v21);
    *(v13 + 12) = 2112;
    v16 = CPSRequesterEndMessage.error.getter();
    *(v13 + 14) = v16;
    *v14 = v16;
    (*(v10 + 8))(v9, v11);
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] requester end: error=%@", v13, 0x16u);
    sub_10002556C(v14, &unk_10009B2F0, &unk_10006E0C0);

    sub_100024EF0(v15);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = v0[3];
  v18 = *(v17 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession);
  *(v17 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession) = 0;
  [v18 invalidate];

  v19 = v0[1];

  return v19();
}

unint64_t *sub_10004C360(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_10004F04C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10004F04C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1000347C4(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10004C460(int a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    __chkstk_darwin(result);
    v11[4] = a1;
    v12 = a2;
    type metadata accessor for CPSResponderSession(0);
    sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
    dispatch thunk of Actor.unownedExecutor.getter();
    if (swift_task_isCurrentExecutor())
    {
      v7 = swift_allocObject();
      *(v7 + 16) = sub_10004F490;
      *(v7 + 24) = v11;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_100040098;
      *(v8 + 24) = v7;

      v14[0] = isEscapingClosureAtFileLocation;
      sub_100045CD8(v14);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v9._object = 0x8000000100073410;
    v9._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v9);
    v13 = isEscapingClosureAtFileLocation;
    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10004C6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  type metadata accessor for CPSResponderSession(0);
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10004C7B0(v4, a3);
}

void sub_10004C7B0(unsigned int a1, uint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v5 = type metadata accessor for CPSResponderEvent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024EA8(&qword_10009BB30, &qword_10006E890);
  __chkstk_darwin(v12 - 8);
  v50 = &v42 - v13;
  v14 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative();
  v48 = *(v14 - 8);
  v49 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v51 = &v42 - v18;
  if (qword_10009AD58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10002AF48(v19, qword_10009B9A0);

  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v42 = v10;
    v43 = v9;
    v44 = v8;
    v45 = v6;
    v46 = v5;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v22 = 136315650;
    *(v22 + 4) = sub_100030690(*(v3 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v3 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), v53);
    *(v22 + 12) = 2080;
    sub_10004F0C4(v52);
    v24 = String.init(cString:)();
    v26 = sub_100030690(v24, v25, v53);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = v27;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v29 = v17;
    *(v22 + 24) = v27;
    *v23 = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%s] user notification action: action=%s, error=%@", v22, 0x20u);
    sub_10002556C(v23, &unk_10009B2F0, &unk_10006E0C0);

    swift_arrayDestroy();

    v6 = v45;
    v5 = v46;
    v9 = v43;
    v8 = v44;
    v10 = v42;
  }

  else
  {

    v29 = v17;
  }

  v30 = v50;
  v31 = v51;
  if (v52 == 2)
  {
    v34 = &enum case for CPSResponderEvent.userDenied(_:);
LABEL_17:
    (*(v6 + 104))(v8, *v34, v5);
    sub_10004DA38(v8);
    (*(v6 + 8))(v8, v5);
    goto LABEL_18;
  }

  if (v52 == 1)
  {
    v32 = OBJC_IVAR____TtC10companiond19CPSResponderSession__requesterConfiguration;
    swift_beginAccess();
    v33 = type metadata accessor for CPSRequesterUseCaseConfiguration();
    if ((*(*(v33 - 8) + 48))(v3 + v32, 1, v33))
    {
      swift_endAccess();
      (*(v48 + 56))(v30, 1, 1, v49);
    }

    else
    {
      CPSRequesterUseCaseConfiguration.requesterAlternative.getter();
      swift_endAccess();
      v35 = v48;
      if ((*(v48 + 48))(v30, 1, v49) != 1)
      {
        v37 = v30;
        v38 = v49;
        (*(v35 + 32))(v31, v37, v49);
        (*(v35 + 16))(v29, v31, v38);
        if ((*(v35 + 88))(v29, v38) == enum case for CPSRequesterUseCaseConfiguration.RequesterAlternative.qrCodeURL(_:))
        {
          (*(v35 + 96))(v29, v38);
          sub_100024EA8(&qword_10009BB48, &qword_10006E8A0);

          v39 = v29;
          v40 = v47;
          (*(v10 + 32))(v47, v39, v9);
          sub_10004D668(v40);
          (*(v10 + 8))(v40, v9);
          (*(v35 + 8))(v51, v38);
        }

        else
        {
          v41 = *(v35 + 8);
          v41(v31, v38);
          v41(v29, v38);
        }

        goto LABEL_16;
      }
    }

    sub_10002556C(v30, &qword_10009BB30, &qword_10006E890);
LABEL_16:
    v34 = &enum case for CPSResponderEvent.userAccepted(_:);
    goto LABEL_17;
  }

LABEL_18:
  v36 = *(v3 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession);
  *(v3 + OBJC_IVAR____TtC10companiond19CPSResponderSession__userNotificationSession) = 0;
  [v36 invalidate];
}

void sub_10004CEC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10004CF38(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v8 = *(result + OBJC_IVAR____TtC10companiond19CPSResponderSession__label);
    v7 = *(result + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8);
    v9 = qword_10009AD58;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10002AF48(v10, qword_10009B9A0);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18[0] = swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_100030690(v8, v7, v18);

      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_100030690(a2, a3, v18);
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] default action tapped: actionID=%s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    type metadata accessor for CPSResponderSession(0);
    sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
    dispatch thunk of Actor.unownedExecutor.getter();
    if (swift_task_isCurrentExecutor())
    {
      v15 = swift_allocObject();
      *(v15 + 16) = sub_10004EAFC;
      *(v15 + 24) = 0;
      v18[0] = v6;
      sub_100045AAC(v18);

      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();
      __break(1u);
    }

    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v16._object = 0x8000000100073410;
    v16._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v16);
    _print_unlocked<A, B>(_:_:)();
    v17._countAndFlagsBits = 46;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004D2D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v8 = *(result + OBJC_IVAR____TtC10companiond19CPSResponderSession__label);
    v7 = *(result + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8);
    v9 = qword_10009AD58;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10002AF48(v10, qword_10009B9A0);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18[0] = swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_100030690(v8, v7, v18);

      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_100030690(a2, a3, v18);
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] other action tapped: actionID=%s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    type metadata accessor for CPSResponderSession(0);
    sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
    dispatch thunk of Actor.unownedExecutor.getter();
    if (swift_task_isCurrentExecutor())
    {
      v15 = swift_allocObject();
      *(v15 + 16) = sub_10004EB1C;
      *(v15 + 24) = 0;
      v18[0] = v6;
      sub_100045CD8(v18);

      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();
      __break(1u);
    }

    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v16._object = 0x8000000100073410;
    v16._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v16);
    _print_unlocked<A, B>(_:_:)();
    v17._countAndFlagsBits = 46;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10004D668(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v10 = v8;
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    sub_100024EA8(&qword_10009BB58, &qword_10006E8A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006E730;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v14;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    sub_10004F0E8(inited);
    swift_setDeallocating();
    sub_10002556C(inited + 32, &qword_10009BB60, &qword_10006E8B0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v16 = [v10 openURL:v12 withOptions:isa];

    if ((v16 & 1) == 0)
    {
      if (qword_10009AD58 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10002AF48(v17, qword_10009B9A0);
      (*(v5 + 16))(v7, a1, v4);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v20 = 136315394;
        *(v20 + 4) = sub_100030690(*(v2 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v2 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v26);
        *(v20 + 12) = 2080;
        sub_10004F4C0(&qword_10009BB68, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        (*(v5 + 8))(v7, v4);
        v24 = sub_100030690(v21, v23, &v26);

        *(v20 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "[%s] ### open URL failed: url=%s", v20, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10004DA38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CPSResponderEvent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = *(v2 + OBJC_IVAR____TtC10companiond19CPSResponderSession__nexusSession);
  if (v14)
  {
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    (*(v5 + 16))(v10, a1, v4);
    v16 = sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
    v17 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = v2;
    *(v18 + 3) = v16;
    *(v18 + 4) = v2;
    (*(v5 + 32))(&v18[v17], v10, v4);
    *&v18[(v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8] = v14;
    swift_retain_n();

    sub_100057714(0, 0, v13, &unk_10006E8D0, v18);
  }

  else
  {
    if (qword_10009AD58 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10002AF48(v19, qword_10009B9A0);
    (*(v5 + 16))(v8, a1, v4);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_100030690(*(v2 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v2 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v28);
      *(v22 + 12) = 2080;
      sub_10004F4C0(&qword_10009B780, &type metadata accessor for CPSResponderEvent, &protocol conformance descriptor for CPSResponderEvent);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v5 + 8))(v8, v4);
      v26 = sub_100030690(v23, v25, &v28);

      *(v22 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%s] report response event ignored: no nexus session, event=%s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_10004DEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for NXRequestMetadata();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for CPSResponderEventMessage();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = type metadata accessor for NXNoResponseMessage();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v10 = type metadata accessor for CPSResponderEvent();
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  type metadata accessor for CPSResponderSession(0);
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[19] = v12;
  v6[20] = v11;

  return _swift_task_switch(sub_10004E0E8, v12, v11);
}

uint64_t sub_10004E0E8()
{
  v32 = v0;
  if (qword_10009AD58 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[21] = sub_10002AF48(v5, qword_10009B9A0);
  v6 = *(v3 + 16);
  v0[22] = v6;
  v0[23] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v12 = v0[14];
  v11 = v0[15];
  if (v9)
  {
    v30 = v8;
    v13 = v0[2];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100030690(*(v13 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v13 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v31);
    *(v14 + 12) = 2080;
    sub_10004F4C0(&qword_10009B780, &type metadata accessor for CPSResponderEvent, &protocol conformance descriptor for CPSResponderEvent);
    log = v7;
    v15 = v6;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v11 + 8);
    v19(v10, v12);
    v20 = v16;
    v6 = v15;
    v21 = sub_100030690(v20, v18, &v31);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, log, v30, "[%s] report event: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v10, v12);
  }

  v0[24] = v19;
  v6(v0[17], v0[3], v0[14]);
  CPSResponderEventMessage.init(event:)();
  static NXRequestMetadata.default.getter();
  v22 = swift_task_alloc();
  v0[25] = v22;
  v23 = sub_10004F4C0(&qword_10009BB78, &type metadata accessor for CPSResponderEventMessage, &protocol conformance descriptor for CPSResponderEventMessage);
  *v22 = v0;
  v22[1] = sub_10004E450;
  v24 = v0[13];
  v25 = v0[10];
  v26 = v0[7];
  v27 = v0[8];

  return NXSession.send<A>(request:metadata:)(v24, v25, v26, v27, v23);
}

uint64_t sub_10004E450()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  *(*v1 + 208) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = v2[19];
    v10 = v2[20];
    v11 = sub_10004E6F0;
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);
    v9 = v2[19];
    v10 = v2[20];
    v11 = sub_10004E648;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10004E648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004E6F0()
{
  v19 = v0;
  (*(v0 + 176))(*(v0 + 128), *(v0 + 24), *(v0 + 112));

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 192);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  if (v3)
  {
    v17 = v2;
    v7 = *(v0 + 16);
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_100030690(*(v7 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label), *(v7 + OBJC_IVAR____TtC10companiond19CPSResponderSession__label + 8), &v18);
    *(v8 + 12) = 2080;
    sub_10004F4C0(&qword_10009B780, &type metadata accessor for CPSResponderEvent, &protocol conformance descriptor for CPSResponderEvent);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v4(v5, v6);
    v12 = sub_100030690(v9, v11, &v18);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v13;
    *v16 = v13;
    _os_log_impl(&_mh_execute_header, v1, v17, "[%s] ### report event failed: event=%s, error=%@", v8, 0x20u);
    sub_10002556C(v16, &unk_10009B2F0, &unk_10006E0C0);

    swift_arrayDestroy();
  }

  else
  {

    v4(v5, v6);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10004E9E0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_10004F4C0(&qword_10009BB18, type metadata accessor for CPSResponderSession, &unk_10006E7B0);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_10004EA80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond19CPSResponderSession_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_10004EB3C(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  sub_10004F4C0(&qword_10009BB10, type metadata accessor for CPSResponderSession, &unk_10006E7D8);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10004C7B0(a3, 0);
}

uint64_t sub_10004EC20@<X0>(_BYTE *a1@<X8>)
{
  result = NXSession.Configuration.serverMode.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004EC78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004ECDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000257F4;

  return sub_10004987C(a1, v4, v5, v6);
}

uint64_t sub_10004ED8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000257F4;

  return sub_10004A200(a1, a2, a3, v3);
}

uint64_t sub_10004EE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000240AC;

  return sub_10004BE4C(a1, a2, a3, v3);
}

uint64_t sub_10004EF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024EA8(&qword_10009BB08, &qword_10006E808);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004EF98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004EFE8(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

char *sub_10004F04C(char *a1, int64_t a2, char a3)
{
  result = sub_1000388D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004F06C(void *a1, int64_t a2, char a3)
{
  result = sub_1000389E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10004F08C()
{

  return _swift_deallocObject(v0, 32, 7);
}

const char *sub_10004F0C4(unsigned int a1)
{
  if (a1 > 5)
  {
    return "?";
  }

  else
  {
    return off_10008B750[a1];
  }
}

unint64_t sub_10004F0E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024EA8(&qword_10009BB70, &unk_10006E8B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10004F218(v4, &v13, &qword_10009BB60, &qword_10006E8B0);
      v5 = v13;
      v6 = v14;
      result = sub_100031284(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000347C4(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10004F218(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100024EA8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10004F280()
{
  v1 = type metadata accessor for CPSResponderEvent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004F360(uint64_t a1)
{
  v4 = *(type metadata accessor for CPSResponderEvent() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000240AC;

  return sub_10004DEA0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10004F4C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004F52C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CPSXPCServerRequest();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection);
  sub_100053DD8(&qword_10009BD28, &type metadata accessor for CPSXPCServerRequest, &protocol conformance descriptor for CPSXPCServerRequest);
  v10 = CUXPCCoder.encode<A>(message:)();
  if (v2)
  {
    if (qword_10009AD60 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10002AF48(v11, qword_10009BB90);
    (*(v6 + 16))(v8, a1, v5);

    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v14 = 136315650;
      sub_100053DD8(&unk_10009BD30, &type metadata accessor for CPSXPCServerRequest, &protocol conformance descriptor for CPSXPCServerRequest);
      v23 = v13;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v6 + 8))(v8, v5);
      v18 = sub_100030690(v15, v17, &v26);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_100030690(*(v3 + 64), *(v3 + 72), &v26);
      *(v14 + 22) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v19;
      v20 = v24;
      *v24 = v19;
      _os_log_impl(&_mh_execute_header, v12, v23, "### send request failed: request={%s}, client=%s error=%@", v14, 0x20u);
      sub_10002556C(v20, &unk_10009B2F0, &unk_10006E0C0);

      swift_arrayDestroy();
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    return swift_willThrow();
  }

  else
  {
    xpc_connection_send_message(v9, v10);
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_10004F8E4()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009BB90);
  sub_10002AF48(v0, qword_10009BB90);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10004F950()
{
  appended = type metadata accessor for CUStringAppendFlags();
  v2 = *(appended - 8);
  __chkstk_darwin(appended);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  static CUStringAppendFlags.standard.getter();
  v5 = *(v0 + 56);
  v19 = *(v0 + 48);
  v20 = v5;

  v6._countAndFlagsBits = 58;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  LODWORD(v18[0]) = *(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__pid);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  String.append(_:_:)();

  if (*(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__lastRequestLabel + 8))
  {

    String.append(_:_:)();
  }

  v8 = mach_absolute_time();
  v9 = *(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__startTicks);
  v10 = v8 >= v9;
  result = v8 - v9;
  if (v10)
  {
    UpTicksToSeconds();
    v12 = CUPrintDuration64();
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v19 = 0;
    v20 = 0xE000000000000000;
    v17._countAndFlagsBits = 4026485;
    v17._object = 0xE300000000000000;
    String.append(_:)(v17);
    v18[0] = v14;
    v18[1] = v16;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    String.append(_:_:)();

    (*(v2 + 8))(v4, appended);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004FB8C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection);
  v3 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_100053BA8;
  v11[5] = v3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10005445C;
  v11[3] = &unk_10008B7A8;
  v4 = _Block_copy(v11);

  xpc_connection_set_event_handler(v2, v4);
  _Block_release(v4);
  v5 = CUEnvironmentValues.dispatchQueue.getter();
  xpc_connection_set_target_queue(v2, v5);

  xpc_connection_activate(v2);
  if (qword_10009AD60 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10002AF48(v6, qword_10009BB90);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100030690(*(v1 + 64), *(v1 + 72), v11);
    _os_log_impl(&_mh_execute_header, v7, v8, "XPC connection started: client=%s", v9, 0xCu);
    sub_100024EF0(v10);
  }
}

uint64_t sub_10004FDA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v29 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v37 = a1;
    swift_unknownObjectRetain();
    sub_100024EA8(&unk_10009B1A0, &qword_10006EAC0);
    CUSendableWrapper.init(_:)();
    v30 = CUEnvironmentValues.dispatchQueue.getter();
    v18 = type metadata accessor for TaskPriority();
    v19 = v15;
    v20 = *(v18 - 8);
    (*(v20 + 56))(v8, 1, 1, v18);
    v21 = *(v10 + 16);
    v31 = v19;
    v21(v13, v19, v9);
    v22 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    v24 = *(v10 + 32);
    v32 = v9;
    v24(v23 + v22, v13, v9);
    sub_10004F218(v8, v6, &qword_10009B150, &qword_10006DC50);
    LODWORD(v22) = (*(v20 + 48))(v6, 1, v18);

    if (v22 == 1)
    {
      sub_10002556C(v6, &qword_10009B150, &qword_10006DC50);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v20 + 8))(v6, v18);
    }

    v25 = sub_100053DD8(&qword_10009B330, sub_10002B6E8, &_sSo17OS_dispatch_queueCSch8DispatchMc);
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_10006EAD0;
    *(v26 + 24) = v23;
    v33 = 6;
    v34 = 0;
    v27 = v30;
    v35 = v30;
    v36 = v25;

    v28 = v27;
    swift_task_create();
    sub_10002556C(v8, &qword_10009B150, &qword_10006DC50);

    return (*(v10 + 8))(v31, v32);
  }

  return result;
}

uint64_t sub_1000501D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000240AC;

  return sub_100050274(a3);
}

uint64_t sub_100050274(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_100053DD8(&unk_10009BE70, type metadata accessor for CPSXPCConnection, &unk_10006EA98);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100050348, v4, v3);
}

uint64_t sub_100050348()
{
  v23 = v0;
  sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  CUSendableWrapper.value.getter();
  v1 = v0[2];
  v0[7] = v1;
  type = xpc_get_type(v1);
  if (type == XPC_TYPE_DICTIONARY.getter())
  {
    v14 = swift_task_alloc();
    v0[8] = v14;
    *v14 = v0;
    v14[1] = sub_1000507AC;

    return sub_1000515F0(v1);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = XPC_ERROR_CONNECTION_INVALID.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v1 == v3)
    {
      if (qword_10009AD60 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10002AF48(v15, qword_10009BB90);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v0[4];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_100030690(*(v18 + 64), *(v18 + 72), &v22);
        _os_log_impl(&_mh_execute_header, v16, v17, "XPC connection ended: client=%s", v19, 0xCu);
        sub_100024EF0(v20);
      }

      *(v0[4] + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcInvalidated) = 1;
      v21 = swift_task_alloc();
      v0[10] = v21;
      *v21 = v0;
      v21[1] = sub_100050948;

      return sub_100050AF0();
    }

    else
    {
      if (qword_10009AD60 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10002AF48(v4, qword_10009BB90);
      swift_unknownObjectRetain();

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = v0[4];
        v8 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v8 = 136315394;
        v9 = OS_xpc_object.nestedDescription.getter();
        v11 = sub_100030690(v9, v10, &v22);

        *(v8 + 4) = v11;
        *(v8 + 12) = 2080;
        *(v8 + 14) = sub_100030690(*(v7 + 64), *(v7 + 72), &v22);
        _os_log_impl(&_mh_execute_header, v5, v6, "### XPC connection error: xpc=%s, client=%s", v8, 0x16u);
        swift_arrayDestroy();
      }

      swift_unknownObjectRelease();
      v12 = v0[1];

      return v12();
    }
  }
}

uint64_t sub_1000507AC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100050A68;
  }

  else
  {
    v5 = sub_1000508E8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000508E8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100050948()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10005416C, v3, v2);
}

uint64_t sub_100050A68()
{
  sub_10005112C(*(v0 + 56), *(v0 + 72));
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100050AF0()
{
  v1[2] = v0;
  sub_100053DD8(&unk_10009BE70, type metadata accessor for CPSXPCConnection, &unk_10006EA98);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[3] = v3;
  v1[4] = v2;

  return _swift_task_switch(sub_100050BC4, v3, v2);
}

uint64_t sub_100050BC4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcInvalidated;
  v0[5] = OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcInvalidated;
  if ((*(v1 + v2) & 1) == 0)
  {
    xpc_connection_cancel(*(v1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection));
  }

  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v0[7] = OBJC_IVAR____TtC10companiond9CPSDaemon_requesterDaemon;
    type metadata accessor for CPSDaemon(0);
    sub_100053DD8(&qword_10009B140, type metadata accessor for CPSDaemon, &unk_10006DEA0);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100050D64, v5, v4);
  }

  else
  {
    v6 = v0[2];
    if (*(v6 + v0[5]) == 1)
    {
      v7 = (v6 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
      v8 = *(v6 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
      if (v8)
      {
        v9 = v7[1];

        v8(v10);
        sub_100025C1C(v8, v9);
        v11 = *v7;
      }

      else
      {
        v11 = 0;
      }

      v12 = v7[1];
      *v7 = 0;
      v7[1] = 0;
      sub_100025C1C(v11, v12);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100050D64()
{
  v0[8] = *(v0[6] + v0[7]);
  v1 = v0[3];
  v2 = v0[4];

  return _swift_task_switch(sub_100050DE4, v1, v2);
}

uint64_t sub_100050DE4()
{
  v1 = v0[8];

  if (v1)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_100050F28;
    v3 = v0[2];

    return sub_1000350B8(v3);
  }

  else
  {
    v5 = v0[2];
    if (*(v5 + v0[5]) == 1)
    {
      v6 = (v5 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
      v7 = *(v5 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
      if (v7)
      {
        v8 = v6[1];

        v7(v9);
        sub_100025C1C(v7, v8);
        v10 = *v6;
      }

      else
      {
        v10 = 0;
      }

      v11 = v6[1];
      *v6 = 0;
      v6[1] = 0;
      sub_100025C1C(v10, v11);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100050F28()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_10005106C, v3, v2);
}

uint64_t sub_10005106C()
{
  v1 = v0[2];
  if (*(v1 + v0[5]) == 1)
  {
    v2 = (v1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
    v3 = *(v1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
    if (v3)
    {
      v4 = v2[1];

      v3(v5);
      sub_100025C1C(v3, v4);
      v6 = *v2;
    }

    else
    {
      v6 = 0;
    }

    v7 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    sub_100025C1C(v6, v7);
  }

  v8 = v0[1];

  return v8();
}

void sub_10005112C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10009AD60 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10002AF48(v5, qword_10009BB90);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100030690(*(v3 + 64), *(v3 + 72), &v18);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "### XPC error reply: client=%s, error=%@", v8, 0x16u);
    sub_10002556C(v9, &unk_10009B2F0, &unk_10006E0C0);

    sub_100024EF0(v10);
  }

  if (xpc_dictionary_expects_reply())
  {
    reply = xpc_dictionary_create_reply(a1);
    if (reply)
    {
      v13 = reply;
      CUXPCCoder.encode(error:into:)();
      xpc_connection_send_message(*(v3 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection), v13);

      swift_unknownObjectRelease();
    }

    else
    {

      oslog = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v18 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_100030690(*(v3 + 64), *(v3 + 72), &v18);
        _os_log_impl(&_mh_execute_header, oslog, v14, "### XPC create reply failed: client=%s", v15, 0xCu);
        sub_100024EF0(v16);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1000515F0(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = type metadata accessor for CPSXPCClientRequesterRequest();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v4 = type metadata accessor for CPSXPCClientDiagnosticRequest();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();
  v5 = type metadata accessor for CPSXPCClientRequest();
  v2[40] = v5;
  v2[41] = *(v5 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  sub_100053DD8(&unk_10009BE70, type metadata accessor for CPSXPCConnection, &unk_10006EA98);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[45] = v7;
  v2[46] = v6;

  return _swift_task_switch(sub_1000517F8, v7, v6);
}

uint64_t sub_1000517F8()
{
  v61 = v0;
  if (*(v0[33] + 88) == 1)
  {
    v0[47] = OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcCoder;
    sub_100053DD8(&unk_10009BCF8, &type metadata accessor for CPSXPCClientRequest, &protocol conformance descriptor for CPSXPCClientRequest);
    CUXPCCoder.decode<A>(_:)();
    if (qword_10009AD60 != -1)
    {
      swift_once();
    }

    v1 = v0[43];
    v2 = v0[44];
    v3 = v0[40];
    v4 = v0[41];
    v5 = type metadata accessor for Logger();
    v0[48] = sub_10002AF48(v5, qword_10009BB90);
    v6 = *(v4 + 16);
    v6(v1, v2, v3);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[43];
    v12 = v0[40];
    v11 = v0[41];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60[0] = v59;
      *v13 = 136315138;
      sub_100053DD8(&qword_10009BD10, &type metadata accessor for CPSXPCClientRequest, &protocol conformance descriptor for CPSXPCClientRequest);
      v58 = v8;
      v14 = v6;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v18 = *(v11 + 8);
      v18(v10, v12);
      v19 = v15;
      v6 = v14;
      v20 = sub_100030690(v19, v17, v60);

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v7, v58, "XPC request: %s", v13, 0xCu);
      sub_100024EF0(v59);
    }

    else
    {

      v18 = *(v11 + 8);
      v18(v10, v12);
    }

    v0[49] = v18;
    v25 = v0[44];
    v27 = v0[41];
    v26 = v0[42];
    v28 = v0[40];
    v29 = v0[33];
    v30 = CPSXPCClientRequest.description.getter();
    v31 = (v29 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__lastRequestLabel);
    *v31 = v30;
    v31[1] = v32;

    v6(v26, v25, v28);
    v33 = (*(v27 + 88))(v26, v28);
    if (v33 == enum case for CPSXPCClientRequest.diagnostic(_:))
    {
      v34 = v0[42];
      v35 = v0[39];
      v36 = v0[37];
      v37 = v0[38];
      (*(v0[41] + 96))(v34, v0[40]);
      (*(v37 + 32))(v35, v34, v36);
      v38 = swift_task_alloc();
      v0[50] = v38;
      *v38 = v0;
      v38[1] = sub_100051EEC;
      v39 = v0[39];

      return sub_100052CB4((v0 + 26), v39);
    }

    if (v33 == enum case for CPSXPCClientRequest.requester(_:))
    {
      v40 = v0[42];
      v42 = v0[35];
      v41 = v0[36];
      v43 = v0[34];
      (*(v0[41] + 96))(v40, v0[40]);
      (*(v42 + 32))(v41, v40, v43);
      Strong = swift_weakLoadStrong();
      v0[52] = Strong;
      if (Strong)
      {
        v0[53] = OBJC_IVAR____TtC10companiond9CPSDaemon_requesterDaemon;
        type metadata accessor for CPSDaemon(0);
        sub_100053DD8(&qword_10009B140, type metadata accessor for CPSDaemon, &unk_10006DEA0);
        v46 = dispatch thunk of Actor.unownedExecutor.getter();

        return _swift_task_switch(sub_1000523BC, v46, v45);
      }

      v51 = v0[49];
      v52 = v0[44];
      v53 = v0[40];
      v55 = v0[35];
      v54 = v0[36];
      v56 = v0[34];
      v57 = objc_allocWithZone(type metadata accessor for CUError());
      CUError.init(_:_:_:)();
      swift_willThrow();
      (*(v55 + 8))(v54, v56);
      v51(v52, v53);
    }

    else
    {
      v47 = v0[44];
      v48 = v0[42];
      v49 = v0[40];
      v50 = objc_allocWithZone(type metadata accessor for CUError());
      CUError.init(_:_:_:)();
      swift_willThrow();
      v18(v47, v49);
      v18(v48, v49);
    }
  }

  else
  {
    _StringGuts.grow(_:)(23);

    v60[0] = 0xD000000000000015;
    v60[1] = 0x80000001000738B0;
    v21._countAndFlagsBits = CUEnvironmentValues.cpsEntitlement.getter();
    String.append(_:)(v21);

    v22 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_100051EEC()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);
  if (v0)
  {
    v5 = sub_100052AE4;
  }

  else
  {
    v5 = sub_100052028;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100052028()
{
  v23 = v0;
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  v1 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 240);
  v2 = *(v0 + 408);
  sub_10004F218(v0 + 16, v0 + 160, &qword_10009BD08, &qword_10006EB00);
  if (*(v0 + 184))
  {
    v3 = *(v0 + 256);
    sub_100053DC0((v0 + 160), (v0 + 112));
    reply = xpc_dictionary_create_reply(v3);
    if (reply)
    {
      v5 = reply;
      sub_10002AFE4((v0 + 112), *(v0 + 136));
      CUXPCCoder.encode<A>(message:into:)();
      v6 = *(v0 + 392);
      v7 = *(v0 + 352);
      v8 = *(v0 + 320);
      if (v2)
      {
        swift_unknownObjectRelease();
        sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
        v6(v7, v8);
        sub_100024EF0((v0 + 112));

        v9 = *(v0 + 8);
        goto LABEL_12;
      }

      xpc_connection_send_message(*(*(v0 + 264) + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection), v5);
      swift_unknownObjectRelease();
      sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
      v6(v7, v8);
    }

    else
    {

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 264);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v22 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_100030690(*(v15 + 64), *(v15 + 72), &v22);
        _os_log_impl(&_mh_execute_header, v13, v14, "### XPC create reply failed: client=%s", v16, 0xCu);
        sub_100024EF0(v17);
      }

      v18 = *(v0 + 392);
      v19 = *(v0 + 352);
      v20 = *(v0 + 320);
      sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
      v18(v19, v20);
    }

    sub_100024EF0((v0 + 112));
  }

  else
  {
    v10 = *(v0 + 392);
    v11 = *(v0 + 352);
    v12 = *(v0 + 320);
    sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
    v10(v11, v12);
    sub_10002556C(v0 + 160, &qword_10009BD08, &qword_10006EB00);
  }

  v9 = *(v0 + 8);
LABEL_12:

  return v9();
}

uint64_t sub_1000523BC()
{
  v0[54] = *(v0[52] + v0[53]);
  v1 = v0[45];
  v2 = v0[46];

  return _swift_task_switch(sub_10005243C, v1, v2);
}

uint64_t sub_10005243C()
{
  v1 = v0[54];

  if (v1)
  {
    v2 = swift_task_alloc();
    v0[55] = v2;
    *v2 = v0;
    v2[1] = sub_100052604;
    v3 = v0[36];
    v4 = v0[33];

    return sub_100035F78((v0 + 8), v3, v4);
  }

  else
  {
    v6 = v0[49];
    v7 = v0[44];
    v8 = v0[40];
    v10 = v0[35];
    v9 = v0[36];
    v11 = v0[34];
    v12 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    v6(v7, v8);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100052604()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);
  if (v0)
  {
    v5 = sub_100052BC0;
  }

  else
  {
    v5 = sub_100052740;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100052740()
{
  v26 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v4;
  *(v0 + 48) = *(v0 + 96);
  v5 = *(v0 + 448);
  sub_10004F218(v0 + 16, v0 + 160, &qword_10009BD08, &qword_10006EB00);
  if (*(v0 + 184))
  {
    v6 = *(v0 + 256);
    sub_100053DC0((v0 + 160), (v0 + 112));
    reply = xpc_dictionary_create_reply(v6);
    if (reply)
    {
      v8 = reply;
      sub_10002AFE4((v0 + 112), *(v0 + 136));
      CUXPCCoder.encode<A>(message:into:)();
      v9 = *(v0 + 392);
      v10 = *(v0 + 352);
      v11 = *(v0 + 320);
      if (v5)
      {
        swift_unknownObjectRelease();
        sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
        v9(v10, v11);
        sub_100024EF0((v0 + 112));

        v12 = *(v0 + 8);
        goto LABEL_12;
      }

      xpc_connection_send_message(*(*(v0 + 264) + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection), v8);
      swift_unknownObjectRelease();
      sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
      v9(v10, v11);
    }

    else
    {

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = *(v0 + 264);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_100030690(*(v18 + 64), *(v18 + 72), &v25);
        _os_log_impl(&_mh_execute_header, v16, v17, "### XPC create reply failed: client=%s", v19, 0xCu);
        sub_100024EF0(v20);
      }

      v21 = *(v0 + 392);
      v22 = *(v0 + 352);
      v23 = *(v0 + 320);
      sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
      v21(v22, v23);
    }

    sub_100024EF0((v0 + 112));
  }

  else
  {
    v13 = *(v0 + 392);
    v14 = *(v0 + 352);
    v15 = *(v0 + 320);
    sub_10002556C(v0 + 16, &qword_10009BD08, &qword_10006EB00);
    v13(v14, v15);
    sub_10002556C(v0 + 160, &qword_10009BD08, &qword_10006EB00);
  }

  v12 = *(v0 + 8);
LABEL_12:

  return v12();
}

uint64_t sub_100052AE4()
{
  v1 = v0[49];
  v2 = v0[44];
  v3 = v0[40];
  (*(v0[38] + 8))(v0[39], v0[37]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100052BC0()
{
  v1 = v0[49];
  v2 = v0[44];
  v3 = v0[40];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100052CB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for CPSXPCClientDiagnosticRequest();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_100053DD8(&unk_10009BE70, type metadata accessor for CPSXPCConnection, &unk_10006EA98);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v6;
  v3[9] = v5;

  return _swift_task_switch(sub_100052DE8, v6, v5);
}

uint64_t sub_100052DE8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  if ((*(v2 + 88))(v1, v3) == enum case for CPSXPCClientDiagnosticRequest.show(_:))
  {
    v4 = v0[2];
    v4[3] = type metadata accessor for CPSXPCShowReply();
    v4[4] = sub_100053DD8(&qword_10009BD18, &type metadata accessor for CPSXPCShowReply, &protocol conformance descriptor for CPSXPCShowReply);
    v4[5] = sub_100053DD8(&qword_10009BD20, &type metadata accessor for CPSXPCShowReply, &protocol conformance descriptor for CPSXPCShowReply);
    v5 = sub_100034710(v4);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_100053004;

    return sub_100053210(v5);
  }

  else
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    v11 = objc_allocWithZone(type metadata accessor for CUError());
    CUError.init(_:_:_:)();
    swift_willThrow();
    (*(v9 + 8))(v8, v10);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100053004()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1000531A4;
  }

  else
  {
    v5 = sub_100053140;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100053140()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000531A4()
{
  sub_100034774(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100053210(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100053DD8(&unk_10009BE70, type metadata accessor for CPSXPCConnection, &unk_10006EA98);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[4] = v4;
  v2[5] = v3;

  return _swift_task_switch(sub_1000532E4, v4, v3);
}

uint64_t sub_1000532E4()
{
  if (qword_10009AD60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009BB90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "diagnostic show", v4, 2u);
  }

  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_100053490;

    return sub_100026720();
  }

  else
  {
    CPSXPCShowReply.init(_:)();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100053490(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;

  v5 = *(v3 + 40);
  v6 = *(v3 + 32);

  return _swift_task_switch(sub_1000535DC, v6, v5);
}

uint64_t sub_1000535DC()
{
  CPSXPCShowReply.init(_:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100053644()
{

  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC10companiond16CPSXPCConnection_environment;
  v2 = type metadata accessor for CUEnvironmentValues();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100025C1C(*(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler), *(v0 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler + 8));

  v3 = OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcCoder;
  v4 = type metadata accessor for CUXPCCoder();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100053734()
{
  sub_100053644();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CPSXPCConnection(uint64_t a1)
{
  result = qword_10009BBF8;
  if (!qword_10009BBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000537E0(uint64_t a1)
{
  result = type metadata accessor for CUEnvironmentValues();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CUXPCCoder();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100053908(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_100053DD8(&unk_10009BCE8, type metadata accessor for CPSXPCConnection, &unk_10006EA70);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_1000539A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond16CPSXPCConnection_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_100053A24()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100053A98(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100053ADC@<X0>(uint64_t *a3@<X8>)
{
  result = Identifiable<>.id.getter();
  *a3 = result;
  return result;
}

uint64_t sub_100053B70()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100053BC8()
{
  v1 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100053C98(uint64_t a1)
{
  v4 = *(sub_100024EA8(&qword_10009B148, &qword_10006E0A0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000240AC;

  return sub_1000501D8(a1, v6, v1 + v5);
}

uint64_t sub_100053D88()
{

  return _swift_deallocObject(v0, 32, 7);
}

_OWORD *sub_100053DC0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_100053DD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100053E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_weakInit();
  *(v3 + 88) = 0;
  v7 = (v3 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v3 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__lastRequestLabel);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC10companiond16CPSXPCConnection__startTicks;
  *(v3 + v9) = mach_absolute_time();
  CUXPCCoder.init()();
  *(v3 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcInvalidated) = 0;
  swift_weakAssign();
  v10 = OBJC_IVAR____TtC10companiond16CPSXPCConnection_environment;
  v11 = type metadata accessor for CUEnvironmentValues();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v4 + v10, a3, v11);
  v13 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  CUSendableWrapper.value.getter();
  *(v4 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__xpcConnection) = connection;
  *(v4 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__pid) = xpc_connection_get_pid(connection);
  xpc_connection_get_audit_token();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  v14 = xpc_copy_entitlement_for_token();
  if (v14)
  {
    swift_unknownObjectRetain();
    CUEnvironmentValues.cpsEntitlement.getter();
    v15 = String.utf8CString.getter();

    v16 = xpc_dictionary_get_BOOL(v14, (v15 + 32));

    swift_unknownObjectRelease();
    *(v4 + 88) = v16;
    v17 = swift_unknownObjectRetain();
    if (xpc_dictionary_get_string(v17, "application-identifier"))
    {
      v18 = String.init(cString:)();
      v20 = v19;
      swift_unknownObjectRelease();
LABEL_8:
      *(v4 + 48) = v18;
      *(v4 + 56) = v20;
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  v21 = xpc_copy_code_signing_identity_for_token();
  if (!v21)
  {
    v18 = 63;
    v20 = 0xE100000000000000;
    goto LABEL_8;
  }

  v22 = v13;
  v23 = v11;
  v24 = a3;
  v25 = a1;
  v26 = v21;
  v18 = String.init(cString:)();
  v20 = v27;
  *(v4 + 48) = v18;
  *(v4 + 56) = v27;
  v28 = v26;
  a1 = v25;
  a3 = v24;
  v11 = v23;
  v13 = v22;
  free(v28);
LABEL_9:

  v29._countAndFlagsBits = 58;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);
  swift_unknownObjectRelease();

  (*(v12 + 8))(a3, v11);
  (*(*(v13 - 8) + 8))(a1, v13);
  *(v4 + 64) = v18;
  *(v4 + 72) = v20;
  return v4;
}

uint64_t CUEnvironmentValues.cpsXPCServerEnabled.getter()
{
  sub_10002B400();
  CUEnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1000541AC()
{
  *(v1 + 64) = v0;
  sub_1000564E4(&qword_10009BE60, type metadata accessor for CPSXPCServer, &unk_10006EC14);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100054280, v3, v2);
}

uint64_t sub_100054280()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener;
  if (!*(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener))
  {
    CUEnvironmentValues.cpsXPCServiceName.getter();
    if (v3)
    {
      v4 = CUEnvironmentValues.dispatchQueue.getter();
      v5 = String.utf8CString.getter();

      mach_service = xpc_connection_create_mach_service((v5 + 32), v4, 1uLL);
    }

    else
    {
      v4 = CUEnvironmentValues.dispatchQueue.getter();
      mach_service = xpc_connection_create(0, v4);
    }

    *(v1 + v2) = mach_service;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    v7 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1000575A4;
    v0[7] = v7;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10005445C;
    v0[5] = &unk_10008B898;
    v8 = _Block_copy(v0 + 2);

    xpc_connection_set_event_handler(mach_service, v8);
    _Block_release(v8);
    xpc_connection_activate(mach_service);
    swift_unknownObjectRelease_n();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10005445C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000544BC()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009BD40);
  sub_10002AF48(v0, qword_10009BD40);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005452C()
{
  v1[15] = v0;
  sub_1000564E4(&qword_10009BE60, type metadata accessor for CPSXPCServer, &unk_10006EC14);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v3;
  v1[17] = v2;

  return _swift_task_switch(sub_100054600, v3, v2);
}

uint64_t sub_100054600()
{
  v38 = v0;
  v0[10] = 0;
  v1 = v0[15];
  v0[11] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcConnections;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = __CocoaSet.count.getter();

    if (!v4)
    {
      goto LABEL_27;
    }

LABEL_5:
    v5 = *(v1 + v2);
    if ((v5 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for CPSXPCConnection(0);
      sub_1000564E4(&qword_10009BE68, type metadata accessor for CPSXPCConnection, &unk_10006EA30);
      Set.Iterator.init(_cocoa:)();
      v8 = v0[2];
      v0[18] = v8;
      v9 = v0 + 18;
      v11 = v0[3];
      v10 = v0[4];
      v13 = v0[5];
      v12 = v0[6];
      v0[20] = v10;
      v0[19] = v11;
      v0[21] = _swiftEmptyArrayStorage;
      if (v8 < 0)
      {
        v25 = __CocoaSet.Iterator.next()();
        if (!v25)
        {
          goto LABEL_23;
        }

        v0[14] = v25;
        swift_dynamicCast();
        v21 = v0[12];
        v18 = v13;
        v20 = v12;
LABEL_17:
        v0[23] = v18;
        v0[24] = v20;
        v0[22] = v21;
        if (v21)
        {
          type metadata accessor for CPSXPCConnection(0);
          sub_1000564E4(&unk_10009BE70, type metadata accessor for CPSXPCConnection, &unk_10006EA98);
          v22 = dispatch thunk of Actor.unownedExecutor.getter();
          v24 = v23;
          v8 = sub_100054AB0;
          v6 = v22;
          v7 = v24;

          return _swift_task_switch(v8, v6, v7);
        }

LABEL_23:
        sub_1000564B4(*v9);
        _StringGuts.grow(_:)(23);

        v37._countAndFlagsBits = 0xD000000000000014;
        v37._object = 0x8000000100073980;
        v0[12] = _swiftEmptyArrayStorage[2];
        v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v26);

        v27._countAndFlagsBits = 10;
        v27._object = 0xE100000000000000;
        String.append(_:)(v27);
        String.append(_:)(v37);

        v37._countAndFlagsBits = _swiftEmptyArrayStorage;

        sub_100037BC8(&v37);

        v28 = *(v37._countAndFlagsBits + 16);
        if (v28)
        {
          v29 = (v37._countAndFlagsBits + 40);
          do
          {
            v30 = *(v29 - 1);
            v31 = *v29;

            v32._countAndFlagsBits = v30;
            v32._object = v31;
            String.append(_:)(v32);

            v29 += 2;
            --v28;
          }

          while (v28);
        }

        goto LABEL_27;
      }

      v14 = v10 + 64;
    }

    else
    {
      v15 = -1;
      v16 = -1 << *(v5 + 32);
      v11 = v5 + 56;
      if (-v16 < 64)
      {
        v15 = ~(-1 << -v16);
      }

      v12 = v15 & *(v5 + 56);
      v0[20] = ~v16;
      v0[19] = v11;
      v0[18] = v5;
      v9 = v0 + 18;
      v14 = 63 - v16;
      v0[21] = _swiftEmptyArrayStorage;

      v13 = 0;
    }

    v17 = v12;
    v18 = v13;
    if (!v12)
    {
      v19 = v13;
      while (1)
      {
        v18 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v18 >= (v14 >> 6))
        {
          goto LABEL_23;
        }

        v17 = *(v11 + 8 * v18);
        ++v19;
        if (v17)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      return _swift_task_switch(v8, v6, v7);
    }

LABEL_16:
    v20 = (v17 - 1) & v17;
    v21 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    goto LABEL_17;
  }

  if (*(v3 + 16))
  {
    goto LABEL_5;
  }

LABEL_27:
  v33 = v0[10];
  v34 = v0[11];
  v35 = v0[1];

  return v35(v33, v34);
}

uint64_t sub_100054AB0()
{
  v0[25] = sub_10004F950();
  v0[26] = v1;
  v2 = v0[16];
  v3 = v0[17];

  return _swift_task_switch(sub_100054B18, v2, v3);
}

uint64_t sub_100054B18()
{
  v30 = v0;
  v0[12] = v0[25];
  v0[13] = v0[26];
  v1._countAndFlagsBits = 10;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2 = v0[12];
  v3 = v0[13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[21];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_100037778((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = v2;
    *(v8 + 5) = v3;
    v3 = v0[23];
    v9 = v0[24];
    v0[21] = v5;
    v10 = v0[18];
    if (v10 < 0)
    {
      break;
    }

    v11 = v9;
    v2 = v3;
    if (v9)
    {
LABEL_10:
      v13 = (v11 - 1) & v11;
      v14 = *(*(v10 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v11)))));

      goto LABEL_13;
    }

    v12 = v3;
    while (1)
    {
      v2 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v2 >= ((v0[20] + 64) >> 6))
      {
        goto LABEL_17;
      }

      v11 = *(v0[19] + 8 * v2);
      ++v12;
      if (v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_24:
    v5 = sub_100037778(0, *(v5 + 2) + 1, 1, v5);
  }

  v15 = __CocoaSet.Iterator.next()();
  if (!v15)
  {
    goto LABEL_17;
  }

  v0[14] = v15;
  type metadata accessor for CPSXPCConnection(0);
  swift_dynamicCast();
  v14 = v0[12];
  v2 = v3;
  v13 = v9;
LABEL_13:
  v0[23] = v2;
  v0[24] = v13;
  v0[22] = v14;
  if (v14)
  {
    type metadata accessor for CPSXPCConnection(0);
    sub_1000564E4(&unk_10009BE70, type metadata accessor for CPSXPCConnection, &unk_10006EA98);
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100054AB0, v17, v16);
  }

LABEL_17:
  sub_1000564B4(v0[18]);
  _StringGuts.grow(_:)(23);

  v29._countAndFlagsBits = 0xD000000000000014;
  v29._object = 0x8000000100073980;
  v0[12] = *(v5 + 2);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 10;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  String.append(_:)(v29);

  v29._countAndFlagsBits = v5;

  sub_100037BC8(&v29);

  v20 = *(v29._countAndFlagsBits + 16);
  if (v20)
  {
    v21 = (v29._countAndFlagsBits + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;

      v24._countAndFlagsBits = v22;
      v24._object = v23;
      String.append(_:)(v24);

      v21 += 2;
      --v20;
    }

    while (v20);
  }

  v25 = v0[10];
  v26 = v0[11];
  v27 = v0[1];

  return v27(v25, v26);
}

uint64_t sub_100054EE0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v18[0] = a1;
    swift_unknownObjectRetain();
    sub_100024EA8(&unk_10009B1A0, &qword_10006EAC0);
    v9 = CUSendableWrapper.init(_:)();
    __chkstk_darwin(v9);
    v15 = v6;
    type metadata accessor for CPSXPCServer(0);
    sub_1000564E4(&qword_10009BE60, type metadata accessor for CPSXPCServer, &unk_10006EC14);
    dispatch thunk of Actor.unownedExecutor.getter();
    if (swift_task_isCurrentExecutor())
    {
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1000575C4;
      *(v10 + 24) = &v17[-4];
      v11 = swift_allocObject();
      *(v11 + 16) = sub_1000575E0;
      *(v11 + 24) = v10;

      v18[0] = v8;
      sub_100045AAC(v18);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return (*(v4 + 8))(v6, v3);
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v13._object = 0x8000000100073410;
    v13._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v13);
    v17[2] = v8;
    _print_unlocked<A, B>(_:_:)();
    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v16 = 0;
    v15 = 54;
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100055238(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CPSXPCServer(0);
  sub_1000564E4(&qword_10009BE60, type metadata accessor for CPSXPCServer, &unk_10006EC14);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000552F8();
}

void sub_1000552F8()
{
  v1 = v0;
  sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  CUSendableWrapper.value.getter();
  type = xpc_get_type(object[0]);
  if (type == XPC_TYPE_CONNECTION.getter())
  {
    sub_100055564(object[0]);
LABEL_13:
    swift_unknownObjectRelease();
    return;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = XPC_ERROR_CONNECTION_INVALID.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (object[0] == v3)
  {
    v12 = OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener;
    *(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener) = 0;
    swift_unknownObjectRelease();
    if (*(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__invalidateCalled) == 1 && !*(v1 + v12))
    {
      v13 = OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcConnections;
      swift_beginAccess();
      if ((*(v1 + v13) & 0xC000000000000001) != 0)
      {

        __CocoaSet.count.getter();
      }
    }

    goto LABEL_13;
  }

  if (qword_10009AD68 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10002AF48(v4, qword_10009BD40);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    object[0] = v8;
    *v7 = 136315138;
    v9 = OS_xpc_object.nestedDescription.getter();
    v11 = sub_100030690(v9, v10, object);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "### XPC listener error: error=%s", v7, 0xCu);
    sub_100024EF0(v8);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100055564(uint64_t a1)
{
  v3 = type metadata accessor for CUEnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21[-v8];
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if ((*(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__invalidateCalled) & 1) == 0)
    {
      v22[0] = a1;
      swift_unknownObjectRetain();
      sub_100024EA8(&unk_10009B1A0, &qword_10006EAC0);
      CUSendableWrapper.init(_:)();
      (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer_environment, v3);
      type metadata accessor for CPSXPCConnection(0);
      swift_allocObject();

      v12 = sub_100053E20(v9, v11, v6);

      swift_beginAccess();

      sub_10005652C(&v23, v12);
      swift_endAccess();

      __chkstk_darwin(v13);
      v19 = v1;
      v20 = v12;
      sub_1000564E4(&unk_10009BE70, type metadata accessor for CPSXPCConnection, &unk_10006EA98);
      dispatch thunk of Actor.unownedExecutor.getter();
      if (swift_task_isCurrentExecutor())
      {
        v14 = swift_allocObject();
        *(v14 + 16) = sub_100057608;
        *(v14 + 24) = &v21[-32];
        v15 = swift_allocObject();
        *(v15 + 16) = sub_1000576FC;
        *(v15 + 24) = v14;

        v22[0] = v12;
        sub_100045CD8(v22);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return result;
        }

        __break(1u);

        swift_isEscapingClosureAtFileLocation();

        __break(1u);
      }

      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(66);
      v17._object = 0x8000000100073410;
      v17._countAndFlagsBits = 0xD00000000000003FLL;
      String.append(_:)(v17);
      v23 = v12;
      _print_unlocked<A, B>(_:_:)();
      v18._countAndFlagsBits = 46;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      LODWORD(v20) = 0;
      v19 = 105;
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  return result;
}

void sub_1000559B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000564E4(&unk_10009BE70, type metadata accessor for CPSXPCConnection, &unk_10006EA98);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = (a1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
  v8 = *(a1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler);
  v9 = *(a1 + OBJC_IVAR____TtC10companiond16CPSXPCConnection__invalidationHandler + 8);
  *v7 = sub_1000576AC;
  v7[1] = v6;

  sub_100025C1C(v8, v9);

  sub_10004FB8C();
}

uint64_t sub_100055B44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v5 = Strong;
    type metadata accessor for CPSXPCServer(0);
    sub_1000564E4(&qword_10009BE60, type metadata accessor for CPSXPCServer, &unk_10006EC14);
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      _StringGuts.grow(_:)(66);
      v9._object = 0x8000000100073410;
      v9._countAndFlagsBits = 0xD00000000000003FLL;
      String.append(_:)(v9);
      _print_unlocked<A, B>(_:_:)();
      v10._countAndFlagsBits = 46;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v6 = swift_allocObject();
    *(v6 + 16) = sub_1000576B4;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1000576FC;
    *(v7 + 24) = v6;

    v11 = v3;
    sub_100045CD8(&v11);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100055DCC(uint64_t a1, Swift::UInt a2)
{
  type metadata accessor for CPSXPCServer(0);
  sub_1000564E4(&qword_10009BE60, type metadata accessor for CPSXPCServer, &unk_10006EC14);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_100055E8C(a2);
}

uint64_t sub_100055E8C(Swift::UInt a1)
{
  v3 = OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcConnections;
  swift_beginAccess();
  sub_1000570F8(a1);
  swift_endAccess();

  if (*(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__invalidateCalled) == 1 && !*(v1 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcListener) && (*(v1 + v3) & 0xC000000000000001) != 0)
  {

    __CocoaSet.count.getter();
  }

  return result;
}

uint64_t sub_100055F50()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC10companiond12CPSXPCServer_environment;
  v2 = type metadata accessor for CUEnvironmentValues();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  sub_100057504(v0 + OBJC_IVAR____TtC10companiond12CPSXPCServer__xpcEndpoint);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100056024(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1000564E4(&qword_10009BE58, type metadata accessor for CPSXPCServer, &unk_10006EBC4);

  return CUEnvironmental<>.unownedExecutor.getter(v4, v5, a2);
}

uint64_t sub_1000560C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002B200;

  return sub_10005452C();
}

uint64_t sub_100056154@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10companiond12CPSXPCServer_environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t (*CUEnvironmentValues.cpsXPCServerEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_10002B400();
  CUEnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return sub_100056274;
}

uint64_t type metadata accessor for CPSXPCServer(uint64_t a1)
{
  result = qword_10009BDA0;
  if (!qword_10009BDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100056300(uint64_t a1)
{
  type metadata accessor for CUEnvironmentValues();
  if (v1 <= 0x3F)
  {
    sub_1000563F4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000563F4(uint64_t a1)
{
  if (!qword_10009BDB0)
  {
    type metadata accessor for CUXPCEndpoint();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10009BDB0);
    }
  }
}

uint64_t sub_10005645C(uint64_t a1)
{
  result = sub_1000564E4(&qword_10009BE58, type metadata accessor for CPSXPCServer, &unk_10006EBC4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000564E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005652C(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for CPSXPCConnection(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_100056730(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100056930(v17 + 1);
    }

    sub_100056B80(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100056C24(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

Swift::Int sub_100056730(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100024EA8(&qword_10009BE88, &qword_10006EC88);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CPSXPCConnection(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100056930(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v14);
        result = Hasher._finalize()();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100056930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100024EA8(&qword_10009BE88, &qword_10006EC88);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_100056B80(Swift::UInt a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::UInt sub_100056C24(Swift::UInt result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100056930(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100056D80();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100056ED0(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = result & ~v9;
    result = type metadata accessor for CPSXPCConnection(0);
    a2 = v11;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100056D80()
{
  v1 = v0;
  sub_100024EA8(&qword_10009BE88, &qword_10006EC88);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

Swift::Int sub_100056ED0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100024EA8(&qword_10009BE88, &qword_10006EC88);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1000570F8(Swift::UInt a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100057268(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (*(*(v3 + 48) + 8 * v10) != a1)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100056D80();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_10005735C(v10);
  result = v14;
  *v1 = v15;
  return result;
}

Swift::Int sub_100057268(uint64_t a1, Swift::UInt a2)
{

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100056730(v5, v4);
  v14 = v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 48);
    while (1)
    {
      v6 = *(v12 + 8 * v10);
      if (v6 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  sub_10005735C(v10);
  *v2 = v14;
  return v6;
}

unint64_t sub_10005735C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100057504(uint64_t a1)
{
  v2 = sub_100024EA8(&qword_10009BE80, &qword_10006EC78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005756C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000575AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100057634()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005766C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10004F218(a3, v25 - v10, &qword_10009B150, &qword_10006DC50);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002556C(v11, &qword_10009B150, &qword_10006DC50);
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

      sub_10002556C(a3, &qword_10009B150, &qword_10006DC50);

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

  sub_10002556C(a3, &qword_10009B150, &qword_10006DC50);
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

uint64_t sub_100057A14()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009BE90);
  sub_10002AF48(v0, qword_10009BE90);
  return Logger.init(subsystem:category:)();
}

id sub_100057BC0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100057C54(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_100057CB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_100057D3C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t CompanionDevice.color.getter()
{
  v1 = OBJC_IVAR____TtC10companiond15CompanionDevice_color;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CompanionDevice.color.setter(int a1)
{
  v3 = OBJC_IVAR____TtC10companiond15CompanionDevice_color;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_100057F88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024EA8(&qword_10009BF48, &qword_10006ECF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for NWEndpoint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v2[OBJC_IVAR____TtC10companiond15CompanionDevice_idsIdentifier];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v2[OBJC_IVAR____TtC10companiond15CompanionDevice_name];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v2[OBJC_IVAR____TtC10companiond15CompanionDevice_model];
  *v13 = 0;
  v13[1] = 0;
  v27 = a1;
  sub_10004F218(a1, v6, &qword_10009BF48, &qword_10006ECF8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002556C(v27, &qword_10009BF48, &qword_10006ECF8);
    sub_10002556C(v6, &qword_10009BF48, &qword_10006ECF8);

    type metadata accessor for CompanionDevice();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v15 = NWEndpoint.deviceID.getter();
    v17 = v16;
    swift_beginAccess();
    *v11 = v15;
    v11[1] = v17;

    v18 = NWEndpoint.deviceName.getter();
    v20 = v19;
    swift_beginAccess();
    *v12 = v18;
    v12[1] = v20;

    v21 = NWEndpoint.deviceModel.getter();
    v23 = v22;
    swift_beginAccess();
    *v13 = v21;
    v13[1] = v23;

    v24 = NWEndpoint.deviceColor.getter();
    (*(v8 + 8))(v10, v7);
    *&v2[OBJC_IVAR____TtC10companiond15CompanionDevice_color] = v24;
    v25 = type metadata accessor for CompanionDevice();
    v28.receiver = v2;
    v28.super_class = v25;
    v26 = objc_msgSendSuper2(&v28, "init");
    sub_10002556C(v27, &qword_10009BF48, &qword_10006ECF8);
    return v26;
  }
}

uint64_t CompanionDevice.description.getter()
{
  v1 = v0;
  v2 = 7104878;
  _StringGuts.grow(_:)(64);
  v3._object = 0x80000001000739C0;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v3);
  v4 = (v0 + OBJC_IVAR____TtC10companiond15CompanionDevice_idsIdentifier);
  swift_beginAccess();
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x3A656D616E207C20;
  v8._object = 0xE900000000000020;
  String.append(_:)(v8);
  v9 = (v1 + OBJC_IVAR____TtC10companiond15CompanionDevice_name);
  swift_beginAccess();
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x6C65646F6D207C20;
  v13._object = 0xEA0000000000203ALL;
  String.append(_:)(v13);
  v14 = (v1 + OBJC_IVAR____TtC10companiond15CompanionDevice_model);
  swift_beginAccess();
  if (v14[1])
  {
    v2 = *v14;
    v15 = v14[1];
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  v16._countAndFlagsBits = v2;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x726F6C6F63207C20;
  v17._object = 0xEA0000000000203ALL;
  String.append(_:)(v17);
  swift_beginAccess();
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 62;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return 0;
}

id CompanionDevice.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CompanionDevice();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id CompanionDeviceMonitor.__allocating_init(queue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser] = 0;
  *&v3[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout] = 0;
  v3[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_cancelling] = 0;
  *&v3[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_queue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id CompanionDeviceMonitor.init(queue:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser] = 0;
  *&v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout] = 0;
  v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_cancelling] = 0;
  *&v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_queue] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CompanionDeviceMonitor();
  return objc_msgSendSuper2(&v3, "init");
}

id CompanionDeviceMonitor.__deallocating_deinit()
{
  v1 = v0;
  if (qword_10009AD70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10002AF48(v2, qword_10009BE90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "getCompanionDevice deinit", v5, 2u);
  }

  v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_cancelling] = 1;
  if (*&v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout])
  {

    Task.cancel()();
  }

  v6 = OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser;
  if (*&v1[OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser])
  {

    NWBrowser.cancel()();
  }

  *&v1[v6] = 0;

  v8.receiver = v1;
  v8.super_class = type metadata accessor for CompanionDeviceMonitor();
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t CompanionDeviceMonitor.getCompanionDevice(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_100024EA8(&qword_10009BEE8, &unk_10006EC90);
  __chkstk_darwin(v5 - 8);
  v31[1] = v31 - v6;
  v7 = type metadata accessor for NWBrowser.Descriptor.Options.Scope();
  __chkstk_darwin(v7 - 8);
  v31[0] = type metadata accessor for NWBrowser.Descriptor();
  v8 = *(v31[0] - 8);
  __chkstk_darwin(v31[0]);
  v10 = (v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  __chkstk_darwin(v11 - 8);
  v13 = v31 - v12;
  if (qword_10009AD70 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10002AF48(v14, qword_10009BE90);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "getCompanionDevice", v17, 2u);
  }

  v18 = OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout;
  if (*(v3 + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_timeout))
  {

    Task.cancel()();
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser;
  v21 = *(v3 + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_browser);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v21;
  v22[5] = a1;
  v32 = a1;
  v22[6] = v33;

  *(v3 + v18) = sub_100057714(0, 0, v13, &unk_10006ECA8, v22);

  if (*(v3 + v20))
  {

    NWBrowser.cancel()();
  }

  sub_100024EA8(&qword_10009BEF0, &qword_10006ECB0);
  *v10 = 0xD000000000000014;
  v10[1] = 0x8000000100073A00;
  static NWBrowser.Descriptor.Options.Scope.all.getter();
  NWBrowser.Descriptor.Options.init(scope:)();
  (*(v8 + 104))(v10, enum case for NWBrowser.Descriptor.applicationServiceWithOptions(_:), v31[0]);
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  NWParameters.requiredNetworkAgents.setter();
  static NWApplicationID.self.getter();
  NWParameters.applicationID.setter();
  NWParameters.nw.getter();
  nw_parameters_set_companion_proxy_required_interface_type();
  NWParameters.__allocating_init(_:)();

  type metadata accessor for NWBrowser();
  swift_allocObject();
  *(v3 + v20) = NWBrowser.init(for:using:)();

  v23 = *(v3 + v20);
  v24 = swift_allocObject();
  v26 = v32;
  v25 = v33;
  v24[2] = v23;
  v24[3] = v26;
  v24[4] = v25;
  swift_retain_n();

  NWBrowser.stateUpdateHandler.setter();

  if (*(v3 + v20))
  {
    v28 = *(v3 + v18);
    v29 = *(v3 + OBJC_IVAR____TtC10companiond22CompanionDeviceMonitor_cancelling);
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    *(v30 + 32) = v26;
    *(v30 + 40) = v25;
    swift_retain_n();

    NWBrowser.browseResultsChangedHandler.setter();

    if (*(v3 + v20))
    {

      NWBrowser.start(queue:)();
    }
  }

  return result;
}

uint64_t sub_100058F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_10005902C, 0, 0);
}

uint64_t sub_10005902C()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_100059108;

  return sub_10005ADB0(v1, v3, 0, 0, 1);
}

uint64_t sub_100059108()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000593B4;
  }

  else
  {
    v5 = sub_100059278;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100059278()
{
  if (qword_10009AD70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009BE90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getCompanionDevice took to long, cancelling after 2 seconds.", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    NWBrowser.cancel()();
  }

  (*(v0 + 24))(0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000593B4()
{
  if (qword_10009AD70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002AF48(v1, qword_10009BE90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getCompanionDevice Timeout cancelled.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_1000594DC(char *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v61 = a4;
  v58 = a3;
  v6 = type metadata accessor for NWError();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v55 - v10;
  v11 = type metadata accessor for NWBrowser.State();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v64 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v55 - v16;
  __chkstk_darwin(v15);
  v19 = &v55 - v18;
  if (qword_10009AD70 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_10002AF48(v20, qword_10009BE90);
  v22 = *(v12 + 16);
  v63 = a1;
  v66 = v22;
  v22(v19, a1, v11);
  v62 = v21;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v57 = v9;
    v26 = v25;
    v27 = swift_slowAlloc();
    v68 = v27;
    *v26 = 136315138;
    v66(v17, v19, v11);
    v28 = String.init<A>(describing:)();
    v55 = v12;
    v56 = a2;
    v30 = v29;
    v31 = *(v12 + 8);
    v31(v19, v11);
    v32 = sub_100030690(v28, v30, &v68);
    a2 = v56;

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "getCompanionDevice NWBrowser updated state: %s", v26, 0xCu);
    sub_100024EF0(v27);

    v9 = v57;

    v33 = v31;
    v12 = v55;
  }

  else
  {

    v33 = *(v12 + 8);
    v33(v19, v11);
  }

  v34 = v64;
  v66(v64, v63, v11);
  v35 = (*(v12 + 88))(v34, v11);
  if (v35 == enum case for NWBrowser.State.failed(_:))
  {
    (*(v12 + 96))(v34, v11);
    v37 = v59;
    v36 = v60;
    v38 = v65;
    (*(v59 + 32))(v65, v34, v60);
    v39 = *(v37 + 16);
    v39(v9, v38, v36);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v42 = 138412290;
      sub_10005BE14(&qword_10009BF60, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v39(v43, v9, v36);
      v44 = _swift_stdlib_bridgeErrorToNSError();
      v45 = *(v37 + 8);
      v45(v9, v36);
      *(v42 + 4) = v44;
      v46 = v66;
      *v66 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "getCompanionDevice NWBrowser failed with error: %@", v42, 0xCu);
      sub_10002556C(v46, &unk_10009B2F0, &unk_10006E0C0);
    }

    else
    {

      v45 = *(v37 + 8);
      v45(v9, v36);
    }

    v58(0);
    v45(v65, v36);
    return;
  }

  if (v35 == enum case for NWBrowser.State.waiting(_:))
  {
LABEL_10:
    v33(v34, v11);
    return;
  }

  if (v35 == enum case for NWBrowser.State.setup(_:))
  {
    return;
  }

  if (v35 != enum case for NWBrowser.State.ready(_:))
  {
    if (v35 == enum case for NWBrowser.State.cancelled(_:))
    {
      return;
    }

    goto LABEL_10;
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v68 = v50;
    *v49 = 136315138;
    if (a2)
    {
      v51 = NWBrowser.browseResults.getter();
    }

    else
    {
      v51 = 0;
    }

    v67 = v51;
    sub_100024EA8(&qword_10009BF68, &qword_10006ED10);
    v52 = String.init<A>(describing:)();
    v54 = sub_100030690(v52, v53, &v68);

    *(v49 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v47, v48, "getCompanionDevice initial results: %s", v49, 0xCu);
    sub_100024EF0(v50);
  }
}

uint64_t sub_100059C08(char *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v61 = a1;
  v10 = sub_100024EA8(&qword_10009BF48, &qword_10006ECF8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = type metadata accessor for NWEndpoint();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v18);
  v23 = &v54 - v22;
  if ((a3 & 1) == 0)
  {
    v59 = a6;
    v60 = a5;
    if (qword_10009AD70 != -1)
    {
      swift_once();
    }

    v56 = v20;
    v24 = type metadata accessor for Logger();
    sub_10002AF48(v24, qword_10009BE90);
    v25 = v61;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v28 = os_log_type_enabled(v26, v27);
    v57 = a4;
    v58 = v13;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v55 = v17;
      v30 = v29;
      v31 = swift_slowAlloc();
      v62[0] = v31;
      *v30 = 136315138;
      type metadata accessor for NWBrowser.Result();
      sub_10005BE14(&qword_10009BF50, &type metadata accessor for NWBrowser.Result, &protocol conformance descriptor for NWBrowser.Result);
      v32 = Set.description.getter();
      v34 = v16;
      v35 = v23;
      v36 = sub_100030690(v32, v33, v62);

      *(v30 + 4) = v36;
      v23 = v35;
      v16 = v34;
      v25 = v61;
      _os_log_impl(&_mh_execute_header, v26, v27, "getCompanionDevice results changed: %s", v30, 0xCu);
      sub_100024EF0(v31);

      v17 = v55;
    }

    v37 = sub_10005A174(v25);
    sub_10005A538(v37, v15);

    if ((*(v17 + 6))(v15, 1, v16) == 1)
    {
      return sub_10002556C(v15, &qword_10009BF48, &qword_10006ECF8);
    }

    else
    {
      (*(v17 + 4))(v23, v15, v16);
      v38 = *(v17 + 2);
      v39 = v56;
      v38(v56, v23, v16);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v39;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v55 = v38;
        v45 = v44;
        v62[0] = v44;
        *v43 = 136315138;
        v54 = NWEndpoint.debugDescription.getter();
        v61 = v23;
        v46 = v17;
        v48 = v47;
        v49 = v46[1];
        v49(v42, v16);
        v50 = sub_100030690(v54, v48, v62);
        v17 = v46;
        v23 = v61;

        *(v43 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v40, v41, "getCompanionDevice found meDevice: %s", v43, 0xCu);
        sub_100024EF0(v45);
        v38 = v55;
      }

      else
      {

        v49 = *(v17 + 1);
        v49(v39, v16);
      }

      v51 = v58;
      if (v57)
      {
        Task.cancel()();
      }

      v38(v51, v23, v16);
      (*(v17 + 7))(v51, 0, 1, v16);
      v52 = objc_allocWithZone(type metadata accessor for CompanionDevice());
      v53 = sub_100057F88(v51);
      v60();

      return (v49)(v23, v16);
    }
  }

  return result;
}

void *sub_10005A174(uint64_t a1)
{
  v43 = type metadata accessor for NWBrowser.Result();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for NWEndpoint();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = _swiftEmptyArrayStorage;
    v33 = a1;
    sub_10004F06C(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = _HashTable.startBucket.getter();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      NWBrowser.Result.endpoint.getter();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = v46[2];
      v21 = v46[3];
      if (v22 >= v21 >> 1)
      {
        sub_10004F06C((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      v20[2] = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_10005BC60(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_10005BC60(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_10005A538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100024EA8(&qword_10009BF58, &unk_10006ED00);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for NWEndpoint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    v40 = 1;
    return (*(v8 + 56))(a2, v40, 1, v7);
  }

  v41 = v8;
  v42 = a2;
  v12 = 0;
  v14 = *(v8 + 16);
  v13 = v8 + 16;
  v46 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v47 = v14;
  v43 = v48 + 1;
  v44 = v11;
  v15 = (v13 - 8);
  v45 = *(v13 + 56);
  v14(v10, v46, v7);
  while (1)
  {
    NWEndpoint.txtRecord.getter();
    v16 = type metadata accessor for NWTXTRecord();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {
      (*v15)(v10, v7);
      sub_10002556C(v6, &qword_10009BF58, &unk_10006ED00);
      goto LABEL_4;
    }

    v18 = NWTXTRecord.subscript.getter();
    v20 = v19;
    result = (*(v17 + 8))(v6, v16);
    if (v20)
    {
      break;
    }

LABEL_74:
    (*v15)(v10, v7);
    v11 = v44;
LABEL_4:
    if (++v12 == v11)
    {
      v40 = 1;
      v8 = v41;
      a2 = v42;
      return (*(v8 + 56))(a2, v40, 1, v7);
    }

    v47(v10, v46 + v45 * v12, v7);
  }

  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

    goto LABEL_74;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    LOBYTE(v18) = sub_10005B268(v18, v20, 10);
    v38 = v39;
    goto LABEL_72;
  }

  if ((v20 & 0x2000000000000000) != 0)
  {
    v48[0] = v18;
    v48[1] = v20 & 0xFFFFFFFFFFFFFFLL;
    if (v18 == 43)
    {
      if (!v22)
      {
        goto LABEL_83;
      }

      if (--v22)
      {
        v18 = 0;
        v33 = v43;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          if (!is_mul_ok(v18, 0xAuLL))
          {
            break;
          }

          v28 = __CFADD__(10 * v18, v34);
          v18 = 10 * v18 + v34;
          if (v28)
          {
            break;
          }

          ++v33;
          if (!--v22)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v18 == 45)
    {
      if (!v22)
      {
        goto LABEL_85;
      }

      if (--v22)
      {
        v18 = 0;
        v29 = v43;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          if (!is_mul_ok(v18, 0xAuLL))
          {
            break;
          }

          v28 = 10 * v18 >= v30;
          v18 = 10 * v18 - v30;
          if (!v28)
          {
            break;
          }

          ++v29;
          if (!--v22)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v22)
    {
      v18 = 0;
      v36 = v48;
      while (1)
      {
        v37 = *v36 - 48;
        if (v37 > 9)
        {
          break;
        }

        if (!is_mul_ok(v18, 0xAuLL))
        {
          break;
        }

        v28 = __CFADD__(10 * v18, v37);
        v18 = 10 * v18 + v37;
        if (v28)
        {
          break;
        }

        ++v36;
        if (!--v22)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

  if ((v18 & 0x1000000000000000) != 0)
  {
    result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v25 = *result;
  if (v25 != 43)
  {
    if (v25 == 45)
    {
      if (v23 < 1)
      {
        goto LABEL_84;
      }

      v22 = v23 - 1;
      if (v23 != 1)
      {
        v18 = 0;
        if (result)
        {
          v26 = result + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              goto LABEL_70;
            }

            if (!is_mul_ok(v18, 0xAuLL))
            {
              goto LABEL_70;
            }

            v28 = 10 * v18 >= v27;
            v18 = 10 * v18 - v27;
            if (!v28)
            {
              goto LABEL_70;
            }

            ++v26;
            if (!--v22)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_62:
        LOBYTE(v22) = 0;
LABEL_71:
        v49 = v22;
        v38 = v22;
LABEL_72:

        if ((v38 & 1) == 0 && (v18 & 0x80) != 0)
        {
          v8 = v41;
          a2 = v42;
          (*(v41 + 32))(v42, v10, v7);
          v40 = 0;
          return (*(v8 + 56))(a2, v40, 1, v7);
        }

        goto LABEL_74;
      }
    }

    else
    {
      if (!v23)
      {
        goto LABEL_70;
      }

      v18 = 0;
      if (!result)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v35 = *result - 48;
        if (v35 > 9)
        {
          break;
        }

        if (!is_mul_ok(v18, 0xAuLL))
        {
          break;
        }

        v28 = __CFADD__(10 * v18, v35);
        v18 = 10 * v18 + v35;
        if (v28)
        {
          break;
        }

        ++result;
        if (!--v23)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_70:
    LOBYTE(v18) = 0;
    LOBYTE(v22) = 1;
    goto LABEL_71;
  }

  if (v23 >= 1)
  {
    v22 = v23 - 1;
    if (v23 == 1)
    {
      goto LABEL_70;
    }

    v18 = 0;
    if (!result)
    {
      goto LABEL_62;
    }

    v31 = result + 1;
    while (1)
    {
      v32 = *v31 - 48;
      if (v32 > 9)
      {
        goto LABEL_70;
      }

      if (!is_mul_ok(v18, 0xAuLL))
      {
        goto LABEL_70;
      }

      v28 = __CFADD__(10 * v18, v32);
      v18 = 10 * v18 + v32;
      if (v28)
      {
        goto LABEL_70;
      }

      ++v31;
      if (!--v22)
      {
        goto LABEL_71;
      }
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_10005ABB8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005AC00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000240AC;

  return sub_100058F68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10005ACC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005AD14()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005AD64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005ADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10005AEB0, 0, 0);
}

uint64_t sub_10005AEB0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10005BE14(&qword_10009BF70, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10005BE14(&qword_10009BF78, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10005B040;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10005B040()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10005B1FC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10005B1FC()
{

  v1 = *(v0 + 8);

  return v1();
}

unsigned __int8 *sub_10005B268(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10005B7EC(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10005B7EC(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10005B86C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10005B86C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100030AD0(v9, 0), v12 = sub_10005B9C4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
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

unint64_t sub_10005B9C4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_10005BBE4(v12, a6, a7);
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

    result = sub_10005BBE4(v12, a6, a7);
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

unint64_t sub_10005BBE4(unint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10005BC60(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10005BC6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005BCA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000257F4;

  return sub_10002448C(a1, v4);
}

uint64_t sub_10005BD5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000240AC;

  return sub_10002448C(a1, v4);
}

uint64_t sub_10005BE14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005BE64()
{
  v0 = type metadata accessor for Logger();
  sub_10002B76C(v0, qword_10009BF80);
  sub_10002AF48(v0, qword_10009BF80);
  static CPSConstants.logSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005BED0()
{
  v0 = type metadata accessor for CUEnvironmentValues();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CUEnvironmentValues.cpsBaseEnvironment.getter();
  v4 = type metadata accessor for CPSDaemonShim(0);
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC10companiond13CPSDaemonShim__dtDaemon] = 0;
  *&v5[OBJC_IVAR____TtC10companiond13CPSDaemonShim__cpsDaemon] = 0;
  (*(v1 + 16))(&v5[OBJC_IVAR____TtC10companiond13CPSDaemonShim__environment], v3, v0);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, "init");
  result = (*(v1 + 8))(v3, v0);
  static CPSDaemonShim.shared = v6;
  return result;
}

id CPSDaemonShim.__allocating_init(environment:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10companiond13CPSDaemonShim__dtDaemon] = 0;
  *&v3[OBJC_IVAR____TtC10companiond13CPSDaemonShim__cpsDaemon] = 0;
  v4 = OBJC_IVAR____TtC10companiond13CPSDaemonShim__environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t *CPSDaemonShim.shared.unsafeMutableAddressor()
{
  if (qword_10009AD80 != -1)
  {
    swift_once();
  }

  return &static CPSDaemonShim.shared;
}

id static CPSDaemonShim.shared.getter()
{
  if (qword_10009AD80 != -1)
  {
    swift_once();
  }

  v1 = static CPSDaemonShim.shared;

  return v1;
}

id CPSDaemonShim.init(environment:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC10companiond13CPSDaemonShim__dtDaemon] = 0;
  *&v1[OBJC_IVAR____TtC10companiond13CPSDaemonShim__cpsDaemon] = 0;
  v4 = OBJC_IVAR____TtC10companiond13CPSDaemonShim__environment;
  v5 = type metadata accessor for CUEnvironmentValues();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

Swift::Void __swiftcall CPSDaemonShim.activate()()
{
  v1 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v22 - v5;
  v7 = type metadata accessor for CUEnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DTDaemon();
  v11 = OBJC_IVAR____TtC10companiond13CPSDaemonShim__environment;
  v12 = *(v8 + 16);
  v12(v10, v0 + OBJC_IVAR____TtC10companiond13CPSDaemonShim__environment, v7);
  v13 = DTDaemon.__allocating_init(environment:)();
  *(v0 + OBJC_IVAR____TtC10companiond13CPSDaemonShim__dtDaemon) = v13;

  v12(v10, v0 + v11, v7);
  type metadata accessor for CPSDaemon(0);
  swift_allocObject();
  v14 = sub_100026640(v10);
  *(v0 + OBJC_IVAR____TtC10companiond13CPSDaemonShim__cpsDaemon) = v14;

  v15 = CUEnvironmentValues.dispatchQueue.getter();
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v6, 1, 1, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  sub_1000251F8(v6, v4);
  if ((*(v17 + 48))(v4, 1, v16) == 1)
  {
    sub_10005CF00(v4);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v17 + 8))(v4, v16);
  }

  v19 = sub_10005DCE8(&qword_10009B330, sub_10002B6E8, &_sSo17OS_dispatch_queueCSch8DispatchMc);
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_10006ED40;
  *(v20 + 24) = v18;
  v22[0] = 6;
  v22[1] = 0;
  v22[2] = v15;
  v22[3] = v19;

  v21 = v15;
  swift_task_create();
  sub_10005CF00(v6);
}

uint64_t sub_10005C690(uint64_t a1, uint64_t a2, void *a3)
{
  v3[2] = a3;
  v3[3] = *a3;
  sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v3[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_10005C788;

  return DTDaemon.activate()();
}

uint64_t sub_10005C788()
{
  v1 = *v0;

  v1[6] = sub_10005DCE8(&qword_10009B140, type metadata accessor for CPSDaemon, &unk_10006DEA0);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_10005C900, v3, v2);
}

uint64_t sub_10005C900()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[9] = v2;
  if (v2)
  {
    if (v2 == 1)
    {

      v3 = v0[1];

      return v3();
    }

    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v12 = sub_10005CB04;
  }

  else
  {
    v5 = v0[6];
    v6 = v0[4];
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = v1;
    v8[3] = v5;
    v8[4] = v1;
    swift_retain_n();
    v9 = sub_100057714(0, 0, v6, &unk_10006DEF8, v8);
    v0[11] = v9;
    v10 = *(v1 + 16);
    *(v1 + 16) = v9;

    sub_10002AF38(v10);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v12 = sub_10005CC8C;
  }

  v11[1] = v12;

  return Task<>.value.getter();
}

uint64_t sub_10005CB04()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10005CC24, v3, v2);
}

uint64_t sub_10005CC24()
{
  sub_10002AF38(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005CC8C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10005CDAC, v3, v2);
}

uint64_t sub_10005CDAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005CE14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005CE54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000257F4;

  return sub_10005C690(a1, v5, v4);
}

uint64_t sub_10005CF00(uint64_t a1)
{
  v2 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CPSDaemonShim.handleXPCEvent(_:)(uint64_t a1)
{
  v2 = sub_100024EA8(&qword_10009B150, &qword_10006DC50);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v34 = a1;
  swift_unknownObjectRetain();
  sub_100024EA8(&unk_10009B1A0, &qword_10006EAC0);
  CUSendableWrapper.init(_:)();
  v28 = CUEnvironmentValues.dispatchQueue.getter();
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v7, 1, 1, v15);
  v17 = *(v9 + 16);
  v29 = v14;
  v17(v12, v14, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = v27;
  (*(v9 + 32))(v19 + v18, v12, v8);
  sub_1000251F8(v7, v5);
  LODWORD(v18) = (*(v16 + 48))(v5, 1, v15);
  v21 = v20;
  if (v18 == 1)
  {
    sub_10005CF00(v5);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v16 + 8))(v5, v15);
  }

  v22 = sub_10005DCE8(&qword_10009B330, sub_10002B6E8, &_sSo17OS_dispatch_queueCSch8DispatchMc);
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_10006ED58;
  *(v23 + 24) = v19;
  v30 = 6;
  v31 = 0;
  v24 = v28;
  v32 = v28;
  v33 = v22;

  v25 = v24;
  swift_task_create();
  sub_10005CF00(v7);

  return (*(v9 + 8))(v29, v8);
}

uint64_t sub_10005D384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10005D450, 0, 0);
}

uint64_t sub_10005D450()
{
  v24 = v0;
  v1 = *(v0[3] + OBJC_IVAR____TtC10companiond13CPSDaemonShim__cpsDaemon);
  v0[8] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10005D710;
    v3 = v0[4];

    return sub_100029FF4(v3);
  }

  else
  {
    if (qword_10009AD78 != -1)
    {
      swift_once();
    }

    v6 = v0[6];
    v5 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = type metadata accessor for Logger();
    sub_10002AF48(v9, qword_10009BF80);
    (*(v6 + 16))(v5, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[6];
    v14 = v0[7];
    v15 = v0[5];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v16 = 136315138;
      CUSendableWrapper.value.getter();
      swift_getObjectType();
      v17 = OS_xpc_object.nestedDescription.getter();
      v19 = v18;
      swift_unknownObjectRelease();
      (*(v13 + 8))(v14, v15);
      v20 = sub_100030690(v17, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "XPC event ignored: no CPS daemon, %s", v16, 0xCu);
      sub_100024EF0(v22);
    }

    else
    {

      (*(v13 + 8))(v14, v15);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10005D710()
{

  return _swift_task_switch(sub_10005D80C, 0, 0);
}

uint64_t sub_10005D80C()
{

  v1 = *(v0 + 8);

  return v1();
}

id CPSDaemonShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005DA00()
{
  v1 = sub_100024EA8(&qword_10009B148, &qword_10006E0A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005DAD0(uint64_t a1)
{
  v4 = *(sub_100024EA8(&qword_10009B148, &qword_10006E0A0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000240AC;

  return sub_10005D384(a1, v6, v1 + v5);
}

uint64_t sub_10005DBC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for CPSDaemonShim(uint64_t a1)
{
  result = qword_10009BFE0;
  if (!qword_10009BFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005DC4C(uint64_t a1)
{
  result = type metadata accessor for CUEnvironmentValues();
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

uint64_t sub_10005DCE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005DD30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10005DDBC(const char *a1, uint64_t a2)
{
  v3 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"completionHandler != ((void*)0)"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    sub_100003874();
    sub_10000389C(&_mh_execute_header, &_os_log_default, v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void sub_10005DEF8(const char *a1, uint64_t a2)
{
  v3 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"completionHandler != ((void*)0)"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    sub_100003874();
    sub_10000389C(&_mh_execute_header, &_os_log_default, v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void sub_10005DFEC(const char *a1, uint64_t a2)
{
  v3 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"passkeyAssertionOptions || passkeyRegistrationOptions"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    sub_100003874();
    sub_10000389C(&_mh_execute_header, &_os_log_default, v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void sub_10005E0E0(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to fetch associated domains: %@", &v1, 0xCu);
}

void sub_10005E160(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load application record: %@", &v2, 0xCu);
}

void sub_10005E1D8(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "CDBluetoothListener failed to create bluetooth device: %@", &v1, 0xCu);
}

void sub_10005E2F0(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 208));
    sub_10005E5B4(a1);
    if (*(a1 + 160))
    {

      sub_10005E6C8(a1);
    }

    else
    {
      sub_10005E804(a1);
      v2 = *(a1 + 200);
      if (v2 == 2)
      {

        sub_1000073CC(a1);
      }

      else if (v2 == 1)
      {

        sub_10005E9D8(a1);
      }

      else
      {

        sub_10005E3C0(a1);
      }
    }
  }
}

void sub_10005E3C0(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 208));
    if ((*(a1 + 122) & 1) == 0)
    {
      v3 = cps_session_log();
      if (sub_10000FA34(v3))
      {
        *v25 = 0;
        sub_10000F944(&_mh_execute_header, v4, v5, "Session invalidated.", v25);
      }

      v6 = sub_10005EAA0(a1);
      v7 = *(a1 + 16);
      if (v6)
      {
        v8 = v7;
      }

      else
      {
        [v7 invalidate];
        v8 = 0;
      }

      v9 = *(a1 + 16);
      *(a1 + 16) = 0;

      [*(a1 + 24) invalidate];
      v10 = *(a1 + 24);
      *(a1 + 24) = 0;

      [*(a1 + 32) invalidate];
      v11 = *(a1 + 32);
      *(a1 + 32) = 0;

      v12 = *(a1 + 80);
      *(a1 + 80) = 0;

      [*(a1 + 40) invalidate];
      v13 = *(a1 + 40);
      *(a1 + 40) = 0;

      [*(a1 + 48) invalidate];
      v14 = *(a1 + 48);
      *(a1 + 48) = 0;

      [*(a1 + 56) invalidate];
      v15 = *(a1 + 56);
      *(a1 + 56) = 0;

      [*(a1 + 64) invalidate];
      v16 = *(a1 + 64);
      *(a1 + 64) = 0;

      [*(a1 + 136) cancel];
      v17 = *(a1 + 136);
      *(a1 + 136) = 0;

      if ((*(a1 + 144) & 1) == 0 && (*(a1 + 120) & 1) == 0)
      {
        [*(a1 + 152) invalidate];
      }

      v18 = *(a1 + 152);
      *(a1 + 152) = 0;

      if (v6)
      {
        sub_10000F8B4();
        v22[1] = 3221225472;
        v22[2] = sub_1000075A8;
        v22[3] = &unk_10008A0A8;
        v23 = v8;
        v24 = a1;
        sub_10005EB44(a1, v23, v22);
        v20 = v23;
      }

      else
      {
        v19 = *(a1 + 232);
        if (!v19)
        {
LABEL_16:
          v21 = *(a1 + 240);
          *(a1 + 240) = 0;

          *(a1 + 122) = 1;
          return;
        }

        (*(v19 + 16))();
        v20 = *(a1 + 232);
        *(a1 + 232) = 0;
      }

      goto LABEL_16;
    }
  }
}

id sub_10005E5B4(id result)
{
  if (result)
  {
    v2 = result;
    v3 = cps_session_log();
    if (sub_10000FA34(v3))
    {
      *v13 = 0;
      sub_10000F944(&_mh_execute_header, v4, v5, "Starting system monitor.", v13);
    }

    v6 = objc_alloc_init(CUSystemMonitor);
    v7 = *(v2 + 5);
    *(v2 + 5) = v6;

    [*(v2 + 5) setDispatchQueue:*(v2 + 26)];
    sub_10000F8D4();
    v12[0] = v8;
    v12[1] = 3221225472;
    v12[2] = sub_100009A3C;
    v12[3] = &unk_100089E20;
    v12[4] = v2;
    [v9 setScreenOnChangedHandler:v12];
    sub_10000F8B4();
    v11[1] = 3221225472;
    v11[2] = sub_100009A44;
    v11[3] = &unk_100089E20;
    v11[4] = v2;
    [v10 setMeDeviceChangedHandler:v11];
    [*(v2 + 5) setMeDeviceUseFindMyLocate:1];
    return [*(v2 + 5) activateWithCompletion:&stru_10008A270];
  }

  return result;
}

void sub_10005E6C8(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 160) authType];
    if (v2 == 1)
    {

      sub_100009650(a1);
    }

    else if (v2 == 14)
    {

      sub_10005EF54(a1);
    }

    else
    {
      v3 = cps_session_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 160) authType];
        sub_10000F92C();
        sub_10000FA08(&_mh_execute_header, v3, v4, "Unknown local auth type: %ld", v5);
      }

      sub_10005E3C0(a1);
    }
  }
}

id sub_10005E804(id result)
{
  if (result)
  {
    v3 = result;
    v4 = cps_session_log();
    if (sub_10000FA34(v4))
    {
      v20[0] = 0;
      sub_10000F944(&_mh_execute_header, v5, v6, "Starting NearbyAction device discovery.", v20);
    }

    v7 = objc_alloc_init(SFDeviceDiscovery);
    v8 = *(v3 + 6);
    *(v3 + 6) = v7;

    [*(v3 + 6) setDispatchQueue:*(v3 + 26)];
    [*(v3 + 6) setChangeFlags:1];
    [*(v3 + 6) setDiscoveryFlags:16];
    v9 = +[NSBundle mainBundle];
    [v9 bundleIdentifier];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F96C() setPurpose:?];

    [*(v3 + 6) setScanRate:30];
    [*(v3 + 6) setRssiThreshold:-75];
    [*(v3 + 6) setOverrideScreenOff:1];
    v10 = *(v3 + 6);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000996C;
    v19[3] = &unk_10008A228;
    v19[4] = v3;
    [v10 setDeviceChangedHandler:v19];
    v11 = *(v3 + 6);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100009974;
    v18[3] = &unk_10008A250;
    v18[4] = v3;
    [v11 setDeviceLostHandler:v18];
    sub_10000F850();
    v14 = 3221225472;
    v15 = sub_10000997C;
    v16 = &unk_10008A080;
    v17 = v3;
    return [v12 activateWithCompletion:v13];
  }

  return result;
}

void sub_10005E9D8(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(RPCompanionLinkDevice);
    [v2 setIdentifier:*(a1 + 192)];
    v3 = objc_alloc_init(RPCompanionLinkClient);
    v4 = *(a1 + 16);
    *(a1 + 16) = v3;

    [*(a1 + 16) setDispatchQueue:*(a1 + 208)];
    [*(a1 + 16) setControlFlags:0x80000103800];
    [*(a1 + 16) setDestinationDevice:v2];
    sub_10000F850();
    sub_10000F960();
    v7 = sub_100007610;
    v8 = &unk_10008A080;
    v9 = a1;
    [v5 activateWithCompletion:v6];
  }
}

uint64_t sub_10005EAA0(uint64_t result)
{
  if (result)
  {
    if ((*(result + 176) & 1) != 0 || *(result + 177) != 1)
    {
      return 0;
    }

    else if (*(result + 184))
    {
      return 1;
    }

    else
    {
      v5 = v1;
      v6 = v2;
      v3 = cps_session_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "CDProviderSession set _coupleToRequesterLifecycle to YES without providing finished message block.", v4, 2u);
      }

      return 0;
    }
  }

  return result;
}

void sub_10005EB44(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 184);
    v7 = *(v6 + 16);
    v8 = a2;
    v9 = v7(v6);
    v10 = [v9 makeRapportDictionary];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &__NSDictionary0__struct;
    }

    v13 = *(a1 + 128);
    sub_10000F850();
    sub_10000F960();
    v15 = sub_100009AB4;
    v16 = &unk_10008A0F8;
    v17 = v5;
    [v8 sendRequestID:@"com.apple.CompanionAuthentication.DidFinishAuth" request:v12 options:v13 responseHandler:v14];
  }
}

void sub_10005EC3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = cps_session_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      sub_10000FA08(&_mh_execute_header, v4, v5, "Authentication session failed: %@", &v8);
    }

    v6 = *(a1 + 224);
    if (v6)
    {
      if (v3)
      {
        (*(v6 + 16))(v6, v3);
      }

      else
      {
        v7 = [NSError errorWithDomain:CPSErrorDomain code:100 userInfo:0];
        (*(v6 + 16))(v6, v7);
      }
    }
  }
}

void sub_10005ED54(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = cps_session_log();
    if (sub_10000FADC(v5))
    {
      sub_10000F97C();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }

    v11 = *(a1 + 216);
    if (v11)
    {
      (*(v11 + 16))(v11, v4);
    }
  }
}

void sub_10005EE18(uint64_t a1, void *a2, int a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    if (v9)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000090B4;
      v17[3] = &unk_10008A160;
      v17[4] = a1;
      v18 = v9;
      [v8 setActionHandler:v17];
    }

    if (a3)
    {
      sub_10000F850();
      sub_10000F960();
      v12 = sub_1000091D0;
      v13 = &unk_10008A1D8;
      v14 = a1;
      v16 = v10;
      v15 = v8;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      objc_storeStrong((a1 + 24), a2);
      [v8 activate];
    }
  }
}

void sub_10005EF54(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 160);
    v4 = sub_10000FA9C();
    v6 = sub_1000613A8(v4, v5);
    sub_10000F8B4();
    v8[1] = 3221225472;
    v8[2] = sub_10000DC40;
    v8[3] = &unk_10008A4E0;
    v8[4] = a1;
    v9 = v1;
    v7 = v1;
    sub_10005EE18(a1, v6, 1, v8);
  }
}